Swift::Int sub_21D86DCE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    return 0;
  }

  MEMORY[0x223D42B30](a3, a4, v8);
  v12 = sub_21DBFB9CC();
  if (v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = v12;
  v23 = String.rangeOfNewlineCharacter(atOrBefore:)(v12);
  v17 = v23.is_nil ? 0 : v23.value.location + v23.value.length;
  sub_21DBF4C8C();
  v18 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v10, v16 + v15, 0, 1, a3, a4);
  v20 = v19;
  (*(v7 + 8))(v10, v6);
  if (v20)
  {
    v18 = MEMORY[0x223D42B30](a3, a4);
  }

  if (v17 >= v18)
  {
    return 0;
  }

  result = v17;
  if (__OFSUB__(v18, v17))
  {
    __break(1u);
  }

  return result;
}

void sub_21D86DE7C(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v14 = [objc_opt_self() attributeNameForStyle_];
  v15 = [a9 attribute:v14 atIndex:a3 effectiveRange:0];

  if (!v15)
  {
LABEL_16:

    return;
  }

  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0CF2E8(&v43, &v44);
  v16 = objc_allocWithZone(MEMORY[0x277D44888]);
  __swift_project_boxed_opaque_existential_1(&v44, v45);
  v17 = [v16 initWithContents_];
  swift_unknownObjectRelease();
  if (!v17)
  {
    __swift_destroy_boxed_opaque_existential_0(&v44);
    goto LABEL_16;
  }

  if ([v17 remParagraphStyle] != 3)
  {
    __swift_destroy_boxed_opaque_existential_0(&v44);

    goto LABEL_16;
  }

  swift_beginAccess();
  v18 = [*(a10 + 16) string];
  sub_21DBFA16C();
  v20 = v19;

  v46 = String.rangeOfNewlineCharacter(atOrBefore:)(a3);
  location = v46.value.location;
  is_nil = v46.is_nil;

  v23 = 0;
  if (!is_nil)
  {
    swift_beginAccess();
    v24 = *(a10 + 16);
    v25 = sub_21D872028(location, v24);
    v20 = v26;

    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25;
    }
  }

  v27 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = a11;
  swift_beginAccess();
  v20 = *(a11 + 16);
  v42 = v17;
  sub_21D749C9C(v17, v27, 1u);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a11 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    v20 = sub_21D2120C4(0, *(v20 + 2) + 1, 1, v20);
    *(v11 + 16) = v20;
  }

  v29 = *(v20 + 2);
  v30 = *(v20 + 3);
  v31 = v29 + 1;
  if (v29 >= v30 >> 1)
  {
    v41 = v29 + 1;
    v38 = v20;
    v39 = *(v20 + 2);
    v40 = sub_21D2120C4((v30 > 1), v29 + 1, 1, v38);
    v29 = v39;
    v31 = v41;
    v20 = v40;
  }

  *(v20 + 2) = v31;
  v32 = &v20[40 * v29];
  *(v32 + 4) = v17;
  *(v32 + 5) = v27;
  v32[48] = 1;
  *(v32 + 7) = a3;
  *(v32 + 8) = a4;
  *(v11 + 16) = v20;
  swift_endAccess();
  swift_beginAccess();
  v33 = *(a10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v17;
  *(inited + 40) = v27;
  *(inited + 48) = 1;
  *(inited + 56) = a3;
  *(inited + 64) = a4;
  sub_21D749C9C(v17, v27, 1u);
  v35 = v33;
  v36 = sub_21D47A0F8(v35, MEMORY[0x277D84F90], inited);

  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  sub_21D228468(v17, v27, 1u);
  __swift_destroy_boxed_opaque_existential_0(&v44);
  swift_beginAccess();
  v37 = *(a10 + 16);
  *(a10 + 16) = v36;
}

void sub_21D86E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  sub_21D749C9C(0, 0, 2u);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21D2120C4(0, *(v8 + 2) + 1, 1, v8);
    *(a3 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_21D2120C4((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[40 * v11];
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  v12[48] = 2;
  *(v12 + 7) = a1;
  *(v12 + 8) = a2;
  *(a3 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v13 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 48) = 2;
  *(inited + 56) = a1;
  *(inited + 64) = a2;
  sub_21D749C9C(0, 0, 2u);
  v15 = v13;
  v16 = sub_21D47A0F8(v15, MEMORY[0x277D84F90], inited);
  sub_21D228468(0, 0, 2u);
  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  swift_beginAccess();
  v17 = *(a4 + 16);
  *(a4 + 16) = v16;
}

void sub_21D86E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  swift_beginAccess();
  v12 = *(a4 + 16);
  sub_21D749C9C(v9, v10, v11);
  sub_21D749C9C(v9, v10, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_21D2120C4(0, *(v12 + 2) + 1, 1, v12);
    *(a4 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_21D2120C4((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[40 * v15];
  *(v16 + 4) = v9;
  *(v16 + 5) = v10;
  v16[48] = v11;
  *(v16 + 7) = a2;
  *(v16 + 8) = a3;
  *(a4 + 16) = v12;
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  sub_21D749C9C(v9, v10, v11);
  v19 = v17;
  v20 = sub_21D47A0F8(v19, MEMORY[0x277D84F90], inited);
  sub_21D228468(v9, v10, v11);
  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  swift_beginAccess();
  v21 = *(a5 + 16);
  *(a5 + 16) = v20;
}

void sub_21D86E610(void *a1@<X0>, uint64_t a2@<X1>, Swift::Int a3@<X2>, id a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v121 = a3;
  v122 = a7;
  v12 = sub_21DBF4CAC();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a1;
  v17 = [a1 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = v18;
  v22 = a2;
  v23 = MEMORY[0x223D42B30](v21, v20);

  if (v23 > a2)
  {
    v24 = sub_21D871E88(a2, v123);
    if (v24)
    {
      v25 = v24;
      if (a6)
      {
        v26 = 0;
      }

      else
      {
        v26 = a5;
      }

      v27 = v26 + 1;
      v28 = __OFADD__(v26, 1);
      v29 = v24;
      if (!v28)
      {
        a4 = v29;
        v30 = [v29 remParagraphStyle];
        if (v30 <= 1)
        {
          v31 = &selRef_setAttributedText_;
          if (v30 == 1)
          {
            v117 = v25;
            v32 = [v123 string];
            if (v32)
            {
              v33 = v32;
              v34 = [v32 substringWithRange_];

              v35 = sub_21DBFA16C();
              v37 = v36;

              LOBYTE(v35) = sub_21D86F178(0, v35, v37);

              v38 = 0;
              LODWORD(v119) = 0;
              if ((v35 & 1) == 0)
              {
                v39 = 547520738;
LABEL_52:
                v44 = 0xA400000000000000;
                goto LABEL_58;
              }

              goto LABEL_50;
            }

            __break(1u);
            goto LABEL_77;
          }

LABEL_42:
          if (qword_27CE56D70 != -1)
          {
            swift_once();
          }

          v58 = sub_21DBF84BC();
          __swift_project_value_buffer(v58, qword_27CE62E78);
          v59 = sub_21DBF84AC();
          v60 = sub_21DBFAEBC();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_21D0C9000, v59, v60, "Invalid REMTTParagraphStyle processed in TTRParagraphStyleEditingPresenter", v61, 2u);
            MEMORY[0x223D46520](v61, -1, -1);
          }

          goto LABEL_68;
        }

        v31 = &selRef_setAttributedText_;
        if (v30 == 2)
        {
          v117 = v25;
          v63 = [v123 string];
          if (v63)
          {
            v64 = v63;
            v65 = [v63 substringWithRange_];

            v66 = sub_21DBFA16C();
            v68 = v67;

            LOBYTE(v66) = sub_21D86F178(0, v66, v68);

            v38 = 0;
            LODWORD(v119) = 0;
            if ((v66 & 1) == 0)
            {
              v39 = 546537698;
              goto LABEL_52;
            }

LABEL_50:
            v69 = 0;
            v39 = 0;
            v44 = 0;
            goto LABEL_59;
          }

LABEL_78:
          __break(1u);
          return;
        }

        if (v30 != 3)
        {
          goto LABEL_42;
        }

        v120 = v27;
        v49 = [v123 string];
        if (!v49)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v50 = v49;
        v117 = v25;
        v111 = a4;
        v51 = [v49 substringWithRange_];

        v52 = sub_21DBFA16C();
        v54 = v53;

        v55 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v55)
        {
          v56 = 4 * v55;
          do
          {
            sub_21DBFA3CC();
            sub_21DBF4BDC();
            v57 = sub_21DBF4BFC();

            (*(v13 + 8))(v16, v12);
          }

          while ((v57 & 1) != 0 && v56 != sub_21DBFA29C() >> 14);
        }

        sub_21DBFA3FC();

        v38 = sub_21DBFBACC();

        v27 = v120;
        v124 = v120;
        if (v38)
        {
          v39 = sub_21DBFC5BC();
          v44 = v70;
          LODWORD(v119) = 0;
        }

        else
        {
          v124 = sub_21DBFC5BC();
          v125 = v71;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](46, 0xE100000000000000);

          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](32, 0xE100000000000000);

          LODWORD(v119) = 0;
          v39 = v124;
          v44 = v125;
        }

        a4 = v111;
LABEL_57:
        v31 = &selRef_setAttributedText_;
        goto LABEL_58;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  if (!a4)
  {
LABEL_68:
    v88 = v122;
    v122[3] = 0u;
    v88[4] = 0u;
    v88[1] = 0u;
    v88[2] = 0u;
    *v88 = 0u;
    return;
  }

  v40 = a4;
  v41 = [v40 remParagraphStyle];
  a4 = [objc_allocWithZone(MEMORY[0x277D44888]) initWithStyle_];

  if (a6)
  {
    v42 = 0;
  }

  else
  {
    v42 = a5;
  }

  v27 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    goto LABEL_72;
  }

  v39 = 546537698;
  v43 = [a4 remParagraphStyle];
  if (v43 > 1)
  {
    if (v43 == 3)
    {
      v124 = v27;
      v124 = sub_21DBFC5BC();
      v125 = v62;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](46, 0xE100000000000000);

      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](32, 0xE100000000000000);

      v117 = 0;
      v38 = 0;
      v39 = v124;
      v44 = v125;
      LODWORD(v119) = 1;
      goto LABEL_57;
    }

    v31 = &selRef_setAttributedText_;
    if (v43 == 2)
    {
      v117 = 0;
      v38 = 0;
      goto LABEL_27;
    }

LABEL_28:
    if (qword_27CE56D70 == -1)
    {
LABEL_29:
      v45 = sub_21DBF84BC();
      __swift_project_value_buffer(v45, qword_27CE62E78);
      v46 = sub_21DBF84AC();
      v47 = sub_21DBFAEBC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_21D0C9000, v46, v47, "Invalid REMTTParagraphStyle processed in TTRParagraphStyleEditingPresenter", v48, 2u);
        MEMORY[0x223D46520](v48, -1, -1);
      }

      goto LABEL_68;
    }

LABEL_75:
    swift_once();
    goto LABEL_29;
  }

  if (!v43)
  {
    goto LABEL_28;
  }

  v31 = &selRef_setAttributedText_;
  if (v43 != 1)
  {
    goto LABEL_28;
  }

  v117 = 0;
  v38 = 0;
  v39 = 547520738;
LABEL_27:
  v44 = 0xA400000000000000;
  LODWORD(v119) = 1;
LABEL_58:
  v69 = v38;
  v38 = v22;
LABEL_59:
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F30);
  v72 = swift_allocObject();
  v118 = xmmword_21DC08D00;
  *(v72 + 16) = xmmword_21DC08D00;
  *(v72 + 32) = v38;
  *(v72 + 40) = v69;
  v116 = v69;
  *(v72 + 48) = v39;
  *(v72 + 56) = v44;
  v124 = v72;
  v120 = v44;
  sub_21DBF8E0C();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F38);
  v113 = sub_21D873D4C();
  v114 = v73;
  v74 = sub_21DBFA41C();

  sub_21DBF8E0C();
  v75 = sub_21D47A0F8(v123, v74, MEMORY[0x277D84F90]);
  swift_bridgeObjectRelease_n();
  v76 = [v75 v31[155]];
  sub_21DBFA16C();

  v129.value = 0;
  v129.is_nil = 1;
  v130 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v22, v129);
  location = v130.value.location;
  is_nil = v130.is_nil;

  if (is_nil)
  {
    v79 = [v75 v31[155]];
    v80 = sub_21DBFA16C();
    v82 = v81;

    location = MEMORY[0x223D42B30](v80, v82);
  }

  if (__OFSUB__(location, v22))
  {
    goto LABEL_73;
  }

  v112 = v39;
  v83 = (location - v22) & ~((location - v22) >> 63);
  v84 = v121 + v83;
  if (__OFADD__(v121, v83))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v119)
  {
    sub_21D86F618([a4 remParagraphStyle], a4, v22, v84, v27, &v124);
    v85 = v126;
    if (v126 == 255)
    {

      goto LABEL_68;
    }

    v119 = v84;
    v121 = v22;
    v111 = a4;
    v90 = v127;
    v89 = v128;
    v92 = v124;
    v91 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
    v93 = swift_allocObject();
    *(v93 + 16) = v118;
    *(v93 + 32) = v92;
    *(v93 + 40) = v91;
    *(v93 + 48) = v85;
    *(v93 + 56) = v90;
    *(v93 + 64) = v89;
    v86 = v117;
  }

  else
  {
    v86 = v117;
    sub_21D86F618([v86 remParagraphStyle], a4, v22, v84, v27, &v124);
    v87 = v126;
    if (v126 == 255)
    {

      goto LABEL_68;
    }

    v119 = v84;
    v121 = v22;
    v111 = a4;
    v95 = v127;
    v94 = v128;
    v96 = v124;
    v97 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
    v93 = swift_allocObject();
    *(v93 + 16) = v118;
    *(v93 + 32) = v96;
    *(v93 + 40) = v97;
    *(v93 + 48) = v87;
    *(v93 + 56) = v95;
    *(v93 + 64) = v94;
  }

  sub_21DBF8E0C();
  v98 = swift_allocObject();
  *(v98 + 16) = v118;
  v99 = v116;
  *(v98 + 32) = v38;
  *(v98 + 40) = v99;
  v100 = v112;
  *&v118 = v38;
  v101 = v120;
  *(v98 + 48) = v112;
  *(v98 + 56) = v101;
  v124 = v98;
  sub_21DBF8E0C();
  v102 = sub_21DBFA41C();

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v103 = sub_21D47A0F8(v123, v102, v93);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v104 = [v103 string];
  v105 = sub_21DBFA16C();
  v107 = v106;

  v108 = v122;
  *v122 = v118;
  v108[1] = v99;
  v108[2] = v100;
  v108[3] = v101;
  v108[4] = v93;
  v108[5] = v105;
  v108[6] = v107;
  v108[7] = v103;
  v109 = v119;
  v108[8] = v121;
  v108[9] = v109;
}

char *sub_21D86F178(Swift::Int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = MEMORY[0x223D42B30](a2, a3, v8);
  v13 = 0;
  if (a1 < 0 || v12 <= a1)
  {
    return (v13 & 1);
  }

  v60 = v7;
  if (!a1 || MEMORY[0x223D42B30](a2, a3) <= a1)
  {
    goto LABEL_10;
  }

  v14 = sub_21DBFA12C();
  v64 = String.rangeOfCharacterComposedSequence(before:)([v14 rangeOfComposedCharacterSequenceAtIndex_]);
  if (v64.is_nil)
  {

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v66 = String.rangeOfNewlineCharacter(atOrBefore:)(v64.value.location);
  location = v66.value.location;
  length = v66.value.length;
  is_nil = v66.is_nil;

  if (is_nil)
  {
    v15 = 0;
  }

  else
  {
    v15 = location + length;
  }

LABEL_11:
  v16 = sub_21DBFA12C();
  v17 = [v16 rangeOfComposedCharacterSequenceAtIndex_];
  v61 = v16;
  v19 = [v16 substringWithRange_];
  v20 = sub_21DBFA16C();
  v22 = v21;

  v62 = v20;
  v63 = v22;
  if (qword_27CE56D98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_27CE62EF0);
  v23 = sub_21D176F0C();
  v24 = sub_21DBFBB3C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v13 = sub_21D870B0C(a1, 0, a2, a3);

    return (v13 & 1);
  }

  v59[1] = v23;
  v65 = String.rangeOfCharacterComposedSequence(after:)(v17);
  if (v65.is_nil)
  {

LABEL_37:
    v13 = 0;
    return (v13 & 1);
  }

  v28 = v65.value.location;
  v29 = v65.value.length;
  v30 = v61;
  result = [v61 rangeOfComposedCharacterSequenceAtIndex_];
  v33 = (v28 + v29);
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (__OFADD__(result, v32))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v33 <= &result[v32])
  {
    v33 = &result[v32];
  }

  if (v28 >= result)
  {
    v34 = result;
  }

  else
  {
    v34 = v28;
  }

  if (!__OFSUB__(v33, v34))
  {
    v35 = [v30 substringWithRange_];
    v36 = v35;
    v37 = v35;
    if (!v35)
    {
      sub_21DBFA16C();
      v37 = sub_21DBFA12C();

      sub_21DBFA16C();
      v36 = sub_21DBFA12C();
    }

    v38 = sub_21DBFA16C();
    v40 = v38;
    v41 = v39;
    if ((v39 & 0x2000000000000000) != 0)
    {
      v42 = HIBYTE(v39) & 0xF;
    }

    else
    {
      v42 = v38 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v35;
    if (!v42)
    {

      v13 = 1;
      return (v13 & 1);
    }

    v44 = [v37 rangeOfComposedCharacterSequenceAtIndex_];
    v46 = v45;

    v47 = [v36 substringWithRange_];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v62 = v48;
    v63 = v50;
    sub_21DBF4C5C();
    v51 = sub_21DBFBB3C();
    v53 = v52;
    (*(v60 + 8))(v10, v6);

    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
      v58 = MEMORY[0x223D42B30](v40, v41);

      v13 = v46 == v58;
      return (v13 & 1);
    }

    goto LABEL_37;
  }

LABEL_46:
  __break(1u);
  return result;
}

void sub_21D86F618(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if ((a1 - 1) < 2)
  {
    *a6 = a2;
    a6[1] = 0;
    a6[2] = 0;
    goto LABEL_5;
  }

  if (a1 == 3)
  {
    *a6 = a2;
    a6[1] = a5;
    a6[2] = 1;
LABEL_5:
    a6[3] = a3;
    a6[4] = a4;

    v7 = a2;
    return;
  }

  if (qword_27CE56D70 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE62E78);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Invalid REMTTParagraphStyle processed in TTRParagraphStyleEditingPresenter", v11, 2u);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[3] = 0;
  a6[4] = 0;
  a6[2] = 255;
}

void sub_21D86F758(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21DBF4CAC();
  *&v9 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v11 = (&v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a2[1];
  v13 = a2[4];
  if (!v13)
  {
    v18 = 0;
    goto LABEL_5;
  }

  v131 = v8;
  *&v132 = v7;
  *&v134 = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = &selRef_setAttributedText_;
  v17 = [a1 string];
  sub_21DBFA16C();

  v140 = String.rangeOfCharacterComposedSequence(before:)(v12);
  LOBYTE(v17) = v140.is_nil;

  if (v17)
  {
    v18 = MEMORY[0x223D42B30](v15, v134);
LABEL_5:
    sub_21D86A648(a1, v12, v18, a3);
    return;
  }

  v129 = v15;
  v19 = [a1 string];
  if (!v19)
  {
    sub_21DBFA16C();
    v19 = sub_21DBFA12C();
  }

  sub_21DBFA16C();
  v21 = v20;
  v130 = a3;
  if (v12 <= 0 || v12 >= MEMORY[0x223D42B30]())
  {

    goto LABEL_13;
  }

  v141 = String.rangeOfCharacterComposedSequence(before:)([v19 rangeOfComposedCharacterSequenceAtIndex_]);
  if (v141.is_nil)
  {

LABEL_13:
    v22 = 0;
    v23 = v12;
    goto LABEL_14;
  }

  v142 = String.rangeOfNewlineCharacter(atOrBefore:)(v141.value.location);
  location = v142.value.location;
  length = v142.value.length;
  v25 = *&v142.is_nil;

  if (v25)
  {
    v22 = 0;
    v23 = v12;
  }

  else
  {
    v22 = &location[length];
    v55 = __OFSUB__(v14 + v12, &location[length]);
    v23 = v14 + v12 - &location[length];
    if (v55)
    {
      goto LABEL_105;
    }
  }

  v16 = &selRef_setAttributedText_;
LABEL_14:
  v24 = [a1 v16[155]];
  if (!v24)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v133 = v24;
  v25 = [v24 rangeOfComposedCharacterSequenceAtIndex_];
  v27 = v26;
  v28 = sub_21D871E88(v25, a1);
  if (v28)
  {

    v29 = MEMORY[0x223D42B30](v129, v134);
    sub_21D86A648(a1, v12, v29, v130);
    v30 = v133;

    return;
  }

  v127 = v27;
  v128 = v22;
  v31 = [v133 substringWithRange_];
  v21 = sub_21DBFA16C();
  location = v32;

  v34 = v21 == 42 && location == 0xE100000000000000;
  LODWORD(v14) = v34;
  if (v34)
  {
    goto LABEL_27;
  }

  v39 = sub_21DBFC64C();
  v40 = v21 == 45 && location == 0xE100000000000000;
  v41 = v40;
  if (v39 & 1) != 0 || v41 || (sub_21DBFC64C())
  {
    goto LABEL_27;
  }

  v137 = v21;
  v138 = location;
  if (qword_27CE56D98 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v126 = __swift_project_value_buffer(v132, qword_27CE62EF0);
    v42 = sub_21D176F0C();
    v126 = sub_21DBFBB3C();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      break;
    }

LABEL_27:
    if (v128 != v25 || v23 != v127)
    {

      v52 = v130;
      *(v130 + 1) = 0u;
      v52[2] = 0u;
      *v52 = 0u;
      return;
    }

    v25 = v23;
    if (v14)
    {
      v35 = 10649826;

      v36 = 1;
      v11 = &selRef_setAttributedText_;
      v37 = v129;
      v38 = v134;
    }

    else
    {
      v54 = sub_21DBFC64C();
      v11 = &selRef_setAttributedText_;
      v37 = v129;
      v38 = v134;
      if (v54)
      {
        v35 = 10649826;

        v36 = 1;
      }

      else
      {
        v137 = v21;
        v138 = location;
        if (qword_27CE56D90 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v132, qword_27CE62ED8);
        sub_21D176F0C();
        v56 = sub_21DBFBB3C();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {
          v35 = 9666786;
        }

        else
        {
          v35 = 10649826;
        }

        if (v59)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }
      }
    }

    v21 = [objc_allocWithZone(MEMORY[0x277D44888]) initWithStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
    v12 = swift_allocObject();
    v134 = xmmword_21DC08D00;
    *(v12 + 16) = xmmword_21DC08D00;
    v23 = v128;
    *(v12 + 32) = v128;
    *(v12 + 40) = v25;
    *(v12 + 48) = v35;
    *(v12 + 56) = 0xA300000000000000;
    location = v21;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v60 = MEMORY[0x223D42B30](v35, 0xA300000000000000);

    v61 = MEMORY[0x223D42B30](v37, v38);
    v14 = v60 + v61;
    if (!__OFADD__(v60, v61))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
      v62 = swift_allocObject();
      *(v62 + 16) = v134;
      *(v62 + 32) = location;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = v23;
      *(v62 + 64) = v14;
      v63 = v130;
      goto LABEL_68;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v121 = v23;
  v137 = v21;
  v138 = location;
  sub_21DBF4BDC();
  v124 = v42;
  v46 = sub_21DBFBB3C();
  v48 = v47;
  v49 = v131 + 8;
  v123 = *(v131 + 8);
  v123(v11, v132);

  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v50 || (v69 = [a1 string], sub_21DBFA16C(), v69, v143 = String.rangeOfCharacterComposedSequence(after:)(v25), v70 = v143.value.location, v71 = v143.value.length, LODWORD(v131) = *&v143.is_nil, , (v131 & 1) != 0) || v12 != v70 + v71)
  {

    v51 = MEMORY[0x223D42B30](v129, v134);
    sub_21D86A648(a1, v12, v51, v130);
LABEL_48:

    return;
  }

  v137 = v21;
  v138 = location;
  v122 = [a1 string];
  if (!v122)
  {
LABEL_113:
    __break(1u);
    return;
  }

  v131 = v49;
  if (v70 < v12)
  {
    while (1)
    {
      v72 = v122;
      v73 = [v122 rangeOfComposedCharacterSequenceAtIndex_];
      v125 = v74;
      v126 = v73;
      v75 = [v72 substringWithRange_];
      v76 = sub_21DBFA16C();
      v78 = v77;

      v135 = v76;
      v136 = v78;
      if (qword_27CE56D80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v132, qword_27CE62EA8);
      v79 = sub_21DBFBB3C();
      v81 = v80;

      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (!v82)
      {

        v89 = 0;
        v88 = v125;
        v87 = v126;
        goto LABEL_84;
      }

      v135 = v76;
      v136 = v78;
      sub_21DBF4BDC();
      v83 = sub_21DBFBB3C();
      v85 = v84;
      v123(v11, v132);

      v86 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v86 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v86)
      {
        break;
      }

      MEMORY[0x223D42AA0](v76, v78);

      v70 = v126 + v125;
      if (v126 + v125 >= v12)
      {
        goto LABEL_82;
      }
    }

    goto LABEL_103;
  }

LABEL_82:
  v87 = 0;
  v88 = 0;
  v89 = 1;
LABEL_84:
  v91 = v137;
  v90 = v138;
  sub_21DBF8E0C();
  v92 = sub_21D87037C(v91, v90);
  if (v89 & 1) != 0 || (v93)
  {
LABEL_103:

    v119 = MEMORY[0x223D42B30](v129, v134);
    sub_21D86A648(a1, v12, v119, v130);

    goto LABEL_48;
  }

  v120 = v92;
  v94 = (v88 + v87);
  if (__OFSUB__(&v128[v121], v88 + v87))
  {
    __break(1u);
    goto LABEL_108;
  }

  v95 = sub_21DBFB9CC();
  if ((v97 & 1) == 0)
  {
    v98 = [v122 substringWithRange_];
    v125 = v88;
    v126 = v87;
    v99 = v98;
    v100 = sub_21DBFA16C();
    v128 = v94;
    v101 = v91;
    v102 = v100;
    v104 = v103;

    v135 = v102;
    v136 = v104;
    sub_21DBF4C5C();
    v105 = sub_21DBFBB3C();
    v107 = v106;
    v123(v11, v132);

    v108 = HIBYTE(v107) & 0xF;
    v109 = v105 & 0xFFFFFFFFFFFFLL;
    v88 = v125;
    v87 = v126;
    v34 = (v107 & 0x2000000000000000) == 0;
    v91 = v101;
    v94 = v128;
    if (v34)
    {
      v108 = v109;
    }

    if (v108)
    {
      goto LABEL_103;
    }
  }

  v110 = (v25 + v127);
  if (__OFADD__(v25, v127))
  {
    goto LABEL_109;
  }

  if (__OFADD__(v87, v88))
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v110 <= v94)
  {
    v110 = v94;
  }

  if (v25 >= v87)
  {
    v111 = v87;
  }

  else
  {
    v111 = v25;
  }

  v112 = &v110[-v111];
  if (__OFSUB__(v110, v111))
  {
    goto LABEL_111;
  }

  v113 = [objc_allocWithZone(MEMORY[0x277D44888]) initWithStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
  v12 = swift_allocObject();
  v132 = xmmword_21DC08D00;
  *(v12 + 16) = xmmword_21DC08D00;
  v135 = v91;
  v136 = v90;
  sub_21DBF8E0C();
  location = v113;
  MEMORY[0x223D42AA0](46, 0xE100000000000000);

  v114 = v135;
  v115 = v136;
  *(v12 + 32) = v111;
  *(v12 + 40) = v112;
  *(v12 + 48) = v114;
  *(v12 + 56) = v115;
  sub_21DBF8E0C();
  v116 = MEMORY[0x223D42B30](v129, v134);
  v55 = __OFADD__(v112, v116);
  v117 = &v112[v116];
  v63 = v130;
  v11 = &selRef_setAttributedText_;
  if (v55)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
  v62 = swift_allocObject();
  *(v62 + 16) = v132;
  v118 = v120;
  *(v62 + 32) = location;
  *(v62 + 40) = v118;
  *(v62 + 48) = 1;
  *(v62 + 56) = v111;
  *(v62 + 64) = v117;

LABEL_68:
  swift_bridgeObjectRetain_n();
  sub_21DBF8E0C();
  v64 = sub_21D47A0F8(a1, v12, v62);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v65 = [v64 v11[155]];
  v66 = sub_21DBFA16C();
  v68 = v67;

  *v63 = v12;
  v63[1] = v62;
  v63[2] = v66;
  v63[3] = v68;
  v63[4] = v64;
  v63[5] = 1;
}

uint64_t sub_21D87037C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_21DBFBFCC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_21D871504(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_21D870690()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  __swift_allocate_value_buffer(v7, qword_27CE62EA8);
  __swift_project_value_buffer(v0, qword_27CE62EA8);
  if (qword_27CE56D78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE62E90);
  (*(v1 + 16))(v6, v8, v0);
  sub_21DBF4BCC();
  sub_21DBF4C6C();
  v9 = *(v1 + 8);
  v9(v3, v0);
  return (v9)(v6, v0);
}

uint64_t sub_21D870850(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21DBF4CAC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21DBF4BCC();
}

uint64_t sub_21D8708B0()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  __swift_allocate_value_buffer(v7, qword_27CE62EF0);
  __swift_project_value_buffer(v0, qword_27CE62EF0);
  if (qword_27CE56D88 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE62EC0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_27CE56D90 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27CE62ED8);
  v9(v3, v10, v0);
  sub_21DBF4C6C();
  v11 = *(v1 + 8);
  v11(v3, v0);
  return (v11)(v6, v0);
}

uint64_t sub_21D870A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_21DBFA16C();
  v7 = v6;

  v4(v5, v7, a3);
}

uint64_t sub_21D870B0C(Swift::Int a1, int a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_21DBF4CAC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_23;
  }

  v97 = v10;
  v15 = MEMORY[0x223D42B30](a3, a4, v11);
  LOBYTE(v16) = 0;
  if ((a1 & 0x8000000000000000) == 0 && v15 > a1)
  {
    v99 = v9;
    if (a1 && MEMORY[0x223D42B30](a3, a4) > a1)
    {
      v17 = a2;
      v18 = sub_21DBFA12C();
      v103 = String.rangeOfCharacterComposedSequence(before:)([v18 rangeOfComposedCharacterSequenceAtIndex_]);
      if (v103.is_nil)
      {

        v19 = 0;
      }

      else
      {
        v104 = String.rangeOfNewlineCharacter(atOrBefore:)(v103.value.location);
        location = v104.value.location;
        length = v104.value.length;
        is_nil = v104.is_nil;

        if (is_nil)
        {
          v19 = 0;
        }

        else
        {
          v19 = location + length;
        }
      }

      a2 = v17;
    }

    else
    {
      v19 = 0;
    }

    v102.value = 0;
    v102.is_nil = 1;
    v105 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(a1, v102);
    v98 = v105.value.location;
    v92 = a2;
    if (v105.is_nil)
    {
      v98 = MEMORY[0x223D42B30](a3, a4);
    }

    v23 = sub_21DBFA12C();
    v93 = [v23 rangeOfComposedCharacterSequenceAtIndex_];
    v24 = [v23 substringWithRange_];
    v25 = sub_21DBFA16C();
    v27 = v26;

    v100 = v25;
    v101 = v27;
    sub_21DBF4BDC();
    v28 = sub_21D176F0C();
    v29 = sub_21DBFBB3C();
    v31 = v30;
    v32 = v13;
    v33 = v99 + 8;
    v34 = *(v99 + 8);
    v34(v32, v97);

    v35 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v35 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {

      goto LABEL_23;
    }

    v99 = v33;
    v94 = v28;
    v95 = v34;
    v96 = v23;
    v106 = String.rangeOfCharacterComposedSequence(after:)(v93);
    if (v106.is_nil)
    {
      goto LABEL_22;
    }

    v37 = v106.value.location;
    v38 = v96;
    v39 = 0;
    v16 = 0;
    if (v106.value.location >= v98)
    {
LABEL_67:

      if (v92)
      {
        LOBYTE(v16) = v16 & v39;
      }

      return v16 & 1;
    }

    v91 = 0;
    v40 = 0;
    v41 = v32;
    while (1)
    {
      v90 = v39;
      v42 = [v38 rangeOfComposedCharacterSequenceAtIndex_];
      v44 = v43;
      v45 = [v38 substringWithRange_];
      v46 = sub_21DBFA16C();
      v48 = v47;

      v100 = v46;
      v101 = v48;
      sub_21DBF4BDC();
      v49 = sub_21DBFBB3C();
      v51 = v50;
      v95(v41, v97);

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      v53 = v52 == 0;
      v54 = v52 == 0;
      v55 = !v53;
      LODWORD(v93) = v40;
      v56 = v55 | v40;
      if (v56)
      {
        v91 |= v54;
        v89 = v16;
        v16 = v56;
      }

      else
      {

        if (v42 + v44 >= v98)
        {
          LOBYTE(v16) = v56;
          v38 = v96;
LABEL_66:
          LOBYTE(v39) = v90;
          goto LABEL_67;
        }

        v38 = v96;
        v57 = v97;
        while (1)
        {
          v42 = [v38 rangeOfComposedCharacterSequenceAtIndex_];
          v44 = v58;
          v59 = [v38 substringWithRange_];
          v46 = sub_21DBFA16C();
          v48 = v60;

          v100 = v46;
          v101 = v48;
          sub_21DBF4BDC();
          v61 = sub_21DBFBB3C();
          v63 = v62;
          v95(v41, v57);

          v64 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v64 = v61 & 0xFFFFFFFFFFFFLL;
          }

          v55 = v64 != 0;
          if (v64)
          {
            break;
          }

          v56 = v55;
          v38 = v96;
          if (v42 + v44 >= v98)
          {
            LOBYTE(v16) = v55;
            goto LABEL_66;
          }
        }

        LODWORD(v93) = 0;
        v91 = 0;
        v89 = v56;
        v16 = v64 != 0;
      }

      v100 = v46;
      v101 = v48;
      v65 = v95;
      if (qword_27CE56D78 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v97, qword_27CE62E90);
      v66 = sub_21DBFBB3C();
      v68 = v67;

      v69 = HIBYTE(v68) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v69 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (!v69)
      {

        if (v91)
        {
          goto LABEL_22;
        }

        v38 = v96;
        if (v42 + v44 >= v98)
        {
          goto LABEL_66;
        }

        v42 = [v96 rangeOfComposedCharacterSequenceAtIndex_];
        v44 = v70;
        v71 = [v38 substringWithRange_];
        v46 = sub_21DBFA16C();
        v48 = v72;

        v100 = v46;
        v101 = v48;
        sub_21DBF4BDC();
        v73 = sub_21DBFBB3C();
        v75 = v74;
        v76 = v65;
        v77 = v97;
        v76(v41, v97);

        v78 = HIBYTE(v75) & 0xF;
        if ((v75 & 0x2000000000000000) == 0)
        {
          v78 = v73 & 0xFFFFFFFFFFFFLL;
        }

        v55 = v78 != 0;
        v100 = v46;
        v101 = v48;
        if (qword_27CE56D78 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v77, qword_27CE62E90);
        v79 = sub_21DBFBB3C();
        v81 = v80;

        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {

LABEL_22:

LABEL_23:
          LOBYTE(v16) = 0;
          return v16 & 1;
        }

        v89 = 1;
        LODWORD(v93) = 1;
        v91 = 1;
      }

      v100 = v46;
      v101 = v48;
      sub_21DBF4BBC();
      v83 = sub_21DBFBB3C();
      v85 = v84;
      v95(v41, v97);

      v86 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v86 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v86)
      {
        goto LABEL_22;
      }

      v87 = v89;
      if (!v55)
      {
        v87 = v93;
      }

      v38 = v96;
      if (v87 & 1) == 0 || (v90)
      {
        goto LABEL_22;
      }

      v37 = v42 + v44;
      v39 = 1;
      v40 = v93;
      if (v42 + v44 >= v98)
      {
        goto LABEL_67;
      }
    }
  }

  return v16 & 1;
}

double sub_21D8712EC@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a2))
  {

    sub_21D869E58(a1, a3);
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_21D871388(id a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 56;
    do
    {
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      sub_21DBF8E0C();
      v9 = sub_21DBFA12C();
      [a1 replaceCharactersInRange:v7 withString:{v8, v9}];

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  if (*(a3 + 16))
  {
    [a1 beginEditing];
    sub_21D9F82C4(a1, a3);

    [a1 endEditing];
  }
}

uint64_t sub_21D871488(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21DBFA38C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223D42AF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_21D871504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_21DBF8E0C();
  result = sub_21DBFA3EC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21D871A90();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21DBFBFCC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21D871A90()
{
  v0 = sub_21DBFA3FC();
  v4 = sub_21D871B10(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21D871B10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21DBFBABC();
    if (!v9 || (v10 = v9, v11 = sub_21D0CE2BC(v9, 0), v12 = sub_21D871C68(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_21DBF8E0C(), , v12 == v10))
    {
      v13 = sub_21DBFA21C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21DBFA21C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21DBFBFCC();
LABEL_4:

  return sub_21DBFA21C();
}

unint64_t sub_21D871C68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21D871488(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21DBFA34C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21DBFBFCC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21D871488(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21DBFA32C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_21D871E88(uint64_t a1, id a2)
{
  v4 = [a2 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && v8 > a1)
  {
    v10 = [objc_opt_self() attributeNameForStyle_];
    v11 = [a2 attribute:v10 atIndex:a1 effectiveRange:0];

    if (v11)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
      sub_21D0CF2E8(&v16, &v17);
      v12 = objc_allocWithZone(MEMORY[0x277D44888]);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v13 = [v12 initWithContents_];
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 remParagraphStyle];
        __swift_destroy_boxed_opaque_existential_0(&v17);
        if ((v15 - 1) < 3)
        {
          return v14;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v17);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_21D872028(Swift::Int a1, id a2)
{
  v4 = [a2 string];
  sub_21DBFA16C();

  v11 = String.rangeOfCharacterComposedSequence(before:)(a1);
  location = v11.value.location;
  LOBYTE(v4) = v11.is_nil;

  if ((v4 & 1) == 0)
  {
    if ([a2 attribute:*MEMORY[0x277D44C88] atIndex:location effectiveRange:0])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_21D0CF7E0(v10, &qword_27CE5C690);
    }
  }

  return 0;
}

id sub_21D872168(uint64_t a1, void *a2, uint64_t a3)
{
  v34[1] = a3;
  v5 = sub_21DBF4CAC();
  v34[0] = *(v5 - 8);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 string];
  if (result)
  {
    v10 = result;
    v11 = [result rangeOfComposedCharacterSequenceAtIndex_];
    v13 = v12;
    v14 = [a2 string];
    sub_21DBFA16C();

    v37 = String.rangeOfCharacterComposedSequence(after:)(v11);
    location = v37.value.location;
    length = v37.value.length;
    is_nil = v37.is_nil;

    v18 = [v10 substringWithRange_];
    v19 = sub_21DBFA16C();
    v21 = v20;

    if (is_nil)
    {
      goto LABEL_6;
    }

    v22 = [v10 substringWithRange_];
    v23 = sub_21DBFA16C();
    v25 = v24;

    v35 = v19;
    v36 = v21;
    sub_21D176F0C();
    v26 = sub_21DBFBB3C();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
LABEL_6:

      return 0;
    }

    v35 = v23;
    v36 = v25;
    sub_21DBF4BBC();
    v30 = sub_21DBFBB3C();
    v32 = v31;

    (*(v34[0] + 8))(v8, v5);

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    return !v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D872400(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  sub_21DBF4C4C();
  v15 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v10, a1, a2 + a1, 0, v12, v14);
  LOBYTE(v11) = v16;

  (*(v7 + 8))(v10, v6);
  v17 = 0;
  if ((v11 & 1) != 0 || v15 == a1)
  {
    return (v17 & 1);
  }

  v18 = [a3 string];
  sub_21DBFA16C();

  v31 = String.rangeOfCharacterComposedSequence(after:)(v15);
  location = v31.value.location;
  length = v31.value.length;
  is_nil = v31.is_nil;

  if (is_nil)
  {
    v17 = 0;
    return (v17 & 1);
  }

  v23 = __OFSUB__(location + length, a1);
  v24 = location + length - a1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    result = [a3 string];
    if (result)
    {
      v25 = result;
      v26 = [result substringWithRange_];

      v27 = sub_21DBFA16C();
      v29 = v28;

      v17 = sub_21D870B0C(0, 1, v27, v29);

      return (v17 & 1);
    }
  }

  __break(1u);
  return result;
}

void sub_21D872630(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v123 = a1;
  v109 = sub_21DBF4CAC();
  v7 = *(v109 - 8);
  *&v8 = MEMORY[0x28223BE20](v109).n128_u64[0];
  v108 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 string];
  v11 = sub_21DBFA16C();
  v13 = v12;

  v14 = sub_21D86DCE0(a3, a4, v11, v13);
  v16 = v15;
  LOBYTE(a3) = v17;

  if (a3)
  {
    goto LABEL_19;
  }

  v126 = v7;
  v18 = [a2 string];
  v19 = sub_21DBFA16C();
  v21 = v20;

  v22 = MEMORY[0x223D42B30](v19, v21);

  if (v14 + v16 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v14 + v16;
  }

  v24 = [a2 string];
  if (!v24)
  {
    sub_21DBFA16C();
    v24 = sub_21DBFA12C();
  }

  v25 = sub_21DBFA16C();
  v27 = v26;
  v28 = a2;
  v29 = [a2 string];
  v30 = sub_21DBFA16C();
  v32 = v31;

  v33 = MEMORY[0x223D42B30](v30, v32);

  if (__OFSUB__(v33, 1))
  {
    goto LABEL_81;
  }

  if (v23 >= v33 - 1)
  {
    v34 = v33 - 1;
  }

  else
  {
    v34 = v23;
  }

  if (v34 <= 0 || v34 >= MEMORY[0x223D42B30](v25, v27))
  {
  }

  else
  {
    v130 = String.rangeOfCharacterComposedSequence(before:)([v24 rangeOfComposedCharacterSequenceAtIndex_]);
    if (v130.is_nil)
    {
    }

    else
    {
      v132 = String.rangeOfNewlineCharacter(atOrBefore:)(v130.value.location);
      location = v132.value.location;
      length = v132.value.length;
      is_nil = v132.is_nil;

      if (!is_nil)
      {
        goto LABEL_17;
      }
    }
  }

  location = 0;
  length = 0;
LABEL_17:
  if (length + location < v14)
  {
    a2 = v28;
LABEL_19:
    v126 = a2;
    v124 = MEMORY[0x277D84F90];
    return;
  }

  v111 = objc_opt_self();
  v107 = (v126 + 8);
  v37 = v28;
  v124 = MEMORY[0x277D84F90];
  v125 = xmmword_21DC08D00;
  v106 = v37;
  v126 = v37;
  v110 = v14;
  v38 = v23;
  while (1)
  {
    v39 = length + location;
    v40 = v38 - (length + location);
    if (__OFSUB__(v38, length + location))
    {
      break;
    }

    v38 = location;
    v41 = [v111 attributeNameForStyle_];
    v42 = [v126 attribute:v41 atIndex:length + location effectiveRange:0];

    if (!v42)
    {
      goto LABEL_29;
    }

    sub_21DBFBC1C();
    swift_unknownObjectRelease();
    v43 = objc_allocWithZone(MEMORY[0x277D44888]);
    __swift_project_boxed_opaque_existential_1(&v127, v129);
    v44 = [v43 initWithContents_];
    swift_unknownObjectRelease();
    if (!v44 || (v45 = [v44 remParagraphStyle], v44, (v45 - 1) >= 3))
    {
      __swift_destroy_boxed_opaque_existential_0(&v127);
LABEL_29:
      v47 = 0;
      goto LABEL_30;
    }

    if (v45 == v123)
    {
      __swift_destroy_boxed_opaque_existential_0(&v127);
      v46 = &selRef_setAttributedText_;
      goto LABEL_46;
    }

    v92 = [v126 string];
    v93 = sub_21DBFA16C();
    v95 = v94;

    v96 = v108;
    sub_21DBF4BBC();
    v97 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v96, v39, 0, 1, v93, v95);
    v99 = v98;
    v101 = v100;

    (*v107)(v96, v109);
    if (v101)
    {

      __swift_destroy_boxed_opaque_existential_0(&v127);
      a2 = v106;
      goto LABEL_19;
    }

    v102 = v97 + v99;
    __swift_destroy_boxed_opaque_existential_0(&v127);
    v47 = v102 - v39;
    if (__OFSUB__(v102, v39))
    {
      goto LABEL_82;
    }

LABEL_30:
    if (v123 == 3)
    {
      v49 = 0xE200000000000000;
      v122 = 1;
      v121 = 1;
      v48 = 11825;
    }

    else if (v123 == 2)
    {
      v122 = 0;
      v121 = 0;
      v49 = 0xA300000000000000;
      v48 = 9666786;
    }

    else
    {
      if (v123 != 1)
      {
        v120 = 0;
        v122 = 0;
        v48 = 0;
        v49 = 0xE000000000000000;
        v121 = 2;
        goto LABEL_38;
      }

      v122 = 0;
      v121 = 0;
      v48 = 10649826;
      v49 = 0xA300000000000000;
    }

    v50 = objc_allocWithZone(MEMORY[0x277D44888]);
    v120 = [v50 initWithStyle_];
LABEL_38:
    v127 = v48;
    v128 = v49;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](32, 0xE100000000000000);

    v51 = v127;
    v52 = v128;
    if ((v128 & 0x1000000000000000) != 0)
    {
      v103 = sub_21DBFA35C();
      v54 = v103 + v40;
      if (__OFADD__(v103, v40))
      {
        goto LABEL_79;
      }
    }

    else
    {
      v53 = sub_21DBFA36C();
      v54 = v53 + v40;
      if (__OFADD__(v53, v40))
      {
        goto LABEL_79;
      }
    }

    v55 = v54 - v47;
    if (__OFSUB__(v54, v47))
    {
      goto LABEL_80;
    }

    v119 = v38;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
    v56 = v39;
    inited = swift_initStackObject();
    *(inited + 16) = v125;
    *(inited + 32) = v56;
    v114 = v56;
    *(inited + 40) = v47;
    *(inited + 48) = v51;
    *(inited + 56) = v52;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
    v58 = swift_initStackObject();
    *(v58 + 16) = v125;
    v116 = v52;
    v59 = v120;
    *(v58 + 32) = v120;
    v60 = v122;
    *(v58 + 40) = v122;
    v117 = v47;
    v61 = v121;
    *(v58 + 48) = v121;
    *(v58 + 56) = v56;
    *(v58 + 64) = v55;
    sub_21DBF8E0C();
    sub_21D749C9C(v59, v60, v61);
    sub_21D749C9C(v59, v60, v61);
    v115 = v51;
    v62 = v126;
    v112 = sub_21D47A0F8(v126, inited, v58);

    swift_setDeallocating();
    sub_21D873C60(v58 + 32);
    swift_setDeallocating();
    sub_21D873CB4(inited + 32);
    v63 = swift_allocObject();
    *(v63 + 16) = v125;
    *(v63 + 32) = v59;
    *(v63 + 40) = v60;
    *(v63 + 48) = v61;
    v64 = v114;
    *(v63 + 56) = v114;
    *(v63 + 64) = v55;
    sub_21D749C9C(v59, v60, v61);
    v46 = &selRef_setAttributedText_;
    v126 = v112;
    v65 = [v126 string];
    v66 = sub_21DBFA16C();
    v68 = v67;

    v69 = swift_allocObject();
    *(v69 + 16) = v125;
    v70 = v117;
    *(v69 + 32) = v64;
    *(v69 + 40) = v70;
    v71 = v116;
    *(v69 + 48) = v115;
    *(v69 + 56) = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_21D2121E4(0, *(v124 + 2) + 1, 1, v124);
    }

    v73 = *(v124 + 2);
    v72 = *(v124 + 3);
    if (v73 >= v72 >> 1)
    {
      v124 = sub_21D2121E4((v72 > 1), v73 + 1, 1, v124);
    }

    v74 = v120;
    v75 = v122;
    v76 = v121;
    sub_21D228468(v120, v122, v121);
    sub_21D228468(v74, v75, v76);
    v77 = v124;
    *(v124 + 2) = v73 + 1;
    v78 = &v77[48 * v73];
    *(v78 + 4) = v69;
    *(v78 + 5) = v63;
    *(v78 + 6) = v66;
    *(v78 + 7) = v68;
    *(v78 + 8) = v126;
    *(v78 + 9) = 0;
    v14 = v110;
    v38 = v119;
LABEL_46:
    if (v38 < 1)
    {
      return;
    }

    v79 = [v126 v46[155]];
    v80 = v79;
    v81 = v79;
    if (!v79)
    {
      sub_21DBFA16C();
      v81 = sub_21DBFA12C();

      sub_21DBFA16C();
      v80 = sub_21DBFA12C();
    }

    sub_21DBFA16C();
    v83 = v82;
    if ((v82 & 0x1000000000000000) != 0)
    {
      v84 = sub_21DBFA35C();
    }

    else
    {
      v84 = sub_21DBFA36C();
    }

    v85 = v84;
    v86 = v79;
    if (v38 < v85)
    {
      v87 = [v81 rangeOfComposedCharacterSequenceAtIndex_];
      if (v87 >= 1)
      {
        v88 = v87;
        if ((v83 & 0x1000000000000000) == 0)
        {
          if (v87 >= sub_21DBFA36C())
          {
            goto LABEL_62;
          }

LABEL_58:
          v90 = [v80 rangeOfComposedCharacterSequenceAtIndex_];
          if (v90)
          {
            if (__OFSUB__(v90, 1))
            {
              goto LABEL_83;
            }

            v91 = [v80 rangeOfComposedCharacterSequenceAtIndex_];

            v131 = String.rangeOfNewlineCharacter(atOrBefore:)(v91);
            location = v131.value.location;
            length = v131.value.length;
            LOBYTE(v91) = v131.is_nil;

            if ((v91 & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          }

          goto LABEL_62;
        }

        if (v87 < sub_21DBFA35C())
        {
          goto LABEL_58;
        }
      }

LABEL_62:
      v89 = v80;
      v80 = v81;
      goto LABEL_63;
    }

    v89 = v81;
LABEL_63:

LABEL_64:
    location = 0;
    length = 0;
LABEL_65:
    if (length + location < v14)
    {
      return;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

uint64_t _s15RemindersUICore33TTRParagraphStyleEditingPresenterC045dataRepresentationWithEncodedParagraphAndFontD03for10Foundation4DataVSgSo18NSAttributedStringC_tFZ_0(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = [a1 string];
  if (!v2)
  {
    sub_21DBFA16C();
    v2 = sub_21DBFA12C();
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  v4 = [a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = swift_allocObject();
  v10[2] = sub_21D873DEC;
  v10[3] = v9;
  aBlock[4] = sub_21D301E58;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472CC4;
  aBlock[3] = &block_descriptor_41_1;
  v11 = _Block_copy(aBlock);
  v12 = v3;

  [a1 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v14 = objc_opt_self();
  aBlock[0] = 0;
  v15 = [v14 archivedDataWithRootObject:v12 requiringSecureCoding:0 error:aBlock];
  v16 = aBlock[0];
  if (v15)
  {
    v17 = sub_21DBF551C();

    return v17;
  }

  v18 = v16;
  v8 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_27CE56D70 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_27CE62E78);
  v20 = v8;
  v21 = sub_21DBF84AC();
  v22 = sub_21DBFAEBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = sub_21DBFC75C();
    v27 = sub_21D0CDFB4(v25, v26, aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_21D0C9000, v21, v22, "TTRParagraphStyleEditingPresenter:dataRepresentationWithEncodedParagraphAndFontStyle: error trying to encode attributedText- {error: %s}", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223D46520](v24, -1, -1);
    MEMORY[0x223D46520](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21D8735B0(id a1)
{
  sub_21D0D8CF0(0, &qword_27CE61DA0);
  sub_21D0D8CF0(0, &qword_280D177E0);
  v3 = sub_21DBFB07C();
  if (v1)
  {
    return a1;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v6 = sub_21DBFA12C();
  v7 = [v4 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = MEMORY[0x223D42B30](v8, v10);

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D873DE4;
  *(v13 + 24) = v12;
  v16[4] = sub_21D24B3B4;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21D1A6068;
  v16[3] = &block_descriptor_32;
  v14 = _Block_copy(v16);
  a1 = v5;

  [v4 enumerateAttribute:v6 inRange:0 options:v11 usingBlock:{0, v14}];

  _Block_release(v14);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return a1;
  }

  __break(1u);
  return result;
}

id sub_21D873834(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return a5;
  }

  return result;
}

unint64_t sub_21D873898()
{
  result = qword_27CE62F08;
  if (!qword_27CE62F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62F08);
  }

  return result;
}

unint64_t sub_21D8738F0()
{
  result = qword_27CE62F10;
  if (!qword_27CE62F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62F10);
  }

  return result;
}

unint64_t sub_21D873948()
{
  result = qword_27CE62F18;
  if (!qword_27CE62F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62F18);
  }

  return result;
}

unint64_t sub_21D8739A0()
{
  result = qword_27CE62F20;
  if (!qword_27CE62F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62F20);
  }

  return result;
}

void destroy for TTRParagraphStyleEditingPresenterProcessingOutput(uint64_t a1)
{

  v2 = *(a1 + 32);
}

void *initializeWithCopy for TTRParagraphStyleEditingPresenterProcessingOutput(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v6 = a2[4];
  v5 = a2[5];
  a1[4] = v6;
  a1[5] = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = v6;
  return a1;
}

void *assignWithCopy for TTRParagraphStyleEditingPresenterProcessingOutput(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for TTRParagraphStyleEditingPresenterProcessingOutput(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_21D873D08()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

unint64_t sub_21D873D4C()
{
  result = qword_27CE62F40;
  if (!qword_27CE62F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62F40);
  }

  return result;
}

void destroy for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1)
{

  v2 = *(a1 + 56);
}

uint64_t initializeWithCopy for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

void *assignWithCopy for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  a1[4] = a2[4];
  sub_21DBF8E0C();

  a1[5] = a2[5];
  a1[6] = a2[6];
  sub_21DBF8E0C();

  v4 = a2[7];
  v5 = a1[7];
  a1[7] = v4;
  v6 = v4;

  a1[8] = a2[8];
  a1[9] = a2[9];
  return a1;
}

uint64_t assignWithTake for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  v4 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21D874094@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17EA0C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D224524();
      v9 = v11;
    }

    sub_21D181D3C(*(v9 + 48) + 40 * v7);
    sub_21D0CF2E8((*(v9 + 56) + 32 * v7), a2);
    sub_21D4B560C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21D874138(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21D17EF1C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D2253EC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey();
  sub_21D87726C(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21D4B5BDC(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_21D8741FC(void *a1)
{
  v2 = v1;
  v3 = sub_21D17EFA0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D225D24();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  sub_21D87726C(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21D4B5E64(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_21D8742C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62F48);
  v1 = __swift_project_value_buffer(v0, qword_27CE62F48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListItemStateTracker.CellState.description.getter()
{
  if (*v0)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

uint64_t TTRRemindersListItemStateTracker.CellState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D874460()
{
  if (*v0)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

uint64_t TTRRemindersListItemStateTracker.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListItemStateTracker.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)(_BYTE *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
  v9[*(v7 + 28)] = a1;
  if (a3)
  {
    swift_beginAccess();
    if (*(*(v3 + 16) + 16) && (sub_21D17EF1C(v9), (v10 & 1) != 0))
    {
      swift_endAccess();
      v11 = sub_21DBF5F5C();
      sub_21D122DB4(&qword_280D0C850, MEMORY[0x277D44D58]);
      v12 = swift_allocError();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D44D50], v11);

      sub_21DBF5FAC();
    }

    else
    {
      swift_endAccess();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F60);
  swift_allocObject();
  v14 = sub_21DBF5FDC();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_21D479060(v14, v9, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v18;
  swift_endAccess();
  result = sub_21DBF5FBC();
  if (result)
  {
    v17 = result;
    sub_21D87726C(v9, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey()
{
  result = qword_280D117E0;
  if (!qword_280D117E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRRemindersListItemStateTracker.fullfil(_:of:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  v13[*(v11 + 28)] = v14;
  swift_beginAccess();
  v15 = sub_21D874138(v13);
  swift_endAccess();
  if (v15)
  {
    if (qword_27CE56DA0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE62F48);
    sub_21D1D338C(a2, v9);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAE9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v19 = 136315394;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
      v20 = TTRRemindersListViewModel.ItemID.description.getter();
      v31 = a2;
      v22 = v21;
      sub_21D87726C(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D87726C(v9, type metadata accessor for TTRRemindersListViewModel.Item);
      v23 = sub_21D0CDFB4(v20, v22, v32);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      if (v14)
      {
        v24 = 0x6579616C70736964;
      }

      else
      {
        v24 = 0x65646F4D77656976;
      }

      if (v14)
      {
        v25 = 0xE900000000000064;
      }

      else
      {
        v25 = 0xEF646564616F4C6CLL;
      }

      v26 = sub_21D0CDFB4(v24, v25, v32);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_21D0C9000, v17, v18, "TTRRemindersListItemStateTracker: resolve promise {itemID: %s, cellState: %s}", v19, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    else
    {

      sub_21D87726C(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21DBF5FCC();
  }

  return sub_21D87726C(v13, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
}

uint64_t TTRRemindersListItemStateTracker.waitFor(_:of:cancelsExistingPromise:)(_BYTE *a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a3;
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 89) = *a1;
  sub_21DBFA84C();
  *(v4 + 40) = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  *(v4 + 48) = v7;
  *(v4 + 56) = v6;

  return MEMORY[0x2822009F8](sub_21D874C18, v7, v6);
}

uint64_t sub_21D874C18()
{
  v7 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v6 = *(v0 + 89);
  *(v0 + 64) = TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)(&v6, v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_21D874CD0;
  v4 = *(v0 + 32);

  return MEMORY[0x2821A7870](v4);
}

uint64_t sub_21D874CD0()
{
  v2 = *v1;
  (*v1)[10] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];
    v5 = sub_21D7E1420;
  }

  else
  {
    sub_21D87726C(v2[4], type metadata accessor for TTRRemindersListViewModel.Item);
    v3 = v2[6];
    v4 = v2[7];
    v5 = sub_21D7E13A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D874E00(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  MEMORY[0x223D44FA0](*(v1 + *(a1 + 20)));
  return sub_21DBFC82C();
}

uint64_t sub_21D874E94(uint64_t a1, uint64_t a2)
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  MEMORY[0x223D44FA0](*(v2 + *(a2 + 20)));
  return sub_21DBFC82C();
}

uint64_t sub_21D874EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TTRRemindersListItemStateTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21D874F98()
{
  result = qword_27CE62F68;
  if (!qword_27CE62F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62F68);
  }

  return result;
}

void **sub_21D87504C(void **a1, void **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_46:
        *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
        return a1;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_24:
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_45;
        }
      }

      v23 = *a2;
      *a1 = *a2;
      v24 = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v12 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_36:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 16))(a1 + v13, a2 + v13, v25);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_44;
      }
    }

    v26 = *(a2 + v13);
    *(a1 + v13) = v26;
    v27 = v26;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRBoardColumnItemIntermediateViewModel(id *a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        return;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v3 = swift_getEnumCaseMultiPayload();
      if (v3 > 4)
      {
        if (v3 <= 7)
        {
          if (v3 != 5 && v3 != 6)
          {
            return;
          }

          goto LABEL_20;
        }

        if (v3 != 8 && v3 != 9)
        {
          return;
        }
      }

      else
      {
        if (v3 > 2)
        {
LABEL_20:
          v7 = sub_21DBF563C();
          v8 = *(*(v7 - 8) + 8);
          v9 = v7;
          v10 = a1;
LABEL_31:

          v8(v10, v9);
          return;
        }

        if (v3 != 1)
        {
          if (v3 != 2)
          {
            return;
          }

          goto LABEL_20;
        }
      }

      goto LABEL_23;
    }

    v4 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
    {
      return;
    }

    v6 = swift_getEnumCaseMultiPayload();
    if (v6 > 4)
    {
      if (v6 <= 7)
      {
        if (v6 != 5 && v6 != 6)
        {
          return;
        }

        goto LABEL_30;
      }

      if (v6 != 8 && v6 != 9)
      {
        return;
      }
    }

    else
    {
      if (v6 > 2)
      {
LABEL_30:
        v9 = sub_21DBF563C();
        v8 = *(*(v9 - 8) + 8);
        v10 = (a1 + v4);
        goto LABEL_31;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return;
        }

        goto LABEL_30;
      }
    }

    v11 = *(a1 + v4);
    goto LABEL_24;
  }

LABEL_23:
  v11 = *a1;
LABEL_24:
}

void **sub_21D875960(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_43;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_43:
        swift_storeEnumTagMultiPayload();
        goto LABEL_44;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_34:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_42:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_43;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_34;
          }

LABEL_41:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_42;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_22;
          }

          goto LABEL_33;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_22:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_22;
          }

LABEL_33:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_43;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_44:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void **sub_21D875FF0(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_45;
  }

  sub_21D87726C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_44;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_44:
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_35:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_43:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_44;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_35;
          }

LABEL_42:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_43;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_23:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_44;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_23;
          }

LABEL_34:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_44;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_45:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

char *sub_21D8766A4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_31;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_18:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_31;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_7:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_31;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_32:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_21D876BF4(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_33;
  }

  sub_21D87726C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_32;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_19:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_32;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_8:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_32;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_33:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_21D877190()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D87726C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D8772CC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62F78);
  v1 = __swift_project_value_buffer(v0, qword_27CE62F78);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D877394(uint64_t a1, uint64_t (*a2)(void))
{
  if ([objc_opt_self() isInternalInstall])
  {
    v3 = [objc_opt_self() daemonUserDefaults];
    v4 = [v3 enableInAppDebugMenu];

    if (v4)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_21D877AC8(Strong, a2);
    }
  }
}

void static TTRIDebugMenuManager.startIfNeeded(attachingTo:makeDebugMenuViewController:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ([objc_opt_self() isInternalInstall])
  {
    v8 = [objc_opt_self() daemonUserDefaults];
    v9 = [v8 enableInAppDebugMenu];

    if (v9)
    {
      v10 = sub_21D877720();
      if (v10)
      {

        if (qword_27CE56DA8 != -1)
        {
          swift_once();
        }

        v11 = sub_21DBF84BC();
        __swift_project_value_buffer(v11, qword_27CE62F78);
        oslog = sub_21DBF84AC();
        v12 = sub_21DBFAEBC();
        if (os_log_type_enabled(oslog, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_21D0C9000, oslog, v12, "TTRIDebugMenuManager: cannot attach debug menu to a view twice", v13, 2u);
          MEMORY[0x223D46520](v13, -1, -1);
        }
      }

      else
      {
        v14 = swift_allocObject();
        *(v14 + 2) = a2;
        *(v14 + 3) = a3;
        *(v14 + 4) = v4;
        v15 = type metadata accessor for DebugGestureHandler();
        v16 = objc_allocWithZone(v15);
        v17 = &v16[OBJC_IVAR____TtC15RemindersUICoreP33_C3D5BA548D44065B85FB6ED8321D992119DebugGestureHandler_handler];
        *v17 = sub_21D877868;
        v17[1] = v14;
        v23.receiver = v16;
        v23.super_class = v15;

        v18 = objc_msgSendSuper2(&v23, sel_init);
        v19 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_tapGestureAction_];
        [v19 setNumberOfTapsRequired_];
        [v19 setNumberOfTouchesRequired_];
        [a1 addGestureRecognizer_];
        v20 = qword_27CE56DB0;
        v21 = v18;
        if (v20 != -1)
        {
          swift_once();
        }

        objc_setAssociatedObject(a1, qword_27CE62F90, v21, 1);
      }
    }
  }
}

uint64_t sub_21D877720()
{
  if (qword_27CE56DB0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27CE62F90))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for DebugGestureHandler();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D1A8418(v5);
    return 0;
  }
}

void sub_21D877804(void *a1, uint64_t (*a2)(void))
{
  v3 = [a1 window];
  sub_21D877AC8(v3, a2);
}

void sub_21D8778B0(uint64_t a1)
{
  sub_21D0DB414(a1, v6);
  if (v7)
  {
    sub_21D877A7C();
    if (swift_dynamicCast())
    {
      v2 = [v5 view];
      if (v2)
      {
        v3 = v2;
        v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_C3D5BA548D44065B85FB6ED8321D992119DebugGestureHandler_handler);

        v4(v3);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_21D1A8418(v6);
  }
}

void *sub_21D877A38()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE62F90 = result;
  return result;
}

unint64_t sub_21D877A7C()
{
  result = qword_27CE62FA0;
  if (!qword_27CE62FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE62FA0);
  }

  return result;
}

void sub_21D877AC8(void *a1, uint64_t (*a2)(void))
{
  if (qword_27CE56DA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62F78);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRIDebugMenuManager: showing debug menu", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  if (a1)
  {
    v8 = a1;
    v9 = [v8 rootViewController];
    if (v9)
    {
      v10 = v9;
      oslog = a2();
      [v10 presentViewController_animated_completion_];

      goto LABEL_11;
    }
  }

  oslog = sub_21DBF84AC();
  v11 = sub_21DBFAEBC();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v11, "TTRIDebugMenuManager: not showing debug menu because rootViewController is not found", v12, 2u);
    MEMORY[0x223D46520](v12, -1, -1);
  }

LABEL_11:
}

id TTRSection.sectionID.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 objectID];
  *a1 = result;
  return result;
}

id TTRSection.objectID.getter()
{
  v1 = [*v0 objectID];

  return v1;
}

uint64_t sub_21D877D18()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62FA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE62FA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRSection.parentID.getter()
{
  v1 = [*v0 parentID];

  return v1;
}

uint64_t TTRSection.displayName.getter()
{
  v1 = [*v0 displayName];
  v2 = sub_21DBFA16C();

  return v2;
}

void TTRSection.init(with:store:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v6 = [a1 entityName];
  v7 = sub_21DBFA16C();
  v9 = v8;

  sub_21D0D8CF0(0, &qword_27CE584F8);
  v10 = [swift_getObjCClassFromMetadata() cdEntityName];
  v11 = sub_21DBFA16C();
  v13 = v12;

  if (v11 == v7 && v13 == v9)
  {

    goto LABEL_8;
  }

  v15 = sub_21DBFC64C();

  if ((v15 & 1) == 0)
  {
    sub_21D0D8CF0(0, &qword_27CE584A8);
    v25 = [swift_getObjCClassFromMetadata() cdEntityName];
    v26 = sub_21DBFA16C();
    v28 = v27;

    if (v26 == v7 && v28 == v9)
    {
    }

    else
    {
      v29 = sub_21DBFC64C();

      if ((v29 & 1) == 0)
      {
        sub_21D0D8CF0(0, &qword_27CE584B8);
        v35 = [swift_getObjCClassFromMetadata() cdEntityName];
        v36 = sub_21DBFA16C();
        v38 = v37;

        if (v36 == v7 && v38 == v9)
        {
        }

        else
        {
          v39 = sub_21DBFC64C();

          if ((v39 & 1) == 0)
          {
            if (qword_27CE56DB8 != -1)
            {
              swift_once();
            }

            v47 = sub_21DBF84BC();
            __swift_project_value_buffer(v47, qword_27CE62FA8);
            v48 = a1;
            v49 = sub_21DBF84AC();
            v50 = sub_21DBFAECC();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 138412290;
              *(v51 + 4) = v48;
              *v52 = v48;
              v53 = v48;
              _os_log_impl(&dword_21D0C9000, v49, v50, "attempted to create TTRSection from unsupported section %@", v51, 0xCu);
              sub_21D560EB8(v52);
              MEMORY[0x223D46520](v52, -1, -1);
              MEMORY[0x223D46520](v51, -1, -1);
            }

            else
            {
            }

            goto LABEL_26;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_21DC09CF0;
        *(v40 + 32) = a1;
        sub_21D0D8CF0(0, &qword_280D17880);
        v17 = a1;
        v41 = sub_21DBFA5DC();

        v54[0] = 0;
        v42 = [a2 fetchTemplateSectionsWithObjectIDs:v41 error:v54];

        v20 = v54[0];
        if (!v42)
        {
          goto LABEL_25;
        }

        sub_21D183A0C();
        v43 = sub_21DBF9E6C();
        v44 = v20;

        v23 = sub_21D1AA2CC(v17, v43);

        if (v23)
        {
          v24 = 2;
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21DC09CF0;
    *(v30 + 32) = a1;
    sub_21D0D8CF0(0, &qword_280D17880);
    v17 = a1;
    v31 = sub_21DBFA5DC();

    v54[0] = 0;
    v32 = [a2 fetchSmartListSectionsWithObjectIDs:v31 error:v54];

    v20 = v54[0];
    if (!v32)
    {
      goto LABEL_25;
    }

    sub_21D183A0C();
    v33 = sub_21DBF9E6C();
    v34 = v20;

    v23 = sub_21D1AA2B8(v17, v33);

    if (v23)
    {
      v24 = 1;
      goto LABEL_27;
    }

LABEL_26:
    v23 = 0;
    v24 = -1;
    goto LABEL_27;
  }

LABEL_8:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = a1;
  sub_21D0D8CF0(0, &qword_280D17880);
  v17 = a1;
  v18 = sub_21DBFA5DC();

  v54[0] = 0;
  v19 = [a2 fetchListSectionsWithObjectIDs:v18 error:v54];

  v20 = v54[0];
  if (!v19)
  {
LABEL_25:
    v45 = v20;
    v46 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_26;
  }

  sub_21D183A0C();
  v21 = sub_21DBF9E6C();
  v22 = v20;

  v23 = sub_21D1AA2A4(v17, v21);

  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = 0;
LABEL_27:
  *a3 = v23;
  *(a3 + 8) = v24;
}

uint64_t _s15RemindersUICore10TTRSectionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1)
      {
LABEL_4:
        sub_21D0D8CF0(0, &qword_280D17680);
        v5 = v3;
        v6 = v2;
        v7 = sub_21DBFB63C();

        return v7 & 1;
      }
    }

    else if (v4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a2 + 8))
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_21D8785C8()
{
  (*(*(v0 + 16) + 32))(&v4);
  v1 = v5;
  if (v5 >> 60 == 15)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = v4;
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62FC0);
  sub_21D8792A8(&qword_27CE62FD0);
  sub_21DBF51EC();

  sub_21D1BAF38(v2, v1);
  return v4;
}

void sub_21D87882C(uint64_t a1, char a2)
{
  v5 = v2;
  if (!*(a1 + 16) && (a2 & 1) == 0)
  {
    v8 = *(v2 + 16);
    v9 = *(v8 + 88);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v8 + 88) = v11;
      v32 = xmmword_21DC18EF0;
      (*(v8 + 48))(&v32);
      v12 = *(v8 + 88);
      v10 = __OFSUB__(v12, 1);
      v13 = v12 - 1;
      if (!v10)
      {
        *(v8 + 88) = v13;
        if (qword_280D0F3A8 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
LABEL_6:
    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE5D1E0);

    oslog = sub_21DBF84AC();
    v15 = sub_21DBFAEAC();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v32 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21D0CDFB4(*(v5 + 24), *(v5 + 32), &v32);
      _os_log_impl(&dword_21D0C9000, oslog, v15, "Removed collapsed itemIDs from user defaults {persistence: %s}", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    else
    {
    }

    return;
  }

  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  *&v32 = a1;
  BYTE8(v32) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62FC0);
  sub_21D8792A8(&qword_27CE62FC8);
  v18 = sub_21DBF522C();
  v20 = *(v2 + 16);
  v21 = *(v20 + 88);
  v10 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = v18;
  v3 = v19;
  *(v20 + 88) = v22;
  *&v32 = v18;
  *(&v32 + 1) = v19;
  v23 = *(v20 + 48);
  sub_21D1BAF70(v18, v19);
  v23(&v32);
  sub_21D17B8A8(v4, v3);
  v24 = *(v20 + 88);
  v10 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v20 + 88) = v25;
  if (qword_280D0F3A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v26 = sub_21DBF84BC();
  __swift_project_value_buffer(v26, qword_27CE5D1E0);

  sub_21DBF8E0C();
  v27 = sub_21DBF84AC();
  v28 = sub_21DBFAEAC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v32 = v30;
    *v29 = 134218242;
    *(v29 + 4) = *(a1 + 16);

    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_21D0CDFB4(*(v5 + 24), *(v5 + 32), &v32);
    _os_log_impl(&dword_21D0C9000, v27, v28, "Saved collapsed itemIDs to user defaults {count: %ld, persistence: %s}", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223D46520](v30, -1, -1);
    MEMORY[0x223D46520](v29, -1, -1);
  }

  else
  {
  }

  sub_21D17B8A8(v4, v3);
}

uint64_t static TTRTreeViewCollapsedStatesUserDefaultsPersistence<>.updateCollapsedState(to:sectionObjectID:listObjectID:requiresViewsToRefresh:userDefaults:)(int a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v38 = a4;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37[-v9];
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v37[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v37[-v18];
  v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v37[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v22 = a2;
  swift_storeEnumTagMultiPayload();
  sub_21D879240(v22, v19, type metadata accessor for TTRRemindersListViewModel.SectionID);
  swift_storeEnumTagMultiPayload();
  v23 = a2;
  v24 = [a3 stringRepresentation];
  v25 = sub_21DBFA16C();
  v27 = v26;

  sub_21D0D32E4(a5, v41);
  v28 = v42;
  v29 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v30 = (*(v29 + 8))(v25, v27, v28, v29);
  inited = swift_initStackObject();
  inited[2] = v30;
  inited[3] = v25;
  inited[4] = v27;
  __swift_destroy_boxed_opaque_existential_0(v41);
  v32 = sub_21D8785C8();
  v40 = v32;
  if (v39)
  {
    sub_21D879240(v19, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBF8E0C();
    sub_21D29B520(v16, v13);
    sub_21D8791E0(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21D1AAD70(v19, v10);
    sub_21D879178(v10);
  }

  v33 = v40;
  sub_21D320EEC(v40, v32);
  v35 = v34;

  if (v35)
  {

    sub_21D8791E0(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D8791E0(v22, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  else
  {
    sub_21D87882C(v33, v38 & 1);

    sub_21D8791E0(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return sub_21D8791E0(v22, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }
}

uint64_t sub_21D879178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D8791E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D879240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8792A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62FC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D8792F8()
{
  result = sub_21DBFA16C();
  qword_27CE62FD8 = result;
  unk_27CE62FE0 = v1;
  return result;
}

uint64_t static TTRAuthorizationSource.testing_forceNonRemindersBundle.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CE62FE8 = a1;
  return result;
}

uint64_t sub_21D87945C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;

  return sub_21DBF8E0C();
}

uint64_t static TTRAuthorizationSource.isNonRemindersBundle.getter()
{
  if (qword_280D15608 != -1)
  {
    swift_once();
  }

  return byte_280D15610;
}

uint64_t TTRAuthorizationSource.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x50746E6572727563;
  }

  v2 = *v0;
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](v2, v1);
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.DateType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.dateType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.init(date:dateType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

BOOL static TTRTemplatePublicLinkData.CreatedStateDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21DBF55EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t TTRTemplatePublicLinkData.capabilities.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TTRTemplatePublicLinkData(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

BOOL TTRTemplatePublicLinkData.hasPublicLink.getter()
{
  v1 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D46D038(v0, v3);
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (v5 != 1)
  {
    sub_21D87B178(v3, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
  }

  return v5 != 1;
}

uint64_t TTRTemplatePublicLinkData.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for TTRTemplatePublicLinkData(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t TTRTemplatePublicLinkData.init(template:now:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v98 = sub_21DBF5A0C();
  v92 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5A2C();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6);
  v100 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v80 - v11;
  MEMORY[0x28223BE20](v12);
  v89 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v80 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v21 = sub_21DBF563C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v87 = &v80 - v25;
  MEMORY[0x28223BE20](v26);
  v93 = &v80 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v34 = sub_21DBFAE0C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  sub_21DBFAE1C();
  v38 = (*(v35 + 88))(v37, v34);
  if (v38 == *MEMORY[0x277D459D8])
  {
    (*(v35 + 96))(v37, v34);
    v39 = *v37;
    v85 = v37[8];
    sub_21D46CAFC(a2, v20);
    v40 = *(v22 + 48);
    v41 = v40(v20, 1, v21);
    v86 = a2;
    v83 = v40;
    if (v41 == 1)
    {
      v42 = v33;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      if (v40(v20, 1, v21) != 1)
      {
        sub_21D0CF7E0(v20, &qword_27CE58D68);
      }
    }

    else
    {
      v42 = v33;
      (*(v22 + 32))(v33, v20, v21);
    }

    v46 = v39;
    v47 = [v39 expirationDate];
    sub_21DBF55FC();

    v80 = sub_21D87AAA4();
    LOBYTE(v47) = sub_21DBFA08C();
    v84 = v22;
    v48 = (v22 + 8);
    v49 = *(v22 + 8);
    v49(v30, v21);
    if ((v47 & 1) == 0)
    {
      v60 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v61 = v89;
      (*(*(v60 - 8) + 56))(v89, 1, 1, v60);

      sub_21D0CF7E0(v86, &qword_27CE58D68);
      v49(v42, v21);
      v44 = v85 ^ 1u;
      v62 = v61;
      v45 = v102;
LABEL_29:
      sub_21D87C33C(v62, v45, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
      goto LABEL_30;
    }

    v82 = v42;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v50 = v91;
    v51 = v92;
    (*(v92 + 104))(v91, *MEMORY[0x277CC9998], v98);
    v81 = v46;
    v52 = v48;
    v53 = [v46 &selRef_parentAccountID];
    sub_21DBF55FC();

    v54 = v99;
    sub_21DBF599C();
    v89 = v52;
    v49(v30, v21);
    v55 = v49;
    (*(v51 + 8))(v50, v98);
    v56 = v54;
    v57 = v90;
    sub_21D46CAFC(v56, v90);
    if (v83(v57, 1, v21) == 1)
    {
      sub_21D0CF7E0(v57, &qword_27CE58D68);
      v45 = v102;
      v58 = v93;
    }

    else
    {
      v63 = v87;
      (*(v84 + 32))(v87, v57, v21);
      v64 = sub_21DBFA08C();
      v58 = v93;
      if ((v64 & 1) == 0)
      {
        v65 = v81;
        v72 = [v81 expirationDate];
        sub_21DBF55FC();

        v49(v63, v21);
        v70 = 2;
        v45 = v102;
LABEL_20:
        v73 = v97;
        v74 = v94;
        (*(v84 + 16))(v97, v58, v21);
        v75 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        *(v73 + *(v75 + 20)) = v70;
        v76 = *(v75 - 8);
        (*(v76 + 56))(v73, 0, 1, v75);
        v77 = [v65 canBeUpdated];
        if (v85)
        {

          sub_21D0CF7E0(v86, &qword_27CE58D68);
          sub_21D0CF7E0(v99, &qword_27CE58D68);
          (*(v95 + 8))(v100, v96);
          v55(v58, v21);
          v55(v82, v21);
          v44 = 0;
        }

        else
        {
          v78 = v77;
          sub_21D46D038(v73, v74);
          if ((*(v76 + 48))(v74, 1, v75) == 1)
          {

            sub_21D0CF7E0(v86, &qword_27CE58D68);
            sub_21D0CF7E0(v99, &qword_27CE58D68);
            (*(v95 + 8))(v100, v96);
            v55(v58, v21);
            v55(v82, v21);
            v44 = 1;
          }

          else
          {

            if (v78)
            {
              v44 = 6;
            }

            else
            {
              v44 = 4;
            }

            sub_21D0CF7E0(v86, &qword_27CE58D68);
            sub_21D0CF7E0(v99, &qword_27CE58D68);
            (*(v95 + 8))(v100, v96);
            v55(v58, v21);
            v55(v82, v21);
            sub_21D87B178(v74, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
          }
        }

        v62 = v73;
        goto LABEL_29;
      }

      v49(v63, v21);
      v45 = v102;
    }

    v65 = v81;
    v66 = [v81 lastModifiedDate];
    sub_21DBF55FC();

    v67 = [v65 creationDate];
    v68 = v88;
    sub_21DBF55FC();

    LOBYTE(v67) = sub_21DBF55CC();
    v49(v68, v21);
    v49(v30, v21);
    v55 = v49;
    if (v67)
    {
      v69 = [v65 lastModifiedDate];
      sub_21DBF55FC();

      v70 = 1;
    }

    else
    {
      v71 = [v65 creationDate];
      sub_21DBF55FC();

      v70 = 0;
    }

    goto LABEL_20;
  }

  if (v38 == *MEMORY[0x277D459C8])
  {
    v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v44 = 1;
    v45 = v102;
    (*(*(v43 - 8) + 56))(v102, 1, 1, v43);

    sub_21D0CF7E0(a2, &qword_27CE58D68);
LABEL_30:
    result = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v45 + *(result + 20)) = v44;
    return result;
  }

  if (v38 == *MEMORY[0x277D459D0])
  {

    v59 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v45 = v102;
    (*(*(v59 - 8) + 56))(v102, 1, 1, v59);
    sub_21D0CF7E0(a2, &qword_27CE58D68);
    v44 = 0;
    goto LABEL_30;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

BOOL static TTRTemplatePublicLinkData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRTemplatePublicLinkData(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t _s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63020);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21D46D038(a1, &v21 - v12);
  sub_21D46D038(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_21D87B178(v13, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21D46D038(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D87B178(v10, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE63020);
    return 0;
  }

  sub_21D87C33C(&v13[v15], v7, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  if (sub_21DBF55EC())
  {
    v18 = *(v4 + 20);
    v19 = v10[v18];
    v20 = v7[v18];
    sub_21D87B178(v7, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    if (v19 == v20)
    {
      sub_21D87B178(v10, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
      goto LABEL_3;
    }
  }

  else
  {
    sub_21D87B178(v7, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  }

  sub_21D87B178(v10, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  sub_21D87B178(v13, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
  return 0;
}

unint64_t sub_21D87AAA4()
{
  result = qword_27CE62FF0;
  if (!qword_27CE62FF0)
  {
    sub_21DBF563C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62FF0);
  }

  return result;
}

unint64_t sub_21D87AB00()
{
  result = qword_27CE62FF8;
  if (!qword_27CE62FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62FF8);
  }

  return result;
}

unint64_t sub_21D87AB58()
{
  result = qword_27CE63000;
  if (!qword_27CE63000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63000);
  }

  return result;
}

unint64_t sub_21D87ABB0()
{
  result = qword_27CE63008;
  if (!qword_27CE63008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63008);
  }

  return result;
}

unint64_t sub_21D87AC08()
{
  result = qword_27CE63010;
  if (!qword_27CE63010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63010);
  }

  return result;
}

unint64_t sub_21D87AC60()
{
  result = qword_27CE63018;
  if (!qword_27CE63018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63018);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRTemplatePublicLinkData(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

char *initializeWithCopy for TTRTemplatePublicLinkData(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    a1[*(v6 + 20)] = a2[*(v6 + 20)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *assignWithCopy for TTRTemplatePublicLinkData(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      goto LABEL_7;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 16))(a1, a2, v11);
  a1[*(v6 + 20)] = a2[*(v6 + 20)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_21D87B178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRTemplatePublicLinkData(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    a1[*(v6 + 20)] = a2[*(v6 + 20)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *assignWithTake for TTRTemplatePublicLinkData(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      goto LABEL_7;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 32))(a1, a2, v11);
  a1[*(v6 + 20)] = a2[*(v6 + 20)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for TTRTemplatePublicLinkData.CreatedStateDescription(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D87B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRTemplatePublicLinkData.StateToDisplay(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_21D87BA84(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_21DBF563C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for TTRTemplatePublicLinkData.StateToDisplay(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithCopy for TTRTemplatePublicLinkData.StateToDisplay(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      return a1;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeWithTake for TTRTemplatePublicLinkData.StateToDisplay(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithTake for TTRTemplatePublicLinkData.StateToDisplay(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      return a1;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D87C1DC(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_21D87C244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_21D87C2B4()
{
  result = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D87C33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.setPresentationTrees(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_21D87DFB8(a1, &v13 - v5, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v7 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = qword_27CE8EB18;
  swift_beginAccess();
  sub_21D87C4F8(v6, v2 + v8);
  swift_endAccess();
  v9 = TTRRemindersBoardPresentationTrees.allColumnIDs.getter();
  v10 = sub_21D19EE98(v9);

  v11 = qword_27CE8EB20;
  swift_beginAccess();
  *(v2 + v11) = v10;
}

uint64_t sub_21D87C4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.applySnapshot(option:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = qword_27CE8EB18;
  swift_beginAccess();
  sub_21D53BDA0(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21D0CF7E0(v10, &qword_27CE58A90);
  }

  sub_21D87DE7C(v10, v14, type metadata accessor for TTRRemindersBoardPresentationTrees);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D46F824();
  sub_21D46F878();
  sub_21DBF8AFC();
  sub_21DBF8A6C();
  TTRRemindersBoardPresentationTrees.allColumnIDs.getter();
  v20 = 0;
  sub_21DBF8A2C();

  sub_21D87C87C(v7, v15, 0, 0);
  (*(v5 + 8))(v7, v4);
  v18 = qword_27CE8EB20;
  swift_beginAccess();
  v19[1] = *(v2 + v18);
  sub_21DBF8E0C();
  sub_21DBF906C();

  return sub_21D87DEE4(v14, type metadata accessor for TTRRemindersBoardPresentationTrees);
}

uint64_t sub_21D87C87C(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  if (v8 == 2)
  {
    v14 = objc_opt_self();
    (*(v10 + 16))(v13, a1, v9);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    (*(v10 + 32))(v16 + v15, v13, v9);
    v17 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a3;
    v17[1] = a4;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_21D87E130;
    *(v18 + 24) = v16;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_103;
    v19 = _Block_copy(aBlock);
    v20 = v4;
    sub_21D0D0E74(a3, a4);

    [v14 performWithoutAnimation_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    return sub_21DBF8BFC();
  }

  return result;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.lastAppliedPresentationTrees.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27CE8EB18;
  swift_beginAccess();
  return sub_21D53BDA0(v1 + v3, a1);
}

uint64_t TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63030);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = qword_27CE63038;
  if (*(v0 + qword_27CE63038))
  {
    v6 = *(v0 + qword_27CE63038);
  }

  else
  {
    v10 = *(v0 + qword_27CE63028);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040);
    sub_21D0D0F1C(&qword_27CE63048, &qword_27CE63040);
    sub_21D0D0F1C(&qword_27CE63050, &qword_27CE63058);
    sub_21DBF93AC();
    sub_21D0D0F1C(&qword_27CE63060, &qword_27CE63030);
    v7 = sub_21DBF92EC();
    (*(v2 + 8))(v4, v1);
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63068);
    sub_21D0D0F1C(&qword_27CE63070, &qword_27CE63068);
    v6 = sub_21DBF920C();

    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t (*TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter();
  return sub_21D87CE98;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9 + 16;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = qword_27CE8EB18;
  swift_beginAccess();
  v16 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  if ((*(*(v16 - 8) + 48))(v2 + v15, 1, v16))
  {
    goto LABEL_4;
  }

  sub_21D0D32E4(v2 + v15, v27);
  sub_21D0D0FD0(v27, v28);
  v17 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v18 + 40))(a1, v17, v18);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5CD80);
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_4:
    v20 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  sub_21D87DE7C(v10, v14, type metadata accessor for TTRRemindersListViewModel.Item);
  v22 = v29;
  v23 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  TTRTreeContentsQueryable.topLevelItem(containing:)(v14, v22, v23, v7);
  if (v19(v7, 1, v11) == 1)
  {
    sub_21D87DEE4(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v7, &unk_27CE5CD80);
    v24 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
    sub_21D87DEE4(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D87DEE4(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = 0;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v25 - 8) + 56))(a2, v24, 1, v25);
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t TTRRemindersBoardMainDiffableDataSource.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = qword_27CE8EB18;
  swift_beginAccess();
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  if ((*(*(v6 - 8) + 48))(v2 + v5, 1, v6))
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }

  else
  {
    sub_21D0D32E4(v2 + v5, v11);
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v10 + 40))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }
}

uint64_t TTRRemindersBoardMainDiffableDataSource.items<A>(withIDs:)()
{
  v1 = qword_27CE8EB18;
  swift_beginAccess();
  v2 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  if ((*(*(v2 - 8) + 48))(v0 + v1, 1, v2))
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D0D32E4(v0 + v1, v6);
  v4 = sub_21D0D0FD0(v6, v7);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = sub_21DBFA4EC();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.childrenExcludingCollapsed(of:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27CE8EB18;
  swift_beginAccess();
  if ((*(v7 + 48))(v1 + v10, 1, v6))
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D87DFB8(v1 + v10, v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v12 = &v9[*(v6 + 32)];
  v14 = *v12;
  v13 = *(v12 + 1);
  ObjectType = swift_getObjectType();
  v19 = v14;
  sub_21D87DFB8(a1, v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  v17 = *(*(v13 + 8) + 8);
  swift_unknownObjectRetain();
  v18 = TTRTreeContentsQueryable.children(of:)(v5, ObjectType, v17);
  sub_21D0CF7E0(v5, &unk_27CE5CD80);
  sub_21D87DEE4(v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  swift_unknownObjectRelease();
  return v18;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a3;
  v19[2] = a6;
  v19[0] = a2;
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_27CE8EB18;
  swift_beginAccess();
  if ((*(v13 + 48))(v6 + v16, 1, v12))
  {
    (*(v9 + 16))(v11, a1, a5);
    return sub_21DBFA76C();
  }

  else
  {
    sub_21D87DFB8(v6 + v16, v15, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v18 = TTRRemindersBoardPresentationTrees.sortByItemVisualLocation<A, B>(_:itemID:)();
    sub_21D87DEE4(v15, type metadata accessor for TTRRemindersBoardPresentationTrees);
    return v18;
  }
}

uint64_t TTRRemindersBoardMainDiffableDataSource.flattenedIndexPathInColumn(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27CE8EB18;
  swift_beginAccess();
  if ((*(v6 + 48))(v2 + v9, 1, v5))
  {
    v10 = sub_21DBF5D5C();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_21D87DFB8(v2 + v9, v8, type metadata accessor for TTRRemindersBoardPresentationTrees);
    TTRRemindersBoardPresentationTrees.flattenedIndexPathInColumn(for:)(a1, a2);
    return sub_21D87DEE4(v8, type metadata accessor for TTRRemindersBoardPresentationTrees);
  }
}

uint64_t TTRRemindersBoardMainDiffableDataSource.__allocating_init(collectionView:cellProvider:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = qword_27CE8EB18;
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[qword_27CE8EB20] = MEMORY[0x277D84FA0];
  *&v1[qword_27CE63038] = 0;
  v4 = qword_27CE63028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040);
  swift_allocObject();
  *&v1[v4] = sub_21DBF907C();
  return sub_21DBF8BBC();
}

uint64_t TTRRemindersBoardMainDiffableDataSource.init(collectionView:cellProvider:)()
{
  v1 = v0;
  v2 = qword_27CE8EB18;
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + qword_27CE8EB20) = MEMORY[0x277D84FA0];
  *(v1 + qword_27CE63038) = 0;
  v4 = qword_27CE63028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040);
  swift_allocObject();
  *(v1 + v4) = sub_21DBF907C();

  return sub_21DBF8BBC();
}

uint64_t sub_21D87DC4C()
{
  sub_21D0CF7E0(v0 + qword_27CE8EB18, &qword_27CE58A90);
}

id TTRRemindersBoardMainDiffableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D87DCF4(uint64_t a1)
{
  sub_21D0CF7E0(a1 + qword_27CE8EB18, &qword_27CE58A90);
}

uint64_t sub_21D87DD70()
{
  v1 = objc_allocWithZone(v0);
  v2 = qword_27CE8EB18;
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[qword_27CE8EB20] = MEMORY[0x277D84FA0];
  *&v1[qword_27CE63038] = 0;
  v4 = qword_27CE63028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040);
  swift_allocObject();

  *&v1[v4] = sub_21DBF907C();
  v5 = sub_21DBF8BBC();

  return v5;
}

uint64_t sub_21D87DE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D87DEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D87DF44(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 40))(a1, v4, v5);
}

uint64_t sub_21D87DFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TTRRemindersBoardMainDiffableDataSource()
{
  result = qword_27CE63078;
  if (!qword_27CE63078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D87E06C()
{
  sub_21D53BCD4();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *static TTRBatchFetchManager<A>.remindersFetchManager(store:initialFetchResultToken:queue:fetchOptions:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a4;
  return sub_21D87E894(a1, sub_21D1947D8, v8, a2, a3, &qword_27CE63098, &unk_21DC2E410, sub_21D1773C4);
}

uint64_t TTRBatchFetchManager<A>.override(objects:)(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_21D88372C();
LABEL_16:
    *&v30 = *(v1 + 80);
    MEMORY[0x28223BE20](result);
    sub_21DBF5EFC();

    sub_21DBF814C();
  }

  else
  {
    v27 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
    result = sub_21DBFC3DC();
    v4 = result;
    v5 = 0;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;
    v10 = result + 64;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = v11 | (v5 << 6);
        v15 = *(*(a1 + 56) + 8 * v14);
        v16 = *(*(a1 + 48) + 8 * v14);
        v17 = v15;

        v29[3] = sub_21D0D8CF0(0, &qword_280D17860);
        v29[4] = &protocol witness table for REMReminder;
        v28 = 3;
        v29[0] = v17;
        v18 = v17;
        result = TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v29, &v28, &v30);
        v19 = v31;
        v20 = v32;
        v21 = v33;
        v22 = v30;
        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(v4[6] + 8 * v14) = v16;
        v23 = v4[7] + 48 * v14;
        *v23 = v18;
        *(v23 + 8) = v22;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        v24 = v4[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v4[2] = v26;
        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          v1 = v27;
          goto LABEL_16;
        }

        v13 = *(a1 + 64 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D87E64C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F108);
  v1 = __swift_project_value_buffer(v0, qword_280D0F108);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*sub_21D87E714(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

id sub_21D87E7A8()
{
  v0 = sub_21D25A450();

  return v0;
}

void sub_21D87E7D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *sub_21D87E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(void))
{
  v13 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v14 = swift_allocObject();
  v14[3] = 0;
  swift_unknownObjectWeakInit();
  v15 = a8(MEMORY[0x277D84F90]);
  v16 = MEMORY[0x277D84FA0];
  v14[8] = v15;
  v14[9] = v16;
  sub_21D0F1DD0(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v14[10] = sub_21DBF5EEC();
  sub_21DBF60DC();
  v14[11] = sub_21DBF60AC();
  v17 = sub_21DBF60BC();
  v14[6] = a2;
  v14[7] = a3;
  v14[4] = a4;
  v14[5] = a1;
  v14[12] = v17;
  v14[13] = a5;
  return v14;
}

uint64_t TTRBatchFetchManager.__allocating_init(store:fetch:initialFetchResultToken:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  TTRBatchFetchManager.init(store:fetch:initialFetchResultToken:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *TTRBatchFetchManager.init(store:fetch:initialFetchResultToken:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v10);
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v11 = sub_21D0D8CF0(255, &qword_280D17880);
  v12 = *(v9 + 80);
  swift_getTupleTypeMetadata2();
  v13 = sub_21DBFA68C();
  v14 = sub_21D183A0C();
  v15 = sub_21D345358(v13, v11, v12, v14);

  v16 = MEMORY[0x277D84FA0];
  v5[8] = v15;
  v5[9] = v16;
  sub_21D0F1DD0(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v5[10] = sub_21DBF5EEC();
  sub_21DBF60DC();
  v5[11] = sub_21DBF60AC();
  v17 = sub_21DBF60BC();
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = a4;
  v5[5] = a1;
  v5[12] = v17;
  v5[13] = a5;
  return v5;
}

uint64_t sub_21D87ECFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = *(*v3 + 80);
  v20 = sub_21DBFBA8C();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = *(v5 - 8);
  v21 = *(v13 + 56);
  v21(&v19 - v11, 1, 1, v5, v10);
  v14 = v3[10];
  v25 = a1;
  v26 = v14;
  v23 = v12;
  v24 = v3;
  v19 = a1;
  sub_21DBF5EFC();

  v15 = v20;
  sub_21DBF814C();

  (*(v6 + 16))(v8, v12, v15);
  if ((*(v13 + 48))(v8, 1, v5) == 1)
  {
    v16 = *(v6 + 8);
    v16(v8, v15);
    sub_21D881350(v19);
    (v21)(v22, 1, 1, v5);
    return (v16)(v12, v15);
  }

  else
  {
    v18 = v22;
    (*(v13 + 32))(v22, v8, v5);
    (v21)(v18, 0, 1, v5);
    return (*(v6 + 8))(v12, v15);
  }
}

uint64_t sub_21D87EFA4@<X0>(uint64_t a1@<X8>)
{
  (*(*(*(*v1 + 80) - 8) + 56))(a1, 1, 1);
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21D87F080(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  v11 = a3;
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D183A0C();
  sub_21DBF8E0C();
  v9 = a3;
  sub_21DBF9F5C();

  return (*(v6 + 40))(a1, v8, v5);
}

uint64_t sub_21D87F1F0()
{
  v8 = MEMORY[0x277D84F90];
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D183A0C();
  v7 = sub_21DBF9E2C();
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v8 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_4:

    return v7;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_3:
  v1 = v0[6];
  v2 = v0[5];
  swift_beginAccess();
  v3 = v0[4];

  v4 = v3;
  v1(v2, v8, v4);

  MEMORY[0x28223BE20](v5);
  sub_21DBF9F4C();
  sub_21DBF9F0C();

  return v7;
}

uint64_t sub_21D87F418(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a3;
  v43 = a4;
  v4 = a2;
  v6 = *(*a2 + 80);
  v41 = sub_21DBFBA8C();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = *(v6 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v32 - v16;
  if (a1 >> 62)
  {
    v31 = v14;
    result = sub_21DBFBD7C();
    v14 = v31;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = v14 & 0xC000000000000001;
    v20 = (v12 + 48);
    v36 = (v12 + 16);
    v37 = (v12 + 32);
    v34 = (v12 + 8);
    v35 = (v12 + 56);
    v33 = (v7 + 8);
    v44 = result;
    v45 = v14;
    v38 = (v12 + 48);
    do
    {
      if (v19)
      {
        v26 = MEMORY[0x223D44740](v18, v15);
      }

      else
      {
        v26 = *(v14 + 8 * v18 + 32);
      }

      v27 = v26;
      swift_beginAccess();
      v46 = v27;
      sub_21D0D8CF0(0, &qword_280D17880);
      sub_21D183A0C();
      sub_21DBF8E0C();
      v28 = v27;
      sub_21DBF9F5C();

      if ((*v20)(v11, 1, v6) == 1)
      {
        (*v33)(v11, v41);
        v29 = v28;
        v30 = v43;
        MEMORY[0x223D42D80]();
        if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
      }

      else
      {
        v21 = v19;
        v22 = v4;
        v23 = v39;
        (*v37)(v39, v11, v6);
        v24 = v40;
        (*v36)(v40, v23, v6);
        (*v35)(v24, 0, 1, v6);
        v46 = v28;
        sub_21DBF9F4C();
        sub_21DBF9F6C();
        v25 = v23;
        v4 = v22;
        v19 = v21;
        v20 = v38;
        (*v34)(v25, v6);
      }

      result = v44;
      v14 = v45;
      ++v18;
    }

    while (v44 != v18);
  }

  return result;
}

uint64_t sub_21D87F80C()
{
  v1 = *v0;
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D8807C0();
  v11 = v10;
  if (v10 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v16[2] = v0[12];
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = *(v1 + 80);
    v13[3] = v12;
    v16[1] = v12;
    v13[4] = v11;
    aBlock[4] = sub_21D883D08;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_104;
    v14 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v16[3] = MEMORY[0x277D84F90];
    sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    v16[0] = v6;
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v5, v14);
    _Block_release(v14);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v16[0]);
  }
}

uint64_t sub_21D87FBA0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = sub_21D8807C0();
  v3 = v2;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_4;
    }

LABEL_14:
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_4:
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_280D0F108);
  sub_21DBF8E0C();
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAE9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v4)
    {
      v9 = sub_21DBFBD7C();
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&dword_21D0C9000, v6, v7, "Pre-fetching {objectsReallyToFetch: %ld}", v8, 0xCu);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v10 = *(v1 + 48);
  v11 = *(v1 + 40);

  v12 = [v11 nonUserInteractiveStore];
  swift_beginAccess();
  v13 = *(v1 + 32);
  v10(v12, v3, v13);

  MEMORY[0x28223BE20](v14);
  sub_21DBF5EFC();

  sub_21DBF814C();
}

void sub_21D87FE94(unint64_t a1, void *a2)
{
  v3 = *a2;
  v60 = a2;
  v4 = *(v3 + 80);
  v5 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v5 - 8);
  v59 = v52 - v6;
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v57 = v52 - v8;
  v67 = sub_21D0D8CF0(255, &qword_280D17880);
  v69 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_21DBFBA8C();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v52 - v13);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = sub_21DBFC21C();
    v54 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v15 | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v16 = ~v19;
    v20 = *(a1 + 64);
    v54 = a1 + 64;
    v21 = -v19;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v17 = v22 & v20;
    v18 = a1;
  }

  v68 = (v56 + 32);
  v63 = TupleTypeMetadata2 - 8;
  v52[1] = v16;
  v23 = (v16 + 64) >> 6;
  v55 = v56 + 16;
  v62 = (v10 + 32);
  v58 = (v56 + 56);
  sub_21DBF8E0C();
  v24 = 0;
  v64 = v18;
  v53 = v14;
  v61 = v17;
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v25 = v17;
  v26 = v24;
  if (v17)
  {
LABEL_16:
    v17 = (v25 - 1) & v25;
    v31 = __clz(__rbit64(v25)) | (v26 << 6);
    v32 = *(v18 + 56);
    v33 = *(*(v18 + 48) + 8 * v31);
    v34 = v56;
    v35 = v57;
    v36 = v69;
    (*(v56 + 16))(v57, v32 + *(v56 + 72) * v31, v69);
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = v66;
    *v66 = v33;
    v39 = v35;
    v30 = v38;
    (*(v34 + 32))(&v38[v37], v39, v36);
    v40 = *(TupleTypeMetadata2 - 8);
    (*(v40 + 56))(v30, 0, 1, TupleTypeMetadata2);
    v41 = v33;
    v28 = v26;
    goto LABEL_21;
  }

  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v24;
  v30 = v66;
  while (1)
  {
    v26 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v23)
    {
      break;
    }

    v25 = *(v54 + 8 * v26);
    ++v29;
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v40 = *(TupleTypeMetadata2 - 8);
  (*(v40 + 56))(v66, 1, 1, TupleTypeMetadata2);
  v17 = 0;
LABEL_21:
  while (1)
  {
    (*v62)(v14, v30, v65);
    if ((*(v40 + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v48 = *v14;
    v49 = v69;
    v50 = v59;
    (*v68)(v59, v14 + *(TupleTypeMetadata2 + 48), v69);
    (*v58)(v50, 0, 1, v49);
    v71 = v48;
    swift_beginAccess();
    sub_21D183A0C();
    sub_21DBF9F4C();
    v51 = v48;
    sub_21DBF9F6C();
    swift_endAccess();

    v24 = v28;
    v18 = v64;
    v61 = v17;
    if ((v64 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v42 = sub_21DBFC2DC();
    if (v42)
    {
      v71 = v42;
      swift_dynamicCast();
      v44 = v69;
      v43 = v70;
      v45 = v17;
      v46 = v57;
      sub_21DBFC60C();
      swift_unknownObjectRelease();
      v47 = *(TupleTypeMetadata2 + 48);
      v30 = v66;
      *v66 = v43;
      (*v68)(&v30[v47], v46, v44);
      v40 = *(TupleTypeMetadata2 - 8);
      (*(v40 + 56))(v30, 0, 1, TupleTypeMetadata2);
      v28 = v24;
      v17 = v45;
      v14 = v53;
    }

    else
    {
      v40 = *(TupleTypeMetadata2 - 8);
      v30 = v66;
      (*(v40 + 56))(v66, 1, 1, TupleTypeMetadata2);
      v28 = v24;
    }
  }

  sub_21D0CFAF8();
}

uint64_t sub_21D880538(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  swift_beginAccess();
  v5 = v1[4];

  v6 = v5;
  v4(v3, a1, v6);

  MEMORY[0x28223BE20](v7);
  sub_21DBF5EFC();

  sub_21DBF814C();
}

char *sub_21D8807C0()
{
  v4 = MEMORY[0x277D84FA0];
  sub_21DBF5EFC();

  sub_21DBF814C();

  v0 = sub_21DBF8E0C();
  v1 = sub_21D19ED08(v0);

  sub_21D9F84C8(v4);
  v2 = sub_21D198698(v1);

  return v2;
}

uint64_t sub_21D8808AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = a2[8];
  v6 = sub_21D0D8CF0(0, &qword_280D17880);
  v7 = *(v4 + 80);
  sub_21D183A0C();
  nullsub_1(v5, v6, v7);
  sub_21DBF9EDC();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  *a1 = sub_21DBFABCC();
}

uint64_t sub_21D8809BC()
{
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21D880A48()
{
  swift_beginAccess();
  sub_21D0D8CF0(255, &qword_280D17880);
  sub_21D183A0C();
  sub_21DBF9F4C();
  sub_21DBF9F3C();
  return swift_endAccess();
}

uint64_t sub_21D880AF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  swift_beginAccess();
  v6 = *(v3 + 32);
  *(v3 + 32) = v5;

  if (a2)
  {
    if (qword_280D17EA0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F108);
    sub_21DBF8E0C();
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEAC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      sub_21D0D8CF0(0, &qword_280D17880);
      sub_21D183A0C();
      v12 = sub_21DBFAABC();
      v14 = sub_21D0CDFB4(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "TTRBatchFetchManager invalidate cached objects {objectIDs: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    v21 = *(v3 + 80);
    MEMORY[0x28223BE20](v15);
    sub_21DBF5EFC();

    sub_21DBF814C();
  }

  else
  {
    if (qword_280D17EA0 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D0F108);
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEAC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, v18, v19, "TTRBatchFetchManager invalidate all cached objects", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    return sub_21D8809BC();
  }
}

void sub_21D880DE8(uint64_t a1, void *a2)
{
  v3 = *a2;
  v25 = a2;
  v24 = *(v3 + 80);
  v23 = sub_21DBFBA8C();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v21 - v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D183A0C();
    sub_21DBFAB5C();
    a1 = v28;
    v6 = v29;
    v8 = v30;
    v7 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);
    sub_21DBF8E0C();
    v7 = 0;
  }

  v21 = v8;
  v13 = (v8 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v7;
    v15 = v9;
    v16 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_21D0CFAF8();
      return;
    }

    while (1)
    {
      v27 = v18;
      swift_beginAccess();
      sub_21D0D8CF0(255, &qword_280D17880);
      sub_21D183A0C();
      sub_21DBF9F4C();
      v20 = v22;
      sub_21DBF9E8C();
      (*(v4 + 8))(v20, v23);
      swift_endAccess();

      v7 = v16;
      v9 = v17;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_21DBFBDBC();
      if (v19)
      {
        v27 = v19;
        sub_21D0D8CF0(0, &qword_280D17880);
        swift_dynamicCast();
        v18 = v26;
        v16 = v7;
        v17 = v9;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21D8810E4()
{
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21D881170(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  sub_21D884388(a2, sub_21DAB6894, 0, isUniquelyReferenced_nonNull_native, &v6);

  *(a1 + 64) = v6;
  return swift_endAccess();
}

uint64_t sub_21D88123C()
{
  swift_beginAccess();
  sub_21D0D8CF0(255, &qword_280D17880);
  sub_21D183A0C();
  sub_21DBF9F4C();
  sub_21DBF8E0C();
  sub_21DBF9F0C();
  return swift_endAccess();
}

uint64_t sub_21D881308(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_21D881350(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_21DBF9D2C();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF9D5C();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = v2[10];
  v18 = v2;
  v19 = a1;
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v20 == 1)
  {
    v15[1] = v2[11];
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = *(v4 + 80);
    *(v13 + 24) = v12;
    aBlock[4] = sub_21D8842DC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_17_4;
    v14 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v20 = MEMORY[0x277D84F90];
    sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v10, v7, v14);
    _Block_release(v14);
    (*(v17 + 8))(v7, v5);
    (*(v8 + 8))(v10, v16);
  }

  return result;
}

void sub_21D8816DC(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  swift_beginAccess();
  sub_21D29B0D0(&v9, a2);
  v8 = v9;
  swift_endAccess();

  *a3 = v7 == 0;
}

uint64_t sub_21D8817B0()
{
  v0 = sub_21DBF9D2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = v4;
    v15 = v5;
    v17 = *(result + 80);
    v9 = result;
    sub_21DBF5EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
    sub_21DBF814C();

    v10 = aBlock[0];
    v13[1] = *(v9 + 88);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    aBlock[4] = sub_21D8842EC;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_23_3;
    v12 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v17 = MEMORY[0x277D84F90];
    sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v7, v3, v12);
    _Block_release(v12);
    (*(v1 + 8))(v3, v0);
    (*(v15 + 8))(v7, v14);
  }

  return result;
}

uint64_t sub_21D881B0C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  swift_beginAccess();
  v4 = sub_21DBF8E0C();
  v5 = sub_21D198698(v4);

  if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
    v6 = v8;
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(a1 + 72) = v6;

  *a2 = v5;
  return result;
}

uint64_t sub_21D881BD0(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = sub_21DBF9D2C();
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_21DBF8E0C();
  v11 = sub_21D8807C0();
  v12 = v11;
  v13 = v11 >> 62;
  if (v11 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_3:
  v48 = v4;
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  v15 = __swift_project_value_buffer(v14, qword_280D0F108);
  sub_21DBF8E0C();
  v47 = v15;
  v16 = sub_21DBF84AC();
  v17 = sub_21DBFAE9C();
  v18 = os_log_type_enabled(v16, v17);
  v49 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    if (v13)
    {
      v20 = sub_21DBFBD7C();
    }

    else
    {
      v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 4) = v20;

    _os_log_impl(&dword_21D0C9000, v16, v17, "TTRBatchFetchManager fetching {objectsReallyToFetch: %ld}", v19, 0xCu);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  else
  {
  }

  v21 = a2[6];
  v22 = a2[5];
  swift_beginAccess();
  v23 = a2[4];

  v24 = v23;
  v25 = v21(v22, v12, v24);

  v26 = sub_21D0D8CF0(0, &qword_280D17880);
  v27 = *(v48 + 80);
  v48 = sub_21D183A0C();
  v28 = sub_21DBF9EFC();
  if (v13)
  {
    v29 = sub_21DBFBD7C();
  }

  else
  {
    v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v25;
  if (v28 == v29)
  {
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_21DBF8E0C();
    v31 = sub_21DBF84AC();
    v45 = sub_21DBFAEBC();
    v47 = v31;
    if (os_log_type_enabled(v31, v45))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v27;
      aBlock[0] = v44;
      *v32 = 136315650;
      swift_getMetatypeMetadata();
      v33 = sub_21DBFA1AC();
      v43[1] = v26;
      v43[0] = sub_21D0CDFB4(v33, v34, aBlock);

      *(v32 + 4) = v43[0];
      *(v32 + 12) = 2048;
      v35 = sub_21DBF9EFC();

      *(v32 + 14) = v35;

      *(v32 + 22) = 2048;
      if (v13)
      {
        v36 = sub_21DBFBD7C();
      }

      else
      {
        v36 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v32 + 24) = v36;

      v37 = v47;
      _os_log_impl(&dword_21D0C9000, v47, v45, "TTRBatchFetchManager failed to fetch some objects {type: %s, fetched: %ld, expect: %ld}", v32, 0x20u);
      v38 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v32, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v30 = swift_bridgeObjectRelease_n();
    }
  }

  aBlock[0] = a2[10];
  MEMORY[0x28223BE20](v30);
  v43[-4] = v46;
  v43[-3] = a2;
  v43[-2] = v10 + 16;
  sub_21DBF5EFC();

  sub_21DBF814C();

  v5 = v49;
LABEL_25:
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = v10;
  aBlock[4] = sub_21D884360;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_38_1;
  v40 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v54 = MEMORY[0x277D84F90];
  sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v41 = v50;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v9, v41, v40);
  _Block_release(v40);
  (*(v53 + 8))(v41, v5);
  (*(v51 + 8))(v9, v52);
}

uint64_t sub_21D882504(unint64_t a1, void *a2, void *a3)
{
  v57 = a3;
  v4 = *a2;
  v69 = a2;
  v5 = *(v4 + 80);
  v6 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v56 - v7;
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v56 - v9;
  v71 = sub_21D0D8CF0(255, &qword_280D17880);
  v73 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_21DBFBA8C();
  v11 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v56 - v14);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_21DBFC21C();
    v58 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v16 | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v17 = ~v20;
    v21 = *(a1 + 64);
    v58 = a1 + 64;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v18 = v23 & v21;
    v19 = a1;
  }

  v72 = (v60 + 32);
  v66 = TupleTypeMetadata2 - 8;
  v56 = v17;
  v24 = (v17 + 64) >> 6;
  v59 = v60 + 16;
  v65 = (v11 + 32);
  v62 = (v60 + 56);
  result = sub_21DBF8E0C();
  v26 = 0;
  v67 = v19;
  v64 = v18;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v27 = v18;
  v28 = v26;
  if (v18)
  {
LABEL_16:
    v18 = (v27 - 1) & v27;
    v33 = __clz(__rbit64(v27)) | (v28 << 6);
    v34 = *(v19 + 56);
    v35 = *(*(v19 + 48) + 8 * v33);
    v36 = v60;
    v37 = v61;
    v38 = v73;
    (*(v60 + 16))(v61, v34 + *(v60 + 72) * v33, v73);
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = v70;
    *v70 = v35;
    v41 = v37;
    v32 = v40;
    (*(v36 + 32))(&v40[v39], v41, v38);
    v42 = *(TupleTypeMetadata2 - 8);
    (*(v42 + 56))(v32, 0, 1, TupleTypeMetadata2);
    v43 = v35;
    v30 = v28;
    goto LABEL_22;
  }

  if (v24 <= v26 + 1)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29 - 1;
  v31 = v26;
  v32 = v70;
  while (1)
  {
    v28 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v28 >= v24)
    {
      break;
    }

    v27 = *(v58 + 8 * v28);
    ++v31;
    if (v27)
    {
      goto LABEL_16;
    }
  }

  v42 = *(TupleTypeMetadata2 - 8);
  (*(v42 + 56))(v70, 1, 1, TupleTypeMetadata2);
  v18 = 0;
LABEL_22:
  while (1)
  {
    (*v65)(v15, v32, v68);
    if ((*(v42 + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v49 = *v15;
    v50 = v73;
    v51 = v63;
    (*v72)(v63, v15 + *(TupleTypeMetadata2 + 48), v73);
    (*v62)(v51, 0, 1, v50);
    v75 = v49;
    swift_beginAccess();
    sub_21D183A0C();
    sub_21DBF9F4C();
    v52 = v49;
    sub_21DBF9F6C();
    swift_endAccess();

    v26 = v30;
    v19 = v67;
    v64 = v18;
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v44 = sub_21DBFC2DC();
    if (v44)
    {
      v75 = v44;
      swift_dynamicCast();
      v46 = v73;
      v45 = v74;
      v47 = v61;
      sub_21DBFC60C();
      swift_unknownObjectRelease();
      v48 = *(TupleTypeMetadata2 + 48);
      v32 = v70;
      *v70 = v45;
      (*v72)(&v32[v48], v47, v46);
      v42 = *(TupleTypeMetadata2 - 8);
      (*(v42 + 56))(v32, 0, 1, TupleTypeMetadata2);
    }

    else
    {
      v42 = *(TupleTypeMetadata2 - 8);
      v32 = v70;
      (*(v42 + 56))(v70, 1, 1, TupleTypeMetadata2);
    }

    v30 = v26;
  }

  sub_21D0CFAF8();
  v53 = v57;
  result = sub_21D883A1C(sub_21D884368, v69);
  if (*v53 >> 62)
  {
LABEL_29:
    v55 = result;
    v54 = sub_21DBFBD7C();
    result = v55;
    if (v54 >= v55)
    {
      return sub_21DBD1A84(result, v54);
    }

    goto LABEL_30;
  }

  v54 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54 >= result)
  {
    return sub_21DBD1A84(result, v54);
  }

LABEL_30:
  __break(1u);
  return result;
}

BOOL sub_21D882C14(void **a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *a1;
  swift_beginAccess();
  v12[5] = v8;
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D183A0C();
  sub_21DBF8E0C();
  v9 = v8;
  sub_21DBF9F5C();

  v10 = (*(*(v3 - 8) + 48))(v7, 1, v3) == 1;
  (*(v5 + 8))(v7, v4);
  return v10;
}

id *TTRBatchFetchManager.deinit()
{
  sub_21D157444((v0 + 2));

  return v0;
}

uint64_t TTRBatchFetchManager.__deallocating_deinit()
{
  TTRBatchFetchManager.deinit();

  return swift_deallocClassInstance();
}

id TTRReminderAndComputedProperties.computedProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v8 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v2;

  return v8;
}

void *sub_21D882ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = [objc_allocWithZone(MEMORY[0x277D447D0]) initWithStore_];
  v6 = [objc_opt_self() defaultFetchOptions];
  if (a4)
  {
    v7 = a4;

    v6 = v7;
  }

  v8 = [v6 fetchOptionsIncludingDueDateDeltaAlerts];

  sub_21D0D8CF0(0, &qword_280D17880);
  v9 = sub_21DBFA5DC();
  *&v45 = 0;
  v10 = [v5 fetchRemindersWithObjectIDs:v9 fetchOptions:v8 error:&v45];

  v11 = v45;
  if (v10)
  {
    v12 = sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D183A0C();
    v13 = sub_21DBF9E6C();
    v14 = v11;

    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = sub_21D88372C();
    }

    else
    {
      v42 = v12;
      v39 = v8;
      v40 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
      v16 = sub_21DBFC3DC();
      v15 = v16;
      v17 = 0;
      v18 = 1 << *(v13 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v13 + 64);
      v21 = (v18 + 63) >> 6;
      v41 = v16 + 64;
      if (v20)
      {
        goto LABEL_10;
      }

LABEL_11:
      v23 = v17;
      while (1)
      {
        v17 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v17 >= v21)
        {
          break;
        }

        v24 = *(v13 + 64 + 8 * v17);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v20 = (v24 - 1) & v24;
          while (2)
          {
            v25 = v22 | (v17 << 6);
            v26 = *(*(v13 + 56) + 8 * v25);
            v27 = *(*(v13 + 48) + 8 * v25);
            v28 = v26;

            v44[3] = v42;
            v44[4] = &protocol witness table for REMReminder;
            v43 = 3;
            v44[0] = v28;
            v29 = v28;
            TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v44, &v43, &v45);
            v30 = v46;
            v31 = v47;
            v32 = v48;
            v33 = v45;
            *(v41 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            *(v15[6] + 8 * v25) = v27;
            v34 = v15[7] + 48 * v25;
            *v34 = v29;
            *(v34 + 8) = v33;
            *(v34 + 24) = v30;
            *(v34 + 32) = v31;
            *(v34 + 40) = v32;
            v35 = v15[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (!v36)
            {
              v15[2] = v37;
              if (!v20)
              {
                goto LABEL_11;
              }

LABEL_10:
              v22 = __clz(__rbit64(v20));
              v20 &= v20 - 1;
              continue;
            }

            break;
          }

LABEL_23:
          __break(1u);
        }
      }

      v5 = v40;
      v8 = v39;
    }
  }

  else
  {
    v15 = v45;
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v15;
}

id sub_21D883290(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277D446D0]) initWithStore_];
  sub_21D0D8CF0(0, &qword_280D17880);
  v2 = sub_21DBFA5DC();
  v8[0] = 0;
  v3 = [v1 fetchListsWithObjectIDs:v2 error:v8];

  v4 = v8[0];
  if (v3)
  {
    sub_21D0D8CF0(0, &qword_280D17690);
    sub_21D183A0C();
    v5 = sub_21DBF9E6C();
    v6 = v4;
  }

  else
  {
    v5 = v8[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_21D8833F0(uint64_t a1, unint64_t a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = [objc_allocWithZone(MEMORY[0x277D44838]) initWithStore_];
  if (a2 >> 62)
  {
LABEL_35:
    v3 = sub_21DBFBD7C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x277D84F98];
      v32 = v3;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223D44740](v4, a2);
        }

        else
        {
          if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v8 = *(a2 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v34[0] = 0;
        v11 = [v33 fetchCustomSmartListWithObjectID:v8 error:v34];
        if (!v11)
        {
          v30 = v34[0];

          sub_21DBF52DC();

          swift_willThrow();
          return v5;
        }

        v12 = v11;
        if ((v5 & 0xC000000000000001) != 0)
        {
          if (v5 >= 0)
          {
            v5 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v13 = v34[0];
          v14 = v12;
          v15 = sub_21DBFBD7C();
          if (__OFADD__(v15, 1))
          {
            goto LABEL_33;
          }

          v5 = sub_21D983FE4(v5, v15 + 1);
        }

        else
        {
          v16 = v34[0];
          v17 = v12;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34[0] = v5;
        v20 = sub_21D17E07C(v9);
        v21 = *(v5 + 16);
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_32;
        }

        v24 = v19;
        if (*(v5 + 24) >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v34[0];
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_21D220534();
            v5 = v34[0];
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21D215CB4(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_21D17E07C(v9);
          if ((v24 & 1) != (v26 & 1))
          {
            sub_21D0D8CF0(0, &qword_280D17880);
            result = sub_21DBFC70C();
            __break(1u);
            return result;
          }

          v20 = v25;
          v5 = v34[0];
          if (v24)
          {
LABEL_4:
            v6 = *(v5 + 56);
            v7 = *(v6 + 8 * v20);
            *(v6 + 8 * v20) = v12;

            goto LABEL_5;
          }
        }

        *(v5 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v9;
        *(*(v5 + 56) + 8 * v20) = v12;

        v27 = *(v5 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_34;
        }

        *(v5 + 16) = v29;
LABEL_5:
        ++v4;
        if (v10 == v32)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_37:

  return v5;
}

uint64_t sub_21D88372C()
{
  if (sub_21DBFBD7C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
    v0 = sub_21DBFC40C();
  }

  else
  {
    v0 = MEMORY[0x277D84F98];
  }

  v35 = v0;
  sub_21DBFC21C();
  swift_unknownObjectRetain();
  v1 = sub_21DBFC2DC();
  if (v1)
  {
    v3 = v2;
    v4 = v1;
    sub_21D0D8CF0(0, &qword_280D17880);
    v5 = v4;
    do
    {
      *&v29 = v5;
      swift_dynamicCast();
      *&v29 = v3;
      v14 = sub_21D0D8CF0(0, &qword_280D17860);
      swift_dynamicCast();
      v16 = v33;
      v15 = v34;

      v28[3] = v14;
      v28[4] = &protocol witness table for REMReminder;
      v27 = 3;
      v28[0] = v16;
      v17 = v16;
      TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v28, &v27, &v29);
      v26 = v29;
      v18 = v30;
      v19 = v31;
      v20 = v32;

      v21 = *(v0 + 16);
      if (*(v0 + 24) <= v21)
      {
        sub_21D2159CC(v21 + 1, 1);
      }

      v0 = v35;
      result = sub_21DBFB62C();
      v7 = v0 + 64;
      v8 = -1 << *(v0 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v0 + 64 + 8 * (v9 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v9) & ~*(v0 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v8) >> 6;
        do
        {
          if (++v10 == v23 && (v22 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v24 = v10 == v23;
          if (v10 == v23)
          {
            v10 = 0;
          }

          v22 |= v24;
          v25 = *(v7 + 8 * v10);
        }

        while (v25 == -1);
        v11 = __clz(__rbit64(~v25)) + (v10 << 6);
      }

      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v0 + 48) + 8 * v11) = v15;
      v12 = *(v0 + 56) + 48 * v11;
      *v12 = v17;
      *(v12 + 8) = v26;
      *(v12 + 24) = v18;
      *(v12 + 32) = v19;
      *(v12 + 40) = v20;
      ++*(v0 + 16);
      v5 = sub_21DBFC2DC();
      v3 = v13;
    }

    while (v5);
  }

  return v0;
}

uint64_t sub_21D883A1C(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_21D3F7300(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_21DBFBD7C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_21DBFBD7C())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D44740](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223D44740](v4, v6);
    v15 = MEMORY[0x223D44740](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_21D256E5C(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_21D256E5C(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_21DBFBD7C();
}
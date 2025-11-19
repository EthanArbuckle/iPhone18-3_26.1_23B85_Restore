void sub_220834064(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for StockSearchSectionDescriptor();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v103 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v102 = &v99 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v111 = &v99 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v108 = &v99 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v110 = &v99 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v109 = (&v99 - v25);
  MEMORY[0x28223BE20](v26, v27);
  v115 = &v99 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v99 - v31;
  sub_220576D44();
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v36);
  v107 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v106 = &v99 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v113 = &v99 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v112 = &v99 - v46;
  v48 = *(v47 + 72);
  if (!v48)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v48 == -1)
  {
    goto LABEL_72;
  }

  v49 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v48 == -1)
  {
    goto LABEL_73;
  }

  v50 = (a2 - a1) / v48;
  v118 = a1;
  v117 = a4;
  if (v50 >= v49 / v48)
  {
    v52 = v49 / v48 * v48;
    if (a4 < a2 || a2 + v52 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v75 = a4 + v52;
    if (v52 >= 1)
    {
      v76 = -v48;
      v109 = (v35 + 16);
      v110 = a1;
      v104 = (v35 + 8);
      v77 = a4 + v52;
      v101 = a4;
      v115 = -v48;
      do
      {
        v100 = v75;
        v78 = a2;
        a2 += v76;
        v114 = a2;
        v112 = v78;
        while (1)
        {
          if (v78 <= a1)
          {
            v118 = v78;
            v116 = v100;
            goto LABEL_70;
          }

          v79 = a3;
          v105 = v75;
          v80 = *v109;
          v113 = (v77 + v76);
          v80(v106);
          (v80)(v107, a2, v34);
          v81 = v108;
          sub_22088B2AC();
          sub_22088B2AC();
          v82 = v81;
          v83 = v102;
          sub_22068D3D8(v82, v102);
          sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC);
          v85 = v84;
          v86 = *(*(v84 - 8) + 48);
          v87 = v86(v83, 2, v84);
          if (v87)
          {
            v88 = v87 != 1;
          }

          else
          {
            v89 = v102;

            v90 = sub_220886A4C();
            (*(*(v90 - 8) + 8))(v89, v90);
            v88 = 2;
          }

          v91 = v103;
          sub_22068D3D8(v111, v103);
          v92 = v86(v91, 2, v85);
          if (v92)
          {
            a2 = v114;
            v93 = v92 != 1;
          }

          else
          {
            v94 = v103;

            v95 = sub_220886A4C();
            (*(*(v95 - 8) + 8))(v94, v95);
            v93 = 2;
            a2 = v114;
          }

          a3 += v115;
          sub_2204D6248(v111, type metadata accessor for StockSearchSectionDescriptor);
          sub_2204D6248(v108, type metadata accessor for StockSearchSectionDescriptor);
          v96 = *v104;
          (*v104)(v107, v34);
          v96(v106, v34);
          if (v88 < v93)
          {
            break;
          }

          v97 = v113;
          v75 = v113;
          a1 = v110;
          if (v79 < v77 || a3 >= v77)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v79 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = v75;
          v76 = v115;
          v78 = v112;
          if (v97 <= v101)
          {
            a2 = v112;
            goto LABEL_69;
          }
        }

        a1 = v110;
        if (v79 < v112 || a3 >= v112)
        {
          swift_arrayInitWithTakeFrontToBack();
          v98 = v101;
          v75 = v105;
        }

        else
        {
          v98 = v101;
          v75 = v105;
          if (v79 != v112)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v76 = v115;
      }

      while (v77 > v98);
    }

LABEL_69:
    v118 = a2;
    v116 = v75;
  }

  else
  {
    v51 = v50 * v48;
    if (a4 < a1 || a1 + v51 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v111 = a4 + v51;
    v116 = a4 + v51;
    if (v51 >= 1 && a2 < a3)
    {
      v107 = *(v35 + 16);
      v108 = v35 + 16;
      v105 = a3;
      v106 = (v35 + 8);
      v104 = v48;
      do
      {
        v114 = a2;
        v54 = a2;
        v55 = v107;
        (v107)(v112, v54, v34);
        v55(v113, a4, v34);
        sub_22088B2AC();
        sub_22088B2AC();
        v56 = v32;
        v57 = v32;
        v58 = v109;
        sub_22068D3D8(v57, v109);
        sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC);
        v60 = v59;
        v61 = *(*(v59 - 8) + 48);
        v62 = v61(v58, 2, v59);
        if (v62)
        {
          v63 = v62 != 1;
        }

        else
        {
          v64 = v109;

          v65 = sub_220886A4C();
          (*(*(v65 - 8) + 8))(v64, v65);
          v63 = 2;
        }

        v66 = v110;
        sub_22068D3D8(v115, v110);
        v67 = v61(v66, 2, v60);
        if (v67)
        {
          v68 = v67 != 1;
        }

        else
        {
          v69 = v110;

          v70 = sub_220886A4C();
          (*(*(v70 - 8) + 8))(v69, v70);
          v68 = 2;
        }

        v71 = v105;
        v32 = v56;
        sub_2204D6248(v115, type metadata accessor for StockSearchSectionDescriptor);
        sub_2204D6248(v56, type metadata accessor for StockSearchSectionDescriptor);
        v72 = *v106;
        (*v106)(v113, v34);
        v72(v112, v34);
        if (v63 >= v68)
        {
          v73 = v104;
          v74 = v104 + a4;
          a2 = v114;
          if (a1 < a4 || a1 >= v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v117 = v74;
          a4 += v73;
        }

        else
        {
          v73 = v104;
          a2 = v104 + v114;
          if (a1 < v114 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v114)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v73;
        v118 = a1;
      }

      while (a4 < v111 && a2 < v71);
    }
  }

LABEL_70:
  sub_2207D2DF4(&v118, &v117, &v116);
}

uint64_t sub_220834B94(uint64_t a1)
{
  v2 = sub_22088796C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_22088920C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v25 - v18;
  sub_22088794C();
  (*(v3 + 16))(v6, v10, v2);
  v20 = (*(v3 + 88))(v6, v2);
  if (v20 == *MEMORY[0x277D2FCE0])
  {
    v21 = MEMORY[0x277D68368];
  }

  else if (v20 == *MEMORY[0x277D2FCD8])
  {
    v21 = MEMORY[0x277D68360];
  }

  else
  {
    if (v20 != *MEMORY[0x277D2FCD0])
    {
      goto LABEL_12;
    }

    v21 = MEMORY[0x277D68358];
  }

  (*(v3 + 8))(v10, v2);
  (*(v12 + 104))(v15, *v21, v11);
  (*(v12 + 32))(v19, v15, v11);
  sub_22088792C();
  v22 = sub_22088793C();
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v22 <= 0x7FFFFFFF)
  {
    sub_2208891EC();
    v23 = sub_22088795C();
    return (*(*(v23 - 8) + 8))(a1, v23);
  }

  __break(1u);
LABEL_12:
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220834F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

id sub_220835088(void *a1)
{
  v2 = [a1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setNumberOfLines_];
  }

  v4 = [a1 titleLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setTextAlignment_];
  }

  v6 = [a1 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setLineBreakMode_];
  }

  return [a1 setContentVerticalAlignment_];
}

void sub_220835278(void *a1)
{
  v2 = sub_22089132C();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v5, &v6);
    type metadata accessor for StockListViewController();
    swift_dynamicCast();
    sub_22088C71C();
    sub_22088BFCC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArticleLinkActionHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v0;
}

uint64_t ArticleLinkActionHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_220835410(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_220457328(a2, v11 + 24);
  sub_220457328(&v13, v11 + 64);
  return v11;
}

uint64_t _s8StocksUI24ArticleLinkActionHandlerC6handle6actiony12NewsArticles0dE0O_tF_0(uint64_t a1)
{
  v2 = v1;
  v116 = a1;
  v110 = sub_220887C9C();
  v113 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v3);
  v104 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A40C(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v100 - v7;
  v103 = sub_2208874DC();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v9);
  v100 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v101, v11);
  v109 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A40C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v112 = *(v13 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v105 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v108 = &v100 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v107 = &v100 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v115 = (&v100 - v24);
  v111 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v111, v25);
  v106 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v100 - v29;
  v31 = sub_22088743C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_220884E9C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v114 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40, v41);
  v44 = &v100 - v43;
  (v32[2])(v35, v116, v31, v42);
  v45 = (v32[11])(v35, v31);
  if (v45 == *MEMORY[0x277D2F978])
  {
    goto LABEL_2;
  }

  v116 = v2;
  if (v45 == *MEMORY[0x277D2F968])
  {
    (v32[12])(v35, v31);
    sub_22061013C();
    v48 = v47;
    v49 = v35[*(v47 + 48)];
    v50 = v37;
    v51 = *(v37 + 32);
    v52 = v114;
    v53 = v36;
    v36 = v50;
    v51(v114, v35, v53);
    v54 = *(v116 + 16);
    v55 = *(v48 + 48);
    v56 = *(v36 + 16);
    v116 = v53;
    v56(v30, v52, v53);
    v30[v55] = v49;
    swift_storeEnumTagMultiPayload();
    v57 = sub_22088969C();
    v32 = v115;
    (*(*(v57 - 8) + 56))(v115, 1, 1, v57);
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v122 = v54;
    sub_2205A0924(&v123, &v117, &unk_281298970, &unk_281298980);
    if (*(&v118 + 1))
    {
      sub_220457328(&v117, &v119);
      v58 = sub_220597454(&v119);
      v60 = v59;
      v62 = v61;
      __swift_destroy_boxed_opaque_existential_1(&v119);
LABEL_13:
      v83 = v30;
      v118 = 0u;
      v117 = 0u;
      v84 = v107;
      sub_2205A08A4(v32, v107);
      sub_2205A0924(&v126, &v119, &unk_281296D10, &qword_281296D20);
      v85 = (*(v112 + 80) + 24) & ~*(v112 + 80);
      v86 = (v14 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      *(v87 + 16) = 0;
      sub_2205A0994(v84, v87 + v85);
      v88 = v87 + v86;
      v89 = v120;
      *v88 = v119;
      *(v88 + 16) = v89;
      *(v88 + 32) = v121;
      v90 = (v87 + ((v86 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v90 = v58;
      v90[1] = v60;
      v90[2] = v62;

      sub_2204A80F4(v60);
      sub_2204549FC();
      sub_2204489A0(&unk_281297EC0, sub_2204549FC);
      sub_22088E92C();

      sub_2204DA45C(v60);
      sub_2208369C4(&v123, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      sub_2208369C4(&v126, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
      sub_220836A24(v115, &qword_281298480, MEMORY[0x277D686D0]);
      sub_220836A80(v83, type metadata accessor for StocksActivity);
      (*(v36 + 8))(v114, v116);
      return sub_2208369C4(&v117, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204B1F2C);
    }

    sub_2208369C4(&v117, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 == -1)
    {
LABEL_12:
      v58 = qword_2812908F8;
      v60 = qword_281290900;
      v62 = qword_281290908;

      sub_2204A80F4(v60);
      goto LABEL_13;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  if (v45 == *MEMORY[0x277D2F960])
  {
    (v32[12])(v35, v31);
    sub_2204481D8();
    v114 = *(v63 + 48);
    v64 = v109;
    v107 = v109 + *(v63 + 64);
    v65 = *(v37 + 56);
    v65(v8, 1, 1, v36);
    v66 = v100;
    sub_2208874CC();
    v65(v8, 1, 1, v36);
    v67 = v113;
    v68 = v104;
    v69 = v110;
    (*(v113 + 104))(v104, *MEMORY[0x277D2FF08], v110);
    sub_22088764C();
    v70 = *(v67 + 8);
    v113 = v67 + 8;
    v115 = v70;
    (v70)(v68, v69);
    sub_220836A24(v8, &qword_2812994E0, MEMORY[0x277CC9260]);
    (*(v102 + 8))(v66, v103);
    v71 = v107;
    *(v107 + 32) = 0;
    *v71 = 0u;
    v71[1] = 0u;
    *&v114[v64] = 0;
    swift_storeEnumTagMultiPayload();
    v72 = *(v116 + 16);
    v73 = v64;
    v74 = v106;
    sub_22083695C(v73, v106);
    swift_storeEnumTagMultiPayload();
    v75 = sub_22088969C();
    v76 = v108;
    (*(*(v75 - 8) + 56))(v108, 1, 1, v75);
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v122 = v72;
    sub_2205A0924(&v123, &v117, &unk_281298970, &unk_281298980);
    if (*(&v118 + 1))
    {
      sub_220457328(&v117, &v119);
      v77 = sub_220597454(&v119);
      v79 = v78;
      v81 = v80;
      __swift_destroy_boxed_opaque_existential_1(&v119);
    }

    else
    {
      sub_2208369C4(&v117, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v77 = qword_2812908F8;
      v79 = qword_281290900;
      v81 = qword_281290908;

      sub_2204A80F4(v79);
    }

    v118 = 0u;
    v117 = 0u;
    v91 = v105;
    sub_2205A08A4(v76, v105);
    sub_2205A0924(&v126, &v119, &unk_281296D10, &qword_281296D20);
    v92 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v93 = (v14 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    sub_2205A0994(v91, v94 + v92);
    v95 = v94 + v93;
    v96 = v120;
    *v95 = v119;
    *(v95 + 16) = v96;
    *(v95 + 32) = v121;
    v97 = (v94 + ((v93 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v97 = v77;
    v97[1] = v79;
    v97[2] = v81;

    sub_2204A80F4(v79);
    sub_2204549FC();
    sub_2204489A0(&unk_281297EC0, sub_2204549FC);
    sub_22088E92C();

    sub_2204DA45C(v79);
    sub_2208369C4(&v123, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2208369C4(&v126, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_220836A24(v108, &qword_281298480, MEMORY[0x277D686D0]);
    sub_220836A80(v74, type metadata accessor for StocksActivity);
    sub_220836A80(v109, type metadata accessor for StocksActivity.Article);
    sub_2208369C4(&v117, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204B1F2C);
    sub_220786F34();
    return (v115)(&v35[*(v98 + 48)], v110);
  }

  else
  {
    if (v45 == *MEMORY[0x277D2F970])
    {
      (v32[12])(v35, v31);

      sub_220786E8C();
      return (*(v113 + 8))(&v35[*(v82 + 64)], v110);
    }

    if (v45 == *MEMORY[0x277D2F958])
    {
      return (v32[1])(v35, v31);
    }

    else
    {
      if (v45 != *MEMORY[0x277D2F950])
      {
        v2 = v116;
        if (v45 == *MEMORY[0x277D2F948] || v45 == *MEMORY[0x277D2F940])
        {
LABEL_2:
          (v32[12])(v35, v31);
          (*(v37 + 32))(v44, v35, v36);
          __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
          sub_22088B62C();
          return (*(v37 + 8))(v44, v36);
        }

        sub_22089267C();
        __break(1u);
        goto LABEL_25;
      }

      (v32[12])(v35, v31);

      sub_220786FA0();
      return sub_220836A24(&v35[*(v99 + 48)], &qword_2812994E0, MEMORY[0x277CC9260]);
    }
  }
}

uint64_t sub_22083695C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity.Article(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2208369C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_220836A24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22047A40C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220836A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_18()
{
  sub_22047A40C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220836C58(uint64_t a1)
{
  sub_22047A40C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t type metadata accessor for StockListPriceChangeDisplayBlueprintModifier()
{
  result = qword_28127F978;
  if (!qword_28127F978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_220836DA0()
{
  result = sub_220885D4C();
  if (v1 <= 0x3F)
  {
    result = sub_2206510F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220836E34(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v5 = sub_22088B64C();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204ADE10(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v33 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v29 - v12;
  sub_22047572C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  sub_2204ADE10(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v32 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v29 - v19;
  v37 = v3;
  v29[1] = a1;
  v21 = sub_220574134(sub_220838564, v36);
  sub_22046B19C();
  v23 = v22;
  v24 = sub_220838584(&qword_281297DC8, sub_22046B19C);
  v25 = sub_220838584(&qword_281297DD0, sub_22046B19C);
  MEMORY[0x223D80A20](v21, v23, v24, v25);
  type metadata accessor for StockListModel(0);
  sub_22045B950();
  sub_220838584(&qword_281293CD8, type metadata accessor for StockListModel);
  sub_22088E7CC();
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298E90 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  if (v38 == 1)
  {
    v27 = v30;
    v26 = v31;
    (*(v30 + 104))(v8, *MEMORY[0x277D6D868], v31);
    sub_2204CD300();
    sub_22088C67C();
    (*(v27 + 8))(v8, v26);
  }

  else
  {
    sub_22088C66C();
  }

  v35(v13);
  (*(v10 + 8))(v13, v33);
  return (*(v17 + 8))(v20, v32);
}

uint64_t sub_2208372DC(uint64_t a1, uint64_t a2)
{
  sub_22046B2A0();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_22046B19C();
  sub_22088B2AC();
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v12 = a2;
  v5 = sub_220574474(sub_2208385CC, v11);
  sub_22046B36C();
  v7 = v6;
  v8 = sub_220838584(&qword_281297F88, sub_22046B36C);
  v9 = sub_220838584(&unk_281297F90, sub_22046B36C);
  MEMORY[0x223D80A20](v5, v7, v8, v9);
  type metadata accessor for StockListModel(0);
  sub_22045B950();
  sub_220838584(&qword_281293CD8, type metadata accessor for StockListModel);
  return sub_22088B29C();
}

uint64_t sub_2208374B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a3;
  v150 = a2;
  v4 = sub_220886A4C();
  v139 = *(v4 - 8);
  v140 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v138 = &v116[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_2208852DC();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v7);
  v135 = &v116[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_2208857EC();
  v134 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v9);
  v129 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = sub_22088699C();
  v130 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v11);
  v147 = &v116[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v14);
  v152 = &v116[-v15];
  v153 = sub_220885D4C();
  v148 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v16);
  v146 = &v116[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22045443C(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v145 = &v116[-v20];
  sub_22045443C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v133 = &v116[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v25);
  v132 = &v116[-v26];
  MEMORY[0x28223BE20](v27, v28);
  v128 = &v116[-v29];
  MEMORY[0x28223BE20](v30, v31);
  v131 = &v116[-v32];
  MEMORY[0x28223BE20](v33, v34);
  v155 = &v116[-v35];
  MEMORY[0x28223BE20](v36, v37);
  v144 = &v116[-v38];
  v151 = sub_22088685C();
  v143 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v39);
  v156 = &v116[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v41, v42);
  v142 = &v116[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v116[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v116[-v50];
  v52 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v116[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v116[-v58];
  sub_22046B36C();
  v61 = v60;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE4B4(v59, type metadata accessor for StockListModel);
    }

    return (*(*(v61 - 8) + 16))(v154, a1, v61);
  }

  else
  {
    v123 = v55;
    v124 = v44;
    v125 = v52;
    v126 = v47;
    sub_2204CDB9C(v59, v51);
    v121 = *(v143 + 16);
    (v121)(v156, v51, v151);
    v64 = MEMORY[0x277D697F8];
    v65 = v144;
    sub_2204B2690(&v51[v41[5]], v144, &qword_2812990C0, MEMORY[0x277D697F8]);
    v66 = v41[6];
    v120 = type metadata accessor for StockSparklineViewModel;
    v127 = v51;
    v67 = v145;
    sub_2204B2690(&v51[v66], v145, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v122 = type metadata accessor for StockListPriceChangeDisplayBlueprintModifier();
    v68 = *(v148 + 16);
    v69 = v146;
    v68(v146, v150 + *(v122 + 20), v153);
    v70 = v142;
    (v121)(v142, v156, v151);
    sub_2204B2690(v65, &v70[v41[5]], &qword_2812990C0, v64);
    sub_2204B2690(v67, &v70[v41[6]], qword_28128AAE8, v120);
    v68(&v70[v41[8]], v69, v153);
    v121 = v41;
    v70[v41[9]] = 0;
    v71 = v155;
    sub_2204B2690(v65, v155, &qword_2812990C0, v64);
    sub_2208867CC();
    v72 = v131;
    sub_2204B2690(v71, v131, &qword_2812990C0, v64);
    v73 = sub_22088676C();
    v74 = *(v73 - 8);
    v75 = *(v74 + 48);
    if (v75(v72, 1, v73) == 1)
    {
      sub_2204B37D0(v72, &qword_2812990C0, MEMORY[0x277D697F8]);
      v120 = 0;
      v119 = 1;
    }

    else
    {
      v76 = sub_22088675C();
      v71 = v155;
      v120 = v76;
      v119 = v77;
      (*(v74 + 8))(v72, v73);
    }

    v78 = v128;
    sub_2204B2690(v71, v128, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v75(v78, 1, v73) == 1)
    {
      sub_2204B37D0(v78, &qword_2812990C0, MEMORY[0x277D697F8]);
      v131 = 0;
      LODWORD(v128) = 1;
    }

    else
    {
      v79 = sub_22088666C();
      v71 = v155;
      v131 = v79;
      LODWORD(v128) = v80;
      (*(v74 + 8))(v78, v73);
    }

    v81 = v132;
    sub_2204B2690(v71, v132, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v75(v81, 1, v73) == 1)
    {
      sub_2204B37D0(v81, &qword_2812990C0, MEMORY[0x277D697F8]);
      v118 = 0;
      v117 = 1;
    }

    else
    {
      v82 = sub_22088671C();
      v71 = v155;
      v118 = v82;
      v117 = v83;
      (*(v74 + 8))(v81, v73);
    }

    v84 = v133;
    sub_2204B2690(v71, v133, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v75(v84, 1, v73) == 1)
    {
      sub_2204B37D0(v84, &qword_2812990C0, MEMORY[0x277D697F8]);
      v85 = 0;
      v132 = 0;
    }

    else
    {
      v85 = sub_22088668C();
      v132 = v86;
      (*(v74 + 8))(v84, v73);
    }

    v87 = v130;
    v88 = v129;
    v89 = &v70[v121[7]];
    v133 = *(v130 + 16);
    v90 = v147;
    (v133)(v147, v152, v141);
    v91 = v134;
    v92 = v149;
    (*(v134 + 104))(v88, *MEMORY[0x277D69288], v149);
    v93 = v135;
    sub_22088524C();
    *v89 = v120;
    v89[8] = v119 & 1;
    *(v89 + 2) = v131;
    v89[24] = v128 & 1;
    *(v89 + 4) = v118;
    v89[40] = v117 & 1;
    *(v89 + 6) = v85;
    v94 = v92;
    *(v89 + 7) = v132;
    v95 = type metadata accessor for PriceViewModel();
    v96 = v90;
    v97 = v88;
    v98 = v141;
    (v133)(&v89[v95[10]], v96, v141);
    *(v89 + 8) = 9666786;
    *(v89 + 9) = 0xA300000000000000;
    (*(v91 + 16))(&v89[v95[9]], v97, v94);
    v99 = v136;
    v100 = &v89[v95[11]];
    v101 = v93;
    v102 = v137;
    (*(v136 + 16))(v100, v93, v137);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v103 = qword_2812B6B48;
    (*(v91 + 8))(v97, v149);
    v104 = *(v87 + 8);
    v104(v147, v98);
    v104(v152, v98);
    v105 = MEMORY[0x277D697F8];
    sub_2204B37D0(v155, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v148 + 8))(v146, v153);
    sub_2204B37D0(v145, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    sub_2204B37D0(v144, &qword_2812990C0, v105);
    (*(v143 + 8))(v156, v151);
    v106 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v99 + 40))(v103 + v106, v101, v102);
    swift_endAccess();
    v107 = v142;
    v108 = v126;
    sub_2208385EC(v142, v126, type metadata accessor for StockViewModel);
    v109 = (v150 + *(v122 + 24));
    __swift_project_boxed_opaque_existential_1(v109, v109[3]);
    LOBYTE(v103) = sub_22088602C();
    __swift_project_boxed_opaque_existential_1(v109, v109[3]);
    v110 = v138;
    sub_2208863EC();
    v111 = sub_2208869BC();
    v113 = v112;
    (*(v139 + 8))(v110, v140);
    v114 = v124;
    *(v108 + *(v124 + 20)) = v103 & 1;
    v115 = (v108 + *(v114 + 24));
    *v115 = v111;
    v115[1] = v113;
    sub_2208385EC(v108, v123, type metadata accessor for StockListStockModel);
    swift_storeEnumTagMultiPayload();
    sub_220838584(&qword_281293CD8, type metadata accessor for StockListModel);
    sub_22088AD7C();
    sub_2204AE4B4(v108, type metadata accessor for StockListStockModel);
    sub_2204AE4B4(v107, type metadata accessor for StockViewModel);
    return sub_2204AE4B4(v127, type metadata accessor for StockListStockModel);
  }
}

uint64_t sub_220838584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2208385EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220838654@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v22[0] = *a1;
    v22[1] = v4;
    v5 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v5;
    v25 = *(a1 + 48);
    sub_220838824(v22, v2);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sub_22088C21C();
    sub_22088C20C();
    v14 = sub_22088C24C();

    v26.origin.x = v7;
    v26.origin.y = v9;
    v26.size.width = v11;
    v26.size.height = v13;
    CGRectGetHeight(v26);
    MEMORY[0x28223BE20](v15, v16);
    type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
    return sub_22088C19C();
  }

  else
  {
    v18 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
    v19 = *(v18 + 24);
    v20 = *MEMORY[0x277D6E860];
    v21 = sub_22088D83C();
    (*(*(v21 - 8) + 104))(&a2[v19], v20, v21);
    result = sub_22088C28C();
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *&a2[*(v18 + 28)] = result;
  }

  return result;
}

uint64_t sub_220838824(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(result + 16);
    __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    sub_22088C21C();
    v5 = v4;
    v7 = v6;
    sub_22088C20C();
    v13[0] = v5;
    v13[1] = v7;
    v13[2] = v8;
    v13[3] = v9;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = sub_22088C24C();
    v13[7] = sub_22088C28C();
    sub_2206F4994(v3, v2, v13, &v12);
    sub_220663CB4(v13);
    return sub_22088C20C();
  }

  return result;
}

uint64_t sub_220838934@<X0>(char *a1@<X8>)
{
  v2 = sub_22088ABEC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277D6D320];
  v9 = *(v3 + 104);
  v9(v7, v8, v2, v5);
  sub_22088ABDC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v3 + 8);
  v18(v7, v2);
  (v9)(v7, v8, v2);
  sub_22088ABDC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v18(v7, v2);
  v27 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
  v28 = *(v27 + 24);
  v29 = *MEMORY[0x277D6E860];
  v30 = sub_22088D83C();
  (*(*(v30 - 8) + 104))(&a1[v28], v29, v30);
  result = sub_22088C28C();
  *a1 = v11;
  *(a1 + 1) = v13;
  *(a1 + 2) = v15;
  *(a1 + 3) = v17;
  *(a1 + 4) = v20;
  *(a1 + 5) = v22;
  *(a1 + 6) = v24;
  *(a1 + 7) = v26;
  *&a1[*(v27 + 28)] = result;
  return result;
}

uint64_t sub_220838B88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_220838BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_220838C44()
{
  v1 = sub_2208853AC();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2208853CC();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220884A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v33 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v16 setDateStyle_];
  [v16 setTimeStyle_];
  [v16 setFormattingContext_];
  v17 = sub_22089132C();
  [v16 setLocalizedDateFormatFromTemplate_];

  v36 = v0;
  v18 = sub_22088509C();
  v19 = [v16 stringFromDate_];

  v20 = sub_22089136C();
  v22 = v21;

  v39 = v20;
  v40 = v22;
  sub_2208849FC();
  sub_220884A3C();
  v23 = *(v8 + 8);
  v23(v15, v7);
  sub_22059B6A4();
  v24 = sub_22089232C();
  v23(v11, v7);

  v39 = v24;
  sub_2204ADED0();
  sub_22050279C();
  sub_2208912CC();

  v25 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v26 = sub_22089132C();

  v27 = [v25 numberFromString_];

  if (v27)
  {
    v28 = [v27 integerValue];
  }

  else
  {
    sub_22088538C();
    v30 = v37;
    v29 = v38;
    v31 = v34;
    (*(v37 + 104))(v34, *MEMORY[0x277CC9980], v38);
    v28 = sub_2208853BC();

    (*(v30 + 8))(v31, v29);
    (*(v33 + 8))(v6, v35);
  }

  return v28;
}

uint64_t sub_2208390F4()
{
  sub_22088BEFC();
  sub_22088BEFC();
  v0 = sub_220888D9C();
  v1 = sub_220888D8C();

  return v1;
}

void sub_220839348()
{
  if (!qword_28127DDD0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28127DDD0);
    }
  }
}

void sub_220839428()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    sub_220839514();
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_220839514()
{
  v1 = v0;
  v2 = sub_22088C29C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220839CDC(v0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_22046DA2C(&v0[OBJC_IVAR____TtC8StocksUI23EmptyListViewController_layoutAttributesFactory], v93);
  v15 = __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v16 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  [result safeAreaInsets];
  v20 = v19;

  v89 = v1;
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = result;
  [result bounds];

  (*(v3 + 104))(v6, *MEMORY[0x277D6DDD8], v2);
  v22 = *v15;
  v98.origin.x = v8;
  v98.origin.y = v10;
  v83 = v10;
  v74 = v12;
  v98.size.width = v12;
  v90 = v14;
  v98.size.height = v14;
  v86 = v20 + 0.0 + (CGRectGetHeight(v98) - v20) * 0.5;
  v85 = v6;
  v24 = v22[5];
  v23 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v24);
  v25 = *(v23 + 8);
  v26 = *(v25 + 8);
  v92[3] = v24;
  v92[4] = v23;
  v91 = COERCE_DOUBLE(__swift_allocate_boxed_opaque_existential_1(v92));
  v26(v16, v24, v25);
  v99.origin.x = v8;
  v99.origin.y = v10;
  v99.size.width = v12;
  v99.size.height = v14;
  Width = CGRectGetWidth(v99);
  sub_2206624CC(v16, v6);
  v29 = Width * v28;
  v88 = v2;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v87 = v16;
  v31 = ObjCClassFromMetadata;
  v32 = objc_opt_self();
  v33 = [v32 bundleForClass_];
  v34 = sub_220884CAC();
  v84 = v3;
  v35 = v34;
  v37 = v36;

  v38 = (*(v23 + 16))(v35, v37, v24, v23);

  v39 = [v32 bundleForClass_];
  v40 = sub_220884CAC();
  v42 = v41;

  v43 = (*(v23 + 24))(v40, v42, v24, v23);

  sub_220891EEC();
  [v38 boundingRectWithSize:1 options:0 context:?];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v82 = v50;
  v51 = v29;
  v76 = v29;
  sub_220891EEC();
  [v43 boundingRectWithSize:1 options:0 context:?];
  v81 = v52;
  v80 = v53;
  v79 = v54;
  v78 = v55;
  v75 = v8;
  v100.origin.x = v8;
  v56 = v83;
  v100.origin.y = v83;
  v57 = v74;
  v100.size.width = v74;
  v58 = v90;
  v100.size.height = v90;
  v91 = (CGRectGetWidth(v100) - v51) * 0.5;
  v101.origin.x = v45;
  v59 = v45;
  v101.origin.y = v47;
  v60 = v47;
  v101.size.width = v49;
  v61 = v82;
  v101.size.height = v82;
  v62 = v86 - (CGRectGetHeight(v101) + 2.0);
  if (v62 > 0.0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0.0;
  }

  v86 = v63;
  v102.origin.x = v59;
  v102.origin.y = v60;
  v102.size.width = v49;
  v102.size.height = v61;
  v64 = ceil(CGRectGetHeight(v102));
  v82 = v64;
  v65 = v75;
  v103.origin.x = v75;
  v103.origin.y = v56;
  v103.size.width = v57;
  v103.size.height = v58;
  v66 = CGRectGetWidth(v103);
  v67 = v76;
  v68 = (v66 - v76) * 0.5;
  v77 = v68;
  v104.origin.x = v91;
  v104.origin.y = v63;
  v104.size.width = v76;
  v104.size.height = v64;
  v69 = CGRectGetMaxY(v104) + 4.0;
  v105.origin.x = v81;
  v105.origin.y = v80;
  v105.size.width = v79;
  v105.size.height = v78;
  v70 = ceil(CGRectGetHeight(v105));
  v106.origin.x = v68;
  v106.origin.y = v69;
  v106.size.width = v67;
  v106.size.height = v70;
  v71 = CGRectGetMaxY(v106) + 8.0;
  v107.origin.x = v65;
  v107.origin.y = v56;
  v107.size.width = v57;
  v107.size.height = v90;
  Height = CGRectGetHeight(v107);

  (*(v84 + 8))(v85, v88);
  if (Height > v71)
  {
    v73 = Height;
  }

  else
  {
    v73 = v71;
  }

  v94[0] = v65;
  v94[1] = v56;
  v94[2] = v57;
  v94[3] = v73;
  v94[4] = v71;
  v94[5] = 0.0;
  v94[6] = v91;
  v94[7] = v86;
  v94[8] = v67;
  v94[9] = v82;
  v94[10] = v77;
  v94[11] = v69;
  v94[12] = v67;
  v94[13] = v70;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  return sub_22073975C(v94, *&v89[OBJC_IVAR____TtC8StocksUI23EmptyListViewController_emptyListView]);
}

void sub_220839CDC(void *a1)
{
  v2 = sub_22088F0DC();
  v3 = [a1 view];
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    if (v3)
    {
      [v3 bounds];

      return;
    }

    goto LABEL_16;
  }

  if (!v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = objc_opt_self();
  v6 = [v4 semanticContentAttribute];

  v7 = [v5 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v8 = [a1 view];
  v9 = v8;
  if (v7 == 1)
  {
    if (v8)
    {
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v52.origin.x = v11;
      v52.origin.y = v13;
      v52.size.width = v15;
      v52.size.height = v17;
      CGRectGetWidth(v52);
      v18 = [a1 view];
      if (v18)
      {
        v19 = v18;
        [v18 safeAreaInsets];

        v20 = [a1 view];
        if (v20)
        {
          v21 = v20;
          [v20 bounds];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v53.origin.x = v23;
          v53.origin.y = v25;
          v53.size.width = v27;
          v53.size.height = v29;
          CGRectGetHeight(v53);
          return;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v8 safeAreaInsets];

  v30 = [a1 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v54.origin.x = v33;
  v54.origin.y = v35;
  v54.size.width = v37;
  v54.size.height = v39;
  CGRectGetWidth(v54);
  v40 = [a1 view];
  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = v40;
  [v40 safeAreaInsets];

  v42 = [a1 view];
  if (v42)
  {
    v43 = v42;
    [v42 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v55.origin.x = v45;
    v55.origin.y = v47;
    v55.size.width = v49;
    v55.size.height = v51;
    CGRectGetHeight(v55);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_22083A134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = sub_22088CC6C();
    v12 = MEMORY[0x277D6E218];
    v13 = MEMORY[0x277D6E240];
LABEL_5:
    (*(*(v11 - 8) + 104))(a2, *v13);
    v14 = *v12;
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = sub_22088CC0C();
    v12 = MEMORY[0x277D6E1F8];
    v13 = MEMORY[0x277D6E1E8];
    goto LABEL_5;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ForYouFeedMastheadModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouFeedMastheadModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22083A480()
{
  result = qword_27CF5A3D8;
  if (!qword_27CF5A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A3D8);
  }

  return result;
}

uint64_t sub_22083A4D4()
{
  v0 = sub_220884BDC();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22088516C();
  v30 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - v14;
  v16 = sub_2208853CC();
  v31 = *(v16 - 8);
  v32 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088538C();
  sub_22088515C();
  sub_2208852EC();
  v20 = *(v4 + 8);
  v20(v11, v3);
  type metadata accessor for StockEarningsModel();
  sub_2208852EC();
  sub_22044DB88(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v21 = sub_2208853AC();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_220899360;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CC9968], v21);
  sub_2207E1070(v24);
  swift_setDeallocating();
  (*(v22 + 8))(v24 + v23, v21);
  swift_deallocClassInstance();
  v25 = v33;
  sub_22088530C();

  v26 = sub_220884B6C();
  LOBYTE(v21) = v27;
  (*(v34 + 8))(v25, v35);
  v28 = v30;
  v20(v7, v30);
  v20(v15, v28);
  (*(v31 + 8))(v19, v32);
  if (v21)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v26;
  }
}

BOOL sub_22083A8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088516C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044DB88(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - v11;
  sub_22083AC08();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((MEMORY[0x223D7E940](a1, a2, v16) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for StockEarningsModel();
  if ((sub_22088510C() & 1) == 0)
  {
    return 0;
  }

  v20 = v19[6];
  v21 = *(v14 + 48);
  sub_2207C4220(a1 + v20, v18);
  sub_2207C4220(a2 + v20, &v18[v21]);
  v28 = v5;
  v22 = *(v5 + 48);
  if (v22(v18, 1, v4) != 1)
  {
    sub_2207C4220(v18, v12);
    if (v22(&v18[v21], 1, v4) != 1)
    {
      v24 = v28;
      (*(v28 + 32))(v8, &v18[v21], v4);
      sub_22083ACF8();
      v25 = sub_2208912FC();
      v26 = *(v24 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_2207EFBA8(v18);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v28 + 8))(v12, v4);
LABEL_8:
    sub_22083AC9C(v18);
    return 0;
  }

  if (v22(&v18[v21], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_2207EFBA8(v18);
LABEL_10:
  if ((MEMORY[0x223D7D5C0](a1 + v19[7], a2 + v19[7]) & 1) != 0 && *(a1 + v19[8]) == *(a2 + v19[8]))
  {
    return *(a1 + v19[9]) == *(a2 + v19[9]);
  }

  return 0;
}

void sub_22083AC08()
{
  if (!qword_281299460)
  {
    sub_22044DB88(255, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299460);
    }
  }
}

uint64_t sub_22083AC9C(uint64_t a1)
{
  sub_22083AC08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22083ACF8()
{
  result = qword_281299498;
  if (!qword_281299498)
  {
    sub_22088516C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299498);
  }

  return result;
}

uint64_t sub_22083AD60(uint64_t a1)
{
  sub_22083B1B8(0, qword_281291C38, type metadata accessor for AttributionSource, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for AttributionSource();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22083B034(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22083B0C8(v5);
    sub_22083B0C8(a1);
    return 0;
  }

  else
  {
    sub_22083B154(v5, v10);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22083B1B8(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220899360;
    v16 = *v10;
    v15 = v10[1];
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_22048D860();
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;

    v17 = sub_22089133C();

    sub_22083B0C8(a1);
    sub_2204AE278(v10);
    return v17;
  }
}

uint64_t sub_22083B034(uint64_t a1, uint64_t a2)
{
  sub_22083B1B8(0, qword_281291C38, type metadata accessor for AttributionSource, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22083B0C8(uint64_t a1)
{
  sub_22083B1B8(0, qword_281291C38, type metadata accessor for AttributionSource, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22083B154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22083B1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22083B274@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204446D4(0, &unk_281298340);
    result = sub_2208884DC();
    if (v14)
    {
      v10 = a2(0);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      v12 = sub_220457328(&v13, v11 + 24);
      a4[3] = v10;
      result = a3(v12);
      a4[4] = result;
      *a4 = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22083B3B0()
{
  sub_220444774();
  swift_allocObject();
  return sub_22088EEFC();
}

uint64_t sub_22083B520(uint64_t a1, void *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a3(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_220444830(a4, a5);
    sub_22088EEEC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22083B5F0()
{
  sub_2204E3C68();
  sub_220888BDC();

  sub_2204E3464();
  sub_220888BDC();

  sub_2204E3D48();
  sub_220888BDC();

  sub_2204E41E8();
  sub_220888BDC();

  sub_2204E42A4();
  sub_220888BDC();

  sub_2204E44F8();
  sub_220888BDC();
}

uint64_t sub_22083B794(void *a1, unsigned int *a2, void (*a3)(void))
{
  v6 = sub_22088947C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204446D4(0, &unk_281298340);
    result = sub_2208884DC();
    if (v15)
    {
      (*(v7 + 104))(v9, *a2, v6);
      a3(0);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      sub_220457328(&v14, v12 + 24);
      (*(v7 + 32))(v12 + qword_2812848C8, v9, v6);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WatchlistCellViewLayoutOptions()
{
  result = qword_27CF5A3E8;
  if (!qword_27CF5A3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22083BAE4(void *a1)
{
  v2 = v1;
  sub_22048BC00();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22089B130;
  v6 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  *(v4 + 32) = (*(*(v5 + 16) + 128))(v6);
  sub_22044D56C(0, &qword_28127E530);
  v7 = sub_2208916DC();

  v8 = [objc_opt_self() configurationWithPaletteColors_];

  v9 = v8;
  v10 = sub_22089132C();
  v17 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  [a1 setImage:v17 forState:0];
  v12 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v12);
  v13 = (*(*(v11 + 16) + 80))(v12);
  sub_220570424(v13);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v16 = sub_22089132C();

  [a1 setLargeContentTitle_];

  [a1 setLargeContentImage_];
}

void sub_22083BD70(void *a1, char a2)
{
  v3 = v2;
  sub_22048BC00();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22089B130;
  v8 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  *(v6 + 32) = (*(*(v7 + 16) + 128))(v8);
  sub_22044D56C(0, &qword_28127E530);
  v9 = sub_2208916DC();

  v10 = [objc_opt_self() configurationWithPaletteColors_];

  v21 = v10;
  v11 = sub_22089132C();

  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v21];

  [a1 setImage:v12 forState:0];
  v14 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  v15 = (*(*(v13 + 16) + 80))(v14);
  sub_220570424(v15);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  if (a2)
  {
    v20 = 0x80000002208C3DE0;
  }

  else
  {
    v20 = 0x80000002208C3E60;
  }

  sub_220884CAC();

  v18 = sub_22089132C();

  [a1 setAccessibilityLabel_];

  v19 = sub_22089132C();

  [a1 setLargeContentTitle_];

  [a1 setLargeContentImage_];
}

void sub_22083C0A8(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = 28.0;
  }

  else
  {
    v5 = 30.0;
  }

  sub_22048BC00();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22089B120;
  v8 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  *(v6 + 32) = (*(*(v7 + 16) + 128))(v8);
  *(v6 + 40) = [objc_opt_self() clearColor];
  sub_22044D56C(0, &qword_28127E530);
  v9 = sub_2208916DC();

  v10 = objc_opt_self();
  v11 = [v10 configurationWithPaletteColors_];

  v12 = [v10 configurationWithPointSize_];
  v13 = [v11 configurationByApplyingConfiguration_];

  v14 = v13;
  v15 = sub_22089132C();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  [a1 setImage:v16 forState:0];
  v18 = v3[5];
  v17 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v18);
  v19 = (*(*(v17 + 16) + 80))(v18);
  sub_220570424(v19);
}

id sub_22083C2F4()
{
  v1 = v0;
  if (sub_22088F0DC())
  {
    sub_2204A5DF0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v3 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v4 = sub_22044D56C(0, &qword_28127E570);
    v5 = v3;
    v6 = sub_220891F2C();
    v7 = sub_220891F4C();

    v8 = MEMORY[0x277D740C0];
    *(inited + 40) = v7;
    v9 = *v8;
    *(inited + 64) = v4;
    *(inited + 72) = v9;
    v11 = v1[5];
    v10 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
    v12 = *(v10 + 16);
    v13 = *(v12 + 40);
    v14 = v9;
    v15 = v13(v11, v12);
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
    *(inited + 80) = v15;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_2204A63B8();
    v18 = sub_22089125C();

    v19 = [v16 initWithString:v17 attributes:v18];
  }

  else
  {
    v20 = sub_22044D56C(0, &qword_28127E570);
    v21 = sub_220891F2C();
    v22 = sub_220891F4C();

    sub_2204A5DF0();
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_220899920;
    v24 = *MEMORY[0x277D740A8];
    *(v23 + 32) = *MEMORY[0x277D740A8];
    sub_22044D56C(0, &qword_28127E570);
    v25 = MEMORY[0x277D740C0];
    *(v23 + 40) = v22;
    v26 = *v25;
    *(v23 + 64) = v20;
    *(v23 + 72) = v26;
    v27 = v1[5];
    v28 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v27);
    v29 = *(v28 + 16);
    v30 = *(v29 + 40);
    v31 = v24;
    v32 = v22;
    v33 = v26;
    v34 = v30(v27, v29);
    *(v23 + 104) = sub_22044D56C(0, &qword_28127E530);
    *(v23 + 80) = v34;
    sub_2204A5EAC(v23);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_2204A63B8();
    v18 = sub_22089125C();

    v19 = [v35 initWithString:v17 attributes:v18];
  }

  return v19;
}

id sub_22083C744()
{
  v1 = v0;
  sub_22088F0DC();
  v2 = sub_22044D56C(0, &qword_28127E570);
  v3 = sub_220891F2C();
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  sub_22044D56C(0, &qword_28127E570);
  v6 = MEMORY[0x277D740C0];
  *(inited + 40) = v3;
  v7 = *v6;
  *(inited + 64) = v2;
  *(inited + 72) = v7;
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  v10 = *(v9 + 16);
  v11 = *(v10 + 216);
  v12 = v5;
  v13 = v3;
  v14 = v7;
  v15 = v11(v8, v10);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v15;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v18 = sub_22089125C();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

uint64_t sub_22083C9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_22083CB18(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_watchState) = v1;
      sub_22088B46C();
      sub_2206438CC();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22083CBC0(uint64_t a1)
{
  v2 = v1;
  sub_2204D0744(0, &qword_2812995A0, type metadata accessor for StockFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for StockFeedRouteModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[5];
  ObjectType = swift_getObjectType();
  sub_2205E04A8(a1, ObjectType, v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22083D660(v7);
    return 0;
  }

  else
  {
    sub_22083D6EC(v7, v12);
    __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
    v16 = sub_2205BA054(v12);
    sub_22083D5A0(v12, type metadata accessor for StockFeedRouteModel);
    return v16;
  }
}

uint64_t sub_22083CD88()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22083CE0C(uint64_t a1)
{
  sub_2204D0744(0, &qword_281298570, MEMORY[0x277D68300], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_2208871DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 88), *(a1 + 112));
  *v10 = 0x656E696C64616568;
  v10[1] = 0xE800000000000000;
  (*(v7 + 104))(v10, *MEMORY[0x277CEAE48], v6);
  sub_2208872DC();
  (*(v7 + 8))(v10, v6);
  v12 = *MEMORY[0x277D682D0];
  v13 = sub_22088916C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v5, v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  v15 = OBJC_IVAR____TtC8StocksUI16StockFeedTracker_onDeckViewAction;
  swift_beginAccess();
  sub_220744B60(v5, v11 + v15);
  return swift_endAccess();
}

uint64_t sub_22083D058(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v6 = sub_2208877BC();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088743C();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220884E9C();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v41 - v20;
  v22 = type metadata accessor for StockFeedRouteModel();
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *a2;
  v50 = a1;
  sub_2205BAA80(a1, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = type metadata accessor for StockFeedRouteModel;
LABEL_9:
    sub_22083D5A0(v25, v27);
    goto LABEL_10;
  }

  type metadata accessor for StocksActivity.Article(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for StocksActivity.Article;
    goto LABEL_9;
  }

  v28 = *v25;
  v29 = [v28 contentURL];
  if (v29)
  {
    v44 = v28;
    v30 = v29;
    sub_220884E4C();

    (*(v48 + 32))(v21, v17, v49);
    v31 = a3[20];
    v42 = a3[19];
    v43 = v31;
    v41 = __swift_project_boxed_opaque_existential_1(a3 + 16, v42);
    v32 = MEMORY[0x277D2FBB0];
    sub_2204D0744(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
    v33 = v45;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_220899360;
    sub_2208877AC();
    v51 = v34;
    sub_22083D600();
    sub_2204D0744(0, &qword_27CF5A410, v32, MEMORY[0x277D83940]);
    sub_22055F7F4();
    sub_2208923FC();
    sub_2208875FC();
    (*(v33 + 8))(v9, v6);
    v36 = v46;
    v35 = v47;
    v37 = (*(v46 + 88))(v13, v47);
    if (v37 == *MEMORY[0x277D2F978] || v37 == *MEMORY[0x277D2F948])
    {
      (*(v36 + 8))(v13, v35);
      v39 = *__swift_project_boxed_opaque_existential_1(a3 + 11, a3[14]);
      v40 = swift_allocObject();
      *(v40 + 16) = v44;
      *(v40 + 24) = v39;
      swift_unknownObjectRetain();

      sub_22088726C();
      swift_unknownObjectRelease();

      (*(v48 + 8))(v21, v49);
    }

    else
    {
      (*(v48 + 8))(v21, v49);
      swift_unknownObjectRelease();
      (*(v36 + 8))(v13, v35);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_project_boxed_opaque_existential_1(a3 + 6, a3[9]);
  v52 = v26;
  return sub_2205B950C(v50, &v52);
}

uint64_t sub_22083D5A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22083D600()
{
  result = qword_27CF599B0;
  if (!qword_27CF599B0)
  {
    sub_2208877BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF599B0);
  }

  return result;
}

uint64_t sub_22083D660(uint64_t a1)
{
  sub_2204D0744(0, &qword_2812995A0, type metadata accessor for StockFeedRouteModel, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22083D6EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22083D750@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v5 = Strong;
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
      v6 = 0;
    }

    else
    {
      v9 = Strong;
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
      v6 = 1;
    }

    v8 = sub_2206063EC(v6);
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v8 = result;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_22083D83C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = sub_22088677C();
  v12 = v11;
  v13 = sub_22088681C();
  v15 = v14;
  v16 = sub_22088683C();
  v18 = v17;
  result = (*(v5 + 8))(v9, v4);
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v18;
  *a2 = 0x6C6F626D7973;
  a2[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_22083D978(uint64_t a1, double *a2, char *a3, int a4)
{
  v5 = v4;
  v105 = a4;
  v112 = a3;
  sub_22057E51C();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220885D4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088699C();
  v110 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for StockViewModel();
  v20 = v111[7];
  v113 = a1;
  v21 = a1 + v20;
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v22 = *v21;
  v23 = *(v21 + 8);
  if (v23)
  {
    v24 = *(v21 + 72);
    v103 = *(v21 + 64);

    goto LABEL_20;
  }

  v25 = *v21;
  if (v115[0])
  {
    v106 = v5;
    v26 = type metadata accessor for PriceViewModel();
    v27 = v110;
    (*(v110 + 16))(v19, v21 + *(v26 + 40), v16);
    v28 = (*(v27 + 88))(v19, v16);
    v29 = 2;
    if (v28 == *MEMORY[0x277D69898])
    {
      v5 = v106;
      goto LABEL_14;
    }

    v5 = v106;
    if (v28 == *MEMORY[0x277D698A0] || v28 == *MEMORY[0x277D69870] || v28 == *MEMORY[0x277D69888] || v28 == *MEMORY[0x277D69878] || v28 == *MEMORY[0x277D69890])
    {
      goto LABEL_14;
    }

    if (v28 != *MEMORY[0x277D69880])
    {
      if (v28 != *MEMORY[0x277D69868])
      {
        (*(v110 + 8))(v19, v16);
      }

      v29 = 2;
      goto LABEL_14;
    }
  }

  v29 = 0;
LABEL_14:
  v30 = v22;
  if (qword_281294078 != -1)
  {
    v94 = v29;
    swift_once();
    v29 = v94;
  }

  v31 = sub_2204BD7B8(*(v21 + 48), *(v21 + 56), 5, 1, v29, v25);
  if (v32)
  {
    v24 = v32;
    v103 = v31;
  }

  else
  {
    v24 = *(v21 + 72);
    v103 = *(v21 + 64);
  }

  v22 = v30;
LABEL_20:
  v33 = v111[8];
  (*(v12 + 16))(v15, v113 + v33, v11);
  v34 = (*(v12 + 88))(v15, v11);
  v35 = v34 == *MEMORY[0x277D69480];
  v106 = v33;
  v104 = v24;
  if (!v35)
  {
    if (v34 == *MEMORY[0x277D69468])
    {
      if ((v23 & 1) == 0 && (*(v21 + 24) & 1) == 0)
      {
        v40 = *(v21 + 16);
        v41 = v22 - v40;
        v42 = v40 / (v22 - v40);
        if (v41 <= 0.0)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v42;
        }

        if (qword_27CF55AB8 == -1)
        {
          goto LABEL_63;
        }

        goto LABEL_66;
      }

      goto LABEL_39;
    }

    if (v34 != *MEMORY[0x277D69478])
    {
      result = sub_2208928AC();
      __break(1u);
      return result;
    }

    type metadata accessor for PriceViewModel();
    if (sub_2208857CC())
    {
      if ((v23 & 1) == 0 && (*(v21 + 24) & 1) == 0)
      {
        v87 = *(v21 + 16);
        v88 = v22 - v87;
        v89 = v87 / (v22 - v87);
        if (v88 <= 0.0)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v89;
        }

        if (qword_27CF55AB8 == -1)
        {
LABEL_63:
          v36 = v5;
          v90 = qword_27CF6D008;
          v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v92 = [v90 stringFromNumber_];

          if (v92)
          {
            v102 = sub_22089136C();
            v101 = v93;

            goto LABEL_43;
          }

          goto LABEL_40;
        }

LABEL_66:
        swift_once();
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v36 = v5;
    v38 = sub_220691100(0);
LABEL_42:
    v102 = v38;
    v101 = v39;
    goto LABEL_43;
  }

  if ((*(v21 + 24) & 1) == 0)
  {
    v36 = v5;
    v37 = v22 >= 5.0;
    if (v22 == 0.0)
    {
      v37 = 1;
    }

    v38 = sub_2204DBC04(v37 & ~v23, *(v21 + 16));
    if (!v39)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_39:
  v36 = v5;
LABEL_40:
  v44 = *(v21 + 72);
  v102 = *(v21 + 64);
  v101 = v44;

LABEL_43:
  v100 = *(v21 + 16);
  v110 = v21;
  v99 = *(v21 + 24);
  v45 = v112;
  v46 = *&v112[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel];
  [v46 setFrame_];
  v96 = *&v45[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel];
  [v96 setFrame_];
  v47 = *&v45[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel];
  [v47 setFrame_];
  v48 = *&v45[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceLabel];
  [v48 setFrame_];
  v97 = *&v45[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceChangeLabel];
  [v97 setFrame_];
  v98 = *&v45[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton];
  [v98 setFrame_];
  swift_beginAccess();
  sub_22046DA2C(v36 + 16, v115);
  __swift_project_boxed_opaque_existential_1(v115, v116);
  v49 = v113;
  sub_22088684C();
  v50 = sub_220606AA4();

  [v46 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v115);
  sub_22046DA2C(v36 + 16, v115);
  __swift_project_boxed_opaque_existential_1(v115, v116);
  v51 = sub_2208867BC();
  v53 = sub_220605F2C(v51, v52, v105 & 1);

  v54 = v96;
  [v96 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v115);
  sub_22046DA2C(v36 + 16, v115);
  __swift_project_boxed_opaque_existential_1(v115, v116);
  sub_2204C4258(v49 + v111[5]);
  v55 = sub_220606880();
  v56 = v48;
  v57 = v47;

  [v47 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));
  v58 = sub_220606CCC();

  [v56 setAttributedText_];

  __swift_project_boxed_opaque_existential_1((v36 + 16), *(v36 + 40));
  v59 = sub_22060617C(v102, v101, v100, v99);

  [v97 setAttributedText_];

  LOBYTE(v115[0]) = 1;
  swift_allocObject();
  swift_weakInit();
  sub_22047A590();
  sub_22046599C();
  v60 = v107;
  sub_22088B8EC();
  sub_22088BB6C();
  (*(v108 + 8))(v60, v109);
  v61 = type metadata accessor for StockSearchCellView();
  v114.receiver = v45;
  v114.super_class = v61;
  objc_msgSendSuper2(&v114, sel_setIsAccessibilityElement_, 1);
  sub_22088681C();
  v62 = sub_22089132C();

  [v45 setAccessibilityIdentifier_];

  v63 = Stock.accessibleSymbol.getter();
  [v45 setAccessibilityAttributedLabel_];

  sub_2205023E8();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_22089EF70;
  v65 = [v54 text];
  if (v65)
  {
    v66 = v65;
    v67 = sub_22089136C();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  *(v64 + 32) = v67;
  *(v64 + 40) = v69;
  v70 = [v57 text];
  if (v70)
  {
    v71 = v70;
    v72 = sub_22089136C();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  *(v64 + 48) = v72;
  *(v64 + 56) = v74;
  v75 = [v56 text];
  if (v75)
  {
    v76 = v75;
    v77 = sub_22089136C();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  *(v64 + 64) = v77;
  *(v64 + 72) = v79;
  *(v64 + 80) = sub_2204DAE00(v113 + v106);
  *(v64 + 88) = v80;
  sub_22088AD1C();
  v82 = v81;

  if (v82)
  {
    v83 = sub_22089132C();
  }

  else
  {
    v83 = 0;
  }

  [v112 setAccessibilityValue_];

  MEMORY[0x28223BE20](v84, v85);
  *(&v95 - 2) = v113;
  sub_2204DD7F8();
  sub_220499E54(qword_2812942B0, 255, sub_2204DD7F8);
  return sub_220891F9C();
}

void sub_22083E630()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_22083E684();
  }
}

void sub_22083E684()
{
  v1 = sub_22089132C();
  v8 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  v2 = v8;
  if (v8)
  {
    v3 = v8;
    v4 = [v0 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 window];

    v7 = [v6 rootViewController];
    [v3 setPresentingViewController_];

    v2 = v8;
  }

  [v2 present];
}

void sub_22083E91C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 setAccessibilityViewIsModal_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = &v1[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewProvider];
  [v4 addSubview_];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];

    [*(*(*__swift_project_boxed_opaque_existential_1(v6 *(v6 + 3)) + 16) + OBJC:sel_setScrollEnabled_ IVAR:0 :? :? :? TtC8StocksUI11WelcomeView:?scrollView)];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewAnimator], *&v1[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewAnimator + 24]);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_22088868C();

    __swift_destroy_boxed_opaque_existential_1(v10);
    v9 = [v1 traitCollection];
    sub_22083EBC4(v9);

    return;
  }

LABEL_7:
  __break(1u);
}

unsigned __int8 *sub_22083EB14(unsigned __int8 *result)
{
  if (*result >= 2u)
  {
    v4[10] = v1;
    v4[11] = v2;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = result;
      sub_22046DA2C(&result[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewProvider], v4);

      [*(*(*__swift_project_boxed_opaque_existential_1(v4 v4[3]) + 16) + OBJC:sel_setScrollEnabled_ IVAR:1 :? :? :? TtC8StocksUI11WelcomeView:?scrollView)];
      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  return result;
}

id sub_22083EBC4(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v4, v29);
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v27 = v5;
  v28 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v26);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v26, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_22046DA2C(v4, v29);
  v9 = __swift_project_boxed_opaque_existential_1(v29, v30);
  result = [v2 view];
  if (result)
  {
    v11 = result;
    v12 = *v9;
    v14 = *(*v9 + 40);
    v13 = *(*v9 + 48);
    __swift_project_boxed_opaque_existential_1(v12 + 2, v14);
    v15 = (*(*(v13 + 16) + 48))(v14);
    [v11 setBackgroundColor_];

    v17 = v12[5];
    v16 = v12[6];
    __swift_project_boxed_opaque_existential_1(v12 + 2, v17);
    (*(*(v16 + 16) + 24))(&v26, v17);
    [v11 setAccessibilityIgnoresInvertColors_];

    __swift_destroy_boxed_opaque_existential_1(v29);
    v18 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v19 = *&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_statusBarView];
    v20 = *v18;
    v22 = *(*v18 + 40);
    v21 = *(*v18 + 48);
    __swift_project_boxed_opaque_existential_1((*v18 + 16), v22);
    v23 = (*(*(v21 + 16) + 48))(v22);
    [v19 setBackgroundColor_];

    v25 = v20[5];
    v24 = v20[6];
    __swift_project_boxed_opaque_existential_1(v20 + 2, v25);
    (*(*(v24 + 16) + 24))(v29, v25);
    return [v19 setAccessibilityIgnoresInvertColors_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22083EF1C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_sceneStateManager + 24]);
  sub_22083F6E4();
  sub_220888BFC();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_allowRendering] = 1;
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];

    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22083F078(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1 & 1);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_sceneStateManager + 24]);
  sub_22083F6E4();
  sub_220888C0C();
  __swift_project_boxed_opaque_existential_1((*&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler] + 88), *(*&v2[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler] + 112));
  sub_22088726C();
  swift_getObjectType();
  return sub_22088BB9C();
}

void sub_22083F1B8()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewWillLayoutSubviews);
  if (v0[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_allowRendering] == 1)
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewAnimator], *&v0[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewAnimator + 24]);
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      [v1 frame];
      v4 = v3;
      v6 = v5;

      v7 = [v0 traitCollection];
      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 layoutMargins];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v19[0] = v4;
        v19[1] = v6;
        v19[2] = v7;
        v19[3] = v11;
        v19[4] = v13;
        v19[5] = v15;
        v19[6] = v17;
        sub_22077A160(v19);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_22083F614()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DB8](ObjectType);
}

uint64_t sub_22083F650()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC8](ObjectType);
}

unint64_t sub_22083F6E4()
{
  result = qword_27CF5A458;
  if (!qword_27CF5A458)
  {
    type metadata accessor for WelcomeViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A458);
  }

  return result;
}

double sub_22083F740@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>)
{
  v33 = a3;
  v34 = a2;
  v4 = sub_22088ABEC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277D6D320];
  v11 = *(v5 + 104);
  v11(v9, v10, v4, v7);
  sub_22088ABDC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v5 + 8);
  v20(v9, v4);
  (v11)(v9, v10, v4);
  sub_22088ABDC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v20(v9, v4);
  v29 = *(type metadata accessor for SectionHeaderViewLayoutAttributes() + 28);
  v30 = *MEMORY[0x277D6E860];
  v31 = sub_22088D83C();
  (*(*(v31 - 8) + 104))(a1 + v29, v30, v31);
  *a1 = 0;
  *(a1 + 8) = 0;
  result = v33;
  *(a1 + 16) = v34;
  *(a1 + 24) = result;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  *(a1 + 80) = v26;
  *(a1 + 88) = v28;
  return result;
}

uint64_t sub_22083F97C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6A30);
  __swift_project_value_buffer(v0, qword_2812B6A30);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  sub_2208403B4();
  v5 = sub_2208902EC();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_22089029C();
}

uint64_t sub_22083FBD0()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6A18);
  __swift_project_value_buffer(v0, qword_2812B6A18);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22083FD78()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D2D0);
  __swift_project_value_buffer(v0, qword_27CF6D2D0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22083FF20()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D2E8);
  __swift_project_value_buffer(v0, qword_27CF6D2E8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  sub_2208403B4();
  v5 = sub_2208902EC();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_22089029C();
}

uint64_t sub_22084017C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D300);
  __swift_project_value_buffer(v0, qword_27CF6D300);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

void sub_2208403B4()
{
  if (!qword_28127DFB8)
  {
    sub_2208902EC();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DFB8);
    }
  }
}

uint64_t sub_22084041C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22089136C();
  }

  sub_22048D2F4();
  result = sub_2208922EC();
  qword_27CF5A460 = result;
  return result;
}

id static OS_os_log.windowRestoration.getter()
{
  if (qword_27CF55C58 != -1)
  {
    swift_once();
  }

  v1 = qword_27CF5A460;

  return v1;
}

double sub_220840628(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v22.receiver = v8;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_attachmentBoundsForTextContainer_proposedLineFragment_glyphPosition_characterIndex_, a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = [v8 image];
  if (v19)
  {
    if (*(v8 + OBJC_IVAR____TtC8StocksUI18IconTextAttachment_imageHeightOverride + 8))
    {
    }

    else
    {
      v20 = v19;
      [v19 size];
      [v20 size];
    }
  }

  return v18;
}

id sub_220840834(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = 0;
  v11 = &v5[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_baselineAdjustment];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v5[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_imageHeightOverride];
  v12[8] = 1;
  *v12 = 0;
  if (a2 >> 60 != 15)
  {
    v10 = sub_220884EBC();
  }

  if (a4)
  {
    v13 = sub_22089132C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithData_ofType_, v10, v13);
  sub_2204B9058(a1, a2);

  return v14;
}

uint64_t sub_220840AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205FC158();
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_2205FBE28(a1, v17);
  sub_2205FBE28(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 2, v4) != 1)
      {
        goto LABEL_9;
      }

      return sub_220479464(v17, type metadata accessor for StockListSelectionModel);
    }

    if (v19(&v17[v18], 2, v4) == 2)
    {
      return sub_220479464(v17, type metadata accessor for StockListSelectionModel);
    }
  }

  else
  {
    sub_2205FBE28(v17, v12);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = MEMORY[0x223D7E940](v12, v8);
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      result = sub_220479464(v17, type metadata accessor for StockListSelectionModel);
      if (v22)
      {
        return result;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
  }

LABEL_9:
  sub_220479464(v17, sub_2205FC158);
LABEL_10:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220840DB0(a2);
  }

  return result;
}

uint64_t sub_220840DB0(uint64_t a1)
{
  v47 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_22045B848(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v43 = v41 - v5;
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204552A8(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v15 = v14;
  v46 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v42 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v41 - v20;
  sub_22045B848(0, &qword_281297F78, sub_22046B36C, v2);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v41 - v24;
  sub_22046B36C();
  v48 = *(v26 - 8);
  v49 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v29 = v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v1;
  v41[3] = *(v1 + 32);
  sub_22088B6BC();
  v50 = v51;
  sub_22045BB28(0);
  v31 = v30;
  v41[1] = sub_22045639C();
  v41[2] = v31;
  sub_22088BF9C();

  sub_2205FBE28(v47, v13);
  if (!(*(v7 + 48))(v13, 2, v6))
  {
    v32 = v44;
    (*(v7 + 32))(v44, v13, v6);
    sub_22088677C();
    (*(v7 + 8))(v32, v6);
  }

  v33 = v48;
  v34 = v49;
  v35 = v46;
  sub_22088E70C();

  v36 = *(v35 + 8);
  v36(v21, v15);
  if ((*(v33 + 48))(v25, 1, v34) == 1)
  {
    return sub_22046AB30(v25, &qword_281297F78, sub_22046B36C);
  }

  (*(v33 + 32))(v29, v25, v34);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22088B6BC();
    v50 = v51;
    v38 = v42;
    sub_22088BF9C();

    v39 = v43;
    sub_22088E7EC();
    v36(v38, v15);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_220841F60(v39, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_22046AB30(v39, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  }

  return (*(v33 + 8))(v29, v34);
}

uint64_t sub_220841340()
{
  v0 = MEMORY[0x277D83D88];
  sub_22045B848(0, &qword_2812992D8, MEMORY[0x277D69488], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v26 - v3;
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  sub_22045B848(0, &qword_2812992C8, MEMORY[0x277D694F8], v0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v26 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = *(v19 + 48);
      v22 = *(v21 + 56);
      v26 = Strong;
      __swift_project_boxed_opaque_existential_1((v21 + 32), v22);

      sub_2208863EC();
      sub_220886A3C();
      v23 = *(v6 + 8);
      v23(v13, v5);
      v24 = sub_220885DFC();
      (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
      __swift_project_boxed_opaque_existential_1((*(v19 + 48) + 32), *(*(v19 + 48) + 56));
      sub_2208863EC();
      sub_2208869CC();
      v23(v10, v5);
      v25 = sub_220885D4C();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
      sub_220842374(v17, v4);

      swift_unknownObjectRelease();
      sub_22046AB30(v4, &qword_2812992D8, MEMORY[0x277D69488]);
      return sub_22046AB30(v17, &qword_2812992C8, MEMORY[0x277D694F8]);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2208416C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = a3;
  v49 = a1;
  v51 = *a4;
  v52 = a4;
  sub_22045B848(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v54 = &v47 - v7;
  v8 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockListSelectionModel();
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v47 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v47 - v27;
  v53 = a2;
  sub_22088867C();
  sub_2205FBE28(v28, v25);
  v48 = v13;
  v29 = *(v13 + 48);
  v30 = v29(v25, 2, v12);
  v50 = v11;
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0xE500000000000000;
      v32 = 0x7961646F74;
    }

    else
    {
      v31 = 0xE400000000000000;
      v32 = 1701736302;
    }
  }

  else
  {
    v33 = v16;
    v34 = v48;
    (*(v48 + 32))(v33, v25, v12);
    v32 = sub_22088677C();
    v31 = v35;
    v36 = v34;
    v16 = v33;
    (*(v36 + 8))(v33, v12);
  }

  sub_220479464(v28, type metadata accessor for StockListSelectionModel);
  v37 = v55;
  sub_2205FBE28(v55, v21);
  v38 = v29(v21, 2, v12);
  if (!v38)
  {
    v41 = v48;
    (*(v48 + 32))(v16, v21, v12);
    v42 = sub_22088677C();
    v39 = v43;
    (*(v41 + 8))(v16, v12);
    goto LABEL_12;
  }

  if (v38 != 1)
  {
    v39 = 0xE400000000000000;
    v42 = 1701736302;
LABEL_12:
    v40 = v54;
    if (v32 != v42)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v39 = 0xE500000000000000;
  v40 = v54;
  if (v32 != 0x7961646F74)
  {
LABEL_15:
    v44 = sub_2208928BC();

    if ((v44 & 1) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (v31 != v39)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_220842984(v49, v40, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (qword_281298D08 != -1)
  {
    swift_once();
  }

  sub_22047D1E4();
  sub_220886B3C();
  v46 = v50;
  sub_22084DA0C(v40, v56, v50);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22078997C();
    swift_unknownObjectRelease();
  }

  sub_2204D3A00(v37);
  return sub_220479464(v46, type metadata accessor for StockListToolbarModel);
}

uint64_t sub_220841BBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22045C024();
    result = sub_2208884CC();
    if (result)
    {
      sub_22045C278();
      swift_allocObject();
      return sub_22088E04C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220841CA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280730);
  result = sub_2208884DC();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281289B68);
    result = sub_2208884DC();
    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v5, v5);
      v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v17 = type metadata accessor for EmptyListViewLayoutAttributesFactory();
      v18 = &off_283418FC8;
      v16[0] = v9;
      v10 = objc_allocWithZone(type metadata accessor for EmptyListViewController());
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x28223BE20](v11, v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = sub_220842760(*v13, v3, v4, v10);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220841F60(uint64_t a1, void *a2)
{
  sub_22045B848(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = sub_2208854AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a2 isEditing] & 1) == 0)
  {
    v13 = [a2 splitViewController];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 traitCollection];

      v16 = [v15 horizontalSizeClass];
      if (v16 == 2)
      {
        sub_220842984(a1, v7, &qword_2812993D0, MEMORY[0x277CC9AF8]);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_22046AB30(v7, &qword_2812993D0, MEMORY[0x277CC9AF8]);
        }

        else
        {
          (*(v9 + 32))(v12, v7, v8);
          v17 = sub_220765E94(v12);
          if ((v18 & 1) == 0)
          {
            v19 = v17;
            sub_22088C71C();
            v20 = sub_22088BFCC();

            v21 = sub_22088544C();
            [v20 scrollToItemAtIndexPath:v21 atScrollPosition:v19 animated:1];
          }

          (*(v9 + 8))(v12, v8);
        }
      }
    }
  }
}

uint64_t sub_22084220C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_22045BA6C();
    v2 = *(v1 + 48);
    v3 = type metadata accessor for StockListBlueprintModifierFactory();
    v2(v3, v1);
    swift_allocObject();
    swift_weakInit();
    v4 = MEMORY[0x277D6D888];
    sub_2204552A8(0, &qword_281297D20, MEMORY[0x277D6D888]);
    sub_220480298(&qword_281297D28, &qword_281297D20, v4);

    sub_22088B6DC();
  }

  return result;
}

uint64_t sub_220842374(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088F11C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088F14C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_220885DFC();
    if ((*(*(v16 - 8) + 48))(a1, 1, v16) == 1 && (v17 = sub_220885D4C(), (*(*(v17 - 8) + 48))(a2, 1, v17) == 1))
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_22044D56C(0, &qword_28127E7C0);
      v26 = sub_220891D0C();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      aBlock[4] = sub_2204C36D4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2204C35E8;
      aBlock[3] = &block_descriptor_52;
      v24 = _Block_copy(aBlock);
      v25 = v9;
      swift_unknownObjectRetain();

      sub_22088F13C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220455260(&qword_281296CA0, 255, MEMORY[0x277D85198]);
      v19 = v8;
      v20 = MEMORY[0x277D85198];
      sub_22045B848(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_22047F96C(&qword_28127EA50, &qword_28127EA60, v20);
      sub_2208923FC();
      v21 = v24;
      v22 = v26;
      MEMORY[0x223D89EC0](0, v13, v19, v24);
      _Block_release(v21);
      swift_unknownObjectRelease();

      (*(v5 + 8))(v19, v4);
      return (*(v10 + 8))(v13, v25);
    }
  }

  return result;
}

id sub_220842760(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v15[3] = type metadata accessor for EmptyListViewLayoutAttributesFactory();
  v15[4] = &off_283418FC8;
  v15[0] = a1;
  sub_22046DA2C(v15, &a4[OBJC_IVAR____TtC8StocksUI23EmptyListViewController_layoutAttributesFactory]);
  v9 = &a4[OBJC_IVAR____TtC8StocksUI23EmptyListViewController_renderer];
  *v9 = a2;
  *(v9 + 1) = a3;
  type metadata accessor for EmptyListView();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  swift_unknownObjectRetain();
  v11 = [v10 init];
  *&a4[OBJC_IVAR____TtC8StocksUI23EmptyListViewController_emptyListView] = v11;
  v14.receiver = a4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_220842868()
{
  v1 = *(v0 + 24);
  v2 = off_283413EC8[0];
  type metadata accessor for StockListDataManager();
  return v2(v1);
}

uint64_t sub_2208428D4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockListSelectionModel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2208416C4(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_220842984(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22045B848(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL sub_220842A04(uint64_t a1)
{
  v2 = sub_22088F11C();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22088F14C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v5);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v33 - v11;
  v13 = sub_22088F12C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  sub_220842EEC(a1);
  v20 = v19;
  if (v19)
  {
    v21 = sub_2208913FC();
    v34 = v22;
    v35 = v21;

    sub_22046D5B4();
    v37 = v2;
    (*(v14 + 104))(v17, *MEMORY[0x277D851B8], v13);
    v36 = sub_220891D3C();
    (*(v14 + 8))(v17, v13);
    (*(v9 + 16))(v12, v18, v8);
    v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v24 = swift_allocObject();
    v25 = v34;
    v26 = v35;
    *(v24 + 2) = v39;
    *(v24 + 3) = v26;
    *(v24 + 4) = v25;
    (*(v9 + 32))(&v24[v23], v12, v8);
    aBlock[4] = sub_220844724;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_53;
    v27 = _Block_copy(aBlock);

    v28 = v40;
    sub_22088F13C();
    v44 = MEMORY[0x277D84F90];
    sub_220448E68(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_2208447BC(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2204B6C74();
    v29 = v42;
    v30 = v37;
    sub_2208923FC();
    v31 = v36;
    MEMORY[0x223D89EC0](0, v28, v29, v27);
    _Block_release(v27);

    (*(v38 + 8))(v29, v30);
    (*(v41 + 8))(v28, v43);
  }

  return v20 != 0;
}

uint64_t sub_220842EEC(uint64_t a1)
{
  v29 = sub_2208887CC();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v27 - v7;
  v9 = sub_22088880C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v27 - v16;
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v27[1] = a1;
  sub_22088899C();
  sub_2208887EC();
  v18 = *(v10 + 8);
  v18(v17, v9);
  v19 = sub_2208887BC();
  v21 = v20;
  v22 = *(v2 + 8);
  v23 = v8;
  v24 = v29;
  v22(v23, v29);
  if (!v21)
  {
    sub_22088899C();
    v25 = v28;
    sub_2208887EC();
    v18(v13, v9);
    v19 = sub_2208887DC();
    v22(v25, v24);
  }

  return v19;
}

uint64_t sub_220843188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v26 = a1;
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v28 = v7;
  v8 = *(v7 - 8);
  v27 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v25 = &v24 - v10;
  v11 = sub_22088831C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_stockMetadataManager), *(a1 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_stockMetadataManager + 24));
  sub_2204621D4(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  (*(v12 + 104))(v15, *MEMORY[0x277D6CA28], v11);

  sub_22088628C();

  (*(v12 + 8))(v15, v11);
  sub_22046D5B4();
  v17 = sub_220891D0C();
  v18 = v25;
  v19 = v28;
  (*(v8 + 16))(v25, v29, v28);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v8 + 32))(v22 + v20, v18, v19);
  *(v22 + v21) = v26;

  sub_220888E4C();
}

void sub_2208434C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a5;
  v85 = a4;
  sub_2208447BC(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v86 = *(v8 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  MEMORY[0x28223BE20](v11, v12);
  v88 = &v79 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v81 = &v79 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v87 = &v79 - v19;
  v20 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v20, v21);
  v82 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v79 - v25;
  v90 = sub_22088685C();
  MEMORY[0x28223BE20](v90, v27);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v34 = *a1;
  if (*(*a1 + 16))
  {
    v83 = &v79 - v32;
    v84 = v33;
    v35 = sub_2204AF97C(a2, a3);
    if (v36)
    {
      v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = *(v34 + 56);
      v38 = v84;
      v39 = *(v84 + 16);
      v40 = v90;
      (v39)(v29, v37 + *(v84 + 72) * v35, v90);
      v41 = v83;
      v42 = v29;
      v43 = v40;
      (*(v38 + 32))(v83, v42, v40);
      LOBYTE(v38) = sub_220844448();
      v85 = OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_navigator;
      sub_2205DE35C();
      v45 = *(v44 + 48);
      if (v38)
      {
        (v39)(v26, v41, v43);
        *&v26[v45] = 0;
        type metadata accessor for StocksActivity.StockFeed(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v46 = sub_22088969C();
        v47 = v87;
        (*(*(v46 - 8) + 56))(v87, 1, 1, v46);
        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        sub_2208448FC(&v96, &v91, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (*(&v92 + 1))
        {
          sub_220458198(&v91, &v93);
          v48 = sub_220597454(&v93);
          v50 = v49;
          v52 = v51;
          __swift_destroy_boxed_opaque_existential_1(&v93);
        }

        else
        {
          sub_220844988(&v91, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          if (qword_2812908F0 != -1)
          {
            swift_once();
          }

          v48 = qword_2812908F8;
          v50 = qword_281290900;
          v52 = qword_281290908;

          sub_2204A80F4(v50);
        }

        v61 = v26;
        v91 = 0u;
        v92 = 0u;
        v62 = v81;
        sub_2208448FC(v47, v81, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2208447BC);
        sub_2208448FC(&v99, &v93, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        v63 = (*(v86 + 80) + 24) & ~*(v86 + 80);
        v64 = (v9 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
        v65 = swift_allocObject();
        *(v65 + 16) = 0;
        sub_2205A0994(v62, v65 + v63);
        v66 = v65 + v64;
        v67 = v94;
        *v66 = v93;
        *(v66 + 16) = v67;
        *(v66 + 32) = v95;
        v68 = (v65 + ((v64 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v68 = v48;
        v68[1] = v50;
        v68[2] = v52;

        sub_2204A80F4(v50);
        sub_22044A8CC();
        sub_220448E68(&qword_281298040, sub_22044A8CC);
        v69 = v102;
        sub_22088E92C();
        if (v69)
        {

          sub_220844988(&v91, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204621D4);
          sub_2204621D4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_220888EBC();

          sub_2204DA45C(v50);
          sub_220844988(&v96, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          sub_220844988(&v99, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          sub_220844988(v87, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2208447BC);
          v70 = v61;
LABEL_19:
          sub_2205BA954(v70);
          (*(v84 + 8))(v83, v90);
          return;
        }

        sub_2204DA45C(v50);
        sub_220844988(&v96, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_220844988(&v99, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_220844988(v87, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2208447BC);
        sub_2205BA954(v61);
        (*(v84 + 8))(v83, v90);
        sub_220844988(&v91, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204621D4);
      }

      else
      {
        v53 = v82;
        v39();
        *(v53 + v45) = 0;
        type metadata accessor for StocksActivity.StockFeed(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v54 = sub_22088969C();
        v55 = v88;
        (*(*(v54 - 8) + 56))(v88, 1, 1, v54);
        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        sub_2208448FC(&v96, &v91, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (*(&v92 + 1))
        {
          sub_220458198(&v91, &v93);
          v56 = sub_220597454(&v93);
          v58 = v57;
          v60 = v59;
          __swift_destroy_boxed_opaque_existential_1(&v93);
        }

        else
        {
          sub_220844988(&v91, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          if (qword_2812908F0 != -1)
          {
            swift_once();
          }

          v56 = qword_2812908F8;
          v58 = qword_281290900;
          v60 = qword_281290908;

          sub_2204A80F4(v58);
        }

        v91 = 0u;
        v92 = 0u;
        v71 = v80;
        sub_2208448FC(v55, v80, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2208447BC);
        sub_2208448FC(&v99, &v93, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        v72 = (*(v86 + 80) + 24) & ~*(v86 + 80);
        v73 = (v9 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        *(v74 + 16) = 0;
        sub_2205A0994(v71, v74 + v72);
        v75 = v74 + v73;
        v76 = v94;
        *v75 = v93;
        *(v75 + 16) = v76;
        *(v75 + 32) = v95;
        v77 = (v74 + ((v73 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v77 = v56;
        v77[1] = v58;
        v77[2] = v60;

        sub_2204A80F4(v58);
        sub_22044A8CC();
        sub_220448E68(&qword_281298040, sub_22044A8CC);
        v78 = v102;
        sub_22088E93C();
        if (v78)
        {

          sub_220844988(&v91, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204621D4);
          sub_2204621D4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_220888EBC();

          sub_2204DA45C(v58);
          sub_220844988(&v96, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          sub_220844988(&v99, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          sub_220844988(v88, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2208447BC);
          v70 = v53;
          goto LABEL_19;
        }

        sub_2204DA45C(v58);
        sub_220844988(&v96, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_220844988(&v99, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_220844988(v88, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2208447BC);
        sub_2205BA954(v53);
        (*(v84 + 8))(v83, v90);
        sub_220844988(&v91, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204621D4);
      }
    }
  }
}

uint64_t sub_220844448()
{
  v0 = sub_22084467C();
  v2 = v1;
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_22089136C();
    v7 = v6;

    if (v2)
    {
      if (v7)
      {
        if (v0 == v5 && v2 == v7)
        {

          v9 = 1;
        }

        else
        {
          v9 = sub_2208928BC();
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v7)
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  else if (v2)
  {
LABEL_10:
    v9 = 0;
LABEL_15:

    return v9 & 1;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_220844550()
{

  v1 = OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_navigator;
  sub_22044A8CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_stockMetadataManager);

  return swift_deallocClassInstance();
}

uint64_t sub_22084467C()
{
  v0 = sub_22088896C();
  if (*(v0 + 16) && (v1 = sub_2205CFDDC(*MEMORY[0x277D766D0]), (v2 & 1) != 0))
  {
    sub_2204A7FA8(*(v0 + 56) + 32 * v1, v5);

    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_220844724()
{
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_220843188(v3, v4, v5, v6);
}

void sub_2208447BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220844820(uint64_t *a1)
{
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  sub_2208434C4(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2208448FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_220844988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroy_7Tm()
{
  sub_2208447BC(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220844B74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_2208447BC(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = (v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  return a2(a1, v8, v2 + v6, v2 + v7, v10, v11, v12);
}

id sub_220844D00()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8StocksUI10TickerView_sparklineView);
  v2 = sub_220890CCC();
  [v2 setImage_];

  v3 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  [*(v1 + OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer) setFrame_];
  v4 = *(v1 + v3);

  return [v4 setPath_];
}

void sub_220844DAC()
{
  sub_2204E5768(&qword_281294EB0);

  JUMPOUT(0x223D86790);
}

void sub_220844E0C()
{
  v1 = OBJC_IVAR____TtC8StocksUI10TickerView_symbolLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI10TickerView_priceLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI10TickerView_priceChangeLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI10TickerView_sparklineView;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for StockSparklineView()) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_220844F2C(void *a1)
{
  sub_2208458D4(0, &qword_27CF5A4B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22084581C();
  sub_220892A5C();
  v10[15] = 0;
  sub_2208927DC();
  if (!v1)
  {
    v10[14] = 1;
    sub_2208927DC();
    type metadata accessor for StockSparklineViewModel.CacheModel(0);
    v10[13] = 2;
    sub_22088665C();
    sub_2204CF29C(&qword_27CF5A4B8, MEMORY[0x277D697C0]);
    sub_22089283C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_220845124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_22088665C();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208458D4(0, &qword_27CF5A498, MEMORY[0x277D844C8]);
  v28 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for StockSparklineViewModel.CacheModel(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22084581C();
  sub_220892A4C();
  if (v2)
  {
    v20 = a1;
  }

  else
  {
    v22 = v11;
    v23 = a1;
    v15 = v26;
    v16 = v27;
    v31 = 0;
    *v14 = sub_22089274C();
    v14[8] = v17 & 1;
    v30 = 1;
    *(v14 + 2) = sub_22089274C();
    v14[24] = v19 & 1;
    v29 = 2;
    sub_2204CF29C(&qword_27CF5A4A8, MEMORY[0x277D697C0]);
    sub_22089279C();
    (*(v15 + 8))(v10, v28);
    (*(v24 + 32))(&v14[*(v22 + 24)], v6, v16);
    sub_220845870(v14, v25);
    v20 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_22084546C()
{
  v1 = 0x6168436563697270;
  if (*v0 != 1)
  {
    v1 = 0x6E696C6B72617073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563697270;
  }
}

uint64_t sub_2208454D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220845A50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2208454F8(uint64_t a1)
{
  v2 = sub_22084581C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220845534(uint64_t a1)
{
  v2 = sub_22084581C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2208455A0()
{
  sub_2204B1AFC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - v8;
  sub_220890D7C();
  sub_220890D7C();
  sub_220890E5C();
  v10 = MEMORY[0x277D6C6B0];
  sub_2204CF29C(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
  sub_2204CF29C(&qword_28127EDC8, v10);
  sub_2204CF29C(&qword_28127EDC0, v10);
  v11 = sub_22089116C();
  v12 = *(v2 + 8);
  v12(v5, v1);
  v12(v9, v1);
  return v11 & 1;
}

void sub_220845798()
{
  sub_2204585C4();
  if (v0 <= 0x3F)
  {
    sub_22088665C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22084581C()
{
  result = qword_27CF5A4A0;
  if (!qword_27CF5A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A4A0);
  }

  return result;
}

uint64_t sub_220845870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSparklineViewModel.CacheModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2208458D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22084581C();
    v7 = a3(a1, &type metadata for StockSparklineViewModel.CacheModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22084594C()
{
  result = qword_27CF5A4C0;
  if (!qword_27CF5A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A4C0);
  }

  return result;
}

unint64_t sub_2208459A4()
{
  result = qword_27CF5A4C8;
  if (!qword_27CF5A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A4C8);
  }

  return result;
}

unint64_t sub_2208459FC()
{
  result = qword_27CF5A4D0;
  if (!qword_27CF5A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A4D0);
  }

  return result;
}

uint64_t sub_220845A50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696C6B72617073 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

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

uint64_t sub_220845B70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220845BB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_220845C14(void *a1, void *a2, void (*a3)(char *, uint64_t))
{
  v58 = a3;
  v57 = a2;
  v67 = sub_22088F11C();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v5);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22088F14C();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v7);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22088F17C();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v62, v11);
  v12 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v70 = &v54 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v69 = &v54 - v18;
  v60 = sub_22088685C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v19);
  v68 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22089132C();
  v22 = [a1 objectForKey_];

  if (!v22)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_2208923BC();
  swift_unknownObjectRelease();
  sub_2204A62A4(&v78, &aBlock);
  type metadata accessor for ForYouFeedViewController();
  swift_dynamicCast();
  v56 = v76;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8StocksUI18StockFeedTestSuite_resolver), *(v3 + OBJC_IVAR____TtC8StocksUI18StockFeedTestSuite_resolver + 24));
  sub_220846C14();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  sub_2208884BC();

  if (!*(&v73 + 1))
  {
LABEL_12:
    __break(1u);
    return;
  }

  sub_220457328(&aBlock, &v78);
  v23 = v68;
  sub_22088680C();
  __swift_project_boxed_opaque_existential_1(&v78, v79);
  v24 = sub_2205EF4CC(v23);
  v25 = sub_22089132C();
  [a1 setObject:v24 forKey:v25];

  v26 = sub_22089132C();
  v27 = [a1 objectForKey_];

  if (v27)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  aBlock = v76;
  v73 = v77;
  if (*(&v77 + 1))
  {
    sub_22044D56C(0, &qword_27CF56C10);
    if (swift_dynamicCast())
    {
      v28 = v71;
      [v71 showViewController:v24 sender:0];
    }
  }

  else
  {
    sub_22056D130(&aBlock);
  }

  sub_22088C71C();
  v29 = sub_22088BFCC();

  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v80.origin.x = v31;
  v80.origin.y = v33;
  v80.size.width = v35;
  v80.size.height = v37;
  Height = CGRectGetHeight(v80);
  sub_22088C71C();
  v39 = sub_22088BFCC();

  v40 = swift_allocObject();
  v41 = v57;
  v40[2] = v24;
  v40[3] = v41;
  v40[4] = v58;
  v57 = v24;

  v42 = v69;
  sub_22088F15C();
  sub_22044D56C(0, &qword_28127E7C0);
  v55 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v58 = *(v9 + 8);
  v43 = v62;
  v58(v12, v62);
  (*(v9 + 16))(v12, v42, v43);
  v44 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = Height;
  *(v45 + 24) = 0;
  *(v45 + 32) = v39;
  *(v45 + 40) = sub_220846C80;
  *(v45 + 48) = v40;
  (*(v9 + 32))(v45 + v44, v12, v43);
  v74 = sub_22056D194;
  v75 = v45;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_2204C35E8;
  *(&v73 + 1) = &block_descriptor_54;
  v46 = _Block_copy(&aBlock);
  v47 = v39;

  v48 = v61;
  sub_22088F13C();
  *&aBlock = MEMORY[0x277D84F90];
  sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22046275C(&qword_28127EA50, sub_22056D204);
  v49 = v64;
  v50 = v67;
  sub_2208923FC();
  v51 = v70;
  v52 = v55;
  MEMORY[0x223D89E80](v70, v48, v49, v46);
  _Block_release(v46);

  (*(v66 + 8))(v49, v50);
  (*(v63 + 8))(v48, v65);
  v53 = v58;
  v58(v51, v43);
  v53(v69, v43);
  (*(v59 + 8))(v68, v60);
  __swift_destroy_boxed_opaque_existential_1(&v78);
}

uint64_t sub_220846580(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();

  sub_22088731C();
  sub_22088836C();
}

uint64_t sub_220846618(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v32 = a2;
  v35 = sub_22088F11C();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v5);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088F14C();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F17C();
  v33 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  sub_22088C71C();
  v20 = sub_22088BFCC();

  v21 = swift_allocObject();
  v22 = v32;
  v21[2] = a1;
  v21[3] = v22;
  v21[4] = a3;
  sub_22044D56C(0, &qword_28127E7C0);
  v23 = a1;

  v31 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v32 = *(v12 + 8);
  v32(v15, v11);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = sub_220846C8C;
  *(v24 + 32) = v21;
  *(v24 + 40) = xmmword_22089EEB0;
  aBlock[4] = sub_2205D11BC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_19_1;
  v25 = _Block_copy(aBlock);
  v26 = v20;

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22046275C(&qword_28127EA50, sub_22056D204);
  v27 = v34;
  v28 = v35;
  sub_2208923FC();
  v29 = v31;
  MEMORY[0x223D89E80](v19, v10, v27, v25);
  _Block_release(v25);

  (*(v38 + 8))(v27, v28);
  (*(v36 + 8))(v10, v37);
  return (v32)(v19, v33);
}

uint64_t sub_220846A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22088C71C();
  v5 = sub_22088BFCC();

  [v5 setContentOffset:0 animated:{0.0, 0.0}];

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_2206C1FA0(sub_2204CB288, v6);
}

unint64_t sub_220846C14()
{
  result = qword_28128FA00;
  if (!qword_28128FA00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28128FA00);
  }

  return result;
}

uint64_t sub_220846CC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);

      v6(v7, &off_2834262D8, a1, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220846D94()
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_220891ADC();
  sub_22048D7F8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220899360;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_22048D860();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_22088A7EC();
}

void sub_220846EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a3;
  v55 = a4;
  v8 = sub_22088F11C();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F14C();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220884A4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2208474C8();
  v21 = v20;
  aBlock = a1;
  v58 = a2;
  sub_220884A2C();
  sub_22059B6A4();
  v22 = MEMORY[0x277D837D0];
  v23 = sub_22089235C();
  v25 = v24;
  (*(v16 + 8))(v19, v15);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = v21;
    v29 = v54;
    v28 = v55;
    if (qword_281293918 != -1)
    {
      swift_once();
    }

    sub_22048D7F8();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22089B140;
    *(v30 + 56) = v22;
    v31 = sub_22048D860();
    *(v30 + 32) = v23;
    *(v30 + 40) = v25;
    v32 = MEMORY[0x277D83B88];
    v33 = MEMORY[0x277D83C10];
    *(v30 + 96) = MEMORY[0x277D83B88];
    *(v30 + 104) = v33;
    v34 = v53;
    *(v30 + 64) = v31;
    *(v30 + 72) = v34;
    *(v30 + 136) = v32;
    *(v30 + 144) = v33;
    *(v30 + 112) = v27;

    sub_220891AFC();
    sub_22088A7EC();

    __swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56));
    sub_220885CEC();

    v35 = sub_220888D9C();
    sub_22084A6F0();
    sub_220888E3C();

    v36 = swift_allocObject();
    v36[2] = v23;
    v36[3] = v25;
    v36[4] = v34;
    v36[5] = v27;
    v36[6] = v4;
    v36[7] = v29;
    v36[8] = v28;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_22084A790;
    *(v37 + 24) = v36;

    v38 = sub_220888D9C();
    sub_220888E4C();
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
    v40 = sub_2205CF1B0(MEMORY[0x277D84F90]);
    v41 = swift_allocObject();
    v41[2] = v21;
    v41[3] = v5;
    v41[4] = v39;
    v41[5] = v40;
    v42 = v55;
    v41[6] = v54;
    v41[7] = v42;
    v61 = sub_22084A94C;
    v62 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_2204C35E8;
    v60 = &block_descriptor_55;
    v43 = _Block_copy(&aBlock);

    sub_22088F13C();
    v56 = v39;
    sub_2204988C0(&qword_281296CA0, 255, MEMORY[0x277D85198]);
    v44 = MEMORY[0x277D85198];
    sub_220498908(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22046D71C(&qword_28127EA50, &qword_28127EA60, v44);
    v45 = v48;
    v46 = v52;
    sub_2208923FC();
    MEMORY[0x223D89EC0](0, v14, v45, v43);
    _Block_release(v43);
    (*(v51 + 8))(v45, v46);
    (*(v49 + 8))(v14, v50);
  }
}

uint64_t sub_2208474C8()
{
  v1 = v0;
  v9[0] = -1;
  v9[1] = -1;
  v2 = *(v0 + 152);
  v3 = swift_allocObject();
  *(v3 + 16) = v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_22084AF80;
  *(v4 + 24) = v3;
  v8[4] = sub_2204D48F4;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2208481A4;
  v8[3] = &block_descriptor_46_0;
  v5 = _Block_copy(v8);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];

    return v7;
  }

  return result;
}

uint64_t sub_220847634(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22088831C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  (*(v5 + 104))(v8, *MEMORY[0x277D6CA30], v4);
  sub_220885B6C();
  (*(v5 + 8))(v8, v4);
  *(swift_allocObject() + 16) = v9;

  v10 = sub_220888D9C();
  sub_22084A6F0();
  v11 = sub_220888E4C();

  return v11;
}

void sub_2208477D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v57 = a6;
  v58 = a8;
  v55 = a9;
  v56 = a5;
  v14 = sub_22088831C();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v52 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22088F11C();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v49 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088F14C();
  v47 = *(v20 - 8);
  v48 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22089EF70;
  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D83B88];
  v27 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v27;
  *(v24 + 32) = v25;
  *(v24 + 96) = MEMORY[0x277D837D0];
  v28 = sub_22048D860();
  v46 = a3;
  *(v24 + 72) = a3;
  *(v24 + 80) = a4;
  *(v24 + 136) = v26;
  *(v24 + 144) = v27;
  v29 = v56;
  *(v24 + 104) = v28;
  *(v24 + 112) = v29;
  v30 = v29;
  *(v24 + 176) = v26;
  *(v24 + 184) = v27;
  *(v24 + 152) = v57;

  sub_220891AFC();
  sub_22088A7EC();

  v45 = a7[19];
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = a7;
  v31[4] = a1;
  v31[5] = a2;
  v32 = v55;
  v31[6] = v58;
  v31[7] = v32;
  aBlock[4] = sub_22084B050;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_24_1;
  v33 = _Block_copy(aBlock);

  sub_22088F13C();
  v59 = MEMORY[0x277D84F90];
  sub_2204988C0(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  v34 = MEMORY[0x277D85198];
  sub_220498908(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22046D71C(&qword_28127EA50, &qword_28127EA60, v34);
  v35 = v49;
  v36 = v51;
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v23, v35, v33);
  _Block_release(v33);
  (*(v50 + 8))(v35, v36);
  (*(v47 + 8))(v23, v48);

  __swift_project_boxed_opaque_existential_1(a7 + 9, a7[12]);
  v38 = v52;
  v37 = v53;
  *v52 = 0x404E000000000000;
  v39 = v54;
  (*(v37 + 104))(v38, *MEMORY[0x277D6CA48], v54);
  sub_220885B6C();
  (*(v37 + 8))(v38, v39);
  v40 = swift_allocObject();
  v41 = v46;
  v40[2] = a1;
  v40[3] = v41;
  v43 = v56;
  v42 = v57;
  v40[4] = a4;
  v40[5] = v43;
  v40[6] = v42;
  v40[7] = a7;
  v40[8] = v58;
  v40[9] = v32;

  v44 = sub_220888D9C();
  sub_220888E4C();
}

uint64_t sub_220847D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v41 = a7;
  v38 = a5;
  v39 = a6;
  v37 = a3;
  v42 = a9;
  v12 = sub_22088F11C();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088F14C();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22089C660;
  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D83B88];
  v24 = MEMORY[0x277D83C10];
  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = v24;
  *(v21 + 32) = v22;
  v25 = *(a2 + 16);
  *(v21 + 96) = v23;
  *(v21 + 104) = v24;
  *(v21 + 72) = v25;
  *(v21 + 136) = MEMORY[0x277D837D0];
  v26 = sub_22048D860();
  v27 = v38;
  *(v21 + 112) = v37;
  *(v21 + 120) = a4;
  *(v21 + 176) = v23;
  *(v21 + 184) = v24;
  *(v21 + 144) = v26;
  *(v21 + 152) = v27;
  *(v21 + 216) = v23;
  *(v21 + 224) = v24;
  v28 = v39;
  *(v21 + 192) = v39;

  sub_220891AFC();
  sub_22088A7EC();

  v29 = v41;
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = v29;
  v30[4] = a2;
  v30[5] = v20;
  v31 = v42;
  v30[6] = v40;
  v30[7] = v31;
  aBlock[4] = sub_22084B050;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_34_0;
  v32 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_2204988C0(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  v33 = MEMORY[0x277D85198];
  sub_220498908(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22046D71C(&qword_28127EA50, &qword_28127EA60, v33);
  v34 = v46;
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v19, v15, v32);
  _Block_release(v32);
  (*(v45 + 8))(v15, v34);
  (*(v43 + 8))(v19, v44);
}

void sub_2208481CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v65 = a4;
  v66 = a3;
  v70 = sub_22088685C();
  v10 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220886A4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220885D4C();
  MEMORY[0x28223BE20](v19, v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2[21] < a1)
  {
    v62 = v22;
    v63 = v21;
    v64 = a6;
    a2[21] = a1;
    __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
    sub_2208863EC();
    sub_2208869CC();
    (*(v15 + 8))(v18, v14);
    v25 = a2[22];
    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v26)
    {
      v60 = v24;
      v61 = a5;
      v71 = MEMORY[0x277D84F90];

      sub_22048EE54(0, v26, 0);
      v27 = v71;
      v29 = *(v10 + 16);
      v28 = v10 + 16;
      v30 = *(v28 + 64);
      v59 = v25;
      v31 = v25 + ((v30 + 32) & ~v30);
      v67 = *(v28 + 56);
      v68 = v29;
      v69 = v28;
      v32 = (v28 - 8);
      do
      {
        v33 = v70;
        v68(v13, v31, v70);
        v34 = sub_22088681C();
        v36 = v35;
        (*v32)(v13, v33);
        v71 = v27;
        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_22048EE54((v37 > 1), v38 + 1, 1);
          v27 = v71;
        }

        *(v27 + 16) = v38 + 1;
        v39 = v27 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v31 += v67;
        --v26;
      }

      while (v26);

      v24 = v60;
      a5 = v61;
    }

    v40 = sub_22084A950(v27);

    v41 = v66;

    v43 = sub_22084A9E8(v42, v40);

    v46 = v65;
    if (*(v43 + 16) && (v44 = sub_2205CE234(1), (v45 & 1) != 0))
    {
      v47 = *(*(v43 + 56) + 8 * v44);
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v44, v45);
    *(&v59 - 2) = v46;
    *(&v59 - 1) = v24;
    v48 = v24;
    v49 = sub_220575624(sub_22084AE48, (&v59 - 4), v47);

    if (*(v43 + 16) && (v50 = sub_2205CE234(0), (v51 & 1) != 0))
    {
      v52 = *(*(v43 + 56) + 8 * v50);
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v53, v54);
    *(&v59 - 2) = v46;
    *(&v59 - 1) = v48;
    v55 = sub_220575624(sub_22084AE6C, (&v59 - 4), v52);

    MEMORY[0x28223BE20](v56, v57);
    *(&v59 - 4) = v46;
    *(&v59 - 3) = v48;
    *(&v59 - 2) = v40;
    v58 = sub_220575624(sub_22084AE90, (&v59 - 6), v41);

    a5(v49, v55, v58);

    (*(v62 + 8))(v48, v63);
  }
}

uint64_t sub_2208486F4@<X0>(uint64_t a1@<X1>, int *a2@<X2>, int a3@<W4>, uint64_t a4@<X8>)
{
  LODWORD(v116) = a3;
  v115 = a2;
  v129 = a4;
  v5 = sub_2208852DC();
  v123 = *(v5 - 8);
  v124 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2208857EC();
  v9 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v10);
  v120 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088699C();
  v135 = *(v12 - 8);
  v136 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v131 = &v109 - v18;
  v19 = sub_220885D4C();
  v133 = *(v19 - 8);
  v134 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v130 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D83D88];
  sub_220498908(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v128 = &v109 - v25;
  sub_220498908(0, &qword_2812990C0, MEMORY[0x277D697F8], v22);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v118 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v117 = &v109 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v114 = &v109 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v113 = &v109 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v125 = &v109 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v109 - v43;
  v45 = sub_22088685C();
  v47 = MEMORY[0x28223BE20](v45, v46);
  v49 = &v109 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v50;
  v51 = *(v50 + 16);
  v138 = v49;
  v127 = v52;
  v112 = v50 + 16;
  v110 = v51;
  v51(v47);
  v53 = sub_22088681C();
  v55 = *(a1 + 16);
  v137 = v8;
  v121 = v9;
  v132 = v15;
  v126 = v44;
  if (v55)
  {
    v56 = sub_2204AF97C(v53, v54);
    v58 = v57;

    if (v58)
    {
      v59 = *(a1 + 56);
      v60 = sub_22088676C();
      v61 = *(v60 - 8);
      v62 = v61;
      v63 = *(v61 + 72);
      v64 = *(v61 + 16);
      v109 = (v60 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v64(v44, v59 + v63 * v56, v60);
      v65 = *(v62 + 56);
      v111 = v60;
      v65(v44, 0, 1, v60);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v66 = sub_22088676C();
  v67 = *(*(v66 - 8) + 56);
  v109 = (v66 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v111 = v66;
  v67(v44, 1, 1);
LABEL_6:
  v68 = type metadata accessor for StockSparklineViewModel(0);
  v69 = v128;
  (*(*(v68 - 8) + 56))(v128, 1, 1, v68);
  v70 = v134;
  v71 = *(v133 + 16);
  v72 = v130;
  v71(v130, v115, v134);
  v73 = v129;
  v110(v129, v138, v127);
  v74 = type metadata accessor for StockViewModel();
  v75 = MEMORY[0x277D697F8];
  v76 = v126;
  sub_2204B2D40(v126, v73 + v74[5], &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_2204B2D40(v69, v73 + v74[6], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v71((v73 + v74[8]), v72, v70);
  v115 = v74;
  *(v73 + v74[9]) = v116;
  v77 = v125;
  sub_2204B2D40(v76, v125, &qword_2812990C0, v75);
  v78 = v131;
  sub_2208867CC();
  v79 = v113;
  sub_2204B2D40(v77, v113, &qword_2812990C0, v75);
  sub_22088676C();
  v80 = v111;
  v81 = *(v111 - 8);
  v82 = *(v81 + 48);
  if (v82(v79, 1, v111) == 1)
  {
    sub_22046ABA0(v79, &qword_2812990C0, MEMORY[0x277D697F8]);
    v116 = 0;
    LODWORD(v112) = 1;
  }

  else
  {
    v116 = sub_22088675C();
    LODWORD(v112) = v83;
    (*(v81 + 8))(v79, v80);
  }

  v84 = v118;
  v85 = v117;
  v86 = v114;
  sub_2204B2D40(v77, v114, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v82(v86, 1, v80) == 1)
  {
    sub_22046ABA0(v86, &qword_2812990C0, MEMORY[0x277D697F8]);
    v118 = 0;
    LODWORD(v117) = 1;
  }

  else
  {
    v118 = sub_22088666C();
    LODWORD(v117) = v87;
    (*(v81 + 8))(v86, v80);
  }

  sub_2204B2D40(v77, v85, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v82(v85, 1, v80) == 1)
  {
    sub_22046ABA0(v85, &qword_2812990C0, MEMORY[0x277D697F8]);
    v114 = 0;
    LODWORD(v113) = 1;
  }

  else
  {
    v114 = sub_22088671C();
    LODWORD(v113) = v88;
    (*(v81 + 8))(v85, v80);
  }

  sub_2204B2D40(v77, v84, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v82(v84, 1, v80) == 1)
  {
    sub_22046ABA0(v84, &qword_2812990C0, MEMORY[0x277D697F8]);
    v110 = 0;
    v89 = 0;
  }

  else
  {
    v110 = sub_22088668C();
    v89 = v90;
    (*(v81 + 8))(v84, v80);
  }

  v91 = v129 + v115[7];
  v92 = *(v135 + 16);
  v93 = v132;
  v92(v132, v78, v136);
  v95 = v121;
  v94 = v122;
  v96 = v120;
  (*(v121 + 104))(v120, *MEMORY[0x277D69288], v122);
  v97 = v137;
  sub_22088524C();
  *v91 = v116;
  *(v91 + 8) = v112 & 1;
  *(v91 + 16) = v118;
  *(v91 + 24) = v117 & 1;
  *(v91 + 32) = v114;
  *(v91 + 40) = v113 & 1;
  *(v91 + 48) = v110;
  *(v91 + 56) = v89;
  v98 = type metadata accessor for PriceViewModel();
  v99 = v93;
  v100 = v136;
  v92((v91 + v98[10]), v99, v136);
  *(v91 + 64) = 9666786;
  *(v91 + 72) = 0xA300000000000000;
  (*(v95 + 16))(v91 + v98[9], v96, v94);
  v101 = v123;
  v102 = v91 + v98[11];
  v103 = v124;
  (*(v123 + 16))(v102, v97, v124);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v104 = qword_2812B6B48;
  (*(v95 + 8))(v96, v94);
  v105 = *(v135 + 8);
  v105(v132, v100);
  v105(v131, v100);
  v106 = MEMORY[0x277D697F8];
  sub_22046ABA0(v125, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v133 + 8))(v130, v134);
  sub_22046ABA0(v128, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_22046ABA0(v126, &qword_2812990C0, v106);
  (*(v119 + 8))(v138, v127);
  v107 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v101 + 40))(v104 + v107, v137, v103);
  return swift_endAccess();
}

uint64_t sub_220849438@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v131 = a4;
  v127 = a3;
  v132 = a2;
  v144 = a5;
  v6 = sub_2208852DC();
  v138 = *(v6 - 8);
  v139 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208857EC();
  v136 = *(v10 - 8);
  v137 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088699C();
  v149 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v146 = &v121 - v20;
  v148 = sub_220885D4C();
  v21 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v22);
  v145 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D83D88];
  sub_220498908(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v143 = &v121 - v27;
  sub_220498908(0, &qword_2812990C0, MEMORY[0x277D697F8], v24);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v129 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v134 = &v121 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v128 = &v121 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v126 = &v121 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v141 = &v121 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v121 - v45;
  v47 = sub_22088685C();
  v49 = MEMORY[0x28223BE20](v47, v48);
  v51 = &v121 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v52;
  v53 = *(v52 + 16);
  v140 = v51;
  v142 = v54;
  v125 = v52 + 16;
  v123 = v53;
  v53(v49);
  v55 = sub_22088681C();
  v57 = v132;
  v58 = *(v132 + 16);
  v150 = v9;
  v135 = v14;
  v133 = v13;
  v147 = v17;
  if (v58)
  {
    v121 = a1;
    v59 = v21;
    v60 = v46;
    v61 = sub_2204AF97C(v55, v56);
    v63 = v62;

    if (v63)
    {
      v64 = *(v57 + 56);
      v65 = sub_22088676C();
      v66 = *(v65 - 8);
      v67 = v66;
      v68 = *(v66 + 72);
      v69 = *(v66 + 16);
      v122 = (v65 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v70 = v60;
      v69(v60, v64 + v68 * v61, v65);
      v71 = *(v67 + 56);
      v124 = v65;
      v71(v60, 0, 1, v65);
    }

    else
    {
      v74 = sub_22088676C();
      v75 = *(*(v74 - 8) + 56);
      v122 = (v74 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v70 = v60;
      v124 = v74;
      v75(v60, 1, 1);
    }

    v21 = v59;
  }

  else
  {

    v72 = sub_22088676C();
    v73 = *(*(v72 - 8) + 56);
    v122 = (v72 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v124 = v72;
    v73(v46, 1, 1);
    v70 = v46;
  }

  v76 = type metadata accessor for StockSparklineViewModel(0);
  v77 = v143;
  (*(*(v76 - 8) + 56))(v143, 1, 1, v76);
  v132 = v21;
  v121 = *(v21 + 16);
  v78 = v145;
  v79 = v148;
  v121(v145, v127, v148);
  v80 = sub_22088681C();
  v82 = sub_22056F244(v80, v81, v131);

  if (v82)
  {
    v83 = 0;
  }

  else
  {
    v83 = 2;
  }

  LODWORD(v131) = v83;
  v84 = v144;
  v123(v144, v140, v142);
  v85 = type metadata accessor for StockViewModel();
  v86 = MEMORY[0x277D697F8];
  sub_2204B2D40(v70, &v84[v85[5]], &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_2204B2D40(v77, &v84[v85[6]], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v87 = v78;
  v88 = v85;
  v121(&v84[v85[8]], v87, v79);
  v84[v85[9]] = v131;
  v131 = v70;
  v89 = v141;
  sub_2204B2D40(v70, v141, &qword_2812990C0, v86);
  v90 = v146;
  sub_2208867CC();
  v91 = v126;
  sub_2204B2D40(v89, v126, &qword_2812990C0, v86);
  sub_22088676C();
  v92 = v124;
  v93 = *(v124 - 8);
  v94 = *(v93 + 48);
  if (v94(v91, 1, v124) == 1)
  {
    sub_22046ABA0(v91, &qword_2812990C0, MEMORY[0x277D697F8]);
    v127 = 0;
    LODWORD(v125) = 1;
  }

  else
  {
    v127 = sub_22088675C();
    LODWORD(v125) = v95;
    (*(v93 + 8))(v91, v92);
  }

  v96 = v134;
  v97 = v128;
  sub_2204B2D40(v89, v128, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v94(v97, 1, v92) == 1)
  {
    sub_22046ABA0(v97, &qword_2812990C0, MEMORY[0x277D697F8]);
    v128 = 0;
    LODWORD(v126) = 1;
  }

  else
  {
    v128 = sub_22088666C();
    LODWORD(v126) = v98;
    (*(v93 + 8))(v97, v92);
  }

  sub_2204B2D40(v89, v96, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v94(v96, 1, v92) == 1)
  {
    sub_22046ABA0(v96, &qword_2812990C0, MEMORY[0x277D697F8]);
    v123 = 0;
    LODWORD(v122) = 1;
  }

  else
  {
    v123 = sub_22088671C();
    LODWORD(v122) = v99;
    (*(v93 + 8))(v96, v92);
  }

  v100 = v129;
  sub_2204B2D40(v89, v129, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v94(v100, 1, v92) == 1)
  {
    sub_22046ABA0(v100, &qword_2812990C0, MEMORY[0x277D697F8]);
    v134 = 0;
    v121 = 0;
  }

  else
  {
    v134 = sub_22088668C();
    v121 = v101;
    (*(v93 + 8))(v100, v92);
  }

  v102 = &v144[v88[7]];
  v144 = *(v149 + 16);
  v103 = v147;
  v104 = v90;
  v105 = v135;
  (v144)(v147, v104, v135);
  v107 = v136;
  v106 = v137;
  v108 = v133;
  (*(v136 + 104))(v133, *MEMORY[0x277D69288], v137);
  v109 = v150;
  sub_22088524C();
  *v102 = v127;
  v102[8] = v125 & 1;
  *(v102 + 2) = v128;
  v102[24] = v126 & 1;
  *(v102 + 4) = v123;
  v102[40] = v122 & 1;
  v110 = v121;
  *(v102 + 6) = v134;
  *(v102 + 7) = v110;
  v111 = type metadata accessor for PriceViewModel();
  (v144)(&v102[v111[10]], v103, v105);
  v112 = v107;
  *(v102 + 8) = 9666786;
  *(v102 + 9) = 0xA300000000000000;
  (*(v107 + 16))(&v102[v111[9]], v108, v106);
  v113 = v138;
  v114 = &v102[v111[11]];
  v115 = v139;
  (*(v138 + 16))(v114, v109, v139);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v116 = qword_2812B6B48;
  (*(v112 + 8))(v108, v106);
  v117 = *(v149 + 8);
  v117(v147, v105);
  v117(v146, v105);
  v118 = MEMORY[0x277D697F8];
  sub_22046ABA0(v141, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v132 + 8))(v145, v148);
  sub_22046ABA0(v143, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_22046ABA0(v131, &qword_2812990C0, v118);
  (*(v130 + 8))(v140, v142);
  v119 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v113 + 40))(v116 + v119, v150, v115);
  return swift_endAccess();
}

uint64_t sub_22084A264()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_22084A2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22088F11C();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22088F14C();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208857BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 152);
  v28 = a2;
  v29 = v19;
  (*(v14 + 16))(v18, a2, v13, v17);
  v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  (*(v14 + 32))(v21 + v20, v18, v13);
  aBlock[4] = sub_22084AFB4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_52;
  v22 = _Block_copy(aBlock);

  sub_22088F13C();
  v32 = MEMORY[0x277D84F90];
  sub_2204988C0(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  v23 = MEMORY[0x277D85198];
  sub_220498908(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22046D71C(&qword_28127EA50, &qword_28127EA60, v23);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v12, v8, v22);
  _Block_release(v22);
  (*(v31 + 8))(v8, v5);
  (*(v9 + 8))(v12, v30);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v3, &off_2834262D8, v28, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22084A6F0()
{
  if (!qword_27CF5A4F0)
  {
    sub_220498908(255, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_220517CD4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A4F0);
    }
  }
}

void *sub_22084A7FC()
{
  v1 = v0;
  sub_22052D744();
  v2 = *v0;
  v3 = sub_2208924EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22084A950(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D89AA0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22052D248(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22084A9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v58 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v61 = &v49[-v10];
  v11 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F98];
  v57 = *(a1 + 16);
  if (!v57)
  {
    return v11;
  }

  v12 = 0;
  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v51 = *(v13 + 64);
  v15 = *(v13 + 56);
  v54 = (v51 + 32) & ~v51;
  v55 = a1 + v54;
  v56 = v14;
  v62 = a2 + 56;
  v59 = (v13 + 16);
  v60 = v15;
  v50 = xmmword_220899360;
  v52 = v4;
  v53 = v13;
  v14(v61, a1 + v54, v4);
  while (1)
  {
    v18 = sub_22088681C();
    v20 = v19;
    if (*(a2 + 16) && (v21 = v18, sub_2208929EC(), sub_22089146C(), v22 = sub_220892A2C(), v23 = -1 << *(a2 + 32), v24 = v22 & ~v23, ((*(v62 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(a2 + 48) + 16 * v24);
        v27 = *v26 == v21 && v26[1] == v20;
        if (v27 || (sub_2208928BC() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v62 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v28 = 1;
    }

    else
    {
LABEL_15:
      v28 = 0;
    }

    v30 = sub_2205CE234(v28);
    v31 = v11[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      sub_2207CEE18(v33, 1);
      v11 = v63;
      v35 = sub_2205CE234(v28);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_31;
      }

      v30 = v35;
    }

    if (v34)
    {
      v37 = v11[7];
      v38 = *v59;
      (*v59)(v58, v61, v4);
      v39 = *(v37 + 8 * v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v30) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_22048E1D8(0, v39[2] + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v39 = sub_22048E1D8(v41 > 1, v42 + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      v16 = v54;
      v39[2] = v42 + 1;
      v17 = v39 + v16 + v42 * v60;
      v4 = v52;
      v38(v17, v58, v52);
    }

    else
    {
      sub_220498908(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
      v43 = v54;
      v44 = swift_allocObject();
      *(v44 + 16) = v50;
      (*v59)((v44 + v43), v61, v4);
      v11[(v30 >> 6) + 8] |= 1 << v30;
      *(v11[6] + v30) = v28;
      *(v11[7] + 8 * v30) = v44;
      v45 = v11[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_30;
      }

      v11[2] = v47;
    }

    if (++v12 == v57)
    {
      return v11;
    }

    v56(v61, v55 + v60 * v12, v4);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:

  result = sub_22089291C();
  __break(1u);
  return result;
}

uint64_t objectdestroy_16Tm()
{

  return swift_deallocObject();
}

uint64_t sub_22084AF48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

void sub_22084AF80()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 160);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 16);
    *v3 = v2;
    v3[1] = v2 + 1;
    v4 = *(v1 + 160);
    v5 = __OFADD__(v4, 2);
    v6 = v4 + 2;
    if (!v5)
    {
      *(v1 + 160) = v6;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22084AFB4()
{
  sub_2208857BC();
  v1 = *(v0 + 16);
  *(v1 + 176) = sub_22088574C();
}

uint64_t type metadata accessor for StockFeedViewerRouteModel()
{
  result = qword_27CF5A4F8;
  if (!qword_27CF5A4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22084B0B0()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 == 2)
    {
      sub_2204D631C();
      return sub_22089202C();
    }

    else
    {
      result = sub_22089267C();
      __break(1u);
    }
  }

  else
  {
    if (sub_22088F0DC())
    {
      v3 = [objc_opt_self() currentDevice];
      v4 = [v3 userInterfaceIdiom];

      v5 = objc_opt_self();
      if (v4)
      {
        v6 = [v5 secondarySystemBackgroundColor];
      }

      else
      {
        v6 = [v5 systemBackgroundColor];
      }
    }

    else
    {
      v6 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    return v6;
  }

  return result;
}

id sub_22084B204()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 != 2)
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
  }

  else
  {
    v3 = sub_22088F0DC();
    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
    if (v3)
    {
      v5 = &selRef_clearColor;
    }
  }

  v6 = [v4 *v5];

  return v6;
}

id sub_22084B2F4()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id sub_22084B334()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return v0;
}

id sub_22084B374()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = &selRef_systemBackgroundColor;
  if (v1)
  {
    v3 = &selRef_secondarySystemBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_22084B408(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  sub_22088F0DC();
  v6 = sub_22088F0DC();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t sub_22084B470()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

id sub_22084B4C4()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = UIAccessibilityDarkerSystemColorsEnabled();
    v2 = 120;
    if (v1)
    {
      v2 = 128;
    }
  }

  else
  {
    v2 = 192;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_22084B510()
{
  v0 = sub_22088F0DC();
  v1 = objc_opt_self();
  v2 = &selRef_tertiarySystemFillColor;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_secondarySystemFillColor;
  }

  v3 = [v1 *v2];

  return v3;
}

uint64_t sub_22084B580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
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

uint64_t sub_22084B5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22084B688(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22084B6A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_22084B704()
{
  sub_22084B798();

  return sub_22088D90C();
}

unint64_t sub_22084B744()
{
  result = qword_27CF5A508;
  if (!qword_27CF5A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A508);
  }

  return result;
}

unint64_t sub_22084B798()
{
  result = qword_27CF5A510;
  if (!qword_27CF5A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A510);
  }

  return result;
}

void sub_22084B85C()
{
  sub_22056BDC0();
  if (v0 <= 0x3F)
  {
    sub_2208854FC();
    if (v1 <= 0x3F)
    {
      sub_22088543C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22084B940()
{
  sub_22056BDC0();
  if (v0 <= 0x3F)
  {
    sub_2208854FC();
    if (v1 <= 0x3F)
    {
      sub_22088543C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22084B9DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A5C8);
  result = sub_2208884DC();
  if (!v46)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v44)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285B30);
  sub_2208884DC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22084C610();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v39)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  v31 = v8;
  v32 = v7;
  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v37)
  {
    v35 = v4;
    v36 = sub_22084C65C(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    v34[0] = v6;
    sub_22088C9FC();
    swift_allocObject();

    v10 = sub_22088C9EC();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for AnalyticsChannelDataFactory();
    v36 = &off_28341D2B0;
    v35 = v16;
    v34[0] = v15;
    v17 = type metadata accessor for ArticleCoordinator();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v34, v16);
    MEMORY[0x28223BE20](v19, v19);
    v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    *(v18 + 104) = v16;
    *(v18 + 112) = &off_28341D2B0;
    *(v18 + 80) = v23;
    *(v18 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v18 + 176) = 0;
    v24 = OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_urlReferralData;
    v25 = sub_22088969C();
    (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
    *(v18 + 32) = v32;
    sub_220457328(&v45, v18 + 40);
    v26 = v41;
    *(v18 + 120) = v40;
    *(v18 + 136) = v26;
    v27 = v31;
    *(v18 + 152) = v42;
    *(v18 + 160) = v27;
    sub_220457328(&v38, v18 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager);
    *(v18 + 168) = v9;
    v28 = MEMORY[0x277D6E0C0];
    *(v18 + 184) = v10;
    *(v18 + 192) = v28;
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v29 = v33;
    v33[3] = v17;
    v29[4] = sub_22084C65C(&qword_281290F70, type metadata accessor for ArticleCoordinator);

    *v29 = v18;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22084BFD8(uint64_t a1, void *a2)
{
  sub_22061D1D0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_22046DA2C(a1, v12);
  sub_220446A58(0, &qword_281298B00);
  type metadata accessor for ArticleCoordinator();
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v11;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22088969C();
    sub_2208884DC();
    v10 = OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_urlReferralData;
    swift_beginAccess();
    sub_22084C5AC(v7, v9 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22084C118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298AA0);
  sub_2208884DC();
  v3 = type metadata accessor for ArticleViewerCoordinator();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle;
  v6 = sub_22088822C();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 40) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  a2[3] = v3;
  result = sub_22084C65C(&qword_28128A690, type metadata accessor for ArticleViewerCoordinator);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_22084C270@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088799C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298340);
  result = sub_2208884DC();
  if (v23)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v7, v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for AnalyticsChannelDataFactory();
    v21[3] = v12;
    v21[4] = &off_28341D2B0;
    v21[0] = v11;
    v13 = type metadata accessor for EndOfArticleCoordinator();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    MEMORY[0x28223BE20](v15, v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[6] = v12;
    v14[7] = &off_28341D2B0;
    v14[2] = v5;
    v14[3] = v19;
    v14[8] = v6;
    sub_220457328(&v22, (v14 + 9));
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    a2[3] = v13;
    result = sub_22084C65C(&qword_28128BB78, type metadata accessor for EndOfArticleCoordinator);
    a2[4] = result;
    *a2 = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22084C5AC(uint64_t a1, uint64_t a2)
{
  sub_22061D1D0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22084C610()
{
  result = qword_28127E6D0;
  if (!qword_28127E6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E6D0);
  }

  return result;
}

uint64_t sub_22084C65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22084C6A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22084C6EC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_22084C748()
{
  sub_22048986C(&qword_28128DE00);

  return sub_22088D90C();
}

uint64_t sub_22084C7A0()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v10);
    return 0x64726163616C70;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = sub_22088FD0C();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t sub_22084C934()
{
  v1 = sub_22089056C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FD8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25[-1] - v13;
  v15 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v0, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v18);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v14, v18, v6);
    (*(v7 + 16))(v10, v14, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D327C8])
    {
      (*(v7 + 96))(v10, v6);
      sub_2205D7A6C();
      v20 = swift_projectBox();
      (*(v2 + 16))(v5, v20, v1);
      sub_22089055C();
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v21 = sub_22089080C();
      (*(v2 + 8))(v5, v1);
      (*(v7 + 8))(v14, v6);
      __swift_destroy_boxed_opaque_existential_1(v25);

      return v21;
    }

    else
    {
      v22 = sub_22088FD4C();
      v23 = *(v7 + 8);
      v23(v14, v6);
      v23(v10, v6);
      return v22;
    }
  }
}

uint64_t sub_22084CCAC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = sub_22088FD8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v5, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_220706928(v16);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    a2(a1);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_22084CE3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088FD8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_220706928(v12);
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22088FD7C();
    v17 = v20;
    v18 = v19;
    v15 = v21;
    result = (*(v5 + 8))(v8, v4);
    v16 = v17;
    v14 = v18;
  }

  *a1 = v14;
  *(a1 + 16) = v16;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_22084CFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  v6 = sub_22088FD8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v5, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v14);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v16 = (*(v7 + 32))(v10, v14, v6);
    v17 = a3(v16);
    (*(v7 + 8))(v10, v6);
    return v17;
  }
}

uint64_t sub_22084D15C()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v10);
    v11 = 1;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_22088FD5C();
    (*(v3 + 8))(v6, v2);
  }

  return v11 & 1;
}

uint64_t sub_22084D2C0()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v10);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = sub_22088FCEC();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t sub_22084D424()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v10);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = sub_22088FCDC();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t WaitForStockListPrewarmStartupTask.group.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_group;
  v4 = sub_22088885C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_22084D604()
{
  result = MEMORY[0x223D808C0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_22084D658(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_sealed;
  if ((*(a1 + OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_sealed) & 1) == 0)
  {
    sub_22084D948();
    v3 = swift_allocError();
    sub_22088870C();

    *(a1 + v1) = 1;
  }
}

uint64_t WaitForStockListPrewarmStartupTask.deinit()
{
  v1 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_group;
  v2 = sub_22088885C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WaitForStockListPrewarmStartupTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_group;
  v2 = sub_22088885C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static StartupTaskGroup.prewarm.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812987F0 != -1)
  {
    swift_once();
  }

  v2 = sub_22088885C();
  v3 = __swift_project_value_buffer(v2, qword_2812987F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_22084D948()
{
  result = qword_27CF5A538;
  if (!qword_27CF5A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A538);
  }

  return result;
}

unint64_t sub_22084D9B0()
{
  result = qword_27CF5A540;
  if (!qword_27CF5A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A540);
  }

  return result;
}

uint64_t sub_22084DA0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v66 = a2;
  v67 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_22084E1A4(0, &qword_281299360, MEMORY[0x277D691C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v62 = &v58 - v7;
  v8 = sub_2208855FC();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v59 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088516C();
  v64 = *(v11 - 8);
  v65 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v63 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v58 - v16;
  v18 = sub_2208857EC();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v58 - v25;
  sub_22084E1A4(0, &qword_2812990C0, MEMORY[0x277D697F8], v4);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v58 - v29;
  v31 = sub_22088676C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1CA8(a1, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v36 = MEMORY[0x277D697F8];
    sub_2204B3D6C(a1, &qword_2812990C0, MEMORY[0x277D697F8]);
    sub_2204B3D6C(v30, &qword_2812990C0, v36);
  }

  else
  {
    v58 = a1;
    (*(v32 + 32))(v35, v30, v31);
    if (v66)
    {
      sub_2208866FC();
      sub_2204B3D6C(v58, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v32 + 8))(v35, v31);
    }

    else
    {
      sub_22088669C();
      (*(v19 + 104))(v23, *MEMORY[0x277D69298], v18);
      sub_22084E7E8(&qword_281299338, MEMORY[0x277D692A8]);
      v38 = sub_2208912FC();
      v39 = *(v19 + 8);
      v39(v23, v18);
      v39(v26, v18);
      if (v38 & 1) != 0 || (sub_22088669C(), v40 = sub_2208857CC(), v39(v26, v18), (v40))
      {
        sub_2204B3D6C(v58, &qword_2812990C0, MEMORY[0x277D697F8]);
        (*(v32 + 8))(v35, v31);
      }

      else
      {
        v41 = COERCE_DOUBLE(sub_22088674C());
        v42 = 0.0;
        v43 = v67;
        v44 = v58;
        if ((v45 & 1) == 0)
        {
          v42 = v41;
          if (v41 < 300.0)
          {
            v42 = 300.0;
          }
        }

        sub_22088515C();
        v46 = v63;
        sub_2208866FC();
        sub_22088507C();
        v48 = v47;
        v49 = *(v64 + 8);
        v50 = v46;
        v51 = v65;
        v49(v50, v65);
        v49(v17, v51);
        v52 = (v32 + 8);
        if (v42 <= v48)
        {
          sub_2208866FC();
          sub_2204B3D6C(v44, &qword_2812990C0, MEMORY[0x277D697F8]);
          (*v52)(v35, v31);
        }

        else
        {
          v53 = v62;
          sub_22088667C();
          sub_2204B3D6C(v44, &qword_2812990C0, MEMORY[0x277D697F8]);
          (*v52)(v35, v31);
          v55 = v60;
          v54 = v61;
          if ((*(v60 + 48))(v53, 1, v61) == 1)
          {
            sub_2204B3D6C(v53, &qword_281299360, MEMORY[0x277D691C0]);
          }

          else
          {
            v56 = *(v55 + 32);
            v57 = v59;
            v56(v59, v53, v54);
            v56(v43, v57, v54);
          }
        }
      }
    }
  }

  type metadata accessor for StockListToolbarModel();
  return swift_storeEnumTagMultiPayload();
}

void sub_22084E1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22084E20C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_2208855FC();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088516C();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  sub_22084E724();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 56);
  sub_2204CFBA0(a1, v22);
  sub_2204CFBA0(v43, &v22[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v30 = swift_getEnumCaseMultiPayload();
      v27 = type metadata accessor for StockListToolbarModel;
      if (v30 != 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v26 = swift_getEnumCaseMultiPayload();
        v27 = type metadata accessor for StockListToolbarModel;
        if (v26 == 3)
        {
          goto LABEL_12;
        }

LABEL_18:
        LOBYTE(v24) = 0;
        v27 = sub_22084E724;
        goto LABEL_19;
      }

      v31 = swift_getEnumCaseMultiPayload();
      v27 = type metadata accessor for StockListToolbarModel;
      if (v31 != 4)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    LOBYTE(v24) = 1;
    goto LABEL_19;
  }

  v43 = v7;
  v29 = v41;
  v28 = v42;
  if (!EnumCaseMultiPayload)
  {
    sub_2204CFBA0(v22, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = v29;
      v35 = *(v29 + 32);
      v36 = v43;
      v35(v10, &v22[v24], v43);
      LOBYTE(v24) = sub_22088510C();
      v37 = *(v34 + 8);
      v37(v10, v36);
      v37(v18, v36);
      v27 = type metadata accessor for StockListToolbarModel;
      goto LABEL_19;
    }

    (*(v29 + 8))(v18, v43);
    goto LABEL_18;
  }

  sub_2204CFBA0(v22, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v28 + 8))(v14, v3);
    goto LABEL_18;
  }

  (*(v28 + 32))(v6, &v22[v24], v3);
  sub_22084E7E8(&unk_27CF5A550, MEMORY[0x277D691C0]);
  sub_22089167C();
  sub_22089167C();
  if (v46 == v44 && v47 == v45)
  {
    v32 = *(v28 + 8);
    v32(v6, v3);

    v32(v14, v3);
    LOBYTE(v24) = 1;
    v27 = type metadata accessor for StockListToolbarModel;
  }

  else
  {
    v38 = sub_2208928BC();
    v39 = *(v28 + 8);
    v39(v6, v3);

    v39(v14, v3);
    LODWORD(v24) = v38 << 31 >> 31;
    v27 = type metadata accessor for StockListToolbarModel;
  }

LABEL_19:
  sub_22084E788(v22, v27);
  return v24 & 1;
}

void sub_22084E724()
{
  if (!qword_27CF5A548)
  {
    type metadata accessor for StockListToolbarModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A548);
    }
  }
}

uint64_t sub_22084E788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22084E7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22084E830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22084E878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22084E8F0()
{
  sub_2205308C8();

  return sub_22088D90C();
}

void sub_22084EA2C(void *a1)
{
  v2 = sub_22089132C();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v5, &v6);
    type metadata accessor for TickerViewController();
    swift_dynamicCast();
    sub_22088C71C();
    sub_22088BFCC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22084EB20(uint64_t a1)
{
  v2 = sub_220889BAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22088952C();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220885D4C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  v17 = (*(v12 + 88))(v16, v11);
  if (v17 == *MEMORY[0x277D69480])
  {
    v18 = MEMORY[0x277D68AE0];
LABEL_7:
    (*(v3 + 104))(v6, *v18, v2);
    sub_22088951C();
    sub_22047C480(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v19 = sub_220886F8C();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899360;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277CEAD10], v19);
    sub_22084F64C(&qword_2812984C8, MEMORY[0x277D685F0]);
    v23 = v26;
    sub_2208872CC();

    (*(v7 + 8))(v10, v23);
    sub_220889DDC();
    sub_22084F64C(&unk_27CF5A5A0, MEMORY[0x277D68D28]);
    return sub_22088730C();
  }

  if (v17 == *MEMORY[0x277D69468])
  {
    v18 = MEMORY[0x277D68AD8];
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x277D69478])
  {
    v18 = MEMORY[0x277D68AE8];
    goto LABEL_7;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_22084EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(type metadata accessor for ChangeWatchlistDisplayContext(0) + 20);
  sub_22084EB20(a4 + v7);
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  sub_220885F7C();

  sub_22084F070(a4 + v7);
}

BOOL sub_22084F03C@<W0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_22084F33C(a1);
  *a2 = result;
  return result;
}

void sub_22084F070(uint64_t a1)
{
  v2 = sub_220885D4C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D69480] || v8 == *MEMORY[0x277D69468] || v8 == *MEMORY[0x277D69478])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v11 = sub_22089132C();

    MEMORY[0x223D8ADB0](v11);
  }

  else
  {
    sub_2208928AC();
    __break(1u);
  }
}

BOOL sub_22084F33C(uint64_t a1)
{
  v3 = sub_220885D4C();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C480(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_220886A4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v16 = sub_220885FCC();
  v20 = a1;
  sub_22059C558(sub_22068BCFC, v16, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2205B7488(v10);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_2208869CC();
    type metadata accessor for ChangeWatchlistDisplayContext(0);
    sub_22084F64C(&qword_2812992E0, MEMORY[0x277D69488]);
    sub_22089167C();
    sub_22089167C();
    (*(v19 + 8))(v6, v3);
    (*(v12 + 8))(v15, v11);
    return v22 == v21;
  }
}

uint64_t sub_22084F64C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22084F694()
{
  v1 = OBJC_IVAR____TtC8StocksUI28ShareDynamicMenuItemProvider_menuItem;
  v2 = sub_22088E5CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShareDynamicMenuItemProvider()
{
  result = qword_281287150;
  if (!qword_281287150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22084F784()
{
  result = sub_22088E5CC();
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

uint64_t sub_22084F818@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI28ShareDynamicMenuItemProvider_menuItem;
  swift_beginAccess();
  v5 = sub_22088E5CC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_22084F8A4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI28ShareDynamicMenuItemProvider_menuItem;
  swift_beginAccess();
  v5 = sub_22088E5CC();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_22084F99C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298B90);
  result = sub_2208884DC();
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298A28);
  result = sub_2208884DC();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208512B0(0, &unk_281298760, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    type metadata accessor for ArticleRouter();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_220457328(&v11, (v6 + 3));
    sub_220457328(&v9, (v6 + 8));
    v6[13] = v3;
    v6[14] = v4;
    sub_220457328(&v7, (v6 + 15));
    v6[20] = v5;
    return v6;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_22084FBEC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E5A8);
  v3 = sub_2208884CC();
  v4 = v3;
  if (!v3 || (v5 = [v3 articleHostViewController]) == 0 || (v6 = v5, v7 = objc_msgSend(v5, sel_parentViewController), v6, !v7))
  {
LABEL_7:
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220887A3C();
    v7 = sub_2208884CC();

    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  sub_220887A3C();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_7;
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_22084FD54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebViewControllerFactory();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22084FDA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for ArticleRouter();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_22045D2D0(&unk_281294890, type metadata accessor for ArticleRouter);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22084FE50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6B0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ArticleErrorMessageFactoryProvider();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC8StocksUI34ArticleErrorMessageFactoryProvider_reachability] = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    a2[3] = v5;
    result = sub_22045D2D0(&unk_281299A00, type metadata accessor for ArticleErrorMessageFactoryProvider);
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22084FF3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296D20);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30);
  result = sub_2208884DC();
  if (v9)
  {
    v6 = type metadata accessor for StocksNewsArticlesRouter();
    v7 = swift_allocObject();
    sub_220457328(v12, v7 + 16);
    *(v7 + 56) = v5;
    sub_220457328(&v10, v7 + 64);
    sub_220457328(&v8, v7 + 104);
    a2[3] = v6;
    result = sub_22045D2D0(qword_281295CB0, type metadata accessor for StocksNewsArticlesRouter);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2208500DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for OpenArticleIntentNavigator();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_220457328(v6, v4 + 112);
  a2[3] = v3;
  result = sub_22045D2D0(&qword_27CF5A5C8, type metadata accessor for OpenArticleIntentNavigator);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_220850180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299240);
  result = sub_2208884DC();
  if (v5)
  {
    return sub_220457328(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_220850208(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v2 = v12;
  if (v12)
  {
    v3 = type metadata accessor for ArticleSharingActivityOptionsProvider();
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    MEMORY[0x28223BE20](v5, v5);
    v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v7);
    v9 = sub_22045DAD0(v7, v3, v2, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_220850358()
{
  v0 = objc_allocWithZone(type metadata accessor for LinkActionURLQualifier());

  return [v0 init];
}

uint64_t sub_220850390(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    sub_220887EBC();
    sub_22045D2D0(&qword_281298A50, MEMORY[0x277D300D0]);
    sub_22088B00C();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22085045C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleRouter();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E630);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298B90);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LinkedContentProvider();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v6 = v15;
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v14)
  {
    v8 = type metadata accessor for LinkActionActivityProvider();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_router] = v3;
    *&v9[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_qualifier] = v4;
    sub_22046DA2C(v17, &v9[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_handler]);
    *&v9[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_linkedContentProvider] = v5;
    v10 = &v9[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_commandCenter];
    *v10 = v6;
    *(v10 + 1) = v7;
    sub_22046DA2C(v13, &v9[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_watchlistManager]);
    v12.receiver = v9;
    v12.super_class = v8;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2208506E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E5E8);
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for LinkedStockProvider();
    result = sub_2208884CC();
    if (result)
    {
      v4 = result;
      type metadata accessor for LinkedContentProvider();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2208507AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299200);
  result = sub_2208884DC();
  if (v7)
  {
    v2 = type metadata accessor for LinkedStockProviderFactory();
    v3 = objc_allocWithZone(v2);
    sub_22046DA2C(v6, v3 + OBJC_IVAR____TtC8StocksUI26LinkedStockProviderFactory_metadataManager);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220850870(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for LinkedStockProviderFactory();
  v3 = sub_2208884CC();
  if (v3)
  {
    v4 = v3;
    [a1 addLinkedContentProviderFactory_];
  }

  else
  {
    __break(1u);
  }
}

void sub_220850900(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for LinkActionActivityProvider();
  v3 = sub_2208884CC();
  if (v3)
  {
    v4 = v3;
    [a1 registerActionActivityProvider_actionType_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22085099C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281297D60);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v6 = v15;
  if (v15)
  {
    v7 = type metadata accessor for ArticleLinkActionHandler();
    v8 = v16;
    v9 = __swift_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x28223BE20](v9, v9);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    v13 = sub_220835410(v5, &v17, v11, v7, v6, v8);
    __swift_destroy_boxed_opaque_existential_1(v14);
    a2[3] = v7;
    result = sub_22045D2D0(qword_28128A758, type metadata accessor for ArticleLinkActionHandler);
    a2[4] = result;
    *a2 = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220850BC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298B90);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298A28);
  result = sub_2208884DC();
  if (v9)
  {
    v6 = type metadata accessor for CampaignLandingPageRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_220457328(v12, v7 + 24);
    *(v7 + 64) = v5;
    sub_220457328(&v10, v7 + 72);
    sub_220457328(&v8, v7 + 112);
    a2[3] = v6;
    result = sub_22045D2D0(&unk_27CF5A5B8, type metadata accessor for CampaignLandingPageRouter);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_220850D74(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088810C();
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_220850DF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for CampaignLandingPageTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_22045D2D0(qword_281289138, type metadata accessor for CampaignLandingPageTracker);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220850EB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2208512B0(0, &unk_2812989C8, MEMORY[0x277D302F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v14)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = sub_22088617C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_22088818C();
    sub_22088849C();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v7, v10);
    }

    goto LABEL_8;
  }

  return sub_22088817C();
}

uint64_t sub_2208510A4(void *a1)
{
  v2 = sub_2208874BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088817C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleSymbolsToolbarFeatureProvider();
  result = sub_2208884CC();
  if (result)
  {
    sub_22045D2D0(&qword_27CF5A5B0, type metadata accessor for ArticleSymbolsToolbarFeatureProvider);
    (*(v3 + 104))(v6, *MEMORY[0x277D2F9E8], v2);
    sub_22088816C();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220851230()
{
  type metadata accessor for ArticleSymbolsToolbarFeatureProvider();
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC8StocksUI36ArticleSymbolsToolbarFeatureProvider_activePage;
  v2 = sub_22088772C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

void sub_2208512B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220851314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22052B224(0, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - v7;
  sub_220851C00();
  v10 = v9;
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220851C5C();
  sub_220892A4C();
  if (!v2)
  {
    v43 = 0;
    result = sub_2208927AC();
    v15 = result;
    v51 = *(result + 16);
    if (!v51)
    {
      v17 = MEMORY[0x277D84F90];
      v35 = v52;
      goto LABEL_34;
    }

    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v49 = a1;
    v50 = result + 32;
    v47 = v10;
    v48 = a2;
    v45 = v13;
    v46 = v8;
    v44 = result;
    while (1)
    {
      v53 = v17;
      while (1)
      {
        if (v16 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v18 = v50 + 32 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v55 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = qword_28128F318;

        if (v22 != -1)
        {
          swift_once();
        }

        v54 = v16 + 1;
        v23 = off_28128F320;
        if (!*(off_28128F320 + 2))
        {
          break;
        }

        sub_2208929EC();
        sub_22089146C();
        sub_220892A0C();
        if (!v21)
        {
          MEMORY[0x223D8ABA0](v55);
        }

        v24 = sub_220892A2C();
        v25 = v23 + 56;
        v26 = -1 << v23[32];
        v27 = v24 & ~v26;
        if (((*&v23[((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v27) & 1) == 0)
        {
          break;
        }

        v28 = ~v26;
        v29 = *(v23 + 6);
        while (1)
        {
          v30 = v29 + 32 * v27;
          v31 = *(v30 + 16);
          v32 = *(v30 + 24);
          v33 = *v30 == v19 && *(v30 + 8) == v20;
          if (!v33 && (sub_2208928BC() & 1) == 0)
          {
            goto LABEL_14;
          }

          if ((v32 & 1) == 0)
          {
            break;
          }

          if (v21)
          {
            goto LABEL_25;
          }

LABEL_14:
          v27 = (v27 + 1) & v28;
          if (((*&v25[(v27 >> 3) & 0xFFFFFFFFFFFFFF8] >> v27) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        if (v31 == v55)
        {
          v34 = v21;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          goto LABEL_14;
        }

LABEL_25:

        v35 = v52;
        v17 = v53;
        v16 = v54;
        a2 = v48;
        a1 = v49;
        v8 = v46;
        v10 = v47;
        v15 = v44;
        v13 = v45;
        if (v54 == v51)
        {
          goto LABEL_34;
        }
      }

LABEL_27:
      v17 = v53;
      result = swift_isUniquelyReferenced_nonNull_native();
      v60 = v17;
      if ((result & 1) == 0)
      {
        result = sub_22070CDEC(0, *(v17 + 16) + 1, 1);
        v17 = v60;
      }

      a2 = v48;
      a1 = v49;
      v15 = v44;
      v37 = *(v17 + 16);
      v36 = *(v17 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_22070CDEC((v36 > 1), v37 + 1, 1);
        v17 = v60;
      }

      *(v17 + 16) = v37 + 1;
      v38 = v17 + 32 * v37;
      *(v38 + 32) = v19;
      *(v38 + 40) = v20;
      v16 = v54;
      *(v38 + 48) = v55;
      *(v38 + 56) = v21;
      v35 = v52;
      v8 = v46;
      v10 = v47;
      v13 = v45;
      if (v16 == v51)
      {
LABEL_34:

        MEMORY[0x28223BE20](v39, v40);
        *(&v42 - 2) = v13;
        v41 = v43;
        v55 = sub_2207A22A4(MEMORY[0x277D84F98], sub_220851CB0, (&v42 - 4), v17);

        type metadata accessor for StockForYouFeedGroupKnobs();
        v56 = 0x6B636F7473;
        v57 = 0xE500000000000000;
        v58 = 0;
        v59 = 1;
        sub_22044DD58(&qword_281289458, type metadata accessor for StockForYouFeedGroupKnobs);
        sub_22089276C();
        if (v41)
        {
        }

        else
        {
          sub_22052AC50(v8, v55, a2);
        }

        (*(v35 + 8))(v13, v10);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220851824(uint64_t a1, uint64_t a2)
{
  v23[1] = a1;
  sub_22052B224(0, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for CuratedForYouFeedGroupKnobs();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v23[2] = *a2;
  v23[3] = v17;
  v23[4] = v18;
  v24 = v19;
  sub_220851C00();
  sub_22044DD58(&qword_281288610, type metadata accessor for CuratedForYouFeedGroupKnobs);
  v20 = v25;
  sub_22089279C();
  if (v20)
  {

    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_220851BA4(v10, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs);
  }

  else
  {
    v22 = *(v12 + 56);
    v22(v10, 0, 1, v11);
    sub_220851CCC(v10, v15, type metadata accessor for CuratedForYouFeedGroupKnobs);
    sub_220851D34(v15, v6);
    v22(v6, 0, 1, v11);

    sub_22059AB90(v6, v16, v17);
    return sub_220851D98(v15);
  }
}

uint64_t sub_220851AD4()
{
  v0 = sub_2207E3280(&unk_2834118A8);
  result = sub_220851DF4(&unk_2834118C8);
  off_28128F320 = v0;
  return result;
}

uint64_t sub_220851B14(uint64_t a1)
{
  v2 = sub_220851C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220851B50(uint64_t a1)
{
  v2 = sub_220851C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220851BA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22052B224(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220851C00()
{
  if (!qword_28127E260)
  {
    sub_220851C5C();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E260);
    }
  }
}

unint64_t sub_220851C5C()
{
  result = qword_28128F2F0;
  if (!qword_28128F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F2F0);
  }

  return result;
}

uint64_t sub_220851CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220851D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedForYouFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220851D98(uint64_t a1)
{
  v2 = type metadata accessor for CuratedForYouFeedGroupKnobs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220851E38()
{
  result = qword_28128F2F8;
  if (!qword_28128F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F2F8);
  }

  return result;
}

unint64_t sub_220851E90()
{
  result = qword_28128F2E0;
  if (!qword_28128F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F2E0);
  }

  return result;
}

unint64_t sub_220851EE8()
{
  result = qword_28128F2E8;
  if (!qword_28128F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F2E8);
  }

  return result;
}

uint64_t sub_220851FE0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_220852064(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StocksAudioTrack();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208895AC();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v86 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22089041C();
  v77 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v10);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v83 = &v72 - v14;
  v15 = sub_22088959C();
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v84 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2208906CC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v18);
  v76 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v90 = &v72 - v22;
  v82 = sub_220889ACC();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v23);
  v91 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22089022C();
  v25 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220852D24(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v72 - v31;
  v33 = sub_22088698C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220852D24(0, &qword_281296820, sub_22044826C, MEMORY[0x277D33910]);
  v95 = a2;
  sub_22089061C();
  v89 = v6;
  if (v97)
  {
    v38 = swift_dynamicCast();
    (*(v34 + 56))(v32, v38 ^ 1u, 1, v33);
    if ((*(v34 + 48))(v32, 1, v33) != 1)
    {
      (*(v34 + 32))(v37, v32, v33);
      goto LABEL_7;
    }
  }

  else
  {
    sub_220852D88(&v96, sub_22055F87C);
    (*(v34 + 56))(v32, 1, 1, v33);
  }

  sub_22052EC94();
  sub_2208905DC();
  sub_220885CBC();
  (*(v34 + 104))(v37, *MEMORY[0x277D69850], v33);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    sub_220852C98(v32);
  }

LABEL_7:
  sub_22088E4CC();
  sub_22088E3DC();
  v39 = sub_22088E23C();

  if ((v39 & 1) == 0)
  {
    sub_22088E37C();
    v40 = sub_22088E23C();

    if ((v40 & 1) == 0)
    {
      return (*(v34 + 8))(v37, v33);
    }
  }

  v41 = v77;
  v42 = v37;
  v43 = v33;
  v44 = v94[17];
  v73 = v94[16];
  v72 = __swift_project_boxed_opaque_existential_1(v94 + 13, v73);
  sub_2208905FC();
  sub_2205B7B64(v91);
  (*(v25 + 8))(v28, v75);
  v45 = v90;
  sub_22089060C();
  v46 = v78;
  v47 = v76;
  v48 = v79;
  (*(v78 + 16))(v76, v45, v79);
  v49 = (*(v46 + 88))(v47, v48);
  v50 = v49 == *MEMORY[0x277D33A68];
  v74 = v43;
  if (v50)
  {
    v51 = MEMORY[0x277D68618];
LABEL_14:
    v52 = v42;
    goto LABEL_18;
  }

  if (v49 == *MEMORY[0x277D33A78])
  {
    v51 = MEMORY[0x277D68628];
    goto LABEL_14;
  }

  if (v49 != *MEMORY[0x277D33A70])
  {
    goto LABEL_23;
  }

  v52 = v42;
  v51 = MEMORY[0x277D68620];
LABEL_18:
  v53 = v41;
  v54 = v83;
  (*(v46 + 8))(v90, v48);
  v55 = v84;
  (*(v92 + 104))(v84, *v51, v93);
  sub_2208905EC();
  v56 = v80;
  v57 = v85;
  (*(v53 + 16))(v80, v54, v85);
  v58 = (*(v53 + 88))(v56, v57);
  if (v58 == *MEMORY[0x277D33570])
  {
    v59 = MEMORY[0x277D68630];
    v60 = v94;
LABEL_22:
    (*(v53 + 8))(v54, v57);
    v61 = *v59;
    v63 = v86;
    v62 = v87;
    v64 = v88;
    (*(v87 + 104))(v86, v61, v88);
    v65 = v91;
    (*(v44 + 8))(v91, v55, v63, v73, v44);
    (*(v62 + 8))(v63, v64);
    (*(v92 + 8))(v55, v93);
    (*(v81 + 8))(v65, v82);
    v66 = v60[11];
    v67 = v60[12];
    __swift_project_boxed_opaque_existential_1(v60 + 8, v66);
    v68 = v89;
    (*(v67 + 8))(v52, v66, v67);
    v70 = v60[18];
    sub_2208868EC();
    v71 = sub_22089132C();

    [v70 markArticle:v71 withCompletedListening:0];

    sub_220857F4C(v68);
    sub_22046DA2C((v60 + 3), &v96);
    __swift_project_boxed_opaque_existential_1(&v96, v97);
    sub_220887E3C();
    sub_220852D88(v68, type metadata accessor for StocksAudioTrack);
    (*(v34 + 8))(v52, v74);
    return __swift_destroy_boxed_opaque_existential_1(&v96);
  }

  v60 = v94;
  if (v58 == *MEMORY[0x277D33568])
  {
    v59 = MEMORY[0x277D68640];
    goto LABEL_22;
  }

LABEL_23:
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220852C98(uint64_t a1)
{
  sub_220852D24(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220852D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220852D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Class StocksAttributionString()
{
  v0.super.isa = stocksAttributionString()().super.isa;

  return v0.super.isa;
}

NSAttributedString __swiftcall stocksAttributionString()()
{
  sub_22047A460(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v68 = &v66 - v2;
  v3 = sub_220884E9C();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220884A4C();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208852DC();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_220884CAC();
  v19 = v18;

  v76 = v17;
  v77 = v19;

  MEMORY[0x223D89680](32, 0xE100000000000000);

  v20 = v76;
  v21 = v77;
  v22 = [v15 bundleForClass_];
  v23 = sub_220884CAC();
  v25 = v24;

  v26 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v27 = sub_22089132C();
  v75 = [v26 initWithString_];

  v28 = sub_22089132C();
  v29 = sub_22089132C();
  v30 = [v28 rangeOfString:v29 options:1];
  v67 = v31;

  if (v30 == sub_22088493C())
  {
    sub_220891ADC();
    sub_22047A460(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22089B140;
    v33 = MEMORY[0x277D837D0];
    *(v32 + 56) = MEMORY[0x277D837D0];
    v34 = sub_22048D860();
    *(v32 + 32) = v23;
    *(v32 + 40) = v25;
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 64) = v34;
    *(v32 + 72) = v20;
    *(v32 + 80) = v21;
    v35 = sub_22088522C();
    if (v35[2])
    {
      v37 = v35[4];
      v36 = v35[5];

      v38 = (v32 + 112);
      *(v32 + 136) = v33;
      *(v32 + 144) = v34;
      if (v36)
      {
        *v38 = v37;
        v39 = v75;
        v40 = &selRef_markArticle_withReadingPositionJSON_;
LABEL_12:
        *(v32 + 120) = v36;
        sub_22048D2F4();
        v59 = sub_2208922DC();
        sub_22088A7FC();

        goto LABEL_13;
      }
    }

    else
    {

      v38 = (v32 + 112);
      *(v32 + 136) = v33;
      *(v32 + 144) = v34;
    }

    v39 = v75;
    v40 = &selRef_markArticle_withReadingPositionJSON_;
    *v38 = 0x3E6C696E3CLL;
    v36 = 0xE500000000000000;
    goto LABEL_12;
  }

  sub_22088528C();
  v41 = sub_2208851EC();
  v43 = v42;
  (*(v71 + 8))(v13, v72);
  v76 = v41;
  v77 = v43;
  sub_220884A1C();
  sub_22059B6A4();
  v44 = sub_22089237C();
  v46 = v45;
  (*(v73 + 8))(v9, v74);

  if (!v46)
  {
    __break(1u);
    return result;
  }

  v76 = 0xD000000000000027;
  v77 = 0x80000002208DA5B0;
  MEMORY[0x223D89680](v44, v46);

  v48 = v68;
  sub_220884E8C();

  v50 = v69;
  v49 = v70;
  v51 = (*(v69 + 48))(v48, 1, v70);
  v39 = v75;
  v40 = &selRef_markArticle_withReadingPositionJSON_;
  if (v51 == 1)
  {
    sub_22047C4E4(v48);
    sub_220891ADC();
    sub_22048D2F4();
    v52 = sub_2208922DC();
    sub_22088A7EC();

    v53 = v67;
  }

  else
  {
    v54 = v66;
    (*(v50 + 32))(v66, v48, v49);
    v55 = *MEMORY[0x277D740E8];
    v56 = sub_220884E3C();
    v53 = v67;
    [v39 addAttribute:v55 value:v56 range:{v30, v67}];

    (*(v50 + 8))(v54, v49);
  }

  v57 = *MEMORY[0x277D741F0];
  v58 = sub_2208917BC();
  [v39 addAttribute:v57 value:v58 range:{v30, v53}];

LABEL_13:
  if (qword_28127F0A0 != -1)
  {
    swift_once();
  }

  v60 = [qword_2812B6930 imageWithRenderingMode_];
  v61 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  [v61 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [v61 setImage_];
  v62 = [objc_opt_self() attributedStringWithAttachment_];
  v63 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  v64 = *MEMORY[0x277D74078];
  v65 = sub_22089192C();
  [v63 v40[131]];

  [v39 appendAttributedString_];
  return v39;
}

uint64_t FCFeedType.feedType()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0x16 && ((0x3DFFFFu >> a1) & 1) != 0)
  {
    v3 = **(&unk_27844A838 + a1);
    v4 = sub_220889FFC();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_220853784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2208537CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220853874()
{
  sub_220853914();

  return sub_22088D90C();
}

unint64_t sub_2208538C0()
{
  result = qword_27CF5A608;
  if (!qword_27CF5A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A608);
  }

  return result;
}

unint64_t sub_220853914()
{
  result = qword_27CF5A610;
  if (!qword_27CF5A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A610);
  }

  return result;
}

void sub_220853968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v9 = *a1;
  if (*a1)
  {
    v10 = a2 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v8;
    v13 = *(a1 + 8);
    v12 = *(a1 + 16);
    v14 = *(a1 + 24);
    sub_220853B70(*a1, v13, v12, v14);

    sub_22088C4AC();
    sub_2207EA380();
    sub_22088731C();
    if (swift_dynamicCast())
    {
      v18[1] = v18[2];
      (*(v5 + 16))(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock, v11);
      v15 = (*(v5 + 80) + 17) & ~*(v5 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      (*(v5 + 32))(v16 + v15, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      v17 = v9;
      sub_22088726C();
    }

    else
    {
    }
  }
}

id sub_220853B70(id result, uint64_t a2, void *a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;

    return a3;
  }

  return result;
}

uint64_t sub_220853BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v32[0] = a2;
  v32[1] = a1;
  v3 = sub_22088915C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22088699C();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088914C();
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088929C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088907C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, **(&unk_27844A8E8 + SLOBYTE(v32[0])), v16);
  sub_22088906C();
  v32[0] = "@) from string (%@)! (Lang: %@)";
  sub_220854170(&unk_27CF57B10, MEMORY[0x277D68200]);
  sub_220886F1C();
  (*(v22 + 8))(v25, v21);
  sub_22088681C();
  sub_2208867CC();
  sub_22067D2D4(v6);
  (*(v7 + 8))(v10, v33);
  sub_22088683C();
  sub_22088912C();
  sub_2205A14E8();
  v26 = sub_220886F8C();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_220899360;
  (*(v27 + 104))(v29 + v28, *MEMORY[0x277CEAD18], v26);
  sub_220854170(&qword_281298578, MEMORY[0x277D68270]);
  v30 = v35;
  sub_220886F1C();

  (*(v36 + 8))(v15, v30);
  sub_22088976C();
  sub_220854170(&qword_27CF5A618, MEMORY[0x277D68760]);
  memset(v37, 0, sizeof(v37));
  sub_220886F3C();
  return sub_22056D130(v37);
}

uint64_t sub_2208540FC(uint64_t a1)
{
  v3 = *(sub_22088685C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_220853BC0(a1, v4, v5);
}

uint64_t sub_220854170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2208541B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_220854200(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_220854264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2208542AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_220854308(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_220854458();
  result = sub_2208884DC();
  if (v11)
  {
    sub_220457328(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v9 = v3;
    sub_22055F760();
    sub_22088E11C();
    if (v11)
    {
      sub_22088731C();
      if (swift_dynamicCast())
      {
        v5 = v8;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      sub_22056D130(&v10);
      v5 = 0;
    }

    v6 = sub_2205B74E4(&v9, v5);

    if (v6)
    {
      v7 = sub_22088E0EC();
      v7(v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220854458()
{
  result = qword_2812939E0;
  if (!qword_2812939E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812939E0);
  }

  return result;
}

uint64_t sub_2208544BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v36 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088519C();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v32, v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055D328();
  v12 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v30 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v30 - v23;
  sub_2208549C8(&qword_281297FB8, sub_22055D328);
  sub_2208549C8(&qword_281297FC0, sub_22055D328);
  sub_2208888BC();
  sub_22088518C();
  v25 = sub_22088517C();
  v27 = v26;
  (*(v4 + 8))(v7, v31);
  sub_220854934();
  swift_allocObject();

  v28 = sub_22088F6FC();
  *v10 = v25;
  v10[1] = v27;
  v10[2] = v28;
  swift_storeEnumTagMultiPayload();
  sub_2208549C8(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088AD7C();
  sub_2208888AC();
  (*(v33 + 8))(v15, v12);
  swift_storeEnumTagMultiPayload();
  (*(v18 + 16))(v30, v24, v17);
  sub_2208549C8(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_22088B29C();
  return (*(v18 + 8))(v24, v17);
}

void sub_220854934()
{
  if (!qword_281296B50)
  {
    type metadata accessor for StockFeedServiceConfig();
    sub_2208549C8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v0 = sub_22088F71C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296B50);
    }
  }
}

uint64_t sub_2208549C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220854A34()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

BOOL sub_220854A74(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_22089136C();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  StocksActivityType.init(rawValue:)(v5);
  return v7 != 6;
}

uint64_t sub_220854AE4(void *a1)
{
  sub_220447BB8(0, &qword_281298480, MEMORY[0x277D686D0]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v75 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v75 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v75 - v17;
  v19 = type metadata accessor for StocksActivity(0);
  *&v21 = MEMORY[0x28223BE20](v19 - 8, v20).n128_u64[0];
  v23 = (v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = [a1 userInfo];
  if (!v24)
  {
    sub_220891ADC();
    sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_220899360;
    v33 = [a1 activityType];
    v34 = sub_22089136C();
    v36 = v35;

    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_22048D860();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    sub_22048D2F4();
    v37 = sub_2208922DC();
    sub_22088A7EC();

    LOBYTE(v88) = 0;
    sub_220855C50(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  v79 = v5;
  v78 = v14;
  v76 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v4;
  v81 = v18;
  v77 = v10;
  v25 = v24;
  v26 = sub_22089126C();

  v27 = [a1 activityType];
  v28 = sub_22089136C();
  v30 = v29;

  v31 = [a1 interaction];
  sub_2206B05D8(v28, v30, v26, v23);

  v39 = sub_220855964(v23);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_featureAvailability), *(v1 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_featureAvailability + 24));
  v40 = sub_22089084C();
  v41 = v23;
  if ((v40 & 1) == 0 && (v39 & 1) == 0)
  {
    LOBYTE(v88) = 0;
    sub_220855C50(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v42 = sub_220888ECC();
    sub_2205985D8(v23, type metadata accessor for StocksActivity);
    return v42;
  }

  v43 = StocksActivity.disableAnimation.getter();
  v44 = v79;
  v75[1] = v1;
  if (v43)
  {
    goto LABEL_10;
  }

  v45 = [a1 &selRef_setNegativePrefix_ + 5];
  if (v45)
  {

LABEL_10:
    v46 = v23;
    v76 = OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_navigator;
    v47 = sub_22088969C();
    (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_22046DA2C(v1 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_resolver, v87);
    sub_220650E5C(v87, &v82, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
    if (*(&v83 + 1))
    {
      sub_220458198(&v82, &v84);
      v77 = sub_220597454(&v84);
      v49 = v48;
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v84);
    }

    else
    {
      sub_220650EE0(&v82, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v49 = qword_281290900;
      v51 = qword_281290908;
      v77 = qword_2812908F8;

      sub_2204A80F4(v49);
    }

    v83 = 0u;
    v82 = 0u;
    v52 = v81;
    v53 = v78;
    sub_2205A08A4(v81, v78);
    sub_220650E5C(&v88, &v84, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
    v54 = (*(v80 + 80) + 24) & ~*(v80 + 80);
    v55 = (v44 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    sub_2205A0994(v53, v56 + v54);
    v57 = v56 + v55;
    v58 = v85;
    *v57 = v84;
    *(v57 + 16) = v58;
    *(v57 + 32) = v86;
    v59 = (v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v59 = v77;
    v59[1] = v49;
    v59[2] = v51;

    sub_2204A80F4(v49);
    sub_22044A8CC();
    sub_220448AC0(&qword_281298040, sub_22044A8CC);
    sub_22088E93C();

    sub_220650EE0(v87, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
    sub_220650EE0(&v88, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
    sub_220855EFC(v52, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2205985D8(v46, type metadata accessor for StocksActivity);
    sub_22056D130(&v82);
    sub_2204DA45C(v49);
    return v77;
  }

  v81 = OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_navigator;
  v60 = sub_22088969C();
  v61 = v77;
  (*(*(v60 - 8) + 56))(v77, 1, 1, v60);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  sub_22046DA2C(v1 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_resolver, v87);
  sub_220650E5C(v87, &v82, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (*(&v83 + 1))
  {
    sub_220458198(&v82, &v84);
    v62 = sub_220597454(&v84);
    v63 = v41;
    v65 = v64;
    v67 = v66;
    __swift_destroy_boxed_opaque_existential_1(&v84);
  }

  else
  {
    sub_220650EE0(&v82, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v65 = qword_281290900;
    v67 = qword_281290908;
    v62 = qword_2812908F8;

    sub_2204A80F4(v65);
    v63 = v41;
  }

  v83 = 0u;
  v82 = 0u;
  v68 = v76;
  sub_2205A08A4(v61, v76);
  sub_220650E5C(&v88, &v84, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v69 = (*(v80 + 80) + 24) & ~*(v80 + 80);
  v70 = (v44 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  sub_2205A0994(v68, v71 + v69);
  v72 = v71 + v70;
  v73 = v85;
  *v72 = v84;
  *(v72 + 16) = v73;
  *(v72 + 32) = v86;
  v74 = (v71 + ((v70 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v74 = v62;
  v74[1] = v65;
  v74[2] = v67;

  sub_2204A80F4(v65);
  sub_22044A8CC();
  sub_220448AC0(&qword_281298040, sub_22044A8CC);
  sub_22088E92C();

  sub_220650EE0(v87, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  sub_220650EE0(&v88, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  sub_220855EFC(v77, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205985D8(v63, type metadata accessor for StocksActivity);
  sub_22056D130(&v82);
  sub_2204DA45C(v65);
  return v62;
}

uint64_t sub_220855964(uint64_t a1)
{
  v2 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220597BB4(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_2206A1D94();
      v11 = *(v10 + 48);
      v12 = sub_22088CC6C();
      (*(*(v12 - 8) + 8))(&v5[v11], v12);
      v8 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 4:
      sub_2205985D8(v5, type metadata accessor for StocksActivity);
      return 0;
    case 5:
      v9 = sub_220884E9C();
      (*(*(v9 - 8) + 8))(v5, v9);
      return 1;
    case 11:
      sub_220447880();

      sub_220855EFC(v5, &qword_281299060, MEMORY[0x277D69810]);
      return 1;
    case 13:
      return result;
    default:
      v8 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_2205985D8(v5, v8);
      return 1;
  }
}

uint64_t sub_220855B34()
{

  v1 = OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_navigator;
  sub_22044A8CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_featureAvailability);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_resolver);

  return swift_deallocClassInstance();
}

void sub_220855C50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroyTm_19()
{
  sub_220447BB8(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220855E18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_220447BB8(0, &qword_281298480, MEMORY[0x277D686D0]);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = (v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  return a2(a1, v8, v2 + v6, v2 + v7, v10, v11, v12);
}

uint64_t sub_220855EFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220447BB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220855F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_22044F09C();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsStockFeedGroupKnobs();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220856824();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v55 = &v44 - v15;
  sub_220856990(0, &qword_28127E228, MEMORY[0x277D844C8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22085687C();
  v22 = v57;
  sub_220892A4C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_2204535B0(&qword_281296B40, sub_22044F09C);
  v24 = v55;
  v25 = v52;
  sub_22089271C();
  sub_22044D0C0();
  LOBYTE(v59) = 1;
  sub_2204535B0(&qword_281296A48, sub_22044D0C0);
  sub_22089271C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_22089271C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_2208568D0(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for StockFeedServiceConfig();
    sub_2204535B0(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v33 = v53;
    sub_22088F7EC();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_220856934(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 6;
    swift_allocObject();
    v39 = sub_22088FB7C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_220856934(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 1000;
    v43 = v55;
    swift_allocObject();
    v42 = sub_22088FB7C();
    sub_220856934(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_220571D04(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_220856518(void *a1)
{
  v3 = v1;
  sub_220856990(0, &qword_27CF5A620, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22085687C();
  sub_220892A5C();
  LOBYTE(v15) = 0;
  sub_22044F09C();
  sub_2204535B0(&qword_27CF5A628, sub_22044F09C);
  sub_22089283C();
  if (!v2)
  {
    v11 = type metadata accessor for NewsStockFeedGroupKnobs();
    v15 = *(v3 + *(v11 + 20));
    v14 = 1;
    sub_22044D0C0();
    sub_2204535B0(&qword_27CF57D98, sub_22044D0C0);
    sub_22089283C();
    v15 = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_22089283C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22085677C(uint64_t a1)
{
  v2 = sub_22085687C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2208567B8(uint64_t a1)
{
  v2 = sub_22085687C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220856824()
{
  if (!qword_281296B30)
  {
    sub_22044F09C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296B30);
    }
  }
}

unint64_t sub_22085687C()
{
  result = qword_28128B5F0;
  if (!qword_28128B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128B5F0);
  }

  return result;
}

uint64_t sub_2208568D0(uint64_t a1, uint64_t a2)
{
  sub_220856824();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220856934(uint64_t a1)
{
  sub_220856824();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220856990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22085687C();
    v7 = a3(a1, &type metadata for NewsStockFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220856A08()
{
  result = qword_27CF5A630;
  if (!qword_27CF5A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A630);
  }

  return result;
}

unint64_t sub_220856A60()
{
  result = qword_28128B5E0;
  if (!qword_28128B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128B5E0);
  }

  return result;
}

unint64_t sub_220856AB8()
{
  result = qword_28128B5E8;
  if (!qword_28128B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128B5E8);
  }

  return result;
}

uint64_t sub_220856B30(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedViewerRouteModel();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - v17;
  sub_220856DEC(a1, v10, type metadata accessor for StockFeedViewerRouteModel);
  sub_2206578D0(v10, v18);
  sub_220856DEC(v18, v14, sub_22047C320);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {
    sub_22047C4E4(v18);
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    v19 = [objc_opt_self() sharedApplication];
    v20 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_2206B31A4();
    v21 = sub_22089125C();

    [v19 openURL:v20 options:v21 completionHandler:0];

    (*(v3 + 8))(v6, v2);
    v14 = v18;
  }

  return sub_22047C4E4(v14);
}

uint64_t sub_220856DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220856E64()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D318);
  __swift_project_value_buffer(v0, qword_27CF6D318);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  sub_2208403B4();
  v5 = sub_2208902EC();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_22089029C();
}

uint64_t sub_2208570B8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D330);
  __swift_project_value_buffer(v0, qword_27CF6D330);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220857264()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D348);
  __swift_project_value_buffer(v0, qword_27CF6D348);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  sub_2208403B4();
  v5 = sub_2208902EC();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_22089029C();
}

uint64_t sub_2208574B8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D360);
  __swift_project_value_buffer(v0, qword_27CF6D360);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220857714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22048452C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_220857790()
{
  sub_220484814(&qword_2812910E8);

  return sub_22088D90C();
}

uint64_t sub_2208577F8()
{
  sub_22085788C();

  return sub_22088D90C();
}

unint64_t sub_220857838()
{
  result = qword_27CF5A638;
  if (!qword_27CF5A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A638);
  }

  return result;
}

unint64_t sub_22085788C()
{
  result = qword_27CF5A640;
  if (!qword_27CF5A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A640);
  }

  return result;
}

uint64_t sub_2208578E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220857928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2208579C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2208579E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 152) = v3;
  return result;
}

uint64_t sub_220857A48()
{
  sub_220857ADC();

  return sub_22088D90C();
}

unint64_t sub_220857A88()
{
  result = qword_27CF5A648;
  if (!qword_27CF5A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A648);
  }

  return result;
}

unint64_t sub_220857ADC()
{
  result = qword_27CF5A650;
  if (!qword_27CF5A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A650);
  }

  return result;
}

uint64_t sub_220857B68(uint64_t a1, char *a2, __int128 *a3)
{
  v7 = type metadata accessor for StockChartCalloutLayoutOptions();
  v8 = (v7 - 8);
  *&v10 = MEMORY[0x28223BE20](v7, v9).n128_u64[0];
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for StockChartCalloutViewModel(0);
  v18 = *(v17 + 20);
  v19 = v8[7];
  v20 = sub_2208854FC();
  v21 = *(*(v20 - 8) + 16);
  v22 = *a3;
  v41 = a3[1];
  v42 = v22;
  v21(&v12[v19], a1 + v18, v20);
  v23 = *(v17 + 24);
  v24 = v8[8];
  v25 = sub_22088543C();
  (*(*(v25 - 8) + 16))(&v12[v24], a1 + v23, v25);
  v26 = [a2 traitCollection];
  *v12 = v14;
  *(v12 + 1) = v16;
  *&v12[v8[9]] = v26;
  v27 = &v12[v8[10]];
  v28 = v41;
  *v27 = v42;
  *(v27 + 1) = v28;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_22072AD7C(a1, v12, v43);
  if (v43[0])
  {
    v30 = *&v43[8];
    v29 = *&v43[9];
    v32 = *&v43[6];
    v31 = *&v43[7];
    v33 = v43[5];
    v35 = *&v43[3];
    v34 = *&v43[4];
    v37 = *&v43[1];
    v36 = *&v43[2];
    v38 = *&a2[OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_dateLabel];
    [v38 setAttributedText_];
    [v38 setAdjustsFontSizeToFitWidth_];
    [v38 setFrame_];
    v39 = *&a2[OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_priceLabel];
    [v39 setAttributedText_];
    [v39 setFrame_];
    sub_220857E9C(v43, sub_220857EFC);
  }

  return sub_220857E9C(v12, type metadata accessor for StockChartCalloutLayoutOptions);
}

id sub_220857E30()
{
  v0 = objc_allocWithZone(type metadata accessor for StockChartCalloutView());

  return [v0 initWithFrame_];
}

uint64_t sub_220857E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220857EFC()
{
  if (!qword_27CF5A658)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF5A658);
    }
  }
}

uint64_t sub_220857F4C(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2204FC6A0(0, qword_281296160, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - v5;
  sub_22082C194(a1, v12 - v5);
  v7 = type metadata accessor for StocksAudioTrack();
  v8 = *(v7 - 8) + 56;
  (*v8)(v6, 0, 1, v7);
  sub_22085813C(&qword_27CF575F8, qword_281296160, v2);
  sub_2208886AC();
  sub_2205D2498(v6);
  sub_2204FC6A0(0, &qword_27CF5A660, MEMORY[0x277D84560]);
  v9 = (*(v8 + 24) + 32) & ~*(v8 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899360;
  sub_22082C194(a1, v10 + v9);
  v12[1] = v10;
  sub_22085813C(&qword_27CF57600, &qword_28127EA38, MEMORY[0x277D83940]);
  sub_2208886AC();
}

uint64_t sub_22085813C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2204FC6A0(255, a2, a3);
    sub_2204FFEC0(&qword_2812961D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_220858208(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 232))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220858228(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = (a2 - 1);
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

  *(result + 232) = v3;
  return result;
}

id sub_2208582A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for CardToolbarView()) initWithFrame_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_220858320(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, int a11)
{
  v12 = v11;
  v83 = a11;
  v82 = a10;
  v21 = sub_2208582A4();
  [v21 frame];
  v23 = v22;
  v25 = v24;

  v100 = v23;
  v101 = v25;
  v102 = a1;
  v103 = a2;
  v104 = a3;
  v105 = a4;
  v106 = a9;
  v26 = *__swift_project_boxed_opaque_existential_1(v12 + 3, v12[6]);
  v84 = a9;
  v27 = sub_220891A6C();
  v98 = 0u;
  v99 = 0u;
  if (a8)
  {
    __swift_project_boxed_opaque_existential_1((v26 + 16), *(v26 + 40));
    v29 = sub_2207D5794();
    sub_220891A6C();
    [v29 boundingRectWithSize:0 options:0 context:{v23 - v30 + -110.0, v25}];
    v32 = v31;
    v34 = v33;

    *&v98 = v23 - (v32 + a4);
    *(&v98 + 1) = 0x4030000000000000;
    *&v99 = v32;
    *(&v99 + 1) = v34;
  }

  v72[1] = a7;
  MEMORY[0x28223BE20](v27, v28);
  sub_22088C18C();
  v76 = v90;
  v75 = v91;
  v74 = v92;
  v35 = v93;
  v81 = v94;
  v80 = v95;
  v79 = v96;
  v78 = v97;
  v36 = v12[9];
  v37 = v12[2];
  v38 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton;
  v39 = *&v37[OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton];
  swift_unknownObjectRetain();
  v73 = v37;
  [v39 setFrame_];
  [*&v37[v38] addAction:a6 forControlEvents:64];
  v40 = sub_22089203C();
  v41 = *&v37[v38];
  v77 = v40;
  [v41 setImage_forState_];
  v42 = *&v37[v38];
  swift_beginAccess();
  v44 = v36[5];
  v43 = v36[6];
  v45 = __swift_project_boxed_opaque_existential_1(v36 + 2, v44);
  v46 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v45, v45);
  v49 = v72 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v49, v47);
  v50 = (*(*(v43 + 16) + 8))(v44);
  v85 = a8;
  v51 = v50;
  (*(v46 + 8))(v49, v44);
  [v42 setTintColor_];

  v52 = *&v37[v38];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = objc_opt_self();
  v55 = [v54 bundleForClass_];
  sub_220884CAC();

  v56 = sub_22089132C();

  [v52 setAccessibilityLabel_];

  v57 = *&v37[v38];
  v58 = [v54 bundleForClass_];
  sub_220884CAC();

  v59 = sub_22089132C();
  v60 = v85;

  [v57 setAccessibilityHint_];

  v61 = v73;
  sub_2207D9E7C(v73, v82);
  v62 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView;
  v63 = v61;
  [*&v61[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setFrame_];
  v64 = *&v61[v62];
  v65 = __swift_project_boxed_opaque_existential_1(v36 + 2, v36[5]);
  v67 = *(*v65 + 40);
  v66 = *(*v65 + 48);
  __swift_project_boxed_opaque_existential_1((*v65 + 16), v67);
  v68 = (*(*(v66 + 16) + 168))(v67);
  [v64 setBackgroundColor_];

  [*&v63[v62] setHidden_];
  v69 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_marketStatusLabel;
  [*&v63[OBJC_IVAR____TtC8StocksUI15CardToolbarView_marketStatusLabel] setFrame_];
  if (v60)
  {
    v70 = *&v63[v69];
    __swift_project_boxed_opaque_existential_1(v36 + 2, v36[5]);
    v71 = sub_2207D5794();
    [v70 setAttributedText_];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_220858AB4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_220858B20()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22088D31C();

  return swift_unknownObjectRelease();
}

unint64_t sub_220858B9C(uint64_t a1)
{
  result = sub_220858BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220858BC4()
{
  result = qword_28128BE48[0];
  if (!qword_28128BE48[0])
  {
    type metadata accessor for CardToolbarViewProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128BE48);
  }

  return result;
}

void sub_220858CF8()
{
  sub_2205150DC(&qword_281293230);

  JUMPOUT(0x223D86790);
}

void sub_220858D50()
{
  v1 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_headingLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_subheadingLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_separatorLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D6ED40]) init];
  v4 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_premiumSealView;
  *(v0 + v4) = [objc_allocWithZone(sub_22088A26C()) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_220858E68(uint64_t a1)
{
  v285 = sub_22088516C();
  v284 = *(v285 - 8);
  MEMORY[0x28223BE20](v285, v2);
  v283 = &v276 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_220887C9C();
  v301 = *(v303 - 8);
  MEMORY[0x28223BE20](v303, v4);
  v299 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_2208874DC();
  v302 = *(v304 - 8);
  MEMORY[0x28223BE20](v304, v6);
  v300 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v308, v8);
  v291 = (&v276 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v321 = &v276 - v12;
  v13 = MEMORY[0x277D83D88];
  sub_22085CF8C(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v313 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v278 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v281 = &v276 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v277 = &v276 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v286 = &v276 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v292 = &v276 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v310 = &v276 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v287 = &v276 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v297 = &v276 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v294 = &v276 - v40;
  v314 = v41;
  MEMORY[0x28223BE20](v42, v43);
  v296 = &v276 - v44;
  v312 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v312, v45);
  v280 = &v276 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v279 = &v276 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v305 = &v276 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v306 = &v276 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v295 = &v276 - v58;
  v293 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v293, v59);
  v309 = &v276 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_220888A9C();
  v319 = *(v320 - 8);
  MEMORY[0x28223BE20](v320, v61);
  v318 = &v276 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22085CF8C(0, &qword_2812994E0, MEMORY[0x277CC9260], v13);
  MEMORY[0x28223BE20](v63 - 8, v64);
  v289 = &v276 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66, v67);
  v298 = &v276 - v68;
  MEMORY[0x28223BE20](v69, v70);
  v288 = &v276 - v71;
  v315 = sub_220884E9C();
  v316 = *(v315 - 8);
  v72 = *(v316 + 64);
  MEMORY[0x28223BE20](v315, v73);
  v290 = &v276 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74, v75);
  v276 = &v276 - v76;
  MEMORY[0x28223BE20](v77, v78);
  v282 = &v276 - v79;
  v80 = sub_2208913BC();
  MEMORY[0x28223BE20](v80 - 8, v81);
  v311 = &v276 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2208871DC();
  v307 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v84);
  v86 = &v276 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2208887CC();
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v89);
  v91 = &v276 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22088880C();
  v93 = *(v92 - 1);
  MEMORY[0x28223BE20](v92, v94);
  v317 = &v276 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96, v97);
  v99 = &v276 - v98;
  sub_22085CF8C(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v327 = v100;
  v325 = a1;
  sub_22088899C();
  sub_2208887EC();
  v101 = *(v93 + 8);
  v328 = v92;
  v326 = v101;
  v101(v99, v92);
  sub_2208887BC();
  v103 = v102;
  v104 = *(v88 + 8);
  v324 = v87;
  v323 = v88 + 8;
  v322 = v104;
  v104(v91, v87);
  if (v103)
  {
    v105 = sub_22089270C();

    if (!v105)
    {
      strcpy(v86, "widgetHeadline");
      v86[15] = -18;
      v106 = v307;
      (*(v307 + 104))(v86, *MEMORY[0x277CEAE40], v83);
      sub_2208872DC();
      (*(v106 + 8))(v86, v83);
    }
  }

  __swift_project_boxed_opaque_existential_1((v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_featureAvailability), *(v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_featureAvailability + 24));
  v107 = sub_22089084C();
  v108 = v325;
  sub_22088899C();
  sub_2208887EC();
  v326(v99, v328);
  if ((v107 & 1) == 0)
  {
    sub_2208887BC();
    v151 = v150;
    v322(v91, v324);
    if (!v151)
    {
      return 0;
    }

    v152 = sub_220884EAC();
    v154 = v153;

    if (v154 >> 60 == 15)
    {
      return 0;
    }

    sub_2208913AC();
    sub_22089138C();
    v156 = v155;
    sub_2204B9058(v152, v154);
    if (!v156)
    {
      return 0;
    }

    v157 = v289;
    sub_220884E8C();

    v158 = v316;
    v159 = v315;
    if ((*(v316 + 48))(v157, 1, v315) == 1)
    {
      sub_22085D07C(v157, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22085CF8C);
      return 0;
    }

    (*(v158 + 32))(v290, v157, v159);
    v207 = v283;
    sub_22088515C();
    v208 = objc_allocWithZone(MEMORY[0x277D69900]);
    v209 = sub_220884E3C();
    v210 = sub_22089132C();
    v211 = sub_22088509C();
    v212 = sub_22089132C();
    v213 = [v208 initWithURL:v209 title:v210 shortExcerpt:0 publishDate:v211 sourceName:v212];

    (*(v284 + 8))(v207, v285);
    v214 = v291;
    *v291 = v213;
    v215 = v214;
    swift_storeEnumTagMultiPayload();
    v216 = sub_220844448();
    v328 = OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_navigator;
    if (v216)
    {
      v217 = v279;
      sub_22085D0DC(v215, v279, type metadata accessor for StocksActivity.Article);
      swift_storeEnumTagMultiPayload();
      v218 = *(v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_tracker);
      v219 = sub_22088969C();
      v220 = v286;
      (*(*(v219 - 8) + 56))(v286, 1, 1, v219);
      v332 = 0;
      v331 = 0u;
      aBlock = 0u;
      v341 = 0;
      v339 = 0u;
      v340 = 0u;
      sub_22085CFF0(&v339, &v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (*(&v335 + 1))
      {
        sub_220458198(&v334, &v336);
        v221 = sub_220597454(&v336);
        v327 = v222;
        v224 = v223;
        __swift_destroy_boxed_opaque_existential_1(&v336);
      }

      else
      {
        sub_22085D07C(&v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (qword_2812908F0 != -1)
        {
          swift_once();
        }

        v221 = qword_2812908F8;
        v255 = qword_281290900;
        v224 = qword_281290908;

        v327 = v255;
        sub_2204A80F4(v255);
      }

      v256 = v313;
      *(&v335 + 1) = sub_22088731C();
      *&v334 = v218;
      v257 = v220;
      v258 = v277;
      sub_22085CFF0(v257, v277, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
      sub_22085CFF0(&aBlock, &v336, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
      v259 = (*(v256 + 80) + 24) & ~*(v256 + 80);
      v260 = (v314 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
      v261 = swift_allocObject();
      *(v261 + 16) = v218;
      sub_2205A0994(v258, v261 + v259);
      v262 = v261 + v260;
      v263 = v337;
      *v262 = v336;
      *(v262 + 16) = v263;
      *(v262 + 32) = v338;
      v264 = (v261 + ((v260 + 47) & 0xFFFFFFFFFFFFFFF8));
      v265 = v327;
      *v264 = v221;
      v264[1] = v265;
      v264[2] = v224;
      swift_retain_n();

      sub_2204A80F4(v265);
      sub_22044A8CC();
      sub_220448EB0(&qword_281298040, sub_22044A8CC);
      sub_22088E92C();

      sub_2204DA45C(v265);
      sub_22085D07C(&v339, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      sub_22085D07C(&aBlock, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
      sub_22085D07C(v286, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
      sub_22085D3C8(v217, type metadata accessor for StocksActivity);
      sub_22085D3C8(v291, type metadata accessor for StocksActivity.Article);
      (*(v316 + 8))(v290, v159);
      goto LABEL_52;
    }

LABEL_57:
    v247 = v280;
    sub_22085D0DC(v215, v280, type metadata accessor for StocksActivity.Article);
    swift_storeEnumTagMultiPayload();
    v248 = *(v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_tracker);
    v249 = sub_22088969C();
    v250 = v281;
    (*(*(v249 - 8) + 56))(v281, 1, 1, v249);
    v332 = 0;
    v331 = 0u;
    aBlock = 0u;
    v341 = 0;
    v339 = 0u;
    v340 = 0u;
    sub_22085CFF0(&v339, &v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (*(&v335 + 1))
    {
      sub_220458198(&v334, &v336);
      v251 = sub_220597454(&v336);
      v327 = v252;
      v254 = v253;
      __swift_destroy_boxed_opaque_existential_1(&v336);
    }

    else
    {
      sub_22085D07C(&v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v251 = qword_2812908F8;
      v266 = qword_281290900;
      v254 = qword_281290908;

      v327 = v266;
      sub_2204A80F4(v266);
    }

    v267 = v313;
    *(&v335 + 1) = sub_22088731C();
    *&v334 = v248;
    v268 = v278;
    sub_22085CFF0(v250, v278, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
    sub_22085CFF0(&aBlock, &v336, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    v269 = (*(v267 + 80) + 24) & ~*(v267 + 80);
    v270 = (v314 + v269 + 7) & 0xFFFFFFFFFFFFFFF8;
    v271 = swift_allocObject();
    *(v271 + 16) = v248;
    sub_2205A0994(v268, v271 + v269);
    v272 = v271 + v270;
    v273 = v337;
    *v272 = v336;
    *(v272 + 16) = v273;
    *(v272 + 32) = v338;
    v274 = (v271 + ((v270 + 47) & 0xFFFFFFFFFFFFFFF8));
    v275 = v327;
    *v274 = v251;
    v274[1] = v275;
    v274[2] = v254;
    swift_retain_n();

    sub_2204A80F4(v275);
    sub_22044A8CC();
    sub_220448EB0(&qword_281298040, sub_22044A8CC);
    sub_22088E93C();

    sub_2204DA45C(v275);
    sub_22085D07C(&v339, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_22085D07C(&aBlock, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_22085D07C(v250, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
    sub_22085D3C8(v247, type metadata accessor for StocksActivity);
    sub_22085D3C8(v291, type metadata accessor for StocksActivity.Article);
    (*(v316 + 8))(v290, v315);
    goto LABEL_52;
  }

  sub_2208887BC();
  v110 = v109;
  v322(v91, v324);
  if (!v110 || (v111 = sub_220884EAC(), v113 = v112, , v113 >> 60 == 15) || (sub_2208913AC(), sub_22089138C(), v115 = v114, sub_2204B9058(v111, v113), !v115))
  {
LABEL_10:
    v119 = sub_22085C498(v108);
    v121 = v120;
    v122 = v317;
    sub_22088899C();
    v123 = v318;
    sub_2208887FC();
    v326(v122, v328);
    v124 = sub_220888A1C();
    v126 = v125;
    (*(v319 + 8))(v123, v320);
    if (v126)
    {
      *&aBlock = v124;
      *(&aBlock + 1) = v126;
      strcpy(&v339, "subscription");
      BYTE13(v339) = 0;
      HIWORD(v339) = -5120;
      sub_22059B6A4();
      v127 = sub_22089239C();

      if (v127)
      {
        if (v121)
        {
          v128 = v119;
        }

        else
        {
          v128 = 0;
        }

        v129 = sub_22088898C();
        v130 = v293;
        v131 = *(v293 + 40);
        v132 = sub_22088A47C();
        v133 = v309;
        (*(*(v132 - 8) + 56))(&v309[v131], 1, 1, v132);
        v134 = v130[5];
        v135 = *MEMORY[0x277D301F8];
        v136 = sub_220887F9C();
        (*(*(v136 - 8) + 104))(&v133[v134], v135, v136);
        v137 = *MEMORY[0x277D30200];
        v138 = sub_220887FAC();
        (*(*(v138 - 8) + 104))(&v133[v134], v137, v138);
        *&v133[v130[11] + 8] = 0;
        v139 = swift_unknownObjectWeakInit();
        *v133 = v128;
        *(v133 + 1) = v121;
        v140 = &v133[v130[6]];
        *v140 = 0;
        *(v140 + 1) = 0;
        v141 = &v133[v130[7]];
        *v141 = 0;
        *(v141 + 1) = 0;
        *&v133[v130[8]] = v129;
        *&v133[v130[9]] = 0;
        *(v139 + 8) = 0;
        swift_unknownObjectWeakAssign();
        v328 = OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_navigator;
        v142 = v295;
        sub_22085D0DC(v133, v295, type metadata accessor for CampaignRouteModel);
        swift_storeEnumTagMultiPayload();
        v143 = sub_22088969C();
        v144 = v296;
        (*(*(v143 - 8) + 56))(v296, 1, 1, v143);
        v332 = 0;
        v331 = 0u;
        aBlock = 0u;
        v341 = 0;
        v339 = 0u;
        v340 = 0u;
        sub_22085CFF0(&v339, &v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (*(&v335 + 1))
        {
          sub_220458198(&v334, &v336);
          v145 = sub_220597454(&v336);
          v147 = v146;
          v149 = v148;
          __swift_destroy_boxed_opaque_existential_1(&v336);
        }

        else
        {
          sub_22085D07C(&v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          if (qword_2812908F0 != -1)
          {
            swift_once();
          }

          v145 = qword_2812908F8;
          v147 = qword_281290900;
          v149 = qword_281290908;

          sub_2204A80F4(v147);
        }

        v195 = v313;
        v334 = 0u;
        v335 = 0u;
        v196 = v294;
        sub_22085CFF0(v144, v294, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
        sub_22085CFF0(&aBlock, &v336, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        v197 = (*(v195 + 80) + 24) & ~*(v195 + 80);
        v198 = (v314 + v197 + 7) & 0xFFFFFFFFFFFFFFF8;
        v199 = swift_allocObject();
        *(v199 + 16) = 0;
        sub_2205A0994(v196, v199 + v197);
        v200 = v199 + v198;
        v201 = v337;
        *v200 = v336;
        *(v200 + 16) = v201;
        *(v200 + 32) = v338;
        v202 = (v199 + ((v198 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v202 = v145;
        v202[1] = v147;
        v202[2] = v149;

        sub_2204A80F4(v147);
        sub_22044A8CC();
        sub_220448EB0(&qword_281298040, sub_22044A8CC);
        sub_22088E92C();

        sub_2204DA45C(v147);
        sub_22085D07C(&v339, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_22085D07C(&aBlock, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_22085D07C(v144, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
        sub_22085D3C8(v142, type metadata accessor for StocksActivity);
        v203 = type metadata accessor for CampaignRouteModel;
        v204 = &v335 + 8;
        goto LABEL_51;
      }
    }

    if (v121)
    {
      sub_2204481D8();
      v320 = *(v160 + 48);
      v319 = v321 + *(v160 + 64);
      v161 = *(v316 + 56);
      v162 = v298;
      v163 = v315;
      v161(v298, 1, 1, v315);
      v164 = v300;
      sub_2208874CC();
      v161(v162, 1, 1, v163);
      v165 = v301;
      v166 = v299;
      v167 = v303;
      (*(v301 + 104))(v299, *MEMORY[0x277D2FF08], v303);
      v168 = v321;
      sub_22088764C();
      (*(v165 + 8))(v166, v167);
      sub_22085D07C(v162, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22085CF8C);
      (*(v302 + 8))(v164, v304);
      v169 = v319;
      *(v319 + 32) = 0;
      *v169 = 0u;
      v169[1] = 0u;
      *(v168 + v320) = 0;
      swift_storeEnumTagMultiPayload();
      sub_22088899C();
      sub_2208887EC();
      v326(v99, v328);
      v170 = sub_2208887BC();
      v172 = v171;
      v322(v91, v324);
      v173 = v310;
      v174 = v306;
      v175 = v305;
      if (v172)
      {
        if (v170 == 1702195828 && v172 == 0xE400000000000000)
        {

LABEL_29:
          v178 = OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_navigator;
          sub_22085D0DC(v321, v174, type metadata accessor for StocksActivity.Article);
          swift_storeEnumTagMultiPayload();
          v179 = *(v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_tracker);
          v180 = v297;
          sub_22088897C();
          v181 = sub_22088969C();
          (*(*(v181 - 8) + 56))(v180, 0, 1, v181);
          v332 = 0;
          v331 = 0u;
          aBlock = 0u;
          v341 = 0;
          v339 = 0u;
          v340 = 0u;
          sub_22085CFF0(&v339, &v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          v328 = v178;
          if (*(&v335 + 1))
          {
            sub_220458198(&v334, &v336);
            v182 = sub_220597454(&v336);
            v184 = v183;
            v186 = v185;
            __swift_destroy_boxed_opaque_existential_1(&v336);
          }

          else
          {
            sub_22085D07C(&v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
            if (qword_2812908F0 != -1)
            {
              swift_once();
            }

            v182 = qword_2812908F8;
            v184 = qword_281290900;
            v186 = qword_281290908;

            sub_2204A80F4(v184);
          }

          v234 = v313;
          v235 = v174;
          *(&v335 + 1) = sub_22088731C();
          *&v334 = v179;
          v236 = v287;
          sub_22085CFF0(v180, v287, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
          sub_22085CFF0(&aBlock, &v336, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          v237 = (*(v234 + 80) + 24) & ~*(v234 + 80);
          v238 = (v314 + v237 + 7) & 0xFFFFFFFFFFFFFFF8;
          v239 = swift_allocObject();
          *(v239 + 16) = v179;
          sub_2205A0994(v236, v239 + v237);
          v240 = v239 + v238;
          v241 = v337;
          *v240 = v336;
          *(v240 + 16) = v241;
          *(v240 + 32) = v338;
          v242 = (v239 + ((v238 + 47) & 0xFFFFFFFFFFFFFFF8));
          *v242 = v182;
          v242[1] = v184;
          v242[2] = v186;
          swift_retain_n();

          sub_2204A80F4(v184);
          sub_22044A8CC();
          sub_220448EB0(&qword_281298040, sub_22044A8CC);
          sub_22088E93C();

          sub_2204DA45C(v184);
          sub_22085D07C(&v339, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          sub_22085D07C(&aBlock, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          sub_22085D07C(v297, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
          v233 = v235;
LABEL_50:
          sub_22085D3C8(v233, type metadata accessor for StocksActivity);
          v203 = type metadata accessor for StocksActivity.Article;
          v204 = &v342;
LABEL_51:
          sub_22085D3C8(*(v204 - 32), v203);
LABEL_52:
          sub_22085D07C(&v334, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204621D4);
          return 1;
        }

        v177 = sub_2208928BC();

        if (v177)
        {
          goto LABEL_29;
        }
      }

      v187 = OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_navigator;
      sub_22085D0DC(v321, v175, type metadata accessor for StocksActivity.Article);
      swift_storeEnumTagMultiPayload();
      v188 = *(v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_tracker);
      sub_22088897C();
      v189 = sub_22088969C();
      (*(*(v189 - 8) + 56))(v173, 0, 1, v189);
      v332 = 0;
      v331 = 0u;
      aBlock = 0u;
      v341 = 0;
      v339 = 0u;
      v340 = 0u;
      sub_22085CFF0(&v339, &v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      v328 = v187;
      if (*(&v335 + 1))
      {
        sub_220458198(&v334, &v336);
        v190 = sub_220597454(&v336);
        v192 = v191;
        v194 = v193;
        __swift_destroy_boxed_opaque_existential_1(&v336);
      }

      else
      {
        sub_22085D07C(&v334, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (qword_2812908F0 != -1)
        {
          swift_once();
        }

        v190 = qword_2812908F8;
        v192 = qword_281290900;
        v194 = qword_281290908;

        sub_2204A80F4(v192);
      }

      v225 = v313;
      *(&v335 + 1) = sub_22088731C();
      *&v334 = v188;
      v226 = v292;
      sub_22085CFF0(v173, v292, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
      sub_22085CFF0(&aBlock, &v336, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
      v227 = (*(v225 + 80) + 24) & ~*(v225 + 80);
      v228 = (v314 + v227 + 7) & 0xFFFFFFFFFFFFFFF8;
      v229 = swift_allocObject();
      *(v229 + 16) = v188;
      sub_2205A0994(v226, v229 + v227);
      v230 = v229 + v228;
      v231 = v337;
      *v230 = v336;
      *(v230 + 16) = v231;
      *(v230 + 32) = v338;
      v232 = (v229 + ((v228 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v232 = v190;
      v232[1] = v192;
      v232[2] = v194;
      swift_retain_n();

      sub_2204A80F4(v192);
      sub_22044A8CC();
      sub_220448EB0(&qword_281298040, sub_22044A8CC);
      sub_22088E92C();

      sub_2204DA45C(v192);
      sub_22085D07C(&v339, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      sub_22085D07C(&aBlock, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
      sub_22085D07C(v310, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22085CF8C);
      v233 = v175;
      goto LABEL_50;
    }

    return 0;
  }

  v116 = v288;
  sub_220884E8C();

  v117 = v316;
  v118 = v315;
  if ((*(v316 + 48))(v116, 1, v315) == 1)
  {
    sub_22085D07C(v116, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22085CF8C);
    v108 = v325;
    goto LABEL_10;
  }

  v205 = *(v117 + 32);
  v206 = v282;
  v205(v282, v116, v118);
  if (sub_220844448())
  {
    __swift_project_boxed_opaque_existential_1((v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler), *(v329 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler + 24));
    sub_22088B62C();
    (*(v117 + 8))(v206, v118);
    return 1;
  }

  v328 = objc_opt_self();
  v243 = v276;
  (*(v117 + 16))(v276, v206, v118);
  v244 = (*(v117 + 80) + 24) & ~*(v117 + 80);
  v215 = swift_allocObject();
  *(v215 + 16) = v329;
  v205((v215 + v244), v243, v118);
  v245 = swift_allocObject();
  *(v245 + 16) = sub_22085D428;
  *(v245 + 24) = v215;
  v332 = sub_2204D491C;
  v333 = v245;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v331 = sub_2208481A4;
  *(&v331 + 1) = &block_descriptor_57;
  v246 = _Block_copy(&aBlock);

  [v328 performWithoutAnimation_];
  _Block_release(v246);
  (*(v117 + 8))(v206, v118);
  LOBYTE(v243) = swift_isEscapingClosureAtFileLocation();

  result = 1;
  if (v243)
  {
    __break(1u);
    goto LABEL_57;
  }

  return result;
}

uint64_t sub_22085C498(uint64_t a1)
{
  v29 = sub_2208887CC();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v27 - v7;
  v9 = sub_22088880C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v27 - v16;
  sub_22085CF8C(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v27[1] = a1;
  sub_22088899C();
  sub_2208887EC();
  v18 = *(v10 + 8);
  v18(v17, v9);
  v19 = sub_2208887BC();
  v21 = v20;
  v22 = *(v2 + 8);
  v23 = v8;
  v24 = v29;
  v22(v23, v29);
  if (!v21)
  {
    sub_22088899C();
    v25 = v28;
    sub_2208887EC();
    v18(v13, v9);
    v19 = sub_2208887DC();
    v22(v25, v24);
  }

  return v19;
}

uint64_t sub_22085C73C()
{

  v1 = OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_navigator;
  sub_22044A8CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_featureAvailability);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler);

  return swift_deallocClassInstance();
}

uint64_t sub_22085C888(void *a1)
{
  v2 = sub_220888A7C();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204621D4(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2208AB1B0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  *(v6 + 48) = 0x6C63697472613A2FLL;
  *(v6 + 56) = 0xEB00000000444965;
  *(v6 + 64) = 0xD000000000000014;
  *(v6 + 72) = 0x80000002208DAE50;
  strcpy((v6 + 80), "/subscription");
  *(v6 + 94) = -4864;
  *(v6 + 96) = 0xD000000000000018;
  *(v6 + 104) = 0x80000002208DAE70;
  *(v6 + 112) = 0x656C63697472612FLL;
  *(v6 + 120) = 0xE800000000000000;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_22089085C() & 1) == 0)
  {
    v7 = sub_22045E924(1, 7, 1, v6);
    *(v7 + 2) = 7;
    *(v7 + 16) = 0xD000000000000015;
    *(v7 + 17) = 0x80000002208DAE90;
  }

  sub_220888A6C();
  v41 = MEMORY[0x277D84560];
  sub_22085CF8C(0, &qword_28127E140, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v8 = sub_220888A2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v38 = v5;
  v12 = (v11 + 32) & ~v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2208A22A0;
  v37 = v13;
  v14 = (v13 + v12);
  *v14 = 0x656C6369747261;
  v14[1] = 0xE700000000000000;
  v15 = *(v9 + 104);
  (v15)(v13 + v12, *MEMORY[0x277D6CC80], v8);
  v16 = (v14 + v10);
  *v16 = 0xD000000000000010;
  v16[1] = 0x80000002208BEB80;
  v15();
  v17 = (v14 + 2 * v10);
  *v17 = 0x6E676961706D6163;
  v17[1] = 0xEB0000000064695FLL;
  v15();
  v18 = v14 + 3 * v10;
  strcpy(v18, "campaign_type");
  *(v18 + 7) = -4864;
  v15();
  v19 = (v14 + 4 * v10);
  *v19 = 0x6576697461657263;
  v19[1] = 0xEB0000000064695FLL;
  v15();
  v20 = (v14 + 5 * v10);
  *v20 = 0x6E656B6F7471;
  v20[1] = 0xE600000000000000;
  v15();
  v21 = (v14 + 6 * v10);
  *v21 = 0x6574756F72;
  v21[1] = 0xE500000000000000;
  v15();
  v22 = (v14 + 7 * v10);
  *v22 = 0x724664656E65706FLL;
  v22[1] = 0xEA00000000006D6FLL;
  v15();
  v23 = &v14[v10];
  strcpy(v23, "web_headline");
  v23[13] = 0;
  *(v23 + 7) = -5120;
  v15();
  v24 = (v14 + 9 * v10);
  *v24 = 0x6C6F626D7973;
  v24[1] = 0xE600000000000000;
  v15();
  v25 = v41;
  sub_22085CF8C(0, &qword_28127DED0, sub_220605374, v41);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x49656C6369747261;
  *(inited + 40) = 0xE900000000000044;
  sub_22085CF8C(0, &qword_28127E138, MEMORY[0x277D6CCB8], v25);
  v27 = sub_220888A8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_220899920;
  v32 = (v31 + v30);
  *v32 = 65;
  v32[1] = 0xE100000000000000;
  v33 = *(v28 + 104);
  result = v33(v32, *MEMORY[0x277D6CCA8], v27);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v32 + v29) = *MEMORY[0x277D30A00];
    v33((v32 + v29), *MEMORY[0x277D6CCB0], v27);
    *(inited + 48) = v31;
    sub_2205CEF04(inited);
    swift_setDeallocating();
    sub_22085D3C8(inited + 32, sub_220605374);
    v35 = v38;
    v36 = sub_220888A5C();

    (*(v39 + 8))(v35, v40);
    return v36;
  }

  return result;
}

void sub_22085CF8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22085CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22085D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_22085D0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_20()
{
  sub_22085CF8C(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22085D2D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_22085CF8C(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = (v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  return a2(a1, v8, v2 + v6, v2 + v7, v10, v11, v12);
}

uint64_t sub_22085D3C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22085D428()
{
  sub_220884E9C();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler), *(*(v0 + 16) + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler + 24));
  return sub_22088B62C();
}

uint64_t sub_22085D5AC(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22089136C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v12 = v4;
  sub_2208919CC();
  v8 = v7;

  if (v8)
  {
  }

  else
  {
    sub_22085D838();
    sub_22089143C();
    v9 = *(v1 + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_setAllowSubmission);
    v10 = (*(v1 + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid))(v12, v6);

    v9(v10 & 1);
  }

  return 1;
}

unint64_t sub_22085D838()
{
  result = qword_27CF5A710;
  if (!qword_27CF5A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A710);
  }

  return result;
}

uint64_t sub_22085D890(uint64_t a1)
{
  v3 = sub_22088F91C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StocksAudioTrack();
  if ((*(a1 + *(result + 32)) & 2) != 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_22088812C();
    result = (*(v4 + 88))(v7, v3);
    if (result == *MEMORY[0x277D32460])
    {
      return (*(v4 + 96))(v7, v3);
    }

    else if (result != *MEMORY[0x277D32468])
    {
      result = sub_22089267C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22085DA48(uint64_t a1)
{
  v3 = sub_22088F91C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StocksAudioTrack();
  if ((*(a1 + *(result + 32)) & 2) != 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_22088813C();
    result = (*(v4 + 88))(v7, v3);
    if (result == *MEMORY[0x277D32460])
    {
      return (*(v4 + 96))(v7, v3);
    }

    else if (result != *MEMORY[0x277D32468])
    {
      result = sub_22089267C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22085DC64(uint64_t a1, uint64_t a2)
{
  v5 = sub_22088519C();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v44 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2208875BC();
  v39 = *(v41 - 8);
  v42 = *(v39 + 64);
  MEMORY[0x28223BE20](v41, v8);
  v48 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088822C();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22088916C();
  v34 = *(v47 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v47, v15);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v33 - v18;
  sub_22085E144();
  v43 = v19;
  v38 = v2;
  sub_22085E508(v2, v19);
  v40 = *(v2 + 32);
  (*(v11 + 16))(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v20 = v39;
  v21 = a1;
  v22 = v41;
  (*(v39 + 16))(v48, v21, v41);
  v23 = v34;
  (*(v34 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v47);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v20 + 80) + v25 + 8) & ~*(v20 + 80);
  v27 = (v42 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v28 = swift_allocObject();
  (*(v11 + 32))(v28 + v24, v36, v35);
  *(v28 + v25) = v38;
  (*(v20 + 32))(v28 + v26, v48, v22);
  v29 = v28 + v27;
  v30 = v47;
  (*(v23 + 32))(v29, v37, v47);

  sub_22088726C();

  sub_22088722C();
  sub_220889B5C();
  sub_22086978C(&qword_281298388, MEMORY[0x277D68AA0]);
  sub_22088730C();
  sub_22088724C();
  v31 = v44;
  sub_22088518C();
  sub_22088517C();
  (*(v45 + 8))(v31, v46);
  sub_22088723C();

  return (*(v23 + 8))(v43, v30);
}

uint64_t sub_22085E144()
{
  sub_220447C0C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v27 - v2;
  v4 = sub_22088822C();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v30, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220887C9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22088820C();
  if ([v16 respondsToSelector_])
  {
    v17 = [v16 role];
    result = swift_unknownObjectRelease();
    if (v17 == 3)
    {
      return result;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v27 = v4;
  v19 = v28;
  v20 = *(v28 + 176);
  if (v20)
  {
    *v15 = v20;
    v21 = MEMORY[0x277D2FF10];
  }

  else
  {
    v21 = MEMORY[0x277D2FF08];
  }

  (*(v12 + 104))(v15, *v21, v11);
  v28 = *(v19 + 168);
  sub_2204481D8();
  v23 = *(v22 + 48);
  v24 = &v10[*(v22 + 64)];
  v25 = v20;
  sub_22088820C();
  sub_2208881FC();
  v26 = sub_220884E9C();
  (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
  sub_22088767C();
  sub_22086971C(v3, &qword_2812994E0, MEMORY[0x277CC9260]);
  (*(v29 + 8))(v7, v27);
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *&v10[v23] = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22088BDBC();
  sub_22086963C(v10, type metadata accessor for StocksActivity);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_22085E508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_220886F7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220887A2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088759C();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D2FD80])
  {
    v64 = *(a1 + 32);
    v65 = a2;
    sub_22088729C();
    sub_220447C0C(0, &unk_28127E158, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    v16 = v15;
    v17 = sub_2208871DC();
    v18 = v5;
    v19 = *(v17 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v62 = v16;
    v63 = v20;
    v22 = swift_allocObject();
    v23 = v4;
    *(v22 + 16) = xmmword_220899360;
    v24 = *(v19 + 104);
    (v24)(v22 + v21, *MEMORY[0x277CEAE58], v17);
    v25 = sub_220886F6C();

    v26 = *(v18 + 8);
    v61 = v23;
    v26(v8, v23);
    if (v25)
    {
      v27 = MEMORY[0x277D682F0];
LABEL_8:
      v35 = *v27;
      v36 = sub_22088916C();
      return (*(*(v36 - 8) + 104))(v65, v35, v36);
    }

    sub_22088729C();
    v60 = v26;
    v29 = v63;
    v59 = v21 + 2 * v63;
    v30 = swift_allocObject();
    v58 = xmmword_220899920;
    *(v30 + 16) = xmmword_220899920;
    v31 = v30 + v21;
    strcpy((v30 + v21), "widgetHeadline");
    *(v30 + v21 + 15) = -18;
    (v24)(v30 + v21, *MEMORY[0x277CEAE40], v17);
    v32 = (v31 + v29);
    v33 = v60;
    *v32 = 0x656C6369747261;
    v32[1] = 0xE700000000000000;
    v57[3] = *MEMORY[0x277CEAE50];
    v24();
    LOBYTE(v31) = sub_220886F6C();

    v34 = v61;
    v33(v8, v61);
    if (v31)
    {
      v27 = MEMORY[0x277D682D8];
      goto LABEL_8;
    }

    sub_22088729C();
    v49 = swift_allocObject();
    *(v49 + 16) = v58;
    v50 = (v49 + v21);
    *v50 = 0x656E696C64616568;
    v50[1] = 0xE800000000000000;
    (v24)(v49 + v21, *MEMORY[0x277CEAE48], v17);
    v51 = (v50 + v63);
    *v51 = 0x656C6369747261;
    v51[1] = 0xE700000000000000;
    v24();
    LOBYTE(v50) = sub_220886F6C();

    v33(v8, v34);
    v46 = sub_22088916C();
    v47 = *(*(v46 - 8) + 104);
    v52 = v65;
    if (v50)
    {
      v53 = MEMORY[0x277D682B8];
    }

    else
    {
      v53 = MEMORY[0x277D682C8];
    }

    v56 = *v53;
    return v47(v52, v56, v46);
  }

  if (v14 == *MEMORY[0x277D2FD78])
  {
    v28 = MEMORY[0x277D682E0];
    goto LABEL_16;
  }

  if (v14 != *MEMORY[0x277D2FD68])
  {
    if (v14 != *MEMORY[0x277D2FD70])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    v28 = MEMORY[0x277D682C0];
LABEL_16:
    v54 = *v28;
    v55 = sub_22088916C();
    return (*(*(v55 - 8) + 104))(a2, v54, v55);
  }

  sub_22088729C();
  sub_220447C0C(0, &unk_28127E158, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  v38 = sub_2208871DC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_220899920;
  v43 = v42 + v41;
  strcpy((v42 + v41), "widgetHeadline");
  *(v43 + 15) = -18;
  v44 = *(v39 + 104);
  (v44)(v42 + v41, *MEMORY[0x277CEAE40], v38);
  v45 = (v43 + v40);
  *v45 = 0x656C6369747261;
  v45[1] = 0xE700000000000000;
  v44();
  LOBYTE(v43) = sub_220886F6C();

  (*(v5 + 8))(v8, v4);
  v46 = sub_22088916C();
  v47 = *(*(v46 - 8) + 104);
  if (v43)
  {
    v48 = MEMORY[0x277D682D8];
  }

  else
  {
    v48 = MEMORY[0x277D682F8];
  }

  v56 = *v48;
  v52 = a2;
  return v47(v52, v56, v46);
}

uint64_t sub_22085ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v151 = a5;
  v152 = a4;
  v153 = a3;
  v158 = a1;
  v6 = MEMORY[0x277D83D88];
  sub_220447C0C(0, &qword_2812983D8, MEMORY[0x277D68948], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v145 = &v113 - v9;
  v146 = sub_2208899EC();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v10);
  v127 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22088939C();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v12);
  v124 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447C0C(0, &qword_2812984D0, MEMORY[0x277D685B0], v6);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v120 = &v113 - v16;
  v123 = sub_2208894CC();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v17);
  v121 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447C0C(0, &unk_281298520, MEMORY[0x277D683E0], v6);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v117 = &v113 - v21;
  v119 = sub_22088931C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v22);
  v113 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447C0C(0, &qword_281298480, MEMORY[0x277D686D0], v6);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v143 = &v113 - v26;
  v27 = sub_22088969C();
  v148 = *(v27 - 8);
  v149 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v147 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22088956C();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v30);
  v140 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22088916C();
  v136 = *(v150 - 1);
  MEMORY[0x28223BE20](v150, v32);
  v135 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22088A02C();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v34);
  v133 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_22088A01C();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v36);
  v137 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447C0C(0, &unk_281298420, MEMORY[0x277D68860], v6);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v131 = &v113 - v40;
  v41 = sub_2208898CC();
  v155 = *(v41 - 8);
  v156 = v41;
  MEMORY[0x28223BE20](v41, v42);
  v154 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22088A10C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v44);
  v114 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2208891DC();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v46);
  v128 = &v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_220889BFC();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2208895EC();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v113 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088820C();
  swift_getObjectType();
  sub_2206F61F0(v57);
  swift_unknownObjectRelease();
  sub_22086978C(&qword_2812984B0, MEMORY[0x277D686A0]);
  sub_220886F1C();
  v58 = v53;
  v59 = v153;
  (*(v54 + 8))(v57, v58);
  v60 = a2;
  sub_22088820C();
  swift_getObjectType();
  sub_2206F69A0(*(v59 + 160));
  swift_unknownObjectRelease();
  sub_22086978C(&qword_281298370, MEMORY[0x277D68B40]);
  sub_220886F1C();
  (*(v49 + 8))(v52, v48);
  v61 = [sub_22088820C() sourceChannel];
  swift_unknownObjectRelease();
  if (v61)
  {
    __swift_project_boxed_opaque_existential_1((v59 + 80), *(v59 + 104));
    v62 = v128;
    sub_2206EC95C(v61);
    sub_22086978C(&qword_281298560, MEMORY[0x277D68340]);
    v63 = v130;
    sub_220886F1C();
    swift_unknownObjectRelease();
    (*(v129 + 8))(v62, v63);
  }

  v157 = "";
  v64 = sub_22088820C();
  if ([v64 respondsToSelector_])
  {
    v65 = [v64 parentIssue];
    swift_unknownObjectRelease();
    v66 = v155;
    v67 = v156;
    v68 = v131;
    if (v65)
    {
      v69 = [v65 identifier];
      sub_22089136C();

      v70 = v114;
      sub_22088A0FC();
      sub_22086978C(&qword_281298280, MEMORY[0x277D69030]);
      v71 = v116;
      sub_220886F1C();

      (*(v115 + 8))(v70, v71);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v66 = v155;
    v67 = v156;
    v68 = v131;
  }

  sub_2205602A4(v59 + 120, &v159);
  v72 = v160;
  if (v160)
  {
    v73 = v161;
    __swift_project_boxed_opaque_existential_1(&v159, v160);
    (*(v73 + 8))(v60, v72, v73);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    if ((*(v66 + 48))(v68, 1, v67) != 1)
    {
      (*(v66 + 32))(v154, v68, v67);
      goto LABEL_13;
    }
  }

  else
  {
    sub_22086963C(&v159, sub_22059847C);
    (*(v66 + 56))(v68, 1, 1, v67);
  }

  sub_2208898BC();
  if ((*(v66 + 48))(v68, 1, v67) != 1)
  {
    sub_22086971C(v68, &unk_281298420, MEMORY[0x277D68860]);
  }

LABEL_13:
  sub_22086978C(&qword_281298430, MEMORY[0x277D68860]);
  sub_220886F1C();
  sub_22088757C();
  (*(v132 + 104))(v133, *MEMORY[0x277D68F28], v134);
  (*(v136 + 16))(v135, v151, v150);
  v74 = v137;
  sub_22088A00C();
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v75 = sub_220886F8C();
  v76 = *(v75 - 8);
  v77 = *(v76 + 72);
  v78 = *(v76 + 80);
  v79 = (v78 + 32) & ~v78;
  v80 = swift_allocObject();
  v151 = xmmword_220899360;
  *(v80 + 16) = xmmword_220899360;
  LODWORD(v136) = *MEMORY[0x277CEAD10];
  v150 = *(v76 + 104);
  v150(v80 + v79);
  sub_22086978C(&unk_2812982B0, MEMORY[0x277D68F18]);
  v81 = v139;
  sub_220886F1C();

  (*(v138 + 8))(v74, v81);
  sub_22088757C();
  v82 = v140;
  sub_22088955C();
  v152 = v77;
  v83 = swift_allocObject();
  *(v83 + 16) = v151;
  v139 = v75;
  v138 = v76 + 104;
  (v150)(v83 + v79, v136, v75);
  sub_22086978C(&qword_2812984B8, MEMORY[0x277D68610]);
  v84 = v142;
  sub_220886F1C();

  (*(v141 + 8))(v82, v84);
  v85 = OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_urlReferralData;
  v86 = v153;
  swift_beginAccess();
  v87 = v143;
  sub_22086969C(v86 + v85, v143, &qword_281298480, MEMORY[0x277D686D0]);
  v88 = v148;
  v89 = v149;
  if ((*(v148 + 48))(v87, 1, v149) == 1)
  {
    sub_22086971C(v87, &qword_281298480, MEMORY[0x277D686D0]);
  }

  else
  {
    (*(v88 + 32))(v147, v87, v89);
    v90 = v117;
    sub_22088967C();
    v91 = v118;
    v92 = v119;
    v93 = (*(v118 + 48))(v90, 1, v119);
    v94 = MEMORY[0x277CEAD18];
    v135 = v78;
    if (v93 == 1)
    {
      sub_22086971C(v90, &unk_281298520, MEMORY[0x277D683E0]);
      v95 = v123;
      v96 = v120;
      v97 = v139;
    }

    else
    {
      v98 = v113;
      (*(v91 + 32))(v113, v90, v92);
      v99 = swift_allocObject();
      *(v99 + 16) = v151;
      v97 = v139;
      (v150)(v99 + v79, *v94, v139);
      sub_22086978C(&qword_281298530, MEMORY[0x277D683E0]);
      sub_220886F1C();

      (*(v91 + 8))(v98, v92);
      v95 = v123;
      v96 = v120;
    }

    sub_22088966C();
    v100 = v122;
    if ((*(v122 + 48))(v96, 1, v95) == 1)
    {
      sub_22086971C(v96, &qword_2812984D0, MEMORY[0x277D685B0]);
      LODWORD(v153) = *MEMORY[0x277CEAD18];
      v101 = v150;
    }

    else
    {
      (*(v100 + 32))(v121, v96, v95);
      v102 = swift_allocObject();
      *(v102 + 16) = v151;
      LODWORD(v153) = *MEMORY[0x277CEAD18];
      v101 = v150;
      v150(v102 + v79);
      sub_22086978C(&qword_2812984D8, MEMORY[0x277D685B0]);
      sub_220886F1C();

      (*(v100 + 8))(v121, v95);
    }

    v103 = v124;
    v104 = v147;
    sub_22088968C();
    v105 = swift_allocObject();
    *(v105 + 16) = v151;
    v101(v105 + v79, v153, v97);
    sub_22086978C(&qword_281298508, MEMORY[0x277D68458]);
    v106 = v126;
    sub_220886F1C();

    (*(v125 + 8))(v103, v106);
    (*(v148 + 8))(v104, v149);
  }

  v107 = v146;
  v108 = v156;
  sub_22086978C(&unk_2812983E0, MEMORY[0x277D68948]);
  v109 = v145;
  sub_220886F0C();
  v110 = v144;
  if ((*(v144 + 48))(v109, 1, v107) == 1)
  {
    (*(v155 + 8))(v154, v108);
    return sub_22086971C(v109, &qword_2812983D8, MEMORY[0x277D68948]);
  }

  else
  {
    v112 = v127;
    (*(v110 + 32))(v127, v109, v107);
    sub_220886F1C();
    (*(v110 + 8))(v112, v107);
    return (*(v155 + 8))(v154, v108);
  }
}

uint64_t sub_2208604B4(uint64_t a1)
{
  v26 = a1;
  v2 = sub_220887C9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x277CC9260];
  sub_220447C0C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - v9;
  v27 = sub_22088822C();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + 168);
  sub_2204481D8();
  v24 = *(v19 + 48);
  v20 = &v18[*(v19 + 64)];
  sub_22088820C();
  sub_2208881FC();
  v21 = sub_220884E9C();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  (*(v3 + 104))(v6, *MEMORY[0x277D2FF08], v2);
  sub_22088767C();
  (*(v3 + 8))(v6, v2);
  sub_22086971C(v10, &qword_2812994E0, v28);
  (*(v11 + 8))(v14, v27);
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *&v18[v24] = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22088BDAC();
  return sub_22086963C(v18, type metadata accessor for StocksActivity);
}

uint64_t sub_220860800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a1;
  v49 = a3;
  v58 = a2;
  v4 = sub_22088516C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v52 = &v45 - v9;
  v10 = sub_22088944C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v45 - v17;
  v48 = sub_220886A4C();
  v19 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088943C();
  v24 = *(v23 - 8);
  v50 = v23;
  v51 = v24;
  MEMORY[0x28223BE20](v23, v25);
  v46 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22088928C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EF294();
  v47 = "";
  sub_22086978C(&qword_281298540, MEMORY[0x277D683C0]);
  sub_220886F1C();
  (*(v28 + 8))(v31, v27);
  __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager), *(v49 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager + 24));
  sub_2208863EC();
  v32 = sub_2208869AC();
  v33 = MEMORY[0x277D68560];
  if ((v32 & 1) == 0)
  {
    v33 = MEMORY[0x277D68558];
  }

  (*(v11 + 104))(v18, *v33, v10);
  (*(v11 + 16))(v14, v18, v10);
  v34 = v46;
  sub_22088942C();
  (*(v11 + 8))(v18, v10);
  (*(v19 + 8))(v22, v48);
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v35 = sub_220886F8C();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_220899360;
  (*(v36 + 104))(v38 + v37, *MEMORY[0x277CEAD18], v35);
  sub_22086978C(&qword_2812984F0, MEMORY[0x277D68550]);
  v39 = v50;
  sub_220886F1C();

  (*(v51 + 8))(v34, v39);
  sub_220889A8C();
  v40 = v52;
  sub_22088758C();
  sub_22086978C(&qword_2812983B0, MEMORY[0x277D689F0]);
  sub_220886ECC();
  v41 = v55;
  v42 = *(v54 + 8);
  v42(v40, v55);
  v43 = v53;
  sub_22088758C();
  sub_2208875AC();
  sub_22088508C();
  v42(v43, v41);
  sub_22088820C();
  v59[3] = sub_22088A7DC();
  __swift_allocate_boxed_opaque_existential_1(v59);
  sub_22088A7CC();

  sub_220886EEC();

  v42(v40, v41);
  return sub_22086963C(v59, sub_22055F87C);
}

uint64_t sub_220860F1C()
{
  sub_220886EBC();
  sub_22088939C();
  sub_22086978C(&qword_281298508, MEMORY[0x277D68458]);
  sub_220886EAC();
  sub_22088931C();
  sub_22086978C(&qword_281298530, MEMORY[0x277D683E0]);
  sub_220886EAC();
  sub_2208894CC();
  sub_22086978C(&qword_2812984D8, MEMORY[0x277D685B0]);
  return sub_220886EAC();
}

uint64_t sub_22086103C(char *a1)
{
  v206 = a1;
  v186 = sub_2208880EC();
  v189 = *(v186 - 8);
  v1 = *(v189 + 8);
  MEMORY[0x28223BE20](v186, v2);
  v187 = &v182 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v188 = &v182 - v5;
  v192 = sub_220887D1C();
  v194 = *(v192 - 8);
  v6 = *(v194 + 8);
  MEMORY[0x28223BE20](v192, v7);
  v190 = (&v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v191 = &v182 - v10;
  v201 = sub_220887DAC();
  v197 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v11);
  v204 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v12;
  MEMORY[0x28223BE20](v13, v14);
  v205 = &v182 - v15;
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v193 = *(v16 - 8);
  v17 = *(v193 + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v199 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v200 = (&v182 - v21);
  v22 = sub_22088785C();
  v23 = *(v22 - 8);
  v207 = v22;
  v208 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v202 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = v25;
  MEMORY[0x28223BE20](v26, v27);
  v203 = &v182 - v28;
  v210 = sub_22088789C();
  v29 = *(v210 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v210, v31);
  v32 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v182 - v35;
  v37 = sub_22088756C();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v42, v206, v37, v40);
  v43 = (*(v38 + 88))(v42, v37);
  if (v43 == *MEMORY[0x277D2FA40])
  {
    (*(v38 + 96))(v42, v37);
    sub_22086928C(0, v44);
    v46 = *&v42[v45[12]];
    v47 = *&v42[v45[16]];
    v48 = *&v42[v45[20]];
    v49 = *(v29 + 32);
    v50 = v42;
    v51 = v210;
    v49(v36, v50, v210);
    (*(v29 + 16))(v32, v36, v51);
    v52 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v53 = swift_allocObject();
    *(v53 + 2) = v46;
    *(v53 + 3) = v47;
    *(v53 + 4) = v48;
    v49(&v53[v52], v32, v51);
    sub_22088726C();

    return (*(v29 + 8))(v36, v51);
  }

  v184 = v30;
  v206 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v36;
  v55 = v29;
  if (v43 == *MEMORY[0x277D2FA70])
  {
    (*(v38 + 96))(v42, v37);
    sub_220868524(0, v56);
    v58 = v57[12];
    v59 = v57[16];
    v191 = v57[20];
    v60 = *(v208 + 32);
    v188 = (v208 + 32);
    v189 = v60;
    v61 = v203;
    v62 = v207;
    (v60)(v203, v42, v207);
    v185 = v29;
    v63 = *(v29 + 32);
    v192 = v29 + 32;
    v194 = v63;
    v64 = v198;
    v63(v198, &v42[v58], v210);
    v65 = v200;
    sub_220868674(&v42[v59], v200);
    v66 = v197;
    v187 = *(v197 + 32);
    v67 = &v191[v42];
    v68 = v205;
    v69 = v201;
    (v187)(v205, v67, v201);
    v191 = *(v209 + 32);
    v70 = v208;
    (*(v208 + 16))(v202, v61, v62);
    v190 = MEMORY[0x277D2FCC8];
    sub_22086969C(v65, v199, &qword_281298B28, MEMORY[0x277D2FCC8]);
    v71 = v69;
    (*(v66 + 16))(v204, v68, v69);
    v72 = v185;
    (*(v185 + 16))(v206, v64, v210);
    v73 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v74 = (v195 + *(v193 + 80) + v73) & ~*(v193 + 80);
    v75 = (v17 + *(v66 + 80) + v74) & ~*(v66 + 80);
    v76 = (v196 + *(v72 + 80) + v75) & ~*(v72 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v209;
    v78 = v77 + v73;
    v79 = v207;
    (v189)(v78, v202, v207);
    sub_220868674(v199, v77 + v74);
    (v187)(v77 + v75, v204, v71);
    v80 = v77 + v76;
    v81 = v210;
    v194(v80, v206, v210);

    sub_22088726C();

    (*(v66 + 8))(v205, v71);
    sub_22086971C(v200, &qword_281298B28, v190);
    v82 = v72;
LABEL_5:
    (*(v82 + 8))(v198, v81);
    return (*(v208 + 8))(v203, v79);
  }

  if (v43 == *MEMORY[0x277D2FA30])
  {
    (*(v38 + 96))(v42, v37);
    sub_220868ADC(0, v83);
    v85 = v84[12];
    v86 = v84[16];
    v193 = v84[20];
    v87 = *(v208 + 32);
    v188 = (v208 + 32);
    v189 = v87;
    v88 = v203;
    (v87)(v203, v42, v207);
    v185 = v29;
    v89 = *(v29 + 32);
    v199 = v29 + 32;
    v200 = v89;
    v90 = v210;
    (v89)(v198, &v42[v85], v210);
    v91 = *(v194 + 4);
    v186 = v194 + 32;
    v187 = v91;
    v92 = &v42[v86];
    v93 = v191;
    v94 = v192;
    (v91)(v191, v92, v192);
    v95 = v197;
    v183 = *(v197 + 32);
    v96 = &v42[v193];
    v97 = v205;
    v98 = v201;
    v183(v205, v96, v201);
    v193 = *(v209 + 32);
    v99 = v208;
    (*(v208 + 16))(v202, v88, v207);
    (*(v95 + 16))(v204, v97, v98);
    v100 = v194;
    (*(v194 + 2))(v190, v93, v94);
    v101 = v185;
    v102 = v206;
    (*(v185 + 16))(v206, v198, v90);
    v103 = (*(v99 + 80) + 24) & ~*(v99 + 80);
    v104 = (v195 + *(v95 + 80) + v103) & ~*(v95 + 80);
    v105 = (v196 + *(v100 + 80) + v104) & ~*(v100 + 80);
    v106 = (v6 + *(v101 + 80) + v105) & ~*(v101 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = v209;
    v108 = v207;
    (v189)(v107 + v103, v202, v207);
    v109 = v107 + v104;
    v110 = v201;
    v183(v109, v204, v201);
    v111 = v192;
    (v187)(v107 + v105, v190, v192);
    v112 = v107 + v106;
    v113 = v210;
    (v200)(v112, v102, v210);

    sub_22088726C();

    (*(v95 + 8))(v205, v110);
    (*(v194 + 1))(v191, v111);
    (*(v185 + 8))(v198, v113);
    return (*(v208 + 8))(v203, v108);
  }

  if (v43 == *MEMORY[0x277D2FA58])
  {
    (*(v38 + 96))(v42, v37);
    sub_220868914();
    v115 = *(v114 + 48);
    v116 = *(v114 + 64);
    v117 = v207;
    v198 = *(v208 + 32);
    v199 = v208 + 32;
    v118 = v203;
    (v198)(v203, v42, v207);
    v119 = *(v189 + 4);
    v200 = v189 + 32;
    v206 = v119;
    v120 = v188;
    v121 = v186;
    (v119)(v188, &v42[v115], v186);
    v122 = v197;
    v194 = *(v197 + 32);
    v123 = &v42[v116];
    v124 = v205;
    v125 = v201;
    v194(v205, v123, v201);
    v126 = v208;
    v210 = *(v209 + 32);
    (*(v208 + 16))(v202, v118, v117);
    (*(v122 + 16))(v204, v124, v125);
    v127 = v189;
    (*(v189 + 2))(v187, v120, v121);
    v128 = (*(v126 + 80) + 24) & ~*(v126 + 80);
    v129 = (v195 + *(v122 + 80) + v128) & ~*(v122 + 80);
    v130 = (v196 + *(v127 + 80) + v129) & ~*(v127 + 80);
    v131 = swift_allocObject();
    *(v131 + 16) = v209;
    (v198)(v131 + v128, v202, v117);
    v132 = v131 + v129;
    v133 = v201;
    v194(v132, v204, v201);
    (v206)(v131 + v130, v187, v121);

    sub_22088726C();

    (*(v122 + 8))(v205, v133);
    v127[1](v188, v121);
    return (*(v208 + 8))(v203, v117);
  }

  if (v43 == *MEMORY[0x277D2FA48])
  {
    (*(v38 + 96))(v42, v37);
    sub_220868524(0, v134);
    v136 = v135[12];
    v137 = v135[16];
    v138 = v135[20];
    v188 = *(v208 + 32);
    v189 = (v208 + 32);
    v139 = v203;
    v140 = v207;
    (v188)(v203, v42, v207);
    v185 = v55;
    v141 = *(v55 + 32);
    v192 = v55 + 32;
    v194 = v141;
    v142 = v210;
    v141(v198, &v42[v136], v210);
    v143 = v200;
    sub_220868674(&v42[v137], v200);
    v144 = v197;
    v187 = *(v197 + 32);
    v145 = &v42[v138];
    v146 = v205;
    v147 = v201;
    (v187)(v205, v145, v201);
    v191 = *(v209 + 32);
    v148 = v208;
    (*(v208 + 16))(v202, v139, v140);
    v190 = MEMORY[0x277D2FCC8];
    sub_22086969C(v143, v199, &qword_281298B28, MEMORY[0x277D2FCC8]);
    (*(v144 + 16))(v204, v146, v147);
    v149 = v185;
    v150 = v206;
    (*(v185 + 16))(v206, v198, v142);
    v151 = (*(v148 + 80) + 24) & ~*(v148 + 80);
    v152 = (v195 + *(v193 + 80) + v151) & ~*(v193 + 80);
    v153 = (v17 + *(v144 + 80) + v152) & ~*(v144 + 80);
    v154 = (v196 + *(v149 + 80) + v153) & ~*(v149 + 80);
    v155 = swift_allocObject();
    *(v155 + 16) = v209;
    v156 = v155 + v151;
    v79 = v207;
    (v188)(v156, v202, v207);
    sub_220868674(v199, v155 + v152);
    v157 = v201;
    (v187)(v155 + v153, v204, v201);
    v158 = v155 + v154;
    v81 = v210;
    v194(v158, v150, v210);

    sub_22088726C();

    (*(v144 + 8))(v205, v157);
    sub_22086971C(v200, &qword_281298B28, v190);
    v82 = v185;
    goto LABEL_5;
  }

  if (v43 == *MEMORY[0x277D2FA50])
  {
    (*(v38 + 96))(v42, v37);
    sub_2208683C8(0, &qword_27CF5A738, MEMORY[0x277D30020]);
    v160 = *(v159 + 48);
    v161 = v29;
    v207 = *(v29 + 32);
    v162 = v198;
    v163 = v210;
    v207(v198, v42, v210);
    v164 = v197;
    v203 = *(v197 + 32);
    v165 = &v42[v160];
    v166 = v205;
    v167 = v163;
    v168 = v201;
    (v203)(v205, v165, v201);
    v169 = v209;
    v208 = *(v209 + 32);
    (*(v164 + 16))(v204, v166, v168);
    v170 = v206;
    (*(v161 + 16))(v206, v162, v167);
    v171 = (*(v164 + 80) + 24) & ~*(v164 + 80);
    v172 = (v196 + *(v161 + 80) + v171) & ~*(v161 + 80);
    v173 = swift_allocObject();
    *(v173 + 16) = v169;
    (v203)(v173 + v171, v204, v168);
    v174 = v210;
    v207(v173 + v172, v170, v210);

    sub_22088726C();

    (*(v164 + 8))(v205, v168);
    return (*(v161 + 8))(v198, v174);
  }

  if (v43 == *MEMORY[0x277D2FA68])
  {
    (*(v38 + 96))(v42, v37);
    v175 = sub_22088763C();
    return (*(*(v175 - 8) + 8))(v42, v175);
  }

  if (v43 == *MEMORY[0x277D2FA38])
  {
    (*(v38 + 96))(v42, v37);
    sub_2208683C8(0, &qword_27CF5A730, MEMORY[0x277D2FD58]);
    v177 = *(v176 + 48);
    v178 = sub_2208879FC();
    (*(*(v178 - 8) + 8))(&v42[v177], v178);
    return (*(v29 + 8))(v42, v210);
  }

  if (v43 == *MEMORY[0x277D2FA60])
  {
    (*(v38 + 96))(v42, v37);
    sub_22086832C();
    v180 = *(v179 + 48);

    v181 = sub_2208879FC();
    (*(*(v181 - 8) + 8))(&v42[v180], v181);
    return (*(v29 + 8))(v42, v210);
  }

  return (*(v38 + 8))(v42, v37);
}

uint64_t sub_220862690()
{
  sub_22054B9F8(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_22086963C(v0 + 120, sub_22059847C);

  swift_unknownObjectRelease();
  sub_22086971C(v0 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_urlReferralData, &qword_281298480, MEMORY[0x277D686D0]);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager);
  return v0;
}

uint64_t sub_220862740()
{
  sub_220862690();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleCoordinator()
{
  result = qword_281290F60;
  if (!qword_281290F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2208627EC()
{
  sub_220447C0C(319, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void (*sub_2208628FC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_2205EF0BC;
}

uint64_t sub_220862A48(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_22086978C(a4, a5);
  return sub_22088730C();
}

uint64_t sub_220862AC8(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_22088822C();
  v20 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2208875BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  sub_2208604B4(a2);
  v23 = *(v13 + 32);
  (*(v9 + 16))(v12, v22, v8);
  v14 = v21;
  (*(v5 + 16))(v21, a2, v4);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v5 + 80) + v16 + 8) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v15, v12, v8);
  *(v18 + v16) = v13;
  (*(v5 + 32))(v18 + v17, v14, v20);

  sub_22088726C();
}

uint64_t sub_220862D74(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *(v4 + 176);
  *(v4 + 176) = a2;

  v6 = a2;
  return sub_22085E144();
}

uint64_t sub_220862DC4()
{
  sub_220889DEC();
  sub_22086978C(&qword_281298310, MEMORY[0x277D68D38]);
  return sub_22088730C();
}

uint64_t sub_220862E64(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_22088923C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088922C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *a3, v4, v12);
  sub_22088921C();
  sub_22086978C(&unk_281298550, MEMORY[0x277D68378]);
  sub_2208872CC();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_220863054()
{
  v0 = sub_220889ADC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088950C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D68A40], v0, v8);
  sub_2208894FC();
  sub_22086978C(&qword_27CF5A720, MEMORY[0x277D685D0]);
  sub_2208872CC();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_220863234()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 72);
  __swift_project_boxed_opaque_existential_1((*v0 + 40), v2);
  return (*(v3 + 8))(*(v1 + 32), v2, v3);
}

uint64_t sub_220863294(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v32 = a1;
  v2 = sub_22088516C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088940C();
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v33 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088960C();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208895FC();
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v30 = v13;
  v14 = sub_220886F8C();
  v15 = *(v14 - 8);
  v29 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v28 = xmmword_220899360;
  *(v17 + 16) = xmmword_220899360;
  v18 = *MEMORY[0x277CEAD18];
  v19 = *(v15 + 104);
  v19(v17 + v16, v18, v14);
  v27[1] = "";
  sub_22086978C(&qword_27CF5A758, MEMORY[0x277D686B0]);
  sub_220886F1C();

  (*(v31 + 8))(v12, v9);
  v20 = v33;
  sub_2208893FC();
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  v19(v21 + v16, v18, v14);
  sub_22086978C(&qword_27CF5A760, MEMORY[0x277D68498]);
  v22 = v34;
  sub_220886F1C();

  (*(v35 + 8))(v20, v22);
  sub_2208898DC();
  v23 = v36;
  sub_22088788C();
  sub_22086978C(&qword_27CF5A768, MEMORY[0x277D68870]);
  sub_220886ECC();
  v24 = v39;
  v25 = *(v38 + 8);
  v25(v23, v39);
  sub_22088787C();
  sub_220886EDC();
  return (v25)(v23, v24);
}

uint64_t sub_220863790(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v180 = a6;
  *&v166 = a5;
  v158 = a4;
  v182 = a3;
  v172 = a2;
  v159 = a1;
  v181 = sub_22088516C();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v6);
  v178 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088944C();
  v174 = *(v8 - 8);
  v175 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v171 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v169 = &v132 - v13;
  v170 = sub_220886A4C();
  v168 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v14);
  v167 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088943C();
  v176 = *(v16 - 8);
  v177 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v173 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_220887D1C();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v19);
  v160 = (&v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_2208899CC();
  v164 = *(v21 - 8);
  v165 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2208896DC();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v24);
  v142 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2208891FC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v26);
  v139 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22088795C();
  v183 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v138 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v150 = &v132 - v33;
  v149 = sub_22088A12C();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v34);
  v147 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22088785C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v145 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v152 = &v132 - v42;
  v43 = MEMORY[0x277D83D88];
  sub_220447C0C(0, &unk_281298AB8, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v156 = &v132 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v132 - v49;
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], v43);
  MEMORY[0x28223BE20](v51 - 8, v52);
  v146 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v132 - v56;
  v58 = MEMORY[0x277D2FC00];
  sub_220447C0C(0, &qword_281298B48, MEMORY[0x277D2FC00], v43);
  MEMORY[0x28223BE20](v59 - 8, v60);
  v62 = &v132 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63, v64);
  v67 = &v132 - v66;
  v68 = *(v37 + 16);
  v68(&v132 - v66, v182, v36, v65);
  (*(v37 + 56))(v67, 0, 1, v36);
  v69 = *(v183 + 56);
  v182 = v57;
  v151 = v28;
  v69(v57, 1, 1, v28);
  v70 = sub_220887DAC();
  v71 = *(v70 - 8);
  (*(v71 + 16))(v50, v158, v70);
  v153 = v71;
  v72 = *(v71 + 56);
  v158 = v50;
  v154 = v70;
  v72(v50, 0, 1, v70);
  v157 = v67;
  sub_22086969C(v67, v62, &qword_281298B48, v58);
  v155 = v37;
  v73 = v37;
  v74 = v36;
  if ((*(v73 + 48))(v62, 1, v36) == 1)
  {
    sub_22086971C(v62, &qword_281298B48, MEMORY[0x277D2FC00]);
  }

  else
  {
    v75 = v152;
    (*(v155 + 32))(v152, v62, v74);
    v76 = v145;
    (v68)(v145, v75, v74);
    v77 = v147;
    sub_2206334DC(v76);
    sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v79 = v78;
    v80 = sub_220886F8C();
    v81 = *(v80 - 8);
    v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v135 = *(v81 + 72);
    v137 = v79;
    v83 = swift_allocObject();
    v132 = xmmword_220899360;
    *(v83 + 16) = xmmword_220899360;
    v84 = *(v81 + 104);
    v134 = *MEMORY[0x277CEAD18];
    v145 = v80;
    v133 = v84;
    v84(v83 + v82);
    sub_22086978C(&qword_281298278, MEMORY[0x277D69040]);
    v136 = "";
    v85 = v149;
    sub_220886F1C();

    (*(v148 + 8))(v77, v85);
    v86 = v146;
    sub_22086969C(v182, v146, &qword_281298B28, MEMORY[0x277D2FCC8]);
    v87 = v151;
    if ((*(v183 + 48))(v86, 1, v151) == 1)
    {
      (*(v155 + 8))(v75, v74);
      sub_22086971C(v86, &qword_281298B28, MEMORY[0x277D2FCC8]);
    }

    else
    {
      v88 = v183;
      v89 = v150;
      (*(v183 + 32))();
      v90 = v138;
      (*(v88 + 16))(v138, v89, v87);
      v91 = v139;
      sub_220834B94(v90);
      v92 = swift_allocObject();
      *(v92 + 16) = v132;
      v133(v92 + v82, v134, v145);
      sub_22086978C(&qword_27CF5A780, MEMORY[0x277D68350]);
      v93 = v141;
      sub_220886F1C();

      (*(v140 + 8))(v91, v93);
      (*(v88 + 8))(v150, v87);
      (*(v155 + 8))(v152, v74);
    }
  }

  v94 = v153;
  v95 = v158;
  v96 = v156;
  sub_22086969C(v158, v156, &unk_281298AB8, MEMORY[0x277D30020]);
  v97 = v154;
  v98 = (*(v94 + 48))(v96, 1, v154);
  v99 = v182;
  if (v98 == 1)
  {
    v100 = MEMORY[0x277D30020];
    sub_22086971C(v95, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v99, &qword_281298B28, MEMORY[0x277D2FCC8]);
    sub_22086971C(v157, &qword_281298B48, MEMORY[0x277D2FC00]);
    v101 = v96;
    v102 = &unk_281298AB8;
    v103 = v100;
  }

  else
  {
    sub_220887D9C();
    v105 = v104;
    (*(v94 + 8))(v96, v97);
    if (v105)
    {
      v106 = v142;
      sub_2208896CC();
      sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v107 = sub_220886F8C();
      v108 = *(v107 - 8);
      v109 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_220899360;
      (*(v108 + 104))(v110 + v109, *MEMORY[0x277CEAD18], v107);
      sub_22086978C(&qword_27CF5A778, MEMORY[0x277D686F0]);
      v111 = v144;
      sub_220886F1C();

      (*(v143 + 8))(v106, v111);
      sub_22086971C(v95, &unk_281298AB8, MEMORY[0x277D30020]);
      sub_22086971C(v99, &qword_281298B28, MEMORY[0x277D2FCC8]);
      sub_22086971C(v157, &qword_281298B48, MEMORY[0x277D2FC00]);
      goto LABEL_12;
    }

    sub_22086971C(v95, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v99, &qword_281298B28, MEMORY[0x277D2FCC8]);
    v102 = &qword_281298B48;
    v103 = MEMORY[0x277D2FC00];
    v101 = v157;
  }

  sub_22086971C(v101, v102, v103);
LABEL_12:
  v112 = v160;
  (*(v161 + 16))(v160, v166, v162);
  v113 = v163;
  sub_220875070(v112, v163);
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v183 = v114;
  v162 = sub_220886F8C();
  v115 = *(v162 - 8);
  v182 = *(v115 + 72);
  v116 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v117 = swift_allocObject();
  v166 = xmmword_220899360;
  *(v117 + 16) = xmmword_220899360;
  LODWORD(v161) = *MEMORY[0x277CEAD18];
  v160 = *(v115 + 104);
  v160(v117 + v116);
  v159 = "";
  sub_22086978C(&qword_27CF5A788, MEMORY[0x277D68938]);
  v118 = v165;
  sub_220886F1C();

  (*(v164 + 8))(v113, v118);
  __swift_project_boxed_opaque_existential_1((v172 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager), *(v172 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager + 24));
  v119 = v167;
  sub_2208863EC();
  v120 = sub_2208869AC();
  v122 = v174;
  v121 = v175;
  v123 = MEMORY[0x277D68560];
  if ((v120 & 1) == 0)
  {
    v123 = MEMORY[0x277D68558];
  }

  v124 = v169;
  (*(v174 + 104))(v169, *v123, v175);
  (*(v122 + 16))(v171, v124, v121);
  v125 = v173;
  sub_22088942C();
  (*(v122 + 8))(v124, v121);
  (*(v168 + 8))(v119, v170);
  v126 = swift_allocObject();
  *(v126 + 16) = v166;
  (v160)(v126 + v116, v161, v162);
  sub_22086978C(&qword_2812984F0, MEMORY[0x277D68550]);
  v127 = v177;
  sub_220886F1C();

  (*(v176 + 8))(v125, v127);
  sub_22088972C();
  v128 = v178;
  sub_22088788C();
  sub_22086978C(&qword_27CF5A790, MEMORY[0x277D68730]);
  sub_220886ECC();
  v129 = *(v179 + 8);
  v130 = v181;
  v129(v128, v181);
  sub_22088787C();
  sub_220886EDC();
  return (v129)(v128, v130);
}

uint64_t sub_220864D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v161 = a5;
  *&v162 = a3;
  v157 = a4;
  v142 = a2;
  v165 = a1;
  v150 = sub_22088944C();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v5);
  v147 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v145 = &v120 - v9;
  v146 = sub_220886A4C();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v10);
  v143 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_22088943C();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v12);
  v148 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208880EC();
  v159 = *(v14 - 8);
  v160 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v158 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_220889E3C();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v17);
  v139 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2208896DC();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v19);
  v130 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2208891FC();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v21);
  v127 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088795C();
  v163 = *(v23 - 8);
  v164 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v126 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v138 = &v120 - v28;
  v137 = sub_22088A12C();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v29);
  v135 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088785C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v133 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v153 = &v120 - v37;
  v38 = MEMORY[0x277D83D88];
  sub_220447C0C(0, &unk_281298AB8, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v155 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v120 - v44;
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], v38);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v134 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v120 - v51;
  v53 = MEMORY[0x277D2FC00];
  sub_220447C0C(0, &qword_281298B48, MEMORY[0x277D2FC00], v38);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v57 = &v120 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58, v59);
  v62 = &v120 - v61;
  v63 = *(v32 + 16);
  (v63)(&v120 - v61, v162, v31, v60);
  (*(v32 + 56))(v62, 0, 1, v31);
  v64 = *(v163 + 56);
  *&v162 = v52;
  v64(v52, 1, 1, v164);
  v65 = sub_220887DAC();
  v66 = *(v65 - 8);
  (*(v66 + 16))(v45, v157, v65);
  v67 = *(v66 + 56);
  v157 = v45;
  v67(v45, 0, 1, v65);
  v156 = v62;
  sub_22086969C(v62, v57, &qword_281298B48, v53);
  v154 = v32;
  if ((*(v32 + 48))(v57, 1, v31) == 1)
  {
    sub_22086971C(v57, &qword_281298B48, MEMORY[0x277D2FC00]);
    v68 = v158;
  }

  else
  {
    v69 = v153;
    (*(v154 + 32))(v153, v57, v31);
    v70 = v133;
    v63(v133, v69, v31);
    v71 = v135;
    sub_2206334DC(v70);
    sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v73 = v72;
    v74 = sub_220886F8C();
    v75 = *(v74 - 8);
    v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v123 = *(v75 + 72);
    v125 = v73;
    v77 = swift_allocObject();
    v120 = xmmword_220899360;
    *(v77 + 16) = xmmword_220899360;
    v78 = *(v75 + 104);
    v122 = *MEMORY[0x277CEAD18];
    v133 = v74;
    v121 = v78;
    v78(v77 + v76);
    sub_22086978C(&qword_281298278, MEMORY[0x277D69040]);
    v124 = "";
    v79 = v137;
    sub_220886F1C();

    (*(v136 + 8))(v71, v79);
    v80 = v134;
    sub_22086969C(v162, v134, &qword_281298B28, MEMORY[0x277D2FCC8]);
    if ((*(v163 + 48))(v80, 1, v164) == 1)
    {
      (*(v154 + 8))(v153, v31);
      sub_22086971C(v80, &qword_281298B28, MEMORY[0x277D2FCC8]);
    }

    else
    {
      v137 = v31;
      v81 = v163;
      v82 = v164;
      v83 = v138;
      (*(v163 + 32))(v138, v80, v164);
      v84 = v126;
      (*(v81 + 16))(v126, v83, v82);
      v85 = v127;
      sub_220834B94(v84);
      v86 = swift_allocObject();
      *(v86 + 16) = v120;
      v121(v86 + v76, v122, v133);
      sub_22086978C(&qword_27CF5A780, MEMORY[0x277D68350]);
      v87 = v129;
      sub_220886F1C();

      (*(v128 + 8))(v85, v87);
      (*(v81 + 8))(v138, v82);
      (*(v154 + 8))(v153, v137);
    }

    v68 = v158;
  }

  v88 = v157;
  v89 = v155;
  sub_22086969C(v157, v155, &unk_281298AB8, MEMORY[0x277D30020]);
  if ((*(v66 + 48))(v89, 1, v65) == 1)
  {
    v90 = MEMORY[0x277D30020];
    sub_22086971C(v88, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v162, &qword_281298B28, MEMORY[0x277D2FCC8]);
    sub_22086971C(v156, &qword_281298B48, MEMORY[0x277D2FC00]);
    sub_22086971C(v89, &unk_281298AB8, v90);
    v91 = MEMORY[0x277CEAD18];
  }

  else
  {
    sub_220887D9C();
    v93 = v92;
    (*(v66 + 8))(v89, v65);
    v91 = MEMORY[0x277CEAD18];
    if (v93)
    {
      v94 = v130;
      sub_2208896CC();
      sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v95 = sub_220886F8C();
      v96 = *(v95 - 8);
      v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_220899360;
      (*(v96 + 104))(v98 + v97, *v91, v95);
      sub_22086978C(&qword_27CF5A778, MEMORY[0x277D686F0]);
      v99 = v132;
      sub_220886F1C();

      (*(v131 + 8))(v94, v99);
    }

    sub_22086971C(v88, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v162, &qword_281298B28, MEMORY[0x277D2FCC8]);
    sub_22086971C(v156, &qword_281298B48, MEMORY[0x277D2FC00]);
  }

  v101 = v159;
  v100 = v160;
  (*(v159 + 2))(v68, v161, v160);
  result = sub_2208880DC();
  if ((*&v103 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v103 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v103 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v104 = v139;
  sub_220889E2C();
  (*(v101 + 1))(v68, v100);
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v164 = v105;
  v106 = sub_220886F8C();
  v107 = *(v106 - 8);
  v163 = *(v107 + 72);
  v108 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v109 = swift_allocObject();
  v162 = xmmword_220899360;
  *(v109 + 16) = xmmword_220899360;
  LODWORD(v161) = *v91;
  v160 = *(v107 + 104);
  v160(v109 + v108);
  v159 = "";
  sub_22086978C(&qword_27CF5A798, MEMORY[0x277D68D70]);
  v110 = v141;
  sub_220886F1C();

  (*(v140 + 8))(v104, v110);
  __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager), *(v142 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager + 24));
  v111 = v143;
  sub_2208863EC();
  v112 = sub_2208869AC();
  v113 = v149;
  v114 = MEMORY[0x277D68560];
  if ((v112 & 1) == 0)
  {
    v114 = MEMORY[0x277D68558];
  }

  v115 = v145;
  v116 = v150;
  (*(v149 + 104))(v145, *v114, v150);
  (*(v113 + 16))(v147, v115, v116);
  v117 = v148;
  sub_22088942C();
  (*(v113 + 8))(v115, v116);
  (*(v144 + 8))(v111, v146);
  v118 = swift_allocObject();
  *(v118 + 16) = v162;
  (v160)(v118 + v108, v161, v106);
  sub_22086978C(&qword_2812984F0, MEMORY[0x277D68550]);
  v119 = v152;
  sub_220886F1C();

  (*(v151 + 8))(v117, v119);
  sub_220889CEC();
  sub_22086978C(&qword_27CF5A7A0, MEMORY[0x277D68C28]);
  memset(v166, 0, sizeof(v166));
  sub_220886F3C();
  return sub_22086963C(v166, sub_22055F87C);
}

uint64_t sub_220866218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), unint64_t *a9, void (*a10)(uint64_t), uint64_t a11)
{
  v171 = a8;
  v169 = a7;
  v176 = a6;
  v157 = a5;
  v147 = a4;
  v163 = a2;
  v156 = a1;
  v172 = a10;
  v173 = a11;
  v170 = a9;
  v177 = sub_22088516C();
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v12);
  v174 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088944C();
  v164 = *(v14 - 8);
  v165 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v162 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v160 = &v129 - v19;
  v161 = sub_220886A4C();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v20);
  v158 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088943C();
  v167 = *(v22 - 8);
  v168 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v166 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2208896DC();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v25);
  v138 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2208891FC();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v27);
  v135 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D83D88];
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v145 = &v129 - v32;
  v149 = sub_22088795C();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v33);
  v134 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v146 = &v129 - v37;
  v144 = sub_22088A12C();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v38);
  v142 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22088785C();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  v141 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v153 = &v129 - v46;
  sub_220447C0C(0, &unk_281298AB8, MEMORY[0x277D30020], v29);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v155 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v129 - v52;
  v54 = MEMORY[0x277D2FC00];
  sub_220447C0C(0, &qword_281298B48, MEMORY[0x277D2FC00], v29);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v58 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59, v60);
  v63 = &v129 - v62;
  v64 = *(v41 + 16);
  v64(&v129 - v62, a3, v40, v61);
  (*(v41 + 56))(v63, 0, 1, v40);
  v65 = sub_220887DAC();
  v66 = *(v65 - 8);
  (*(v66 + 16))(v53, v157, v65);
  v151 = v66;
  v67 = *(v66 + 56);
  v157 = v53;
  v68 = v53;
  v69 = v41;
  v152 = v65;
  v67(v68, 0, 1, v65);
  v154 = v63;
  sub_22086969C(v63, v58, &qword_281298B48, v54);
  v70 = *(v41 + 48);
  v150 = v40;
  if (v70(v58, 1, v40) == 1)
  {
    sub_22086971C(v58, &qword_281298B48, MEMORY[0x277D2FC00]);
  }

  else
  {
    v71 = MEMORY[0x277CEAD18];
    v72 = v153;
    v73 = v150;
    (*(v41 + 32))(v153, v58, v150);
    v74 = v141;
    (v64)(v141, v72, v73);
    v75 = v142;
    sub_2206334DC(v74);
    sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v77 = v76;
    v78 = sub_220886F8C();
    v79 = *(v78 - 8);
    v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v132 = *(v79 + 72);
    v141 = v77;
    v81 = swift_allocObject();
    v129 = xmmword_220899360;
    *(v81 + 16) = xmmword_220899360;
    v82 = *(v79 + 104);
    v131 = *v71;
    v130 = v82;
    v82(v81 + v80);
    sub_22086978C(&qword_281298278, MEMORY[0x277D69040]);
    v133 = "";
    v83 = v144;
    sub_220886F1C();

    (*(v143 + 8))(v75, v83);
    v84 = v145;
    sub_22086969C(v147, v145, &qword_281298B28, MEMORY[0x277D2FCC8]);
    if ((*(v148 + 48))(v84, 1, v149) == 1)
    {
      (*(v69 + 8))(v153, v150);
      sub_22086971C(v84, &qword_281298B28, MEMORY[0x277D2FCC8]);
    }

    else
    {
      v85 = v148;
      v86 = v146;
      v87 = v84;
      v88 = v149;
      (*(v148 + 32))(v146, v87, v149);
      v89 = v134;
      v90 = v86;
      v91 = v88;
      (*(v85 + 16))(v134, v90, v88);
      v92 = v69;
      v93 = v135;
      sub_220834B94(v89);
      v94 = swift_allocObject();
      *(v94 + 16) = v129;
      v130(v94 + v80, v131, v78);
      sub_22086978C(&qword_27CF5A780, MEMORY[0x277D68350]);
      v95 = v137;
      sub_220886F1C();

      (*(v136 + 8))(v93, v95);
      (*(v85 + 8))(v146, v91);
      (*(v92 + 8))(v153, v150);
    }
  }

  v96 = v151;
  v97 = v157;
  v98 = v155;
  sub_22086969C(v157, v155, &unk_281298AB8, MEMORY[0x277D30020]);
  v99 = v152;
  if ((*(v96 + 48))(v98, 1, v152) == 1)
  {
    v100 = MEMORY[0x277D30020];
    sub_22086971C(v97, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v154, &qword_281298B48, MEMORY[0x277D2FC00]);
    v101 = v98;
    v102 = &unk_281298AB8;
    v103 = v100;
  }

  else
  {
    sub_220887D9C();
    v105 = v104;
    (*(v96 + 8))(v98, v99);
    if (v105)
    {
      v106 = v138;
      sub_2208896CC();
      sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v107 = sub_220886F8C();
      v108 = *(v107 - 8);
      v109 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_220899360;
      v111 = MEMORY[0x277CEAD18];
      (*(v108 + 104))(v110 + v109, *MEMORY[0x277CEAD18], v107);
      sub_22086978C(&qword_27CF5A778, MEMORY[0x277D686F0]);
      v112 = v140;
      sub_220886F1C();

      (*(v139 + 8))(v106, v112);
      sub_22086971C(v97, &unk_281298AB8, MEMORY[0x277D30020]);
      sub_22086971C(v154, &qword_281298B48, MEMORY[0x277D2FC00]);
      goto LABEL_12;
    }

    sub_22086971C(v97, &unk_281298AB8, MEMORY[0x277D30020]);
    v102 = &qword_281298B48;
    v103 = MEMORY[0x277D2FC00];
    v101 = v154;
  }

  sub_22086971C(v101, v102, v103);
  v111 = MEMORY[0x277CEAD18];
LABEL_12:
  __swift_project_boxed_opaque_existential_1((v163 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager), *(v163 + OBJC_IVAR____TtC8StocksUI18ArticleCoordinator_watchlistManager + 24));
  v113 = v158;
  sub_2208863EC();
  v114 = sub_2208869AC();
  v116 = v164;
  v115 = v165;
  v117 = MEMORY[0x277D68560];
  if ((v114 & 1) == 0)
  {
    v117 = MEMORY[0x277D68558];
  }

  v118 = v160;
  (*(v164 + 104))(v160, *v117, v165);
  (*(v116 + 16))(v162, v118, v115);
  v119 = v166;
  sub_22088942C();
  (*(v116 + 8))(v118, v115);
  (*(v159 + 8))(v113, v161);
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v120 = sub_220886F8C();
  v121 = *(v120 - 8);
  v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_220899360;
  (*(v121 + 104))(v123 + v122, *v111, v120);
  sub_22086978C(&qword_2812984F0, MEMORY[0x277D68550]);
  v124 = v168;
  sub_220886F1C();

  (*(v167 + 8))(v119, v124);
  v171(0);
  v125 = v174;
  sub_22088788C();
  sub_22086978C(v170, v172);
  sub_220886ECC();
  v126 = *(v175 + 8);
  v127 = v177;
  v126(v125, v177);
  sub_22088787C();
  sub_220886EDC();
  return (v126)(v125, v127);
}

uint64_t sub_2208674EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = a4;
  v130 = a3;
  v135 = a1;
  v4 = sub_22088516C();
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v131 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208896DC();
  v115 = *(v7 - 8);
  v116 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v114 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2208891FC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v10);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088795C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v110 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v122 = &v103 - v18;
  v19 = sub_22088A12C();
  v120 = *(v19 - 8);
  v121 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v119 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088785C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v117 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v126 = &v103 - v28;
  v29 = MEMORY[0x277D83D88];
  sub_220447C0C(0, &unk_281298AB8, MEMORY[0x277D30020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v127 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v103 - v35;
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], v29);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v118 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v103 - v42;
  v44 = MEMORY[0x277D2FC00];
  sub_220447C0C(0, &qword_281298B48, MEMORY[0x277D2FC00], v29);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v48 = &v103 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49, v50);
  v53 = &v103 - v52;
  (*(v23 + 56))(&v103 - v52, 1, 1, v22, v51);
  v123 = v12;
  v124 = v13;
  (*(v13 + 56))(v43, 1, 1, v12);
  v54 = sub_220887DAC();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v36, v130, v54);
  v56 = *(v55 + 56);
  v130 = v36;
  v56(v36, 0, 1, v54);
  v128 = v53;
  sub_22086969C(v53, v48, &qword_281298B48, v44);
  v57 = *(v23 + 48);
  v125 = v22;
  v58 = v57(v48, 1, v22);
  v129 = v43;
  if (v58 == 1)
  {
    v59 = &qword_281298B48;
    v60 = MEMORY[0x277D2FC00];
    v61 = v48;
LABEL_5:
    sub_22086971C(v61, v59, v60);
    goto LABEL_7;
  }

  v63 = v125;
  v62 = v126;
  (*(v23 + 32))(v126, v48, v125);
  v64 = v117;
  (*(v23 + 16))(v117, v62, v63);
  v65 = v119;
  sub_2206334DC(v64);
  sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v67 = v66;
  v68 = sub_220886F8C();
  v69 = *(v68 - 8);
  v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v106 = *(v69 + 72);
  v109 = v67;
  v71 = swift_allocObject();
  v105 = xmmword_220899360;
  *(v71 + 16) = xmmword_220899360;
  v72 = *MEMORY[0x277CEAD18];
  v73 = *(v69 + 104);
  v107 = v70;
  v104 = v72;
  v117 = v68;
  v103 = v73;
  v73(v71 + v70);
  sub_22086978C(&qword_281298278, MEMORY[0x277D69040]);
  v108 = "";
  v74 = v121;
  sub_220886F1C();

  (*(v120 + 8))(v65, v74);
  v75 = v118;
  sub_22086969C(v43, v118, &qword_281298B28, MEMORY[0x277D2FCC8]);
  v76 = v123;
  if ((*(v124 + 48))(v75, 1, v123) == 1)
  {
    (*(v23 + 8))(v126, v125);
    v59 = &qword_281298B28;
    v60 = MEMORY[0x277D2FCC8];
    v61 = v75;
    goto LABEL_5;
  }

  v77 = v23;
  v78 = v124;
  v79 = v122;
  (*(v124 + 32))(v122, v75, v76);
  v80 = v110;
  (*(v78 + 16))(v110, v79, v76);
  v81 = v111;
  sub_220834B94(v80);
  v82 = v107;
  v83 = swift_allocObject();
  *(v83 + 16) = v105;
  v103(v83 + v82, v104, v117);
  sub_22086978C(&qword_27CF5A780, MEMORY[0x277D68350]);
  v84 = v113;
  sub_220886F1C();

  (*(v112 + 8))(v81, v84);
  (*(v78 + 8))(v122, v76);
  (*(v77 + 8))(v126, v125);
LABEL_7:
  v85 = v127;
  v86 = v130;
  sub_22086969C(v130, v127, &unk_281298AB8, MEMORY[0x277D30020]);
  if ((*(v55 + 48))(v85, 1, v54) == 1)
  {
    v87 = MEMORY[0x277D30020];
    sub_22086971C(v86, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v129, &qword_281298B28, MEMORY[0x277D2FCC8]);
    sub_22086971C(v128, &qword_281298B48, MEMORY[0x277D2FC00]);
    v88 = v85;
    v89 = &unk_281298AB8;
    v90 = v87;
  }

  else
  {
    sub_220887D9C();
    v92 = v91;
    (*(v55 + 8))(v85, v54);
    if (v92)
    {
      v93 = v114;
      sub_2208896CC();
      sub_220447C0C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v94 = sub_220886F8C();
      v95 = *(v94 - 8);
      v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_220899360;
      (*(v95 + 104))(v97 + v96, *MEMORY[0x277CEAD18], v94);
      sub_22086978C(&qword_27CF5A778, MEMORY[0x277D686F0]);
      v98 = v116;
      sub_220886F1C();

      (*(v115 + 8))(v93, v98);
    }

    sub_22086971C(v86, &unk_281298AB8, MEMORY[0x277D30020]);
    sub_22086971C(v129, &qword_281298B28, MEMORY[0x277D2FCC8]);
    v89 = &qword_281298B48;
    v90 = MEMORY[0x277D2FC00];
    v88 = v128;
  }

  sub_22086971C(v88, v89, v90);
  sub_220889D1C();
  v99 = v131;
  sub_22088788C();
  sub_22086978C(&qword_27CF5A7A8, MEMORY[0x277D68C58]);
  sub_220886ECC();
  v100 = v134;
  v101 = *(v133 + 8);
  v101(v99, v134);
  sub_22088787C();
  sub_220886EDC();
  return (v101)(v99, v100);
}

void sub_22086832C()
{
  if (!qword_27CF5A728)
  {
    sub_22088789C();
    sub_2208879FC();
    sub_2204446D4(255, &qword_28127DE30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF5A728);
    }
  }
}

void sub_2208683C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22088789C();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22086844C(uint64_t a1)
{
  v3 = *(sub_220887DAC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088789C() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2208674EC(a1, v7, v1 + v4, v8);
}

void sub_220868524(uint64_t a1, uint64_t a2)
{
  if (!qword_281298B50)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_22088785C();
    sub_22088789C();
    sub_220447C0C(255, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
    sub_220887DAC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_281298B50);
    }
  }
}

uint64_t sub_220868674(uint64_t a1, uint64_t a2)
{
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220868708(uint64_t a1)
{
  v3 = *(sub_22088785C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_220887DAC() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_22088789C() - 8);
  return sub_220866218(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), 312, MEMORY[0x277D688B8], &unk_281298408, MEMORY[0x277D688B8], MEMORY[0x277D688B0]);
}

void sub_220868914()
{
  if (!qword_27CF5A740)
  {
    sub_22088785C();
    sub_2208880EC();
    sub_220887DAC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF5A740);
    }
  }
}

uint64_t sub_2208689A0(uint64_t a1)
{
  v3 = *(sub_22088785C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220887DAC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2208880EC() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220864D78(a1, v10, v1 + v4, v1 + v7, v11);
}

void sub_220868ADC(uint64_t a1, uint64_t a2)
{
  if (!qword_27CF5A748)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_22088785C();
    sub_22088789C();
    sub_220887D1C();
    sub_220887DAC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF5A748);
    }
  }
}

uint64_t sub_220868BFC(const char *a1)
{
  v3 = *(sub_22088785C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220887DAC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_220887D1C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_22088789C() - 8);
  v13 = *(v1 + 16);
  v14 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_220863790(a1, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t objectdestroy_4Tm_1()
{
  v1 = sub_22088785C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v19 = *(*(v5 - 8) + 64);
  v20 = sub_220887DAC();
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = sub_22088789C();
  v10 = *(v18 - 8);
  v11 = *(v10 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_22088795C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = (v7 + v19 + v9) & ~v9;
  v15 = (v14 + v17 + v11) & ~v11;
  (*(v8 + 8))(v0 + v14, v20);
  (*(v10 + 8))(v0 + v15, v18);

  return swift_deallocObject();
}

uint64_t sub_220869080(uint64_t a1)
{
  v3 = *(sub_22088785C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_220447C0C(0, &qword_281298B28, MEMORY[0x277D2FCC8], MEMORY[0x277D83D88]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_220887DAC() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_22088789C() - 8);
  return sub_220866218(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), 282, MEMORY[0x277D685E0], &qword_27CF5A770, MEMORY[0x277D685E0], MEMORY[0x277D685D8]);
}

void sub_22086928C(uint64_t a1, uint64_t a2)
{
  if (!qword_27CF5A750)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_22088789C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF5A750);
    }
  }
}

uint64_t sub_220869390(uint64_t a1)
{
  v3 = *(sub_22088789C() - 8);
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_220863294(a1, v4);
}

uint64_t sub_220869408(uint64_t a1)
{
  v3 = *(sub_2208875BC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_22088822C() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_220860800(a1, v1 + v4, v7, v8);
}

uint64_t sub_2208694F4(uint64_t a1)
{
  v3 = *(sub_22088822C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_2208875BC() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_22088916C() - 8);
  v10 = *(v1 + v5);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_22085ECA8(a1, v1 + v4, v10, v1 + v7, v11);
}

uint64_t sub_22086963C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22086969C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447C0C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22086971C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447C0C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22086978C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2208697FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299100);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for ArticleStocksFeedService();
    v5 = swift_allocObject();
    sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_22044DDA0(qword_281296348, type metadata accessor for ArticleStocksFeedService);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2208698E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for ArticleRecirculationConfigurationService();
    v5 = swift_allocObject();
    sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_22044DDA0(qword_281280888, type metadata accessor for ArticleRecirculationConfigurationService);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2208699C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DemoArticleRecirculationConfigurationService();
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD00000000000062ALL;
  *(v3 + 24) = 0x80000002208DB2C0;
  a1[3] = v2;
  result = sub_22044DDA0(&qword_27CF5A7C0, type metadata accessor for DemoArticleRecirculationConfigurationService);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_220869A64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (v18 == 2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298DE0 != -1)
  {
    swift_once();
  }

  v3 = sub_220886BBC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v18 & 1) != 0 || (v3 & 1) == 0)
  {
    sub_220446A58(0, &qword_2812991A0);
    result = sub_2208884DC();
    if (v19)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220446A58(0, &qword_281299220);
      result = sub_2208884DC();
      if (v17)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_220446A58(0, &unk_281299150);
        result = sub_2208884DC();
        if (v14)
        {
          v8 = v15;
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_220446A58(0, &qword_2812967A8);
          result = sub_2208884DC();
          if (v13)
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_220446A58(0, &qword_281299280);
            result = sub_2208884DC();
            if (v11)
            {
              type metadata accessor for LegacyForYouFeedServiceConfigFetcher();
              v9 = swift_allocObject();
              sub_220457328(&v18, v9 + 16);
              sub_220457328(&v16, v9 + 56);
              *(v9 + 96) = v14;
              *(v9 + 104) = v8;
              sub_220457328(&v12, v9 + 112);
              sub_220457328(&v10, v9 + 152);
              *&v18 = v9;
              sub_2204529D4();
              swift_allocObject();
              v6 = qword_281281A48;
              v7 = type metadata accessor for LegacyForYouFeedServiceConfigFetcher;
              goto LABEL_18;
            }

            goto LABEL_28;
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  sub_220446A58(0, &unk_281299190);
  result = sub_2208884DC();
  if (!v19)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299150);
  result = sub_2208884DC();
  if (!v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967A8);
  result = sub_2208884DC();
  if (!v13)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v11)
  {
    type metadata accessor for NFFForYouFeedServiceConfigFetcher();
    v5 = swift_allocObject();
    sub_220457328(&v18, v5 + 16);
    sub_220457328(&v16, v5 + 56);
    *(v5 + 96) = v14;
    *(v5 + 104) = v4;
    sub_220457328(&v12, v5 + 112);
    sub_220457328(&v10, v5 + 152);
    *&v18 = v5;
    sub_2204529D4();
    swift_allocObject();
    v6 = &unk_2812834D8;
    v7 = type metadata accessor for NFFForYouFeedServiceConfigFetcher;
LABEL_18:
    sub_22044DDA0(v6, v7);
    return sub_22088F26C();
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_220869FA0(void *a1)
{
  v2 = sub_22088846C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E650);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299140);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991D0);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812992C0);
  result = sub_2208884DC();
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299188);
  result = sub_2208884DC();
  v9 = v19;
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299288);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296848);
  result = sub_2208884DC();
  if (v16)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D6CAB8], v2);
    type metadata accessor for ForYouFeedGroupEmitterFactory();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    sub_220457328(&v29, v10 + 24);
    sub_220457328(&v27, v10 + 64);
    sub_220457328(&v25, v10 + 104);
    sub_220457328(&v23, v10 + 144);
    sub_220457328(&v21, v10 + 184);
    (*(v3 + 32))(v10 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_networkProxy, v6, v2);
    v11 = (v10 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_newsUserProfileProvider);
    v12 = v14;
    *v11 = v9;
    v11[1] = v12;
    sub_220457328(&v17, v10 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_stockFeedService);
    sub_220457328(&v15, v10 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService);
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_22086A44C(void *a1)
{
  sub_220500598(0, &qword_281299318, MEMORY[0x277D69388]);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  v11 = v31;
  if (v31 == 2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298DE0 != -1)
  {
    swift_once();
  }

  v12 = sub_220886BBC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v11 & 1) != 0 || (v12 & 1) == 0)
  {
    v21 = sub_220885ACC();
    sub_2208884DC();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v6, 1, v21);
    if (result != 1)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220446A58(0, &unk_281299150);
      result = sub_2208884DC();
      v23 = v27;
      if (v27)
      {
        v24 = *(&v27 + 1);
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_220446A58(0, &qword_2812967A8);
        result = sub_2208884DC();
        if (v32)
        {
          type metadata accessor for StockFeedServiceConfigFetcher(0);
          v25 = swift_allocObject();
          (*(v22 + 32))(v25 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_appConfiguration, v6, v21);
          v26 = (v25 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_newsConfigurationManager);
          *v26 = v23;
          v26[1] = v24;
          sub_220457328(&v31, v25 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_paidBundleConfigManager);
          *&v31 = v25;
          sub_22044E7FC();
          swift_allocObject();
          v19 = &unk_281285F00;
          v20 = type metadata accessor for StockFeedServiceConfigFetcher;
          goto LABEL_15;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_220446A58(0, &unk_2812991B8);
  result = sub_2208884DC();
  if (!v32)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_220885ACC();
  sub_2208884DC();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299150);
  result = sub_2208884DC();
  v15 = v29;
  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967A8);
  result = sub_2208884DC();
  if (v28)
  {
    type metadata accessor for NFFStockFeedServiceConfigFetcher(0);
    v17 = swift_allocObject();
    sub_220457328(&v31, v17 + 16);
    (*(v14 + 32))(v17 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_appConfiguration, v9, v13);
    v18 = (v17 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_newsConfigurationManager);
    *v18 = v15;
    v18[1] = v16;
    sub_220457328(&v27, v17 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_paidBundleConfigManager);
    *&v31 = v17;
    sub_22044E7FC();
    swift_allocObject();
    v19 = &unk_281284540;
    v20 = type metadata accessor for NFFStockFeedServiceConfigFetcher;
LABEL_15:
    sub_22044DDA0(v19, v20);
    return sub_22088F26C();
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22086A9D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220500598(0, &qword_281299318, MEMORY[0x277D69388]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_220885ACC();
  sub_2208884DC();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299150);
  result = sub_2208884DC();
  v11 = v18;
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967A8);
  result = sub_2208884DC();
  if (v17)
  {
    type metadata accessor for StockFeedServiceConfigFetcher(0);
    v13 = swift_allocObject();
    (*(v9 + 32))(v13 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_appConfiguration, v7, v8);
    v14 = (v13 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_newsConfigurationManager);
    *v14 = v11;
    v14[1] = v12;
    sub_220457328(&v16, v13 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_paidBundleConfigManager);
    *&v16 = v13;
    sub_22044E7FC();
    swift_allocObject();
    sub_22044DDA0(&qword_281285F00, type metadata accessor for StockFeedServiceConfigFetcher);
    result = sub_22088F26C();
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22086AC70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockFeedGroupEmitterFactory();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045D464();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  v3 = v13;
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  v7 = qword_2812948A8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296AD8);
  v8 = v7;
  result = sub_2208884DC();
  if (v10)
  {
    sub_22045D378();
    v9 = sub_22088F61C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22086AEE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296848);
  result = sub_2208884DC();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220);
    result = sub_2208884DC();
    v3 = v12;
    if (v12)
    {
      v4 = type metadata accessor for StockFeedGroupEmitterFactory();
      v5 = v13;
      v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
      MEMORY[0x28223BE20](v6, v6);
      v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v8);
      v10 = sub_220466390(&v14, v8, v4, v3, v5);
      __swift_destroy_boxed_opaque_existential_1(v11);
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

uint64_t sub_22086B090(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_22088613C();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (qword_2812948A0 != -1)
    {
      swift_once();
    }

    v2 = qword_2812948A8;
    return sub_22088F3EC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22086B224(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299288);
  result = sub_2208884DC();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220);
    result = sub_2208884DC();
    if (v5)
    {
      type metadata accessor for StockFeedPoolService();
      v3 = swift_allocObject();
      sub_220457328(&v6, v3 + 16);
      sub_220457328(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for QuoteDetailViewComponent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuoteDetailViewComponent(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22086B478()
{
  result = qword_28128A2E8;
  if (!qword_28128A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128A2E8);
  }

  return result;
}

unint64_t sub_22086B4E0()
{
  result = qword_27CF5A7C8;
  if (!qword_27CF5A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A7C8);
  }

  return result;
}

uint64_t type metadata accessor for QuoteDetailViewLayoutOptions()
{
  result = qword_281287208;
  if (!qword_281287208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22086B5A8()
{
  sub_22088C32C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for QuoteDetailViewDirectionalLayoutOptions(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for QuoteDetailViewDirectionalLayoutOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QuoteDetailViewDirectionalLayoutOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_22086B770(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22086B790(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_22086B7E0(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  sub_2208713E0();
  v34 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - v9;
  v11 = sub_2208877BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v31 - v19;
  v21 = *(v12 + 16);
  v33 = v2;
  v21(v15, v2, v11, v18);
  v22 = MEMORY[0x277D2FBB0];
  v31 = sub_2208712CC(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
  sub_2208923CC();
  v23 = v22;
  v24 = v34;
  sub_2208712CC(qword_27CF5A890, v23);
  v32 = a2;
  v25 = sub_2208912FC();
  v26 = *(v24 + 48);
  *v10 = (v25 & 1) == 0;
  if (v25)
  {
    (*(v12 + 32))(&v10[v26], v20, v11);
  }

  else
  {
    (*(v12 + 8))(v20, v11);
    v27 = v32;
    (v21)(&v10[v26], v32, v11);
    (v21)(v15, v27, v11);
    sub_2208923DC();
  }

  v28 = v35;
  sub_22087144C(v10, v35);
  v29 = *v28;
  (*(v12 + 32))(v36, &v28[*(v24 + 48)], v11);
  return v29;
}

id sub_22086BB84(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_220884E9C();
  v88 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v89 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22088685C();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088CA0C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v85 - v29;
  v102 = &unk_283496E68;
  v31 = swift_dynamicCastObjCProtocolConditional();
  if (!v31)
  {
    return [objc_allocWithZone(MEMORY[0x277D55058]) initWithTitle:0 sourceView:a2];
  }

  v87 = v12;
  v94 = v30;
  v32 = v31;
  swift_unknownObjectRetain();
  v93 = v32;
  result = [v32 URL];
  if (result)
  {
    v34 = result;
    v35 = [result fc_NewsArticleID];

    v92 = a1;
    if (v35)
    {
      v36 = v95;
      v37 = [*(*(v95 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_linkedContentProvider) + 16) headlineForIdentifier_];
    }

    else
    {
      v37 = 0;
      v36 = v95;
    }

    v40 = v93;
    v39 = v94;
    sub_22086C7C0(v93, v36, v94);
    sub_22086CD84(v36, v40, v39);
    if (v41)
    {
      v42 = sub_22089132C();
    }

    else
    {
      v42 = 0;
    }

    v38 = [objc_allocWithZone(MEMORY[0x277D55058]) initWithTitle:v42 sourceView:a2];

    (*(v19 + 104))(v22, *MEMORY[0x277D6E0D8], v18);
    v99 = &type metadata for Tracker;
    v100 = sub_220870F84();
    v103 = a3;
    v104 = a4;
    v105 = a5;
    v106 = a6;
    v107 = 0;
    sub_22088C4DC();
    swift_allocObject();
    v43 = a2;
    v44 = sub_22088C4BC();
    if (v37)
    {
      sub_22086D480(v38, v37, v93, v44);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v86 = v38;
      v45 = v94;
      sub_220576A98(v94, v26);
      v46 = v90;
      v47 = v91;
      v48 = (*(v90 + 48))(v26, 1, v91);
      v49 = v95;
      if (v48 != 1)
      {
        (*(v46 + 32))(v17, v26, v47);
        v38 = v86;
        sub_220870418(v86, v17, v93);
        swift_unknownObjectRelease();

        (*(v46 + 8))(v17, v47);
        sub_22087101C(v45, sub_2206AA758);
        return v38;
      }

      v91 = v44;
      sub_22087101C(v26, sub_2206AA758);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v85 = objc_opt_self();
      v90 = ObjCClassFromMetadata;
      v51 = [v85 bundleForClass_];
      sub_220884CAC();

      v52 = [objc_opt_self() ts_chevronRight];
      v53 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v54 = swift_allocObject();
      v55 = v93;
      *(v54 + 16) = v93;
      *(v54 + 24) = v53;
      v56 = objc_allocWithZone(MEMORY[0x277D55070]);
      swift_unknownObjectRetain();

      v57 = sub_22089132C();

      v100 = sub_220870FD8;
      v101 = v54;
      aBlock = MEMORY[0x277D85DD0];
      v97 = 1107296256;
      v98 = sub_22087023C;
      v99 = &block_descriptor_58;
      v58 = _Block_copy(&aBlock);

      v59 = [v56 initWithLabel:v57 image:v52 type:0 block:v58];

      _Block_release(v58);

      [v86 addActivity_];

      v60 = *(v49 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_qualifier);
      v61 = [v55 URL];
      v62 = v89;
      sub_220884E4C();

      v63 = sub_220884E3C();
      v64 = v87;
      v65 = *(v88 + 8);
      v65(v62, v87);
      LODWORD(v53) = [v60 allowOpenInSafariForURL_];

      if (v53)
      {
        v66 = [v85 bundleForClass_];
        sub_220884CAC();

        sub_2208881CC();
        v67 = sub_2208881AC();
        v68 = swift_allocObject();
        *(v68 + 16) = v55;
        v69 = objc_allocWithZone(MEMORY[0x277D55070]);
        swift_unknownObjectRetain();
        v70 = sub_22089132C();

        v100 = sub_220870FE0;
        v101 = v68;
        aBlock = MEMORY[0x277D85DD0];
        v97 = 1107296256;
        v98 = sub_22087023C;
        v99 = &block_descriptor_10;
        v71 = _Block_copy(&aBlock);

        v72 = [v69 initWithLabel:v70 image:v67 type:0 block:v71];

        v64 = v87;
        v73 = v71;
        v62 = v89;
        _Block_release(v73);

        [v86 addActivity_];
      }

      v74 = [v55 URL];
      sub_220884E4C();

      v75 = sub_220884E3C();
      v65(v62, v64);
      v76 = [v60 allowCopyingOfURL_];

      if (!v76)
      {
        sub_22087101C(v94, sub_2206AA758);
        swift_unknownObjectRelease();

        return v86;
      }

      v77 = [v85 bundleForClass_];
      v95 = sub_220884CAC();

      sub_2208881CC();
      v78 = sub_22088819C();
      v79 = [objc_opt_self() generalPasteboard];
      v80 = [v55 &selRef_setAlignment_];
      sub_220884E4C();

      sub_220884E0C();
      v65(v62, v64);
      v81 = objc_allocWithZone(MEMORY[0x277D550C8]);
      v82 = sub_22089132C();

      v83 = sub_22089132C();

      v84 = [v81 initWithLabel:v82 image:v78 type:1 pasteboard:v79 string:v83];

      v38 = v86;
      [v86 addActivity_];
      swift_unknownObjectRelease();
    }

    sub_22087101C(v94, sub_2206AA758);
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t sub_22086C7C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = a2;
  v37 = a3;
  v4 = sub_2208887CC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208714E4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088880C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220884E9C();
  v17 = [a1 URL];
  sub_220884E4C();

  sub_220888A0C();
  swift_allocObject();
  sub_2208889EC();
  v18 = MEMORY[0x277D84560];
  sub_22044781C(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v19 = swift_allocObject();
  v36 = xmmword_220899360;
  *(v19 + 16) = xmmword_220899360;
  sub_22044781C(0, &qword_28127E140, MEMORY[0x277D6CCA0], v18);
  v20 = *(sub_220888A2C() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v36;
  v23 = (v22 + v21);
  *v23 = 0x6C6F626D7973;
  v23[1] = 0xE600000000000000;
  (*(v20 + 104))();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  sub_2208889FC();

  (*(v12 + 56))(v10, 0, 1, v11);
  v25 = v32;
  (*(v12 + 32))(v32, v10, v11);
  v26 = v33;
  sub_2208887EC();
  v27 = sub_2208887BC();
  v29 = v28;
  (*(v34 + 8))(v26, v35);
  if (v29)
  {
    v38 = v27;
    v39 = v29;

    sub_220888D3C();

    (*(v12 + 8))(v25, v11);
  }

  else
  {
    (*(v12 + 8))(v25, v11);

    v24 = sub_22088685C();
    return (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  }
}

uint64_t sub_22086CD84(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = a3;
  v59 = sub_220884B5C();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v5);
  v60 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v58 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208714B0(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v62 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v64, v13);
  v63 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088685C();
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_220884E9C();
  v24 = *(v23 - 8);
  *&v26 = MEMORY[0x28223BE20](v23, v25).n128_u64[0];
  v28 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_router);
  v30 = a2;
  v31 = [a2 URL];
  sub_220884E4C();

  v32 = sub_2207860E4(v28);
  v33 = *(v24 + 8);
  v33(v28, v23);
  if (v32)
  {

    return 0;
  }

  v53[1] = v24 + 8;
  v54 = v24;
  v35 = v63;
  v56 = v30;
  v57 = v33;
  v55 = v23;
  sub_220576A98(v65, v18);
  v37 = v66;
  v36 = v67;
  if ((*(v66 + 48))(v18, 1, v67) != 1)
  {
    (*(v37 + 32))(v22, v18, v36);
    v68 = *(v29 + 112);
    sub_2205DE35C();
    v40 = *(v39 + 48);
    (*(v37 + 16))(v35, v22, v36);
    *(v35 + v40) = 0;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2204549FC();
    sub_2208712CC(&unk_281297EC0, sub_2204549FC);

    v52 = sub_22088E94C();
    sub_22087101C(v35, type metadata accessor for StocksActivity);
    (*(v37 + 8))(v22, v36);

    return 0;
  }

  sub_22087101C(v18, sub_2206AA758);
  v38 = v57;
  v41 = [v56 URL];
  sub_220884E4C();

  v42 = v62;
  sub_220884ACC();
  v43 = v55;
  v38(v28, v55);
  v44 = v61;
  v45 = *(v61 + 48);
  v46 = v59;
  if (!v45(v42, 1, v59))
  {
    sub_220884B1C();
  }

  v47 = v45(v42, 1, v46);
  v48 = v60;
  v49 = v54;
  if (!v47)
  {
    sub_220884B3C();
  }

  if (!v45(v42, 1, v46))
  {
    (*(v44 + 16))(v48, v42, v46);
    v50 = v58;
    sub_220884ADC();
    (*(v44 + 8))(v48, v46);
    if ((*(v49 + 48))(v50, 1, v43) != 1)
    {
      v51 = sub_220884E0C();
      v57(v50, v43);
      goto LABEL_15;
    }

    sub_22087101C(v50, sub_22047C320);
  }

  v51 = 0;
LABEL_15:
  sub_22087101C(v42, sub_2208714B0);
  return v51;
}

uint64_t sub_22086D480(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v140 = a4;
  v156 = a2;
  v161 = a1;
  sub_22061C840(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v148 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_22089024C();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v8);
  v145 = (&v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205B6BAC(0);
  v149 = v10;
  v159 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v137 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v12;
  MEMORY[0x28223BE20](v13, v14);
  v150 = &v136 - v15;
  sub_220870FE8(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v144 = (&v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = sub_220887C9C();
  v143 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v19);
  v142 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AAE1C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2208874DC();
  v152 = *(v29 - 8);
  v153 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v139 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v136 - v34;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v154 = objc_opt_self();
  v155 = ObjCClassFromMetadata;
  v37 = [v154 bundleForClass_];
  sub_220884CAC();

  v38 = [objc_opt_self() ts_chevronRight];
  v39 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = a3;
  v41 = objc_allocWithZone(MEMORY[0x277D55070]);

  swift_unknownObjectRetain();
  v42 = sub_22089132C();

  v167 = sub_220871578;
  v168 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v164 = 1107296256;
  v165 = sub_22087023C;
  v166 = &block_descriptor_17;
  v43 = _Block_copy(&aBlock);

  v44 = [v41 initWithLabel:v42 image:v38 type:0 block:v43];

  _Block_release(v43);

  [v161 addActivity_];

  v45 = [v156 identifier];
  sub_22089136C();

  v46 = sub_220884E9C();
  v47 = *(*(v46 - 8) + 56);
  v47(v28, 1, 1, v46);
  v48 = v35;
  v49 = v28;
  sub_2208874CC();
  v50 = *(v160 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_commandCenter);
  v162 = *(v160 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_commandCenter + 8);
  ObjectType = swift_getObjectType();
  if (qword_281297028 != -1)
  {
    swift_once();
  }

  v141 = qword_2812B6C68;
  sub_2204481D8();
  v53 = *(v52 + 48);
  v54 = &v24[*(v52 + 64)];
  v47(v49, 1, 1, v46);
  v55 = v143;
  v56 = v142;
  v57 = v158;
  (*(v143 + 104))(v142, *MEMORY[0x277D2FF08], v158);
  v151 = v48;
  sub_22088764C();
  (*(v55 + 8))(v56, v57);
  sub_22087101C(v49, sub_22047C320);
  *&v24[v53] = 0;
  type metadata accessor for StocksActivity.Article(0);
  *v54 = 0u;
  *(v54 + 1) = 0u;
  *(v54 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v58 = type metadata accessor for StocksActivity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v58 - 8) + 56))(v24, 0, 1, v58);
  LOBYTE(v58) = sub_22088B7DC();
  sub_22087101C(v24, sub_2204AAE1C);
  v157 = ObjectType;
  v158 = v50;
  if (v58)
  {
    v59 = [v154 bundleForClass_];
    sub_220884CAC();

    sub_22088E1DC();
    v60 = sub_22088E1CC();
    v61 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v62 = v152;
    v63 = v139;
    v64 = v153;
    (*(v152 + 16))(v139, v151, v153);
    v65 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v61;
    (*(v62 + 32))(v66 + v65, v63, v64);
    v67 = objc_allocWithZone(MEMORY[0x277D55070]);

    v68 = sub_22089132C();

    v167 = sub_2208711E0;
    v168 = v66;
    aBlock = MEMORY[0x277D85DD0];
    v164 = 1107296256;
    v165 = sub_22087023C;
    v166 = &block_descriptor_52_0;
    v69 = _Block_copy(&aBlock);

    v70 = [v67 initWithLabel:v68 image:v60 type:1 block:v69];

    _Block_release(v69);

    [v161 addActivity_];
  }

  sub_22088E4CC();
  sub_22088E2FC();
  v71 = v156;
  aBlock = v156;
  swift_unknownObjectRetain();
  v72 = sub_22088B7DC();
  swift_unknownObjectRelease();

  if (v72)
  {
    v73 = [v154 bundleForClass_];
    sub_220884CAC();

    sub_2208881CC();
    v74 = sub_2208881AC();
    v75 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v71;
    v77 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v78 = sub_22089132C();

    v167 = sub_2208710E4;
    v168 = v76;
    aBlock = MEMORY[0x277D85DD0];
    v164 = 1107296256;
    v165 = sub_22087023C;
    v166 = &block_descriptor_45;
    v79 = _Block_copy(&aBlock);

    v80 = [v77 initWithLabel:v78 image:v74 type:1 block:v79];

    _Block_release(v79);

    [v161 addActivity_];
  }

  sub_22088E40C();
  sub_2205DB4B8(0, v81);
  v83 = *(v82 + 64);
  v84 = v144;
  v85 = (v144 + *(v82 + 80));
  *v144 = v71;
  v86 = *MEMORY[0x277D33970];
  v87 = sub_22089065C();
  (*(*(v87 - 8) + 104))(v84 + v83, v86, v87);
  *v85 = 0;
  v85[1] = 0;
  *(v84 + 8) = sub_22087029C;
  *(v84 + 16) = 0;
  v88 = *MEMORY[0x277D33958];
  v89 = sub_22089064C();
  v90 = *(v89 - 8);
  (*(v90 + 104))(v84, v88, v89);
  (*(v90 + 56))(v84, 0, 1, v89);
  swift_unknownObjectRetain();
  LOBYTE(v88) = sub_22088B7DC();

  sub_22087101C(v84, sub_220870FE8);
  v91 = v159;
  if (v88)
  {
    v92 = [v154 bundleForClass_];
    sub_220884CAC();

    sub_2208881CC();
    v93 = sub_2208881BC();
    v94 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v95 = swift_allocObject();
    v95[2] = v94;
    v95[3] = v71;
    v95[4] = v140;
    v96 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v97 = sub_22089132C();

    v167 = sub_2208710D8;
    v168 = v95;
    aBlock = MEMORY[0x277D85DD0];
    v164 = 1107296256;
    v165 = sub_22087023C;
    v166 = &block_descriptor_38;
    v98 = _Block_copy(&aBlock);

    v99 = [v96 initWithLabel:v97 image:v93 type:1 block:v98];

    _Block_release(v98);

    [v161 addActivity_];

    v91 = v159;
  }

  sub_22088E2DC();
  aBlock = v71;
  swift_unknownObjectRetain();
  v100 = sub_22088B7DC();
  swift_unknownObjectRelease();

  v101 = v150;
  if (v100)
  {
    v102 = [v154 bundleForClass_];
    sub_220884CAC();

    sub_2208881CC();
    v103 = sub_22088819C();
    v104 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = v71;
    v106 = v101;
    v107 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v108 = sub_22089132C();

    v167 = sub_2208710A8;
    v168 = v105;
    aBlock = MEMORY[0x277D85DD0];
    v164 = 1107296256;
    v165 = sub_22087023C;
    v166 = &block_descriptor_31;
    v109 = _Block_copy(&aBlock);

    v110 = [v107 initWithLabel:v108 image:v103 type:1 block:v109];

    _Block_release(v109);

    [v161 addActivity_];

    v91 = v159;

    v101 = v106;
  }

  v111 = v145;
  *v145 = v71;
  (*(v146 + 104))(v111, *MEMORY[0x277D33370], v147);
  swift_unknownObjectRetain();
  sub_22089058C();
  sub_22088E3EC();
  v112 = v148;
  v113 = v149;
  v156 = *(v91 + 16);
  (v156)(v148, v101, v149);
  v114 = v101;
  v115 = *(v91 + 56);
  v115(v112, 0, 1, v113);
  LOBYTE(v111) = sub_22088B7DC();

  sub_22087101C(v112, sub_22061C840);
  if ((v111 & 1) == 0)
  {
    (*(v91 + 8))(v101, v113);
    return (*(v152 + 8))(v151, v153);
  }

  sub_22088E3EC();
  v116 = v156;
  (v156)(v112, v114, v113);
  v115(v112, 0, 1, v113);
  sub_220467D64();
  sub_22088B78C();

  sub_22087101C(v112, sub_22061C840);
  v117 = aBlock;
  v118 = v114;
  v119 = v116;
  v120 = v113;
  if (aBlock == 2)
  {
    (*(v159 + 8))(v118, v113);
    return (*(v152 + 8))(v151, v153);
  }

  sub_22086F7F0();
  sub_220890BFC();
  if (v117)
  {
    v122 = sub_220890BCC();
  }

  else
  {
    v122 = sub_220890BDC();
  }

  v123 = v122;
  v124 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v125 = v137;
  v126 = v150;
  v119(v137, v150, v120);
  v127 = v120;
  v128 = v159;
  v129 = (*(v159 + 80) + 24) & ~*(v159 + 80);
  v130 = swift_allocObject();
  *(v130 + 16) = v124;
  (*(v128 + 32))(v130 + v129, v125, v127);
  v131 = objc_allocWithZone(MEMORY[0x277D55070]);
  v132 = v123;

  v133 = sub_22089132C();

  v167 = sub_22087107C;
  v168 = v130;
  aBlock = MEMORY[0x277D85DD0];
  v164 = 1107296256;
  v165 = sub_22087023C;
  v166 = &block_descriptor_24_2;
  v134 = _Block_copy(&aBlock);

  v135 = [v131 initWithLabel:v133 image:v132 type:1 block:v134];

  _Block_release(v134);

  [v161 addActivity_];

  (*(v128 + 8))(v126, v127);
  (*(v152 + 8))(v151, v153);
}

uint64_t sub_22086EAB8(uint64_t a1, void *a2, uint64_t a3)
{
  v32[1] = a3;
  v4 = sub_2208878AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_220884E9C();
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v10);
  v33 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2208877BC();
  v35 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v32 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v32 - v22;
  v36 = 0;
  sub_2208712CC(&qword_27CF5A880, MEMORY[0x277D2FBB0]);
  sub_220892A8C();
  if ([a2 openInBrowser])
  {
    sub_22088779C();
    sub_22086B7E0(v19, v15);
    v32[0] = v9;
    v24 = v8;
    v25 = v5;
    v26 = v4;
    v27 = *(v35 + 8);
    v27(v15, v12);
    v27(v19, v12);
    v4 = v26;
    v5 = v25;
    v8 = v24;
    v9 = v32[0];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();

  v29 = [a2 URL];
  v30 = v33;
  sub_220884E4C();

  (*(v5 + 104))(v8, *MEMORY[0x277D2FC50], v4);
  sub_2207842F8(v30, v8, v23);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v30, v34);
  return (*(v35 + 8))(v23, v12);
}

void sub_22086EE60(uint64_t a1, void *a2)
{
  v3 = sub_220884E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedApplication];
  v9 = [a2 URL];
  sub_220884E4C();

  v10 = sub_220884E3C();
  (*(v4 + 8))(v7, v3);
  sub_2205CE854(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2208712CC(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
  v11 = sub_22089125C();

  [v8 openURL:v10 options:v11 completionHandler:0];
}

uint64_t sub_22086F12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[2] = a3;
  v3 = sub_220887C9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AAE1C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v23[1] = *&Strong[OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_commandCenter + 8];
  swift_unknownObjectRetain();

  swift_getObjectType();
  if (qword_281297028 != -1)
  {
    swift_once();
  }

  sub_2204481D8();
  v18 = *(v17 + 48);
  v19 = &v15[*(v17 + 64)];
  v20 = sub_220884E9C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  (*(v4 + 104))(v7, *MEMORY[0x277D2FF08], v3);
  sub_22088764C();
  (*(v4 + 8))(v7, v3);
  sub_22087101C(v11, sub_22047C320);
  *&v15[v18] = 2;
  type metadata accessor for StocksActivity.Article(0);
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for StocksActivity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
  sub_22088B81C();
  sub_22087101C(v15, sub_2204AAE1C);
  return swift_unknownObjectRelease();
}

uint64_t sub_22086F49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220870FE8(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_22088E40C();
  sub_2205DB4B8(0, v9);
  v11 = *(v10 + 64);
  v12 = &v7[*(v10 + 80)];
  *v7 = a3;
  v13 = *MEMORY[0x277D33970];
  v14 = sub_22089065C();
  (*(*(v14 - 8) + 104))(&v7[v11], v13, v14);
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v7 + 1) = sub_22087029C;
  *(v7 + 2) = 0;
  v15 = *MEMORY[0x277D33958];
  v16 = sub_22089064C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  swift_unknownObjectRetain();
  sub_22088B7AC();
  sub_22087101C(v7, sub_220870FE8);
  swift_unknownObjectRelease();
}

uint64_t sub_22086F6F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_22088E4CC();
  a4();
  swift_unknownObjectRetain();
  sub_22088B81C();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_22086F7F0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_22086F940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22061C840(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_22088E3EC();
  sub_2205B6BAC(0);
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v7, a3, v9);
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_22088B81C();
  sub_22087101C(v7, sub_22061C840);
  swift_unknownObjectRelease();
}

uint64_t sub_22086FAF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2208877BC();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2208878AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220884E9C();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();

  v18 = [a3 URL];
  sub_220884E4C();

  (*(v9 + 104))(v12, *MEMORY[0x277D2FC50], v8);
  v23 = MEMORY[0x277D84F90];
  sub_2208712CC(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
  sub_220871298(0);
  sub_2208712CC(&qword_27CF599C0, sub_220871298);
  sub_2208923FC();
  sub_2207842F8(v16, v12, v7);

  (*(v22 + 8))(v7, v4);
  (*(v9 + 8))(v12, v8);
  return (*(v13 + 8))(v16, v21);
}

uint64_t sub_22086FE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204AAE1C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  if (qword_281297028 != -1)
  {
    swift_once();
  }

  sub_2205DE35C();
  v10 = *(v9 + 48);
  v11 = sub_22088685C();
  (*(*(v11 - 8) + 16))(v7, a3, v11);
  *&v7[v10] = 2;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for StocksActivity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  sub_22088B81C();
  sub_22087101C(v7, sub_2204AAE1C);
  return swift_unknownObjectRelease();
}

uint64_t sub_22087004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_22088B81C();
  sub_22087101C(v7, sub_2206AA758);
  return swift_unknownObjectRelease();
}

uint64_t sub_22087023C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2208702A8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

void sub_220870418(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22088685C();
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v10);
  v72 = v11;
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AAE1C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = objc_opt_self();
  v70 = ObjCClassFromMetadata;
  v17 = [v69 bundleForClass_];
  sub_220884CAC();

  v18 = [objc_opt_self() ts_chevronRight];
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  v21 = objc_allocWithZone(MEMORY[0x277D55070]);

  swift_unknownObjectRetain();
  v22 = sub_22089132C();

  v87 = sub_22087136C;
  v88 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_22087023C;
  v86 = &block_descriptor_59;
  v23 = _Block_copy(&aBlock);

  v24 = [v21 initWithLabel:v22 image:v18 type:0 block:v23];

  _Block_release(v23);

  v75 = a1;
  [a1 addActivity_];

  v74 = v4;
  v25 = v4 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_commandCenter;
  v27 = *(v4 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_commandCenter);
  v26 = *(v25 + 8);
  ObjectType = swift_getObjectType();
  if (qword_281297028 != -1)
  {
    swift_once();
  }

  sub_2205DE35C();
  v29 = *(v28 + 48);
  v30 = v80;
  v32 = v80 + 16;
  v31 = *(v80 + 16);
  v33 = v82;
  v34 = v76;
  v31(v15, v82, v76);
  *&v15[v29] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  v35 = type metadata accessor for StocksActivity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
  v77 = v27;
  v78 = v26;
  v36 = sub_22088B7DC();
  sub_22087101C(v15, sub_2204AAE1C);
  v37 = v34;
  v38 = v30;
  v71 = v31;
  if (v36)
  {
    v39 = [v69 bundleForClass_];
    v70 = sub_220884CAC();

    sub_22088E1DC();
    v40 = sub_22088E1CC();
    v41 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v42 = v73;
    v31(v73, v82, v37);
    v43 = v38;
    v44 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v41;
    (*(v43 + 32))(v45 + v44, v42, v37);
    v46 = objc_allocWithZone(MEMORY[0x277D55070]);

    v47 = sub_22089132C();

    v87 = sub_2208713B4;
    v88 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_22087023C;
    v86 = &block_descriptor_73;
    v48 = _Block_copy(&aBlock);

    v49 = [v46 initWithLabel:v47 image:v40 type:1 block:v48];

    _Block_release(v48);

    [v75 addActivity_];
    v33 = v82;

    v31 = v71;

    v38 = v43;
  }

  v50 = v79;
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  v31(v50, v33, v37);
  v76 = v32;
  v51 = v33;
  v52 = v31;
  v53 = *(v38 + 56);
  v53(v50, 0, 1, v37);
  v54 = sub_22088B7DC();
  sub_22087101C(v50, sub_2206AA758);
  if (v54)
  {
    v52(v50, v51, v37);
    v53(v50, 0, 1, v37);
    sub_2204654EC();
    sub_22088B78C();
    sub_22087101C(v50, sub_2206AA758);
    v55 = aBlock;
    if (aBlock != 2)
    {
      sub_2208702A8();
      if ((v55 & 0x100) != 0)
      {
        v56 = v80;
        if (qword_27CF55868 == -1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v56 = v80;
        if ((v55 & 1) == 0)
        {
          if (qword_27CF55870 != -1)
          {
            swift_once();
          }

          v57 = &qword_27CF6CEA0;
          goto LABEL_18;
        }

        if (qword_27CF55868 == -1)
        {
LABEL_11:
          v57 = &qword_27CF6CE98;
LABEL_18:
          v58 = *v57;
          v59 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v60 = v73;
          v71(v73, v82, v37);
          v61 = (*(v56 + 80) + 24) & ~*(v56 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = v59;
          (*(v56 + 32))(v62 + v61, v60, v37);
          v63 = objc_allocWithZone(MEMORY[0x277D55070]);
          v64 = v58;

          v65 = sub_22089132C();

          v87 = sub_220871388;
          v88 = v62;
          aBlock = MEMORY[0x277D85DD0];
          v84 = 1107296256;
          v85 = sub_22087023C;
          v86 = &block_descriptor_66;
          v66 = _Block_copy(&aBlock);

          v67 = [v63 initWithLabel:v65 image:v64 type:1 block:v66];

          _Block_release(v66);

          [v75 addActivity_];

          return;
        }
      }

      swift_once();
      goto LABEL_11;
    }
  }
}

id sub_220870EB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_router);
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_handler, v8);
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI26LinkActionActivityProvider_linkedContentProvider);
  v3 = type metadata accessor for ActionPreviewActivity();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_router] = v1;
  sub_22046DA2C(v8, &v4[OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler]);
  *&v4[OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_linkedContentProvider] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_220870F84()
{
  result = qword_27CF5A870;
  if (!qword_27CF5A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A870);
  }

  return result;
}

uint64_t sub_22087101C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_20Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_22087120C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_2208712CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_3Tm_3(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

void sub_2208713E0()
{
  if (!qword_27CF5A888)
  {
    sub_2208877BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A888);
    }
  }
}

uint64_t sub_22087144C(uint64_t a1, uint64_t a2)
{
  sub_2208713E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22087157C()
{
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ForYouFeedConfig();
  sub_2205209B0(v0 + *(v5 + 20), v4, sub_22046EAA0);
  v6 = sub_2208913DC();
  v8 = v7;
  v14 = 45;
  v15 = 0xE100000000000000;
  type metadata accessor for ForYouFeedServiceConfig();
  v13[1] = sub_220886A2C();
  v9 = sub_22089287C();
  MEMORY[0x223D89680](v9);

  v10 = v14;
  v11 = v15;
  v14 = v6;
  v15 = v8;

  MEMORY[0x223D89680](v10, v11);

  return v14;
}

uint64_t sub_2208716BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = sub_22088F87C();
  v37 = *(v40 - 8);
  v6 = v37;
  MEMORY[0x28223BE20](v40, v7);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220885ACC();
  v38 = *(v9 - 8);
  v10 = v38;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ForYouFeedContentConfig();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ForYouFeedContentConfig;
  sub_2205209B0(a1, v35, type metadata accessor for ForYouFeedContentConfig);
  v17 = type metadata accessor for ForYouFeedServiceConfig();
  v18 = v17[7];
  v19 = *(v2 + v17[6]);
  v33 = *(v10 + 16);
  v34 = v19;
  v33(v13, v2 + v18, v9);
  v20 = v17[8];
  v32 = *(v6 + 16);
  v22 = v39;
  v21 = v40;
  v32(v39, v2 + v20, v40);
  v23 = v17[10];
  v24 = sub_220886A4C();
  (*(*(v24 - 8) + 16))(a2 + v23, v3 + v23, v24);
  v25 = v35;
  sub_2205209B0(v35, a2, v36);
  v26 = v34;
  *(a2 + v17[6]) = v34;
  v33((a2 + v17[7]), v13, v9);
  v32((a2 + v17[8]), v22, v21);
  v27 = v26;
  sub_220885A4C();
  v29 = v28;
  (*(v37 + 8))(v22, v21);
  (*(v38 + 8))(v13, v9);
  result = sub_2206EC354(v25);
  *(a2 + v17[9]) = v29;
  return result;
}

uint64_t sub_2208719C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22088F87C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220871A50@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32E38];
  v3 = sub_22088FF3C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_220871B24()
{
  result = qword_2812942A0;
  if (!qword_2812942A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812942A0);
  }

  return result;
}

uint64_t sub_220871B78()
{
  sub_22088ED5C();
}

uint64_t CellAutomation.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_22088AF6C();
  a3[1] = v6;
  v7 = type metadata accessor for CellAutomation();
  v8 = *(*(a2 - 8) + 32);
  v9 = a3 + *(v7 + 36);

  return v8(v9, a1, a2);
}

uint64_t CellAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_220871D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_220871E90(char a1)
{
  sub_2208929EC();
  MEMORY[0x223D8ABA0](a1 & 1);
  return sub_220892A2C();
}

uint64_t sub_220871ED8(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_220871F2C()
{
  sub_2208929EC();
  sub_220871E68(v2, *v0);
  return sub_220892A2C();
}

uint64_t sub_220871F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220871D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220871FB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22063BF5C();
  *a1 = result;
  return result;
}

uint64_t sub_220871FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_220872034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CellAutomation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[0] = *(a2 + 24);
  v12[1] = v4;
  type metadata accessor for CellAutomation.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_22089284C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220892A5C();
  v14 = 0;
  v10 = v12[3];
  sub_22089280C();
  if (!v10)
  {
    v13 = 1;
    sub_22089283C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CellAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CellAutomation.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_2208927BC();
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v8);
  v10 = &v23 - v9;
  v30 = a3;
  v11 = type metadata accessor for CellAutomation();
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v23 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v32;
  sub_220892A4C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v24 = v11;
  v16 = v28;
  v17 = v29;
  v34 = 0;
  v18 = v14;
  *v14 = sub_22089277C();
  v14[1] = v19;
  v23 = v19;
  v33 = 1;
  sub_22089279C();
  (*(v16 + 8))(v10, v31);
  v20 = v24;
  (*(v26 + 32))(v14 + *(v24 + 36), v17, a2);
  v21 = v25;
  (*(v25 + 16))(v27, v18, v20);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return (*(v21 + 8))(v18, v20);
}

uint64_t sub_220872604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_220872788(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

BOOL sub_220872A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSummaryTimeRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454E0C(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220872DFC();
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v30 = v15;
    if ((*(a1 + 48) != *(a2 + 48) || v20 != v21) && (sub_2208928BC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v30 = v15;
    if (v21)
    {
      return 0;
    }
  }

  v29 = v5;
  v28 = type metadata accessor for QuoteViewModel();
  sub_220885D4C();
  sub_220872E60();
  sub_22089167C();
  sub_22089167C();
  if (v32 != v31)
  {
    return 0;
  }

  v22 = *(v28 + 24);
  v23 = *(v30 + 48);
  sub_220512F60(a1 + v22, v17);
  sub_220512F60(a2 + v22, &v17[v23]);
  v24 = *(v29 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_220512F60(v17, v12);
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_220872EB8(v12, type metadata accessor for QuoteSummaryTimeRange);
      goto LABEL_26;
    }

    sub_2207284E8(&v17[v23], v8);
    v26 = sub_22069FEB8(v12, v8);
    sub_220872EB8(v8, type metadata accessor for QuoteSummaryTimeRange);
    sub_220872EB8(v12, type metadata accessor for QuoteSummaryTimeRange);
    sub_220872EB8(v17, sub_220454E0C);
    return (v26 & 1) != 0;
  }

  if (v24(&v17[v23], 1, v4) != 1)
  {
LABEL_26:
    sub_220872EB8(v17, sub_220872DFC);
    return 0;
  }

  sub_220872EB8(v17, sub_220454E0C);
  return 1;
}

void sub_220872DFC()
{
  if (!qword_28128D970)
  {
    sub_220454E0C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28128D970);
    }
  }
}

unint64_t sub_220872E60()
{
  result = qword_2812992E0;
  if (!qword_2812992E0)
  {
    sub_220885D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812992E0);
  }

  return result;
}

uint64_t sub_220872EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220872F18()
{

  sub_220888DBC();

  v1 = v5;
  if (v5 == 2)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_appleAccount) activeiTunesAccount];
    if (v2)
    {
      v3 = v2;
      v1 = [v2 isAuthenticated];
    }

    else
    {
      v1 = 0;
    }

    sub_220888DCC();
  }

  return v1 & 1;
}

uint64_t sub_220872FE0()
{
  v1 = sub_22088516C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - v8;
  v10 = sub_2208864BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047D0A0(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22087347C(v18);
  if ((*(v11 + 48))(v18, 1, v10))
  {
    sub_22047EC94(v18, sub_22047D0A0);
    v19 = 0;
  }

  else
  {
    (*(v11 + 16))(v14, v18, v10);
    sub_22047EC94(v18, sub_22047D0A0);
    sub_22088647C();
    v21 = v20;
    (*(v11 + 8))(v14, v10);
    v36 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager__appReviewRequestLastSeenDate;

    sub_220888DBC();

    sub_22088508C();
    v22 = *(v2 + 8);
    v22(v5, v1);
    sub_22088512C();
    v19 = sub_2208850BC();
    v22(v5, v1);
    v22(v9, v1);
    if (qword_281298080 != -1)
    {
      swift_once();
    }

    v23 = sub_22088A84C();
    __swift_project_value_buffer(v23, qword_281298088);
    v24 = v0;
    v25 = sub_22088A82C();
    v26 = sub_220891AFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v27 = 67109634;
      *(v27 + 4) = v19 & 1;
      *(v27 + 8) = 2048;
      *(v27 + 10) = v21;
      *(v27 + 18) = 2080;

      sub_220888DBC();

      sub_22046287C(&qword_281299488, MEMORY[0x277CC9578]);
      v28 = sub_22089287C();
      v30 = v29;
      v22(v9, v1);
      v31 = sub_2204A7B78(v28, v30, &v37);

      *(v27 + 20) = v31;
      _os_log_impl(&dword_22043F000, v25, v26, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%g]. Last App Review Request Date [%s]", v27, 0x1Cu);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223D8B7F0](v32, -1, -1);
      MEMORY[0x223D8B7F0](v27, -1, -1);
    }
  }

  return v19 & 1;
}

uint64_t sub_22087347C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220885ACC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047CF48(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - v14;
  v16 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager____lazy_storage___appReviewPromptConfig;
  swift_beginAccess();
  sub_22047EA6C(v1 + v16, v15, sub_22047CF48);
  sub_22047D0A0(0);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v15, 1, v17) != 1)
  {
    return sub_220874468(v15, a1);
  }

  sub_22047EC94(v15, sub_22047CF48);
  v22 = v3;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_appConfigurationManager), *(v1 + OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_appConfigurationManager + 24));
  v23 = v1;
  sub_22088641C();
  sub_2208858EC();
  (*(v4 + 8))(v7, v22);
  sub_22047EA6C(a1, v11, sub_22047D0A0);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v23;
  swift_beginAccess();
  sub_220874404(v11, v20 + v16);
  return swift_endAccess();
}

void sub_220873728()
{
  v1 = v0;
  sub_22047D0A0(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208864BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298080 != -1)
  {
    swift_once();
  }

  v11 = sub_22088A84C();
  __swift_project_value_buffer(v11, qword_281298088);
  v12 = sub_22088A82C();
  v13 = sub_220891AFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22043F000, v12, v13, "Determining if review prompt needs to be displayed", v14, 2u);
    MEMORY[0x223D8B7F0](v14, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store), *(v1 + OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store + 24));
  v15 = off_283415800[0];
  type metadata accessor for AppReviewRequestStore();
  v16 = v15();
  if (v19)
  {
    v47 = sub_22088A82C();
    v20 = sub_220891AFC();
    if (os_log_type_enabled(v47, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22043F000, v47, v20, "No stored state found. Skipping processing", v21, 2u);
      MEMORY[0x223D8B7F0](v21, -1, -1);
    }

    v22 = v47;

    return;
  }

  v23 = v17;
  v47 = v16;
  v24 = v18;
  sub_22087347C(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v28 = sub_22088648C();
    v29 = sub_2208864AC();
    v30 = sub_22088649C();
    v46 = v28;
    if (v23 >= v28)
    {
      v32 = sub_22088A82C();
      v37 = sub_220891AFC();
      if (!os_log_type_enabled(v32, v37))
      {
        goto LABEL_28;
      }

      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v46;
      _os_log_impl(&dword_22043F000, v32, v37, "Reached minNumberOfSymbolViews %ld", v38, 0xCu);
      v39 = v38;
    }

    else
    {
      v45 = v29;
      if (v47 < v29)
      {
        v31 = v30;
        v32 = sub_22088A82C();
        v33 = sub_220891AFC();
        v34 = os_log_type_enabled(v32, v33);
        if (v24 < v31)
        {
          if (v34)
          {
            v35 = swift_slowAlloc();
            *v35 = 134219264;
            *(v35 + 4) = v23;
            *(v35 + 12) = 2048;
            v36 = v47;
            *(v35 + 14) = v46;
            *(v35 + 22) = 2048;
            *(v35 + 24) = v36;
            *(v35 + 32) = 2048;
            *(v35 + 34) = v45;
            *(v35 + 42) = 2048;
            *(v35 + 44) = v24;
            *(v35 + 52) = 2048;
            *(v35 + 54) = v31;
            _os_log_impl(&dword_22043F000, v32, v33, "Skipping review prompt request. Threshold not reached: symbol views %ld/%ld, symbols added %ld/%ld, reads %ld/%ld", v35, 0x3Eu);
            MEMORY[0x223D8B7F0](v35, -1, -1);
          }

          goto LABEL_29;
        }

        if (v34)
        {
          v42 = v31;
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = v42;
          _os_log_impl(&dword_22043F000, v32, v33, "Reached minNumberOfArticleReads %ld", v43, 0xCu);
          v39 = v43;
          goto LABEL_27;
        }

LABEL_28:

        sub_220873D18();
LABEL_29:
        (*(v7 + 8))(v10, v6);
        return;
      }

      v32 = sub_22088A82C();
      v40 = sub_220891AFC();
      if (!os_log_type_enabled(v32, v40))
      {
        goto LABEL_28;
      }

      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v45;
      _os_log_impl(&dword_22043F000, v32, v40, "Reached minNumberOfSymbolsAddedToWatchlist %ld", v41, 0xCu);
      v39 = v41;
    }

LABEL_27:
    MEMORY[0x223D8B7F0](v39, -1, -1);
    goto LABEL_28;
  }

  sub_22047EC94(v5, sub_22047D0A0);
  v25 = sub_22088A82C();
  v26 = sub_220891AFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22043F000, v25, v26, "No appReviewPromptConfig found. Skipping processing", v27, 2u);
    MEMORY[0x223D8B7F0](v27, -1, -1);
  }
}

void sub_220873D18()
{
  sub_22044D56C(0, &qword_28127E880);
  v0 = sub_220891ABC();
  if (v0)
  {
    v1 = v0;
    if (qword_281298080 != -1)
    {
      swift_once();
    }

    v2 = sub_22088A84C();
    __swift_project_value_buffer(v2, qword_281298088);
    v3 = sub_22088A82C();
    v4 = sub_220891AFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22043F000, v3, v4, "Requesting review prompt", v5, 2u);
      MEMORY[0x223D8B7F0](v5, -1, -1);
    }

    sub_22088726C();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;

    v8 = v1;
    sub_220888FEC();
  }

  else
  {
    if (qword_281298080 != -1)
    {
      swift_once();
    }

    v9 = sub_22088A84C();
    __swift_project_value_buffer(v9, qword_281298088);
    oslog = sub_22088A82C();
    v10 = sub_220891AFC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22043F000, oslog, v10, "No active window scene! Skipping review prompt", v11, 2u);
      MEMORY[0x223D8B7F0](v11, -1, -1);
    }
  }
}

uint64_t sub_220873FBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088516C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_22088512C();
    __swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_userInfo], *&v17[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_userInfo + 24]);
    sub_2208856BC();
    v18 = *(v4 + 16);
    v18(v11, v15, v3);
    v18(v7, v11, v3);

    sub_220888DCC();

    v19 = *(v4 + 8);
    v19(v11, v3);
    __swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store], *&v17[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store + 24]);
    v20 = off_283415810;
    type metadata accessor for AppReviewRequestStore();
    v20();
    [objc_opt_self() requestReviewInScene_];

    return (v19)(v15, v3);
  }

  return result;
}

uint64_t sub_220874210()
{
  sub_220889DCC();
  sub_22046287C(&unk_27CF5A9D8, MEMORY[0x277D68D18]);
  memset(v1, 0, sizeof(v1));
  sub_220886F3C();
  return sub_22047EC94(v1, sub_22055F87C);
}

uint64_t sub_220874404(uint64_t a1, uint64_t a2)
{
  sub_22047CF48(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220874468(uint64_t a1, uint64_t a2)
{
  sub_22047D0A0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220874508(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_220457E88(0, &qword_28127E288, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D84460]);
    v2 = sub_2208926DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_220650DF8();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2204A62A4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2204A62A4(v29, v30);
    result = sub_2208924BC();
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
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2204A62A4(v30, (*(v2 + 56) + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

uint64_t sub_2208747E8(uint64_t a1)
{
  v48 = sub_220888C8C();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v2);
  v47 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220874E64();
  v46 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v44 = v41 - v9;
  v50 = a1;
  if (*(a1 + 16))
  {
    sub_220457E88(0, &qword_28127E288, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D84460]);
    v10 = sub_2208926DC();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v50 + 64;
  v12 = 1 << *(v50 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v50 + 64);
  v15 = (v12 + 63) >> 6;
  v41[2] = v49 + 16;
  v41[1] = v49 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v43 = v10;
  v42 = v11;
  v19 = v49;
  v20 = v46;
  while (v14)
  {
LABEL_15:
    v24 = __clz(__rbit64(v14)) | (v18 << 6);
    v25 = (*(v50 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = v44;
    v29 = v48;
    (*(v19 + 16))(&v44[*(v20 + 48)], *(v50 + 56) + *(v19 + 72) * v24, v48);
    *v28 = v27;
    v28[1] = v26;
    v30 = v28;
    v31 = v45;
    sub_220874ED0(v30, v45);
    v32 = *(v20 + 48);
    v33 = *(v31 + 1);
    *&v59 = *v31;
    *(&v59 + 1) = v33;

    swift_dynamicCast();
    (*(v19 + 32))(v47, &v31[v32], v29);
    swift_dynamicCast();
    v55 = v51;
    v56 = v52;
    v57 = v53;
    sub_2204A62A4(&v54, v58);
    v51 = v55;
    v52 = v56;
    v53 = v57;
    sub_2204A62A4(v58, &v59);
    v10 = v43;
    result = sub_2208924BC();
    v34 = -1 << *(v10 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v34) >> 6;
      v11 = v42;
      while (++v36 != v38 || (v37 & 1) == 0)
      {
        v39 = v36 == v38;
        if (v36 == v38)
        {
          v36 = 0;
        }

        v37 |= v39;
        v40 = *(v16 + 8 * v36);
        if (v40 != -1)
        {
          v21 = __clz(__rbit64(~v40)) + (v36 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v21 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    v11 = v42;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v22 = *(v10 + 48) + 40 * v21;
    *v22 = v51;
    *(v22 + 16) = v52;
    *(v22 + 32) = v53;
    result = sub_2204A62A4(&v59, (*(v10 + 56) + 32 * v21));
    ++*(v10 + 16);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v23);
    ++v18;
    if (v14)
    {
      v18 = v23;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_220874CD0(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_22088A69C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.personalizationConfiguration.getter(v7);
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

id AppConfiguration.fcPersonalizationConfiguration.getter()
{
  v0 = sub_2208858BC();
  if (!v0)
  {
    return 0;
  }

  sub_2208747E8(v0);

  v1 = objc_allocWithZone(MEMORY[0x277D31150]);
  v2 = sub_22089125C();

  v3 = [v1 initWithDictionary_];

  return v3;
}

void sub_220874E64()
{
  if (!qword_27CF5A9E8)
  {
    sub_220888C8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A9E8);
    }
  }
}

uint64_t sub_220874ED0(uint64_t a1, uint64_t a2)
{
  sub_220874E64();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220874F34(uint64_t a1, uint64_t a2)
{
  sub_220874F98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220874F98()
{
  if (!qword_27CF5A9F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A9F0);
    }
  }
}

uint64_t type metadata accessor for StockFeedMastheadViewLayoutOptions()
{
  result = qword_281282550;
  if (!qword_281282550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220875070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = sub_220887D2C();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22087578C(0, &unk_27CF5AA00, MEMORY[0x277D2FFA0]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v49 - v8;
  sub_22087578C(0, &qword_27CF59B88, MEMORY[0x277D68648]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v52 = &v49 - v12;
  v13 = sub_2208895BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220887D3C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v49 - v25;
  *&result = COERCE_DOUBLE(sub_220887D0C());
  if (v28)
  {
    v51 = 0;
    goto LABEL_7;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*&result <= -2147483650.0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*&result < 2147483650.0)
  {
    v51 = *&result;
LABEL_7:
    *&result = COERCE_DOUBLE(sub_220887CEC());
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        sub_220887CFC();
        (*(v19 + 32))(v22, v26, v18);
        v30 = (*(v19 + 88))(v22, v18);
        if (v30 == *MEMORY[0x277D2FFB8])
        {
          v31 = MEMORY[0x277D68660];
        }

        else if (v30 == *MEMORY[0x277D2FFC0])
        {
          v31 = MEMORY[0x277D68668];
        }

        else if (v30 == *MEMORY[0x277D2FFD0])
        {
          v31 = MEMORY[0x277D68678];
        }

        else if (v30 == *MEMORY[0x277D2FFB0])
        {
          v31 = MEMORY[0x277D68690];
        }

        else
        {
          if (v30 != *MEMORY[0x277D2FFA8])
          {
            v33 = *(v14 + 104);
            if (v30 != *MEMORY[0x277D2FFC8])
            {
              v33(v17, *MEMORY[0x277D68680], v13);
              (*(v19 + 8))(v22, v18);
LABEL_22:
              sub_220887CDC();
              v34 = v53;
              v35 = (*(v3 + 48))(v9, 1, v53);
              v36 = v52;
              if (v35 == 1)
              {
                sub_2208757E0(v9);
                v37 = sub_2208895AC();
                (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
LABEL_31:
                sub_2208899BC();
                v46 = sub_220887D1C();
                *&result = COERCE_DOUBLE((*(*(v46 - 8) + 8))(a1, v46));
                return result;
              }

              v38 = v50;
              (*(v3 + 16))(v50, v9, v34);
              v39 = (*(v3 + 88))(v38, v34);
              if (v39 == *MEMORY[0x277D2FF90])
              {
                v40 = MEMORY[0x277D68638];
              }

              else
              {
                if (v39 != *MEMORY[0x277D2FF98])
                {
                  v47 = *MEMORY[0x277D2FF88];
                  v48 = v39;
                  v42 = sub_2208895AC();
                  v43 = *(*(v42 - 8) + 104);
                  if (v48 != v47)
                  {
                    v43(v36, *MEMORY[0x277D68638], v42);
                    (*(v3 + 8))(v50, v34);
                    goto LABEL_30;
                  }

                  v45 = *MEMORY[0x277D68630];
                  v44 = v36;
LABEL_29:
                  v43(v44, v45, v42);
LABEL_30:
                  (*(v3 + 8))(v9, v34);
                  sub_2208895AC();
                  (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
                  goto LABEL_31;
                }

                v40 = MEMORY[0x277D68640];
              }

              v41 = *v40;
              v42 = sub_2208895AC();
              v43 = *(*(v42 - 8) + 104);
              v44 = v36;
              v45 = v41;
              goto LABEL_29;
            }

            v32 = *MEMORY[0x277D68670];
LABEL_21:
            v33(v17, v32, v13);
            goto LABEL_22;
          }

          v31 = MEMORY[0x277D68680];
        }

        v32 = *v31;
        v33 = *(v14 + 104);
        goto LABEL_21;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_22087578C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2208757E0(uint64_t a1)
{
  sub_22087578C(0, &unk_27CF5AA00, MEMORY[0x277D2FFA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220875858(void *a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v63 = a1;
  v7 = sub_22088F11C();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088F14C();
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F17C();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v64 = &v50 - v19;
  v20 = sub_22088516C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  sub_22088515C();
  v55 = a2;
  LOBYTE(a2) = sub_2208850BC();
  (*(v21 + 8))(&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  if ((a2 & 1) == 0)
  {
    a3(0);
    return;
  }

  v53 = a3;
  v54 = a4;
  v51 = v10;
  v52 = v7;
  v24 = v63;
  v25 = [v63 viewControllers];
  sub_22044D56C(0, &qword_28127E800);
  v26 = sub_2208916EC();

  if (v26 >> 62)
  {
    v27 = sub_2208926AC();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 >= 2)
  {
    v28 = [v24 viewControllers];
    v29 = sub_2208916EC();

    if ((v29 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x223D8A700](1, v29);
      v30 = v53;
    }

    else
    {
      v30 = v53;
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        return;
      }

      v31 = *(v29 + 40);
    }

    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = v31;
      v30(v33);

      return;
    }
  }

  sub_22044D56C(0, &qword_28127E7C0);
  v35 = v62;
  v50 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v56 = *(v56 + 8);
  v36 = v16;
  v37 = v57;
  (v56)(v36, v57);
  (*(v21 + 16))(&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v55, v20);
  v38 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v24;
  (*(v21 + 32))(v39 + v38, &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v40 = (v39 + ((v22 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  aBlock[4] = sub_220878CC4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_14;
  v42 = _Block_copy(aBlock);
  v43 = v35;
  v44 = v24;

  v45 = v58;
  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22048B4D8(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22048B4D8(&qword_28127EA50, sub_22056D204);
  v46 = v60;
  v47 = v52;
  sub_2208923FC();
  v48 = v64;
  v49 = v50;
  MEMORY[0x223D89E80](v64, v45, v46, v42);
  _Block_release(v42);

  (*(v61 + 8))(v46, v47);
  (*(v59 + 8))(v45, v51);
  (v56)(v48, v37);
}

void sub_220875F68(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 viewControllers];
    sub_22044D56C(0, &qword_28127E800);
    v8 = sub_2208916EC();

    if (v8 >> 62)
    {
      if (sub_2208926AC())
      {
        goto LABEL_4;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D8A700](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      sub_220676EB0();
      if (swift_dynamicCastClass())
      {
        sub_220888CBC();
        type metadata accessor for ForYouFeedViewController();
        sub_220891C9C();

        if (v16)
        {
          v11 = v16;
          v12 = sub_22089132C();
          [a4 setObject:v11 forKey:v12];

          (a2)(0);
        }

        else
        {
          v13 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
          a2();
        }

        return;
      }

      goto LABEL_16;
    }

LABEL_16:
    sub_220676EB0();
    v14 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    a2();

    goto LABEL_17;
  }

  sub_22044D56C(0, &qword_27CF5AA18);
  v14 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
  a2();
LABEL_17:
}

void sub_22087624C(void *a1, uint64_t a2, void *a3, void *a4, void (**a5)(void, void))
{
  v59 = a3;
  v68 = a1;
  v8 = sub_22088F11C();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22088F14C();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v11);
  v60 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F17C();
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v65 = &v54 - v19;
  v20 = sub_22088516C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  v25 = swift_allocObject();
  v25[2] = sub_2204C9E14;
  v25[3] = v24;
  v25[4] = a4;
  _Block_copy(a5);
  _Block_copy(a5);

  v56 = a4;
  sub_22088515C();
  v58 = a2;
  LOBYTE(a4) = sub_2208850BC();
  (*(v21 + 8))(&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  if ((a4 & 1) == 0)
  {
    sub_22044D56C(0, &qword_27CF5AA18);
    v36 = objc_allocWithZone(MEMORY[0x277D6D138]);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _Block_copy(a5);
    v38 = [v36 initWithMissingClass_];
    (a5)[2](a5, v38);

    _Block_release(a5);
LABEL_13:

    goto LABEL_14;
  }

  v55 = v8;
  v26 = [v68 viewControllers];
  sub_22044D56C(0, &qword_28127E800);
  v27 = sub_2208916EC();

  if (v27 >> 62)
  {
    v28 = sub_2208926AC();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28 < 2)
  {
LABEL_12:
    sub_22044D56C(0, &qword_28127E7C0);
    v54 = sub_220891D0C();
    v39 = v57;
    sub_22088F16C();
    sub_22088F18C();
    v40 = *(v67 + 8);
    v67 += 8;
    v56 = v40;
    v40(v39, v66);
    (*(v21 + 16))(&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v20);
    v41 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v42 = swift_allocObject();
    v58 = v24;
    v43 = v59;
    v44 = v68;
    *(v42 + 16) = v59;
    *(v42 + 24) = v44;
    (*(v21 + 32))(v42 + v41, &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v45 = (v42 + ((v22 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v45 = sub_220878CCC;
    v45[1] = v25;
    aBlock[4] = sub_220878BC4;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_60;
    v46 = _Block_copy(aBlock);
    v47 = v43;
    v48 = v44;

    v49 = v60;
    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22048B4D8(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_22056D204();
    sub_22048B4D8(&qword_28127EA50, sub_22056D204);
    v50 = v62;
    v51 = v55;
    sub_2208923FC();
    v52 = v65;
    v53 = v54;
    MEMORY[0x223D89E80](v65, v49, v50, v46);
    _Block_release(v46);

    (*(v64 + 8))(v50, v51);
    (*(v61 + 8))(v49, v63);
    v56(v52, v66);
    goto LABEL_13;
  }

  v29 = [v68 viewControllers];
  v30 = sub_2208916EC();

  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x223D8A700](1, v30);
    goto LABEL_8;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v31 = *(v30 + 40);
LABEL_8:
    v32 = v31;

    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      _Block_copy(a5);
      v35 = v32;
      sub_220877588(v34, v56, a5);
      _Block_release(a5);

LABEL_14:
      _Block_release(a5);
      return;
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_2208769F0(void *a1, id a2, void (**a3)(void, void))
{
  v6 = sub_22088516C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v62 - v13;
  _Block_copy(a3);
  v15 = [a1 application];
  v16 = [v15 connectedScenes];

  sub_22044D56C(0, &qword_27CF58F88);
  sub_220732A50();
  v17 = sub_2208918EC();

  v18 = sub_220707528(v17);

  if (!v18)
  {
    goto LABEL_46;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    goto LABEL_34;
  }

  v20 = [v19 windows];
  sub_22044D56C(0, &qword_28127E440);
  v21 = sub_2208916EC();

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_45:

LABEL_46:
    sub_22044D56C(0, &qword_28127E880);
    v60 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a3)[2](a3, v60);

    goto LABEL_48;
  }

  if (!sub_2208926AC())
  {
    goto LABEL_45;
  }

LABEL_5:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x223D8A700](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_51;
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;

  v24 = [v23 rootViewController];

  if (!v24)
  {
LABEL_34:

    goto LABEL_46;
  }

  sub_22044D56C(0, &qword_27CF56C10);
  sub_220891C9C();
  if (!v71)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a3)[2](a3, v55);

    goto LABEL_48;
  }

  v67 = v7;
  v68 = v24;
  v69 = v71;
  v25 = [v71 viewControllers];
  v21 = sub_22044D56C(0, &qword_28127E800);
  v20 = sub_2208916EC();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_51:
  if (!sub_2208926AC())
  {
    goto LABEL_52;
  }

LABEL_12:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x223D8A700](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v26 = *(v20 + 32);
  }

  v27 = v26;

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {

LABEL_53:
    sub_22044D56C(0, &qword_27CF5AA18);
    v56 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a3)[2](a3, v56);

    v61 = v69;
LABEL_59:

    goto LABEL_60;
  }

  v66 = v27;
  v20 = [v28 viewControllers];
  v21 = sub_2208916EC();

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_57:

    goto LABEL_58;
  }

LABEL_56:
  if (!sub_2208926AC())
  {
    goto LABEL_57;
  }

LABEL_18:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x223D8A700](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v29 = *(v21 + 32);
  }

  v30 = v29;

  type metadata accessor for UIKitTickerCardContainerController();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

LABEL_58:
    type metadata accessor for UIKitTickerCardContainerController();
    v56 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a3)[2](a3, v56);

    v61 = v66;
    goto LABEL_59;
  }

  v32 = v31;
  v33 = v30;
  v34 = sub_22088D25C();
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
LABEL_39:

    goto LABEL_40;
  }

  v64 = v32;
  v36 = [v35 topViewController];

  v34 = v33;
  v65 = v36;
  if (!v36)
  {
LABEL_40:

    type metadata accessor for StockListViewController();
    v56 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a3)[2](a3, v56);

    goto LABEL_60;
  }

  v63 = v33;
  type metadata accessor for StockListViewController();
  v37 = v65;
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    v34 = v37;
    v33 = v63;
    goto LABEL_39;
  }

  v39 = v38;
  v40 = v37;
  v41 = sub_22089132C();
  [a1 setObject:v39 forKey:v41];
  v62 = v40;

  v42 = v64;
  v43 = v69;
  v65 = v43;
  v44 = sub_22089132C();
  [a1 setObject:v43 forKey:v44];

  v45 = v63;
  v46 = sub_22089132C();
  [a1 setObject:v42 forKey:v46];
  v69 = v45;

  sub_220888CBC();
  v47 = v71;
  v48 = sub_22089132C();
  [a1 setObject:v47 forKey:v48];

  v20 = v65;
  if (![v65 isCollapsed])
  {

    sub_22088515C();
    sub_22088508C();
    v57 = *(v67 + 8);
    v57(v10, v6);
    v58 = v57;
    _Block_copy(a3);
    v59 = a1;
    sub_22087624C(v20, v14, a2, v59, a3);
    _Block_release(a3);

    v58(v14, v6);
    goto LABEL_48;
  }

  v21 = sub_22088D27C();
  a2 = v69;

  if (!(v21 >> 62))
  {
    v49 = v20;
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_64:

LABEL_65:
    sub_22048B97C();
    v56 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a3)[2](a3, v56);

    v61 = v62;
    goto LABEL_59;
  }

LABEL_63:
  v49 = v20;
  if (!sub_2208926AC())
  {
    goto LABEL_64;
  }

LABEL_28:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x223D8A700](0, v21);
    goto LABEL_31;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v21 + 32);
LABEL_31:
    v51 = v50;

    sub_22048B97C();
    if (swift_dynamicCastClass())
    {
      sub_220888CBC();
      v52 = v70;
      type metadata accessor for ForYouFeedViewController();
      sub_220891C9C();

      if (v71)
      {
        v53 = v71;
        v54 = sub_22089132C();
        [a1 setObject:v53 forKey:v54];

        a3[2](a3, 0);
LABEL_48:
        _Block_release(a3);
        return;
      }

      v56 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
      (a3)[2](a3, v56);

LABEL_60:
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  __break(1u);
}

void sub_220877588(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 viewControllers];
    sub_22044D56C(0, &qword_28127E800);
    v7 = sub_2208916EC();

    if (v7 >> 62)
    {
      if (sub_2208926AC())
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D8A700](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      sub_220676EB0();
      if (swift_dynamicCastClass())
      {
        sub_220888CBC();
        type metadata accessor for ForYouFeedViewController();
        sub_220891C9C();

        if (v14)
        {
          v10 = v14;
          v11 = sub_22089132C();
          [a2 setObject:v10 forKey:v11];

          (*(a3 + 16))(a3, 0);
        }

        else
        {
          v10 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
          (*(a3 + 16))(a3, v10);
        }

        return;
      }

      goto LABEL_16;
    }

LABEL_16:
    sub_220676EB0();
    v12 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (*(a3 + 16))(a3, v12);

    goto LABEL_17;
  }

  sub_22044D56C(0, &qword_27CF5AA18);
  v12 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
  (*(a3 + 16))(a3, v12);
LABEL_17:
}

void sub_220877868(void *a1, uint64_t a2, void *a3, void *a4, void (**a5)(void, void))
{
  v59 = a3;
  v68 = a1;
  v8 = sub_22088F11C();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22088F14C();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v11);
  v60 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F17C();
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v65 = &v54 - v19;
  v20 = sub_22088516C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  v25 = swift_allocObject();
  *(v25 + 2) = sub_220878CC8;
  *(v25 + 3) = v24;
  *(v25 + 4) = a4;
  _Block_copy(a5);
  _Block_copy(a5);

  v56 = a4;
  sub_22088515C();
  v58 = a2;
  LOBYTE(a4) = sub_2208850BC();
  (*(v21 + 8))(&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  if ((a4 & 1) == 0)
  {
    sub_22044D56C(0, &qword_27CF5AA18);
    v36 = objc_allocWithZone(MEMORY[0x277D6D138]);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _Block_copy(a5);
    v38 = [v36 initWithMissingClass_];
    (a5)[2](a5, v38);

    _Block_release(a5);
LABEL_13:

    goto LABEL_14;
  }

  v55 = v8;
  v26 = [v68 viewControllers];
  sub_22044D56C(0, &qword_28127E800);
  v27 = sub_2208916EC();

  if (v27 >> 62)
  {
    v28 = sub_2208926AC();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28 < 2)
  {
LABEL_12:
    sub_22044D56C(0, &qword_28127E7C0);
    v54 = sub_220891D0C();
    v39 = v57;
    sub_22088F16C();
    sub_22088F18C();
    v40 = *(v67 + 8);
    v67 += 8;
    v56 = v40;
    v40(v39, v66);
    (*(v21 + 16))(&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v20);
    v41 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v42 = swift_allocObject();
    v58 = v24;
    v43 = v59;
    v44 = v68;
    *(v42 + 16) = v59;
    *(v42 + 24) = v44;
    (*(v21 + 32))(v42 + v41, &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v45 = (v42 + ((v22 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v45 = sub_220878C08;
    v45[1] = v25;
    aBlock[4] = sub_220878CC4;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_28_0;
    v46 = _Block_copy(aBlock);
    v47 = v43;
    v48 = v44;

    v49 = v60;
    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22048B4D8(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_22056D204();
    sub_22048B4D8(&qword_28127EA50, sub_22056D204);
    v50 = v62;
    v51 = v55;
    sub_2208923FC();
    v52 = v65;
    v53 = v54;
    MEMORY[0x223D89E80](v65, v49, v50, v46);
    _Block_release(v46);

    (*(v64 + 8))(v50, v51);
    (*(v61 + 8))(v49, v63);
    v56(v52, v66);
    goto LABEL_13;
  }

  v29 = [v68 viewControllers];
  v30 = sub_2208916EC();

  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x223D8A700](1, v30);
    goto LABEL_8;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v31 = *(v30 + 40);
LABEL_8:
    v32 = v31;

    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      _Block_copy(a5);
      v35 = v32;
      sub_220877588(v34, v56, a5);
      _Block_release(a5);

LABEL_14:
      _Block_release(a5);
      return;
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_22087800C(void *a1, id a2, void (**a3)(void, void))
{
  v6 = sub_22088516C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v55 - v13;
  _Block_copy(a3);
  _Block_copy(a3);
  if ((sub_22088F0DC() & 1) == 0)
  {
    v15 = [a1 application];
    v16 = [v15 connectedScenes];

    sub_22044D56C(0, &qword_27CF58F88);
    sub_220732A50();
    v17 = sub_2208918EC();

    v18 = sub_220707528(v17);

    if (!v18)
    {
LABEL_48:
      sub_22044D56C(0, &qword_28127E880);
      v53 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
      (a3)[2](a3, v53);

      goto LABEL_49;
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
LABEL_36:

      goto LABEL_48;
    }

    v20 = [v19 windows];
    sub_22044D56C(0, &qword_28127E440);
    v21 = sub_2208916EC();

    if (v21 >> 62)
    {
      if (sub_2208926AC())
      {
        goto LABEL_7;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223D8A700](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v22 = *(v21 + 32);
      }

      v23 = v22;

      v24 = [v23 rootViewController];

      if (v24)
      {
        sub_22044D56C(0, &qword_27CF56C10);
        sub_220891C9C();
        if (!v64)
        {
          v49 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
          (a3)[2](a3, v49);

          goto LABEL_64;
        }

        v60 = v7;
        v61 = v24;
        v62 = v64;
        v7 = [v64 viewControllers];
        v21 = sub_22044D56C(0, &qword_28127E800);
        v20 = sub_2208916EC();

        if (!(v20 >> 62))
        {
          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_14:
            if ((v20 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x223D8A700](0, v20);
            }

            else
            {
              if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_59;
              }

              v25 = *(v20 + 32);
            }

            v7 = v25;

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v59 = v7;
              v20 = [v26 viewControllers];
              v21 = sub_2208916EC();

              if (!(v21 >> 62))
              {
                if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_20:
                  if ((v21 & 0xC000000000000001) != 0)
                  {
                    v27 = MEMORY[0x223D8A700](0, v21);
                  }

                  else
                  {
                    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_67;
                    }

                    v27 = *(v21 + 32);
                  }

                  v28 = v27;

                  type metadata accessor for TickerCardContainerController();
                  v29 = swift_dynamicCastClass();
                  if (v29)
                  {
                    v30 = v29;
                    v31 = v28;
                    v57 = v30;
                    v32 = sub_22088C7EC();
                    objc_opt_self();
                    v33 = swift_dynamicCastObjCClass();
                    if (v33)
                    {
                      v34 = [v33 topViewController];

                      v32 = v31;
                      v58 = v34;
                      if (!v34)
                      {
LABEL_42:

                        type metadata accessor for StockListViewController();
                        v50 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
                        (a3)[2](a3, v50);

                        goto LABEL_63;
                      }

                      type metadata accessor for StockListViewController();
                      v35 = swift_dynamicCastClass();
                      if (v35)
                      {
                        v55 = v35;
                        v36 = v31;
                        v37 = sub_22089132C();
                        [a1 setObject:v57 forKey:v37];
                        v56 = v36;

                        sub_220888CBC();
                        v38 = v64;
                        v39 = sub_22089132C();
                        [a1 setObject:v38 forKey:v39];

                        v40 = v58;
                        v41 = sub_22089132C();
                        [a1 setObject:v55 forKey:v41];
                        v7 = v40;

                        v20 = v62;
                        v42 = sub_22089132C();
                        [a1 setObject:v20 forKey:v42];

                        if (![v20 isCollapsed])
                        {

                          sub_22088515C();
                          sub_22088508C();
                          v62 = v7;
                          v51 = v60[1];
                          v51(v10, v6);
                          _Block_copy(a3);
                          v52 = a1;
                          sub_220877868(v20, v14, a2, v52, a3);
                          _Block_release(a3);

                          v51(v14, v6);
                          goto LABEL_64;
                        }

                        v21 = sub_22088C80C();
                        a2 = v56;

                        if (!(v21 >> 62))
                        {
                          v43 = v20;
                          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
LABEL_30:
                            if ((v21 & 0xC000000000000001) != 0)
                            {
                              v44 = MEMORY[0x223D8A700](0, v21);
                            }

                            else
                            {
                              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                __break(1u);
                                return;
                              }

                              v44 = *(v21 + 32);
                            }

                            v45 = v44;

                            sub_22048B97C();
                            if (swift_dynamicCastClass())
                            {
                              sub_220888CBC();
                              v46 = v63;
                              type metadata accessor for ForYouFeedViewController();
                              sub_220891C9C();

                              if (v64)
                              {
                                v47 = v64;
                                v48 = sub_22089132C();
                                [a1 setObject:v47 forKey:v48];

                                a3[2](a3, 0);
LABEL_64:
                                _Block_release(a3);
                                _Block_release(a3);
                                return;
                              }

                              v50 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
                              (a3)[2](a3, v50);

LABEL_63:
                              goto LABEL_64;
                            }

LABEL_69:
                            sub_22048B97C();
                            v50 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
                            (a3)[2](a3, v50);

                            goto LABEL_63;
                          }

LABEL_68:

                          goto LABEL_69;
                        }

LABEL_67:
                        v43 = v20;
                        if (sub_2208926AC())
                        {
                          goto LABEL_30;
                        }

                        goto LABEL_68;
                      }

                      v32 = v58;
                    }

                    goto LABEL_42;
                  }

                  goto LABEL_61;
                }

LABEL_60:

LABEL_61:
                type metadata accessor for TickerCardContainerController();
                v50 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
                (a3)[2](a3, v50);

                v54 = v59;
                goto LABEL_62;
              }

LABEL_59:
              if (sub_2208926AC())
              {
                goto LABEL_20;
              }

              goto LABEL_60;
            }

LABEL_56:
            sub_22044D56C(0, &qword_27CF5AA18);
            v50 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
            (a3)[2](a3, v50);

            v54 = v62;
LABEL_62:

            goto LABEL_63;
          }

LABEL_55:

          goto LABEL_56;
        }

LABEL_54:
        if (sub_2208926AC())
        {
          goto LABEL_14;
        }

        goto LABEL_55;
      }

      goto LABEL_36;
    }

    goto LABEL_48;
  }

  _Block_copy(a3);
  sub_2208769F0(a1, a2, a3);
  _Block_release(a3);
LABEL_49:
  _Block_release(a3);

  _Block_release(a3);
}

uint64_t objectdestroy_3Tm_4()
{

  return swift_deallocObject();
}

void sub_220878C28()
{
  v1 = *(sub_22088516C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_220875858(*(v0 + 24), v0 + v2, *v3, v3[1]);
}

uint64_t type metadata accessor for ManageWatchlistsReloadBlueprintModifier()
{
  result = qword_27CF5AA20;
  if (!qword_27CF5AA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220878D5C()
{
  sub_220879FCC(319, &qword_28127EB28, MEMORY[0x277D698E0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ManageWatchlistsContentMode(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220878E20(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v124 = a3;
  v125 = a2;
  sub_220879DD8(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v122 = *(v4 - 8);
  v123 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v121 = &v107 - v6;
  sub_220879D0C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v117 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220879DD8(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v119 = *(v10 - 8);
  v120 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v118 = &v107 - v12;
  v13 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v115 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220879FCC(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v114 = &v107 - v18;
  sub_22055DE74();
  v20 = v19;
  v132 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v116 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v130 = &v107 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v131 = &v107 - v28;
  v29 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v29, v30);
  v113 = (&v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v107 - v34;
  sub_22055DDDC();
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v39);
  v112 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v109 = &v107 - v43;
  sub_220879E98();
  v45 = v44;
  v129 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v46);
  v136 = &v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v128 = &v107 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v107 - v53;
  v55 = sub_220879F64(&qword_27CF5AA58, sub_22055DDDC);
  v56 = sub_220879F64(&qword_27CF5AA60, sub_22055DDDC);
  v111 = v55;
  v110 = v56;
  sub_2208888BC();
  v57 = *(v3 + 16);
  v58 = *(v57 + 16);
  v134 = v37;
  v135 = v45;
  v126 = v38;
  v127 = v54;
  v133 = v20;
  v137 = v29;
  if (v58)
  {
    v59 = sub_220886A4C();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = type metadata accessor for WatchlistCellViewModel(0);
    v63 = v59;
    v54 = v127;
    (*(v60 + 16))(&v35[*(v62 + 28)], v57 + v61, v63);
    v64 = type metadata accessor for ManageWatchlistsReloadBlueprintModifier();
    v65 = *(v62 + 32);
    v45 = v135;
    v66 = v3;
    sub_220596A24(v3 + *(v64 + 24), &v35[v65]);
    *v35 = sub_2208869BC();
    *(v35 + 1) = v67;
    *(v35 + 2) = sub_220886A0C();
    *(v35 + 3) = v68;
    v35[32] = 1;
    swift_storeEnumTagMultiPayload();
    sub_220879F64(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v69 = v109;
    sub_22088AD7C();
    sub_2208888AC();
    (*(v126 + 8))(v69, v134);
    v70 = *(v57 + 16);
  }

  else
  {
    v70 = 0;
    v66 = v3;
  }

  v71 = sub_220886A4C();
  v72 = (*(*(v71 - 8) + 80) + 32) & ~*(*(v71 - 8) + 80);
  MEMORY[0x28223BE20](v71 - 8, v73);
  v106 = v66;

  sub_22057713C(sub_220879FAC, (&v107 - 4), v57 + v72, v70 != 0, (2 * v70) | 1);

  sub_22088889C();

  v139 = 0;
  v109 = *(v129 + 16);
  (v109)(v128, v54, v45);
  sub_22055DF30();
  v74 = sub_220879F64(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
  v75 = v131;
  sub_22088B29C();
  sub_220879FCC(0, &qword_27CF56E08, sub_22055DE74, MEMORY[0x277D84560]);
  v76 = v132;
  v77 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v108 = *(v132 + 72);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_220899360;
  v107 = *(v76 + 16);
  v107(v78 + v77, v75, v133);
  sub_2208888BC();
  v79 = type metadata accessor for ManageWatchlistsReloadBlueprintModifier();
  v80 = v115;
  sub_220596A24(v66 + *(v79 + 24), v115);
  sub_22057B2D0();
  v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
  v83 = sub_22088685C();
  v84 = *(v83 - 8);
  v85 = 1;
  v86 = v82 == 1;
  v87 = v114;
  if (!v86)
  {
    (*(*(v83 - 8) + 32))(v114, v80, v83);
    v85 = 0;
  }

  (*(v84 + 56))(v87, v85, 1, v83);
  sub_2206BAF44(v87, v113);
  swift_storeEnumTagMultiPayload();
  v88 = v112;
  sub_22088AD7C();
  v90 = v135;
  v89 = v136;
  sub_2208888AC();
  (*(v126 + 8))(v88, v134);
  v138 = 1;
  (v109)(v128, v89, v90);
  v91 = v130;
  sub_22088B29C();
  v92 = v116;
  v93 = v133;
  v107(v116, v91, v133);
  v95 = *(v78 + 16);
  v94 = *(v78 + 24);
  if (v95 >= v94 >> 1)
  {
    v78 = sub_220588610(v94 > 1, v95 + 1, 1, v78);
  }

  v96 = v132;
  v97 = v127;
  *(v78 + 16) = v95 + 1;
  (*(v96 + 32))(v78 + v77 + v95 * v108, v92, v93);
  v98 = sub_220879F64(&qword_27CF5AA40, sub_22055DE74);
  v99 = sub_220879F64(&qword_27CF5AA48, sub_22055DE74);
  MEMORY[0x223D80A20](v78, v93, v98, v99);
  v100 = v118;
  sub_22088E7CC();
  v106 = v74;
  v101 = v121;
  sub_22088C66C();
  v125(v101);
  (*(v122 + 8))(v101, v123);
  (*(v119 + 8))(v100, v120);
  v102 = *(v96 + 8);
  v102(v130, v93);
  v103 = *(v129 + 8);
  v104 = v135;
  v103(v136, v135);
  v102(v131, v93);
  return (v103)(v97, v104);
}

uint64_t sub_220879B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WatchlistCellViewModel(0);
  v9 = *(v8 + 28);
  v10 = sub_220886A4C();
  (*(*(v10 - 8) + 16))(&v7[v9], a1, v10);
  v11 = type metadata accessor for ManageWatchlistsReloadBlueprintModifier();
  sub_220596A24(a2 + *(v11 + 24), &v7[*(v8 + 32)]);
  *v7 = sub_2208869BC();
  *(v7 + 1) = v12;
  *(v7 + 2) = sub_220886A0C();
  *(v7 + 3) = v13;
  v7[32] = 0;
  swift_storeEnumTagMultiPayload();
  sub_220879F64(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
  return sub_22088AD7C();
}

void sub_220879D0C()
{
  if (!qword_27CF5AA38)
  {
    sub_22055DE74();
    sub_220879F64(&qword_27CF5AA40, sub_22055DE74);
    sub_220879F64(&qword_27CF5AA48, sub_22055DE74);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF5AA38);
    }
  }
}

void sub_220879DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel();
    v8[2] = sub_22055DF30();
    v8[3] = sub_220879F64(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220879E98()
{
  if (!qword_27CF5AA50)
  {
    sub_22055DDDC();
    sub_220879F64(&qword_27CF5AA58, sub_22055DDDC);
    sub_220879F64(&qword_27CF5AA60, sub_22055DDDC);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF5AA50);
    }
  }
}

uint64_t sub_220879F64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220879FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id static NSBundle.stocksUI.getter()
{
  _s6MarkerCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t Headline.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_22047C320(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v43 - v8;
  v10 = sub_220884E9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - v17;
  v19 = sub_22088698C();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v24, v1, v19, v22);
  v25 = (*(v20 + 88))(v24, v19);
  if (v25 == *MEMORY[0x277D69850])
  {
    (*(v20 + 96))(v24, v19);
    v26 = *v24;
    sub_22052EC94();
    v28 = *(v27 + 48);
    swift_getObjectType();
    sub_220891DCC();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      sub_22047C4E4(v9);
      v29 = sub_22088E4EC();
      (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
    }

    else
    {
      (*(v11 + 32))(v18, v9, v10);
      sub_220884E3C();
      v33 = [v26 title];
      if (v33)
      {
        v34 = v28;
        v35 = v33;
        sub_22089136C();

        v28 = v34;
      }

      v38 = v44;
      sub_22088E4DC();
      swift_unknownObjectRelease();
      (*(v11 + 8))(v18, v10);
      v39 = sub_22088E4EC();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    }

    v40 = sub_220885CDC();
    return (*(*(v40 - 8) + 8))(v24 + v28, v40);
  }

  else if (v25 == *MEMORY[0x277D69840])
  {
    (*(v20 + 96))(v24, v19);
    v30 = *v24;
    swift_getObjectType();
    sub_220891DCC();
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      sub_22047C4E4(v5);
      v31 = sub_22088E4EC();
      return (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    }

    else
    {
      (*(v11 + 32))(v14, v5, v10);
      sub_220884E3C();
      v36 = [v30 title];
      if (v36)
      {
        v37 = v36;
        sub_22089136C();
      }

      v41 = v44;
      sub_22088E4DC();
      swift_unknownObjectRelease();
      (*(v11 + 8))(v14, v10);
      v42 = sub_22088E4EC();
      return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    }
  }

  else
  {
    result = sub_2208928AC();
    __break(1u);
  }

  return result;
}

uint64_t RouteOption.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

unint64_t sub_22087A6B8()
{
  result = qword_27CF5AA68;
  if (!qword_27CF5AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5AA68);
  }

  return result;
}

uint64_t sub_22087A71C(uint64_t a1, void *a2, uint64_t a3)
{
  v155[1] = a3;
  v186 = a1;
  sub_2204BE244(0, &qword_281299438, MEMORY[0x277CC9698]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v167 = v155 - v6;
  v179 = sub_220888F5C();
  v166 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v7);
  v165 = v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2208852BC();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v9);
  v160 = v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_2208852DC();
  v182 = *(v180 - 8);
  v12 = MEMORY[0x28223BE20](v180, v11);
  v174 = v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v163 = v155 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v176 = v155 - v18;
  sub_2204BE244(0, &unk_281299440, MEMORY[0x277CC9640]);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v159 = v155 - v21;
  v184 = sub_22088AA0C();
  v187 = *(v184 - 8);
  v23 = MEMORY[0x28223BE20](v184, v22);
  v169 = (v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23, v25);
  v168 = (v155 - v27);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v164 = (v155 - v30);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v158 = (v155 - v33);
  MEMORY[0x28223BE20](v32, v34);
  v36 = v155 - v35;
  v37 = sub_220885ACC();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v170 = v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v41;
  MEMORY[0x28223BE20](v40, v42);
  v178 = v155 - v43;
  sub_2204BE244(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = v155 - v46;
  v48 = type metadata accessor for ComputationalGraphDebugView();
  MEMORY[0x28223BE20](v48, v49);
  v51 = v155 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v194)
  {
    __break(1u);
    goto LABEL_29;
  }

  sub_220457328(&v193, &v195);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v192)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_220457328(&v191, &v193);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &unk_2812991F0);
  result = sub_2208884DC();
  if (!v190)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v173 = v38;
  v175 = v37;
  sub_220457328(&v189, &v191);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &qword_27CF585F8);
  result = sub_2208884DC();
  if (!v190)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204BE244(0, &qword_27CF5AAE0, MEMORY[0x277D34C00]);
  sub_22089145C();
  sub_22088849C();

  v53 = v188[0];
  if (v188[0])
  {
    if (v188[0] == 1)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    sub_22088A6FC();
    sub_22087C7F8(v53);
    sub_22087C7F8(v53);
  }

  else
  {
    v54 = sub_220884E9C();
    (*(*(v54 - 8) + 56))(v47, 1, 1, v54);
  }

  sub_220457328(&v189, v51);
  sub_2206578D0(v47, &v51[*(v48 + 20)]);
  sub_22087C578();
  v56 = objc_allocWithZone(v55);
  v57 = sub_22088F01C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &qword_281296800);
  result = sub_2208884DC();
  if (!v190)
  {
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22087C60C();
  result = sub_2208884CC();
  v58 = v187;
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v59 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &qword_27CF5AB10);
  result = sub_2208884DC();
  if (!v188[3])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v157 = v57;
  v60 = objc_allocWithZone(type metadata accessor for UserEventHistoryBrowserViewController());
  v156 = sub_2206C59B4(&v189, v59, v188);
  __swift_project_boxed_opaque_existential_1(&v193, v194);
  sub_22088641C();
  __swift_project_boxed_opaque_existential_1(&v195, v196);
  *v36 = sub_22088613C() & 1;
  v61 = *MEMORY[0x277D6D260];
  v181 = *(v58 + 104);
  LODWORD(v177) = v61;
  v62 = v184;
  v181(v36, v61, v184);
  sub_22088B18C();
  v63 = *(v58 + 8);
  v63(v36, v62);
  __swift_project_boxed_opaque_existential_1(&v195, v196);
  *v36 = sub_22088614C() & 1;
  v64 = v61;
  v65 = v181;
  v181(v36, v64, v62);
  v185 = v63;
  sub_22088B18C();
  v63(v36, v62);
  v172 = "Apple News Private Data";
  v66 = objc_opt_self();
  v67 = [v66 sharedAccount];
  v68 = [v67 isPrivateDataSyncingEnabled];

  *v36 = v68;
  v69 = v177;
  v65(v36, v177, v62);
  sub_22088B18C();
  v70 = v185;
  v185(v36, v62);
  v172 = v66;
  v71 = [v66 sharedAccount];
  v72 = [v71 isUserSignedInToiCloud];

  *v36 = v72;
  v183 = v58 + 104;
  v181(v36, v69, v62);
  v73 = v62;
  sub_22088B18C();
  v187 = v58 + 8;
  v70(v36, v62);
  v74 = v176;
  sub_22088528C();
  v75 = v160;
  sub_2208852CC();
  v76 = *(v182 + 1);
  v182 += 8;
  v176 = v76;
  (v76)(v74, v180);
  v77 = v159;
  sub_22088529C();
  (*(v161 + 8))(v75, v162);
  v78 = sub_22088521C();
  v79 = *(v78 - 8);
  if ((*(v79 + 48))(v77, 1, v78) == 1)
  {
    sub_22087C6A0(v77, &unk_281299440, MEMORY[0x277CC9640]);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v80 = sub_2208851FC();
    v81 = v82;
    (*(v79 + 8))(v77, v78);
  }

  v83 = v158;
  *v158 = v80;
  v83[1] = v81;
  v84 = *MEMORY[0x277D6D270];
  v85 = v73;
  v86 = v181;
  v181(v83, v84, v85);
  sub_22088B18C();
  v70(v83, v184);
  *v36 = sub_22088F3DC();
  *(v36 + 1) = v87;
  v86(v36, v84, v184);
  sub_22088B18C();
  v185(v36, v184);
  v88 = v165;
  sub_220890BBC();
  v89 = sub_220888F4C();
  v91 = v90;
  (*(v166 + 8))(v88, v179);
  *v36 = v89;
  *(v36 + 1) = v91;
  LODWORD(v179) = v84;
  v86(v36, v84, v184);
  v92 = v86;
  v93 = v184;
  v94 = v185;
  sub_22088B18C();
  v94(v36, v93);
  v95 = v163;
  sub_22088528C();
  v96 = v167;
  sub_22088527C();
  (v176)(v95, v180);
  v97 = sub_22088526C();
  v98 = *(v97 - 8);
  if ((*(v98 + 48))(v96, 1, v97) == 1)
  {
    sub_22087C6A0(v96, &qword_281299438, MEMORY[0x277CC9698]);
    v99 = 0;
    v100 = 0;
  }

  else
  {
    v99 = sub_2208851FC();
    v100 = v101;
    (*(v98 + 8))(v96, v97);
  }

  v102 = v164;
  *v164 = v99;
  v102[1] = v100;
  v92(v102, v179, v93);
  sub_22088B18C();
  v94(v102, v93);
  v103 = v174;
  sub_22088528C();
  LOBYTE(v102) = sub_2208851AC();
  (v176)(v103, v180);
  *v36 = v102 & 1;
  v92(v36, v177, v93);
  sub_22088B18C();
  v94(v36, v93);
  v104 = [v172 sharedAccount];
  v105 = [v104 userStoreFrontID];

  if (v105)
  {
    v106 = sub_22089136C();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0;
  }

  v109 = sub_22087BF78(v106, v108);
  v111 = v110;

  v112 = v168;
  *v168 = v109;
  v112[1] = v111;
  v92(v112, v179, v93);
  sub_22088B18C();
  v94(v112, v93);
  v113 = [v172 sharedAccount];
  v114 = [v113 contentStoreFrontID];

  v115 = v92;
  if (v114)
  {
    v116 = sub_22089136C();
    v118 = v117;
  }

  else
  {
    v116 = 0;
    v118 = 0;
  }

  v119 = sub_22087BF78(v116, v118);
  v121 = v120;

  v122 = v169;
  *v169 = v119;
  v122[1] = v121;
  v123 = v93;
  v115(v122, v179, v93);
  sub_22088B18C();
  v124 = v122;
  v125 = v185;
  v185(v124, v93);
  v126 = v174;
  sub_22088528C();
  LOBYTE(v119) = sub_2208851BC();
  (v176)(v126, v180);
  *v36 = v119 & 1;
  v115(v36, v177, v93);
  sub_22088B18C();
  v125(v36, v93);
  __swift_project_boxed_opaque_existential_1(&v191, v192);
  *v36 = sub_2208862DC();
  *(v36 + 1) = v127;
  v115(v36, v179, v93);
  sub_22088B18C();
  v125(v36, v93);
  if ([objc_opt_self() canSendMail])
  {
    v182 = "Computational Graph";
    __swift_project_boxed_opaque_existential_1(&v191, v192);
    v180 = sub_2208862DC();
    v179 = v128;
    v176 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v129 = v173;
    v177 = *(v173 + 16);
    v130 = v170;
    v131 = v175;
    v177(v170, v178, v175);
    v132 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v133 = (v171 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
    v134 = swift_allocObject();
    v135 = v134 + v132;
    v136 = v130;
    (*(v129 + 32))(v135, v130, v131);
    v137 = (v134 + v133);
    v138 = v179;
    *v137 = v180;
    v137[1] = v138;
    *(v134 + ((v133 + 23) & 0xFFFFFFFFFFFFFFF8)) = v176;
    *v36 = sub_22087C75C;
    *(v36 + 1) = v134;
    v139 = *MEMORY[0x277D6D268];
    v181(v36, v139, v123);
    sub_22088B18C();
    v185(v36, v123);
    v140 = v177;
  }

  else
  {
    v140 = *(v173 + 16);
    v139 = *MEMORY[0x277D6D268];
    v136 = v170;
  }

  v141 = v123;
  v142 = v175;
  v140(v136, v178, v175);
  v143 = v173;
  v144 = (*(v173 + 80) + 16) & ~*(v173 + 80);
  v145 = swift_allocObject();
  v146 = v136;
  v147 = v145;
  (*(v143 + 32))(v145 + v144, v146, v142);
  *v36 = sub_22087C6FC;
  *(v36 + 1) = v147;
  v148 = v181;
  v181(v36, v139, v141);
  sub_22088B18C();
  v185(v36, v141);
  v149 = swift_allocObject();
  v150 = v156;
  *(v149 + 16) = v156;
  *v36 = sub_2205614E8;
  *(v36 + 1) = v149;
  v148(v36, v139, v141);
  v182 = v150;
  sub_22088B18C();
  v151 = v185;
  v185(v36, v141);
  v152 = swift_allocObject();
  v153 = v157;
  *(v152 + 16) = v157;
  *v36 = sub_22087C850;
  *(v36 + 1) = v152;
  v148(v36, v139, v141);
  v154 = v153;
  sub_22088B18C();

  v151(v36, v141);
  (*(v143 + 8))(v178, v175);
  __swift_destroy_boxed_opaque_existential_1(&v191);
  __swift_destroy_boxed_opaque_existential_1(&v193);
  return __swift_destroy_boxed_opaque_existential_1(&v195);
}

uint64_t sub_22087BF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22089136C();
  if (a2)
  {
    if (v4 == a1 && v5 == a2)
    {
    }

    else
    {
      v7 = sub_2208928BC();

      if ((v7 & 1) == 0)
      {
        if (sub_22089136C() == a1 && v8 == a2)
        {
        }

        else
        {
          v10 = sub_2208928BC();

          if ((v10 & 1) == 0)
          {
            if (sub_22089136C() == a1 && v11 == a2)
            {
            }

            else
            {
              v13 = sub_2208928BC();

              if ((v13 & 1) == 0)
              {
                if (sub_22089136C() == a1 && v14 == a2)
                {

                  return 19285;
                }

                v16 = sub_2208928BC();

                if (v16)
                {
                  return 19285;
                }

                goto LABEL_21;
              }
            }

            return 16707;
          }
        }

        return 21825;
      }
    }

    return 21333;
  }

  sub_22089136C();

  sub_22089136C();

  sub_22089136C();

LABEL_21:

  return a1;
}

uint64_t sub_22087C180(uint64_t a1)
{
  v2 = sub_22088E52C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_220885ACC();
  v8[3] = v4;
  v8[4] = sub_22087C808(&qword_27CF5AB18, MEMORY[0x277D69388]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  sub_22088E53C();
  v6 = objc_allocWithZone(sub_22088C52C());
  return sub_22088C51C();
}

id sub_22087C298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2208913BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_2208849AC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_2208849EC();
  swift_allocObject();
  sub_2208849DC();
  sub_22088499C();
  sub_2208849BC();
  sub_220885ACC();
  sub_22087C808(&qword_27CF5AB18, MEMORY[0x277D69388]);
  v9 = sub_2208849CC();
  v11 = v10;
  sub_2208913AC();
  sub_22089138C();
  sub_220457EE8(v9, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277CD6878]) init];
  MEMORY[0x223D89680](a2, a3);
  MEMORY[0x223D89680](93, 0xE100000000000000);
  v13 = sub_22089132C();

  [v12 setSubject_];

  v14 = sub_22089132C();

  [v12 setMessageBody:v14 isHTML:0];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v12 setMailComposeDelegate_];

  return v12;
}

void sub_22087C578()
{
  if (!qword_27CF5AAE8)
  {
    type metadata accessor for ComputationalGraphDebugView();
    sub_22087C808(&unk_27CF5AAF0, type metadata accessor for ComputationalGraphDebugView);
    v0 = sub_22088F02C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF5AAE8);
    }
  }
}

void sub_22087C60C()
{
  if (!qword_27CF5AB00)
  {
    sub_22088A72C();
    sub_22087C808(&qword_27CF5AB08, MEMORY[0x277D69918]);
    v0 = sub_22088A6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF5AB00);
    }
  }
}

uint64_t sub_22087C6A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2204BE244(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22087C6FC()
{
  v1 = *(sub_220885ACC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_22087C180(v2);
}

id sub_22087C75C()
{
  v1 = *(sub_220885ACC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_22087C298(v0 + v2, v4, v5);
}

uint64_t sub_22087C7F8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22087C808(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_22087C854(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_2205A6FB8(0, &qword_281297138, MEMORY[0x277D6EBB0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v25.receiver - v14);
  v16 = OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onTap;
  sub_2205A6FB8(0, &qword_281297130, MEMORY[0x277D6EBB8]);
  *&v4[v16] = [objc_allocWithZone(v17) init];
  v18 = &v4[OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onHitTest];
  *v18 = 0;
  *(v18 + 1) = 0;
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onTap];
  *v15 = 1;
  (*(v12 + 104))(v15, *MEMORY[0x277D6EBA8], v11);
  v21 = v19;
  v22 = v20;
  v23 = sub_22088E17C();

  (*(v12 + 8))(v15, v11);
  return v21;
}

char *sub_22087CB1C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *&v4[OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onHitTest];
  if (!v9)
  {
    goto LABEL_4;
  }

  if ([v4 isHidden])
  {
    sub_2204DA45C(v9);
LABEL_4:
    v13.receiver = v4;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_hitTest_withEvent_, a1, a2, a3);
  }

  v11 = v9(a1, a2, a3);
  sub_2204DA45C(v9);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v4;
  return v4;
}

void sub_22087CD10(void *a1, void *a2)
{
  if ((sub_22088F0DC() & 1) == 0)
  {
LABEL_6:
    v9 = v2[10];
    v10 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v9);
    v8 = (*(*(v10 + 16) + 56))(v9);
    goto LABEL_7;
  }

  v5 = [a2 horizontalSizeClass];
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    goto LABEL_6;
  }

  v6 = v2[10];
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v6);
  v8 = (*(*(v7 + 16) + 64))(v6);
LABEL_7:
  v11 = v8;
  [a1 setBackgroundColor_];
}

void sub_22087CE44(void *a1, void *a2)
{
  [a1 setAlwaysBounceVertical_];
  if ((sub_22088F0DC() & 1) == 0)
  {
LABEL_6:
    v9 = v2[10];
    v10 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v9);
    v8 = (*(*(v10 + 16) + 56))(v9);
    goto LABEL_7;
  }

  v5 = [a2 horizontalSizeClass];
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    goto LABEL_6;
  }

  v6 = v2[10];
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v6);
  v8 = (*(*(v7 + 16) + 64))(v6);
LABEL_7:
  v11 = v8;
  [a1 setBackgroundColor_];
}

uint64_t sub_22087CF88(void *a1)
{
  v2 = v1;
  v5 = v1[10];
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  (*(*(v4 + 16) + 32))(&v29, v5);
  v6 = v29;
  v7 = v2[10];
  v8 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v7);
  (*(v8 + 72))(v26 + 1, v7, v8);
  v9 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1((v26 + 1), v27);
  (*(v10 + 24))(v26, v9, v10);
  if (v6 == 1)
  {
    v11 = [a1 standardAppearance];
    if ((sub_22088F0DC() & 1) == 0)
    {
      v12 = v2[10];
      v13 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v12);
      v14 = *(v13 + 16);
      v15 = *(v14 + 56);
      v16 = v11;
      v17 = v15(v12, v14);
      [v16 setBackgroundColor_];
    }

    v18 = v11;
    [v18 setBackgroundEffect_];
    v19 = [objc_opt_self() clearColor];
    [v18 setShadowColor_];

    v20 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v18 setShadowImage_];

    v21 = &selRef_setScrollEdgeAppearance_;
  }

  else
  {
    v23 = v2[10];
    v22 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v23);
    v24 = (*(*(v22 + 16) + 56))(v23);
    [a1 setBarTintColor_];

    v18 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v21 = &selRef_setShadowImage_;
  }

  [a1 *v21];

  return __swift_destroy_boxed_opaque_existential_1(v26 + 1);
}

void sub_22087D218(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = v4[10];
  v9 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v8);
  (*(v9 + 88))(a1, a3, v8, v9);
  v11 = v4[10];
  v10 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v11);
  (*(*(v10 + 16) + 32))(&v23, v11);
  LODWORD(v9) = v23;
  v12 = [a1 searchTextField];
  v13 = v12;
  if (v9 == 1)
  {
    [v12 setBorderStyle_];

    v13 = [a1 searchTextField];
  }

  v15 = v4[10];
  v14 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v15);
  v16 = (*(*(v14 + 16) + 40))(v15);
  [v13 setTextColor_];

  if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
  {
    v17 = [a2 view];
    if (v17)
    {
      v18 = v17;
      v20 = v4[10];
      v19 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v20);
      v21 = (*(*(v19 + 16) + 56))(v20);
      v22 = [v21 colorWithAlphaComponent_];

      [v18 setBackgroundColor_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_22087D43C()
{
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFontOfSize_];
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = MEMORY[0x277D740C0];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v0[10];
  v10 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  v11 = *(v10 + 16);
  v12 = *(v11 + 280);
  v13 = v8;
  v14 = v12(v9, v11);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v14;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v17 = sub_22089125C();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_22087D624(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_22087D684(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_22087D6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  return (*(v8 + 48))(a1, a2, a3, v7, v8);
}

uint64_t sub_22087D76C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v2);
  return (*(*(v3 + 16) + 40))(v2);
}

uint64_t type metadata accessor for TickerWatchlistChangeBlueprintModifier()
{
  result = qword_281280C80;
  if (!qword_281280C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22087D830()
{
  sub_2204446D4(319, &unk_2812991E0);
  if (v0 <= 0x3F)
  {
    sub_2204446D4(319, &qword_281288DB0);
    if (v1 <= 0x3F)
    {
      sub_2204446D4(319, &unk_281299178);
      if (v2 <= 0x3F)
      {
        sub_220885D4C();
        if (v3 <= 0x3F)
        {
          sub_22087D98C(319, &qword_281298610, sub_22048E0A4, MEMORY[0x277D6CF30]);
          if (v4 <= 0x3F)
          {
            sub_220885DFC();
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

void sub_22087D98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22087D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  sub_220881D14(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v28 = *(v4 - 8);
  v29 = v4;
  v30 = *(v28 + 64);
  MEMORY[0x28223BE20](v4, v5);
  v27 = &v26 - v6;
  v7 = type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v34 = v3;
  sub_22048E0A4(0);
  sub_220888FBC();
  sub_220881DD4(v3, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  v11 = *(v8 + 80);
  v12 = swift_allocObject();
  sub_220881B3C(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + ((v11 + 16) & ~v11));
  v13 = sub_220888D9C();
  v26 = sub_220888E3C();

  sub_220881DD4(v3, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  v15 = v27;
  v14 = v28;
  v16 = v29;
  (*(v28 + 16))(v27, v31, v29);
  v17 = (v11 + 32) & ~v11;
  v18 = v14;
  v19 = (v17 + v9 + *(v14 + 80)) & ~*(v14 + 80);
  v20 = swift_allocObject();
  v22 = v32;
  v21 = v33;
  *(v20 + 16) = v32;
  *(v20 + 24) = v21;
  sub_220881B3C(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v17);
  (*(v18 + 32))(v20 + v19, v15, v16);

  v23 = sub_220888D9C();
  sub_220888E4C();

  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v21;

  v25 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_22087DD68(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_22088632C();
  sub_220881DD4(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_220881B3C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v11 = sub_220888D9C();
  v12 = sub_220888E4C();

  return v12;
}

uint64_t sub_22087DF00@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 96), *(a1 + 120));
  type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  v3 = sub_22088646C();
  v4 = sub_22088581C();
  result = sub_2208857FC();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = result;
  return result;
}

uint64_t sub_22087DFA4(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v429 = a5;
  v480 = a3;
  v431 = a2;
  v430 = sub_22088B64C();
  v428 = *(v430 - 8);
  MEMORY[0x28223BE20](v430, v7);
  v427 = &v420 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220881D14(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v420 - v13;
  sub_220881D14(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v426 = v15;
  v425 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v424 = &v420 - v17;
  v495 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v495, v18);
  v492 = (&v420 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v491 = sub_2208852DC();
  v499 = *(v491 - 8);
  MEMORY[0x28223BE20](v491, v20);
  v490 = &v420 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_2208857EC();
  v497 = *(v489 - 8);
  MEMORY[0x28223BE20](v489, v22);
  v488 = &v420 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = sub_22088699C();
  v483 = *(v487 - 8);
  MEMORY[0x28223BE20](v487, v24);
  v510 = &v420 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v486 = &v420 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v503 = (&v420 - v31);
  v518 = sub_220885D4C();
  v482 = *(v518 - 8);
  MEMORY[0x28223BE20](v518, v32);
  v509 = &v420 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v502 = &v420 - v36;
  v517 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v517, v37);
  v516 = &v420 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v512 = (&v420 - v41);
  sub_2204E9FD4(0);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v459 = &v420 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v453 = &v420 - v47;
  v463 = sub_220890D8C();
  v471 = *(v463 - 8);
  MEMORY[0x28223BE20](v463, v48);
  v458 = &v420 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v457 = (&v420 - v52);
  MEMORY[0x28223BE20](v53, v54);
  v452 = (&v420 - v55);
  MEMORY[0x28223BE20](v56, v57);
  v451 = &v420 - v58;
  v462 = sub_22088665C();
  v461 = *(v462 - 8);
  MEMORY[0x28223BE20](v462, v59);
  v456 = (&v420 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v61, v62);
  v455 = (&v420 - v63);
  MEMORY[0x28223BE20](v64, v65);
  v454 = &v420 - v66;
  MEMORY[0x28223BE20](v67, v68);
  v450 = (&v420 - v69);
  MEMORY[0x28223BE20](v70, v71);
  v449 = (&v420 - v72);
  MEMORY[0x28223BE20](v73, v74);
  v460 = &v420 - v75;
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v76 - 8, v77);
  v508 = &v420 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79, v80);
  v511 = &v420 - v81;
  MEMORY[0x28223BE20](v82, v83);
  v501 = &v420 - v84;
  MEMORY[0x28223BE20](v85, v86);
  v505 = &v420 - v87;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v88 - 8, v89);
  v479 = (&v420 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v91, v92);
  v478 = &v420 - v93;
  MEMORY[0x28223BE20](v94, v95);
  v507 = &v420 - v96;
  MEMORY[0x28223BE20](v97, v98);
  v477 = &v420 - v99;
  MEMORY[0x28223BE20](v100, v101);
  v522 = (&v420 - v102);
  MEMORY[0x28223BE20](v103, v104);
  v515 = &v420 - v105;
  MEMORY[0x28223BE20](v106, v107);
  v448 = (&v420 - v108);
  MEMORY[0x28223BE20](v109, v110);
  v447 = &v420 - v111;
  MEMORY[0x28223BE20](v112, v113);
  v513 = (&v420 - v114);
  MEMORY[0x28223BE20](v115, v116);
  v481 = &v420 - v117;
  MEMORY[0x28223BE20](v118, v119);
  v475 = (&v420 - v120);
  MEMORY[0x28223BE20](v121, v122);
  v474 = (&v420 - v123);
  MEMORY[0x28223BE20](v124, v125);
  v473 = &v420 - v126;
  MEMORY[0x28223BE20](v127, v128);
  v500 = &v420 - v129;
  MEMORY[0x28223BE20](v130, v131);
  v506 = &v420 - v132;
  MEMORY[0x28223BE20](v133, v134);
  v446 = (&v420 - v135);
  MEMORY[0x28223BE20](v136, v137);
  v445 = &v420 - v138;
  MEMORY[0x28223BE20](v139, v140);
  v498 = &v420 - v141;
  v521 = sub_22088685C();
  v440 = *(v521 - 8);
  MEMORY[0x28223BE20](v521, v142);
  v519 = &v420 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v144, v145);
  v520 = (&v420 - v146);
  MEMORY[0x28223BE20](v147, v148);
  v514 = &v420 - v149;
  MEMORY[0x28223BE20](v150, v151);
  v504 = (&v420 - v152);
  sub_2204EECD0();
  v494 = v153;
  v493 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v154);
  v476 = &v420 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v156, v157);
  v472 = &v420 - v158;
  sub_2204EEED4();
  MEMORY[0x28223BE20](v159 - 8, v160);
  v435 = (&v420 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v162, v163);
  v437 = &v420 - v164;
  sub_2204EF5C8();
  v166 = v165;
  v433 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v167);
  v434 = &v420 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v169, v170);
  v436 = &v420 - v171;
  sub_2204EF684();
  v444 = v172;
  v432 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v173);
  v423 = &v420 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = MEMORY[0x28223BE20](v175, v176);
  v179 = &v420 - v178;
  v180 = *a1;
  if (!*(*a1 + 16))
  {
    (*(v11 + 104))(v14, *MEMORY[0x277D6DF80], v10, v177);
    v431(v14);
    return (*(v11 + 8))(v14, v10);
  }

  v422 = v10;
  v420 = v14;
  v421 = v11;
  v181 = a1[2];
  v485 = a1[1];
  v484 = v181;
  v182 = v180;
  sub_220881AB8(&qword_281297E20, sub_2204EF5C8);
  sub_220881AB8(&qword_281297E28, sub_2204EF5C8);
  v441 = v179;
  v442 = v166;
  sub_2208888BC();
  v439 = v182;
  v443 = *(v182 + 16);
  v438 = type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  v183 = a4 + *(v438 + 44);
  v184 = *(v183 + 8);
  v185 = *(v183 + 16);
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (v185)
  {
    v184 = 0;
  }

  if (IsVoiceOverRunning)
  {
    v187 = 0;
  }

  else
  {
    v187 = v184;
  }

  v188 = *v183;
  v189 = *v183;
  result = UIAccessibilityIsVoiceOverRunning();
  v191 = 1.0;
  if (((result | v185) & 1) == 0)
  {
    v191 = v188;
  }

  v192 = a4;
  if (((result | v185) & 1) == 0 && (*&v189 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_117;
  }

  if (v191 <= -9.22337204e18)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v191 >= 9.22337204e18)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v193 = v499;
  v194 = v191;
  v195 = v443;
  v496 = a4;
  if (v443 >= v187)
  {
    v307 = v441;
    if (v194 < 0)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (!v194)
    {
LABEL_112:
      v197 = v307;
LABEL_113:
      (*(v432 + 16))(v423, v197, v444);
      sub_220483B88();
      sub_220881AB8(&qword_281294CA0, type metadata accessor for TickerModel);
      v415 = v424;
      sub_22088E7CC();
      v416 = v428;
      v417 = v427;
      v418 = v430;
      (*(v428 + 104))(v427, *MEMORY[0x277D6D868], v430);
      sub_2205A3E7C();
      v419 = v420;
      sub_22088C67C();
      (*(v416 + 8))(v417, v418);
      v431(v419);
      (*(v421 + 8))(v419, v422);
      (*(v425 + 8))(v415, v426);
      return (*(v432 + 8))(v441, v444);
    }

    v447 = v191;
    v308 = 0;
    v434 = v443 & ~(v443 >> 63);
    v520 = (v440 + 16);
    v458 = (v461 + 16);
    v459 = v461 + 32;
    v457 = (v471 + 6);
    v456 = (v471 + 4);
    v448 = (v471 + 2);
    v454 = (v471 + 1);
    v455 = (v461 + 8);
    v479 = (v482 + 16);
    v478 = (v483 + 16);
    LODWORD(v477) = *MEMORY[0x277D69288];
    v476 = (v497 + 104);
    v471 = (v497 + 16);
    v470 = (v499 + 16);
    v469 = (v497 + 8);
    v468 = (v483 + 8);
    v467 = (v482 + 8);
    v466 = (v440 + 8);
    v465 = (v499 + 40);
    v464 = v493 + 32;
    v435 = (v433 + 1);
    v309 = v498;
    v310 = v504;
    while (1)
    {
      v524 = v308;
      if (v195)
      {
        break;
      }

      v315 = MEMORY[0x277D84F90];
      v311 = v307;
LABEL_70:
      v312 = sub_220881AB8(&qword_281297FD8, sub_2204EECD0);
      v313 = sub_220881AB8(&qword_281297FE0, sub_2204EECD0);
      MEMORY[0x223D80A20](v315, v494, v312, v313);
      sub_220483B88();
      sub_220881AB8(&qword_281294CA0, type metadata accessor for TickerModel);
      v314 = v436;
      ++v308;
      sub_22088B29C();
      v307 = v311;
      sub_2208888AC();
      (*v435)(v314, v442);
      v195 = v443;
      if (v308 == v447)
      {
        goto LABEL_112;
      }
    }

    v523 = MEMORY[0x277D84F90];
    result = sub_2204EF810(0, v434, 0);
    if (v195 < 1)
    {
      goto LABEL_116;
    }

    v497 = v308;
    v483 = *(v438 + 32);
    v315 = v523;
    v316 = v439 + ((*(v440 + 80) + 32) & ~*(v440 + 80));
    v482 = *(v440 + 72);
    v522 = *(v440 + 16);
    v317 = v195;
    while (1)
    {
      v515 = v317;
      v516 = v316;
      v522(v310);
      v318 = sub_22088681C();
      v320 = v485;
      if (*(v485 + 16))
      {
        v321 = sub_2204AF97C(v318, v319);
        v323 = v322;

        v324 = v484;
        v325 = v505;
        if (v323)
        {
          v326 = *(v320 + 56);
          v327 = sub_22088676C();
          v328 = *(v327 - 8);
          (*(v328 + 16))(v309, v326 + *(v328 + 72) * v321, v327);
          (*(v328 + 56))(v309, 0, 1, v327);
        }

        else
        {
          v330 = sub_22088676C();
          (*(*(v330 - 8) + 56))(v309, 1, 1, v330);
        }

        v310 = v504;
      }

      else
      {

        v329 = sub_22088676C();
        (*(*(v329 - 8) + 56))(v309, 1, 1, v329);
        v324 = v484;
        v325 = v505;
      }

      v331 = sub_22088681C();
      v333 = *(v324 + 16);
      v519 = v315;
      if (v333)
      {
        v334 = sub_2204AF97C(v331, v332);
        v336 = v335;

        if (v336)
        {
          v337 = v461;
          v338 = *(v324 + 56) + *(v461 + 72) * v334;
          v339 = *(v461 + 16);
          v340 = v449;
          v341 = v462;
          v339(v449, v338, v462);
          v342 = v460;
          v343 = v340;
          v310 = v504;
          v513 = *(v337 + 32);
          (v513)(v460, v343, v341);
          __swift_project_boxed_opaque_existential_1((v496 + 56), *(v496 + 80));
          v344 = v453;
          sub_2204B0174(v342, v309, v310, v453, 0.02);
          v345 = v463;
          if ((*v457)(v344, 1, v463) != 1)
          {
            v397 = v341;
            v398 = *v456;
            v399 = v451;
            (*v456)(v451, v344, v345);
            (*v448)(v452, v399, v345);
            v339(v450, v342, v397);
            v400 = v445;
            sub_220881DD4(v309, v445, sub_22045987C);
            v401 = sub_22088676C();
            v402 = *(v401 - 8);
            v403 = *(v402 + 48);
            if (v403(v400, 1, v401) == 1)
            {
              sub_2204B3DDC(v400, sub_22045987C);
              v511 = 0;
              LODWORD(v510) = 1;
            }

            else
            {
              v511 = sub_22088675C();
              LODWORD(v510) = v404;
              (*(v402 + 8))(v400, v401);
            }

            v405 = v446;
            sub_220881DD4(v498, v446, sub_22045987C);
            if (v403(v405, 1, v401) == 1)
            {
              v406 = v463;
              (*v454)(v451, v463);
              v407 = v462;
              (*v455)(v460, v462);
              sub_2204B3DDC(v405, sub_22045987C);
              v408 = 0;
              v409 = 1;
            }

            else
            {
              v410 = v405;
              v408 = sub_22088666C();
              v409 = v411;
              v406 = v463;
              (*v454)(v451, v463);
              v407 = v462;
              (*v455)(v460, v462);
              (*(v402 + 8))(v410, v401);
            }

            v346 = v496;
            v325 = v505;
            v398(v505, v452, v406);
            v412 = type metadata accessor for StockSparklineViewModel(0);
            (v513)(v325 + v412[8], v450, v407);
            v413 = v325 + v412[5];
            *v413 = v511;
            *(v413 + 8) = v510 & 1;
            v414 = v325 + v412[6];
            *v414 = v408;
            *(v414 + 8) = v409 & 1;
            *(v325 + v412[7]) = 0;
            (*(*(v412 - 1) + 56))(v325, 0, 1, v412);
            v309 = v498;
            v310 = v504;
            goto LABEL_86;
          }

          (*v455)(v342, v341);
          sub_2204B3DDC(v344, sub_2204E9FD4);
          v325 = v505;
        }
      }

      else
      {
      }

      v346 = v496;
      v347 = type metadata accessor for StockSparklineViewModel(0);
      (*(*(v347 - 8) + 56))(v325, 1, 1, v347);
LABEL_86:
      v348 = v521;
      v349 = v522;
      (v522)(v514, v310, v521);
      sub_220881DD4(v309, v506, sub_22045987C);
      v513 = sub_2204E99F0;
      v350 = v501;
      sub_220881DD4(v325, v501, sub_2204E99F0);
      v511 = *v479;
      v351 = v346 + v483;
      v352 = v502;
      v353 = v518;
      (v511)(v502, v351, v518);
      v354 = v512;
      (v349)(v512, v514, v348);
      v355 = v517;
      v356 = v506;
      sub_220881DD4(v506, v354 + *(v517 + 20), sub_22045987C);
      sub_220881DD4(v350, v354 + v355[6], v513);
      (v511)(v354 + v355[8], v352, v353);
      *(v354 + v355[9]) = 0;
      v357 = v500;
      sub_220881DD4(v356, v500, sub_22045987C);
      v358 = v503;
      sub_2208867CC();
      v359 = v473;
      sub_220881DD4(v357, v473, sub_22045987C);
      v360 = sub_22088676C();
      v361 = *(v360 - 8);
      v362 = *(v361 + 48);
      if (v362(v359, 1, v360) == 1)
      {
        sub_2204B3DDC(v359, sub_22045987C);
        v513 = 0;
        LODWORD(v511) = 1;
      }

      else
      {
        v513 = sub_22088675C();
        LODWORD(v511) = v363;
        (*(v361 + 8))(v359, v360);
      }

      v364 = v486;
      v365 = v475;
      v366 = v474;
      sub_220881DD4(v357, v474, sub_22045987C);
      if (v362(v366, 1, v360) == 1)
      {
        sub_2204B3DDC(v366, sub_22045987C);
        v510 = 0;
        LODWORD(v509) = 1;
      }

      else
      {
        v510 = sub_22088666C();
        LODWORD(v509) = v367;
        (*(v361 + 8))(v366, v360);
      }

      sub_220881DD4(v357, v365, sub_22045987C);
      if (v362(v365, 1, v360) == 1)
      {
        sub_2204B3DDC(v365, sub_22045987C);
        v508 = 0;
        LODWORD(v507) = 1;
      }

      else
      {
        v508 = sub_22088671C();
        LODWORD(v507) = v368;
        (*(v361 + 8))(v365, v360);
      }

      v369 = v481;
      sub_220881DD4(v357, v481, sub_22045987C);
      if (v362(v369, 1, v360) == 1)
      {
        sub_2204B3DDC(v369, sub_22045987C);
        v499 = 0;
        v370 = 0;
      }

      else
      {
        v371 = v369;
        v499 = sub_22088668C();
        v370 = v372;
        (*(v361 + 8))(v371, v360);
      }

      v373 = v512 + *(v517 + 28);
      v374 = *v478;
      v375 = v358;
      v376 = v364;
      v377 = v487;
      (*v478)(v364, v375, v487);
      v378 = v488;
      v379 = v489;
      (*v476)(v488, v477, v489);
      v380 = v490;
      sub_22088524C();
      *v373 = v513;
      v373[8] = v511 & 1;
      *(v373 + 2) = v510;
      v373[24] = v509 & 1;
      *(v373 + 4) = v508;
      v373[40] = v507 & 1;
      *(v373 + 6) = v499;
      *(v373 + 7) = v370;
      v381 = type metadata accessor for PriceViewModel();
      v374(&v373[v381[10]], v376, v377);
      *(v373 + 8) = 9666786;
      *(v373 + 9) = 0xA300000000000000;
      (*v471)(&v373[v381[9]], v378, v379);
      v382 = v491;
      (*v470)(&v373[v381[11]], v380, v491);
      if (qword_281294078 != -1)
      {
        swift_once();
      }

      v383 = qword_2812B6B48;
      (*v469)(v378, v379);
      v384 = *v468;
      (*v468)(v376, v377);
      v384(v503, v377);
      sub_2204B3DDC(v500, sub_22045987C);
      (*v467)(v502, v518);
      sub_2204B3DDC(v501, sub_2204E99F0);
      sub_2204B3DDC(v506, sub_22045987C);
      v385 = *v466;
      v386 = v521;
      (*v466)(v514, v521);
      v387 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
      swift_beginAccess();
      (*v465)(v383 + v387, v380, v382);
      swift_endAccess();
      sub_220483A44();
      v389 = *(v388 + 48);
      v390 = v492;
      *v492 = v497;
      v391 = v512;
      sub_220881DD4(v512, v390 + v389, type metadata accessor for StockViewModel);
      sub_220881AB8(&qword_281294CA0, type metadata accessor for TickerModel);
      v392 = v472;
      sub_22088AD7C();
      sub_2204B3DDC(v391, type metadata accessor for StockViewModel);
      sub_2204B3DDC(v505, sub_2204E99F0);
      v393 = v498;
      sub_2204B3DDC(v498, sub_22045987C);
      v310 = v504;
      v385(v504, v386);
      v315 = v519;
      v523 = v519;
      v395 = *(v519 + 2);
      v394 = *(v519 + 3);
      v396 = v515;
      if (v395 >= v394 >> 1)
      {
        sub_2204EF810(v394 > 1, v395 + 1, 1);
        v315 = v523;
      }

      *(v315 + 2) = v395 + 1;
      (*(v493 + 32))(&v315[((*(v493 + 80) + 32) & ~*(v493 + 80)) + *(v493 + 72) * v395], v392, v494);
      v316 = v516 + v482;
      v317 = v396 - 1;
      v309 = v393;
      if (!v317)
      {
        v311 = v441;
        v308 = v497;
        goto LABEL_70;
      }
    }
  }

  result = UIAccessibilityIsVoiceOverRunning();
  if (result)
  {
    v196 = 0;
  }

  else
  {
    v196 = v184;
  }

  v197 = v441;
  if (!v195)
  {
    goto LABEL_120;
  }

  if (v196 == 0x8000000000000000 && v195 == -1)
  {
    goto LABEL_124;
  }

  v198 = v196 / v195;
  if (v198 <= 2)
  {
    v198 = 2;
  }

  v199 = v194 * v198;
  if ((v194 * v198) >> 64 == (v194 * v198) >> 63)
  {
    if ((v199 & 0x8000000000000000) == 0)
    {
      if (v199)
      {
        v200 = 0;
        v437 = v195 & ~(v195 >> 63);
        v506 = v440 + 16;
        v453 = v461 + 16;
        v460 = (v461 + 32);
        v452 = (v471 + 6);
        v451 = (v471 + 4);
        v449 = (v471 + 2);
        v446 = (v471 + 1);
        v450 = (v461 + 8);
        v475 = (v482 + 16);
        v474 = (v483 + 16);
        LODWORD(v473) = *MEMORY[0x277D69288];
        v472 = (v497 + 104);
        v471 = (v497 + 16);
        v470 = (v193 + 16);
        v469 = (v497 + 8);
        v468 = (v483 + 8);
        v467 = (v482 + 8);
        v466 = (v440 + 8);
        v465 = (v193 + 40);
        v464 = v493 + 32;
        ++v433;
        v436 = v199;
        while (1)
        {
          if (__OFADD__(v200, 1))
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          v524 = v200;
          v523 = MEMORY[0x277D84F90];
          result = sub_2204EF810(0, v437, 0);
          if (v195 < 1)
          {
            goto LABEL_115;
          }

          v445 = (v200 + 1);
          v483 = v200;
          v482 = *(v438 + 32);
          v514 = v523;
          v204 = v439 + ((*(v440 + 80) + 32) & ~*(v440 + 80));
          v481 = *(v440 + 72);
          v512 = *(v440 + 16);
          v205 = v195;
          do
          {
            v504 = v205;
            v505 = v204;
            v512(v520);
            v206 = sub_22088681C();
            v208 = v485;
            if (*(v485 + 16))
            {
              v209 = sub_2204AF97C(v206, v207);
              v211 = v210;

              v212 = v484;
              if (v211)
              {
                v213 = *(v208 + 56);
                v214 = sub_22088676C();
                v215 = *(v214 - 8);
                v216 = v215;
                v217 = v213 + *(v215 + 72) * v209;
                v218 = v513;
                (*(v215 + 16))(v513, v217, v214);
                (*(v216 + 56))(v218, 0, 1, v214);
                v219 = v218;
              }

              else
              {
                v221 = sub_22088676C();
                v219 = v513;
                (*(*(v221 - 8) + 56))(v513, 1, 1, v221);
              }
            }

            else
            {

              v220 = sub_22088676C();
              v219 = v513;
              (*(*(v220 - 8) + 56))(v513, 1, 1, v220);
              v212 = v484;
            }

            v222 = sub_22088681C();
            if (!*(v212 + 16))
            {

              goto LABEL_40;
            }

            v224 = sub_2204AF97C(v222, v223);
            v226 = v225;

            if ((v226 & 1) == 0)
            {
              goto LABEL_40;
            }

            v227 = v461;
            v228 = *(v212 + 56) + *(v461 + 72) * v224;
            v229 = *(v461 + 16);
            v230 = v219;
            v231 = v455;
            v232 = v462;
            v229(v455, v228, v462);
            v233 = *(v227 + 32);
            v234 = v454;
            v233(v454, v231, v232);
            __swift_project_boxed_opaque_existential_1((v192 + 56), *(v192 + 80));
            v235 = v459;
            sub_2204B0174(v234, v230, v520, v459, 0.02);
            v236 = v463;
            if ((*v452)(v235, 1, v463) == 1)
            {
              (*v450)(v234, v232);
              sub_2204B3DDC(v235, sub_2204E9FD4);
              v219 = v230;
LABEL_40:
              v237 = v192;
              v238 = type metadata accessor for StockSparklineViewModel(0);
              v239 = v511;
              (*(*(v238 - 8) + 56))(v511, 1, 1, v238);
              goto LABEL_41;
            }

            v503 = v233;
            v290 = *v451;
            v291 = v457;
            (*v451)(v457, v235, v236);
            (*v449)(v458, v291, v236);
            v229(v456, v234, v232);
            v292 = v447;
            sub_220881DD4(v230, v447, sub_22045987C);
            v293 = sub_22088676C();
            v294 = *(v293 - 8);
            v295 = *(v294 + 48);
            if (v295(v292, 1, v293) == 1)
            {
              sub_2204B3DDC(v292, sub_22045987C);
              v502 = 0;
              LODWORD(v501) = 1;
            }

            else
            {
              v502 = sub_22088675C();
              LODWORD(v501) = v296;
              (*(v294 + 8))(v292, v293);
            }

            v297 = v448;
            sub_220881DD4(v513, v448, sub_22045987C);
            if (v295(v297, 1, v293) == 1)
            {
              v298 = v463;
              (*v446)(v457, v463);
              v299 = v462;
              (*v450)(v234, v462);
              sub_2204B3DDC(v297, sub_22045987C);
              v300 = 0;
              v301 = 1;
            }

            else
            {
              v302 = v297;
              v300 = sub_22088666C();
              v301 = v303;
              v298 = v463;
              (*v446)(v457, v463);
              v299 = v462;
              (*v450)(v234, v462);
              (*(v294 + 8))(v302, v293);
            }

            v237 = v496;
            v239 = v511;
            v290(v511, v458, v298);
            v304 = type metadata accessor for StockSparklineViewModel(0);
            (v503)(v239 + v304[8], v456, v299);
            v305 = v239 + v304[5];
            *v305 = v502;
            *(v305 + 8) = v501 & 1;
            v306 = v239 + v304[6];
            *v306 = v300;
            *(v306 + 8) = v301 & 1;
            *(v239 + v304[7]) = 0;
            (*(*(v304 - 1) + 56))(v239, 0, 1, v304);
            v219 = v513;
LABEL_41:
            v240 = v521;
            v241 = v512;
            (v512)(v519, v520, v521);
            sub_220881DD4(v219, v515, sub_22045987C);
            v503 = sub_2204E99F0;
            v242 = v239;
            v243 = v508;
            sub_220881DD4(v242, v508, sub_2204E99F0);
            v502 = *v475;
            v244 = v237 + v482;
            v245 = v509;
            v246 = v518;
            (v502)(v509, v244, v518);
            v247 = v516;
            v241(v516, v519, v240);
            v248 = v517;
            v249 = v515;
            sub_220881DD4(v515, v247 + *(v517 + 20), sub_22045987C);
            sub_220881DD4(v243, v247 + v248[6], v503);
            (v502)(v247 + v248[8], v245, v246);
            *(v247 + v248[9]) = 0;
            v250 = v522;
            sub_220881DD4(v249, v522, sub_22045987C);
            v251 = v510;
            sub_2208867CC();
            v252 = v477;
            sub_220881DD4(v250, v477, sub_22045987C);
            v253 = sub_22088676C();
            v254 = *(v253 - 8);
            v255 = *(v254 + 48);
            if (v255(v252, 1, v253) == 1)
            {
              sub_2204B3DDC(v252, sub_22045987C);
              v503 = 0;
              LODWORD(v502) = 1;
            }

            else
            {
              v503 = sub_22088675C();
              LODWORD(v502) = v256;
              (*(v254 + 8))(v252, v253);
            }

            v257 = v479;
            v258 = v478;
            v259 = v507;
            sub_220881DD4(v522, v507, sub_22045987C);
            if (v255(v259, 1, v253) == 1)
            {
              sub_2204B3DDC(v259, sub_22045987C);
              v501 = 0;
              LODWORD(v500) = 1;
            }

            else
            {
              v501 = sub_22088666C();
              LODWORD(v500) = v260;
              (*(v254 + 8))(v507, v253);
            }

            sub_220881DD4(v522, v258, sub_22045987C);
            if (v255(v258, 1, v253) == 1)
            {
              sub_2204B3DDC(v258, sub_22045987C);
              v499 = 0;
              LODWORD(v498) = 1;
            }

            else
            {
              v499 = sub_22088671C();
              LODWORD(v498) = v261;
              (*(v254 + 8))(v258, v253);
            }

            sub_220881DD4(v522, v257, sub_22045987C);
            if (v255(v257, 1, v253) == 1)
            {
              sub_2204B3DDC(v257, sub_22045987C);
              v497 = 0;
              v262 = 0;
            }

            else
            {
              v497 = sub_22088668C();
              v262 = v263;
              (*(v254 + 8))(v257, v253);
            }

            v264 = v516 + *(v517 + 28);
            v265 = *v474;
            v266 = v486;
            v267 = v251;
            v268 = v487;
            (*v474)(v486, v267, v487);
            v269 = v488;
            v270 = v489;
            (*v472)(v488, v473, v489);
            v271 = v490;
            sub_22088524C();
            *v264 = v503;
            *(v264 + 8) = v502 & 1;
            *(v264 + 16) = v501;
            *(v264 + 24) = v500 & 1;
            *(v264 + 32) = v499;
            *(v264 + 40) = v498 & 1;
            *(v264 + 48) = v497;
            *(v264 + 56) = v262;
            v272 = type metadata accessor for PriceViewModel();
            v265(v264 + v272[10], v266, v268);
            *(v264 + 64) = 9666786;
            *(v264 + 72) = 0xA300000000000000;
            (*v471)(v264 + v272[9], v269, v270);
            v273 = v491;
            (*v470)((v264 + v272[11]), v271, v491);
            if (qword_281294078 != -1)
            {
              swift_once();
            }

            v274 = qword_2812B6B48;
            (*v469)(v269, v270);
            v275 = *v468;
            (*v468)(v266, v268);
            v275(v510, v268);
            sub_2204B3DDC(v522, sub_22045987C);
            (*v467)(v509, v518);
            sub_2204B3DDC(v508, sub_2204E99F0);
            sub_2204B3DDC(v515, sub_22045987C);
            v276 = *v466;
            v277 = v521;
            (*v466)(v519, v521);
            v278 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
            swift_beginAccess();
            (*v465)(v274 + v278, v271, v273);
            swift_endAccess();
            sub_220483A44();
            v280 = *(v279 + 48);
            v281 = v492;
            *v492 = v483;
            v282 = v516;
            sub_220881DD4(v516, v281 + v280, type metadata accessor for StockViewModel);
            sub_220881AB8(&qword_281294CA0, type metadata accessor for TickerModel);
            v283 = v476;
            sub_22088AD7C();
            sub_2204B3DDC(v282, type metadata accessor for StockViewModel);
            sub_2204B3DDC(v511, sub_2204E99F0);
            sub_2204B3DDC(v513, sub_22045987C);
            v276(v520, v277);
            v284 = v514;
            v523 = v514;
            v286 = *(v514 + 2);
            v285 = *(v514 + 3);
            v287 = v496;
            v288 = v504;
            if (v286 >= v285 >> 1)
            {
              sub_2204EF810(v285 > 1, v286 + 1, 1);
              v284 = v523;
            }

            *(v284 + 2) = v286 + 1;
            v289 = (*(v493 + 80) + 32) & ~*(v493 + 80);
            v514 = v284;
            (*(v493 + 32))(&v284[v289 + *(v493 + 72) * v286], v283, v494);
            v204 = v505 + v481;
            v205 = (v288 - 1);
            v192 = v287;
          }

          while (v205);
          v201 = sub_220881AB8(&qword_281297FD8, sub_2204EECD0);
          v202 = sub_220881AB8(&qword_281297FE0, sub_2204EECD0);
          MEMORY[0x223D80A20](v514, v494, v201, v202);
          sub_220483B88();
          v203 = v434;
          sub_22088B29C();
          v197 = v441;
          sub_2208888AC();
          result = (*v433)(v203, v442);
          v200 = v445;
          v195 = v443;
          if (v445 == v436)
          {
            goto LABEL_113;
          }
        }
      }

      goto LABEL_113;
    }

    goto LABEL_123;
  }

LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t sub_220881900(void *a1, void (*a2)(char *))
{
  sub_220881D14(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_220881AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220881B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220881C0C(void *a1)
{
  v3 = *(type metadata accessor for TickerWatchlistChangeBlueprintModifier() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_220881D14(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  return sub_22087DFA4(a1, *(v1 + 16), *(v1 + 24), v1 + v4, v1 + ((v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)));
}

void sub_220881D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TickerSectionDescriptor;
    v8[1] = type metadata accessor for TickerModel();
    v8[2] = sub_220483B88();
    v8[3] = sub_220881AB8(&qword_281294CA0, type metadata accessor for TickerModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220881DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220881F04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_220882714(0, &qword_281298C68, MEMORY[0x277D6D1E8]);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v33[-v19];
  v40 = a1;
  (*(v16 + 104))(&v33[-v19], *MEMORY[0x277D6D1D8], v15, v18);
  sub_2208826A0();
  sub_220882714(0, &qword_281298C98, MEMORY[0x277D6D170]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220899360;
  v26 = (v25 + v24);
  MEMORY[0x223D89BD0](0.0, a4, a5, a6, a7);
  sub_220891A5C();
  *v26 = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  (*(v23 + 104))(v26, *MEMORY[0x277D6D168], v22);
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a2;
  v39 = a3;
  v31 = MEMORY[0x277D6D188];
  sub_2208827A8(0, &qword_281298C88, MEMORY[0x277D6D188]);
  sub_22088282C(&qword_281298C90, &qword_281298C88, v31);
  sub_220886CCC();

  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_220882208(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v33 = a2;
  v34 = a3;
  sub_220882714(0, &qword_281298C68, MEMORY[0x277D6D1E8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (v29 - v13);
  v37 = a1;
  v35 = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *v14 = v15;
  v36 = *MEMORY[0x277D6D1E0];
  v16 = *(v11 + 104);
  v16(v14);
  v17 = MEMORY[0x277D6D150];
  sub_2208827A8(0, &qword_281298CB0, MEMORY[0x277D6D150]);
  v29[1] = sub_22088282C(&qword_281298CB8, &qword_281298CB0, v17);
  sub_220886CEC();
  v30 = *(v11 + 8);
  v30(v14, v10);
  v37 = a1;
  swift_getKeyPath();
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v33;
  *v14 = v18;
  v32 = *MEMORY[0x277D6D1D0];
  v16(v14);
  v31 = sub_220882870(&qword_281298CA8, sub_22071F894);
  v20 = v19;
  sub_220886CDC();

  v21 = v30;
  v30(v14, v10);
  v22 = v35;
  v37 = v35;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4008000000000000;
  *v14 = v23;
  (v16)(v14, v36, v10);
  sub_220886CEC();
  v21(v14, v10);
  v37 = v22;
  swift_getKeyPath();
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v34;
  *v14 = v24;
  (v16)(v14, v32, v10);
  v26 = v25;
  sub_220886CDC();

  v21(v14, v10);
  v37 = v35;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *v14 = v27;
  (v16)(v14, v36, v10);
  sub_220886CEC();
  return (v21)(v14, v10);
}

unint64_t sub_22088264C()
{
  result = qword_2812927D8[0];
  if (!qword_2812927D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812927D8);
  }

  return result;
}

void sub_2208826A0()
{
  if (!qword_28127E180)
  {
    sub_220882714(255, &qword_281298C98, MEMORY[0x277D6D170]);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E180);
    }
  }
}

void sub_220882714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22088264C();
    v7 = a3(a1, &type metadata for TodayViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2208827A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodayViewLayout;
    v8[1] = &type metadata for TodayViewLayoutAttributes;
    v8[2] = sub_22088264C();
    v8[3] = sub_22071F718();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22088282C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_2208827A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220882870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StockFeedPriceViewLayoutOptions()
{
  result = qword_281284B78;
  if (!qword_281284B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_22088292C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for QuoteSummaryViewLayoutOptions();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088C32C();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v13 = type metadata accessor for StockFeedMastheadModel();
  sub_2205BBCE8(COERCE_DOUBLE(a1 + *(v13 + 28)), v11, &v92);
  memcpy(v95, &v92, sizeof(v95));
  v14 = sub_22088C24C();
  v15 = [v14 horizontalSizeClass];

  if (v15 == 1)
  {
    v81 = a3;
    *&v82 = v11;
    sub_22088C20C();
    *&v79 = v16;
    sub_22088C31C();
    v18 = v17;
    sub_22088C22C();
    sub_220891A6C();
    v20 = v18 - v19;
    sub_22088C31C();
    *&v80 = a2;
    sub_22088C20C();
    sub_220891A6C();
    v22 = v20 - v21;
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    *&v78 = v92.size.height;
    CGRectGetWidth(v92);
    v26 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    v27 = sub_2204C4258(a1 + *(v13 + 20));
    v76[1] = v28;
    *&v77 = v27;
    v29 = *v26;
    sub_2204A5DF0();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D740A8];
    *(v30 + 16) = xmmword_220899920;
    v32 = *v31;
    *(v30 + 32) = *v31;
    v76[0] = v30 + 32;
    v33 = v29[2];
    v34 = sub_22044D56C(0, &qword_28127E570);
    v35 = MEMORY[0x277D740C0];
    *(v30 + 40) = v33;
    v36 = *v35;
    *(v30 + 64) = v34;
    *(v30 + 72) = v36;
    v38 = v29[6];
    v37 = v29[7];
    __swift_project_boxed_opaque_existential_1(v29 + 3, v38);
    v39 = *(v37 + 16);
    v40 = *(v39 + 216);
    v41 = v32;
    v42 = v33;
    v43 = v36;
    v44 = v40(v38, v39);
    *(v30 + 104) = sub_22044D56C(0, &qword_28127E530);
    *(v30 + 80) = v44;
    sub_2204A5EAC(v30);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v46 = sub_22089132C();

    type metadata accessor for Key(0);
    sub_2204A63B8();
    v47 = sub_22089125C();

    v48 = [v45 initWithString:v46 attributes:v47];

    [v48 boundingRectWithSize:1 options:0 context:{v22, 1.79769313e308}];
    v49 = v96.origin.x;
    v50 = v96.origin.y;
    v51 = v96.size.width;
    height = v96.size.height;
    v53 = v22 < CGRectGetWidth(v96);
    v54 = *&v78;
    if (v53)
    {
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = width;
      *&v97.size.height = v78;
      CGRectGetHeight(v97);
    }

    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.width = width;
    v98.size.height = v54;
    v55 = CGRectGetWidth(v98);
    v99.origin.y = y;
    v56 = v55;
    *&v77 = v55;
    v99.origin.x = x;
    v99.size.width = width;
    v99.size.height = v54;
    v57 = CGRectGetHeight(v99);
    v100.origin.y = 8.0;
    v58 = *&v79;
    *&v100.origin.x = v79;
    v100.size.width = v56;
    v100.size.height = v57;
    v59 = CGRectGetMaxY(v100) + 5.0;
    v101.origin.x = v49;
    v101.origin.y = v50;
    v101.size.width = v51;
    v101.size.height = height;
    v60 = CGRectGetWidth(v101);
    v102.origin.x = v49;
    v102.origin.y = v50;
    v102.size.width = v51;
    v102.size.height = height;
    v61 = CGRectGetHeight(v102);
    v103.origin.x = v58;
    v103.origin.y = v59;
    v103.size.width = v60;
    v103.size.height = v61;
    v62 = CGRectGetMaxY(v103) + 8.0;
    sub_22088C31C();
    v64 = v63;
    sub_22088C22C();
    sub_220891A6C();
    v66 = v64 - v65;
    v67 = sub_22088C31C();
    MEMORY[0x28223BE20](v67, v68);
    v76[-14] = 0;
    v76[-13] = 0;
    *&v76[-12] = v66;
    *&v76[-11] = v62;
    *&v76[-10] = v58;
    v76[-9] = 0x4020000000000000;
    v76[-8] = v77;
    *&v76[-7] = v57;
    v76[-6] = &v92;
    *&v76[-5] = v58;
    *&v76[-4] = v59;
    *&v76[-3] = v60;
    *&v76[-2] = v61;
    sub_22088C19C();

    sub_22076E304(v82);
    v79 = v84;
    v80 = v83;
    v77 = v86;
    v78 = v85;
    memcpy(v94, v87, sizeof(v94));
    v70 = v86;
    v69 = v85;
    v72 = v84;
    v71 = v83;
    v93[0] = *v88;
    *(v93 + 3) = *&v88[3];
    v73 = v89;
    v82 = v90;
    v74 = v91;
    a3 = v81;
  }

  else
  {
    sub_22076E304(v11);
    memcpy(v94, v95, sizeof(v94));
    v71 = 0uLL;
    v73 = 0;
    v74 = 0;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v82 = 0u;
  }

  *a3 = v71;
  *(a3 + 16) = v72;
  *(a3 + 32) = v69;
  *(a3 + 48) = v70;
  memcpy((a3 + 64), v94, 0x1A1uLL);
  *(a3 + 481) = v93[0];
  *(a3 + 484) = *(v93 + 3);
  *(a3 + 488) = v73;
  result = *&v82;
  *(a3 + 496) = v82;
  *(a3 + 512) = v74;
  return result;
}

void *sub_220882F20@<X0>(const void *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  memcpy(v37, a1, sizeof(v37));
  v7 = sub_22088ABEC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x277D6D320];
  v14 = *(v8 + 104);
  v14(v12, v13, v7, v10);
  sub_22088ABDC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v12, v7);
  (v14)(v12, v13, v7);
  sub_22088ABDC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v23(v12, v7);
  *a2 = v33;
  *(a2 + 8) = v34;
  *(a2 + 16) = v35;
  *(a2 + 24) = v36;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  result = memcpy((a2 + 64), v37, 0x1A1uLL);
  *(a2 + 481) = v38[0];
  *(a2 + 484) = *(v38 + 3);
  *(a2 + 488) = v25;
  *(a2 + 496) = v27;
  *(a2 + 504) = v29;
  *(a2 + 512) = v31;
  return result;
}

void *sub_220883170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a5;
  v40 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v36 = a7;
  v37 = a10;
  v17 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a7 - 8) + 32))(v17, a2, a7);
  v33 = a6;
  v34 = a9;
  v18 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(a6 - 8) + 32))(v18, a3, a6);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x28223BE20](v20, v20);
  v22 = (&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x28223BE20](v24, v24);
  v26 = (&v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v22;
  v29 = *v26;
  v19[5] = type metadata accessor for StockFeedQuoteViewStyler();
  v19[6] = &off_28341CC50;
  v19[2] = v28;
  v19[10] = type metadata accessor for QuoteSummaryViewLayoutAttributesFactory();
  v19[11] = &off_283414AC8;
  v19[7] = v29;
  sub_220458198(&v32, (v19 + 12));
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v19;
}

uint64_t sub_220883470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 417))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 416);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2208834C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 416) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 417) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 417) = 0;
    }

    if (a2)
    {
      *(result + 416) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2208835AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088543C();
  v5 = MEMORY[0x28223BE20](v3, v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  return sub_22088539C();
}

void *sub_220883680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22044DB88(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v60 = &v51 - v8;
  v9 = sub_22088516C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v67 = &v51 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v70 = &v51 - v22;
  sub_2208850EC();
  v23 = *(a3 + 16);
  if (v23)
  {
    v65 = 0;
    v26 = *(v10 + 16);
    v24 = v10 + 16;
    v25 = v26;
    v54 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v27 = a3 + v54;
    v28 = *(v24 + 56);
    v58 = (v24 + 16);
    if (a1 >= 0)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2;
    }

    v68 = (v24 - 8);
    v69 = v28;
    v52 = (v24 + 32);
    v53 = v29;
    v30 = MEMORY[0x277D84F90];
    v55 = v25;
    v56 = v24;
    v66 = v19;
    v57 = a1;
    do
    {
      v25(v19, v27, v9);
      sub_220883BA4();
      if (sub_2208912DC())
      {
        v31 = *v68;
        (*v68)(v19, v9);
      }

      else
      {
        v25(v67, v19, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_220587B60(0, v30[2] + 1, 1, v30);
        }

        v33 = v30[2];
        v32 = v30[3];
        v34 = v58;
        if (v33 >= v32 >> 1)
        {
          v49 = sub_220587B60(v32 > 1, v33 + 1, 1, v30);
          v34 = v58;
          v30 = v49;
        }

        v30[2] = v33 + 1;
        v63 = *v34;
        v64 = v30;
        v35 = v63(v30 + v54 + v33 * v69, v67, v9);
        v62 = &v51;
        v36 = *(v61 + 16);
        MEMORY[0x28223BE20](v35, v37);
        *(&v51 - 32) = a1;
        v38 = v66;
        v39 = v53;
        *(&v51 - 3) = v66;
        *(&v51 - 2) = v39;
        v40 = *(*v36 + *MEMORY[0x277D841D0] + 16);
        v41 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((v36 + v41));
        v42 = v36 + v40;
        v43 = v60;
        v44 = v65;
        sub_2208847D8(v42, v60);
        v65 = v44;
        os_unfair_lock_unlock((v36 + v41));
        v31 = *v68;
        (*v68)(v70, v9);
        v45 = *v52;
        if ((*v52)(v43, 1, v9) == 1)
        {
          a1 = v59;
          v46 = v38;
          v47 = v63;
          v63(v59, v46, v9);
          v48 = v47;
          if (v45(v43, 1, v9) != 1)
          {
            sub_2207EFBA8(v43);
          }
        }

        else
        {
          v31(v38, v9);
          a1 = v59;
          v48 = v63;
          v63(v59, v43, v9);
        }

        v48(v70, a1, v9);
        LOBYTE(a1) = v57;
        v25 = v55;
        v30 = v64;
        v19 = v66;
      }

      v27 += v69;
      --v23;
    }

    while (v23);
  }

  else
  {
    v31 = *(v10 + 8);
    v30 = MEMORY[0x277D84F90];
  }

  v31(v70, v9);
  return v30;
}

unint64_t sub_220883BA4()
{
  result = qword_2812994A0;
  if (!qword_2812994A0)
  {
    sub_22088516C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812994A0);
  }

  return result;
}

uint64_t sub_220883BFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v105 = a3;
  LODWORD(v104) = a2;
  v108 = a1;
  v110 = a5;
  v109 = sub_2208853AC();
  v5 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v6);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044DB88(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v95 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v100 = &v95 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v101 = (&v95 - v21);
  v22 = sub_22088516C();
  v23 = *(v22 - 8);
  v111 = v22;
  v112 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v96 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v97 = &v95 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v98 = &v95 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v99 = &v95 - v34;
  v35 = sub_220884BDC();
  v36 = *(v35 - 8);
  v106 = v35;
  v107 = v36;
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v95 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v95 - v46;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v95 - v50;
  sub_22044DB88(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v52 = *(v5 + 72);
  v53 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  if (v104 > 1u)
  {
    v65 = v5;
    if (v104 == 2)
    {
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_220899920;
      v67 = v66 + v53;
      v68 = *MEMORY[0x277CC9988];
      v104 = v65;
      v69 = *(v65 + 104);
      v70 = v109;
      v69(v67, v68, v109);
      LODWORD(v101) = *MEMORY[0x277CC9998];
      (v69)(v67 + v52);
      sub_2207E1070(v66);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22088531C();

      sub_22088535C();
      v71 = v111;
      v72 = v112;
      if ((*(v112 + 48))(v15, 1, v111) == 1)
      {
        (*(v107 + 8))(v43, v106);
        sub_2207EFBA8(v15);
        return (*(v72 + 56))(v110, 1, 1, v71);
      }

      else
      {
        v88 = v97;
        (*(v72 + 32))(v97, v15, v71);
        v89 = v103;
        v69(v103, v101, v70);
        sub_22088537C();
        (*(v104 + 8))(v89, v70);
        (*(v72 + 8))(v88, v71);
        return (*(v107 + 8))(v43, v106);
      }
    }

    else
    {
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_220899360;
      v81 = *MEMORY[0x277CC9988];
      v82 = *MEMORY[0x277CC9988];
      v83 = v109;
      v104 = *(v65 + 104);
      (v104)(v80 + v53, v82, v109);
      sub_2207E1070(v80);
      swift_setDeallocating();
      v101 = *(v65 + 8);
      v101(v80 + v53, v83);
      swift_deallocClassInstance();
      sub_22088531C();

      sub_22088535C();
      v85 = v111;
      v84 = v112;
      if ((*(v112 + 48))(v11, 1, v111) == 1)
      {
        (*(v107 + 8))(v39, v106);
        sub_2207EFBA8(v11);
        return (*(v84 + 56))(v110, 1, 1, v85);
      }

      else
      {
        v92 = *(v84 + 32);
        LODWORD(v105) = v81;
        v93 = v96;
        v92(v96, v11, v85);
        v94 = v103;
        (v104)(v103, v105, v83);
        sub_22088537C();
        v101(v94, v83);
        (*(v84 + 8))(v93, v85);
        return (*(v107 + 8))(v39, v106);
      }
    }
  }

  else
  {
    v54 = v5;
    if (v104)
    {
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_22089B140;
      v74 = v54;
      v75 = *(v54 + 104);
      v76 = v109;
      (v75)(v73 + v53, *MEMORY[0x277CC9988], v109);
      (v75)(v73 + v53 + v52, *MEMORY[0x277CC9998], v76);
      LODWORD(v104) = *MEMORY[0x277CC9968];
      v75(v73 + v53 + 2 * v52);
      sub_2207E1070(v73);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22088531C();

      v77 = v100;
      sub_22088535C();
      v79 = v111;
      v78 = v112;
      if ((*(v112 + 48))(v77, 1, v111) == 1)
      {
        (*(v107 + 8))(v47, v106);
        sub_2207EFBA8(v77);
        return (*(v78 + 56))(v110, 1, 1, v79);
      }

      else
      {
        (*(v78 + 32))(v98, v77, v79);
        v90 = v103;
        (v75)(v103, v104, v76);
        v91 = v98;
        sub_22088537C();
        (*(v74 + 8))(v90, v76);
        (*(v78 + 8))(v91, v79);
        return (*(v107 + 8))(v47, v106);
      }
    }

    else
    {
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_22089EF70;
      v56 = v55 + v53;
      v57 = *MEMORY[0x277CC9988];
      v104 = v54;
      v58 = *(v54 + 104);
      v59 = v109;
      v58(v55 + v53, v57, v109);
      v58(v55 + v53 + v52, *MEMORY[0x277CC9998], v59);
      v58(v55 + v53 + 2 * v52, *MEMORY[0x277CC9968], v59);
      v60 = *MEMORY[0x277CC9980];
      v58(v56 + 3 * v52, v60, v59);
      sub_2207E1070(v55);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22088531C();

      v61 = v101;
      sub_22088535C();
      v62 = v111;
      v63 = v112;
      if ((*(v112 + 48))(v61, 1, v111) == 1)
      {
        (*(v107 + 8))(v51, v106);
        sub_2207EFBA8(v61);
        return (*(v63 + 56))(v110, 1, 1, v62);
      }

      else
      {
        (*(v63 + 32))(v99, v61, v62);
        v86 = v103;
        v58(v103, v60, v59);
        v87 = v99;
        sub_22088537C();
        (*(v104 + 8))(v86, v59);
        (*(v63 + 8))(v87, v62);
        return (*(v107 + 8))(v51, v106);
      }
    }
  }
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
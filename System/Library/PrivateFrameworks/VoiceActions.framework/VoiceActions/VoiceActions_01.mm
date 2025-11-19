char *sub_2721FAE90()
{
  v2 = v0;
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v0 + 832))(v6);
  v63 = *(v9 + 16);
  if (!v63)
  {

    return MEMORY[0x277D84F90];
  }

  v52[1] = v1;
  v64 = 0;
  v11 = 0;
  v12 = *(*v0 + 544);
  v60 = *v0 + 544;
  v61 = v12;
  v62 = v9 + 32;
  v55 = (v4 + 8);
  v56 = (v4 + 16);
  v57 = MEMORY[0x277D84F90];
  v13 = 0.0;
  *&v10 = 136315138;
  v53 = v10;
  v58 = v8;
  v59 = v9;
  v54 = v3;
  while (v11 < *(v9 + 16))
  {
    v14 = *(v62 + 8 * v11);
    v15 = *(v14 + 16);
    if (!v15)
    {
      goto LABEL_51;
    }

    v16 = *(v14 + 32);
    if (v15 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = (v14 + 36);
      v19 = 1;
      do
      {
        v20 = *v18++;
        v21 = v20;
        v22 = v16 < v20;
        if (v16 < v20)
        {
          v17 = v19;
        }

        v23 = v19 + 1;
        if (v22)
        {
          v16 = v21;
        }

        ++v19;
      }

      while (v15 != v23);
    }

    v24 = *(v62 + 8 * v11);

    v26 = v61(v25);
    if (!*(v26 + 16) || (v27 = sub_272200404(v17), (v28 & 1) == 0))
    {

      v30 = 0;
      v31 = 0;
      if (!v64)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v29 = (*(v26 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];

    if (v30 != 0x3E6B6E616C623CLL || v31 != 0xE700000000000000)
    {
      if ((sub_27237865C() & 1) == 0 && !v64)
      {
LABEL_25:
        v64 = mach_absolute_time();
      }

LABEL_26:
      if (v17 < 1)
      {
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    v31 = 0xE700000000000000;
    v30 = 0x3E6B6E616C623CLL;
    if (v17 < 1)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_27:
    if (v17 == (*(*v2 + 712))())
    {
      goto LABEL_3;
    }

    v33 = (*(*v2 + 352))();
    if (!v31)
    {
      goto LABEL_52;
    }

    if (v33 == v30 && v31 == v34)
    {
    }

    else
    {
      v36 = sub_27237865C();

      if ((v36 & 1) == 0)
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v47 = v57;
        }

        else
        {
          v47 = sub_2721FFBF8(0, *(v57 + 2) + 1, 1, v57);
        }

        v49 = *(v47 + 2);
        v48 = *(v47 + 3);
        if (v49 >= v48 >> 1)
        {
          v47 = sub_2721FFBF8((v48 > 1), v49 + 1, 1, v47);
        }

        *(v47 + 2) = v49 + 1;
        v57 = v47;
        v50 = &v47[16 * v49];
        *(v50 + 4) = v30;
        *(v50 + 5) = v31;

        (*(*v2 + 360))(v30, v31);
        v8 = v58;
        goto LABEL_4;
      }

      v8 = v58;
    }

    v37 = sub_2722C389C();
    (*v56)(v8, v37, v3);

    v38 = sub_27237725C();
    v39 = sub_272377E6C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67 = v41;
      *v40 = v53;
      v65 = v30;
      v66 = v31;
      sub_2721F065C(&qword_280881828, &qword_27237BF40);
      v42 = sub_27237789C();
      v44 = sub_2721FFD04(v42, v43, &v67);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2721E4000, v38, v39, "Skipping repeated fragment %s", v40, 0xCu);
      sub_2722039C8(v41);
      v45 = v41;
      v3 = v54;
      MEMORY[0x2743C69C0](v45, -1, -1);
      v46 = v40;
      v8 = v58;
      MEMORY[0x2743C69C0](v46, -1, -1);
    }

    else
    {
    }

    (*v55)(v8, v3);
LABEL_4:
    ++v11;
    (*(*v2 + 720))(v17);
    v13 = v13 - v16;
    v9 = v59;
    if (v11 == v63)
    {

      return v57;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:

  __break(1u);
  return result;
}

char *sub_2721FB4A4(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(v1 + 168);
  if (v5 != (*(*v6 + 248))())
  {
    __break(1u);
    goto LABEL_35;
  }

  if (!v5)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = *(*(a1 + 32) + 16);
  if (v7 != (*(*v6 + 440))())
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = (*v3 + 328);
  v9 = *v8;
  v10 = (*v8)(v75);
  if (!v75[1])
  {
    result = (*(*v3 + 304))(v70, v10);
    if (!v71)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v67 = v70[0];
    v68 = v70[1];
    *v69 = v71;
    *&v69[8] = v72;
    *&v69[24] = v73;
    v69[40] = v74;
    sub_2721FC408(a1, &v67);
    if (v2)
    {
      v65 = *v69;
      v66[0] = *&v69[16];
      *(v66 + 9) = *&v69[25];
      v63 = v67;
      v64 = v68;
      return sub_272204058(&v63);
    }

    v65 = *v69;
    v66[0] = *&v69[16];
    *(v66 + 9) = *&v69[25];
    v63 = v67;
    v64 = v68;
    v21 = sub_272204058(&v63);
    return (*(*v3 + 920))(v21);
  }

  v11 = sub_2721F40F0(v75, &qword_280881838, &unk_27237C240);
  result = v9(v76, v11);
  if (!*(&v76[0] + 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v77 = v76[0];
  v78 = v76[1];
  v79 = v76[2];
  v13 = sub_272319394(1952540006, 0xE400000000000000);
  if (v2)
  {
LABEL_8:
    v83 = v77;
    sub_272203A70(&v83);
    v84 = v78;
    sub_2721F40F0(&v84, &qword_280881818, &qword_27237BF38);
    v85[0] = *(&v78 + 1);
    sub_2721F40F0(v85, &qword_280881818, &qword_27237BF38);
  }

  v14 = v13;
  sub_2721F065C(&qword_280881840, &unk_27237E830);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_27237AF80;
  *(v15 + 32) = a1;
  v16 = *(*v14 + 648);

  v16(v15);

  v17 = sub_272319394(0x6E695F736B73616DLL, 0xE800000000000000);
  (*(*v3 + 664))();
  (*(*v17 + 624))();

  v18 = sub_272319394(0x695F74657366666FLL, 0xE90000000000006ELL);
  (*(*v3 + 688))();
  (*(*v18 + 624))();

  v19 = sub_272319394(0xD000000000000010, 0x80000002723884D0);
  (*(*v3 + 592))();
  (*(*v19 + 624))();

  v20 = sub_272319394(0xD000000000000012, 0x80000002723884F0);
  (*(*v3 + 616))();
  (*(*v20 + 624))();

  v22 = sub_272319394(0x686361635F6E6E63, 0xEC0000006E695F65);
  (*(*v3 + 640))();
  (*(*v22 + 624))();

  if (((*(*v3 + 496))(v23) & 1) == 0)
  {
    goto LABEL_42;
  }

  result = (*(*v3 + 400))();
  if (!v24)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = sub_272319394(result, v24);

  result = (*(*v3 + 424))(v26);
  if (!result)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v61 = v25;
  v86 = *(result + 2);
  if (v86)
  {
    v27 = 0;
    v62 = result + 32;
    v28 = MEMORY[0x277D84F90];
    while (v27 < *(result + 2))
    {
      v29 = v62[v27];
      v30 = *(v29 + 16);
      v31 = *(v28 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_45;
      }

      v33 = result;
      v34 = v62[v27];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v32 > *(v28 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v35 = v31 + v30;
        }

        else
        {
          v35 = v31;
        }

        result = sub_2721FF8B4(result, v35, 1, v28);
        v28 = result;
      }

      if (*(v29 + 16))
      {
        v36 = *(v28 + 2);
        if ((*(v28 + 3) >> 1) - v36 < v30)
        {
          goto LABEL_47;
        }

        memcpy(&v28[4 * v36 + 32], (v29 + 32), 4 * v30);

        if (v30)
        {
          v37 = *(v28 + 2);
          v38 = __OFADD__(v37, v30);
          v39 = v37 + v30;
          if (v38)
          {
            goto LABEL_48;
          }

          *(v28 + 2) = v39;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_46;
        }
      }

      ++v27;
      result = v33;
      if (v86 == v27)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_37:
  v28 = MEMORY[0x277D84F90];
LABEL_38:

  (*(*v61 + 624))(v28);

  result = (*(*v3 + 448))(v40);
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = sub_272319394(result, v41);

  if (v2)
  {
    goto LABEL_8;
  }

  result = (*(*v3 + 472))(v43);
  if (result)
  {
    (*(*v42 + 624))();

LABEL_42:
    v44 = sub_272275B0C();
    v45 = (*(*v3 + 856))(v44);
    v47 = sub_2723194B0(v45, v46);

    v49 = (*(*v47 + 744))(v48);

    if (!*(v49 + 16))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v50 = *(v49 + 32);

    (*(*v3 + 840))(v50);
    v51 = sub_2723194B0(0xD000000000000011, 0x8000000272388510);
    v52 = (*(*v51 + 720))(v51);

    (*(*v3 + 600))(v52);
    v53 = sub_2723194B0(0xD000000000000013, 0x8000000272388530);
    v54 = (*(*v53 + 720))(v53);

    (*(*v3 + 624))(v54);
    v55 = sub_2723194B0(0x686361635F6E6E63, 0xED000074756F5F65);
    v56 = (*(*v55 + 720))(v55);

    (*(*v3 + 648))(v56);
    v57 = sub_2723194B0(0x756F5F736B73616DLL, 0xE900000000000074);
    v58 = (*(*v57 + 720))(v57);

    (*(*v3 + 672))(v58);
    v59 = sub_2723194B0(0x6F5F74657366666FLL, 0xEA00000000007475);
    v60 = (*(*v59 + 720))(v59);

    (*(*v3 + 696))(v60);
    v80 = v77;
    sub_272203A70(&v80);
    v81 = v78;
    sub_2721F40F0(&v81, &qword_280881818, &qword_27237BF38);
    v82 = *(&v78 + 1);
    sub_2721F40F0(&v82, &qword_280881818, &qword_27237BF38);

    return (*(*v3 + 920))(v21);
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_2721FC408(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = sub_2722CB8B0();
  v9 = *v8;
  sub_2722CB8C8();
  result = sub_2722CB8D0(&v61);
  if (!v3)
  {
    if (*(a1 + 16) && *(*(a1 + 32) + 16))
    {
      MEMORY[0x28223BE20](result);
      sub_2722CB3F0(sub_272204358);
    }

    v11 = *v8;
    sub_2722CB8C8();
    sub_2722CB8D0(&v62);
    v77 = v6;
    v58 = v5;
    v12 = *(*v2 + 680);
    v59 = v2;
    v13 = v12(v60);
    MEMORY[0x28223BE20](v13);
    sub_2722CB3F0(sub_2722040AC);
    v57 = v12;
    v13(v60, 0);
    v14 = *v8;
    sub_2722CB8C8();
    sub_2722CB8D0(&v63);
    v15 = *(MEMORY[0] + 704);
    v16 = v15(v60);
    MEMORY[0x28223BE20](v16);
    sub_2722CB3F0(sub_27220437C);
    v56 = v15;
    v16(v60, 0);
    v17 = *v8;
    sub_2722CB8C8();
    sub_2722CB8D0(&v64);
    v18 = *(MEMORY[0] + 608);
    v19 = v18(v60);
    MEMORY[0x28223BE20](v19);
    sub_2722CB3F0(sub_27220437C);
    v19(v60, 0);
    v20 = *v8;
    sub_2722CB8C8();
    sub_2722CB8D0(&v65);
    v55 = *(MEMORY[0] + 632);
    v21 = v55(v60);
    MEMORY[0x28223BE20](v21);
    sub_2722CB3F0(sub_27220437C);
    v21(v60, 0);
    v22 = *v8;
    sub_2722CB8C8();
    sub_2722CB8D0(&v66);
    v54 = *(*v2 + 656);
    v23 = v54(v60);
    MEMORY[0x28223BE20](v23);
    sub_2722CB3F0(sub_27220437C);
    v24 = v23(v60, 0);
    v25 = (*(*v2 + 496))(v24);
    if (v25)
    {
      result = (*(*v2 + 400))();
      if (v26)
      {
        v27 = *v8;
        sub_2722CB8C8();
        sub_2722CB8D0(&v67);

        result = (*(*v2 + 448))(v28);
        if (v29)
        {
          v30 = *v8;
          sub_2722CB8C8();
          sub_2722CB8D0(&v68);

          result = (*(*v2 + 424))(v31);
          if (!result)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return result;
          }

          if (*(result + 16) && *(*(result + 32) + 16))
          {
            MEMORY[0x28223BE20](result);
            sub_2722CB3F0(sub_272204358);
          }

          else
          {
          }

          result = (*(*v2 + 488))(v60);
          if (!*v32)
          {
            goto LABEL_28;
          }

          v33 = result;
          MEMORY[0x28223BE20](result);
          sub_2722CB3F0(sub_27220437C);
          v25 = v33(v60, 0);
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_17:
    (*(*v2 + 856))(v25);
    v34 = sub_2722CB8BC();
    v35 = *v34;
    sub_2722CB8C8();
    sub_2722CB8D0(v69);

    v36 = *v34;
    sub_2722CB8C8();
    sub_2722CB8D0(&v72);
    v37 = *v34;
    sub_2722CB8C8();
    sub_2722CB8D0(&v73);
    v38 = *v34;
    sub_2722CB8C8();
    sub_2722CB8D0(&v74);
    v39 = *v34;
    sub_2722CB8C8();
    sub_2722CB8D0(&v75);
    v40 = *v34;
    sub_2722CB8C8();
    sub_2722CB8D0(v76);
    v41 = sub_2722CB800(v58);
    v42 = *((*(*v59 + 832))(v41) + 16);

    if (v42)
    {
LABEL_23:
      v47 = (*(*v59 + 848))(v60);
      sub_2722040C8(v69, v48);
      v47(v60, 0);
      v49 = v18(v60);
      MEMORY[0x28223BE20](v49);
      sub_2722CB3F0(sub_272204394);
      v49(v60, 0);
      v50 = v55(v60);
      MEMORY[0x28223BE20](v50);
      sub_2722CB3F0(sub_272204394);
      v50(v60, 0);
      v51 = v54(v60);
      MEMORY[0x28223BE20](v51);
      sub_2722CB3F0(sub_272204394);
      v51(v60, 0);
      v52 = v57(v60);
      MEMORY[0x28223BE20](v52);
      sub_2722CB3F0(sub_272204394);
      v52(v60, 0);
      v53 = v56(v60);
      MEMORY[0x28223BE20](v53);
      sub_2722CB3F0(sub_272204394);
      return v53(v60, 0);
    }

    v43 = v70;
    if ((v70 & 0x8000000000000000) == 0)
    {
      v44 = v71;
      if (v70)
      {
        v45 = sub_272377B5C();
        *(v45 + 16) = v43;
        bzero((v45 + 32), 4 * v43);
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
      }

      v46 = sub_27220392C(v45, v44);

      (*(*v59 + 840))(v46);
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_2721FD3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2721F9FF0();
  v7 = *(a1 + 16);
  v32 = v3;
  v8 = MEMORY[0x277D85000];
  v38 = *(v3 + 160);
  result = (*((*MEMORY[0x277D85000] & *v38) + 0x80))(v6);
  if (!result)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v10 = MEMORY[0x277D84F90];
  if (result >= 1 && v7 != 0)
  {
    v13 = 0;
    v33 = a1 + 32;
    v34 = result;
    v35 = v7;
    while (1)
    {
      v14 = __OFADD__(v13, result) ? ((v13 + result) >> 63) ^ 0x8000000000000000 : v13 + result;
      v15 = *((*v8 & *v38) + 0x88);
      result = v15();
      v16 = v13 + result;
      if (__OFADD__(v13, result))
      {
        break;
      }

      if (v7 < v16)
      {
        v16 = v7;
      }

      if (v16 < v13)
      {
        goto LABEL_41;
      }

      if (v13 < 0)
      {
        goto LABEL_42;
      }

      v17 = v16 - v13;
      v36 = v14;
      v37 = v10;
      if (v16 != v13)
      {
        v39 = MEMORY[0x277D84F90];
        result = sub_2722005AC(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_43;
        }

        v18 = v39;
        v25 = (v33 + 2 * v13);
        while (v17)
        {
          v26 = *v25;
          v28 = *(v39 + 16);
          v27 = *(v39 + 24);
          v19 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            result = sub_2722005AC((v27 > 1), v28 + 1, 1);
          }

          *(v39 + 16) = v19;
          *(v39 + 4 * v28 + 32) = v26;
          ++v25;
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        break;
      }

      v18 = MEMORY[0x277D84F90];
      v19 = *(MEMORY[0x277D84F90] + 16);
LABEL_19:
      while (v19 < v15())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_2721FF8B4(0, *(v18 + 2) + 1, 1, v18);
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        v19 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v18 = sub_2721FF8B4((v20 > 1), v21 + 1, 1, v18);
        }

        *(v18 + 2) = v19;
        *&v18[4 * v21 + 32] = 0;
      }

      v8 = MEMORY[0x277D85000];
      v22 = (*((*MEMORY[0x277D85000] & *v38) + 0x170))(v18);

      v10 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2721FFAC4(0, v37[2] + 1, 1, v37, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
      }

      result = v34;
      v7 = v35;
      v24 = v10[2];
      v23 = v10[3];
      if (v24 >= v23 >> 1)
      {
        v10 = sub_2721FFAC4((v23 > 1), v24 + 1, 1, v10, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
        result = v34;
      }

      v10[2] = v24 + 1;
      v10[v24 + 4] = v22;
      v13 = v36;
      if (v36 >= v35)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_7:
  v12 = (*(*v32 + 944))(v10, a2, a3);
  if (v4)
  {
  }

  v29 = v12;

  return v29;
}

uint64_t sub_2721FD7BC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, float), uint64_t a3)
{
  v5 = v4;
  v65 = a3;
  v66 = a2;
  v64 = sub_272376BCC();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x277D84F90];
  v68 = a1;
  v69 = v3;
  v70 = *(a1 + 16);
  v11 = *(v3 + 168);
  v12 = *(*v11 + 248);
  v13 = *v11 + 248;
  v14 = (v12)(v9);
  result = (*(*v11 + 296))();
  v16 = v14 - result;
  if (__OFSUB__(v14, result))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v16)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v17 = v70;
  if (v16 >= 1 && v70 != 0)
  {
    v20 = 0;
    v61 = v7;
    v62 = (v7 + 8);
    v21 = 0.0;
    v67 = v16;
    while (1)
    {
      v22 = __OFADD__(v20, v16);
      v23 = v20 + v16;
      v24 = v22 ? (v23 >> 63) ^ 0x8000000000000000 : v23;
      result = v12();
      v25 = v20 + result;
      if (__OFADD__(v20, result))
      {
        break;
      }

      if (v17 < v25)
      {
        v25 = v17;
      }

      if (v25 < v20)
      {
        goto LABEL_41;
      }

      if (v20 < 0)
      {
        goto LABEL_42;
      }

      if (v17 == v25 - v20)
      {
        v26 = v68;
      }

      else
      {
        sub_272202180(v68, (v68 + 4), v20, (2 * v25) | 1);
        v26 = v27;
      }

      v71 = v24;
      v72 = v5;
      v28 = v26[2];
      if (v28 < (v12)(v27))
      {
        v29 = *(*v11 + 440);
        while (1)
        {
          result = v29();
          if (result < 0)
          {
            break;
          }

          if (result)
          {
            v30 = result;
            v31 = sub_272377B5C();
            *(v31 + 16) = v30;
            memset_pattern16((v31 + 32), &unk_27237BF00, 4 * v30);
          }

          else
          {
            v31 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2721FFAC4(0, v26[2] + 1, 1, v26, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
          }

          v33 = v26[2];
          v32 = v26[3];
          v34 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            v26 = sub_2721FFAC4((v32 > 1), v33 + 1, 1, v26, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
          }

          v26[2] = v34;
          v26[v33 + 4] = v31;
          if (v34 >= v12())
          {
            goto LABEL_31;
          }
        }

        __break(1u);
        break;
      }

LABEL_31:
      v35 = v72;
      v36 = sub_2721FB4A4(v26);
      v5 = v35;
      if (v35)
      {

        return v13;
      }

      v38 = v36;
      v39 = v37;

      v21 = v21 + v39;
      if (*(v38 + 2))
      {

        sub_2721FDE80(v40);
        v77 = v38;
        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        sub_272203B18();
        v41 = sub_2723777CC();
        v43 = v42;

        v77 = v41;
        v78 = v43;
        v75 = 8492770;
        v76 = 0xA300000000000000;
        v73 = 32;
        v74 = 0xE100000000000000;
        sub_272203AC4();
        v72 = 0;
        v44 = sub_2723780FC();
        v46 = v45;

        v77 = v44;
        v78 = v46;
        v47 = v63;
        sub_272376B4C();
        v5 = v72;
        v48 = sub_2723780EC();
        v50 = v49;
        (*v62)(v47, v64);

        v66(v48, v50, 0, v21);
      }

      v16 = v67;
      v17 = v70;
      v20 = v71;
      if (v71 >= v70)
      {
        v19 = v79;
        v7 = v61;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v21 = 0.0;
  v19 = MEMORY[0x277D84F90];
LABEL_37:
  v77 = v19;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v51 = sub_2723777CC();
  v53 = v52;

  v77 = v51;
  v78 = v53;
  v75 = 8492770;
  v76 = 0xA300000000000000;
  v73 = 32;
  v74 = 0xE100000000000000;
  sub_272203AC4();
  v54 = sub_2723780FC();
  v56 = v55;

  v77 = v54;
  v78 = v56;
  v57 = v63;
  sub_272376B4C();
  v13 = sub_2723780EC();
  v59 = v58;
  (*(v7 + 8))(v57, v64);

  v66(v13, v59, 1, v21);
  (*(*v69 + 360))(0, 0xE000000000000000);
  return v13;
}

uint64_t sub_2721FDE80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2721FFBF8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2721FDF74()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2722C389C();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Start-streaming", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2721F9FF0();
}

uint64_t sub_2721FE0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_272376BCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2721FB4A4(a1);
  v62 = v14;
  if (!v3)
  {
    v15 = result;
    v16 = v13;
    v61[2] = 0;
    v17 = (*(*v4 + 776))(&v67);
    *v18 = v16 + *v18;
    v19 = v17(&v67, 0);
    v20 = *(v15 + 16);
    v21 = *v4;
    v61[1] = v15;
    if (v20)
    {
      (*(v21 + 792))(0);
      v22 = *(*v4 + 752);
      v61[0] = a2;
      swift_bridgeObjectRetain_n();
      v23 = v22(&v67);
      sub_2721FDE80(v15);
      v24 = v23(&v67, 0);
      v67 = (*(*v4 + 736))(v24);
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_272203B18();
      v25 = sub_2723777CC();
      v27 = v26;

      v67 = v25;
      v68 = v27;
      v65 = 8492770;
      v66 = 0xA300000000000000;
      v63 = 32;
      v64 = 0xE100000000000000;
      sub_272203AC4();
      v28 = sub_2723780FC();
      v30 = v29;

      v67 = v28;
      v68 = v30;
      sub_272376B4C();
      sub_2723780EC();
      (*(v8 + 8))(v11, v7);

      v31 = sub_2723778AC();
      v33 = v32;

      v67 = v31;
      v68 = v33;
      v65 = 0x696D72657465645CLL;
      v66 = 0xEB0000000072656ELL;
      v63 = 0;
      v64 = 0xE000000000000000;
      a2 = v61[0];
      v34 = sub_2723780FC();
      v36 = v35;

      v38 = 0;
    }

    else
    {
      v40 = *(v21 + 736);
      v41 = *(v40(v19) + 16);

      if (v41)
      {
        v61[0] = a2;
        v67 = v40(v37);
        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        sub_272203B18();
        v42 = sub_2723777CC();
        v44 = v43;

        v67 = v42;
        v68 = v44;
        v65 = 8492770;
        v66 = 0xA300000000000000;
        v63 = 32;
        v64 = 0xE100000000000000;
        sub_272203AC4();
        v45 = sub_2723780FC();
        v47 = v46;

        v67 = v45;
        v68 = v47;
        sub_272376B4C();
        sub_2723780EC();
        (*(v8 + 8))(v11, v7);

        v48 = sub_2723778AC();
        v50 = v49;

        v67 = v48;
        v68 = v50;
        v65 = 0x696D72657465645CLL;
        v66 = 0xEB0000000072656ELL;
        v63 = 0;
        v64 = 0xE000000000000000;
        v34 = sub_2723780FC();
        v36 = v51;

        v52 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v52 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v53 = (*(*v4 + 808))(v37);
          v54 = *v4;
          a2 = v61[0];
          if (v53)
          {
            v55 = (*(v54 + 784))();
            v56 = *(*v4 + 792);
            if ((v55 & 1) == 0)
            {
              v37 = v56(1);
              v38 = 0;
              goto LABEL_4;
            }

            v56(0);
            (*(*v4 + 360))(0, 0xE000000000000000);
          }

          else
          {
            (*(v54 + 360))(0, 0xE000000000000000);
          }

          v57 = (*(*v4 + 752))(&v67);
          v59 = *v58;
          *v58 = MEMORY[0x277D84F90];

          v60 = v57(&v67, 0);
          (*(*v4 + 768))(v60, 0.0);
          v37 = (*(*v4 + 888))(0);
          v38 = 1;
        }

        else
        {
          v38 = 0;
          a2 = v61[0];
        }
      }

      else
      {
        v38 = 0;
        v34 = 0;
        v36 = 0xE000000000000000;
      }
    }

LABEL_4:
    v39 = (*(*v4 + 760))(v37);

    *a2 = v34;
    *(a2 + 8) = v36;
    *(a2 + 16) = v39;
    *(a2 + 20) = v38;
    *(a2 + 24) = v62;
  }

  return result;
}

float sub_2721FE93C()
{
  v1 = v0;
  v2 = sub_272376BCC();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2722C389C();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_27237725C();
  v13 = sub_272377E7C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2721E4000, v12, v13, "Stop-streaming", v14, 2u);
    MEMORY[0x2743C69C0](v14, -1, -1);
  }

  v15 = (*(v7 + 8))(v10, v6);
  v16 = *(*v1 + 736);
  v17 = *(v16(v15) + 16);

  if (v17)
  {
    v36 = v16(v18);
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_272203B18();
    v19 = sub_2723777CC();
    v21 = v20;

    v36 = v19;
    v37 = v21;
    v34 = 8492770;
    v35 = 0xA300000000000000;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_272203AC4();
    v22 = sub_2723780FC();
    v24 = v23;

    v36 = v22;
    v37 = v24;
    sub_272376B4C();
    sub_2723780EC();
    (*(v30 + 8))(v5, v31);
  }

  v25 = (*(*v1 + 760))(v18);
  v26 = sub_2721F9FF0();
  v27 = *(v16(v26) + 16);

  return v25;
}

uint64_t VACTCEncoder.deinit()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v27 = *(v0 + 88);
  v26 = *(v0 + 80);
  sub_272203B7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  sub_272203220(*(v0 + 96), *(v0 + 104));
  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 224);

  v15 = *(v0 + 248);

  v16 = *(v0 + 256);

  v17 = *(v0 + 272);

  v18 = *(v0 + 280);

  v19 = *(v0 + 288);

  v20 = *(v0 + 296);

  v21 = *(v0 + 304);

  v22 = *(v0 + 320);

  v23 = *(v0 + 336);

  v24 = *(v0 + 352);

  return v0;
}

uint64_t VACTCEncoder.__deallocating_deinit()
{
  VACTCEncoder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2721FEE10(__int128 *a1)
{
  v10 = a1[8];
  v11 = a1[9];
  v12 = *(a1 + 20);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  return sub_2722CB3F0(sub_272203BE4);
}

void *sub_2721FEE94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*a3 + 16);
  if (v12 <= a2)
  {
    if (a1)
    {
      return memcpy(a1, (*a3 + 32), 4 * v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = sub_2722C389C();
    (*(v7 + 16))(v11, v13, v6);
    v14 = sub_27237725C();
    v15 = sub_272377E8C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "Input array size exceeds buffer capacity", v16, 2u);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_2722032B4();
    swift_allocError();
    *v17 = 0xD000000000000028;
    v17[1] = 0x8000000272388550;
    return swift_willThrow();
  }

  return result;
}

void sub_2721FF070(const void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*a3 + 16);
  if (v11 <= a2)
  {
    if (v11)
    {
      v17 = *(*a3 + 16);
      v18 = sub_272377B5C();
      *(v18 + 16) = v11;
      bzero((v18 + 32), 4 * v11);
      if (a1)
      {
LABEL_7:
        memcpy((v18 + 32), a1, 4 * *(*a3 + 16));
        v19 = *a3;
        *a3 = v18;

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    return;
  }

  v12 = sub_2722C389C();
  (*(v7 + 16))(v10, v12, v6);
  v13 = sub_27237725C();
  v14 = sub_272377E8C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2721E4000, v13, v14, "Output array size exceeds buffer capacity", v15, 2u);
    MEMORY[0x2743C69C0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_2722032B4();
  swift_allocError();
  *v16 = 0xD000000000000029;
  v16[1] = 0x80000002723884A0;
  swift_willThrow();
}

void sub_2721FF298(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (a3)
      {
        v18 = sub_272377B5C();
        *(v18 + 16) = a3;
        bzero((v18 + 32), 4 * a3);
        if (a1)
        {
LABEL_8:
          memcpy((v18 + 32), a1, 4 * a3);
          v22 = v18;
          v19 = sub_2721F56DC(0, *(*a4 + 16), a4, &v22);
          v20 = *a4;
          *a4 = v19;

          return;
        }
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
        if (a1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v13 = sub_2722C389C();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_27237725C();
  v15 = sub_272377E8C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2721E4000, v14, v15, "Output array size exceeds buffer capacity", v16, 2u);
    MEMORY[0x2743C69C0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  sub_2722032B4();
  swift_allocError();
  *v17 = 0xD000000000000029;
  v17[1] = 0x80000002723884A0;
  swift_willThrow();
}

unint64_t sub_2721FF4F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_272377A5C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2721FF9B8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2721FF9B8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_272377A2C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_27237792C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_27237792C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_272377A5C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2721FF9B8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_272377A5C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2721FF9B8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2721FF9B8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_27237792C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_2721FF8B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2721FF9B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881880, &unk_272383810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2721FFAC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_2721F065C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    v16 = MEMORY[0x277D84F90];
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
    sub_2721F065C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2721FFBF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881860, &unk_27237C340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2721FFD04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2721FFDD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2722041FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2722039C8(v11);
  return v7;
}

unint64_t sub_2721FFDD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2721FFEDC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_27237825C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2721FFEDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2721FFF28(a1, a2);
  sub_272200058(&unk_28817D138);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2721FFF28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_272200144(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_27237825C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2723779AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_272200144(v10, 0);
        result = sub_2723781BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_272200058(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2722001B8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_272200144(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2721F065C(&qword_280881868, &unk_27237C270);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2722001B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881868, &unk_27237C270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

__n128 sub_2722002C0(__n128 *a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1].n128_u64[0];
  if (v3)
  {
    if (v3 < 8 || (a1 - v2 - 32) < 0x20)
    {
      v4 = 0;
LABEL_5:
      v5 = a1 + v4;
      v6 = &v2[2] + v4;
      v7 = v3 - v4;
      do
      {
        v8 = *v6++;
        result.n128_u32[0] = v8;
        *v5++ = v8;
        --v7;
      }

      while (v7);
      return result;
    }

    v4 = v3 & 0x7FFFFFFFFFFFFFF8;
    v10 = v2 + 3;
    v11 = a1 + 1;
    v12 = v3 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      result = v10[-1];
      v13 = *v10;
      v11[-1] = result;
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if (v3 != v4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

unint64_t sub_27220038C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_27237874C();
  sub_27237790C();
  v6 = sub_27237878C();

  return sub_272200448(a1, a2, v6);
}

unint64_t sub_272200404(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_27237873C();

  return sub_272200500(a1, v4);
}

unint64_t sub_272200448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_27237865C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_272200500(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_27220056C(char *a1, int64_t a2, char a3)
{
  result = sub_2722005EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27220058C(char *a1, int64_t a2, char a3)
{
  result = sub_2722006F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2722005AC(char *a1, int64_t a2, char a3)
{
  result = sub_2722007FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2722005CC(void *a1, int64_t a2, char a3)
{
  result = sub_272200900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2722005EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881860, &unk_27237C340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2722006F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2722007FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_272200900(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_280881850, &unk_27237E840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_272200A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_272377A4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_272200FC0();
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
      result = sub_27237825C();
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

uint64_t sub_272200FC0()
{
  v0 = sub_272377A5C();
  v4 = sub_272201040(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_272201040(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2723778FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_27237805C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_272200144(v9, 0);
  v12 = sub_272201198(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2723778FC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_27237825C();
LABEL_4:

  return sub_2723778FC();
}

unint64_t sub_272201198(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2722013B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2723779DC();
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
          result = sub_27237825C();
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

    result = sub_2722013B8(v12, a6, a7);
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

    result = sub_2723779BC();
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

uint64_t sub_2722013B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2723779EC();
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
    v5 = MEMORY[0x2743C4B20](15, a1 >> 16);
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

unint64_t sub_272201434(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_272200404(a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_2722016EC(v17, isUniquelyReferenced_nonNull_native);
    result = sub_272200404(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2723786BC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = result;
    sub_272201C10();
    result = v22;
    v19 = v11;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v19 = v11;
  if (v4)
  {
LABEL_7:
    v20 = (v19[7] + 16 * result);
    result = *v20;
    v21 = v20[1];
    *v20 = a1;
    v20[1] = a2;
LABEL_12:
    *v5 = v19;
    return result;
  }

LABEL_10:
  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a3;
  v23 = (v19[7] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  v24 = v19[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    result = 0;
    v19[2] = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_272201588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_27220038C(a2, a3);
  v14 = v11[2];
  v15 = __OFADD__(v14, (v13 ^ 1) & 1);
  v16 = v14 + ((v13 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v16)
  {
    sub_272201970(v16, isUniquelyReferenced_nonNull_native);
    result = sub_27220038C(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2723786BC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = result;
    sub_272201D78();
    result = v20;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = v11[7];
    v19 = *(v18 + 8 * result);
    *(v18 + 8 * result) = a1;
LABEL_12:
    *v5 = v11;
    return v19;
  }

LABEL_10:
  v11[(result >> 6) + 8] |= 1 << result;
  v21 = (v11[6] + 16 * result);
  *v21 = a2;
  v21[1] = a3;
  *(v11[7] + 8 * result) = a1;
  v22 = v11[2];
  v15 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v15)
  {
    v11[2] = v23;

    v19 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2722016EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280881870, &qword_272383BC0);
  v36 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_27237873C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_272201970(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280881878, &unk_27237C280);
  v38 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_272201C10()
{
  v1 = v0;
  sub_2721F065C(&qword_280881870, &qword_272383BC0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_272201D78()
{
  v1 = v0;
  sub_2721F065C(&qword_280881878, &unk_27237C280);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_272201EE0(float a1, float a2, float a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v9 = a1 + (v8 * a3);
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    v14 = v13 >> 2;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 8;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_47;
      }

      v20 = a1 + ((v17 + 2) * a3);
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 24);

  v8 = 0;
  v15 = v11 + 8;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v23 = *(v11 + 3);
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_48;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_2721F065C(&qword_280881848, &unk_27237C250);
        v26 = swift_allocObject();
        v27 = j__malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 29;
        }

        v29 = v28 >> 2;
        *(v26 + 2) = v25;
        *(v26 + 3) = 2 * (v28 >> 2);
        v30 = (v26 + 8);
        v31 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v32 = v11 + 8;
          if (v26 != v11 || v30 >= v32 + 4 * v31)
          {
            memmove(v26 + 8, v32, 4 * v31);
          }

          *(v11 + 2) = 0;
        }

        v15 = (v30 + 4 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
      }

      v33 = __OFSUB__(v16--, 1);
      if (v33)
      {
        goto LABEL_46;
      }

      *v15++ = v20;
      v20 = a1 + ((v8 + 1) * a3);
      v34 = v20 <= a2;
      if (a3 > 0.0)
      {
        v34 = v20 >= a2;
      }

      ++v8;
      if (v34)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_40:
  v35 = *(v11 + 3);
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v33 = __OFSUB__(v36, v16);
    v37 = v36 - v16;
    if (v33)
    {
LABEL_49:
      __break(1u);
      return;
    }

    *(v11 + 2) = v37;
  }
}

void sub_272202180(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2721F065C(&qword_280881858, &unk_27237C260);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881850, &unk_27237E840);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_27220226C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for VABundleUtil();
  static VABundleUtil.bundlePathFallback(path:)(a1, a2);
  if (!v2)
  {
    type metadata accessor for VACTCEncoderConfig();
    v6 = sub_2722042B0();
    sub_272254F78(v6, &v10);

    v5 = v10;
    if (v11)
    {
      if (v10 == 0x8000000000000000)
      {
        sub_27237820C();

        MEMORY[0x2743C4AD0](a1, a2);
        v5 = 0xD00000000000001ALL;
        sub_2722032B4();
        swift_allocError();
        *v7 = 0xD00000000000001ALL;
        v7[1] = 0x8000000272388690;
      }

      else
      {
        sub_272204304();
        swift_allocError();
        *v8 = v5;
      }

      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_2722023D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  type metadata accessor for VACTCEncoderConfig();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0xE000000000000000;
  *(v3 + 72) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 80) = 0xE000000000000000;
  *(v3 + 88) = v4;
  *(v3 + 96) = v4;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0xE000000000000000;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0xE000000000000000;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0xE000000000000000;
  *(v3 + 160) = v4;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 200) = 1;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 208) = 0;
  *(v3 + 232) = 1;
  v5 = sub_2721F52A8(0x65467475706E493CLL, 0xEC0000003E737461, v2);
  if (v1)
  {
    goto LABEL_33;
  }

  (*(*v3 + 232))(v5);
  v6 = sub_2721F516C(0xD000000000000011, 0x8000000272388580, v2);
  (*(*v3 + 256))(v6);
  v7 = sub_2721F516C(0xD000000000000018, 0x80000002723885A0, v2);
  (*(*v3 + 280))(v7);
  v8 = sub_2721F516C(0x764F656D6172463CLL, 0xEE003E70616C7265, v2);
  (*(*v3 + 304))(v8);
  v9 = sub_2721F52A8(0x3E6B73614D3CLL, 0xE600000000000000, v2);
  (*(*v3 + 328))(v9);
  v10 = sub_2721F52A8(0xD000000000000010, 0x80000002723885C0, v2);
  (*(*v3 + 352))(v10);
  (*(*v3 + 376))(MEMORY[0x277D84F90]);
  if (!*(v2 + 16) || (v11 = sub_27220038C(0x685365746174533CLL, 0xED00003E73657061), (v12 & 1) == 0) || (sub_2722041FC(*(v2 + 56) + 32 * v11, v70), sub_2721F065C(&qword_280881888, &unk_27237C290), (swift_dynamicCast() & 1) == 0))
  {
LABEL_32:
    sub_2722032B4();
    swift_allocError();
    *v46 = 0xD000000000000026;
    v46[1] = 0x80000002723885E0;
    swift_willThrow();
LABEL_33:

    return v3;
  }

  v63 = v2;
  v66 = v68;
  v65 = *(v68 + 16);
  if (!v65)
  {
LABEL_23:

    v13 = 0xD000000000000026;
    v34 = sub_2721F54A4(0x74537475706E493CLL, 0xED00003E73657461, v63);
    (*(*v3 + 400))(v34);
    (*(*v3 + 424))(0x432C522C31, 0xE500000000000000);
    v35 = sub_2721F516C(0x69447475706E493CLL, 0xEA00000000003E6DLL, v63);
    (*(*v3 + 448))(v35);
    v36 = sub_2721F52A8(0x6D726F666E6F433CLL, 0xEE003E74754F7265, v63);
    (*(*v3 + 472))(v36);
    v37 = sub_2721F52A8(0x74736F504354433CLL, 0xEF3E73726F697265, v63);
    (*(*v3 + 496))(v37);
    v38 = sub_2721F54A4(0x5374757074754F3CLL, 0xEE003E7365746174, v63);
    (*(*v3 + 520))(v38);
    v39 = sub_2721F516C(0x4474757074754F3CLL, 0xEB000000003E6D69, v63);
    (*(*v3 + 544))(v39);
    if (*(v63 + 16) && (v40 = sub_27220038C(0xD000000000000013, 0x8000000272388610), (v41 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v40, v70);
      v42 = swift_dynamicCast();
      v43 = v42 == 0;
      if (v42)
      {
        v44 = v68;
      }

      else
      {
        v44 = 0;
      }

      if (v43)
      {
        v45 = 0;
      }

      else
      {
        v45 = v69;
      }
    }

    else
    {
LABEL_37:
      v44 = 0;
      v45 = 0;
    }

    (*(*v3 + 568))(v44, v45);
    if (*(v63 + 16) && (v47 = sub_27220038C(v13 - 17, 0x8000000272388630), (v48 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v47, v70);
      v49 = swift_dynamicCast();
      if (v49)
      {
        v50 = v68;
      }

      else
      {
        v50 = 0;
      }

      v51 = v49 ^ 1u;
    }

    else
    {
      v50 = 0;
      v51 = 1;
    }

    (*(*v3 + 592))(v50, v51);
    if (*(v63 + 16) && (v52 = sub_27220038C(v13 - 16, 0x8000000272388650), (v53 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v52, v70);
      v54 = swift_dynamicCast();
      v55 = v54 == 0;
      if (v54)
      {
        v56 = v68;
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = 0;
      }

      else
      {
        v57 = v69;
      }
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    (*(*v3 + 616))(v56, v57);
    if (*(v63 + 16) && (v58 = sub_27220038C(v13 - 13, 0x8000000272388670), (v59 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v58, v70);
      v60 = swift_dynamicCast();
      if (v60)
      {
        v61 = v68;
      }

      else
      {
        v61 = 0;
      }

      v62 = v60 ^ 1u;
    }

    else
    {
      v61 = 0;
      v62 = 1;
    }

    (*(*v3 + 640))(v61, v62);
    return v3;
  }

  v13 = 0;
  v64 = v68 + 32;
  while (1)
  {
    if (v13 >= *(v66 + 16))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_2722041FC(v64 + 32 * v13, v70);
    if (!swift_dynamicCast())
    {

      goto LABEL_32;
    }

    v67 = v13;
    v70[0] = v68;
    v70[1] = v69;
    v68 = 44;
    v69 = 0xE100000000000000;
    sub_272203AC4();
    v14 = sub_2723780BC();

    v13 = *(v14 + 16);
    if (v13)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_18:
    v26 = (*(*v3 + 384))(v70);
    v28 = v27;
    v29 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v28 = v29;
    v31 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2721FFAC4(0, v29[2] + 1, 1, v29, &qword_280881898, &qword_27237C2A0, &qword_2808817F0, &unk_27237BF20);
      *v28 = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_2721FFAC4((v32 > 1), v33 + 1, 1, v29, &qword_280881898, &qword_27237C2A0, &qword_2808817F0, &unk_27237BF20);
      *v28 = v29;
    }

    v29[2] = v33 + 1;
    v13 = v67 + 1;
    v29[v33 + 4] = v31;
    v26(v70, 0);
    if (v67 + 1 == v65)
    {
      goto LABEL_23;
    }
  }

  v70[0] = MEMORY[0x277D84F90];
  sub_27220058C(0, v13, 0);
  v15 = 0;
  v16 = v70[0];
  v17 = (v14 + 40);
  v71 = v13;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    result = sub_2721F58F8(v19, v18);
    if (v21)
    {
      break;
    }

    v22 = result;
    v70[0] = v16;
    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    v25 = v16;
    if (v24 >= v23 >> 1)
    {
      sub_27220058C((v23 > 1), v24 + 1, 1);
      v25 = v70[0];
    }

    ++v15;
    *(v25 + 16) = v24 + 1;
    *(v25 + 8 * v24 + 32) = v22;
    v17 += 2;
    v13 = v71;
    v16 = v25;
    if (v71 == v15)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_27220300C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_272203050()
{
  result = qword_280884F10[0];
  if (!qword_280884F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280884F10);
  }

  return result;
}

unint64_t sub_2722030A4()
{
  result = qword_2808817E0;
  if (!qword_2808817E0)
  {
    sub_2721F214C(&qword_2808817D8, &qword_27237BF18);
    sub_272203148(&qword_2808817E8, &qword_2808817F0, &unk_27237BF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808817E0);
  }

  return result;
}

uint64_t sub_272203148(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722031B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_272203220(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2722032B4()
{
  result = qword_280881810;
  if (!qword_280881810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881810);
  }

  return result;
}

uint64_t sub_272203364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165467475706E69 && a2 == 0xEA00000000007374;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172467475706E69 && a2 == 0xEF746E756F43656DLL || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002723881A0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65764F656D617266 && a2 == 0xEC00000070616C72 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1802723693 && a2 == 0xE400000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465626D45736F70 && a2 == 0xEE0074657366664FLL || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168536574617473 && a2 == 0xEB00000000736570 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174537475706E69 && a2 == 0xEB00000000736574 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002723881F0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D69447475706E69 && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D726F666E6F63 && a2 == 0xEC00000074754F72 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6574736F50435463 && a2 == 0xED000073726F6972 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x745374757074756FLL && a2 == 0xEC00000073657461 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x694474757074756FLL && a2 == 0xE90000000000006DLL || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000272388240 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272388260 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272388280 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002723882A0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_27220392C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    v4 = sub_272377B5C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_2722039C8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_272203AC4()
{
  result = qword_280881820;
  if (!qword_280881820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881820);
  }

  return result;
}

unint64_t sub_272203B18()
{
  result = qword_280881830;
  if (!qword_280881830)
  {
    sub_2721F214C(&qword_2808817F8, &unk_27237CA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881830);
  }

  return result;
}

uint64_t sub_272203B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VACTCEncoderConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VACTCEncoderConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_272203F54()
{
  result = qword_2808850A0[0];
  if (!qword_2808850A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808850A0);
  }

  return result;
}

unint64_t sub_272203FAC()
{
  result = qword_2808851B0;
  if (!qword_2808851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808851B0);
  }

  return result;
}

unint64_t sub_272204004()
{
  result = qword_2808851B8[0];
  if (!qword_2808851B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808851B8);
  }

  return result;
}

uint64_t sub_2722040C8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(*a2 + 16);
  v4 = (*a2 + 32);
  while (v3)
  {
    v5 = *v4++;
    v6 = *(v5 + 16);
    --v3;
    v7 = __OFADD__(v2, v6);
    v2 += v6;
    if (v7)
    {
      __break(1u);
      break;
    }
  }

  MEMORY[0x28223BE20](a1);
  return sub_2722CB3F0(sub_2722041E0);
}

char *sub_272204164(char *result)
{
  v2 = result;
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  while (v5)
  {
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v7 = *v6++;
    v8 = *(v7 + 16);
    result = memcpy(&v2[4 * v3], (v7 + 32), 4 * v8);
    --v5;
    v9 = __OFADD__(v3, v8);
    v3 += v8;
    if (v9)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2722041FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_272204258(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_27237865C() & 1;
  }
}

unint64_t sub_2722042B0()
{
  result = qword_2808818A8;
  if (!qword_2808818A8)
  {
    type metadata accessor for VACTCEncoderConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818A8);
  }

  return result;
}

unint64_t sub_272204304()
{
  result = qword_2808818B0;
  if (!qword_2808818B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818B0);
  }

  return result;
}

uint64_t sub_27220442C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_272204464(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2722044FC()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2722C389C();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "VANoopVerifier - didStartListening", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t *sub_27220465C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v66 = a2;
  v5 = type metadata accessor for VASingleEnrollmentData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237728C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

    return static VAVerifierModelOutput.none.getter(v66);
  }

  v62 = result;
  if (!sub_2723783AC())
  {
    return static VAVerifierModelOutput.none.getter(v66);
  }

  v15 = sub_2723783AC();
  result = v62;
LABEL_3:
  v16 = 0xD000000000000018;
  if (v15 > 1)
  {
    v17 = "Unexpected type of input";
    v16 = 0xD00000000000001FLL;
LABEL_16:
    v28 = v17 | 0x8000000000000000;
    sub_2722032B4();
    swift_allocError();
    *v29 = v16;
    v29[1] = v28;
    return swift_willThrow();
  }

  v65 = result;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v17 = "Invalid tASR config file: ";
    goto LABEL_16;
  }

  v20 = v19;
  v63[3] = v18;
  if ((*(v19 + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(v66);
    return swift_unknownObjectRelease();
  }

  v63[2] = v3;
  v21 = *(*v2 + 120);
  v22 = *(v21() + 16);

  if (v22)
  {
    v24 = *(v20 + 32);
    if (!v24)
    {
      v34 = -3.4028e38;
LABEL_29:
      v40 = (v21)(v23);
      v41 = *(v40 + 16);
      if (v41)
      {
        v65 = (v67 + *(v5 + 24));
        v42 = *(v6 + 80);
        v63[1] = v40;
        v43 = v40 + ((v42 + 32) & ~v42);
        v64 = *(v6 + 72);
        v44 = v41 - 1;
        v45 = MEMORY[0x277D84F90];
        while (1)
        {
          v46 = v67;
          sub_272204F54(v43, v67);
          v47 = *v65;
          v48 = v65[1];

          sub_272204FB8(v46);
          v49 = sub_272241A18();
          v50 = sub_272241A18();
          v51 = sub_272324094();
          v52 = sub_272324094();
          v53 = sub_2721F7EE4();
          LOBYTE(v46) = sub_2721F7EE4();
          v54 = sub_27222CD4C();
          sub_27232409C(v47, v48, v51, v52, v53 & 1, v46 & 1, v54 & 1, 0, v68, v34, v49, v50, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_272205014(0, *(v45 + 2) + 1, 1, v45);
          }

          v56 = *(v45 + 2);
          v55 = *(v45 + 3);
          if (v56 >= v55 >> 1)
          {
            v45 = sub_272205014((v55 > 1), v56 + 1, 1, v45);
          }

          *(v45 + 2) = v56 + 1;
          v57 = &v45[80 * v56];
          *(v57 + 2) = v68[0];
          v58 = v68[1];
          v59 = v68[2];
          v60 = v68[4];
          *(v57 + 5) = v68[3];
          *(v57 + 6) = v60;
          *(v57 + 3) = v58;
          *(v57 + 4) = v59;
          if (!v44)
          {
            break;
          }

          --v44;
          v43 += v64;
        }
      }

      else
      {

        v45 = MEMORY[0x277D84F90];
      }

      type metadata accessor for VAKeywordResult();
      v61 = VAKeywordResult.__allocating_init(detections:)(v45);
      sub_2722E45C4(v61, v66);
      return swift_unknownObjectRelease();
    }

    v25 = *(v24 + 16);
    if (v25)
    {
      if (v25 > 7)
      {
        v26 = v25 & 0x7FFFFFFFFFFFFFF8;
        v35 = v24 + 48;
        v27 = 0.0;
        v36 = v25 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = (((((((v27 + COERCE_FLOAT(*(v35 - 16))) + COERCE_FLOAT(HIDWORD(*(v35 - 16)))) + COERCE_FLOAT(*(v35 - 8))) + COERCE_FLOAT(HIDWORD(*(v35 - 16)))) + COERCE_FLOAT(*v35)) + COERCE_FLOAT(HIDWORD(*v35))) + COERCE_FLOAT(*(v35 + 8))) + COERCE_FLOAT(HIDWORD(*v35));
          v35 += 32;
          v36 -= 8;
        }

        while (v36);
        if (v25 == v26)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0.0;
      }

      v37 = v25 - v26;
      v38 = (v24 + 4 * v26 + 32);
      do
      {
        v39 = *v38++;
        v27 = v27 + v39;
        --v37;
      }

      while (v37);
    }

    else
    {
      v27 = 0.0;
    }

LABEL_28:
    v34 = (v27 / v25) * -20.0;
    goto LABEL_29;
  }

  v30 = sub_2722C389C();
  (*(v10 + 16))(v14, v30, v65);
  v31 = sub_27237725C();
  v32 = sub_272377E8C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2721E4000, v31, v32, "No enrollments set for this model", v33, 2u);
    MEMORY[0x2743C69C0](v33, -1, -1);
  }

  (*(v10 + 8))(v14, v65);
  static VAVerifierModelOutput.none.getter(v66);
  return swift_unknownObjectRelease();
}

uint64_t VAVADVerifier.deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VAVADVerifier.__deallocating_deinit()
{
  v0 = *(VAVerifierModel.deinit() + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAVADVerifier.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v2 = v1;
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2722C389C();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_27237725C();
  v10 = sub_272377E7C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2721E4000, v9, v10, "Noop setAudioEnrollments", v11, 2u);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v12 = *(*v2 + 128);

  v12(v13);
}

uint64_t sub_272204F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASingleEnrollmentData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272204FB8(uint64_t a1)
{
  v2 = type metadata accessor for VASingleEnrollmentData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_272205014(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_272205298(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 160) = a1;
  return result;
}

uint64_t VAContextEncoder.__allocating_init(config:outputDim:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VAContextEncoder.init(config:outputDim:)(a1, a2);
  return v4;
}

uint64_t VAContextEncoder.init(config:outputDim:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 152) = 64;
  v7 = (*(*a1 + 568))();
  if (v3)
  {
    goto LABEL_3;
  }

  v9 = v8;
  v10 = v7;
  type metadata accessor for VABundleUtil();
  static VABundleUtil.bundlePathFallback(path:)(v10, v9);

  *(v4 + 160) = a2;
  type metadata accessor for VASentencePieceModel();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F98];
  *(v12 + 16) = MEMORY[0x277D84F98];
  *(v12 + 24) = v13;
  *(v12 + 32) = v13;
  *(v12 + 40) = 256;
  *(v4 + 144) = v12;

  sub_272207BA4();

  v16 = (*(*a1 + 224))(v15);
  if (!v17)
  {
    sub_2722032B4();
    swift_allocError();
    *v21 = 0xD00000000000001FLL;
    v21[1] = 0x8000000272388750;
    swift_willThrow();

    v14 = *(v4 + 144);
LABEL_3:

    type metadata accessor for VAContextEncoder();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v18 = v16;
  v19 = v17;
  if ((*(*a1 + 320))())
  {
    type metadata accessor for VAEspressoUtilsV2();
    v20 = sub_2721F7EE4();
    sub_2723195D0(v18, v19, v20 & 1, &v35);
    v27 = v35;
    v28 = v38;

    *(v4 + 96) = v27;
    *(v4 + 104) = v36;
    *(v4 + 120) = v37;
    *(v4 + 136) = v28;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 73) = 0u;
  }

  else
  {
    type metadata accessor for VAEspressoUtils();
    v22 = (*(*a1 + 344))(&v32);
    v31 = v32;
    v23 = (*(*a1 + 368))(v22);
    v25 = v24;
    v26 = sub_2721F7EE4();
    static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v18, v19, &v31, v23, v25, v26 & 1, v33);

    v29 = v34[0];
    *(v4 + 48) = v33[2];
    *(v4 + 64) = v29;
    *(v4 + 73) = *(v34 + 9);
    v30 = v33[1];
    *(v4 + 16) = v33[0];
    *(v4 + 32) = v30;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
  }

  return v4;
}

uint64_t VASentencePieceModel.__allocating_init(_:)(char a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  *(result + 16) = MEMORY[0x277D84F98];
  *(result + 24) = v3;
  *(result + 32) = v3;
  *(result + 41) = 1;
  *(result + 40) = a1;
  return result;
}

uint64_t sub_2722057D0()
{
  v2 = v1;
  v3 = (*(**(v0 + 144) + 248))();
  v4 = v3;
  v5 = *(v0 + 48);
  if (v5)
  {
    v6 = *(v0 + 32);
    v19[0] = *(v0 + 16);
    v19[1] = v6;
    v21 = *(v0 + 56);
    v22 = *(v0 + 72);
    v23 = *(v0 + 88);
    v7 = *(v0 + 32);
    v16 = *(v0 + 16);
    v17 = v7;
    *&v18[8] = *(v0 + 56);
    *&v18[24] = *(v0 + 72);
    v18[40] = *(v0 + 88);
    *v18 = v5;
    v8 = *(*v0 + 168);
    v20 = v5;
    sub_272203308(v19, v14);
    v9 = v8(v4, &v16);
    if (!v1)
    {
      v2 = v9;
    }

    v14[2] = *v18;
    v15[0] = *&v18[16];
    *(v15 + 9) = *&v18[25];
    v14[0] = v16;
    v14[1] = v17;
    sub_272204058(v14);
  }

  else
  {
    v10 = *(v0 + 104);
    if (v10)
    {
      v24[0] = *(v0 + 96);
      v24[1] = v10;
      v11 = *(v0 + 128);
      v25 = *(v0 + 112);
      v26 = v11;
      v2 = (*(*v0 + 160))(v3, v24);
    }

    else
    {

      sub_2722032B4();
      swift_allocError();
      *v12 = 0xD000000000000028;
      v12[1] = 0x8000000272388770;
      swift_willThrow();
    }
  }

  return v2;
}

char *sub_2722059EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v15 = sub_272377B5C();
    *(v15 + 16) = 64;
    v10 = MEMORY[0x277D84F90];
    v16 = 256;
    goto LABEL_11;
  }

  v24 = MEMORY[0x277D84F90];
  result = sub_2722005AC(0, v5, 0);
  v9 = 0;
  v10 = v24;
  v11 = *(v24 + 16);
  do
  {
    v12 = *(a1 + 32 + 8 * v9);
    v13 = *(v24 + 24);
    if (v11 >= v13 >> 1)
    {
      result = sub_2722005AC((v13 > 1), v11 + 1, 1);
    }

    ++v9;
    *(v24 + 16) = v11 + 1;
    *(v24 + 4 * v11++ + 32) = v12;
  }

  while (v5 != v9);
  v14 = 64 - v5;
  if (v5 > 0x40)
  {
    __break(1u);
    return result;
  }

  if (v5 != 64)
  {
    v15 = sub_272377B5C();
    *(v15 + 16) = v14;
    v16 = 4 * v14;
    v4 = a2;
    v3 = v2;
LABEL_11:
    bzero((v15 + 32), v16);
    goto LABEL_12;
  }

  v15 = MEMORY[0x277D84F90];
  v4 = a2;
  v3 = v2;
LABEL_12:

  sub_272207944(v17);
  if (v5)
  {
    v18 = sub_272377B5C();
    *(v18 + 16) = v5;
    memset_pattern16((v18 + 32), &unk_27237C320, 4 * v5);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  sub_272207944(v15);
  v19 = sub_272319394(0x73657361726870, 0xE700000000000000);
  if (v3)
  {
  }

  else
  {
    (*(*v19 + 624))(v10);

    v20 = sub_272319394(0x6D5F657361726870, 0xEB000000006B7361);
    (*(*v20 + 624))(v18);

    v21 = *(v4 + 40);
    sub_272275B0C();
    v22 = sub_2723194B0(0x626D655F787463, 0xE700000000000000);
    v23 = (*(*v22 + 720))(v22);

    return v23;
  }
}

uint64_t sub_272205D6C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_2722CB8B0();
  v8 = *v7;
  sub_2722CB8C8();
  result = sub_2722CB8D0(&v17);
  if (!v3)
  {
    v10 = *v7;
    sub_2722CB8C8();
    v11 = sub_2722CB8D0(&v18);
    MEMORY[0x28223BE20](v11);
    v12 = sub_2722CB3F0(sub_272208A80);
    MEMORY[0x28223BE20](v12);
    sub_2722CB3F0(sub_272208B54);
    v13 = *sub_2722CB8BC();
    sub_2722CB8C8();
    sub_2722CB8D0(v19);
    v14 = sub_2722CB800(v4);
    result = (*(*v2 + 120))(v14);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      if (result)
      {
        v15 = result;
        v16 = sub_272377B5C();
        *(v16 + 16) = v15;
        bzero((v16 + 32), 4 * v15);
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      v20 = v16;
      MEMORY[0x28223BE20](result);
      sub_2722CB3F0(sub_272208BE8);
      return v20;
    }
  }

  return result;
}

uint64_t VAContextEncoder.deinit()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v10 = *(v0 + 80);
  sub_272203B7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  sub_272203220(*(v0 + 96), *(v0 + 104));
  v8 = *(v0 + 144);

  return v0;
}

uint64_t VAContextEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v10 = *(v0 + 80);
  sub_272203B7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  sub_272203220(*(v0 + 96), *(v0 + 104));
  v8 = *(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t sub_2722060EC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_272206124(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2722061BC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_2722061F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_272206270(char a1)
{
  result = swift_beginAccess();
  *(v1 + 41) = a1;
  return result;
}

uint64_t VASentencePieceModel.init(_:)(char a1)
{
  v2 = MEMORY[0x277D84F98];
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  *(v1 + 41) = 1;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_272206324()
{
  v1 = (*(*v0 + 184))(v6);
  v3 = v2;
  v4 = *v2;

  *v3 = MEMORY[0x277D84F98];
  return v1(v6, 0);
}

uint64_t sub_2722063AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_27237728C();
  v105 = *(v6 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = 8492770;
  v113 = 0xA300000000000000;
  v10 = MEMORY[0x2743C4AD0](a1, a2);
  v12 = v112;
  v11 = v113;
  v13 = *(*v2 + 144);
  v109 = *v2 + 144;
  *&v110 = v13;
  v14 = v13(v10);
  if (*(v14 + 16))
  {
    v15 = sub_27220038C(v12, v11);
    if (v16)
    {
      v17 = *(v14 + 56) + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);

      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v20 = swift_allocObject();
      v110 = xmmword_27237AF80;
      *(v20 + 16) = xmmword_27237AF80;
      *(v20 + 32) = v12;
      *(v20 + 40) = v11;
      sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
      v21 = swift_allocObject();
      *(v21 + 16) = v110;
      *(v21 + 32) = v18;
      return v20;
    }
  }

  v23 = (*(*v3 + 168))(v22);
  if (*(v23 + 16))
  {
    v24 = sub_27220038C(v12, v11);
    if (v25)
    {
      v26 = v24;

      v27 = *(v23 + 56) + 24 * v26;
      v20 = *v27;
      v28 = *(v27 + 8);
      v29 = *(v27 + 16);

      goto LABEL_58;
    }
  }

  *&v104 = v9;
  v106 = v6;

  result = sub_27237791C();
  v20 = MEMORY[0x277D84F90];
  v103 = v11;
  v108 = v3;
  if (result)
  {
    v32 = result;
    v112 = MEMORY[0x277D84F90];
    result = sub_27220056C(0, result & ~(result >> 63), 0);
    if (v32 < 0)
    {
      goto LABEL_68;
    }

    v20 = v112;
    do
    {
      v33 = sub_272377A2C();
      v35 = v34;
      v112 = v20;
      v37 = *(v20 + 16);
      v36 = *(v20 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_27220056C((v36 > 1), v37 + 1, 1);
        v20 = v112;
      }

      *(v20 + 16) = v37 + 1;
      v38 = v20 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      result = sub_27237792C();
      --v32;
    }

    while (v32);
  }

  v102 = v12;
  v114 = v20;
  v39 = 0.0;
  while (2)
  {
    v40 = v106;
    v41 = v104;
    v42 = *(v20 + 16);
    v43 = v42 - 1;
    if (v42 == 1)
    {
LABEL_35:
      v69 = v105;
      v105 += 8;
      v106 = (v69 + 16);
      v70 = (v20 + 40);
      *&v31 = 136315138;
      v104 = v31;
      v107 = v20;
      do
      {
        v71 = *(v70 - 1);
        v72 = *v70;

        if (*((v110)(v73) + 16) && (sub_27220038C(v71, v72), (v74 & 1) != 0))
        {
        }

        else
        {

          v75 = sub_2722C389C();
          (*v106)(v41, v75, v40);

          v76 = sub_27237725C();
          v77 = v41;
          v78 = sub_272377E8C();

          if (os_log_type_enabled(v76, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v112 = v80;
            *v79 = v104;
            v81 = sub_2721FFD04(v71, v72, &v112);

            *(v79 + 4) = v81;
            _os_log_impl(&dword_2721E4000, v76, v78, "Missing key %s", v79, 0xCu);
            sub_2722039C8(v80);
            MEMORY[0x2743C69C0](v80, -1, -1);
            MEMORY[0x2743C69C0](v79, -1, -1);
          }

          else
          {
          }

          (*v105)(v77, v40);
          v41 = v77;
          v20 = v107;
        }

        v70 += 2;
        --v42;
      }

      while (v42);
      v82 = *(v20 + 16);
      v83 = MEMORY[0x277D84F90];
      if (!v82)
      {
LABEL_55:
        v86 = v108;
LABEL_56:
        v95 = v102;
        if (v86[40])
        {
          v96 = *(*v86 + 184);

          v97 = v96(&v112);
          v99 = v98;
          v100 = *v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = *v99;
          *v99 = 0x8000000000000000;
          sub_27220928C(v20, v83, v95, v103, isUniquelyReferenced_nonNull_native, v39);

          *v99 = v111;
          v97(&v112, 0);
          return v20;
        }

LABEL_58:

        return v20;
      }

      v112 = MEMORY[0x277D84F90];
      result = sub_27220058C(0, v82, 0);
      v84 = 0;
      v83 = v112;
      v85 = (v20 + 40);
      v86 = v108;
      while (v84 < *(v20 + 16))
      {
        v87 = *(v85 - 1);
        v88 = *v85;

        result = (v110)(v89);
        if (!*(result + 16))
        {
          goto LABEL_61;
        }

        v90 = result;
        result = sub_27220038C(v87, v88);
        if ((v91 & 1) == 0)
        {
          goto LABEL_62;
        }

        v92 = *(*(v90 + 56) + 16 * result);

        v112 = v83;
        v94 = *(v83 + 16);
        v93 = *(v83 + 24);
        if (v94 >= v93 >> 1)
        {
          result = sub_27220058C((v93 > 1), v94 + 1, 1);
          v83 = v112;
        }

        ++v84;
        *(v83 + 16) = v94 + 1;
        *(v83 + 8 * v94 + 32) = v92;
        v85 += 2;
        if (v82 == v84)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (!v42)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      break;
    }

    v44 = 0;
    v45 = v20 + 32;
    v46 = (v20 + 56);
    v47 = -1;
    v48 = 3.4028e38;
    do
    {
      if (v44 >= *(v20 + 16))
      {
        __break(1u);
LABEL_54:
        v83 = MEMORY[0x277D84F90];
        goto LABEL_55;
      }

      v49 = *(v46 - 2);
      v50 = *(v46 - 1);
      v51 = *v46;
      v112 = *(v46 - 3);
      v113 = v49;
      swift_bridgeObjectRetain_n();

      MEMORY[0x2743C4AD0](v50, v51);

      v54 = v112;
      v53 = v113;
      v55 = (v110)(v52);
      if (!*(v55 + 16))
      {

LABEL_18:

        goto LABEL_19;
      }

      v56 = sub_27220038C(v54, v53);
      v58 = v57;

      if ((v58 & 1) == 0)
      {
        goto LABEL_18;
      }

      v59 = *(*(v55 + 56) + 16 * v56 + 8);

      if (v59 < v48)
      {
        v48 = v59;
        v47 = v44;
      }

LABEL_19:
      ++v44;
      v46 += 2;
    }

    while (v43 != v44);
    if (v47 == -1)
    {
      v42 = *(v20 + 16);
      v40 = v106;
      v41 = v104;
      if (v42)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    }

    if ((v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v60 = *(v20 + 16);
    if (v47 >= v60)
    {
      goto LABEL_65;
    }

    if (v47 + 1 >= v60)
    {
      goto LABEL_66;
    }

    v61 = *(v45 + 16 * v47 + 8);
    v62 = (v45 + 16 * (v47 + 1));
    v63 = *v62;
    v64 = v62[1];
    v112 = *(v45 + 16 * v47);
    v113 = v61;
    swift_bridgeObjectRetain_n();

    MEMORY[0x2743C4AD0](v63, v64);

    v65 = v112;
    v66 = v113;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272208CDC(v20);
      v20 = result;
    }

    if (v47 < *(v20 + 16))
    {
      v67 = v20 + 16 * v47;
      v68 = *(v67 + 40);
      *(v67 + 32) = v65;
      *(v67 + 40) = v66;

      v114 = v20;
      sub_272206C74(v47 + 1);

      v39 = v39 + v48;
      v20 = v114;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_272206C74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_272208CDC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_272206D00()
{
  v1 = v0;
  v103 = 8492770;
  v104 = 0xA300000000000000;
  v2 = MEMORY[0x2743C4AD0]();
  v98 = *(*v0 + 144);
  v3 = v98(v2);
  if (*(v3 + 16))
  {
    v4 = sub_27220038C(8492770, 0xA300000000000000);
    if (v5)
    {
      v6 = *(v3 + 56) + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);

      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_27237AF80;
      *(v9 + 32) = 8492770;
      *(v9 + 40) = 0xA300000000000000;
      sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_27237AF80;
      *(v10 + 32) = v7;
      return v9;
    }
  }

  v12 = (*(*v1 + 168))(v11);
  if (*(v12 + 16))
  {
    v13 = sub_27220038C(8492770, 0xA300000000000000);
    if (v14)
    {
      v15 = v13;

      v16 = *(v12 + 56) + 24 * v15;
      v9 = *v16;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);

LABEL_72:

      return v9;
    }
  }

  v19 = sub_27237791C();
  v20 = MEMORY[0x277D84F90];
  v100 = v1;
  if (v19)
  {
    v21 = v19;
    v103 = MEMORY[0x277D84F90];
    result = sub_27220056C(0, v19 & ~(v19 >> 63), 0);
    if (v21 < 0)
    {
      goto LABEL_85;
    }

    v20 = v103;
    do
    {
      v23 = sub_272377A2C();
      v103 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v23;
        v29 = v24;
        sub_27220056C((v25 > 1), v26 + 1, 1);
        v24 = v29;
        v23 = v28;
        v20 = v103;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      sub_27237792C();
      --v21;
    }

    while (v21);
  }

  v99 = v20;
  v30 = *(v20 + 16);
  sub_2721F065C(&qword_2808818D0, &qword_27237C358);
  result = sub_272377B5C();
  *(result + 16) = v30 + 1;
  *(result + 32) = 2139095039;
  v31 = (result + 32);
  *(result + 40) = -1;
  v96 = result;
  v94 = (result + 32);
  if (!v30)
  {
    v55 = 0;
    *v31 = 0;
    v102 = MEMORY[0x277D84F90];
LABEL_42:
    v56 = MEMORY[0x277D84F90];
    v57 = 0.0;
    while (1)
    {
      v58 = &v31[4 * v55];
      v59 = *v58;
      v60 = *(v58 + 1);
      if (v60 == -1)
      {
        break;
      }

      if (v55 <= v60)
      {
        goto LABEL_76;
      }

      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      v61 = *(v99 + 16);
      if (v61 < v60 || v61 < v55)
      {
        goto LABEL_78;
      }

      v103 = v99;
      v104 = v99 + 32;
      v105 = v60;
      v106 = (2 * v55) | 1;
      sub_2721F065C(&qword_2808818C0, &qword_27237C350);
      sub_272209438();

      v63 = sub_2723777CC();
      v65 = v64;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2721FFBF8(0, *(v56 + 16) + 1, 1, v56);
        v56 = result;
      }

      v67 = *(v56 + 16);
      v66 = *(v56 + 24);
      v68 = v96;
      if (v67 >= v66 >> 1)
      {
        result = sub_2721FFBF8((v66 > 1), v67 + 1, 1, v56);
        v56 = result;
        v68 = v96;
      }

      *(v56 + 16) = v67 + 1;
      v69 = v56 + 16 * v67;
      *(v69 + 32) = v63;
      *(v69 + 40) = v65;
      v102 = v56;
      v57 = v57 + v59;
      v55 = v60;
      v31 = v94;
      if (v60 >= *(v68 + 16))
      {
        goto LABEL_79;
      }
    }

    v70 = v57 + v59;
    v71 = v100;
    goto LABEL_59;
  }

  v32 = (result + 56);
  v33 = v30;
  do
  {
    *(v32 - 2) = 2139095039;
    *v32 = -1;
    v32 += 2;
    --v33;
  }

  while (v33);
  if (!*(result + 16))
  {
    goto LABEL_84;
  }

  v34 = 0;
  *(result + 32) = 0;
  *(result + 40) = -1;
  v35 = result + 48;
  v36 = 3;
  while (2)
  {
    result = sub_2721F065C(&qword_2808818C0, &qword_27237C350);
    v37 = *(v99 + 16);
    if (v37 < v30 || v37 <= v34)
    {
      goto LABEL_83;
    }

    v91 = v34 + 1;
    if (v34)
    {
      v39 = 0xE000000000000000;
    }

    else
    {
      v39 = 0xA300000000000000;
    }

    v40 = 8492770;
    if (v34)
    {
      v40 = 0;
    }

    v97 = v40;
    v95 = &v31[4 * v34];
    sub_272209438();
    v92 = v36;
    v93 = v35;
    v41 = v34;
    do
    {
      ++v41;
      v42 = v34;
      v105 = v34;
      v106 = v36;

      v43 = sub_2723777CC();
      v45 = v44;

      v103 = v97;
      v104 = v39;

      MEMORY[0x2743C4AD0](v43, v45);

      v47 = v98(v46);
      if (!*(v47 + 16))
      {

LABEL_31:

        v34 = v42;
        goto LABEL_32;
      }

      v48 = sub_27220038C(v97, v39);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_31;
      }

      v51 = *(*(v47 + 56) + 16 * v48 + 8);

      v52 = *(v96 + 16);
      if (v42 >= v52)
      {
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
        goto LABEL_80;
      }

      if (v41 >= v52)
      {
        goto LABEL_75;
      }

      v34 = v42;
      v53 = v51 + *v95;
      if (v53 < *v35)
      {
        *v35 = v53;
        *(v35 + 8) = v42;
      }

LABEL_32:
      v35 += 16;
      v36 += 2;
    }

    while (v30 != v41);
    v35 = v93 + 16;
    v36 = v92 + 2;
    v34 = v91;
    v31 = v94;
    if (v91 != v30)
    {
      continue;
    }

    break;
  }

  v54 = *(v96 + 16);
  v102 = MEMORY[0x277D84F90];
  if (v54)
  {
    v55 = v54 - 1;
    goto LABEL_42;
  }

  v71 = v100;

  v70 = 0.0;
LABEL_59:
  sub_27220759C();
  v9 = v102;
  v72 = *(v102 + 16);
  v73 = MEMORY[0x277D84F90];
  if (!v72)
  {
    v84 = v71;
LABEL_69:
    if (v84[40])
    {
      v85 = *(*v84 + 184);

      v86 = v85(&v103);
      v88 = v87;
      v89 = *v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *v88;
      *v88 = 0x8000000000000000;
      sub_27220928C(v102, v73, 8492770, 0xA300000000000000, isUniquelyReferenced_nonNull_native, v70);

      *v88 = v101;
      v86(&v103, 0);
    }

    else
    {
    }

    goto LABEL_72;
  }

  v103 = MEMORY[0x277D84F90];
  result = sub_27220058C(0, v72, 0);
  v74 = 0;
  v73 = v103;
  v75 = (v102 + 40);
  while (v74 < *(v102 + 16))
  {
    v76 = *(v75 - 1);
    v77 = *v75;

    result = v98(v78);
    if (!*(result + 16))
    {
      goto LABEL_81;
    }

    v79 = result;
    result = sub_27220038C(v76, v77);
    if ((v80 & 1) == 0)
    {
      goto LABEL_82;
    }

    v81 = *(*(v79 + 56) + 16 * result);

    v103 = v73;
    v83 = *(v73 + 16);
    v82 = *(v73 + 24);
    if (v83 >= v82 >> 1)
    {
      result = sub_27220058C((v82 > 1), v83 + 1, 1);
      v73 = v103;
    }

    ++v74;
    *(v73 + 16) = v83 + 1;
    *(v73 + 8 * v83 + 32) = v81;
    v75 += 2;
    v84 = v100;
    if (v72 == v74)
    {
      goto LABEL_69;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void sub_27220759C()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_272208CDC(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v5 = (v1 + 40);
  v6 = 1;
  while (1)
  {
    if (v6 - 1 == v3)
    {
      goto LABEL_6;
    }

    v9 = *(v1 + 2);
    if (v6 - 1 >= v9)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v9)
    {
      goto LABEL_16;
    }

    v10 = *(v5 - 1);
    v11 = *v5;
    v12 = *v2;
    *(v5 - 1) = *(v2 - 8);
    *v5 = v12;
    v13 = *(v1 + 2);

    if (v3 >= v13)
    {
      break;
    }

    v7 = *v2;
    *(v2 - 8) = v10;
    *v2 = v11;

LABEL_6:
    --v3;
    v2 -= 16;
    v5 += 2;
    if (v6++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

char *sub_272207690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_272376BCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[2] = a1;
  v32[3] = a2;
  sub_272376B4C();
  sub_272203AC4();
  v11 = sub_2723780AC();
  (*(v7 + 8))(v10, v6);
  v12 = *(v11 + 16);
  v32[1] = v11;
  if (!v12)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_22:

    return v15;
  }

  v13 = *(*v3 + 192);
  v14 = (v11 + 40);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = *(v14 - 1);
    v17 = *v14;

    v20 = v13(v19);
    v21 = *v3;
    if (v20)
    {
      (*(v21 + 232))(v18, v17);
    }

    else
    {
      (*(v21 + 240))(v18, v17);
    }

    v23 = v22;

    v24 = *(v23 + 16);
    v25 = *(v15 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v15 + 3) >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_27220897C(result, v27, 1, v15);
      v15 = result;
      if (*(v23 + 16))
      {
LABEL_17:
        v28 = *(v15 + 2);
        if ((*(v15 + 3) >> 1) - v28 < v24)
        {
          goto LABEL_25;
        }

        memcpy(&v15[8 * v28 + 32], (v23 + 32), 8 * v24);

        if (v24)
        {
          v29 = *(v15 + 2);
          v30 = __OFADD__(v29, v24);
          v31 = v29 + v24;
          if (v30)
          {
            goto LABEL_26;
          }

          *(v15 + 2) = v31;
        }

        goto LABEL_4;
      }
    }

    if (v24)
    {
      goto LABEL_24;
    }

LABEL_4:
    v14 += 2;
    if (!--v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_272207944(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2721FF8B4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_272207A30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(*v1 + 248);
  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v4 - 1);
    v8 = *v4;

    v9 = v3(v7, v8);

    v10 = *(v9 + 16);
    v11 = *(v5 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= *(v5 + 3) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_27220897C(result, v13, 1, v5);
      v5 = result;
      if (*(v9 + 16))
      {
LABEL_14:
        v14 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v14 < v10)
        {
          goto LABEL_22;
        }

        memcpy(&v5[8 * v14 + 32], (v9 + 32), 8 * v10);

        if (v10)
        {
          v15 = *(v5 + 2);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_23;
          }

          *(v5 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += 2;
    if (!--v2)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_272207BA4()
{
  v0 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v137 = *(v0 - 8);
  v1 = *(v137 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v135 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_27237728C();
  v138 = *(v130 - 8);
  v3 = *(v138 + 64);
  v4 = MEMORY[0x28223BE20](v130);
  v129 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v120 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v120 - v9;
  v11 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_272376F3C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for Sentencepiece_ModelProto(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v131 = (&v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_272376D5C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272376CAC();
  v25 = v136;
  v26 = sub_272376D6C();
  if (v25)
  {
    (*(v21 + 8))(v24, v20);
    return 1;
  }

  v136 = v14;
  v133 = v10;
  v134 = v8;
  v127 = v21;
  v128 = v20;
  v144 = 0;
  memset(v143, 0, sizeof(v143));
  v28 = v26;
  v29 = v27;
  sub_2721F0560(v26, v27);
  sub_272376F2C();
  sub_27220949C();
  v30 = v131;
  sub_27237707C();
  v123 = v28;
  v124 = v29;
  v125 = v24;
  v31 = v138;
  v32 = v138;
  v33 = v136;
  sub_2721E6220(v136);
  v34 = sub_2721E6044();
  sub_272209724(v33, type metadata accessor for Sentencepiece_TrainerSpec);
  v142 = v34;
  v141 = 1;
  sub_2721F2080();
  sub_272377A8C();
  sub_272377A8C();
  v126 = v31;
  if (*&v143[0] == v140)
  {
    v122 = 0;
    v35 = v30;
    v36 = v139;
    (*(*v139 + 200))(1);
    v37 = sub_2722C389C();
    v38 = v133;
    v39 = v130;
    v121 = *(v32 + 16);
    v121(v133, v37, v130);
    v40 = sub_27237725C();
    v41 = sub_272377E7C();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v135;
    if (!v42)
    {
      v45 = v38;
      goto LABEL_11;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2721E4000, v40, v41, "Using BPE segmentation model", v44, 2u);
    v45 = v38;
  }

  else
  {
    sub_2721E6220(v33);
    v46 = sub_2721E6044();
    sub_272209724(v33, type metadata accessor for Sentencepiece_TrainerSpec);
    v142 = v46;
    v141 = 0;
    sub_272377A8C();
    sub_272377A8C();
    v36 = v139;
    v43 = v135;
    if (*&v143[0] != v140)
    {
      *&v143[0] = 0;
      *(&v143[0] + 1) = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000021, 0x80000002723887A0);
      v115 = v131;
      sub_2721E6220(v33);
      v116 = sub_2721E6044();
      sub_272209724(v33, type metadata accessor for Sentencepiece_TrainerSpec);
      LOBYTE(v140) = v116;
      sub_27237836C();
      v117 = v143[0];
      sub_2722094F4();
      swift_allocError();
      *v118 = v117;
      swift_willThrow();
      sub_2721F05C8(v123, v124);
      (*(v127 + 8))(v125, v128);
      sub_272209724(v115, type metadata accessor for Sentencepiece_ModelProto);
      return 1;
    }

    v122 = 0;
    v35 = v131;
    (*(*v139 + 200))(0);
    v47 = sub_2722C389C();
    v39 = v130;
    v121 = *(v126 + 16);
    v121(v134, v47, v130);
    v40 = sub_27237725C();
    v48 = sub_272377E7C();
    if (!os_log_type_enabled(v40, v48))
    {
      v49 = v137;
      v45 = v134;
      goto LABEL_12;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2721E4000, v40, v48, "Using BPE segmentation model", v44, 2u);
    v45 = v134;
  }

  MEMORY[0x2743C69C0](v44, -1, -1);
LABEL_11:
  v49 = v137;
LABEL_12:

  v50 = *(v126 + 8);
  v126 += 8;
  v120 = v50;
  v50(v45, v39);
  v136 = *v35;
  v135 = *(v136 + 2);
  if (!v135)
  {
LABEL_37:
    v105 = sub_2722C389C();
    v107 = v129;
    v106 = v130;
    v121(v129, v105, v130);

    v108 = sub_27237725C();
    v109 = sub_272377E7C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 134217984;
      v111 = *((*(*v36 + 120))() + 16);

      *(v110 + 4) = v111;

      _os_log_impl(&dword_2721E4000, v108, v109, "Loaded %ld symbols", v110, 0xCu);
      v112 = v110;
      v106 = v130;
      MEMORY[0x2743C69C0](v112, -1, -1);
    }

    else
    {
    }

    v114 = v127;
    v113 = v128;

    sub_2721F05C8(v123, v124);
    v120(v107, v106);
    (*(v114 + 8))(v125, v113);
    sub_272209724(v131, type metadata accessor for Sentencepiece_ModelProto);
    return 1;
  }

  v51 = 0;
  v52 = *(*v36 + 136);
  v133 = *v36 + 136;
  v134 = v52;
  v132 = &v136[(*(v49 + 80) + 32) & ~*(v49 + 80)];
  while (v51 < *(v136 + 2))
  {
    sub_272209548(&v132[*(v49 + 72) * v51], v43);
    v57 = sub_2721E63D4();
    v59 = v58;
    v60 = (v134)(v143);
    v62 = v61;
    v63 = *v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = *v62;
    v65 = v140;
    *v62 = 0x8000000000000000;
    v66 = sub_272200404(v51);
    v68 = v65[2];
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_45;
    }

    v72 = v67;
    if (v65[3] < v71)
    {
      sub_2722016EC(v71, isUniquelyReferenced_nonNull_native);
      v66 = sub_272200404(v51);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_50;
      }

LABEL_22:
      v74 = v140;
      if (v72)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v77 = v66;
    sub_272201C10();
    v66 = v77;
    v74 = v140;
    if (v72)
    {
LABEL_23:
      v75 = (v74[7] + 16 * v66);
      v76 = v75[1];
      *v75 = v57;
      v75[1] = v59;

      goto LABEL_27;
    }

LABEL_25:
    v74[(v66 >> 6) + 8] |= 1 << v66;
    *(v74[6] + 8 * v66) = v51;
    v78 = (v74[7] + 16 * v66);
    *v78 = v57;
    v78[1] = v59;
    v79 = v74[2];
    v70 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v70)
    {
      goto LABEL_47;
    }

    v74[2] = v80;
LABEL_27:
    v81 = *v62;
    *v62 = v74;

    v60(v143, 0);
    v82 = sub_2721E63D4();
    v84 = v83;
    v85 = sub_2721E63EC();
    v86 = (*(*v139 + 160))(v143);
    v88 = v87;
    v89 = *v87;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v140 = *v88;
    v91 = v140;
    *v88 = 0x8000000000000000;
    v92 = sub_27220038C(v82, v84);
    v94 = v91[2];
    v95 = (v93 & 1) == 0;
    v70 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v70)
    {
      goto LABEL_46;
    }

    v97 = v93;
    if (v91[3] < v96)
    {
      sub_272208CF0(v96, v90);
      v92 = sub_27220038C(v82, v84);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_49;
      }

LABEL_32:
      v99 = -v85;
      if (v97)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

    if (v90)
    {
      goto LABEL_32;
    }

    v104 = v92;
    sub_2722095AC();
    v92 = v104;
    v99 = -v85;
    if (v97)
    {
LABEL_14:
      v53 = v92;

      v54 = v140;
      v55 = v140[7] + 16 * v53;
      *v55 = v51;
      *(v55 + 8) = v99;
      goto LABEL_15;
    }

LABEL_33:
    v54 = v140;
    v140[(v92 >> 6) + 8] |= 1 << v92;
    v100 = (v54[6] + 16 * v92);
    *v100 = v82;
    v100[1] = v84;
    v101 = v54[7] + 16 * v92;
    *v101 = v51;
    *(v101 + 8) = v99;
    v102 = v54[2];
    v70 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (v70)
    {
      goto LABEL_48;
    }

    v54[2] = v103;
LABEL_15:
    ++v51;
    v56 = *v88;
    *v88 = v54;

    v86(v143, 0);
    sub_272209724(v43, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
    v36 = v139;
    v49 = v137;
    if (v135 == v51)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_2723786BC();
  __break(1u);
LABEL_50:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_2722088B8()
{
  v1 = *((*(*v0 + 144))() + 16);

  return v1;
}

void *VASentencePieceModel.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t VASentencePieceModel.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

char *sub_27220897C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_272208A80(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1].u64[0];
  if (!v3)
  {
LABEL_17:
    bzero((a1 + 4 * v3), 256 - 4 * v3);
    return;
  }

  if (v3 <= 0xB || (&v2[2] + 8 * v3 > a1 ? (v4 = &v2[2] >= a1 + 4 * v3) : (v4 = 1), !v4))
  {
    v5 = 0;
LABEL_13:
    v13 = (a1 + 4 * v5);
    v14 = &v2[2].i64[v5];
    v15 = v3 - v5;
    do
    {
      v16 = *v14++;
      *v13++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_15;
  }

  v5 = v3 & 0x7FFFFFFFFFFFFFF8;
  v6 = v2 + 4;
  v7 = (a1 + 16);
  v8 = v3 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v10 = v6[-2];
    v9 = v6[-1];
    v12 = *v6;
    v11 = v6[1];
    v6 += 4;
    v7[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v10)), vcvtq_f64_s64(v9));
    *v7 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v12)), vcvtq_f64_s64(v11));
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v3 != v5)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v3 <= 0x40)
  {
    if (v3 == 64)
    {
      return;
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_272208B54(char *__b)
{
  v3 = *(*(v1 + 16) + 16);
  if (!v3)
  {
    v4 = 0;
LABEL_6:

    bzero(&__b[v4], 256 - v4);
    return;
  }

  v4 = 4 * v3;
  memset_pattern16(__b, &unk_27237C320, 4 * v3);
  if (v3 > 0x40)
  {
    __break(1u);
    return;
  }

  if (v3 != 64)
  {
    goto LABEL_6;
  }
}

uint64_t sub_272208BE8(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(*v2 + 2);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2722002AC(v3);
  }

  *v2 = v3;
  if (v4 > *(v3 + 2))
  {
    __break(1u);
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v3 = sub_2722002AC(v3);
LABEL_6:
  v9 = 0;
  *v2 = v3;
  do
  {
    v10 = *(v5 + 4 * v9);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v3);
      v3 = result;
      *v2 = result;
    }

    *&v3[4 * v9 + 32] = v10;
    v3 = *v2;
    ++v9;
  }

  while (v4 != v9);
  return result;
}

uint64_t sub_272208CF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_2808818E0, &unk_27237C4A0);
  v42 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v29 = *(v27 + 8);
      if ((v42 & 1) == 0)
      {
        v30 = v24[1];
      }

      v31 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v29;
      ++*(v8 + 16);
      v5 = v41;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_272208FB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_2808818E8, &qword_27237C4B0);
  v40 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v41 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v41;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_27220928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_27220038C(a3, a4);
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
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_272208FB0(v20, a5 & 1);
      v24 = *v7;
      v15 = sub_27220038C(a3, a4);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_272209A4C();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v29 = *v27;
    v28 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a6;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v26[6] + 16 * v15);
  *v31 = a3;
  v31[1] = a4;
  v32 = v26[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a6;
  v33 = v26[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v34;
}

unint64_t sub_272209438()
{
  result = qword_2808818C8;
  if (!qword_2808818C8)
  {
    sub_2721F214C(&qword_2808818C0, &qword_27237C350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818C8);
  }

  return result;
}

unint64_t sub_27220949C()
{
  result = qword_280881690;
  if (!qword_280881690)
  {
    type metadata accessor for Sentencepiece_ModelProto(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881690);
  }

  return result;
}

unint64_t sub_2722094F4()
{
  result = qword_2808818D8;
  if (!qword_2808818D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818D8);
  }

  return result;
}

uint64_t sub_272209548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2722095AC()
{
  v1 = v0;
  sub_2721F065C(&qword_2808818E0, &unk_27237C4A0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_272209724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_272209784(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_272209790(uint64_t a1, int a2)
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

uint64_t sub_2722097D8(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of VASentencePieceModel.encode(_:)()
{
  return (*(*v0 + 248))();
}

{
  return (*(*v0 + 256))();
}

uint64_t dispatch thunk of VASentencePieceModel.decode(_:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

void *sub_272209A4C()
{
  v1 = v0;
  sub_2721F065C(&qword_2808818E8, &qword_27237C4B0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = *(v4 + 56) + v17;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;
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

      v16 = *(v2 + 64 + 8 * v8);
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

VoiceActions::VATinyASRModelInferenceMode_optional __swiftcall VATinyASRModelInferenceMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_272209C20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t *sub_272209CFC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_272209DCC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_272216154(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_272209EA8()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_272209EE0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_fuzzyKeywordsWithSpaces;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272209F28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_fuzzyKeywordsWithSpaces;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272209FE0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_blockInferenceRequestPendingFinalResult;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27220A024(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_blockInferenceRequestPendingFinalResult;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_27220A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v6 = v5;
  v94 = a5;
  v88 = a4;
  v89 = a3;
  v90 = a1;
  v91 = a2;
  v7 = sub_272377EDC();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v7);
  v85 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_272377ECC();
  v10 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v83 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2723776EC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
  *(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadState) = 0;
  v92 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrDelegate;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech;
  type metadata accessor for SharedBool();
  v16 = sub_272244CEC(0, 0x664F646E45746F67, 0xEE00686365657053);
  v80 = v15;
  *(v5 + v15) = v16;
  v17 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult;
  v18 = sub_272244CEC(0, 0x6C616E6946746F67, 0xEE00746C75736552);
  v79 = v17;
  *(v5 + v17) = v18;
  v19 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData;
  v20 = sub_272244CEC(0, 0x6552646C756F6873, 0xEF61746144746573);
  v78 = v19;
  *(v5 + v19) = v20;
  v75 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult;
  *(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = 0;
  v76 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
  *(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask) = 0;
  v21 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor;
  type metadata accessor for VATinyASRSpotter.VADOutputActor();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  v77 = v21;
  *(v6 + v21) = v22;
  v72 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeStartOfSpeech;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeStartOfSpeech) = 0;
  v23 = (v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  v73 = v23;
  v24 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_fuzzyKeywordsWithSpaces;
  v25 = MEMORY[0x277D84F90];
  v26 = sub_272216188(MEMORY[0x277D84F90]);
  v71 = v24;
  *(v6 + v24) = v26;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_blockInferenceRequestPendingFinalResult) = 0;
  v68 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask) = 0;
  v69 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector) = 0;
  v27 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate) = 0;
  v70 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech) = 0;
  v28 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorAudioOutputStream;
  v29 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v30 = *(*(v29 - 8) + 56);
  v74 = v28;
  v30(v6 + v28, 1, 1, v29);
  v31 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorFeatureOutputStream;
  v32 = sub_2721F065C(&qword_280881908, &qword_27237C4F8);
  v33 = *(*(v32 - 8) + 56);
  v67 = v31;
  v33(v6 + v31, 1, 1, v32);
  v34 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue;
  v82 = sub_27221982C(0, &qword_280881910, 0x277D85C78);
  sub_2723776CC();
  v93[0] = v25;
  sub_2722197D4(&qword_280881918, MEMORY[0x277D85230]);
  sub_2721F065C(&qword_280881920, &qword_27237C500);
  v35 = v94;
  sub_2722199BC(&qword_280881928, &qword_280881920, &qword_27237C500);
  v36 = v88;
  sub_27237815C();
  (*(v86 + 104))(v85, *MEMORY[0x277D85260], v87);
  v37 = v89;
  v38 = sub_272377F0C();
  v86 = v34;
  *(v6 + v34) = v38;
  swift_unknownObjectWeakAssign();
  v39 = *(v6 + v27);
  v87 = v27;
  *(v6 + v27) = v37;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v40 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider;
  v41 = sub_27221629C(v36, v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider);
  v42 = MEMORY[0x277D85000];
  v43 = (*((*MEMORY[0x277D85000] & *v35) + 0xB8))(v41);
  v44 = v43;
  if (v43)
  {
    *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig) = v43;
    v45 = *(*v43 + 488);

    if (v45(v46))
    {
      type metadata accessor for VATransducer();
    }

    else
    {
      type metadata accessor for VACTCEncoder();
    }

    v48 = v66[1];
    v49 = static VACTCEncoder.build(config:debug:)(v44, 0);
    if (!v48)
    {
      v64 = v90;
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) = v49;
      sub_272335304(v93);
      v6 = sub_272335390(v64, v94, v93);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_2722039C8(v36);
      return v6;
    }

    sub_2722039C8(v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v47 = 0xD000000000000013;
    v47[1] = 0x8000000272388880;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_2722039C8(v36);
  }

  sub_272216300(v6 + v92);
  sub_2722039C8((v6 + v40));
  if (v44)
  {
    v50 = *(v6 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig);
  }

  v51 = *(v6 + v80);

  v52 = *(v6 + v79);

  v53 = *(v6 + v78);

  v54 = *(v6 + v76);

  v55 = *(v6 + v77);

  v56 = *(v6 + v72);

  v57 = *v73;

  v58 = *(v6 + v71);

  v59 = *(v6 + v68);

  v60 = *(v6 + v69);

  v61 = *(v6 + v87);
  swift_unknownObjectRelease();

  sub_2721F40F0(v6 + v74, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v6 + v67, &qword_2808819C0, &unk_27237C510);

  type metadata accessor for VATinyASRSpotter();
  v62 = *((*v42 & *v6) + 0x30);
  v63 = *((*v42 & *v6) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

void *static VATinyASRSpotter.buildForConfig(delegate:tasrDelegate:speechDetectorDelegate:tasrConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VAStrategyProviderPassthrough();
  v9 = sub_2722043D8();
  type metadata accessor for VAConfiguration();
  v10 = static VAConfiguration.buildForTasr(tasrConfig:)(a4);
  v13[3] = v8;
  v13[4] = &protocol witness table for VAStrategyProviderPassthrough;
  v13[0] = v9;
  v11 = objc_allocWithZone(type metadata accessor for VATinyASRSpotter());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_27220A148(a1, a2, a3, v13, v10);
}

unint64_t sub_27220AAF0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for VARuntimeParameters();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v3 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v17 = 0xD00000000000006DLL;
LABEL_7:
    *v16 = v17;
    v16[1] = v3;
    swift_willThrow();
    return v3;
  }

  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  if (!v14)
  {
    v3 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v17 = 0xD000000000000011;
    goto LABEL_7;
  }

  v15 = v14;
  if ((*((*v13 & *v1) + 0x120))())
  {
  }

  else
  {
    type metadata accessor for VARequestContext(0);
    sub_272216374(a1, v12);
    v18 = sub_272232E00(v15, v12);
    (*((*v13 & *v1) + 0x128))(v18);
  }

  (*((*v13 & *v1) + 0x548))(a1);
  if (!v2)
  {
    v19 = sub_272377C3C();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v1;
    v21 = v1;
    v22 = sub_27220E6B4(0, 0, v8, &unk_27237C528, v20);
    v23 = (*((*v13 & *v21) + 0x140))(v22);
    v24 = (*((*v13 & *v21) + 0x138))(v23);
    if (v24)
    {
      v3 = v24;

      return v3;
    }

    v3 = 0x8000000272388930;
    sub_2722032B4();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    v26[1] = 0x8000000272388930;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_27220AF08(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_27237728C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_27220AFF8;

  return sub_27220B31C();
}

uint64_t sub_27220AFF8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_27220B17C;
  }

  else
  {
    v3 = sub_27220B10C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27220B10C()
{
  v1 = *(v0 + 40);
  **(v0 + 16) = 1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220B17C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v14 = v0[7];
  v16 = v0[4];
  v15 = v0[5];
  v17 = v0[3];

  (*(v16 + 8))(v15, v17);
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[7];

  return v18();
}

uint64_t sub_27220B31C()
{
  v1[10] = v0;
  v2 = *(*(type metadata accessor for VARuntimeParameters() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v3 = sub_27237728C();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27220B42C, 0, 0);
}

uint64_t sub_27220B42C()
{
  v1 = v0[10];
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
  {
    *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
    v1 = v0[10];
  }

  *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(0);
  v3 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel;
  v0[18] = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel;
  v4 = *(**(v1 + v3) + 968);

  v4(v5);
  v0[19] = 0;

  type metadata accessor for VACircularMatrixBuffer();
  v12 = *(**(*(v1 + v3) + 168) + 248);

  v14 = v12(v13);

  v15 = *(**(*(v1 + v3) + 168) + 440);

  v17 = v15(v16);

  v0[20] = sub_272302780(v14, v17);
  type metadata accessor for VATinyASRFeatureExtract();
  v18 = VATinyASRFeatureExtract.__allocating_init()();
  v0[21] = v18;
  v19 = *(**(*(v1 + v3) + 168) + 248);

  v21 = v19(v20);

  v22 = *(**(*(v1 + v3) + 168) + 296);

  v24 = v22(v23);

  v0[22] = v21 - v24;
  if (__OFSUB__(v21, v24))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v21 - v24 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = v0[10];
  v27 = swift_allocObject();
  v0[23] = v27;
  *(v27 + 16) = 0;
  v28 = (*((*v2 & *v26) + 0x120))();
  v0[24] = v28;
  if (v28)
  {
    v29 = v28;
    v30 = v0[10];
    v31 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock;
    v0[25] = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock;
    v32 = (v30 + v31);
    v33 = *v32;
    v32[1] = 0;
    v32[2] = 0;
    *v32 = 0;

    v38 = *v29 + 368;
    v34 = *v38;
    v0[26] = *v38;
    v0[27] = v38 & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
    v39 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    v0[28] = v36;
    *v36 = v0;
    v36[1] = sub_27220B93C;

    return v39();
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD000000000000022;
    v37[1] = 0x8000000272388E30;
    swift_willThrow();

    v7 = v0[16];
    v6 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[11];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_27220B93C(char a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 466) = a1;

  return MEMORY[0x2822009F8](sub_27220BA3C, 0, 0);
}

uint64_t sub_27220BA3C()
{
  if (*(v0 + 466) == 1)
  {
    v1 = *(v0 + 152);
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = sub_2722C389C();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_27237725C();
    v7 = sub_272377E7C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2721E4000, v6, v7, "Processing loop done, reset tasr model", v8, 2u);
      MEMORY[0x2743C69C0](v8, -1, -1);
    }

    v9 = *(v0 + 144);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    (*(v11 + 8))(v10, v12);
    v14 = *(**(v13 + v9) + 968);

    v16 = v14(v15);
    *(v0 + 440) = v17;
    if (v1)
    {
      v20 = *(v0 + 184);
      v21 = *(v0 + 192);
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);

      v25 = *(v0 + 128);
      v24 = *(v0 + 136);
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);
      v28 = *(v0 + 88);

      v29 = *(v0 + 8);
LABEL_6:

      return v29();
    }

    v68 = v16;
    v69 = v17;
    v70 = v18;
    v71 = v19;

    v72 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v72 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72)
    {

      (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x220))(0);
      v77 = *(v0 + 184);
      v78 = *(v0 + 192);
      v79 = *(v0 + 160);
      v80 = *(v0 + 168);
      v82 = *(v0 + 128);
      v81 = *(v0 + 136);
      v84 = *(v0 + 112);
      v83 = *(v0 + 120);
      v85 = *(v0 + 88);

      v29 = *(v0 + 8);
      goto LABEL_6;
    }

    v73 = *(v0 + 184);
    swift_beginAccess();
    v74 = *(v73 + 16);
    v75 = swift_task_alloc();
    *(v0 + 448) = v75;
    *v75 = v0;
    v75[1] = sub_27220E018;
    v76 = *(v0 + 80);

    return sub_272217F10(v68, v69, v70 & 1, v74, v71);
  }

  else
  {
    v31 = *(v0 + 184);
    v32 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor;
    *(v0 + 232) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData;
    *(v0 + 240) = v32;
    v33 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult;
    *(v0 + 248) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig;
    *(v0 + 256) = v33;
    v34 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue;
    *(v0 + 264) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech;
    *(v0 + 272) = v34;
    swift_beginAccess();
    v35 = *(**(*(v0 + 80) + *(v0 + 232)) + 160);

    LOBYTE(v35) = v35(v36);

    if (v35)
    {
      v37 = *(v0 + 136);
      v38 = *(v0 + 96);
      v39 = *(v0 + 104);
      v40 = sub_2722C389C();
      (*(v39 + 16))(v37, v40, v38);
      v41 = sub_27237725C();
      v42 = sub_272377E7C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2721E4000, v41, v42, "Reset state after getting no results for vad output", v43, 2u);
        MEMORY[0x2743C69C0](v43, -1, -1);
      }

      v44 = *(v0 + 232);
      v87 = *(v0 + 240);
      v46 = *(v0 + 184);
      v45 = *(v0 + 192);
      v47 = *(v0 + 160);
      v48 = *(v0 + 136);
      v49 = *(v0 + 96);
      v50 = *(v0 + 104);
      v51 = *(v0 + 80);

      (*(v50 + 8))(v48, v49);
      v52 = *(**&v51[v44] + 168);

      v52(0);

      v53 = *&v51[v87];
      *(v0 + 280) = v53;
      v54 = swift_allocObject();
      *(v0 + 288) = v54;
      v54[2] = v46;
      v54[3] = v45;
      v54[4] = v47;
      v54[5] = v51;
      v55 = *(*v53 + 88);

      v56 = v51;
      v86 = (v55 + *v55);
      v57 = v55[1];
      v58 = swift_task_alloc();
      *(v0 + 296) = v58;
      *v58 = v0;
      v58[1] = sub_27220C20C;

      return (v86)(&unk_27237CAC8, v54);
    }

    else
    {
      v59 = *(v0 + 184);
      v60 = *(v59 + 16);
      v61 = __CFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        __break(1u);
      }

      else
      {
        v63 = *(v0 + 192);
        *(v59 + 16) = v62;
        v64 = sub_27222CD4C();
        v65 = *(*v63 + 384);
        v88 = (v65 + *v65);
        v66 = v65[1];
        v67 = swift_task_alloc();
        *(v0 + 312) = v67;
        *v67 = v0;
        v67[1] = sub_27220C480;

        return (v88)(0, 1, v64 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_27220C20C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_27220E370;
  }

  else
  {
    v6 = *(v2 + 280);
    v5 = *(v2 + 288);

    v4 = sub_27220C330;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}
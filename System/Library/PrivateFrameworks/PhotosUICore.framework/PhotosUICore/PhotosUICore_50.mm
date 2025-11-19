uint64_t sub_1A4280210(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1A524E2B4();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1A524E2B4();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1A3D5C1C8(result);

  return sub_1A4280100(v4, v2, 0);
}

void sub_1A42802E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A3F6C780(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1A42803C0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v4 = sub_1A3C52C70(0, &qword_1EB126AF0);
    v5 = sub_1A3C3A220(&qword_1EB126AE0, &qword_1EB126AF0);
    result = MEMORY[0x1A59082D0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A3F6C780(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1A524E2B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1A4280604()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A45318CC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10[1] = swift_slowAlloc();
    *v9 = 136446210;
    sub_1A3C2EF94();
  }

  (*(v2 + 8))(v4, v1);
  sub_1A4278484(0);
}

void sub_1A42808F4()
{
  sub_1A3C7D074(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4280A8C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1A427EFC4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

void sub_1A4280AC0()
{
  if (!qword_1EB136780)
  {
    sub_1A3C52C70(255, &qword_1EB126820);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136780);
    }
  }
}

void sub_1A4280B88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A427CC58();
  }
}

uint64_t sub_1A4280BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4280C38()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___lastSeenNotificationObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4280C7C(uint64_t a1, uint64_t a2)
{
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4280D10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  sub_1A4280C7C(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_1A4280D80()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4279190(v3, v4, v5, v2);
}

uint64_t (*sub_1A4280E64())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A4280D78;
}

void sub_1A4280F24()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B29B8);
  __swift_project_value_buffer(v0, qword_1EB1B29B8);
  sub_1A5246EF4();
}

void sub_1A4280F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SharedLibraryBannerView()
{
  result = qword_1EB169130;
  if (!qword_1EB169130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A4281038()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = *(v0 + *(type metadata accessor for SharedLibraryBannerView() + 32));
  sub_1A3D61808(v7);
  v9 = *(v2 + 104);
  v9(v4, *MEMORY[0x1E69C21F0], v1);
  v10 = sub_1A5242D04();
  v11 = *(v2 + 8);
  v11(v4, v1);
  v11(v7, v1);
  if (v10)
  {
    result = -12.0;
    if (!v8)
    {
      return 0.0;
    }
  }

  else
  {
    sub_1A3D61808(v7);
    v9(v4, *MEMORY[0x1E69C21F8], v1);
    v13 = sub_1A5242D04();
    v11(v4, v1);
    v11(v7, v1);
    if (v13)
    {
      result = 10.0;
      if (v8)
      {
        return 0.0;
      }
    }

    else
    {
      sub_1A3D61808(v7);
      v9(v4, *MEMORY[0x1E69C2200], v1);
      v14 = sub_1A5242D04();
      v11(v4, v1);
      v11(v7, v1);
      if (v14)
      {
        sub_1A43A223C();
      }

      return 10.0;
    }
  }

  return result;
}

uint64_t sub_1A42812AC()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1A524A274();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D61808(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E69C21F0], v3);
  v14 = sub_1A5242D04();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  v16 = MEMORY[0x1E6980F18];
  if ((v14 & 1) == 0)
  {
    v16 = MEMORY[0x1E6980F20];
  }

  (*(v11 + 104))(v13, *v16, v10);
  v17 = *MEMORY[0x1E6980E20];
  v18 = sub_1A524A154();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v2, v17, v18);
  (*(v19 + 56))(v2, 0, 1, v18);
  sub_1A524A194();
  v20 = sub_1A524A1C4();
  sub_1A4286BE0(v2, sub_1A3E75D84);
  (*(v11 + 8))(v13, v10);
  return v20;
}

uint64_t sub_1A42815B8()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1A524A274();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D61808(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E69C21F0], v3);
  sub_1A5242D04();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v14(v9, v3);
  (*(v11 + 104))(v13, *MEMORY[0x1E6980F30], v10);
  v15 = *MEMORY[0x1E6980E20];
  v16 = sub_1A524A154();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v2, v15, v16);
  (*(v17 + 56))(v2, 0, 1, v16);
  sub_1A524A1A4();
  v18 = sub_1A524A1C4();
  sub_1A4286BE0(v2, sub_1A3E75D84);
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t sub_1A42818B0()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4280F88(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedLibraryBannerView();
  sub_1A428785C(v0 + *(v11 + 24), v7, &qword_1EB128A80, sub_1A3D63A58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C52DF0(v7, v10, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A4286BE0(v10, sub_1A3D63A58);
  return 0;
}

uint64_t sub_1A4281BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  v4 = MEMORY[0x1E697DCB8];
  sub_1A4280F88(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for SharedLibraryBannerView();
  v6 = a2 + v5[5];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A4280F88(0, &qword_1EB128A80, sub_1A3D63A58, v4);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5[8]) = 0;
  *(a2 + v5[7]) = a1;
  return result;
}

uint64_t sub_1A4281CEC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v149 = a2;
  v138 = a3;
  sub_1A3EC2854();
  v137 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v136 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v127 - v7;
  v8 = sub_1A52486A4();
  v157 = *(v8 - 8);
  v158 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v127 - v11;
  sub_1A3EC1A14();
  v135 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282F3C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = (&v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4282F00(0);
  v143 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282EC4(0);
  v144 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282E1C(0);
  v146 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282DE0(0);
  v151 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282DAC(0);
  v148 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v153 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282D04(0);
  v150 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v154 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282CD0(0);
  v159 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v160 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282BB8();
  v132 = v30;
  v131 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v130 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v129 = &v127 - v33;
  v34 = sub_1A5242D14();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v127 - v39;
  sub_1A3D61808(&v127 - v39);
  v41 = *(v35 + 104);
  v142 = *MEMORY[0x1E69C2200];
  v41(v37);
  v42 = sub_1A5242D04();
  v43 = *(v35 + 8);
  v43(v37, v34);
  v44 = v43;
  v43(v40, v34);
  if (v42)
  {
    sub_1A43A223C();
  }

  v127 = 0;
  v128 = 1;
  sub_1A3D61808(v40);
  v45 = *MEMORY[0x1E69C21F0];
  (v41)(v37, v45, v34);
  v46 = sub_1A5242D04();
  v140 = v35 + 104;
  v47 = v41;
  v48 = v46;
  v139 = v44;
  v44(v37, v34);
  v44(v40, v34);
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = 0x4020000000000000;
  }

  v50 = sub_1A5249314();
  v51 = v141;
  *v141 = v50;
  *(v51 + 8) = v49;
  *(v51 + 16) = 0;
  sub_1A4286B0C(0, &qword_1EB136A20, sub_1A4282FD0);
  sub_1A428468C(a1, v149 & 1, v51 + *(v52 + 44));
  v53 = sub_1A524A094();
  sub_1A3D61808(v40);
  v47(v37, v45, v34);
  sub_1A5242D04();
  v54 = v139;
  v139(v37, v34);
  v54(v40, v34);
  sub_1A5247BC4();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v145;
  sub_1A4286B70(v51, v145, sub_1A4282F3C);
  v64 = v63 + *(v143 + 36);
  *v64 = v53;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v65 = sub_1A524A0B4();
  sub_1A5247BC4();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v63;
  v75 = v147;
  sub_1A4286B70(v74, v147, sub_1A4282F00);
  v76 = v75 + *(v144 + 36);
  *v76 = v65;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  v77 = sub_1A524A0C4();
  sub_1A5247BC4();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v75;
  v87 = v161;
  sub_1A4286B70(v86, v161, sub_1A4282EC4);
  v88 = v87 + *(v146 + 36);
  *v88 = v77;
  *(v88 + 8) = v79;
  *(v88 + 16) = v81;
  *(v88 + 24) = v83;
  *(v88 + 32) = v85;
  *(v88 + 40) = 0;
  sub_1A3D61808(v40);
  v47(v37, v142, v34);
  v89 = sub_1A5242D04();
  v54(v37, v34);
  v54(v40, v34);
  if (v89)
  {
    sub_1A43A223C();
  }

  v90 = v152;
  sub_1A4286B70(v161, v152, sub_1A4282E1C);
  v91 = (v90 + *(v151 + 36));
  *v91 = 1;
  v91[1] = 1;
  v92 = v153;
  v93 = &v153[*(v148 + 36)];
  sub_1A524BBD4();
  v94 = sub_1A524A064();
  sub_1A41CD494(0);
  v93[*(v95 + 36)] = v94;
  sub_1A4286B70(v90, v92, sub_1A4282DE0);
  v96 = *(v150 + 36);
  v97 = sub_1A5247E04();
  v98 = v154;
  (*(*(v97 - 8) + 56))(&v154[v96], 1, 1, v97);
  sub_1A4286B70(v92, v98, sub_1A4282DAC);
  v99 = v160;
  v100 = &v160[*(v159 + 36)];
  v101 = *MEMORY[0x1E697F468];
  v102 = sub_1A52494A4();
  (*(*(v102 - 8) + 104))(v100, v101, v102);
  sub_1A3F8C700();
  *&v100[*(v103 + 36)] = 256;
  sub_1A4286B70(v98, v99, sub_1A4282D04);
  v105 = v157;
  v104 = v158;
  v106 = *(v157 + 104);
  v107 = v155;
  v106(v155, *MEMORY[0x1E697E6F0], v158);
  v108 = v156;
  v106(v156, *MEMORY[0x1E697E708], v104);
  sub_1A42835DC(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  result = sub_1A524C544();
  if (result)
  {
    v110 = *(v105 + 32);
    v111 = v133;
    v110(v133, v107, v104);
    v112 = v137;
    v110((v111 + *(v137 + 48)), v108, v104);
    v113 = v136;
    sub_1A4287A68(v111, v136, sub_1A3EC2854);
    v114 = *(v112 + 48);
    v115 = v134;
    v110(v134, v113, v104);
    v116 = *(v105 + 8);
    v116(v113 + v114, v104);
    sub_1A3C52DF0(v111, v113, sub_1A3EC2854);
    v110((v115 + *(v135 + 36)), (v113 + *(v112 + 48)), v104);
    v116(v113, v104);
    sub_1A42842E0(&qword_1EB136938, sub_1A4282CD0, sub_1A428436C, sub_1A3E08C3C);
    sub_1A42835DC(&qword_1EB126FC0, sub_1A3EC1A14);
    v117 = v129;
    v118 = v160;
    sub_1A524AB84();
    sub_1A4286BE0(v115, sub_1A3EC1A14);
    sub_1A4286CA8(v118, sub_1A4282CD0);
    v162 = v127 & 1;
    v119 = v131;
    v120 = *(v131 + 16);
    v121 = v130;
    v122 = v132;
    v120(v130, v117, v132);
    v123 = v162;
    v124 = v138;
    *v138 = 0;
    *(v124 + 8) = v128;
    *(v124 + 9) = v123;
    sub_1A4282B24();
    v120(v124 + *(v125 + 48), v121, v122);
    v126 = *(v119 + 8);
    v126(v117, v122);
    return (v126)(v121, v122);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4282B24()
{
  if (!qword_1EB1367A8)
  {
    sub_1A42869B8(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A4282BB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1367A8);
    }
  }
}

void sub_1A4282BB8()
{
  if (!qword_1EB1367B8)
  {
    sub_1A4282CD0(255);
    sub_1A3EC1A14();
    sub_1A42842E0(&qword_1EB136938, sub_1A4282CD0, sub_1A428436C, sub_1A3E08C3C);
    sub_1A42835DC(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1367B8);
    }
  }
}

void sub_1A4282D38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4282E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4282F3C()
{
  if (!qword_1EB1367F8)
  {
    sub_1A4282FD0(255);
    sub_1A42835DC(&unk_1EB136920, sub_1A4282FD0);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1367F8);
    }
  }
}

void sub_1A4283004()
{
  if (!qword_1EB136808)
  {
    sub_1A42830A0(255);
    sub_1A42831CC();
    sub_1A42832F8(255);
    sub_1A4283624(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB136808);
    }
  }
}

void sub_1A42830D4()
{
  if (!qword_1EB136818)
  {
    sub_1A4283168();
    sub_1A4283CA4(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136818);
    }
  }
}

void sub_1A4283168()
{
  if (!qword_1EB136820)
  {
    sub_1A4070578();
    sub_1A3EE1DE0();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136820);
    }
  }
}

void sub_1A42831CC()
{
  if (!qword_1EB136830)
  {
    sub_1A4283260(255);
    sub_1A42835DC(&qword_1EB136850, sub_1A4283260);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136830);
    }
  }
}

void sub_1A4283294()
{
  if (!qword_1EB136840)
  {
    sub_1A4071238();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB136840);
    }
  }
}

void sub_1A428332C()
{
  if (!qword_1EB136860)
  {
    sub_1A4282D38(255, &qword_1EB136868, sub_1A42833BC, sub_1A3F8C700);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136860);
    }
  }
}

void sub_1A42833BC()
{
  if (!qword_1EB136870)
  {
    sub_1A42834C0();
    sub_1A5249E64();
    sub_1A42835DC(&unk_1EB136890, sub_1A42834C0);
    sub_1A42835DC(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136870);
    }
  }
}

void sub_1A42834C0()
{
  if (!qword_1EB136878)
  {
    sub_1A42869B8(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A4283548();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136878);
    }
  }
}

unint64_t sub_1A4283548()
{
  result = qword_1EB136888;
  if (!qword_1EB136888)
  {
    sub_1A42869B8(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136888);
  }

  return result;
}

uint64_t sub_1A42835DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4283694()
{
  if (!qword_1EB1368B0)
  {
    sub_1A42838EC();
    sub_1A4282D38(255, &qword_1EB136908, sub_1A42838EC, sub_1A3F8C700);
    sub_1A4283AD4();
    sub_1A4283EA0();
    sub_1A4283C14();
    sub_1A4283D9C();
    sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    sub_1A5249544();
    sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5243954();
    sub_1A42835DC(&qword_1EB136900, MEMORY[0x1E69C26C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4284060();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1368B0);
    }
  }
}

void sub_1A42838EC()
{
  if (!qword_1EB1368B8)
  {
    sub_1A4283AD4();
    sub_1A4283EA0();
    sub_1A4283C14();
    sub_1A4283D9C();
    sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    sub_1A5249544();
    sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5243954();
    sub_1A42835DC(&qword_1EB136900, MEMORY[0x1E69C26C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1368B8);
    }
  }
}

void sub_1A4283AD4()
{
  if (!qword_1EB1368C0)
  {
    sub_1A4283C14();
    sub_1A4283D9C();
    sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    sub_1A5249544();
    sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1368C0);
    }
  }
}

void sub_1A4283C14()
{
  if (!qword_1EB1368C8)
  {
    sub_1A4283CA4(255, &qword_1EB1368D0, MEMORY[0x1E6981148], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    sub_1A4283CF8();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1368C8);
    }
  }
}

void sub_1A4283CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A4283CF8()
{
  result = qword_1EB1368D8;
  if (!qword_1EB1368D8)
  {
    sub_1A4283CA4(255, &qword_1EB1368D0, MEMORY[0x1E6981148], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1368D8);
  }

  return result;
}

void sub_1A4283D9C()
{
  if (!qword_1EB1368E0)
  {
    sub_1A4283C14();
    sub_1A5249544();
    sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1368E0);
    }
  }
}

void sub_1A4283EA0()
{
  if (!qword_1EB1368F8)
  {
    sub_1A4283AD4();
    sub_1A5243954();
    sub_1A4283C14();
    sub_1A4283D9C();
    sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    sub_1A5249544();
    sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42835DC(&qword_1EB136900, MEMORY[0x1E69C26C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1368F8);
    }
  }
}

unint64_t sub_1A4284060()
{
  result = qword_1EB136910;
  if (!qword_1EB136910)
  {
    sub_1A4282D38(255, &qword_1EB136908, sub_1A42838EC, sub_1A3F8C700);
    sub_1A4283AD4();
    sub_1A4283EA0();
    sub_1A4283C14();
    sub_1A4283D9C();
    sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    sub_1A5249544();
    sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5243954();
    sub_1A42835DC(&qword_1EB136900, MEMORY[0x1E69C26C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E08C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136910);
  }

  return result;
}

uint64_t sub_1A42842E0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4284438(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A42845DC()
{
  if (!qword_1EB136998)
  {
    sub_1A4282AF0(255);
    sub_1A42835DC(&qword_1EB1369A0, sub_1A4282AF0);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136998);
    }
  }
}

uint64_t sub_1A428468C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v214 = a2;
  v234 = a3;
  sub_1A4280F88(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v203 = &v193 - v5;
  sub_1A4283C14();
  v205 = *(v6 - 8);
  v206 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v204 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4283AD4();
  v211 = v8;
  v208 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v207 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42838EC();
  v212 = *(v10 - 8);
  v213 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v209 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4283658(0);
  v237 = v12;
  v232 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v210 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4283624(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v233 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v238 = &v193 - v17;
  v18 = sub_1A5249E64();
  v201 = *(v18 - 8);
  v202 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SharedLibraryBannerView();
  v236 = *(v20 - 8);
  v21 = v20 - 8;
  v222 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20 - 8);
  v235 = v22;
  v229 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42834C0();
  v195 = *(v23 - 8);
  v196 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v194 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4282D38(0, &qword_1EB136868, sub_1A42833BC, sub_1A3F8C700);
  v193 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v199 = &v193 - v26;
  sub_1A428332C();
  v28 = *(v27 - 8);
  v227 = v27;
  v228 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v198 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v197 = &v193 - v31;
  sub_1A42832F8(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v231 = &v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v244 = &v193 - v35;
  v36 = sub_1A5242D14();
  v225 = *(v36 - 8);
  v226 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v224 = &v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v223 = &v193 - v39;
  sub_1A42830A0(0);
  v41 = v40 - 8;
  MEMORY[0x1EEE9AC00](v40);
  v243 = &v193 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v193 - v44;
  v46 = a1;
  v245 = a1;
  sub_1A4070578();
  sub_1A3EE1DE0();
  sub_1A524B704();
  v47 = [objc_opt_self() quaternaryLabelColor];
  v48 = sub_1A524B284();
  v49 = sub_1A524A064();
  sub_1A42830D4();
  v51 = &v45[*(v50 + 36)];
  *v51 = v48;
  v51[8] = v49;
  v52 = *(v41 + 44);
  v242 = v45;
  *&v45[v52] = 256;
  v230 = sub_1A5249584();
  v259 = 0;
  v217 = *(v46 + *(v21 + 36));
  v240 = v46;
  v53 = [v217 title];
  v54 = sub_1A524C674();
  v56 = v55;

  v248 = v54;
  v249 = v56;
  v216 = sub_1A3D5F9DC();
  v57 = sub_1A524A464();
  v59 = v58;
  v61 = v60;
  sub_1A42812AC();
  v62 = sub_1A524A3C4();
  v64 = v63;
  v66 = v65;

  sub_1A3E04DF4(v57, v59, v61 & 1);

  v215 = objc_opt_self();
  v67 = [v215 secondaryLabelColor];
  sub_1A524B284();
  v68 = sub_1A524A364();
  v219 = v69;
  v220 = v68;
  LOBYTE(v57) = v70;
  v221 = v71;

  sub_1A3E04DF4(v62, v64, v66 & 1);

  KeyPath = swift_getKeyPath();
  v218 = swift_getKeyPath();
  v239 = v57 & 1;
  LOBYTE(v248) = v57 & 1;
  LOBYTE(v246) = 0;
  v72 = [v217 subtitle];
  v73 = sub_1A524C674();
  v75 = v74;

  v248 = v73;
  v249 = v75;
  v76 = sub_1A524A464();
  v78 = v77;
  LOBYTE(v62) = v79;
  sub_1A42815B8();
  v80 = sub_1A524A3C4();
  v82 = v81;
  LOBYTE(v59) = v83;

  sub_1A3E04DF4(v76, v78, v62 & 1);

  v84 = [v215 labelColor];
  sub_1A524B284();
  v85 = sub_1A524A364();
  v87 = v86;
  LOBYTE(v78) = v88;
  v90 = v89;

  sub_1A3E04DF4(v80, v82, v59 & 1);

  v91 = swift_getKeyPath();
  v92 = swift_getKeyPath();
  v93 = v78 & 1;
  LOBYTE(v248) = v78 & 1;
  v95 = v219;
  v94 = v220;
  *&v260 = v220;
  *(&v260 + 1) = v219;
  LOBYTE(v261) = v239;
  *(&v261 + 1) = v284[0];
  DWORD1(v261) = *(v284 + 3);
  v96 = v221;
  *(&v261 + 1) = v221;
  *&v262 = KeyPath;
  *(&v262 + 1) = 2;
  LOBYTE(v263) = 0;
  DWORD1(v263) = *&v283[3];
  *(&v263 + 1) = *v283;
  v97 = v218;
  *(&v263 + 1) = v218;
  LOBYTE(v264) = 0;
  LOBYTE(v280[0]) = 0;
  v279 = v263;
  v278 = v262;
  v276 = v260;
  v277 = v261;
  *&v268 = v85;
  *(&v268 + 1) = v87;
  LOBYTE(v269) = v93;
  DWORD1(v269) = *(v282 + 3);
  *(&v269 + 1) = v282[0];
  *(&v269 + 1) = v90;
  *&v270 = v91;
  *(&v270 + 1) = 2;
  LOBYTE(v271) = 0;
  DWORD1(v271) = *&v281[3];
  *(&v271 + 1) = *v281;
  *(&v271 + 1) = v92;
  LOBYTE(v272) = 0;
  *(v280 + 8) = v268;
  BYTE8(v280[4]) = 0;
  *(&v280[3] + 8) = v271;
  *(&v280[2] + 8) = v270;
  *(&v280[1] + 8) = v269;
  *&v246 = v85;
  *(&v246 + 1) = v87;
  v98 = v240;
  v247[0] = v93;
  *&v247[4] = *(v282 + 3);
  *&v247[1] = v282[0];
  *&v247[8] = v90;
  *&v247[16] = v91;
  *&v247[24] = 2;
  v247[32] = 0;
  *&v247[36] = *&v281[3];
  *&v247[33] = *v281;
  *&v247[40] = v92;
  v247[48] = 0;
  sub_1A4287A68(&v260, &v248, sub_1A4071238);
  sub_1A4287A68(&v268, &v248, sub_1A4071238);
  sub_1A4286BE0(&v246, sub_1A4071238);
  v248 = v94;
  v249 = v95;
  v250[0] = v239;
  *&v250[1] = v284[0];
  *&v250[4] = *(v284 + 3);
  *&v250[8] = v96;
  *&v250[16] = KeyPath;
  *&v250[24] = 2;
  v250[32] = 0;
  LODWORD(v251) = *v283;
  *(&v251 + 3) = *&v283[3];
  *(&v251 + 7) = v97;
  HIBYTE(v251) = 0;
  sub_1A4286BE0(&v248, sub_1A4071238);
  v266 = v280[2];
  v267[0] = v280[3];
  *(v267 + 9) = *(&v280[3] + 9);
  v262 = v278;
  v263 = v279;
  v264 = v280[0];
  v265 = v280[1];
  v260 = v276;
  v261 = v277;
  v274 = v280[2];
  v275[0] = v280[3];
  *(v275 + 9) = *(&v280[3] + 9);
  v270 = v278;
  v271 = v279;
  v273 = v280[1];
  v272 = v280[0];
  v269 = v277;
  v268 = v276;
  sub_1A4287A68(&v260, &v248, sub_1A4283260);
  sub_1A4286BE0(&v268, sub_1A4283260);
  *(&v258[5] + 7) = v265;
  *(&v258[6] + 7) = v266;
  *(&v258[7] + 7) = v267[0];
  v258[8] = *(v267 + 9);
  *(&v258[1] + 7) = v261;
  *(&v258[2] + 7) = v262;
  *(&v258[3] + 7) = v263;
  *(&v258[4] + 7) = v264;
  *(v258 + 7) = v260;
  LODWORD(KeyPath) = v259;
  v99 = v223;
  sub_1A3D61808(v223);
  v100 = v224;
  v101 = v225;
  v102 = v226;
  (*(v225 + 104))(v224, *MEMORY[0x1E69C21F0], v226);
  v103 = v100;
  v239 = sub_1A5242D04();
  v104 = *(v101 + 8);
  v104(v103, v102);
  v104(v99, v102);
  v105 = *(v98 + *(v222 + 36));
  if ([v105 wantsActionButton])
  {
    v106 = v229;
    sub_1A4287A68(v98, v229, type metadata accessor for SharedLibraryBannerView);
    v107 = (*(v236 + 80) + 16) & ~*(v236 + 80);
    v108 = swift_allocObject();
    v109 = sub_1A3C52DF0(v106, v108 + v107, type metadata accessor for SharedLibraryBannerView);
    MEMORY[0x1EEE9AC00](v109);
    *(&v193 - 2) = v98;
    sub_1A42869B8(0, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A4283548();
    v110 = v194;
    sub_1A524B704();
    v111 = v200;
    sub_1A5249E54();
    sub_1A42835DC(&unk_1EB136890, sub_1A42834C0);
    sub_1A42835DC(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    v112 = v199;
    v113 = v196;
    v114 = v202;
    sub_1A524A934();
    (*(v201 + 8))(v111, v114);
    (*(v195 + 8))(v110, v113);
    v115 = v112 + *(v193 + 36);
    v116 = *MEMORY[0x1E697F468];
    v117 = sub_1A52494A4();
    (*(*(v117 - 8) + 104))(v115, v116, v117);
    sub_1A3F8C700();
    *(v115 + *(v118 + 36)) = 256;
    LOBYTE(v115) = sub_1A524A0B4();
    [v105 wantsCancelButton];
    sub_1A5247BC4();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v127 = v198;
    sub_1A3CEB94C(v112, v198);
    v128 = v227;
    v129 = v127 + *(v227 + 36);
    *v129 = v115;
    *(v129 + 8) = v120;
    *(v129 + 16) = v122;
    *(v129 + 24) = v124;
    *(v129 + 32) = v126;
    *(v129 + 40) = 0;
    v130 = v127;
    v131 = v197;
    sub_1A4286B70(v130, v197, sub_1A428332C);
    v132 = v131;
    v133 = v244;
    sub_1A4286B70(v132, v244, sub_1A428332C);
    v134 = 0;
    v135 = v236;
    v136 = v128;
  }

  else
  {
    v134 = 1;
    v133 = v244;
    v106 = v229;
    v135 = v236;
    v136 = v227;
  }

  v137 = 1;
  (*(v228 + 56))(v133, v134, 1, v136);
  if ([v105 wantsCancelButton])
  {
    v138 = v203;
    sub_1A5247B34();
    v139 = sub_1A5247B54();
    (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
    sub_1A4287A68(v98, v106, type metadata accessor for SharedLibraryBannerView);
    v140 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v141 = swift_allocObject();
    v142 = sub_1A3C52DF0(v106, v141 + v140, type metadata accessor for SharedLibraryBannerView);
    MEMORY[0x1EEE9AC00](v142);
    *(&v193 - 2) = v98;
    sub_1A4283CA4(0, &qword_1EB1368D0, MEMORY[0x1E6981148], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    sub_1A4283CF8();
    v143 = v204;
    sub_1A524B6F4();
    sub_1A4283D9C();
    v145 = v144;
    v146 = sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
    v147 = sub_1A5249544();
    v148 = sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    v149 = v206;
    v248 = v206;
    v249 = v147;
    *v250 = v146;
    *&v250[8] = v148;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v151 = v214;
    v152 = v207;
    sub_1A3EFB620(v214 & 1, sub_1A4286278, 0, v149, v145, v146, OpaqueTypeConformance2, v207);
    (*(v205 + 8))(v143, v149);
    sub_1A4283EA0();
    v154 = v153;
    v248 = v149;
    v249 = v145;
    *v250 = v146;
    *&v250[8] = OpaqueTypeConformance2;
    v155 = swift_getOpaqueTypeConformance2();
    v156 = sub_1A5243954();
    v157 = sub_1A42835DC(&qword_1EB136900, MEMORY[0x1E69C26C0]);
    v158 = v211;
    v248 = v211;
    v249 = v156;
    *v250 = v155;
    *&v250[8] = v157;
    v159 = swift_getOpaqueTypeConformance2();
    v160 = v209;
    sub_1A3EFB620((v151 & 1) == 0, sub_1A42863E4, 0, v158, v154, v155, v159, v209);
    (*(v208 + 8))(v152, v158);
    sub_1A4282D38(0, &qword_1EB136908, sub_1A42838EC, sub_1A3F8C700);
    v162 = v161;
    v248 = v158;
    v249 = v154;
    *v250 = v155;
    *&v250[8] = v159;
    v163 = swift_getOpaqueTypeConformance2();
    v164 = sub_1A4284060();
    v165 = v210;
    v166 = v213;
    sub_1A3EFB620(v151 & 1, sub_1A4286608, 0, v213, v162, v163, v164, v210);
    (*(v212 + 8))(v160, v166);
    LOBYTE(v162) = sub_1A524A0B4();
    sub_1A5247BC4();
    v167 = v238;
    v168 = v165 + *(v237 + 36);
    *v168 = v162;
    *(v168 + 8) = v169;
    *(v168 + 16) = v170;
    *(v168 + 24) = v171;
    *(v168 + 32) = v172;
    *(v168 + 40) = 0;
    v173 = v165;
    v133 = v244;
    sub_1A4286B70(v173, v167, sub_1A4283658);
    v137 = 0;
  }

  v174 = v238;
  (*(v232 + 56))(v238, v137, 1, v237);
  v175 = 0x4030000000000000;
  if (v239)
  {
    v175 = 0x4038000000000000;
  }

  v240 = v175;
  v176 = v243;
  sub_1A4287A68(v242, v243, sub_1A42830A0);
  v177 = v231;
  sub_1A4286C40(v133, v231, sub_1A42832F8);
  v178 = v233;
  sub_1A4286C40(v174, v233, sub_1A4283624);
  v179 = v176;
  v180 = v234;
  sub_1A4287A68(v179, v234, sub_1A42830A0);
  sub_1A4283004();
  v182 = v181;
  v183 = v181[12];
  *&v247[97] = v258[6];
  *&v247[81] = v258[5];
  *&v247[113] = v258[7];
  *&v247[129] = v258[8];
  *&v247[17] = v258[1];
  *&v247[33] = v258[2];
  v184 = v180 + v183;
  v185 = v230;
  v246 = v230;
  v247[0] = KeyPath;
  *&v247[49] = v258[3];
  *&v247[65] = v258[4];
  *&v247[1] = v258[0];
  v186 = *&v247[96];
  v187 = *&v247[128];
  *(v184 + 128) = *&v247[112];
  *(v184 + 144) = v187;
  *(v184 + 160) = v247[144];
  v188 = *&v247[64];
  *(v184 + 64) = *&v247[48];
  *(v184 + 80) = v188;
  *(v184 + 96) = *&v247[80];
  *(v184 + 112) = v186;
  v189 = *v247;
  *v184 = v246;
  *(v184 + 16) = v189;
  v190 = *&v247[32];
  *(v184 + 32) = *&v247[16];
  *(v184 + 48) = v190;
  v191 = v180 + v181[16];
  *v191 = v240;
  *(v191 + 8) = 0;
  sub_1A4286C40(v177, v180 + v181[20], sub_1A42832F8);
  sub_1A4286C40(v178, v180 + v182[24], sub_1A4283624);
  sub_1A4287A68(&v246, &v248, sub_1A42831CC);
  sub_1A4286CA8(v174, sub_1A4283624);
  sub_1A4286CA8(v244, sub_1A42832F8);
  sub_1A4286BE0(v242, sub_1A42830A0);
  sub_1A4286CA8(v178, sub_1A4283624);
  sub_1A4286CA8(v177, sub_1A42832F8);
  v254 = v258[5];
  v255 = v258[6];
  v256 = v258[7];
  v257 = v258[8];
  *&v250[17] = v258[1];
  v251 = v258[2];
  v252 = v258[3];
  v253 = v258[4];
  v248 = v185;
  v249 = 0;
  v250[0] = KeyPath;
  *&v250[1] = v258[0];
  sub_1A4286BE0(&v248, sub_1A42831CC);
  return sub_1A4286BE0(v243, sub_1A42830A0);
}

double sub_1A4285F84@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v25 = sub_1A524B544();
  sub_1A3D61808(v8);
  v9 = *MEMORY[0x1E69C21F0];
  v22 = *(v3 + 104);
  v22(v5, v9, v2);
  v10 = sub_1A5242D04();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    v12 = sub_1A524A0E4();
  }

  else
  {
    v12 = sub_1A524A214();
  }

  v24 = v12;
  KeyPath = swift_getKeyPath();
  sub_1A3D61808(v8);
  v13 = v22;
  v22(v5, v9, v2);
  v21[3] = sub_1A5242D04();
  v11(v5, v2);
  v11(v8, v2);
  sub_1A3D61808(v8);
  v13(v5, v9, v2);
  sub_1A5242D04();
  v11(v5, v2);
  v11(v8, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  v14 = [objc_opt_self() secondaryLabelColor];
  v15 = sub_1A524B284();
  v16 = swift_getKeyPath();
  v18 = KeyPath;
  v17 = v24;
  *a1 = v25;
  *(a1 + 8) = v18;
  *(a1 + 16) = v17;
  v19 = v27;
  *(a1 + 24) = v26;
  *(a1 + 40) = v19;
  result = *&v28;
  *(a1 + 56) = v28;
  *(a1 + 72) = v16;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_1A4286278()
{
  v0 = sub_1A5249544();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249534();
  sub_1A4283C14();
  sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
  sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
  sub_1A524A934();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A42863E4()
{
  v0 = sub_1A5243954();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247DA4();
  sub_1A4283AD4();
  sub_1A4283C14();
  v5 = v4;
  sub_1A4283D9C();
  v7 = v6;
  v8 = sub_1A42835DC(&unk_1EB1368E8, sub_1A4283C14);
  v9 = sub_1A5249544();
  v10 = sub_1A42835DC(&unk_1EB122DF0, MEMORY[0x1E697C540]);
  v13 = v5;
  v14 = v9;
  v15 = v8;
  v16 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A42835DC(&qword_1EB136900, MEMORY[0x1E69C26C0]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A4286608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4282D38(0, &qword_1EB136908, sub_1A42838EC, sub_1A3F8C700);
  v5 = a2 + *(v4 + 36);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1A52494A4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_1A3F8C700();
  *(v5 + *(v8 + 36)) = 256;
  sub_1A42838EC();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

void sub_1A4286718(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + *(a1 + 28)) cancelButtonTitle];
  v5 = v4;
  if (v4)
  {
  }

  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1A4286B0C(0, &qword_1EB136798, sub_1A4282AF0);
  sub_1A4281CEC(v2, v5 != 0, (a2 + *(v6 + 44)));
  v7 = sub_1A4281038();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1A524A064();
  sub_1A42845A0(0);
  v16 = a2 + *(v15 + 36);
  *v16 = v14;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
}

void sub_1A4286828()
{
  sub_1A4280F88(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A42869B8(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4280F88(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB120758);
        if (v3 <= 0x3F)
        {
          sub_1A4280F88(319, &qword_1EB120910, sub_1A4286A08, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A42869B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A4286A08()
{
  result = qword_1EB120918;
  if (!qword_1EB120918)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120918);
  }

  return result;
}

uint64_t sub_1A4286A6C(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A42835DC(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4286B0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4286B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4286BE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4286C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4286CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A4286D08()
{
  v1 = type metadata accessor for SharedLibraryBannerView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 28));
  result = [v3 cancelButtonHandler];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = *(v2 + *(v1 + 32));
    if (!v7)
    {
      _Block_copy(v5);
      sub_1A42818B0();
      PXPresentationEnvironmentForSender();
    }

    swift_unknownObjectRetain();
    v8 = [v3 primaryActionIdentifier];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1A4287AD4;
    *(v9 + 24) = v6;
    aBlock[4] = sub_1A42878DC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D52710;
    aBlock[3] = &block_descriptor_29_2;
    v10 = _Block_copy(aBlock);

    [v7 preparePresentationEnvironmentForBannerView:0 actionIdentifier:v8 completionHandler:v10];

    _Block_release(v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A428702C@<D0>(uint64_t a1@<X8>)
{
  v3 = [*(*(v1 + 16) + *(type metadata accessor for SharedLibraryBannerView() + 28)) cancelButtonTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;

    *&v13 = v5;
    *(&v13 + 1) = v7;
    sub_1A3D5F9DC();
    v8 = sub_1A524A464();
    v10 = v9;
    LOBYTE(v7) = v11;
    sub_1A42815B8();
    sub_1A524A3C4();

    sub_1A3E04DF4(v8, v10, v7 & 1);
  }

  else
  {
    sub_1A524B544();
  }

  sub_1A5249744();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t objectdestroyTm_41()
{
  v1 = type metadata accessor for SharedLibraryBannerView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A4280F88(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  sub_1A4280F88(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v7 = v6;
    v8 = *(v6 - 8);
    if (!(*(v8 + 48))(v3 + v5, 1, v6))
    {
      (*(v8 + 8))(v3 + v5, v7);
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1A428740C()
{
  v1 = type metadata accessor for SharedLibraryBannerView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 28));
  result = [v3 actionButtonHandler];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = *(v2 + *(v1 + 32));
    if (!v7)
    {
      _Block_copy(v5);
      sub_1A42818B0();
      PXPresentationEnvironmentForSender();
    }

    swift_unknownObjectRetain();
    v8 = [v3 primaryActionIdentifier];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1A3E79128;
    *(v9 + 24) = v6;
    aBlock[4] = sub_1A4287850;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D52710;
    aBlock[3] = &block_descriptor_139;
    v10 = _Block_copy(aBlock);

    [v7 preparePresentationEnvironmentForBannerView:0 actionIdentifier:v8 completionHandler:v10];

    _Block_release(v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A4287730@<X0>(uint64_t *a1@<X8>)
{
  result = [*(*(v1 + 16) + *(type metadata accessor for SharedLibraryBannerView() + 28)) actionButtonTitle];
  if (result)
  {
    v4 = result;
    sub_1A524C674();

    sub_1A3D5F9DC();
    v5 = sub_1A524A464();
    v7 = v6;
    v9 = v8;
    sub_1A42815B8();
    v10 = sub_1A524A3C4();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_1A3E04DF4(v5, v7, v9 & 1);

    v17 = v14 & 1;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v17 = 0;
    v16 = 0;
  }

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v17;
  a1[3] = v16;
  return result;
}

uint64_t sub_1A428785C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4280F88(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A42878E8(uint64_t a1, void *a2, const char *a3)
{
  if (a2)
  {
    if (qword_1EB1B29B0 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB1B29B8);
    v7 = a2;
    oslog = sub_1A5246F04();
    v8 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1A3C1C000, oslog, v8, a3, v9, 0xCu);
      sub_1A3CB65E4(v10);
      MEMORY[0x1A590EEC0](v10, -1, -1);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }
  }

  else
  {
    (*(v3 + 16))();
  }
}

uint64_t sub_1A4287A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4287ADC(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1A4288690(a1, a2);

  return v4;
}

uint64_t sub_1A4287B38(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 64) == v2)
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
    sub_1A52415C4();
  }

  return result;
}

id sub_1A4287C5C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for LegacyPersonBannerModelProxy();
    v3 = swift_unknownObjectRetain();
    v4 = v0;
    v5 = sub_1A46BBB2C(v3, &off_1F1701558);
    v6 = *(v0 + 32);
    *(v4 + 32) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_1A4287CD8()
{
  *(v1 + 16) = v0;
  sub_1A524CC54();
  *(v1 + 24) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4287D70, v3, v2);
}

uint64_t sub_1A4287D70()
{
  v1 = *(v0 + 16);

  [*(v1 + 16) primaryButtonSelected];
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1A4287DE4()
{
  swift_getKeyPath();
  sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_1A4287EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1A4287F6C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4287F9C(v1);
}

void sub_1A4287F9C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3D63AC0();
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void (*sub_1A4288110(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore29LegacyPersonActionBannerModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4288250;
}

uint64_t sub_1A428825C()
{
  swift_getKeyPath();
  sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t sub_1A4288310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1A42883F4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore29LegacyPersonActionBannerModel_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore29LegacyPersonActionBannerModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void (*sub_1A4288528(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4288110(v2);
  return sub_1A3E658B0;
}

void (*sub_1A42885A0(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4288110(v2);
  return sub_1A3E62A10;
}

uint64_t sub_1A4288614@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore29LegacyPersonActionBannerModel_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A4288690(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  sub_1A52411B4();
  sub_1A5241604();
  *(v3 + 16) = a2;
  v6 = [a2 primaryButtonTitle];
  v7 = sub_1A524C674();
  v9 = v8;

  *(v3 + 40) = v7;
  *(v3 + 48) = v9;
  *(v3 + 24) = a1;
  v10 = a1;
  v11 = sub_1A4287C5C();
  sub_1A46BBB18(v11);

  return v3;
}

uint64_t sub_1A4288750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t type metadata accessor for LegacyPersonActionBannerModel()
{
  result = qword_1EB164910;
  if (!qword_1EB164910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A42887F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  v4 = v1;
}

uint64_t sub_1A428884C(uint64_t a1)
{
  *(a1 + 8) = sub_1A4288960(&qword_1EB136A28, type metadata accessor for LegacyPersonActionBannerModel);
  result = sub_1A4288960(&qword_1EB136A30, type metadata accessor for LegacyPersonActionBannerModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4288960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A42889B0()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A4288AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 8))(ObjectType, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v38 = sub_1A524A064();
  v14 = *(a2 + 16);
  v15 = v14(ObjectType, a2);
  v39 = v16;
  v36 = v18;
  v37 = v17;
  v19 = v16;
  v35 = sub_1A524A064();
  LOBYTE(v56[0]) = 0;
  swift_unknownObjectRetain();
  v20 = sub_1A5248874();
  v21 = sub_1A524A064();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  swift_unknownObjectRetain();
  v23 = v14(ObjectType, a2);
  v33 = v24;
  v34 = v23;
  v26 = v25;
  v28 = v27;
  *&v46 = a1;
  *(&v46 + 1) = a2;
  LOBYTE(v47) = v38;
  *(&v47 + 1) = v7;
  *&v48 = v9;
  *(&v48 + 1) = v11;
  *&v49 = v13;
  BYTE8(v49) = 0;
  LOBYTE(v50) = v35;
  *(&v50 + 1) = v15;
  *&v51 = v37;
  *(&v51 + 1) = v19;
  *v52 = v36;
  v52[8] = 0;
  *&v52[16] = v20;
  v52[24] = v21;
  *&v42[9] = *&v52[9];
  v41 = v51;
  *v42 = *v52;
  v40 = v50;
  *&v53 = sub_1A428CC74;
  *(&v53 + 1) = v22;
  LOBYTE(v54) = sub_1A524A064();
  *(&v54 + 1) = v34;
  *v55 = v33;
  *&v55[8] = v26;
  *&v55[16] = v28;
  v55[24] = 0;
  *&v45[9] = *&v55[9];
  v44 = v54;
  *v45 = *v55;
  v43 = v53;
  v29 = v46;
  v30 = v47;
  v31 = v49;
  a3[2] = v48;
  a3[3] = v31;
  *a3 = v29;
  a3[1] = v30;
  a3[6] = *v42;
  a3[7] = *&v42[16];
  a3[4] = v40;
  a3[5] = v41;
  *(a3 + 169) = *&v45[9];
  a3[9] = v44;
  a3[10] = *v45;
  a3[8] = v43;
  sub_1A428DC98(&v46, v56, sub_1A4288DC0);
  sub_1A428DC98(&v53, v56, sub_1A4288EBC);

  v56[0] = a1;
  v56[1] = a2;
  v57 = v38;
  v58 = v7;
  v59 = v9;
  v60 = v11;
  v61 = v13;
  v62 = 0;
  v63 = v35;
  v64 = v15;
  v65 = v37;
  v66 = v39;
  v67 = v36;
  v68 = 0;
  v69 = v20;
  v70 = v21;
  return sub_1A428F8E8(v56, sub_1A4288DC0);
}

void sub_1A4288DC0()
{
  if (!qword_1EB123488)
  {
    sub_1A4288E38(255, &qword_1EB1238F8, &qword_1EB124238, &type metadata for HeaderBackground);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123488);
    }
  }
}

void sub_1A4288E38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A428F600(255, a3, a4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4288EE4()
{
  if (!qword_1EB1243E8)
  {
    sub_1A4288F40();
    v0 = sub_1A5248414();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243E8);
    }
  }
}

unint64_t sub_1A4288F40()
{
  result = qword_1EB16EB90[0];
  if (!qword_1EB16EB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16EB90);
  }

  return result;
}

double sub_1A4288FB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_1A524BC74();
  v7 = v6;
  sub_1A4288AB8(v3, v4, &v16);
  v35 = v24;
  v36 = v25;
  v37[0] = v26[0];
  *(v37 + 9) = *(v26 + 9);
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v38[8] = v24;
  v38[9] = v25;
  v39[0] = v26[0];
  *(v39 + 9) = *(v26 + 9);
  v38[4] = v20;
  v38[5] = v21;
  v38[6] = v22;
  v38[7] = v23;
  v38[0] = v16;
  v38[1] = v17;
  v38[2] = v18;
  v38[3] = v19;
  v8 = MEMORY[0x1E6981F40];
  sub_1A428D1FC(&v27, &v15, &qword_1EB121148, sub_1A4288D8C, MEMORY[0x1E6981F40], sub_1A428F9A8);
  sub_1A428CC14(v38, &qword_1EB121148, sub_1A4288D8C, v8, sub_1A428F9A8);
  *a1 = v5;
  *(a1 + 8) = v7;
  v9 = v36;
  *(a1 + 144) = v35;
  *(a1 + 160) = v9;
  *(a1 + 176) = v37[0];
  *(a1 + 185) = *(v37 + 9);
  v10 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v10;
  v11 = v34;
  *(a1 + 112) = v33;
  *(a1 + 128) = v11;
  v12 = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = v12;
  result = *&v29;
  v14 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v14;
  return result;
}

void sub_1A4289158()
{
  if (!qword_1EB121530)
  {
    sub_1A428F9A8(255, &qword_1EB121148, sub_1A4288D8C, MEMORY[0x1E6981F40]);
    sub_1A42891EC();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121530);
    }
  }
}

unint64_t sub_1A42891EC()
{
  result = qword_1EB121150;
  if (!qword_1EB121150)
  {
    sub_1A428F9A8(255, &qword_1EB121148, sub_1A4288D8C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121150);
  }

  return result;
}

uint64_t sub_1A42892B0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1A524B414();
  v6 = sub_1A524BC74();
  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = *(v3 + 24);
  swift_unknownObjectRetain();
  if (v10(ObjectType, v3))
  {
    result = sub_1A524B694();
    v12 = v14;
    v13 = v15;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v4 = 0;
    v3 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v6;
  a1[6] = v8;
  return result;
}

uint64_t sub_1A42893B0()
{
  v1 = *(v0 + 8);
  type metadata accessor for PhotosPreviewHeaderContentView();
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(&v7, ObjectType, v1);
  v5 = v7;
  v6 = v8;
  v3 = (*(v1 + 40))(ObjectType, v1);
  return sub_1A467A134(&v5, v3);
}

uint64_t sub_1A428945C(void *a1)
{
  v3 = *(v1 + 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(*(v1 + 16));
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  v6 = a1;
  return v5(a1, ObjectType, v3);
}

uint64_t sub_1A4289508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A428F044();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A428956C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A428F044();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A42895D0()
{
  sub_1A428F044();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A42895F8@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = sub_1A5242C04();
  v2 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A428DE70();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 16);
  v13 = v1[3];
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  v17[4] = v10;
  v17[5] = v11;
  v18 = v12;
  v19 = v13;
  sub_1A428F18C(0, &qword_1EB123490, sub_1A428DEF8);
  sub_1A428DFAC();
  swift_unknownObjectRetain();

  sub_1A524B704();
  sub_1A5247DE4();
  sub_1A428FB10(&qword_1EB121AF8, sub_1A428DE70);
  sub_1A428FB10(&qword_1EB129158, MEMORY[0x1E69C2160]);
  v15 = v17[0];
  sub_1A524A944();
  (*(v2 + 8))(v4, v15);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A42898B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  sub_1A4289B68(v38, 2, a1, a2);
  v38[40] = v8 & 1;
  sub_1A428DC98(v38, v35, sub_1A428C578);
  v9 = v37;
  sub_1A428F8E8(v35, sub_1A428C5E4);
  v10 = sub_1A524B414();
  v11 = sub_1A524BC64();
  v13 = v12;
  sub_1A428CFB4(0, &qword_1EB123D78, sub_1A428C650);
  v15 = a3 + *(v14 + 36);
  sub_1A4289D8C(v9, a2, v15);
  sub_1A428C650();
  v17 = (v15 + *(v16 + 36));
  *v17 = v11;
  v17[1] = v13;
  *a3 = v10;
  v18 = sub_1A524BC64();
  v20 = v19;
  sub_1A428C894();
  v22 = a3 + *(v21 + 36);
  sub_1A428DC98(v38, v35, sub_1A428C578);
  *v22 = a1;
  *(v22 + 1) = a2;
  *(v22 + 2) = a4;
  v22[24] = v9;
  v23 = v35[1];
  *(v22 + 2) = v35[0];
  *(v22 + 3) = v23;
  *(v22 + 8) = v36;
  v24 = *(type metadata accessor for HeaderChrome.Content() + 32);
  *&v22[v24] = swift_getKeyPath();
  sub_1A428F9A8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  ObjectType = swift_getObjectType();
  v26 = *(a2 + 48);
  swift_unknownObjectRetain();
  v27 = v26(ObjectType, a2);
  sub_1A428CA10(0);
  *&v22[*(v28 + 36)] = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = a4;
  sub_1A428C9C8(0);
  v31 = &v22[*(v30 + 36)];
  *v31 = sub_1A428A098;
  *(v31 + 1) = 0;
  *(v31 + 2) = sub_1A428CBB8;
  *(v31 + 3) = v29;
  sub_1A428C920();
  v33 = &v22[*(v32 + 36)];
  *v33 = v18;
  v33[1] = v20;
  swift_unknownObjectRetain();
  return sub_1A428F8E8(v38, sub_1A428C578);
}

double sub_1A4289B68(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A5243BE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22[-1] - v12;
  ObjectType = swift_getObjectType();
  (*(a4 + 80))(&v23, ObjectType, a4);
  if (!*(&v24 + 1))
  {
    sub_1A428F8E8(&v23, sub_1A428C5E4);
LABEL_9:
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_10;
  }

  sub_1A3C34460(&v23, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1A5243864();
  v15 = (v8 + 8);
  if (a2)
  {
    v16 = MEMORY[0x1E69C2838];
  }

  else
  {
    v16 = MEMORY[0x1E69C2830];
  }

  (*(v8 + 104))(v10, *v16, v7);
  v17 = sub_1A5243BD4();
  v18 = *v15;
  (*v15)(v10, v7);
  v18(v13, v7);
  if ((v17 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
    goto LABEL_9;
  }

  sub_1A3C341C8(v22, &v23);
  __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_10:
  result = *&v23;
  v20 = v24;
  *a1 = v23;
  *(a1 + 16) = v20;
  *(a1 + 32) = v25;
  return result;
}

uint64_t sub_1A4289D8C@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v20[3] = a1;
  v3 = sub_1A5242CB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242CD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69C21D0];
  sub_1A428F18C(0, &qword_1EB124300, MEMORY[0x1E69C21D0]);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  sub_1A524BE74();
  sub_1A524BE84();
  (*(v4 + 104))(v6, *MEMORY[0x1E69C21C0], v3);
  sub_1A5242C94();
  sub_1A524BC74();
  sub_1A52481F4();
  (*(v8 + 32))(v15, v10, v7);
  v16 = &v15[*(v13 + 36)];
  v17 = v24;
  *v16 = v23;
  *(v16 + 1) = v17;
  *(v16 + 2) = v25;
  ObjectType = swift_getObjectType();
  (*(v21 + 64))(ObjectType);
  sub_1A428C7C0();
  sub_1A524A774();
  return sub_1A428CC14(v15, &qword_1EB124300, v11, MEMORY[0x1E697E048], sub_1A428F18C);
}

uint64_t sub_1A428A098@<X0>(void *a1@<X8>)
{
  result = sub_1A52482B4();
  *a1 = v3;
  return result;
}

void *sub_1A428A0C4@<X0>(void *a1@<X8>)
{
  if (sub_1A428A3D0())
  {
    v3 = sub_1A5249574();
    v11[0] = 1;
    sub_1A428A6D8(v1, __src);
    memcpy(__dst, __src, 0x191uLL);
    memcpy(v10, __src, 0x191uLL);
    v4 = MEMORY[0x1E6981F40];
    sub_1A428D1FC(__dst, v13, &qword_1EB120FE8, sub_1A428D7D4, MEMORY[0x1E6981F40], sub_1A428F9A8);
    sub_1A428CC14(v10, &qword_1EB120FE8, sub_1A428D7D4, v4, sub_1A428F9A8);
    memcpy(&v8[7], __dst, 0x191uLL);
    v13[0] = v3;
    v13[1] = 0;
    LOBYTE(v13[2]) = v11[0];
    memcpy(&v13[2] + 1, v8, 0x198uLL);
    sub_1A428DC90(v13);
  }

  else
  {
    v5 = sub_1A5249304();
    v11[0] = 1;
    sub_1A428B730(v1, __src);
    memcpy(__dst, __src, 0x171uLL);
    memcpy(v10, __src, 0x171uLL);
    v6 = MEMORY[0x1E6981F40];
    sub_1A428D1FC(__dst, v13, &qword_1EB121158, sub_1A428D270, MEMORY[0x1E6981F40], sub_1A428F9A8);
    sub_1A428CC14(v10, &qword_1EB121158, sub_1A428D270, v6, sub_1A428F9A8);
    memcpy(&v12[7], __dst, 0x171uLL);
    v13[0] = v5;
    v13[1] = 0;
    LOBYTE(v13[2]) = v11[0];
    memcpy(&v13[2] + 1, v12, 0x178uLL);
    sub_1A428D734(v13);
  }

  memcpy(v11, v13, sizeof(v11));
  sub_1A428D740();
  sub_1A428DB74();
  sub_1A428FB10(&qword_1EB1216B0, sub_1A428D740);
  sub_1A428FB10(&qword_1EB121958, sub_1A428DB74);
  sub_1A5249744();
  return memcpy(a1, __src, 0x1AAuLL);
}

BOOL sub_1A428A3D0()
{
  v1 = sub_1A5249234();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69C2218];
  v5 = MEMORY[0x1E697DCB8];
  sub_1A428F9A8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1A5242D14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeaderChrome.Content();
  sub_1A428D1FC(v0 + *(v13 + 32), v8, &qword_1EB128AA0, v4, v5, sub_1A428F9A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
  }

  v15 = (*(v10 + 88))(v12, v9);
  v16 = v15;
  v17 = *MEMORY[0x1E69C2200];
  if (v15 != *MEMORY[0x1E69C2200] && v15 != *MEMORY[0x1E69C21F8])
  {
    (*(v10 + 8))(v12, v9);
  }

  return v16 == v17;
}

uint64_t sub_1A428A6D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1A5242D14();
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v51 = sub_1A5249304();
  LOBYTE(v62) = 1;
  sub_1A428ADD8(a1, v78);
  memcpy(v85, v78, 0x111uLL);
  memcpy(v86, v78, 0x111uLL);
  v13 = MEMORY[0x1E6981F40];
  sub_1A428D1FC(v85, v54, &qword_1EB121168, sub_1A428D918, MEMORY[0x1E6981F40], sub_1A428F9A8);
  sub_1A428CC14(v86, &qword_1EB121168, sub_1A428D918, v13, sub_1A428F9A8);
  memcpy(&v84[7], v85, 0x111uLL);
  v49 = v62;
  v14 = *(a1 + 24);
  if (v14 == 1)
  {
    sub_1A428DC98(a1 + 32, v54, sub_1A428C5E4);
    if (*(&v54[1] + 1))
    {
      sub_1A3C34460(v54, v78);
      __swift_project_boxed_opaque_existential_1(v78, v78[3]);
      sub_1A5243854();
      v15 = __swift_project_boxed_opaque_existential_1(v54, *(&v54[1] + 1));
      v16 = MEMORY[0x1EEE9AC00](v15);
      (*(v18 + 16))(&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      v19 = sub_1A524B8E4();
      __swift_destroy_boxed_opaque_existential_0(v54);
      __swift_destroy_boxed_opaque_existential_0(v78);
    }

    else
    {
      sub_1A428F8E8(v54, sub_1A428C5E4);
      v19 = 0;
    }

    v20 = sub_1A524A084();
    type metadata accessor for HeaderChrome.Content();
    sub_1A3D61808(v12);
    v21 = v52;
    (*(v52 + 32))(v9, v12, v3);
    v22 = (*(v21 + 88))(v9, v3);
    if (v22 != *MEMORY[0x1E69C2200] && v22 != *MEMORY[0x1E69C21F8])
    {
      (*(v52 + 8))(v9, v3);
    }
  }

  else
  {
    v20 = sub_1A524A084();
    v19 = 0;
  }

  sub_1A5247BC4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_1A524A054();
  if (v14)
  {
    type metadata accessor for HeaderChrome.Content();
    v32 = v47;
    sub_1A3D61808(v47);
    v33 = v52;
    v34 = v48;
    (*(v52 + 32))(v48, v32, v3);
    v35 = (*(v33 + 88))(v34, v3);
    if (v35 != *MEMORY[0x1E69C2200] && v35 != *MEMORY[0x1E69C21F8])
    {
      (*(v52 + 8))(v48, v3);
    }
  }

  sub_1A5247BC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v82 = 0;
  v79 = 0;
  v44 = v51;
  v54[0] = v51;
  v45 = v49;
  LOBYTE(v54[1]) = v49;
  memcpy(&v54[1] + 1, v84, 0x118uLL);
  memcpy(v53, v54, 0x129uLL);
  *&v55 = v19;
  BYTE8(v55) = v20;
  *(&v55 + 9) = *v83;
  HIDWORD(v55) = *&v83[3];
  *&v56 = v24;
  *(&v56 + 1) = v26;
  *&v57 = v28;
  *(&v57 + 1) = v30;
  LOBYTE(v58) = 0;
  *(&v58 + 1) = *v81;
  DWORD1(v58) = *&v81[3];
  BYTE8(v58) = v31;
  HIDWORD(v58) = *&v80[3];
  *(&v58 + 9) = *v80;
  *&v59 = v37;
  *(&v59 + 1) = v39;
  *&v60 = v41;
  *(&v60 + 1) = v43;
  v61 = 0;
  v53[400] = 0;
  *&v53[368] = v59;
  *&v53[384] = v60;
  *&v53[336] = v57;
  *&v53[352] = v58;
  *&v53[304] = v55;
  *&v53[320] = v56;
  memcpy(v50, v53, 0x191uLL);
  v62 = v19;
  v63 = v20;
  *v64 = *v83;
  *&v64[3] = *&v83[3];
  v65 = v24;
  v66 = v26;
  v67 = v28;
  v68 = v30;
  v69 = 0;
  *v70 = *v81;
  *&v70[3] = *&v81[3];
  v71 = v31;
  *&v72[3] = *&v80[3];
  *v72 = *v80;
  v73 = v37;
  v74 = v39;
  v75 = v41;
  v76 = v43;
  v77 = 0;
  sub_1A428DC98(v54, v78, sub_1A428D884);
  sub_1A428DC98(&v55, v78, sub_1A428DA7C);
  sub_1A428F8E8(&v62, sub_1A428DA7C);
  v78[0] = v44;
  v78[1] = 0;
  LOBYTE(v78[2]) = v45;
  memcpy(&v78[2] + 1, v84, 0x118uLL);
  return sub_1A428F8E8(v78, sub_1A428D884);
}

uint64_t sub_1A428ADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  v102 = sub_1A5249584();
  sub_1A428C37C(a1, &v122);
  v87 = v122;
  v100 = v123;
  v101 = *(&v122 + 1);
  v88 = *(&v123 + 1);
  v99 = sub_1A524A094();
  v24 = a1;
  v91 = *(type metadata accessor for HeaderChrome.Content() + 32);
  sub_1A3D61808(v23);
  v92 = *(v5 + 32);
  v92(v20, v23, v4);
  v80 = v5;
  v90 = *(v5 + 88);
  v25 = v90(v20, v4);
  v89 = *MEMORY[0x1E69C2200];
  if (v25 != v89 && v25 != *MEMORY[0x1E69C21F8])
  {
    (*(v80 + 8))(v20, v4, 20.0);
  }

  sub_1A5247BC4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v98 = v32;
  v177 = 0;
  v174 = 0;
  v97 = sub_1A524A084();
  v81 = *(a1 + 24);
  if ((v81 & 1) == 0)
  {
    sub_1A3D61808(v17);
    v33 = v96;
    v92(v96, v17, v4);
    v34 = v90(v33, v4);
    if (v34 != v89 && v34 != *MEMORY[0x1E69C21F8])
    {
      (*(v80 + 8))(v96, v4, 24.0);
    }
  }

  sub_1A5247BC4();
  v95 = v36;
  v96 = v35;
  v93 = v38;
  v94 = v37;
  v178 = 0;
  v39 = *v24;
  v85 = v24[1];
  v86 = v39;
  swift_unknownObjectRetain();
  v84 = sub_1A524A0B4();
  v40 = v82;
  sub_1A3D61808(v82);
  v41 = v83;
  v92(v83, v40, v4);
  v42 = v90(v41, v4);
  if (v42 != v89 && v42 != *MEMORY[0x1E69C21F8])
  {
    (*(v80 + 8))(v41, v4, 24.0);
  }

  sub_1A5247BC4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = sub_1A524A084();
  v52 = v51;
  if ((v81 & 1) == 0)
  {
    LODWORD(v83) = v51;
    v53 = v78;
    sub_1A3D61808(v78);
    v54 = v79;
    v92(v79, v53, v4);
    v55 = v90(v54, v4);
    if (v55 == v89)
    {
      v52 = v83;
    }

    else
    {
      v52 = v83;
      if (v55 != *MEMORY[0x1E69C21F8])
      {
        (*(v80 + 8))(v79, v4);
      }
    }
  }

  v105 = 0;
  sub_1A5247BC4();
  v56 = v105;
  v170 = 0;
  v106[0] = v102;
  v106[1] = 0;
  LOBYTE(v107) = 0;
  *(&v107 + 1) = *v176;
  DWORD1(v107) = *&v176[3];
  v57 = v87;
  *(&v107 + 1) = v87;
  *&v108 = v101;
  *(&v108 + 1) = v100;
  v58 = v88;
  *&v109 = v88;
  BYTE8(v109) = v99;
  HIDWORD(v109) = *&v175[3];
  *(&v109 + 9) = *v175;
  *&v110 = v27;
  *(&v110 + 1) = v29;
  *&v111 = v31;
  *(&v111 + 1) = v98;
  LOBYTE(v112) = 0;
  DWORD1(v112) = *(v180 + 3);
  *(&v112 + 1) = v180[0];
  BYTE8(v112) = v97;
  HIDWORD(v112) = *&v179[3];
  *(&v112 + 9) = *v179;
  *&v113 = v96;
  *(&v113 + 1) = v95;
  *&v114 = v94;
  *(&v114 + 1) = v93;
  v115 = 0;
  LOBYTE(v131) = 0;
  v129 = v113;
  v130 = v114;
  v128 = v112;
  v59 = v107;
  v122 = v102;
  v123 = v107;
  v126 = v110;
  v127 = v111;
  v124 = v108;
  v125 = v109;
  v104 = 1;
  v61 = v85;
  v60 = v86;
  *&v116 = v86;
  *(&v116 + 1) = v85;
  v62 = v84;
  LOBYTE(v117) = v84;
  *(&v117 + 1) = *v173;
  DWORD1(v117) = *&v173[3];
  *(&v117 + 1) = v44;
  *&v118 = v46;
  *(&v118 + 1) = v48;
  *&v119 = v50;
  BYTE8(v119) = v105;
  *(&v119 + 9) = *v172;
  HIDWORD(v119) = *&v172[3];
  LOBYTE(v120) = v52;
  DWORD1(v120) = *&v171[3];
  *(&v120 + 1) = *v171;
  *(&v120 + 1) = v63;
  *&v121[0] = v64;
  *(&v121[0] + 1) = v65;
  *&v121[1] = v66;
  BYTE8(v121[1]) = 0;
  *(&v103[2] + 7) = v118;
  *(&v103[1] + 7) = v117;
  *(v103 + 7) = v116;
  v103[6] = *(v121 + 9);
  *(&v103[5] + 7) = v121[0];
  *(&v103[4] + 7) = v120;
  *(&v103[3] + 7) = v119;
  *a2 = v102;
  *(a2 + 16) = v59;
  v67 = v124;
  v68 = v125;
  v69 = v127;
  *(a2 + 64) = v126;
  *(a2 + 80) = v69;
  *(a2 + 32) = v67;
  *(a2 + 48) = v68;
  v70 = v128;
  v71 = v130;
  v72 = v131;
  *(a2 + 112) = v129;
  *(a2 + 128) = v71;
  *(a2 + 96) = v70;
  *(a2 + 144) = v72;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v73 = v103[2];
  *(a2 + 209) = v103[3];
  v74 = v103[5];
  *(a2 + 225) = v103[4];
  *(a2 + 241) = v74;
  *(a2 + 257) = v103[6];
  v75 = v103[1];
  *(a2 + 161) = v103[0];
  *(a2 + 177) = v75;
  *(a2 + 193) = v73;
  v132[0] = v60;
  v132[1] = v61;
  v133 = v62;
  *&v134[3] = *&v173[3];
  *v134 = *v173;
  v135 = v44;
  v136 = v46;
  v137 = v48;
  v138 = v50;
  v139 = v56;
  *v140 = *v172;
  *&v140[3] = *&v172[3];
  v141 = v52;
  *&v142[3] = *&v171[3];
  *v142 = *v171;
  v143 = v63;
  v144 = v64;
  v145 = v65;
  v146 = v66;
  v147 = 0;
  v76 = MEMORY[0x1E697E5E0];
  sub_1A428D1FC(v106, v148, &unk_1EB1235B0, sub_1A428D9CC, MEMORY[0x1E697E5E0], sub_1A428F18C);
  sub_1A428D1FC(&v116, v148, &unk_1EB123920, &unk_1EB124270, &_s12PhotosUICore10PlayButtonVN_0, sub_1A4288E38);
  sub_1A428CC14(v132, &unk_1EB123920, &unk_1EB124270, &_s12PhotosUICore10PlayButtonVN_0, sub_1A4288E38);
  v148[0] = v102;
  v148[1] = 0;
  v149 = 0;
  *v150 = *v176;
  *&v150[3] = *&v176[3];
  v151 = v57;
  v152 = v101;
  v153 = v100;
  v154 = v58;
  v155 = v99;
  *v156 = *v175;
  *&v156[3] = *&v175[3];
  v157 = v27;
  v158 = v29;
  v159 = v31;
  v160 = v98;
  v161 = 0;
  *&v162[3] = *(v180 + 3);
  *v162 = v180[0];
  v163 = v97;
  *&v164[3] = *&v179[3];
  *v164 = *v179;
  v165 = v96;
  v166 = v95;
  v167 = v94;
  v168 = v93;
  v169 = 0;
  return sub_1A428CC14(v148, &unk_1EB1235B0, sub_1A428D9CC, v76, sub_1A428F18C);
}

uint64_t sub_1A428B730@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v63 = sub_1A5242D14();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v58 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v72 = sub_1A5249584();
  v118 = 1;
  sub_1A428C014(a1, v88);
  v132 = *&v88[128];
  v133 = *&v88[144];
  v128 = *&v88[64];
  v129 = *&v88[80];
  v130 = *&v88[96];
  v131 = *&v88[112];
  v124 = *v88;
  v125 = *&v88[16];
  v126 = *&v88[32];
  v127 = *&v88[48];
  v135[7] = *&v88[112];
  v135[8] = *&v88[128];
  v135[9] = *&v88[144];
  v135[10] = *&v88[160];
  v135[3] = *&v88[48];
  v135[4] = *&v88[64];
  v135[5] = *&v88[80];
  v135[6] = *&v88[96];
  v134 = *&v88[160];
  v135[0] = *v88;
  v135[1] = *&v88[16];
  v135[2] = *&v88[32];
  v17 = MEMORY[0x1E6981F40];
  sub_1A428D1FC(&v124, v89, &qword_1EB120EF8, sub_1A428D3FC, MEMORY[0x1E6981F40], sub_1A428F9A8);
  sub_1A428CC14(v135, &qword_1EB120EF8, sub_1A428D3FC, v17, sub_1A428F9A8);
  *&v117[119] = v131;
  *&v117[135] = v132;
  *&v117[151] = v133;
  *&v117[167] = v134;
  *&v117[55] = v127;
  *&v117[71] = v128;
  *&v117[87] = v129;
  *&v117[103] = v130;
  v18 = v63;
  *&v117[7] = v124;
  *&v117[23] = v125;
  *&v117[39] = v126;
  v69 = v118;
  v70 = sub_1A524A084();
  v19 = *(type metadata accessor for HeaderChrome.Content() + 32);
  v80 = a1;
  sub_1A3D61808(v16);
  v74 = *(v3 + 32);
  v74(v13, v16, v18);
  v20 = *(v3 + 88);
  v21 = v20(v13, v18);
  v22 = *MEMORY[0x1E69C2200];
  if (v21 != *MEMORY[0x1E69C2200] && v21 != *MEMORY[0x1E69C21F8])
  {
    (*(v3 + 8))(v13, v18, 24.0);
  }

  sub_1A5247BC4();
  v66 = v24;
  v67 = v23;
  v64 = v26;
  v65 = v25;
  v119 = 0;
  v79 = sub_1A524A054();
  v61 = v19;
  v27 = v77;
  sub_1A3D61808(v77);
  v28 = v78;
  v74(v78, v27, v18);
  v29 = v20(v28, v18);
  if (v29 != v22 && v29 != *MEMORY[0x1E69C21F8])
  {
    (*(v3 + 8))(v28, v18);
  }

  v59 = v3;
  sub_1A5247BC4();
  v77 = v31;
  v78 = v30;
  v75 = v33;
  v76 = v32;
  v121 = 0;
  v60 = *v80;
  v62 = v60;
  swift_unknownObjectRetain();
  v34 = v68;
  sub_1A3D61808(v68);
  v35 = v73;
  v74(v73, v34, v18);
  v36 = v20(v35, v18);
  if (v36 != v22 && v36 != *MEMORY[0x1E69C21F8])
  {
    (*(v59 + 8))(v73, v18);
  }

  v37 = sub_1A524A064();
  sub_1A5247BC4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  *(&v84[18] + 1) = *&v117[128];
  *(&v84[20] + 1) = *&v117[144];
  *(&v84[22] + 1) = *&v117[160];
  *(&v84[10] + 1) = *&v117[64];
  *(&v84[12] + 1) = *&v117[80];
  *(&v84[14] + 1) = *&v117[96];
  *(&v84[16] + 1) = *&v117[112];
  *(&v84[2] + 1) = *v117;
  *(&v84[4] + 1) = *&v117[16];
  *(&v84[6] + 1) = *&v117[32];
  v83 = 0;
  v46 = v72;
  v84[0] = v72;
  v84[1] = 0;
  v47 = v69;
  v48 = v70;
  LOBYTE(v84[2]) = v69;
  v84[24] = *&v117[175];
  *(&v84[8] + 1) = *&v117[48];
  LOBYTE(v84[25]) = v70;
  *(&v84[25] + 1) = *v120;
  HIDWORD(v84[25]) = *&v120[3];
  v50 = v66;
  v49 = v67;
  v84[26] = v67;
  v84[27] = v66;
  v52 = v64;
  v51 = v65;
  v84[28] = v65;
  v84[29] = v64;
  LOBYTE(v84[30]) = 0;
  *(&v84[30] + 1) = *v123;
  HIDWORD(v84[30]) = *&v123[3];
  LOBYTE(v84[31]) = v79;
  HIDWORD(v84[31]) = *&v122[3];
  *(&v84[31] + 1) = *v122;
  v84[32] = v78;
  v84[33] = v77;
  v84[34] = v76;
  v84[35] = v75;
  LOBYTE(v84[36]) = 0;
  memcpy(v88, v84, 0x121uLL);
  v82 = 1;
  v85 = v60;
  LOBYTE(v86) = v37;
  *(&v86 + 1) = v39;
  *&v87[0] = v41;
  *(&v87[0] + 1) = v43;
  *&v87[1] = v45;
  BYTE8(v87[1]) = 0;
  *(v81 + 7) = v60;
  *(&v81[1] + 7) = v86;
  *(&v81[2] + 7) = v87[0];
  v81[3] = *(v87 + 9);
  v53 = v71;
  memcpy(v71, v88, 0x128uLL);
  *(v53 + 37) = 0;
  v53[304] = 1;
  v54 = v81[1];
  *(v53 + 305) = v81[0];
  *(v53 + 321) = v54;
  v55 = v81[3];
  *(v53 + 337) = v81[2];
  *(v53 + 353) = v55;
  v56 = MEMORY[0x1E697E5E0];
  sub_1A428D1FC(v84, v89, &unk_1EB123528, sub_1A428D340, MEMORY[0x1E697E5E0], sub_1A428F18C);
  sub_1A428DD00(&v85, v89);
  swift_unknownObjectRelease();
  v99 = *&v117[128];
  v100 = *&v117[144];
  *v101 = *&v117[160];
  v95 = *&v117[64];
  v96 = *&v117[80];
  v97 = *&v117[96];
  v98 = *&v117[112];
  v91 = *v117;
  v92 = *&v117[16];
  v93 = *&v117[32];
  v89[0] = v46;
  v89[1] = 0;
  v90 = v47;
  *&v101[15] = *&v117[175];
  v94 = *&v117[48];
  v102 = v48;
  *v103 = *v120;
  *&v103[3] = *&v120[3];
  v104 = v49;
  v105 = v50;
  v106 = v51;
  v107 = v52;
  v108 = 0;
  *v109 = *v123;
  *&v109[3] = *&v123[3];
  v110 = v79;
  *&v111[3] = *&v122[3];
  *v111 = *v122;
  v112 = v78;
  v113 = v77;
  v114 = v76;
  v115 = v75;
  v116 = 0;
  return sub_1A428CC14(v89, &unk_1EB123528, sub_1A428D340, v56, sub_1A428F18C);
}

uint64_t sub_1A428C014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249584();
  sub_1A428C37C(a1, &v36);
  v5 = v36;
  v24 = v37;
  v6 = v38;
  sub_1A4289B68(&v36, 1, *a1, a1[1]);
  LOBYTE(v39) = v7 & 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1A428DC98(&v36, &v25, sub_1A428C5E4);
  if (!v26)
  {
    sub_1A428F8E8(&v25, sub_1A428C5E4);
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  sub_1A3C34460(&v25, v35);
  __swift_project_boxed_opaque_existential_1(v35, *&v35[24]);
  sub_1A5243854();
  v8 = __swift_project_boxed_opaque_existential_1(&v25, v26);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_6:
  sub_1A428F8E8(&v36, sub_1A428C578);
  sub_1A524BC74();
  sub_1A5248AD4();
  *v35 = v12;
  v13 = v31;
  *&v35[56] = v31;
  v14 = v32;
  *&v35[72] = v32;
  v15 = v33;
  *&v35[88] = v33;
  v16 = v34;
  *&v35[104] = v34;
  v17 = v28;
  *&v35[8] = v28;
  v18 = v29;
  *&v35[24] = v29;
  v19 = v30;
  *&v35[40] = v30;
  *(a2 + 48) = v6;
  v20 = *&v35[80];
  *(a2 + 120) = *&v35[64];
  *(a2 + 136) = v20;
  *(a2 + 152) = *&v35[96];
  v21 = *&v35[16];
  *(a2 + 56) = *v35;
  *(a2 + 72) = v21;
  v22 = *&v35[48];
  *(a2 + 88) = *&v35[32];
  *(a2 + 104) = v22;
  v42 = v15;
  v43 = v16;
  v40 = v13;
  v41 = v14;
  v37 = v17;
  v38 = v18;
  v27 = 0;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v24;
  *(a2 + 168) = *&v35[112];
  v36 = v12;
  v39 = v19;

  swift_unknownObjectRetain();
  sub_1A428DD90(v35, &v25);
  sub_1A428DE04(&v36);
  swift_unknownObjectRelease();
}

uint64_t sub_1A428C37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_1A4289B68(v17, 0, *a1, v5);
  v17[40] = v6 & 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1A428DC98(v17, &v14, sub_1A428C5E4);
  if (!v15)
  {
    sub_1A428F8E8(&v14, sub_1A428C5E4);
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  sub_1A3C34460(&v14, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1A5243854();
  v7 = __swift_project_boxed_opaque_existential_1(&v14, v15);
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v11 = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(&v14);
  __swift_destroy_boxed_opaque_existential_0(v16);
LABEL_6:
  sub_1A428F8E8(v17, sub_1A428C578);
  v12 = *(a1 + 16) * 0.7;
  *a2 = v11;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v12;
  return swift_unknownObjectRetain();
}

void sub_1A428C578()
{
  if (!qword_1EB124D40)
  {
    sub_1A428C5E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124D40);
    }
  }
}

void sub_1A428C5E4()
{
  if (!qword_1EB124D38)
  {
    sub_1A3C652C8(255, &qword_1EB124D50);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124D38);
    }
  }
}

void sub_1A428C650()
{
  if (!qword_1EB122E88)
  {
    sub_1A428C718();
    sub_1A428F18C(255, &qword_1EB124300, MEMORY[0x1E69C21D0]);
    sub_1A428C7C0();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122E88);
    }
  }
}

void sub_1A428C718()
{
  if (!qword_1EB121FB0)
  {
    sub_1A428F18C(255, &qword_1EB124300, MEMORY[0x1E69C21D0]);
    sub_1A428C7C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FB0);
    }
  }
}

unint64_t sub_1A428C7C0()
{
  result = qword_1EB124308;
  if (!qword_1EB124308)
  {
    sub_1A428F18C(255, &qword_1EB124300, MEMORY[0x1E69C21D0]);
    sub_1A428FB10(&qword_1EB129150, MEMORY[0x1E69C21D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124308);
  }

  return result;
}

void sub_1A428C894()
{
  if (!qword_1EB123708)
  {
    sub_1A428CFB4(255, &qword_1EB123D78, sub_1A428C650);
    sub_1A428C920();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123708);
    }
  }
}

void sub_1A428C920()
{
  if (!qword_1EB122EF8)
  {
    sub_1A428C9C8(255);
    sub_1A428CDFC(&qword_1EB123918, sub_1A428C9C8, sub_1A428CAE0, sub_1A3E754D0);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122EF8);
    }
  }
}

uint64_t type metadata accessor for HeaderChrome.Content()
{
  result = qword_1EB16EC20;
  if (!qword_1EB16EC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A428CA84()
{
  if (!qword_1EB127B40)
  {
    sub_1A3E75420();
    v0 = sub_1A5249BB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127B40);
    }
  }
}

unint64_t sub_1A428CAE0()
{
  result = qword_1EB124268;
  if (!qword_1EB124268)
  {
    sub_1A428CA10(255);
    sub_1A428CB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124268);
  }

  return result;
}

unint64_t sub_1A428CB60()
{
  result = qword_1EB16EC30[0];
  if (!qword_1EB16EC30[0])
  {
    type metadata accessor for HeaderChrome.Content();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16EC30);
  }

  return result;
}

uint64_t sub_1A428CBB8(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  ObjectType = swift_getObjectType();
  return (*(v2 + 96))(v3, 0, ObjectType, v2);
}

uint64_t sub_1A428CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A428CC74@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  swift_unknownObjectRetain();
  result = sub_1A52482B4();
  *a1 = v5;
  *(a1 + 16) = v4;
  return result;
}

void sub_1A428CCF4()
{
  sub_1A3C652C8(319, &qword_1EB125ED8);
  if (v0 <= 0x3F)
  {
    sub_1A428C5E4();
    if (v1 <= 0x3F)
    {
      sub_1A428F9A8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A428CDFC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A428CF2C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A428CFB4(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A428CFB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A428D018()
{
  if (!qword_1EB122F60)
  {
    sub_1A428F5B0(255, &qword_1EB125BE0, &type metadata for DynamicPreview, MEMORY[0x1E69E6720]);
    sub_1A428D0A0();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F60);
    }
  }
}

unint64_t sub_1A428D0A0()
{
  result = qword_1EB125BD8;
  if (!qword_1EB125BD8)
  {
    sub_1A428F5B0(255, &qword_1EB125BE0, &type metadata for DynamicPreview, MEMORY[0x1E69E6720]);
    sub_1A428D13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BD8);
  }

  return result;
}

unint64_t sub_1A428D13C()
{
  result = qword_1EB16E910[0];
  if (!qword_1EB16E910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16E910);
  }

  return result;
}

uint64_t sub_1A428D1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A428D270()
{
  if (!qword_1EB123520)
  {
    v0 = MEMORY[0x1E697E5E0];
    sub_1A428F18C(255, &qword_1EB123528, sub_1A428D340);
    sub_1A428F600(255, &unk_1EB124270, &_s12PhotosUICore10PlayButtonVN_0, v0, MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB123520);
    }
  }
}

void sub_1A428D368()
{
  if (!qword_1EB121618)
  {
    sub_1A428F9A8(255, &qword_1EB120EF8, sub_1A428D3FC, MEMORY[0x1E6981F40]);
    sub_1A428D6AC();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121618);
    }
  }
}

void sub_1A428D3FC()
{
  if (!qword_1EB121760)
  {
    sub_1A428D47C();
    sub_1A428D624(255, &qword_1EB1239C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121760);
    }
  }
}

void sub_1A428D47C()
{
  if (!qword_1EB121768)
  {
    sub_1A428F9A8(255, &qword_1EB1212E0, sub_1A428D510, MEMORY[0x1E6981F40]);
    sub_1A428D59C();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121768);
    }
  }
}

void sub_1A428D510()
{
  if (!qword_1EB121508)
  {
    sub_1A428F5B0(255, &qword_1EB127340, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121508);
    }
  }
}

unint64_t sub_1A428D59C()
{
  result = qword_1EB1212E8;
  if (!qword_1EB1212E8)
  {
    sub_1A428F9A8(255, &qword_1EB1212E0, sub_1A428D510, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1212E8);
  }

  return result;
}

void sub_1A428D624(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A428F5B0(255, &qword_1EB127340, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A428D6AC()
{
  result = qword_1EB120F00;
  if (!qword_1EB120F00)
  {
    sub_1A428F9A8(255, &qword_1EB120EF8, sub_1A428D3FC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120F00);
  }

  return result;
}

void sub_1A428D740()
{
  if (!qword_1EB1216A8)
  {
    sub_1A428F9A8(255, &qword_1EB120FE8, sub_1A428D7D4, MEMORY[0x1E6981F40]);
    sub_1A428DAEC();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216A8);
    }
  }
}

void sub_1A428D808(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A428D884()
{
  if (!qword_1EB121968)
  {
    sub_1A428F9A8(255, &qword_1EB121168, sub_1A428D918, MEMORY[0x1E6981F40]);
    sub_1A428D9F4();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121968);
    }
  }
}

void sub_1A428D918()
{
  if (!qword_1EB1235A8)
  {
    sub_1A428F18C(255, &qword_1EB1235B0, sub_1A428D9CC);
    sub_1A4288E38(255, &qword_1EB123920, &unk_1EB124270, &_s12PhotosUICore10PlayButtonVN_0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1235A8);
    }
  }
}

unint64_t sub_1A428D9F4()
{
  result = qword_1EB121170;
  if (!qword_1EB121170)
  {
    sub_1A428F9A8(255, &qword_1EB121168, sub_1A428D918, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121170);
  }

  return result;
}

void sub_1A428DA7C()
{
  if (!qword_1EB1234D8)
  {
    sub_1A428D624(255, &qword_1EB1239C8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1234D8);
    }
  }
}

unint64_t sub_1A428DAEC()
{
  result = qword_1EB120FF0;
  if (!qword_1EB120FF0)
  {
    sub_1A428F9A8(255, &qword_1EB120FE8, sub_1A428D7D4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120FF0);
  }

  return result;
}

void sub_1A428DB74()
{
  if (!qword_1EB121950)
  {
    sub_1A428F9A8(255, &qword_1EB121158, sub_1A428D270, MEMORY[0x1E6981F40]);
    sub_1A428DC08();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121950);
    }
  }
}

unint64_t sub_1A428DC08()
{
  result = qword_1EB121160;
  if (!qword_1EB121160)
  {
    sub_1A428F9A8(255, &qword_1EB121158, sub_1A428D270, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121160);
  }

  return result;
}

uint64_t sub_1A428DC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A428DD00(uint64_t a1, uint64_t a2)
{
  sub_1A428F600(0, &unk_1EB124270, &_s12PhotosUICore10PlayButtonVN_0, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A428DD90(uint64_t a1, uint64_t a2)
{
  sub_1A428D624(0, &qword_1EB1239C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A428DE04(uint64_t a1)
{
  sub_1A428D624(0, &qword_1EB1239C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A428DE70()
{
  if (!qword_1EB121AF0)
  {
    sub_1A428F18C(255, &qword_1EB123490, sub_1A428DEF8);
    sub_1A428DFAC();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121AF0);
    }
  }
}

void sub_1A428DF20()
{
  if (!qword_1EB124250)
  {
    sub_1A428F600(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124250);
    }
  }
}

unint64_t sub_1A428DFAC()
{
  result = qword_1EB123498;
  if (!qword_1EB123498)
  {
    sub_1A428F18C(255, &qword_1EB123490, sub_1A428DEF8);
    sub_1A428E050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123498);
  }

  return result;
}

unint64_t sub_1A428E050()
{
  result = qword_1EB123908;
  if (!qword_1EB123908)
  {
    sub_1A428DEF8(255);
    sub_1A428E0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123908);
  }

  return result;
}

unint64_t sub_1A428E0D0()
{
  result = qword_1EB124258;
  if (!qword_1EB124258)
  {
    sub_1A428DF20();
    sub_1A428E188();
    sub_1A428E1DC(&qword_1EB127B20, &qword_1EB127B10, MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124258);
  }

  return result;
}

unint64_t sub_1A428E188()
{
  result = qword_1EB16E9A0;
  if (!qword_1EB16E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16E9A0);
  }

  return result;
}

uint64_t sub_1A428E1DC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A428F600(255, a2, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A428E234()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 136))(ObjectType, v1);
}

uint64_t sub_1A428E280@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  sub_1A428F5B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  swift_unknownObjectRetain();
  sub_1A524B6A4();
  v7 = [objc_opt_self() px_placeholderBackgroundColor];
  v8 = sub_1A524B284();
  v9 = sub_1A524A064();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v4;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v13;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = sub_1A428E3F8;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = sub_1A428E400;
  *(a1 + 96) = v11;
  swift_retain_n();
  return swift_unknownObjectRetain_n();
}

unint64_t sub_1A428E4AC()
{
  result = qword_1EB122600;
  if (!qword_1EB122600)
  {
    sub_1A428F0E0(255, &qword_1EB1225F8, sub_1A428D740, sub_1A428DB74, MEMORY[0x1E697F960]);
    sub_1A428FB10(&qword_1EB1216B0, sub_1A428D740);
    sub_1A428FB10(&qword_1EB121958, sub_1A428DB74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122600);
  }

  return result;
}

void sub_1A428E5F0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1A428F9A8(0, &qword_1EB124E08, MEMORY[0x1E69C2240], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-1] - v5;
  v7 = sub_1A5242D84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a1 + 56))(v17, ObjectType, a1);
  sub_1A5249584();
  v12 = sub_1A5242D64();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1A5242D74();
  if ((*(a1 + 24))(ObjectType, a1))
  {
    v13 = sub_1A524B434();
  }

  else
  {
    v13 = sub_1A524B374();
  }

  v14 = v13;
  (*(v8 + 32))(a2, v10, v7);
  sub_1A428F3D8(0, &qword_1EB1242F0, MEMORY[0x1E69C2248]);
  *(a2 + *(v15 + 36)) = v14;
}

uint64_t sub_1A428E860@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  sub_1A3EC2854();
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v44 = v41 - v4;
  v5 = sub_1A52486A4();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = v41 - v8;
  sub_1A3EC1A14();
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A428F4F4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A428F3B8(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A524B544();
  v19 = sub_1A524A0F4();
  KeyPath = swift_getKeyPath();
  v21 = (v14 + *(v12 + 36));
  sub_1A428F9A8(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v23 = *(v22 + 28);
  v24 = *MEMORY[0x1E69816C0];
  v25 = sub_1A524B5B4();
  (*(*(v25 - 8) + 104))(v21 + v23, v24, v25);
  *v21 = swift_getKeyPath();
  *v14 = v48;
  v14[1] = KeyPath;
  v26 = v49;
  v14[2] = v19;
  sub_1A524A1A4();
  sub_1A3F32F44();
  sub_1A524A8F4();
  sub_1A428F8E8(v14, sub_1A428F4F4);
  v27 = sub_1A524B434();
  v41[1] = v16;
  v28 = *(v16 + 36);
  v48 = v18;
  *&v18[v28] = v27;
  v30 = v50;
  v29 = v51;
  v31 = v26[13];
  v31(v50, *MEMORY[0x1E697E718], v5);
  v31(v29, *MEMORY[0x1E697E708], v5);
  sub_1A428FB10(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  result = sub_1A524C544();
  if (result)
  {
    v33 = v26[4];
    v34 = v44;
    v33(v44, v30, v5);
    v35 = v46;
    v33((v34 + *(v46 + 48)), v29, v5);
    v36 = v42;
    sub_1A428DC98(v34, v42, sub_1A3EC2854);
    v37 = *(v35 + 48);
    v38 = v43;
    v33(v43, v36, v5);
    v39 = v26[1];
    v39(v36 + v37, v5);
    sub_1A40114B8(v34, v36);
    v33((v38 + *(v45 + 36)), (v36 + *(v35 + 48)), v5);
    v39(v36, v5);
    sub_1A428F654();
    sub_1A428FB10(&qword_1EB126FC0, sub_1A3EC1A14);
    v40 = v48;
    sub_1A524AB84();
    sub_1A428F8E8(v38, sub_1A3EC1A14);
    return sub_1A428F948(v40, sub_1A428F3B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A428EDF0@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  sub_1A428F098(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_1A428F2E4();
  sub_1A428F3B8(255);
  v10 = v9;
  sub_1A3EC1A14();
  v12 = v11;
  v13 = sub_1A428F654();
  v14 = sub_1A428FB10(&qword_1EB126FC0, sub_1A3EC1A14);
  swift_unknownObjectRetain();
  *&v23 = v10;
  *(&v23 + 1) = v12;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_1A524B704();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A428F164(0);
  v16 = &v5[*(v15 + 36)];
  v17 = v24;
  *v16 = v23;
  *(v16 + 1) = v17;
  *(v16 + 2) = v25;
  v18 = &v5[*(v3 + 36)];
  sub_1A524BBB4();
  sub_1A3EC1940();
  *&v18[*(v19 + 56)] = 256;
  ObjectType = swift_getObjectType();
  (*(v6 + 72))(ObjectType, v6);
  sub_1A428F788();
  sub_1A524A774();
  return sub_1A428F948(v5, sub_1A428F098);
}

unint64_t sub_1A428F044()
{
  result = qword_1EB16E9B0[0];
  if (!qword_1EB16E9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16E9B0);
  }

  return result;
}

void sub_1A428F0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A428F18C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A428F1F0()
{
  if (!qword_1EB121A88)
  {
    sub_1A428F2E4();
    sub_1A428F3B8(255);
    sub_1A3EC1A14();
    sub_1A428F654();
    sub_1A428FB10(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A88);
    }
  }
}

void sub_1A428F2E4()
{
  if (!qword_1EB121E38)
  {
    sub_1A428F3B8(255);
    sub_1A3EC1A14();
    sub_1A428F654();
    sub_1A428FB10(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E38);
    }
  }
}

void sub_1A428F3D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A428F600(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A428F470()
{
  if (!qword_1EB121F68)
  {
    sub_1A428F4F4();
    sub_1A3F32F44();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F68);
    }
  }
}

void sub_1A428F4F4()
{
  if (!qword_1EB1236B0)
  {
    sub_1A428CFB4(255, &qword_1EB128560, sub_1A3EC18C4);
    sub_1A428F9A8(255, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1236B0);
    }
  }
}

void sub_1A428F5B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A428F600(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A428F654()
{
  result = qword_1EB123F80;
  if (!qword_1EB123F80)
  {
    sub_1A428F3B8(255);
    sub_1A428F4F4();
    sub_1A3F32F44();
    swift_getOpaqueTypeConformance2();
    sub_1A428E1DC(&qword_1EB127AD8, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F80);
  }

  return result;
}

uint64_t sub_1A428F73C()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 144))(ObjectType, v1);
}

unint64_t sub_1A428F788()
{
  result = qword_1EB123670;
  if (!qword_1EB123670)
  {
    sub_1A428F098(255);
    sub_1A428F838();
    sub_1A428FB10(&qword_1EB122088, sub_1A3EC1940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123670);
  }

  return result;
}

unint64_t sub_1A428F838()
{
  result = qword_1EB123C88;
  if (!qword_1EB123C88)
  {
    sub_1A428F164(255);
    sub_1A428FB10(&unk_1EB121A90, sub_1A428F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C88);
  }

  return result;
}

uint64_t sub_1A428F8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A428F948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A428F9A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A428FA0C()
{
  result = qword_1EB1242F8;
  if (!qword_1EB1242F8)
  {
    sub_1A428F3D8(255, &qword_1EB1242F0, MEMORY[0x1E69C2248]);
    sub_1A428FB10(&qword_1EB124E00, MEMORY[0x1E69C2248]);
    sub_1A428E1DC(&qword_1EB127AD8, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1242F8);
  }

  return result;
}

uint64_t sub_1A428FB10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PXStoryViewModel.prepareForBecomingActive(currentDate:dateWhenBecameInactive:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CD54(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A3F637D4(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1A5241054();
  v14 = v13;
  sub_1A3C52C70(0, &unk_1EB120A90);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v15 maximumAppBackgroundDurationBeforeAutoPause];
  v17 = v16;

  if (v17 < v14)
  {
    aBlock[4] = sub_1A428FDC0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = &block_descriptor_140;
    v18 = _Block_copy(aBlock);
    [v3 performChanges_];
    _Block_release(v18);
  }

  return (*(v9 + 8))(v11, v8);
}

id sub_1A428FDC0(void *a1)
{
  [a1 setDesiredPlayState_];

  return [a1 setWantsChromeVisible_];
}

unint64_t sub_1A428FE90()
{
  result = qword_1EB136A40;
  if (!qword_1EB136A40)
  {
    type metadata accessor for StoryDraft(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136A40);
  }

  return result;
}

id PXStoryViewModel.requestImmediateNavigationPermission()()
{
  v1 = [v0 mainModel];
  v2 = [v1 requestImmediateNavigationPermission];

  return v2;
}

void PXStoryViewModel.requestNavigationPermission(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 mainModel];
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3D59380;
  v7[3] = &block_descriptor_3_3;
  v6 = _Block_copy(v7);

  [v5 requestNavigationPermission_];
  _Block_release(v6);
}

uint64_t PXStoryViewModel.FeedbackAction.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void PXStoryViewModel.desiredFeedbackAction.getter(char *a1@<X8>)
{
  if (![v1 mainAssetCollection])
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v4 = [v3 creationType];
  swift_unknownObjectRelease();
  if (v4 != 1)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &qword_1EB126860);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 centralizedFeedbackUI];

  v7 = 2 * (v6 == 0);
  if (v6 == 1)
  {
    v7 = 1;
  }

LABEL_8:
  *a1 = v7;
}

id PXStoryViewModel.wantsReportConcernAction.getter()
{
  result = [v0 mainAssetCollection];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 creationType];
      swift_unknownObjectRelease();
      if (v3 == 1)
      {
        sub_1A3C52C70(0, &qword_1EB126860);
        v4 = [swift_getObjCClassFromMetadata() sharedInstance];
        v5 = [v4 centralizedFeedbackUI];

        return (v5 == 1);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

unint64_t sub_1A4290440()
{
  result = qword_1EB136A48;
  if (!qword_1EB136A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136A48);
  }

  return result;
}

void sub_1A42904E8()
{
  if (!qword_1EB136AB8)
  {
    type metadata accessor for NotificationsItemListManager();
    type metadata accessor for LemonadeNotificationsModel(255);
    sub_1A4292610(&qword_1EB129930, type metadata accessor for NotificationsItemListManager);
    sub_1A4292610(&qword_1EB136AC0, type metadata accessor for LemonadeNotificationsModel);
    v0 = sub_1A52431C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136AB8);
    }
  }
}

uint64_t sub_1A4290608()
{
  v1 = *(v0 + 24);
  LOBYTE(v4[0]) = *(v0 + 16);
  v4[1] = v1;
  sub_1A4297320(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v3 & 1) == 0)
  {
    sub_1A405E194(v4);
  }

  return 1;
}

void sub_1A42906F4(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_1A52486A4();
  v18 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v17 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LemonadeNotificationsStackView() - 8;
  MEMORY[0x1EEE9AC00](v16);
  v21 = v3;
  sub_1A42914BC();
  v15[11] = v4;
  v15[12] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4292540();
  v15[17] = v5;
  v15[18] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v22 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42926AC();
  v15[21] = v7;
  v15[22] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v15[15] = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42928D4();
  v15[25] = v9;
  v15[23] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v15[16] = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4292A3C(0);
  v15[20] = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15[19] = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4292A78(0);
  v15[24] = v13 - 8;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15[14] = v15 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[8] = *v1;
  sub_1A405E194(&v23);
}

uint64_t type metadata accessor for LemonadeNotificationsStackView()
{
  result = qword_1EB163950;
  if (!qword_1EB163950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A42914BC()
{
  if (!qword_1EB136AC8)
  {
    sub_1A4296C94(255, &qword_1EB136AD0, MEMORY[0x1E697F960]);
    sub_1A3DB1F18();
    sub_1A4058C58();
    sub_1A4292404();
    v0 = sub_1A5242FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136AC8);
    }
  }
}

void sub_1A429156C()
{
  if (!qword_1EB136AD8)
  {
    sub_1A4291660();
    sub_1A429171C();
    sub_1A4292120();
    sub_1A4292180();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136AD8);
    }
  }
}

void sub_1A4291660()
{
  if (!qword_1EB136AE0)
  {
    sub_1A429171C();
    sub_1A4292120();
    sub_1A4292180();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136AE0);
    }
  }
}

void sub_1A429171C()
{
  if (!qword_1EB136AE8)
  {
    sub_1A42917A8();
    sub_1A4297320(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136AE8);
    }
  }
}

void sub_1A42917A8()
{
  if (!qword_1EB136AF0)
  {
    sub_1A4296FE4(255, &qword_1EB136AF8, sub_1A4291844, sub_1A42918EC, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136AF0);
    }
  }
}

void sub_1A4291844()
{
  if (!qword_1EB136B00)
  {
    sub_1A42918EC(255);
    sub_1A4291E8C(&qword_1EB136B48, sub_1A42918EC, sub_1A4291BA4, sub_1A4291E44);
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136B00);
    }
  }
}

void sub_1A4291954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A42923B0(255, &qword_1EB136B18, &type metadata for LemonadeInvitationsCell, &type metadata for LemonadeSharedLibrarySuggestionNotificationCell, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A42919F0(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4291A74()
{
  if (!qword_1EB136B30)
  {
    sub_1A4291AD4();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136B30);
    }
  }
}

void sub_1A4291AD4()
{
  if (!qword_1EB136B38)
  {
    sub_1A3E05888();
    sub_1A4292610(&qword_1EB1308A0, sub_1A3E05888);
    v0 = type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136B38);
    }
  }
}

unint64_t sub_1A4291BEC()
{
  result = qword_1EB136B58;
  if (!qword_1EB136B58)
  {
    sub_1A42923B0(255, &qword_1EB136B18, &type metadata for LemonadeInvitationsCell, &type metadata for LemonadeSharedLibrarySuggestionNotificationCell, MEMORY[0x1E697F960]);
    sub_1A4291C98();
    sub_1A4291CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B58);
  }

  return result;
}

unint64_t sub_1A4291C98()
{
  result = qword_1EB136B60;
  if (!qword_1EB136B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B60);
  }

  return result;
}

unint64_t sub_1A4291CEC()
{
  result = qword_1EB136B68;
  if (!qword_1EB136B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B68);
  }

  return result;
}

unint64_t sub_1A4291D40()
{
  result = qword_1EB136B70;
  if (!qword_1EB136B70)
  {
    sub_1A42919F0(255);
    sub_1A4292610(&qword_1EB136B78, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell);
    sub_1A4291DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B70);
  }

  return result;
}

unint64_t sub_1A4291DF0()
{
  result = qword_1EB136B80;
  if (!qword_1EB136B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B80);
  }

  return result;
}

uint64_t sub_1A4291E8C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4291F18()
{
  result = qword_1EB136B90;
  if (!qword_1EB136B90)
  {
    sub_1A4291A74();
    sub_1A4291FC8();
    sub_1A4292610(&qword_1EB136BA0, sub_1A4291AD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B90);
  }

  return result;
}

unint64_t sub_1A4291FC8()
{
  result = qword_1EB136B98;
  if (!qword_1EB136B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136B98);
  }

  return result;
}

unint64_t sub_1A429201C()
{
  result = qword_1EB136BA8;
  if (!qword_1EB136BA8)
  {
    sub_1A4291B68(255);
    sub_1A4292610(&qword_1EB136BB0, type metadata accessor for LemonadeCloudQuotaNotificationCell);
    sub_1A42920CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136BA8);
  }

  return result;
}

unint64_t sub_1A42920CC()
{
  result = qword_1EB136BB8;
  if (!qword_1EB136BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136BB8);
  }

  return result;
}

void sub_1A4292120()
{
  if (!qword_1EB136BC0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136BC0);
    }
  }
}

unint64_t sub_1A4292180()
{
  result = qword_1EB136BC8;
  if (!qword_1EB136BC8)
  {
    sub_1A429171C();
    sub_1A4292200();
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136BC8);
  }

  return result;
}

unint64_t sub_1A4292200()
{
  result = qword_1EB136BD0;
  if (!qword_1EB136BD0)
  {
    sub_1A42917A8();
    sub_1A4292278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136BD0);
  }

  return result;
}

unint64_t sub_1A4292278()
{
  result = qword_1EB136BD8;
  if (!qword_1EB136BD8)
  {
    sub_1A4296FE4(255, &qword_1EB136AF8, sub_1A4291844, sub_1A42918EC, MEMORY[0x1E697F960]);
    sub_1A4292610(&qword_1EB136BE0, sub_1A4291844);
    sub_1A4291E8C(&qword_1EB136B48, sub_1A42918EC, sub_1A4291BA4, sub_1A4291E44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136BD8);
  }

  return result;
}

void sub_1A42923B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A4292404()
{
  result = qword_1EB136BE8;
  if (!qword_1EB136BE8)
  {
    sub_1A4296C94(255, &qword_1EB136AD0, MEMORY[0x1E697F960]);
    sub_1A4291660();
    sub_1A429171C();
    sub_1A4292120();
    sub_1A4292180();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136BE8);
  }

  return result;
}

void sub_1A4292540()
{
  if (!qword_1EB136BF0)
  {
    sub_1A42914BC();
    sub_1A4292610(&qword_1EB136BF8, sub_1A42914BC);
    sub_1A4292658();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136BF0);
    }
  }
}

uint64_t sub_1A4292610(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4292658()
{
  result = qword_1EB136C00;
  if (!qword_1EB136C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136C00);
  }

  return result;
}

void sub_1A42926AC()
{
  if (!qword_1EB136C08)
  {
    sub_1A4292540();
    sub_1A4297320(255, &qword_1EB136C10, &type metadata for CloudQuotaNotificationItemInformation, MEMORY[0x1E69E6720]);
    sub_1A42914BC();
    sub_1A4292610(&qword_1EB136BF8, sub_1A42914BC);
    sub_1A4292658();
    swift_getOpaqueTypeConformance2();
    sub_1A42927E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136C08);
    }
  }
}

unint64_t sub_1A42927E4()
{
  result = qword_1EB136C18;
  if (!qword_1EB136C18)
  {
    sub_1A4297320(255, &qword_1EB136C10, &type metadata for CloudQuotaNotificationItemInformation, MEMORY[0x1E69E6720]);
    sub_1A4292880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136C18);
  }

  return result;
}

unint64_t sub_1A4292880()
{
  result = qword_1EB136C20;
  if (!qword_1EB136C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136C20);
  }

  return result;
}

void sub_1A42928D4()
{
  if (!qword_1EB136C28)
  {
    sub_1A42926AC();
    sub_1A4292540();
    sub_1A4297320(255, &qword_1EB136C10, &type metadata for CloudQuotaNotificationItemInformation, MEMORY[0x1E69E6720]);
    sub_1A42914BC();
    sub_1A4292610(&qword_1EB136BF8, sub_1A42914BC);
    sub_1A4292658();
    swift_getOpaqueTypeConformance2();
    sub_1A42927E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136C28);
    }
  }
}

uint64_t sub_1A4292AB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41[1] = a3;
  sub_1A429156C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4296C94(0, &qword_1EB136C68, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  v46 = *(a2 + 32);
  sub_1A42970D4(0, &qword_1EB136C48, sub_1A42904B4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v42 && (LOBYTE(v46) = v13, *(&v46 + 1) = v14, v47 = v15, v16 = sub_1A52431A4(), , v16))
  {
    sub_1A4292F84(v16, v9);
    (*(v7 + 16))(v12, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1A42923B0(0, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A4291660();
    v18 = v17;
    sub_1A429171C();
    v20 = v19;
    sub_1A4292120();
    v22 = v21;
    v23 = sub_1A4292180();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v46 = v20;
    *(&v46 + 1) = v22;
    v47 = v23;
    v48 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    *&v46 = v18;
    *(&v46 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    sub_1A5249744();

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v27 = sub_1A524B414();
    sub_1A524BC74();
    sub_1A52481F4();
    v28 = v46;
    v29 = BYTE8(v46);
    v30 = v47;
    v31 = v48;
    *v12 = v27;
    *(v12 + 1) = v28;
    v12[16] = v29;
    *(v12 + 3) = v30;
    v12[32] = v31;
    *(v12 + 40) = v49;
    swift_storeEnumTagMultiPayload();
    sub_1A42923B0(0, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A4291660();
    v33 = v32;
    sub_1A429171C();
    v35 = v34;
    sub_1A4292120();
    v37 = v36;
    v38 = sub_1A4292180();
    v39 = swift_getOpaqueTypeConformance2();
    v42 = v35;
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v42 = v33;
    v43 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    return sub_1A5249744();
  }
}

uint64_t sub_1A4292F04@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeNotificationsStackView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A4292AB4(a1, v6, a2);
}

uint64_t sub_1A4292F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_1A4292120();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241F84();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5244084();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  sub_1A429171C();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4291660();
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1A4189960() & 1) != 0 && (*(v2 + 8) & 1) == 0)
  {
    sub_1A405E194(v56);
  }

  v42 = 0;
  v43 = 0;
  sub_1A4293AA8(v2, a1, v17);
  v20 = sub_1A4290608();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v20 & 1) == 0;
  v23 = &v17[*(v15 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_1A3E07024;
  v23[2] = v22;
  type metadata accessor for LemonadeNotificationsStackView();
  v41 = v15;
  v24 = MEMORY[0x1E69C2948];
  sub_1A4296D30(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v13);
  sub_1A5244014();
  v25 = v17;
  v26 = *(v45 + 8);
  v27 = v13;
  v28 = v46;
  v26(v27, v46);
  v29 = v44;
  sub_1A4296D30(sub_1A42905D4, sub_1A3F75EB4, v24, v44);
  v30 = v52;
  sub_1A5244074();
  v26(v29, v28);
  v31 = sub_1A4292180();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v47;
  v34 = v41;
  v35 = v54;
  sub_1A524A4E4();
  (*(v53 + 8))(v30, v35);
  (*(v50 + 8))(v8, v51);
  sub_1A42971F4(v25, sub_1A429171C);
  v56[0] = v34;
  v56[1] = v35;
  v56[2] = v31;
  v56[3] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v42;
  v36 = v43;
  v38 = v49;
  sub_1A524A704();
  sub_1A3C784D4(v37, v36);
  return (*(v48 + 8))(v33, v38);
}

uint64_t sub_1A4293528()
{
  type metadata accessor for LemonadeNotificationsStackView();
  sub_1A42970D4(0, &qword_1EB136C48, sub_1A42904B4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (!v1 || (, sub_1A4292658(), result = sub_1A524C594(), (result & 1) == 0))
  {
    sub_1A405E100();
    sub_1A42904E8();
    swift_allocObject();
    sub_1A5243184();
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A429369C(uint64_t *a1, __int128 *a2)
{
  type metadata accessor for LemonadeNotificationsStackView();
  if ((*(a2 + 33) & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a2 + 32);
    v6 = *(a2 + 3);
    v7 = *(a2 + 4);
    v8 = *(a1 + 33);
    v14 = *a2;
    v15 = v7 & 1;
    v16 = v6;
    v17 = v5 & 1;
    v9 = v8 | (v4 == v14);
    sub_1A4290608();
    sub_1A47D1510();
    v11 = v10;
    v13 = v12;
    type metadata accessor for NotificationsItemListManager();
    sub_1A47D155C((v9 & 1) == 0, &v14, v11, v13 & 0xFFFF01);
  }
}

uint64_t sub_1A42937B4(uint64_t a1)
{
  v2 = sub_1A5249DE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LemonadeNotificationsStackView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *(a1 + 24);
  v13[16] = *(a1 + 16);
  v14 = v9;
  sub_1A4297320(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if ((v13[15] & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v13[-16] = a1;
    sub_1A429688C(a1, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadeNotificationsStackView);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    sub_1A4297138(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for LemonadeNotificationsStackView);
    sub_1A524BD24();
    sub_1A5249DD4();
    sub_1A52483C4();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1A4293A48()
{
  v1 = *(type metadata accessor for LemonadeNotificationsStackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A42937B4(v2);
}

uint64_t sub_1A4293AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  sub_1A42918EC(0);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4296FE4(0, &qword_1EB136C70, sub_1A4291844, sub_1A42918EC, MEMORY[0x1E697F948]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - v10;
  v12 = type metadata accessor for LemonadeNotificationsStackView();
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1A5249234();
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4291844();
  MEMORY[0x1EEE9AC00](v17);
  v33 = (v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1A42940A0())
  {
    v30[0] = a2;
    v30[1] = v9;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);

    if ((v20 & 1) == 0)
    {
      sub_1A524D254();
      v22 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      j__swift_release(v19, 0);
      v21 = (*(v31 + 8))(v16, v14);
      v19 = v36;
    }

    MEMORY[0x1EEE9AC00](v21);
    v23 = v30[0];
    sub_1A429688C(a1, v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeNotificationsStackView);
    v24 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v25 = swift_allocObject();
    sub_1A4297138(v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for LemonadeNotificationsStackView);
    *(v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    sub_1A4291E8C(&qword_1EB136B48, sub_1A42918EC, sub_1A4291BA4, sub_1A4291E44);

    v26 = v33;
    sub_1A472916C(v19, sub_1A4296F2C, 0, 0, sub_1A4296F54, v25, v33);
    sub_1A429688C(v26, v11, sub_1A4291844);
    swift_storeEnumTagMultiPayload();
    sub_1A4292610(&qword_1EB136BE0, sub_1A4291844);
    sub_1A5249744();
    v27 = sub_1A4291844;
    v28 = v26;
  }

  else
  {
    sub_1A42944F0(v7);
    sub_1A429688C(v7, v11, sub_1A42918EC);
    swift_storeEnumTagMultiPayload();
    sub_1A4292610(&qword_1EB136BE0, sub_1A4291844);
    sub_1A4291E8C(&qword_1EB136B48, sub_1A42918EC, sub_1A4291BA4, sub_1A4291E44);
    sub_1A5249744();
    v27 = sub_1A42918EC;
    v28 = v7;
  }

  return sub_1A42971F4(v28, v27);
}

uint64_t sub_1A42940A0()
{
  v0 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NotificationsPhotosItem(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4188DC0(v15);
  sub_1A429688C(&v15[*(v13 + 28)], v11, type metadata accessor for NotificationsPhotosItem.NotificationType);
  sub_1A42971F4(v15, type metadata accessor for NotificationsPhotosItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1A4297138(v11, v8, type metadata accessor for InvitationsItem);
        sub_1A429688C(&v8[*(v6 + 28)], v5, type metadata accessor for InvitationsItem.InvitationType);
        sub_1A42971F4(v8, type metadata accessor for InvitationsItem);
        v17 = swift_getEnumCaseMultiPayload() != 1;
        sub_1A42971F4(v5, type metadata accessor for InvitationsItem.InvitationType);
        return v17 & 1;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1A3DB1E58();
      v19 = *(v18 + 48);
      v20 = sub_1A5241144();
      (*(*(v20 - 8) + 8))(&v11[v19], v20);
LABEL_12:
      v17 = 0;
      return v17 & 1;
    }

    if (EnumCaseMultiPayload == 2)
    {
LABEL_8:
      sub_1A42971F4(v11, type metadata accessor for NotificationsPhotosItem.NotificationType);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 6)
  {
LABEL_10:
    sub_1A42971F4(v11, type metadata accessor for NotificationsPhotosItem.NotificationType);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A4297138(v11, v2, type metadata accessor for TestNotificationPhotosItem);
  v24 = v2[64];
  v17 = 1;
  v23 = 1;
  sub_1A42971A0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v22[3] != v22[1] || v22[4] != v22[2])
  {
    v17 = sub_1A524EAB4();
  }

  sub_1A42971F4(v2, type metadata accessor for TestNotificationPhotosItem);

  return v17 & 1;
}

uint64_t sub_1A42944F0@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v1 = MEMORY[0x1E697F948];
  sub_1A4297068(0, &qword_1EB136C78, type metadata accessor for LemonadeCloudQuotaNotificationCell, &type metadata for LemonadeTestNotificationsCell, MEMORY[0x1E697F948]);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v59 - v3);
  sub_1A4291B68(0);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5243934();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LemonadeCloudQuotaNotificationCell();
  MEMORY[0x1EEE9AC00](v61);
  v60 = (v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1E697F948];
  sub_1A4296FE4(0, &qword_1EB136C80, sub_1A4291A74, sub_1A4291B68, MEMORY[0x1E697F948]);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v67 = (v59 - v13);
  sub_1A4291A2C(0);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v70 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4297068(0, &qword_1EB136C88, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell, &type metadata for LemonadeAssetsRecoveryNotificationCell, v1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v59 - v17);
  sub_1A42919F0(0);
  v66 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4296FE4(0, &qword_1EB136C90, sub_1A4291934, sub_1A4291A2C, v11);
  v71 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v73 = v59 - v26;
  sub_1A4291954(0, &qword_1EB136C98, MEMORY[0x1E697F948]);
  v64 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v59 - v28);
  sub_1A4291934(0);
  v72 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v69 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A4188E9C();
  v33 = v32;
  v34 = v32 >> 61;
  if ((v32 >> 61) > 3)
  {
    if (v34 > 5)
    {
      if (v34 == 6)
      {
        v76 = v32 & 0x1FFFFFFFFFFFFFFFLL;
        sub_1A3E05888();
        v46 = v45;
        sub_1A4292610(&qword_1EB1308A0, sub_1A3E05888);

        sub_1A4203218(&v76, v46, &v86);
        v76 = v86;
        v77 = 1;
        sub_1A4291AD4();
        sub_1A4291FC8();
        sub_1A4292610(&qword_1EB136BA0, sub_1A4291AD4);

        sub_1A5249744();
        v47 = BYTE8(v86);
        v48 = v67;
        *v67 = v86;
        *(v48 + 8) = v47;
        swift_storeEnumTagMultiPayload();
        sub_1A4291A74();
        sub_1A4291F18();
        sub_1A429201C();
        v38 = v70;
        sub_1A5249744();
        sub_1A429688C(v38, v73, sub_1A4291A2C);
        swift_storeEnumTagMultiPayload();
        sub_1A4291BA4();
        sub_1A4291E44();
        sub_1A5249744();
LABEL_19:

        v55 = sub_1A4291A2C;
        goto LABEL_20;
      }

      PXDisplayCollectionDetailedCountsMake(v33 & 0x1FFFFFFFFFFFFFFFLL);
      *v4 = v56;
      swift_storeEnumTagMultiPayload();
      sub_1A4292610(&qword_1EB136BB0, type metadata accessor for LemonadeCloudQuotaNotificationCell);
      sub_1A42920CC();

      v57 = v63;
      sub_1A5249744();
      sub_1A429688C(v57, v67, sub_1A4291B68);
      swift_storeEnumTagMultiPayload();
      sub_1A4291A74();
      sub_1A4291F18();
      sub_1A429201C();
      v38 = v70;
      sub_1A5249744();
      sub_1A42971F4(v57, sub_1A4291B68);
    }

    else
    {
      if (v34 != 4)
      {
        v50 = *(v59[1] + 8);

        sub_1A426916C();
        v51 = v60;
        sub_1A4269170(v33 & 0x1FFFFFFFFFFFFFFFLL, v50, v9, v60);
        sub_1A429688C(v51, v4, type metadata accessor for LemonadeCloudQuotaNotificationCell);
        swift_storeEnumTagMultiPayload();
        sub_1A4292610(&qword_1EB136BB0, type metadata accessor for LemonadeCloudQuotaNotificationCell);
        sub_1A42920CC();
        v52 = v63;
        sub_1A5249744();
        sub_1A429688C(v52, v67, sub_1A4291B68);
        swift_storeEnumTagMultiPayload();
        sub_1A4291A74();
        sub_1A4291F18();
        sub_1A429201C();
        v53 = v70;
        sub_1A5249744();
        sub_1A42971F4(v52, sub_1A4291B68);
        sub_1A429688C(v53, v73, sub_1A4291A2C);
        swift_storeEnumTagMultiPayload();
        sub_1A4291BA4();
        sub_1A4291E44();
        sub_1A5249744();

        sub_1A42971F4(v53, sub_1A4291A2C);
        v43 = type metadata accessor for LemonadeCloudQuotaNotificationCell;
        v44 = v51;
        return sub_1A42971F4(v44, v43);
      }

      PXDisplayCollectionDetailedCountsMake(v33 & 0x1FFFFFFFFFFFFFFFLL);
      v76 = v39;
      v77 = 0;
      sub_1A4291AD4();
      sub_1A4291FC8();
      sub_1A4292610(&qword_1EB136BA0, sub_1A4291AD4);

      sub_1A5249744();
      v40 = BYTE8(v86);
      v41 = v67;
      *v67 = v86;
      *(v41 + 8) = v40;
      swift_storeEnumTagMultiPayload();
      sub_1A4291A74();
      sub_1A4291F18();
      sub_1A429201C();
      v38 = v70;
      sub_1A5249744();
    }

    sub_1A429688C(v38, v73, sub_1A4291A2C);
    swift_storeEnumTagMultiPayload();
    sub_1A4291BA4();
    sub_1A4291E44();
    sub_1A5249744();
    goto LABEL_19;
  }

  if (v34 <= 1)
  {
    if (v34)
    {

      sub_1A3F2DFE8(v33 & 0x1FFFFFFFFFFFFFFFLL, &v89);
      v98 = v89;
      v99 = v90;
      v96 = v91;
      v97 = v92;
      v95 = v94;
      v85 = v90;
      v84 = v92;
      v83 = 1;
      v76 = v89;
      v77 = v90;
      v78 = v91;
      v79 = v92;
      v80 = v93;
      v81 = v94;
      v82 = 1;
      sub_1A429688C(&v98, &v86, sub_1A3FF2CA0);
      sub_1A429688C(&v96, &v86, sub_1A429658C);

      sub_1A3F30668(&v95, &v86);
      sub_1A4291C98();
      sub_1A4291CEC();
      sub_1A5249744();
      v49 = v87;
      *v29 = v86;
      v29[1] = v49;
      v29[2] = v88[0];
      *(v29 + 41) = *(v88 + 9);
      swift_storeEnumTagMultiPayload();
      sub_1A42923B0(0, &qword_1EB136B18, &type metadata for LemonadeInvitationsCell, &type metadata for LemonadeSharedLibrarySuggestionNotificationCell, MEMORY[0x1E697F960]);
      sub_1A4291BEC();
      sub_1A4291D40();
      v38 = v69;
      sub_1A5249744();
      sub_1A429688C(v38, v73, sub_1A4291934);
      swift_storeEnumTagMultiPayload();
      sub_1A4291BA4();
      sub_1A4291E44();
      sub_1A5249744();
      sub_1A42971F4(&v98, sub_1A3FF2CA0);
      sub_1A42971F4(&v96, sub_1A429658C);

      sub_1A3C651B8(&v95);
    }

    else
    {

      PXDisplayCollectionDetailedCountsMake(v35);
      LOBYTE(v89) = 0;
      v76 = v36;
      v82 = 0;
      sub_1A4291C98();
      sub_1A4291CEC();

      sub_1A5249744();
      v37 = v87;
      *v29 = v86;
      v29[1] = v37;
      v29[2] = v88[0];
      *(v29 + 41) = *(v88 + 9);
      swift_storeEnumTagMultiPayload();
      sub_1A42923B0(0, &qword_1EB136B18, &type metadata for LemonadeInvitationsCell, &type metadata for LemonadeSharedLibrarySuggestionNotificationCell, MEMORY[0x1E697F960]);
      sub_1A4291BEC();
      sub_1A4291D40();
      v38 = v69;
      sub_1A5249744();
      sub_1A429688C(v38, v73, sub_1A4291934);
      swift_storeEnumTagMultiPayload();
      sub_1A4291BA4();
      sub_1A4291E44();
      sub_1A5249744();
    }

    goto LABEL_16;
  }

  if (v34 != 2)
  {

    PXDisplayCollectionDetailedCountsMake(v33 & 0x1FFFFFFFFFFFFFFFLL);
    *v18 = v54;
    swift_storeEnumTagMultiPayload();
    sub_1A4292610(&qword_1EB136B78, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell);
    sub_1A4291DF0();

    sub_1A5249744();
    sub_1A429688C(v21, v29, sub_1A42919F0);
    swift_storeEnumTagMultiPayload();
    sub_1A42923B0(0, &qword_1EB136B18, &type metadata for LemonadeInvitationsCell, &type metadata for LemonadeSharedLibrarySuggestionNotificationCell, MEMORY[0x1E697F960]);
    sub_1A4291BEC();
    sub_1A4291D40();
    v38 = v69;
    sub_1A5249744();
    sub_1A42971F4(v21, sub_1A42919F0);
    sub_1A429688C(v38, v73, sub_1A4291934);
    swift_storeEnumTagMultiPayload();
    sub_1A4291BA4();
    sub_1A4291E44();
    sub_1A5249744();

LABEL_16:

    v55 = sub_1A4291934;
LABEL_20:
    v43 = v55;
    v44 = v38;
    return sub_1A42971F4(v44, v43);
  }

  sub_1A48DD17C(v33 & 0x1FFFFFFFFFFFFFFFLL, v24);
  sub_1A429688C(v24, v18, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell);
  swift_storeEnumTagMultiPayload();
  sub_1A4292610(&qword_1EB136B78, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell);
  sub_1A4291DF0();
  sub_1A5249744();
  sub_1A429688C(v21, v29, sub_1A42919F0);
  swift_storeEnumTagMultiPayload();
  sub_1A42923B0(0, &qword_1EB136B18, &type metadata for LemonadeInvitationsCell, &type metadata for LemonadeSharedLibrarySuggestionNotificationCell, MEMORY[0x1E697F960]);
  sub_1A4291BEC();
  sub_1A4291D40();
  v42 = v69;
  sub_1A5249744();
  sub_1A42971F4(v21, sub_1A42919F0);
  sub_1A429688C(v42, v73, sub_1A4291934);
  swift_storeEnumTagMultiPayload();
  sub_1A4291BA4();
  sub_1A4291E44();
  sub_1A5249744();

  sub_1A42971F4(v42, sub_1A4291934);
  v43 = type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell;
  v44 = v24;
  return sub_1A42971F4(v44, v43);
}

uint64_t sub_1A429574C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a1;
  v4 = sub_1A5249234();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A4290608())
  {
    v52 = a2;
    sub_1A4188DC0(v18);
    sub_1A429688C(&v18[*(v16 + 20)], v15, type metadata accessor for NotificationsPhotosItem.NotificationType);
    sub_1A42971F4(v18, type metadata accessor for NotificationsPhotosItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        v31 = v52;
        if (EnumCaseMultiPayload == 6)
        {
          v32 = (*v15 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid);
          v33 = v32[1];
          v59 = *v32;
          v60 = v33;
          v61 = 3;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v47 = type metadata accessor for LemonadeNavigationDestination();
        swift_storeEnumTagMultiPayload();
        v29 = *(*(v47 - 8) + 56);
        v30 = v31;
        v48 = 0;
        v28 = v47;
        goto LABEL_26;
      }

      v27 = v52;
      v28 = type metadata accessor for LemonadeNavigationDestination();
      v29 = *(*(v28 - 8) + 56);
      v30 = v27;
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1A4297138(v15, v12, type metadata accessor for InvitationsItem);
          v20 = v57;
          sub_1A429688C(&v12[*(v10 + 28)], v57, type metadata accessor for InvitationsItem.InvitationType);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v49 = v20;
            v50 = v53;
            sub_1A4297138(v49, v53, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
            v51 = *(v50 + 56);
            v59 = *(v50 + 48);
            v60 = v51;
            v61 = 2;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          sub_1A42971F4(v12, type metadata accessor for InvitationsItem);
          v21 = type metadata accessor for LemonadeNavigationDestination();
          (*(*(v21 - 8) + 56))(v52, 1, 1, v21);
          v22 = type metadata accessor for InvitationsItem.InvitationType;
          v23 = v20;
          return sub_1A42971F4(v23, v22);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_1A3DB1E58();
        v35 = *(v34 + 48);
        v36 = sub_1A5241144();
        (*(*(v36 - 8) + 8))(&v15[v35], v36);
LABEL_17:
        v37 = v52;
        v38 = type metadata accessor for LemonadeNavigationDestination();
        return (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_1A42971F4(v15, type metadata accessor for NotificationsPhotosItem.NotificationType);
        goto LABEL_17;
      }

      v39 = *(v2 + 48);
      v40 = *(v2 + 56);

      v41 = v52;
      if ((v40 & 1) == 0)
      {
        sub_1A524D254();
        v42 = sub_1A524A014();
        sub_1A5246DF4();

        v43 = v54;
        sub_1A5249224();
        swift_getAtKeyPath();
        j__swift_release(v39, 0);
        (*(v55 + 8))(v43, v56);
        v39 = v62;
      }

      if (v39)
      {
        v44 = *(v39 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

        v45 = *(v44 + 16);

        v46 = [v45 px:1000000219 assetCollectionForSmartAlbumWithSubtype:?];

        if (v46)
        {
          LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v41);
        }
      }

      v28 = type metadata accessor for LemonadeNavigationDestination();
      v29 = *(*(v28 - 8) + 56);
      v30 = v41;
    }

    v48 = 1;
LABEL_26:
    v29(v30, v48, 1, v28);
    v22 = type metadata accessor for NotificationsPhotosItem.NotificationType;
    v23 = v15;
    return sub_1A42971F4(v23, v22);
  }

  v24 = type metadata accessor for LemonadeNavigationDestination();
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

uint64_t sub_1A4295F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A45350E8();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15[2] = a2;
    v12 = v11;
    v15[6] = swift_slowAlloc();
    *v12 = 136446210;
    sub_1A4189510();
  }

  v13 = (*(v5 + 8))(v7, v4);
  MEMORY[0x1EEE9AC00](v13);
  v15[-2] = a1;
  v15[-1] = a2;
  sub_1A524BD24();
  sub_1A52483D4();
}

uint64_t sub_1A429623C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  sub_1A524B694();
  *(a3 + 16) = v8;
  *(a3 + 24) = *(&v8 + 1);
  sub_1A42904B4(0);
  sub_1A524B694();
  *(a3 + 32) = v8;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v4 = type metadata accessor for LemonadeNotificationsStackView();
  v5 = *(v4 + 36);
  *(a3 + v5) = swift_getKeyPath();
  sub_1A42905D4(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 40);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A3E31270(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4296340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A42963EC()
{
  type metadata accessor for LemonadeNotificationsStackModel();
  if (v0 <= 0x3F)
  {
    sub_1A4297320(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A42970D4(319, &qword_1EB136C48, sub_1A42904B4, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A429658C(319);
        if (v3 <= 0x3F)
        {
          sub_1A42970D4(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A42970D4(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

unint64_t sub_1A42965C0()
{
  result = qword_1EB136C50;
  if (!qword_1EB136C50)
  {
    sub_1A4297068(255, &qword_1EB136C40, sub_1A4292A78, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A4296678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136C50);
  }

  return result;
}

unint64_t sub_1A4296678()
{
  result = qword_1EB136C58;
  if (!qword_1EB136C58)
  {
    sub_1A4292A78(255);
    sub_1A42966F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136C58);
  }

  return result;
}

unint64_t sub_1A42966F8()
{
  result = qword_1EB136C60;
  if (!qword_1EB136C60)
  {
    sub_1A4292A3C(255);
    sub_1A42926AC();
    sub_1A4292540();
    sub_1A4297320(255, &qword_1EB136C10, &type metadata for CloudQuotaNotificationItemInformation, MEMORY[0x1E69E6720]);
    sub_1A42914BC();
    sub_1A4292610(&qword_1EB136BF8, sub_1A42914BC);
    sub_1A4292658();
    swift_getOpaqueTypeConformance2();
    sub_1A42927E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136C60);
  }

  return result;
}

uint64_t sub_1A429688C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42968F4()
{
  sub_1A4297320(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

uint64_t objectdestroyTm_42()
{
  v1 = type metadata accessor for LemonadeNotificationsStackView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 48), *(v2 + 56));
  v3 = *(v1 + 36);
  sub_1A42905D4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5244084();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 40);
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A4296C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A429156C();
    v7 = v6;
    sub_1A42923B0(255, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4296D30@<X0>(uint64_t (*a1)(void, __n128)@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  a2(v8, &v22 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

void sub_1A4296FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4297068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A42970D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4297138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A42971A0()
{
  result = qword_1EB136CA0;
  if (!qword_1EB136CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136CA0);
  }

  return result;
}

uint64_t sub_1A42971F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A429725C()
{
  v1 = *(v0 + 24);
  result = sub_1A4189C54();
  if (v3)
  {
    (*(*v1 + 128))(result);
  }

  return result;
}

unint64_t sub_1A42972CC()
{
  result = qword_1EB136CA8;
  if (!qword_1EB136CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136CA8);
  }

  return result;
}

void sub_1A4297320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A4297370(uint64_t *a1@<X8>)
{
  sub_1A429783C();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4299620(0, &qword_1EB1240B8, sub_1A429783C);
  v55 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50[-v8];
  v10 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GenerativeStoryIntelligenceBackgroundView(0);
  sub_1A4298E34(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v15);
  sub_1A4298E34(&qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBD0], v12);
  v16 = objc_allocWithZone(type metadata accessor for GenerativeStoryIntelligenceEffectConfiguration(0));
  v17 = sub_1A429852C(v15, v12);
  v18 = a1;
  *a1 = sub_1A524BC74();
  a1[1] = v19;
  sub_1A4299078();
  sub_1A4297918(v1, v17, a1 + *(v20 + 44));
  v21 = sub_1A524BC74();
  v52 = v22;
  v53 = v21;
  v23 = *v1;
  v54 = sub_1A5248A14();
  v24 = *(v54 + 20);
  v51 = *MEMORY[0x1E697F468];
  v25 = v51;
  v26 = sub_1A52494A4();
  v27 = *(*(v26 - 8) + 104);
  v27(v6 + v24, v25, v26);
  *v6 = v23;
  v6[1] = v23;
  sub_1A524BBE4();
  *(v6 + *(v4 + 64)) = 256;
  if (v17[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_showBlur])
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  sub_1A42991A8(0);
  v30 = v18 + *(v29 + 36);
  sub_1A4299EBC(v6, v9, sub_1A429783C);
  *&v9[*(v55 + 44)] = v28;
  sub_1A42994BC(v9, v30);
  sub_1A42992F8(0);
  v32 = (v30 + *(v31 + 36));
  v33 = v52;
  *v32 = v53;
  v32[1] = v33;
  v55 = sub_1A524BC74();
  v53 = v34;
  sub_1A429953C(0);
  v36 = (v18 + *(v35 + 36));
  v37 = v54;
  v38 = v51;
  v27(v36 + *(v54 + 20), v51, v26);
  *v36 = v23;
  v36[1] = v23;
  v56 = sub_1A524B434();
  sub_1A41822D8();
  v39 = sub_1A524B4F4();
  sub_1A3F1D27C();
  *(v36 + *(v40 + 52)) = v39;
  *(v36 + *(v40 + 56)) = 256;
  v41 = *&v17[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_overlayOpacity];

  sub_1A4299620(0, &qword_1EB1240C8, sub_1A3F1D27C);
  *(v36 + *(v42 + 36)) = v41;
  sub_1A42995E4(0);
  v44 = (v36 + *(v43 + 36));
  v45 = v53;
  *v44 = v55;
  v44[1] = v45;
  sub_1A4299748(0);
  v47 = (v18 + *(v46 + 36));
  v27(v47 + *(v37 + 20), v38, v26);
  *v47 = v23;
  v47[1] = v23;
  sub_1A3E42C88();
  *(v47 + *(v48 + 36)) = 256;
  sub_1A4299570(0, &qword_1EB123118, sub_1A4299748, sub_1A429977C);
  *(v18 + *(v49 + 36)) = 0;
}

void sub_1A429783C()
{
  if (!qword_1EB1248F0)
  {
    sub_1A5248A14();
    sub_1A524BBF4();
    sub_1A4299474(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1248F0);
    }
  }
}

uint64_t sub_1A4297918@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v48 = a2;
  sub_1A3E42C60(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  sub_1A4299E04(0, &qword_1EB123DB8, sub_1A3E42C60, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v41 - v16;
  type metadata accessor for GenerativeStoryIntelligenceBackgroundView(0);
  v41 = a1;
  sub_1A4298E34(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v12);
  v17 = *(v7 + 104);
  v17(v9, *MEMORY[0x1E69C2210], v6);
  sub_1A4299474(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v18 = sub_1A524C594();
  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);
  if (v18)
  {
    v20 = 1;
    v21 = v48;
    v22 = v46;
    v23 = v43;
  }

  else
  {
    v24 = v41;
    sub_1A4298E34(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v12);
    v17(v9, *MEMORY[0x1E69C21F0], v6);
    v25 = sub_1A5242D04();
    v19(v9, v6);
    v19(v12, v6);
    if (v25)
    {
      v26 = sub_1A524B404();
      v21 = v48;
    }

    else
    {
      v21 = v48;
      v27 = *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_backgroundColor];
      v26 = sub_1A524B284();
    }

    v22 = v46;
    v28 = v42;
    v23 = v43;
    v29 = *v24;
    v30 = v42 + *(v46 + 36);
    v31 = *(sub_1A5248A14() + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_1A52494A4();
    (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
    *v30 = v29;
    *(v30 + 1) = v29;
    sub_1A3E42C88();
    *&v30[*(v34 + 36)] = 256;
    *v28 = v26;
    sub_1A4299EBC(v28, v23, sub_1A3E42C60);
    v20 = 0;
  }

  (*(v45 + 56))(v23, v20, 1, v22);
  v35 = MEMORY[0x1E69E6720];
  v36 = v44;
  sub_1A4299FB0(v23, v44, &qword_1EB123DB8, sub_1A3E42C60, MEMORY[0x1E69E6720]);
  v37 = v47;
  sub_1A4299FB0(v36, v47, &qword_1EB123DB8, sub_1A3E42C60, v35);
  sub_1A4299110();
  *(v37 + *(v38 + 48)) = v21;
  v39 = v21;
  sub_1A4299F24(v23);

  return sub_1A4299F24(v36);
}

uint64_t sub_1A4297E48@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = type metadata accessor for GenerativeStoryIntelligenceBackgroundView(0);
  v4 = *(v3 + 20);
  *(a1 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  sub_1A4299E04(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = *(v3 + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_1A4299E04(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], v5);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A4297F3C(uint64_t a1, uint64_t a2)
{
  v11[4] = a1;
  sub_1A4299E04(0, &qword_1EB124A28, MEMORY[0x1E69DBFA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  v6 = sub_1A5247234();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(a2 + OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_cellCount);
  v11[2] = *(a2 + OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetime);
  v11[3] = v8;
  v9 = *(a2 + OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetimeVariation);
  v11[0] = *(a2 + OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_relativeSize);
  v11[1] = v9;
  v10 = sub_1A5247214();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42981E8()
{
  sub_1A4299E04(0, &qword_1EB124A28, MEMORY[0x1E69DBFA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7[-v1];
  v3 = sub_1A5247234();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A5247214();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v7[12] = 1;
  sub_1A5247224();
  v5 = objc_allocWithZone(sub_1A5247264());
  return sub_1A5247254();
}

void sub_1A429839C()
{
  sub_1A4299E68();

  JUMPOUT(0x1A58FF620);
}

void sub_1A42983E8()
{
  sub_1A4299E68();

  JUMPOUT(0x1A58FF630);
}

uint64_t sub_1A429843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4299DB0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A42984A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4299DB0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A4298504()
{
  sub_1A4299DB0();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A429852C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A5247E04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v6;
  v14 = *(v6 + 16);
  v42 = v5;
  v43 = a1;
  v39 = v14;
  (v14)(&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_idiom], a1, v5, v11);
  v15 = v10[2];
  v41 = a2;
  v15(&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_colorScheme], a2, v9);
  sub_1A3CB8F68();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A531C940;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.501960784 blue:0.0745098039 alpha:1.0];
  *(v16 + 32) = v17;
  *(v16 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.980392157 green:0.0784313725 blue:0.309803922 alpha:1.0];
  *(v16 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.97254902 green:0.388235294 blue:1.0 alpha:1.0];
  *(v16 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.00392156863 green:0.807843137 blue:1.0 alpha:1.0];
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_colors] = v16;
  if ((v16 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = v17;
    *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_backgroundColor] = v18;
    v19 = *MEMORY[0x1E697DBB8];
    v20 = v10[13];
    v20(v13, v19, v9);
    v21 = sub_1A5247DF4();
    v38 = v10[1];
    v38(v13, v9);
    v37 = (v21 & 1) != 0 && ![objc_opt_self() isReduceTransparencyEnabled];
    v22 = v42;
    v39(v8, v43, v42);
    v23 = v40;
    v24 = (*(v40 + 88))(v8, v22);
    if (v24 == *MEMORY[0x1E69C2200])
    {
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_viewOpacity] = 0x3FF0000000000000;
      v20(v13, v19, v9);
      v25 = v41;
      v26 = sub_1A5247DF4();
      v27 = v38;
      v38(v13, v9);
      v28 = 0.3;
      if (v26)
      {
        v28 = 0.1;
      }

      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_overlayOpacity] = v28;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_cellCount] = 30;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetime] = 0x4024000000000000;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetimeVariation] = 0x3FE3333333333333;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_relativeSize] = 0x3FE6666666666666;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_sizeVariation] = 0x3FECCCCCCCCCCCCDLL;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_growthRate] = 0x3FD999999999999ALL;
LABEL_15:
      v31 = OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_showBlur;
      v32 = v37;
LABEL_16:
      v2[v31] = v32;
LABEL_17:
      v33 = type metadata accessor for GenerativeStoryIntelligenceEffectConfiguration(0);
      v44.receiver = v2;
      v44.super_class = v33;
      v34 = objc_msgSendSuper2(&v44, sel_init);
      v27(v25, v9);
      (*(v23 + 8))(v43, v42);
      return v34;
    }

    if (v24 == *MEMORY[0x1E69C21F8])
    {
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_viewOpacity] = 0x3FECCCCCCCCCCCCDLL;
      v20(v13, v19, v9);
      v25 = v41;
      v29 = sub_1A5247DF4();
      v27 = v38;
      v38(v13, v9);
      v30 = 0.3;
      if (v29)
      {
        v30 = 0.1;
      }

      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_overlayOpacity] = v30;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_cellCount] = 30;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetime] = 0x4024000000000000;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetimeVariation] = 0x3FE3333333333333;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_relativeSize] = 0x3FECCCCCCCCCCCCDLL;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_sizeVariation] = 0x3FECCCCCCCCCCCCDLL;
      v23 = v40;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_growthRate] = 0x3FD3333333333333;
      goto LABEL_15;
    }

    if (v24 == *MEMORY[0x1E69C21F0])
    {
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_viewOpacity] = 0x3FE3333333333333;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_overlayOpacity] = 0x3FC999999999999ALL;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_cellCount] = 40;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetime] = 0x4024000000000000;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetimeVariation] = 0x3FE3333333333333;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_relativeSize] = 0x3FE6666666666666;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_sizeVariation] = 0;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_growthRate] = 0x3FB999999999999ALL;
      v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_showBlur] = v37;
      v25 = v41;
      v27 = v38;
      goto LABEL_17;
    }

    v25 = v41;
    v27 = v38;
    if (v24 == *MEMORY[0x1E69C2210])
    {
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_viewOpacity] = 0x3FDCCCCCCCCCCCCDLL;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_overlayOpacity] = 0x3FB999999999999ALL;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_cellCount] = 30;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetime] = 0x4054000000000000;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_lifetimeVariation] = 0x3FD999999999999ALL;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_relativeSize] = 0x3FE0000000000000;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_sizeVariation] = 0;
      *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_growthRate] = 0;
      v31 = OBJC_IVAR____TtC12PhotosUICoreP33_BAC54E8127AF22E5412F9F53491142E046GenerativeStoryIntelligenceEffectConfiguration_showBlur;
      v32 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A4298D30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryIntelligenceEffectConfiguration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4298E34@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A4299E04(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A4299FB0(v8, &v20 - v15, a1, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v21, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1A4299078()
{
  if (!qword_1EB124428)
  {
    sub_1A4299E04(255, &qword_1EB121228, sub_1A4299110, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124428);
    }
  }
}

void sub_1A4299110()
{
  if (!qword_1EB123DB0)
  {
    sub_1A4299E04(255, &qword_1EB123DB8, sub_1A3E42C60, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123DB0);
    }
  }
}

void sub_1A42991DC()
{
  if (!qword_1EB121560)
  {
    sub_1A4299E04(255, &qword_1EB121228, sub_1A4299110, MEMORY[0x1E6981F40]);
    sub_1A4299270();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121560);
    }
  }
}

unint64_t sub_1A4299270()
{
  result = qword_1EB121230;
  if (!qword_1EB121230)
  {
    sub_1A4299E04(255, &qword_1EB121228, sub_1A4299110, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121230);
  }

  return result;
}

void sub_1A4299334(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A4299620(255, a3, a4);
    a5();
    v7 = sub_1A5248AE4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A42993A8()
{
  result = qword_1EB1240C0;
  if (!qword_1EB1240C0)
  {
    sub_1A4299620(255, &qword_1EB1240B8, sub_1A429783C);
    sub_1A4299474(&qword_1EB1248F8, sub_1A429783C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1240C0);
  }

  return result;
}

uint64_t sub_1A4299474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A42994BC(uint64_t a1, uint64_t a2)
{
  sub_1A4299620(0, &qword_1EB1240B8, sub_1A429783C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4299570(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4299620(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A429967C()
{
  result = qword_1EB1240D0;
  if (!qword_1EB1240D0)
  {
    sub_1A4299620(255, &qword_1EB1240C8, sub_1A3F1D27C);
    sub_1A4299474(&qword_1EB128AD0, sub_1A3F1D27C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1240D0);
  }

  return result;
}

void sub_1A429977C()
{
  if (!qword_1EB1289C0)
  {
    sub_1A3D6F4A4();
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1289C0);
    }
  }
}

void sub_1A429981C()
{
  sub_1A4299E04(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4299E04(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4299918()
{
  result = sub_1A5242D14();
  if (v1 <= 0x3F)
  {
    result = sub_1A5247E04();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1A4299A24()
{
  result = qword_1EB123120;
  if (!qword_1EB123120)
  {
    sub_1A4299570(255, &qword_1EB123118, sub_1A4299748, sub_1A429977C);
    sub_1A4299B04();
    sub_1A4299474(&qword_1EB1289D0, sub_1A429977C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123120);
  }

  return result;
}

unint64_t sub_1A4299B04()
{
  result = qword_1EB123250;
  if (!qword_1EB123250)
  {
    sub_1A4299748(255);
    sub_1A4299BB4();
    sub_1A4299474(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123250);
  }

  return result;
}

unint64_t sub_1A4299BB4()
{
  result = qword_1EB1234E8;
  if (!qword_1EB1234E8)
  {
    sub_1A429953C(255);
    sub_1A4299C64();
    sub_1A4299474(&qword_1EB122F40, sub_1A42995E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1234E8);
  }

  return result;
}

unint64_t sub_1A4299C64()
{
  result = qword_1EB1239D8;
  if (!qword_1EB1239D8)
  {
    sub_1A42991A8(255);
    sub_1A4299474(&unk_1EB121568, sub_1A42991DC);
    sub_1A4299474(&qword_1EB122F30, sub_1A42992F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239D8);
  }

  return result;
}

unint64_t sub_1A4299D58()
{
  result = qword_1EB15F2F0;
  if (!qword_1EB15F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB15F2F0);
  }

  return result;
}

unint64_t sub_1A4299DB0()
{
  result = qword_1EB15F2E0;
  if (!qword_1EB15F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB15F2E0);
  }

  return result;
}

void sub_1A4299E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4299E68()
{
  result = qword_1EB15F300[0];
  if (!qword_1EB15F300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15F300);
  }

  return result;
}

uint64_t sub_1A4299EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4299F24(uint64_t a1)
{
  sub_1A4299E04(0, &qword_1EB123DB8, sub_1A3E42C60, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4299FB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A4299E04(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A429A120()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A429A180(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsVisualLookupWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A429A2B8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsVisualLookupWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A429A3F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1C0))(a2);
  }
}

void (*sub_1A429A488(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A429A4D0;
}

void sub_1A429A4D0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A429A2B8(v3);
  }

  else
  {
    sub_1A429A2B8(v2);
  }
}

id sub_1A429A538(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsVisualLookupWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v14 = sub_1A41845B4(v9, v10, v11, sub_1A429A734, v13);
  v15 = *((*v7 & *v2) + 0xE0);
  v16 = v14;
  v15(v14);
  sub_1A429A95C();
  v17 = v16;
  sub_1A44DE888(v6);
  v18 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v18;
}

void sub_1A429A734()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = sub_1A524C634();
    sub_1A3F37DA4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v7;
    v15[3] = type metadata accessor for PhotosDetailsVisualLookupWidget();
    v15[0] = v3;
    v8 = v3;
    String.init(forType:)(v15);
    v9 = sub_1A524C634();

    *(inited + 48) = v9;
    *(inited + 56) = sub_1A524C674();
    *(inited + 64) = v10;
    *(inited + 72) = v1;
    v11 = v1;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3F24E98();
    swift_arrayDestroy();
    sub_1A3C7B6A4();
    v12 = sub_1A524C3D4();

    [v4 sendEvent:v5 withPayload:v12];

    v13 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x180))();
    if (v13)
    {
      v14 = v13;
      if ([v13 respondsToSelector_])
      {
        [v14 widgetTapped_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A429A95C()
{
  if (!qword_1EB1293B0)
  {
    type metadata accessor for PhotosDetailsVisualLookupWidgetView();
    sub_1A429B1E8(&qword_1EB12A9F8, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1293B0);
    }
  }
}

uint64_t sub_1A429AA64()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x168);
  if (v2())
  {
    type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
    v3 = v2();
    v4 = (*((*v1 & *v0) + 0xA8))();
    v5 = sub_1A4184DF0(v3 & 1, v4);

    if (v5)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = (*((*v1 & *v0) + 0x108))();
    v8 = [v7 sizeClass] != 2;

    return 2 * v8;
  }
}

void sub_1A429ABD8(__int16 a1)
{
  if ((a1 & 0x800) != 0)
  {
    v2 = v1;
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
    if (v4)
    {
      v15 = v4;
      type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
      if (swift_dynamicCastClass() && (sub_1A429B1E8(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel), sub_1A52478D4(), sub_1A5247964(), v5 = , v6 = (*((*v3 & *v1) + 0xA8))(v5), v7 = [v6 visualLookupData], v6, v8 = sub_1A41847F4(), v9 = (*((*v3 & *v2) + 0x158))(v8), v9, objc_msgSend(v9, sel_setNeedsLayout), objc_msgSend(v9, sel_layoutIfNeeded), v9, (v10 = (*((*v3 & *v2) + 0x78))()) != 0))
      {
        v11 = v10;
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = v2;
        aBlock[4] = sub_1A3E770A4;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_141;
        v13 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v14 = v2;

        [v11 widget:v14 animateChanges:v13 withAnimationOptions:0];

        _Block_release(v13);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1A429AF38()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsVisualLookupWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A429AF78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsVisualLookupWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A429AFF8()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))(v3);
  if (v7)
  {
    v8 = v7;
    type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
    if (swift_dynamicCastClass())
    {
      v9 = sub_1A4184D8C();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *((*v6 & *v0) + 0x108);
  v11 = v10();
  v12 = [v11 contentSizeCategory];

  v13 = sub_1A412028C(v12, v5);
  v14 = (v10)(v13);
  v15 = [v14 userInterfaceIdiom];

  v16 = sub_1A44E4270(v5, v15 == 5, v9 & 1);
  (*(v2 + 8))(v5, v1);
  return v16;
}

uint64_t sub_1A429B1E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A429B29C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedLibraryFilterView();
  *(a2 + *(v4 + 24)) = &unk_1F1701D20;
  v5 = *(v4 + 28);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A429B62C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for SharedLibraryFilterViewModel();
  v6 = a1;
  return sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadeSharedLibraryFilterView()
{
  result = qword_1EB1B2FC0;
  if (!qword_1EB1B2FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A429B3EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SharedLibraryFilterViewModel();
  result = SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(a1);
  *a2 = result;
  return result;
}

void sub_1A429B438()
{
  if (!qword_1EB136D20)
  {
    sub_1A429B49C();
    sub_1A429BC28();
    v0 = sub_1A524A2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136D20);
    }
  }
}

void sub_1A429B49C()
{
  if (!qword_1EB136D28)
  {
    sub_1A429B974(255, &qword_1EB136D30, sub_1A429B528);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136D28);
    }
  }
}

void sub_1A429B528()
{
  if (!qword_1EB136D38)
  {
    sub_1A429B62C(255, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A429B690();
    sub_1A429BBA0();
    sub_1A429D0CC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136D38);
    }
  }
}

void sub_1A429B62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A429B690()
{
  if (!qword_1EB136D40)
  {
    sub_1A429B714();
    sub_1A429BAC0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136D40);
    }
  }
}

void sub_1A429B714()
{
  if (!qword_1EB136D48)
  {
    sub_1A429B77C();
    sub_1A3F330A8();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136D48);
    }
  }
}

void sub_1A429B77C()
{
  if (!qword_1EB136D50)
  {
    sub_1A429B62C(255, &qword_1EB136D58, sub_1A429B810, MEMORY[0x1E6981F40]);
    sub_1A429BA38();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136D50);
    }
  }
}

void sub_1A429B810()
{
  if (!qword_1EB136D60)
  {
    sub_1A429B8A0();
    sub_1A429B8F8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB136D60);
    }
  }
}

void sub_1A429B8A0()
{
  if (!qword_1EB1285B0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1285B0);
    }
  }
}

void sub_1A429B8F8()
{
  if (!qword_1EB136D68)
  {
    sub_1A429B974(255, &qword_1EB136D70, sub_1A429B9D8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136D68);
    }
  }
}

void sub_1A429B974(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A429B9D8()
{
  if (!qword_1EB128540)
  {
    sub_1A3D6D248();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128540);
    }
  }
}

unint64_t sub_1A429BA38()
{
  result = qword_1EB136D78;
  if (!qword_1EB136D78)
  {
    sub_1A429B62C(255, &qword_1EB136D58, sub_1A429B810, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136D78);
  }

  return result;
}

unint64_t sub_1A429BAC0()
{
  result = qword_1EB136D80;
  if (!qword_1EB136D80)
  {
    sub_1A429B714();
    sub_1A429D0CC(&qword_1EB136D88, sub_1A429B77C);
    sub_1A429D0CC(&qword_1EB127C80, sub_1A3F330A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136D80);
  }

  return result;
}

unint64_t sub_1A429BBA0()
{
  result = qword_1EB120C28;
  if (!qword_1EB120C28)
  {
    sub_1A429B62C(255, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C28);
  }

  return result;
}

unint64_t sub_1A429BC28()
{
  result = qword_1EB136D90;
  if (!qword_1EB136D90)
  {
    sub_1A429B49C();
    sub_1A429BCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136D90);
  }

  return result;
}

unint64_t sub_1A429BCB4()
{
  result = qword_1EB136D98;
  if (!qword_1EB136D98)
  {
    sub_1A429B974(255, &qword_1EB136D30, sub_1A429B528);
    sub_1A429BD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136D98);
  }

  return result;
}

unint64_t sub_1A429BD58()
{
  result = qword_1EB136DA0;
  if (!qword_1EB136DA0)
  {
    sub_1A429B528();
    sub_1A429B714();
    sub_1A429BAC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136DA0);
  }

  return result;
}

uint64_t sub_1A429BE00()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedSharedLibraryString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  sub_1A524A464();
  sub_1A429B974(0, &qword_1EB136D30, sub_1A429B528);
  sub_1A429BCB4();
  return sub_1A524BA34();
}

void sub_1A429BF20(id *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for LemonadeSharedLibraryFilterView();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v26[-v11];
  v27 = [*a1 hasPreview];
  v13 = sub_1A524B544();
  sub_1A3D61808(v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2210], v5);
  v14 = sub_1A5242D04();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v12, v5);
  if (v14)
  {
    v16 = sub_1A524B434();
  }

  else
  {
    v16 = sub_1A524B3C4();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v37 = v13;
  *(&v37 + 1) = KeyPath;
  *&v38 = v17;
  v36 = *(a1 + *(v3 + 24));
  swift_getKeyPath();
  v19 = a1;
  v20 = v29;
  sub_1A429D450(v19, v29, type metadata accessor for LemonadeSharedLibraryFilterView);
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v31 = v37;
  v32 = v38;
  v21 = (*(v28 + 80) + 17) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  sub_1A429D170(v20, v22 + v21);
  v23 = v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = v34;
  *(v23 + 32) = v33;
  *(v23 + 48) = v24;
  *(v23 + 64) = v35;
  v25 = v32;
  *v23 = v31;
  *(v23 + 16) = v25;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__CFString *sub_1A429C41C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a3;
  v7 = type metadata accessor for LemonadeSharedLibraryFilterView();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *a1;
  v45 = sub_1A5249314();
  v55 = 1;
  v47 = v9;
  v10 = PXLibraryFilterItemTagFromViewMode(v9);
  result = PXLibraryFilterMenuImageNameForItemTagFilled(v10, 1);
  if (result)
  {
    v12 = result;
    v42 = v8;
    v43 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = a4;
    sub_1A524C674();

    v41 = sub_1A524B544();
    sub_1A524BC74();
    sub_1A52481F4();
    v37 = v56;
    v38 = v58;
    v35 = v59;
    v36 = v57;
    v39 = v61;
    v40 = v60;
    result = PXLibraryFilterTitleForItemTag(v10);
    if (result)
    {
      v13 = result;
      v14 = sub_1A524C674();
      v32 = v15;
      v33 = v14;

      sub_1A429B62C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
      v34 = a2;
      v16 = sub_1A5247C84();
      v17 = (*(*v62 + 144))(v16);

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      if (v17 == v47)
      {
        v27 = v31[1];
        v62 = *v31;
        v63 = v27;
        v28 = v31[3];
        v64 = v31[2];
        v65 = v28;
        v26 = *(v31 + 8);
        v66 = v26;
        v19 = *(&v62 + 1);
        v29 = v62;
        v21 = *(&v63 + 1);
        v20 = v63;
        v23 = *(&v64 + 1);
        v22 = v64;
        v25 = *(&v28 + 1);
        v24 = v28;
        sub_1A429D4B8(&v62, &v48, &qword_1EB136D70, sub_1A429B9D8, MEMORY[0x1E697E048], sub_1A429B974);
        v18 = v29;
      }

      v54 = v36;
      v53 = v35;
      v72 = 0;
      v71 = 1;
      *&v48 = v18;
      *(&v48 + 1) = v19;
      *&v49 = v20;
      *(&v49 + 1) = v21;
      *&v50 = v22;
      *(&v50 + 1) = v23;
      *&v51 = v24;
      *(&v51 + 1) = v25;
      v52 = v26;
      v67 = v48;
      v70 = v26;
      v69[1] = v51;
      v69[0] = v50;
      v68 = v49;
      v30[3] = v36;
      LODWORD(v31) = v35;
      v35 = 0;
      v36 = 1;
      *&v62 = v18;
      *(&v62 + 1) = v19;
      *&v63 = v20;
      *(&v63 + 1) = v21;
      *&v64 = v22;
      *(&v64 + 1) = v23;
      *&v65 = v24;
      *(&v65 + 1) = v25;
      v66 = v26;

      sub_1A3E75E68(v33, v32, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A429CB8C()
{
  sub_1A429B438();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_1A429B49C();
  sub_1A429BC28();
  sub_1A524A294();
  sub_1A429D0CC(&qword_1EB136DA8, sub_1A429B438);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A429CCF8()
{
  result = qword_1EB136DB0;
  if (!qword_1EB136DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136DB0);
  }

  return result;
}

uint64_t sub_1A429CD68@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedPhotoLibrary];
  v3 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

  v4 = type metadata accessor for LemonadeSharedLibraryFilterView();
  *(a1 + *(v4 + 24)) = &unk_1F1701D20;
  v5 = *(v4 + 28);
  *(a1 + v5) = swift_getKeyPath();
  sub_1A429B62C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a1 = v3;
  *(swift_allocObject() + 16) = v3;
  type metadata accessor for SharedLibraryFilterViewModel();
  v6 = v3;
  return sub_1A5247C74();
}

uint64_t sub_1A429CEB8(uint64_t a1)
{
  v2 = sub_1A429D114();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A429CF04(uint64_t a1)
{
  v2 = sub_1A429D114();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A429CF78()
{
  sub_1A3C4BCF0();
  if (v0 <= 0x3F)
  {
    sub_1A429B62C(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A429B62C(319, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1A429B62C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A429D0CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A429D114()
{
  result = qword_1EB136DC0;
  if (!qword_1EB136DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136DC0);
  }

  return result;
}

uint64_t sub_1A429D170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibraryFilterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__CFString *sub_1A429D1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeSharedLibraryFilterView() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A429C41C(a1, v2 + v6, v7, a2);
}

uint64_t sub_1A429D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A429D2E4()
{
  v1 = type metadata accessor for LemonadeSharedLibraryFilterView();
  v2 = *(v0 + ((*(*(v1 - 8) + 64) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1A429B62C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = *(v4 + 24);

  [v3 setViewMode_];
}

uint64_t sub_1A429D3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A429D450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A429D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t (*sub_1A429D54C())()
{
  sub_1A429D5B8();
  sub_1A5249244();
  *(swift_allocObject() + 16) = v1;
  return sub_1A3D6069C;
}

unint64_t sub_1A429D5B8()
{
  result = qword_1EB179620[0];
  if (!qword_1EB179620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179620);
  }

  return result;
}

double sub_1A429D60C@<D0>(_OWORD *a1@<X8>)
{
  sub_1A429D5B8();
  sub_1A5249244();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A429D65C()
{
  sub_1A429D5B8();

  return sub_1A5249254();
}

void sub_1A429D6BC()
{
  if (!qword_1EB127718)
  {
    sub_1A3C3637C();
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127718);
    }
  }
}

void sub_1A429D724(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  sub_1A42A4360(a1 & 1, a2);
}

void sub_1A429D7A8()
{
  v1 = [v0 superlayout];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
      swift_beginAccess();
      [v4 setAlpha_];
    }
  }

  sub_1A42A080C();
}

float sub_1A429D878()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  return *v1;
}

void sub_1A429D8DC(float a1)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *v3 = a1;
  sub_1A429D7A8();
}

uint64_t (*sub_1A429D950(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A429D9D0;
}

uint64_t sub_1A429D9D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A429D7A8();
  }

  return result;
}

uint64_t sub_1A429DA38@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A429DB7C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A429DCC8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x98));
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_1A429DD00(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1A429DD78@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  return sub_1A3EBECA4(v1 + v3, a1);
}

uint64_t sub_1A429DDEC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  sub_1A42A5660(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1A429DEC0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *((v2 & v1) + 0xC8);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness);
  result = (*(v5 + 8))(v7, v4);
  if (AssociatedTypeWitness != 1)
  {
    return [v0 setNeedsUpdate];
  }

  return result;
}

uint64_t sub_1A429E078@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A429E180()
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A429E1E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E248(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E2B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A429E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A429E384(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A429E3EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A429E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A429E564(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

uint64_t sub_1A429E5E4()
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A429E644(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E6AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A429E714(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A429E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A429E7E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A429E850(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A429E93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A429E9B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

uint64_t sub_1A429EA18(uint64_t a1)
{
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v45 = sub_1A524DF24();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v39 - v8;
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v39 - v23;
  [v1 updateIfNeeded];
  sub_1A3C341C8(v46, v48);
  sub_1A3C34400(0, &qword_1EB128C90);
  v25 = swift_dynamicCast();
  v26 = *(v47 + 56);
  v46 = AssociatedTypeWitness;
  v26(v24, v25 ^ 1u, 1, AssociatedTypeWitness);
  sub_1A429DA38(v9);
  LODWORD(v6) = (*(*(v6 - 8) + 48))(v9, 1, v6);
  (*(v7 + 8))(v9, v45);
  v27 = *(v11 + 16);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v27(v20, v24, v10);
  v28 = *(v47 + 48);
  if (v28(v20, 1, v46) == 1)
  {
    (*(v11 + 8))(v20, v10);
LABEL_4:
    v27(v13, v24, v10);
    sub_1A42A477C(v13);
    v29 = *(v11 + 8);
    v29(v13, v10);
    return (v29)(v24, v10);
  }

  v31 = *(v47 + 32);
  v32 = v44;
  v45 = v47 + 32;
  v40 = v31;
  v31(v44, v20, v46);
  v33 = v32;
  v34 = v43;
  sub_1A42A23F4(v33, v43);
  v35 = v42;
  v27(v42, v34, v10);
  if (v28(v35, 1, v46) == 1)
  {
    v29 = *(v11 + 8);
    v29(v35, v10);
    sub_1A42A477C(v34);
    v29(v34, v10);
    (*(v47 + 8))(v44, v46);
  }

  else
  {
    v36 = v41;
    v37 = v46;
    v40(v41, v35, v46);
    sub_1A42A3970(v36);
    v38 = *(v47 + 8);
    v38(v36, v37);
    v29 = *(v11 + 8);
    v29(v34, v10);
    v38(v44, v37);
  }

  return (v29)(v24, v10);
}

uint64_t sub_1A429EFF8(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v21 - v6;
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v21 - v14;
  [v1 updateIfNeeded];
  sub_1A42A29D8(a1, v15);
  (*(v9 + 16))(v11, v15, v8);
  if ((*(v5 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v16 = *(v9 + 8);
    v16(v11, v8);
    v17 = *((*v3 & *v1) + 0xC0);
    v18 = *(v1 + v17);
    *(v1 + v17) = a1;
    v19 = a1;

    if (*(v1 + *((*v3 & *v1) + 0xC0)))
    {
      [v1 setNeedsUpdate];
    }

    return (v16)(v15, v8);
  }

  else
  {
    (*(v5 + 32))(v7, v11, AssociatedTypeWitness);
    sub_1A42A3970(v7);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_1A429F2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A42A4878;
  *(v7 + 24) = v6;
  v11[4] = sub_1A3D9C868;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3D9A79C;
  v11[3] = &block_descriptor_142;
  v8 = _Block_copy(v11);

  [v1 enumerateVisibleAnchoringLayoutsUsingBlock_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A429F4D0(uint64_t a1, _BYTE *a2, void *a3, char *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = v21 - v16;
  if ([a3 objectReferenceForSpriteIndex_])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C57128(v21, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  sub_1A3C37290(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
    (*(v10 + 8))(a4, v9);
    (*(v13 + 16))(a4, v17, AssociatedTypeWitness);
    v19(a4, 0, 1, AssociatedTypeWitness);
    *a2 = 1;
    return (*(v13 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1A429F7E8(void *a1)
{
  v1 = a1;
  sub_1A429FCA8(&selRef_willUpdate, off_1E7722270);
}

uint64_t sub_1A429FCA8(SEL *a1, void (*a2)(char *))
{
  v5 = MEMORY[0x1E69E7D40];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HighlightsLevelLayout();
  objc_msgSendSuper2(&v9, *a1);
  v6 = *((*v5 & *v2) + 0x80);
  swift_beginAccess();
  a2(v2 + v6);
  swift_endAccess();
  v7 = *((*v5 & *v2) + 0x88);
  swift_beginAccess();
  a2(v2 + v7);
  return swift_endAccess();
}

void sub_1A429FDB4(void *a1)
{
  v1 = a1;
  sub_1A429FCA8(&selRef_didUpdate, off_1E7722268);
}

void sub_1A429FE84()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for HighlightsLevelLayout();
  objc_msgSendSuper2(&v1, sel_visibleRectDidChange);
  sub_1A42A1E70();
}

void sub_1A429FF40(SEL *a1, void (*a2)(id))
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for HighlightsLevelLayout();
  v5 = objc_msgSendSuper2(&v6, *a1);
  a2(v5);
  sub_1A42A1E70();
}

double sub_1A42A0038@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))() <= 0.0)
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for HighlightsLevelLayout();
    if (objc_msgSendSuper2(&v8, sel_objectReferenceForSpriteIndex_, a1))
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    result = *&v6;
    *a2 = v6;
    a2[1] = v7;
  }

  return result;
}

id sub_1A42A0134(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1A42A0038(a3, &v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1A42A0278(uint64_t a1)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))() <= 0.0)
  {
    return 0;
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for HighlightsLevelLayout();
  return objc_msgSendSuper2(&v4, sel_hitTestResultForSpriteIndex_, a1);
}

id sub_1A42A0340(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A42A0278(a3);

  return v5;
}

uint64_t sub_1A42A038C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v8 = sub_1A42A4A24(v10, a5);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

void sub_1A42A040C(void (*a1)(id, __int128 *), uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_1A429DD78(&v17);
  if (v18)
  {
    sub_1A3C57128(&v17, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v14);
    v5 = [v2 spriteReferenceForObjectReference_];
    swift_unknownObjectRelease();
    v6 = [v2 sublayoutIndexForSpriteReference:v5 options:1];
    if (v6 == sub_1A52403B4())
    {

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {
      v7 = [v2 sublayoutAtIndex:v6 loadIfNeeded:0];

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      if (v7)
      {
        LOBYTE(aBlock) = 0;
        a1(v7, &aBlock);

        return;
      }
    }
  }

  else
  {
    sub_1A3C2C778(&v17, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37290);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v15 = sub_1A42A5D18;
  v16 = v8;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v13 = sub_1A3D9A79C;
  v14 = &block_descriptor_10_3;
  v9 = _Block_copy(&aBlock);

  v11.receiver = v2;
  v11.super_class = type metadata accessor for HighlightsLevelLayout();
  objc_msgSendSuper2(&v11, sel_enumerateVisibleAnchoringLayoutsUsingBlock_, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1A42A06D4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v6[2] = v4;
  v5 = a1;
  sub_1A42A040C(sub_1A42A5648, v6);
  _Block_release(v4);
}

uint64_t sub_1A42A0744()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HighlightsLevelLayout();
  objc_msgSendSuper2(&v3, sel_clearLastVisibleAreaAnchoringInformation);
  memset(v2, 0, sizeof(v2));
  return sub_1A429DDEC(v2);
}

void sub_1A42A07C4(void *a1)
{
  v1 = a1;
  sub_1A42A0744();
}

float sub_1A42A0814()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  if (!*(v0 + v2[13]))
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
    if (result > 0.0)
    {
      v5 = v2[10];
      v4 = v2[11];
      *(v0 + *((*v1 & *v0) + 0x68)) = (*(v4 + 48))(*(v0 + *((*v1 & *v0) + 0x78)), v5, v4);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      v7[2] = v5;
      v7[3] = v4;
      v7[4] = v6;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1A52457C4();
    }
  }

  return result;
}

id sub_1A42A0BA0()
{
  [v0 safeAreaInsets];
  v2 = v1;
  [v0 safeAreaInsets];

  return [v0 setPadding_];
}

void sub_1A42A0C14()
{
  v25 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[25] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19[7] = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v19[13] = v19 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v22 = v19 - v6;
  v7 = sub_1A52413E4();
  v19[16] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v23 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4();
  v19[15] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v26 = sub_1A52414C4();
  v19[23] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v19[14] = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v19[22] = v19 - v12;
  v24 = AssociatedTypeWitness;
  v20 = sub_1A524DF24();
  v19[24] = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19[12] = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v19[20] = v19 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v19 - v18;
  sub_1A5245E94();
}

void sub_1A42A1CBC()
{
  v1 = v0;
  v2 = [v0 entityManager];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x1E69E7D40];
    v5 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
    if (!v5 || (v6 = [v5 entityManager]) == 0 || (v7 = v6, sub_1A3C52C70(0, &unk_1EB136E30), v13 = v3, v8 = sub_1A524DBF4(), v7, v13, (v8 & 1) == 0))
    {
      v9 = [objc_allocWithZone(off_1E77215E8) initWithEntityManager_];
      [v9 setExposure_];
      v10 = sub_1A3DBEE68(*(v1 + *((*v4 & *v1) + 0x78)), 1);
      v11 = 40.0;
      if (!v10)
      {
        v11 = 20.0;
      }

      [v9 setRadius_];
      v12 = *((*v4 & *v1) + 0xA0);
      v13 = *(v1 + v12);
      *(v1 + v12) = v9;
    }
  }
}

void sub_1A42A1E78()
{
  swift_beginAccess();
  type metadata accessor for HighlightsLevelLayout.PostInvalidatableEntities();
  swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

void sub_1A42A21A0()
{
  swift_beginAccess();
  type metadata accessor for HighlightsLevelLayout.PreInvalidatableEntities();
  swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

id sub_1A42A227C()
{
  v1 = v0;
  result = [v0 sublayoutDataStore];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1A42A56F4;
    *(v5 + 24) = v4;
    v8[4] = sub_1A3D9C3A0;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1A3D9B774;
    v8[3] = &block_descriptor_30_2;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v3 enumerateSublayoutsUsingBlock_];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A42A23F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_1A524DF24();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v23 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v20 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v20 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A429DA38(v12);
  if ((*(v13 + 48))(v12, 1, v8) != 1)
  {
    (*(v13 + 32))(v16, v12, v8);
    v18 = *(AssociatedTypeWitness - 8);
    v21 = *(v18 + 56);
    v21(v29, 1, 1, AssociatedTypeWitness);
    v30[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v18 + 16))(boxed_opaque_existential_1, v26, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1A5246384();
  }

  (*(v10 + 8))(v12, v9);
  return (*(*(AssociatedTypeWitness - 8) + 56))(v28, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1A42A29D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1A5241144();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v38 - v13;
  v14 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  v42 = v14;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1A524DF24();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  if (!a1)
  {
    goto LABEL_10;
  }

  sub_1A429DA38(&v38 - v18);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v19, v16);
LABEL_10:
    v34 = swift_getAssociatedTypeWitness();
    return (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
  }

  sub_1A42A5A6C(0, &unk_1EB136E40, type metadata accessor for PhotoKitItemListImplementation);
  v20 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v21 = aBlock;
  v22 = *(aBlock + 114);
  if (v22 != 2)
  {
    v23 = [v20 creationDate];
    if (v23)
    {
      v38 = v20;
      v24 = v23;
      sub_1A52410F4();

      v25 = v40;
      v26 = v21;
      v27 = *(v40 + 32);
      v28 = v39;
      v29 = v11;
      v30 = v41;
      v27(v39, v29, v41);
      (*(v25 + 16))(v8, v28, v30);
      v31 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v26;
      v27((v32 + v31), v8, v30);
      LOBYTE(aBlock) = v22 & 1;
      v50 = 0;

      LOBYTE(v24) = static PhotoKitItemListManagerOptions.PromisedSortOrder.== infix(_:_:)(&aBlock, &v50);
      PhotoKitItemListImplementation.numberOfItems.getter();
      if (v24)
      {
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1A42A5ADC;
        *(v33 + 24) = v32;
        v48 = sub_1A3F923EC;
        v49 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v45 = 1107296256;
        v46 = sub_1A3F8FAAC;
        v47 = &block_descriptor_64_2;
        _Block_copy(&aBlock);

        PXLastIndexInSortedRangePassingTest();
      }

      v37 = swift_allocObject();
      *(v37 + 16) = sub_1A42A5ADC;
      *(v37 + 24) = v32;
      v48 = sub_1A3F91FC8;
      v49 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1A3F8FAAC;
      v47 = &block_descriptor_57_1;
      _Block_copy(&aBlock);

      PXFirstIndexInSortedRangePassingTest();
    }
  }

  v36 = swift_getAssociatedTypeWitness();
  (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
  sub_1A3C33378(0);
  return sub_1A3C33378(0);
}
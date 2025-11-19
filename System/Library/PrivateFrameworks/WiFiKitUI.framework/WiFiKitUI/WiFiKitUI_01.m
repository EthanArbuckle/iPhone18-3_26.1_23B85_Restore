uint64_t sub_274029168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2740291AC(void *a1)
{
  v3 = sub_2740516B8();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2740516D8();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27402EB64(a1);
  sub_274031704();
  v11 = sub_2740518F8();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_274031750;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v10, v6, v13);
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v17);
}

uint64_t sub_2740294A0()
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27402950C(void *a1, id a2)
{
  KeyPath = [a2 network];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v99 = MEMORY[0x277D84F90];
  if (KeyPath >> 62)
  {
    goto LABEL_104;
  }

  v6 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  v8 = &selRef_setTableViewStyle_;
  if (v6)
  {
    v78 = v5;
    v5 = 0;
    v90 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v94 = KeyPath & 0xC000000000000001;
    v82 = v6;
    v86 = KeyPath;
    while (1)
    {
      if (v94)
      {
        v9 = MEMORY[0x2743E3810](v5, KeyPath);
      }

      else
      {
        if (v5 >= *(v90 + 16))
        {
          goto LABEL_99;
        }

        v9 = *(KeyPath + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
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
        v6 = sub_274051A98();
        goto LABEL_3;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v98 && (v12 = [v98 v8[56]], swift_unknownObjectRelease(), v12))
      {
        v13 = sub_2740517D8();
        v15 = v14;

        if (!a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = 0;
        v15 = 0;
        if (!a2)
        {
          goto LABEL_19;
        }
      }

      v16 = [a2 network];
      if (!v16)
      {
LABEL_19:
        v18 = 0;
        v20 = 0;
        if (!v15)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v17 = [v16 v8[56]];
      swift_unknownObjectRelease();
      if (v17)
      {
        v18 = sub_2740517D8();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v8 = &selRef_setTableViewStyle_;
      if (!v15)
      {
LABEL_28:
        if (v20)
        {
LABEL_29:

LABEL_30:
          sub_274051A38();
          v22 = *(v99 + 16);
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_6;
        }

        goto LABEL_5;
      }

LABEL_20:
      if (!v20)
      {
        goto LABEL_29;
      }

      if (v13 == v18 && v15 == v20)
      {

        goto LABEL_6;
      }

      v21 = sub_274051B08();

      if ((v21 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_5:

LABEL_6:
      v7 = MEMORY[0x277D84F90];
      ++v5;
      KeyPath = v86;
      if (v11 == v82)
      {
        v23 = v99;
        v5 = v78;
        goto LABEL_34;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_34:

  swift_getKeyPath();
  swift_getKeyPath();
  v99 = v23;
  v24 = v5;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  KeyPath = v99;
  v99 = v7;
  if (KeyPath >> 62)
  {
    v25 = sub_274051A98();
  }

  else
  {
    v25 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v79 = v24;
    v5 = 0;
    v91 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v95 = KeyPath & 0xC000000000000001;
    v83 = v25;
    v87 = KeyPath;
    while (1)
    {
      if (v95)
      {
        v27 = MEMORY[0x2743E3810](v5, KeyPath);
      }

      else
      {
        if (v5 >= *(v91 + 16))
        {
          goto LABEL_101;
        }

        v27 = *(KeyPath + 8 * v5 + 32);
      }

      v28 = v27;
      v29 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_100;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v98 && (v30 = [v98 v8[56]], swift_unknownObjectRelease(), v30))
      {
        v31 = sub_2740517D8();
        v33 = v32;

        if (!a2)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v31 = 0;
        v33 = 0;
        if (!a2)
        {
          goto LABEL_52;
        }
      }

      v34 = [a2 network];
      if (!v34)
      {
LABEL_52:
        v36 = 0;
        v38 = 0;
        if (!v33)
        {
          goto LABEL_61;
        }

        goto LABEL_53;
      }

      v35 = [v34 v8[56]];
      swift_unknownObjectRelease();
      if (v35)
      {
        v36 = sub_2740517D8();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v8 = &selRef_setTableViewStyle_;
      if (!v33)
      {
LABEL_61:
        if (v38)
        {
LABEL_62:

LABEL_63:
          sub_274051A38();
          v40 = *(v99 + 16);
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_53:
      if (!v38)
      {
        goto LABEL_62;
      }

      if (v31 == v36 && v33 == v38)
      {

        goto LABEL_39;
      }

      v39 = sub_274051B08();

      if ((v39 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_38:

LABEL_39:
      ++v5;
      KeyPath = v87;
      if (v29 == v83)
      {
        v41 = v99;
        v24 = v79;
        v26 = MEMORY[0x277D84F90];
        goto LABEL_67;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_67:

  swift_getKeyPath();
  swift_getKeyPath();
  v99 = v41;
  v42 = v24;
  sub_274050E78();
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_274050E68();

  v43 = v99;
  v99 = v26;
  if (v43 >> 62)
  {
    v59 = v43;
    v44 = sub_274051A98();
    v43 = v59;
    if (v44)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
LABEL_69:
      v80 = v42;
      v5 = 0;
      v92 = v43 & 0xFFFFFFFFFFFFFF8;
      v96 = v43 & 0xC000000000000001;
      v84 = v44;
      v88 = v43;
      while (1)
      {
        if (v96)
        {
          v45 = MEMORY[0x2743E3810](v5, v43);
        }

        else
        {
          if (v5 >= *(v92 + 16))
          {
            goto LABEL_103;
          }

          v45 = *(v43 + 8 * v5 + 32);
        }

        v46 = v45;
        v47 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_102;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        if (v98 && (v48 = [v98 v8[56]], swift_unknownObjectRelease(), v48))
        {
          v49 = sub_2740517D8();
          v51 = v50;

          if (!a2)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v49 = 0;
          v51 = 0;
          if (!a2)
          {
            goto LABEL_84;
          }
        }

        v52 = [a2 network];
        if (!v52)
        {
LABEL_84:
          v54 = 0;
          KeyPath = 0;
          if (!v51)
          {
            goto LABEL_93;
          }

          goto LABEL_85;
        }

        v53 = [v52 v8[56]];
        swift_unknownObjectRelease();
        if (v53)
        {
          v54 = sub_2740517D8();
          KeyPath = v55;
        }

        else
        {
          v54 = 0;
          KeyPath = 0;
        }

        v8 = &selRef_setTableViewStyle_;
        if (!v51)
        {
LABEL_93:
          if (KeyPath)
          {
LABEL_94:

LABEL_95:
            sub_274051A38();
            v57 = *(v99 + 16);
            sub_274051A58();
            sub_274051A68();
            KeyPath = &v99;
            sub_274051A48();
            goto LABEL_71;
          }

          goto LABEL_70;
        }

LABEL_85:
        if (!KeyPath)
        {
          goto LABEL_94;
        }

        if (v49 == v54 && v51 == KeyPath)
        {

          goto LABEL_71;
        }

        v56 = sub_274051B08();

        if ((v56 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_70:

LABEL_71:
        v43 = v88;
        ++v5;
        if (v47 == v84)
        {
          v58 = v99;
          v42 = v80;
          v26 = MEMORY[0x277D84F90];
          goto LABEL_108;
        }
      }
    }
  }

  v58 = v26;
LABEL_108:

  swift_getKeyPath();
  swift_getKeyPath();
  v99 = v58;
  v60 = v42;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v61 = v99;
  v99 = v26;
  if (v61 >> 62)
  {
    goto LABEL_141;
  }

  v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v62)
  {
LABEL_110:
    v81 = v60;
    v63 = 0;
    v93 = v61 & 0xFFFFFFFFFFFFFF8;
    v97 = v61 & 0xC000000000000001;
    v85 = v62;
    v89 = v61;
    while (1)
    {
      if (v97)
      {
        v61 = MEMORY[0x2743E3810](v63, v61);
      }

      else
      {
        if (v63 >= *(v93 + 16))
        {
          goto LABEL_140;
        }

        v61 = *(v61 + 8 * v63 + 32);
      }

      v64 = v61;
      v65 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v75 = v61;
        v62 = sub_274051A98();
        v61 = v75;
        if (!v62)
        {
          break;
        }

        goto LABEL_110;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v98 && (v66 = [v98 v8[56]], swift_unknownObjectRelease(), v66))
      {
        v60 = sub_2740517D8();
        v68 = v67;

        if (!a2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v60 = 0;
        v68 = 0;
        if (!a2)
        {
          goto LABEL_125;
        }
      }

      v69 = [a2 network];
      if (!v69)
      {
LABEL_125:
        v71 = 0;
        v73 = 0;
        if (!v68)
        {
          goto LABEL_134;
        }

        goto LABEL_126;
      }

      v70 = [v69 v8[56]];
      swift_unknownObjectRelease();
      if (v70)
      {
        v71 = sub_2740517D8();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      v8 = &selRef_setTableViewStyle_;
      if (!v68)
      {
LABEL_134:
        if (v73)
        {
LABEL_135:

LABEL_136:
          sub_274051A38();
          v60 = *(v99 + 16);
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_112;
        }

        goto LABEL_111;
      }

LABEL_126:
      if (!v73)
      {
        goto LABEL_135;
      }

      if (v60 == v71 && v68 == v73)
      {

        goto LABEL_112;
      }

      v60 = sub_274051B08();

      if ((v60 & 1) == 0)
      {
        goto LABEL_136;
      }

LABEL_111:

LABEL_112:
      v61 = v89;
      ++v63;
      if (v65 == v85)
      {
        v74 = v99;
        v60 = v81;
        goto LABEL_143;
      }
    }
  }

  v74 = MEMORY[0x277D84F90];
LABEL_143:

  swift_getKeyPath();
  swift_getKeyPath();
  v99 = v74;
  v76 = v60;
  return sub_274050E78();
}

uint64_t sub_27402A254(uint64_t a1)
{
  v3 = sub_2740516B8();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2740516D8();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274031704();
  v11 = sub_2740518F8();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_274031770;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v14 = v1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v10, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v16);
}

uint64_t sub_27402A544(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v2 = a1;
  return sub_274050E78();
}

void *sub_27402A624(unint64_t a1)
{
  v89 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR___WFNetworkListDataSource_scanResults;
  v4 = *(v1 + OBJC_IVAR___WFNetworkListDataSource_scanResults);
  if (v4 >> 62)
  {
    goto LABEL_105;
  }

  v5 = *(v1 + OBJC_IVAR___WFNetworkListDataSource_scanResults);
  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_106:
    *(v1 + v3) = a1;

    goto LABEL_107;
  }

LABEL_3:
  if (v5 >> 62)
  {
    v67 = v3;
    v68 = v5;
    v6 = sub_274051A98();
    v5 = v68;
    v3 = v67;
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1 >> 62;
  v86 = a1;
  v78 = v6;
  if (v6)
  {
    v72 = a1 >> 62;
    v82 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v7)
    {
      v70 = v5;
      v71 = sub_274051A98();
      v5 = v70;
      v8 = v71;
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v78;
    v79 = v5 & 0xC000000000000001;
    v75 = v5 + 32;
    v76 = v5 & 0xFFFFFFFFFFFFFF8;
    v84 = a1 & 0xC000000000000001;
    v77 = v5;

    v1 = 0;
    while (1)
    {
      if (v79)
      {
        v10 = MEMORY[0x2743E3810](v1, v77);
        v11 = __OFADD__(v1++, 1);
        if (v11)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v1 >= *(v76 + 16))
        {
          goto LABEL_104;
        }

        v10 = *(v75 + 8 * v1);
        swift_unknownObjectRetain();
        v11 = __OFADD__(v1++, 1);
        if (v11)
        {
          goto LABEL_103;
        }
      }

      if (v8)
      {
        break;
      }

LABEL_9:
      swift_unknownObjectRelease();
      if (v1 == v9)
      {

        v3 = v73;
        v1 = v74;
        v7 = v72;
        goto LABEL_50;
      }
    }

    v80 = v1;
    v1 = 0;
    while (1)
    {
      if (v84)
      {
        v13 = MEMORY[0x2743E3810](v1, a1);
        v14 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v1 >= *(v82 + 16))
        {
          goto LABEL_101;
        }

        v13 = *(a1 + 8 * v1 + 32);
        swift_unknownObjectRetain();
        v14 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
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
          v65 = v3;
          v66 = sub_274051A98();
          v3 = v65;
          v5 = *(v1 + v65);
          if (!v66)
          {
            goto LABEL_106;
          }

          goto LABEL_3;
        }
      }

      v15 = [v13 ssid];
      if (v15)
      {
        v16 = v15;
        v17 = sub_2740517D8();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = [v10 ssid];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v22 = sub_2740517D8();
      v24 = v23;

      if (v19)
      {
        if (!v24)
        {
          goto LABEL_34;
        }

        if (v17 == v22 && v19 == v24)
        {

LABEL_41:
          if (WFNetworkListRecord.isEquivalentRecordForUI(_:)(v13))
          {
            v25 = swift_unknownObjectRetain();
            MEMORY[0x2743E3640](v25);
            a1 = v86;
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_274051878();
            }
          }

          else
          {
            v26 = swift_unknownObjectRetain();
            MEMORY[0x2743E3640](v26);
            a1 = v86;
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v28 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_274051878();
            }
          }

          sub_274051898();
          swift_unknownObjectRelease();
LABEL_48:
          v9 = v78;
          v1 = v80;
          goto LABEL_9;
        }

        v12 = sub_274051B08();

        if (v12)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      swift_unknownObjectRelease();
LABEL_20:
      a1 = v86;
      ++v1;
      if (v14 == v8)
      {
        goto LABEL_48;
      }
    }

    if (!v19)
    {
      goto LABEL_41;
    }

LABEL_34:
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

LABEL_50:
  v29 = *(v1 + v3);
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v69 = *(v1 + v3);
    }

    v30 = sub_274051A98();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = MEMORY[0x277D84F90];
  if (!v30)
  {
    v43 = v1;
    v1 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  v87 = MEMORY[0x277D84F90];

  result = sub_274032104(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
  }

  else
  {
    v33 = 0;
    v1 = v87;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2743E3810](v33, v29);
      }

      else
      {
        v34 = *(v29 + 8 * v33 + 32);
        swift_unknownObjectRetain();
      }

      v35 = [v34 ssid];
      if (v35)
      {
        v36 = v35;
        v37 = sub_2740517D8();
        v39 = v38;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v37 = 0;
        v39 = 0;
      }

      v41 = *(v87 + 16);
      v40 = *(v87 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_274032104((v40 > 1), v41 + 1, 1);
      }

      ++v33;
      *(v87 + 16) = v41 + 1;
      v42 = v87 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
    }

    while (v30 != v33);

    v43 = v74;
    a1 = v86;
    v31 = MEMORY[0x277D84F90];
LABEL_66:
    v44 = sub_274034CE8(v1);

    v88 = v31;
    if (!v7)
    {
      v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_99;
      }

LABEL_68:
      v46 = 0;
      v47 = a1 & 0xC000000000000001;
      v83 = a1 + 32;
      v85 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = v44 + 56;
      v81 = v45;
LABEL_71:
      while (2)
      {
        if (v47)
        {
          v49 = MEMORY[0x2743E3810](v46, v86);
          v11 = __OFADD__(v46++, 1);
          if (v11)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v46 >= *(v85 + 16))
          {
            goto LABEL_102;
          }

          v49 = *(v83 + 8 * v46);
          swift_unknownObjectRetain();
          v11 = __OFADD__(v46++, 1);
          if (v11)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }
        }

        v50 = [v49 ssid];
        if (v50)
        {
          v51 = v50;
          v52 = sub_2740517D8();
          v54 = v53;

          if (!*(v44 + 16))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v52 = 0;
          v54 = 0;
          if (!*(v44 + 16))
          {
            goto LABEL_70;
          }
        }

        v55 = *(v44 + 40);
        sub_274051B38();
        sub_274051B58();
        if (v54)
        {
          sub_2740517F8();
        }

        v56 = sub_274051B68();
        v57 = -1 << *(v44 + 32);
        v58 = v56 & ~v57;
        if ((*(a1 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
        {
          v59 = v47;
          v1 = ~v57;
          v60 = *(v44 + 48);
          while (1)
          {
            v61 = (v60 + 16 * v58);
            v62 = v61[1];
            if (v62)
            {
              if (v54)
              {
                v63 = *v61 == v52 && v62 == v54;
                if (v63 || (sub_274051B08() & 1) != 0)
                {
                  swift_unknownObjectRelease();

                  goto LABEL_93;
                }
              }
            }

            else if (!v54)
            {
              swift_unknownObjectRelease();
LABEL_93:
              v47 = v59;
              v45 = v81;
              if (v46 == v81)
              {
LABEL_98:
                v31 = v88;
                v43 = v74;
                goto LABEL_99;
              }

              goto LABEL_71;
            }

            v58 = (v58 + 1) & v1;
            if (((*(a1 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
            {
              v47 = v59;
              v45 = v81;
              break;
            }
          }
        }

LABEL_70:

        v1 = &v88;
        sub_274051A38();
        v48 = *(v88 + 16);
        sub_274051A58();
        sub_274051A68();
        sub_274051A48();
        if (v46 == v45)
        {
          goto LABEL_98;
        }

        continue;
      }
    }

    v45 = sub_274051A98();
    if (v45)
    {
      goto LABEL_68;
    }

LABEL_99:

    sub_27402B018(v31);
    v64 = *(v43 + v73);
    *(v43 + v73) = v89;

LABEL_107:

    return sub_2740270DC();
  }

  return result;
}

BOOL WFNetworkListRecord.isEquivalentRecordForUI(_:)(void *a1)
{
  v3 = [v1 isKnown];
  if (v3 != [a1 isKnown])
  {
    return 0;
  }

  v4 = [v1 isInstantHotspot];
  if (v4 != [a1 isInstantHotspot])
  {
    return 0;
  }

  v5 = [v1 isPopular];
  if (v5 != [a1 isPopular])
  {
    return 0;
  }

  v6 = [v1 isAdhoc];
  if (v6 != [a1 isAdhoc])
  {
    return 0;
  }

  v7 = [v1 isUnconfiguredAccessory];
  if (v7 != [a1 isUnconfiguredAccessory])
  {
    return 0;
  }

  v9 = [v1 subtitle];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2740517D8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 subtitle];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2740517D8();
    v18 = v17;

    if (v13)
    {
      if (v18)
      {
        if (v11 == v16 && v13 == v18)
        {
        }

        else
        {
          v19 = sub_274051B08();

          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_21;
      }

LABEL_19:

      return 0;
    }

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else if (v13)
  {
    goto LABEL_19;
  }

LABEL_21:
  v20 = [v1 signalBars];
  return v20 == [a1 signalBars];
}

uint64_t sub_27402B018(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_274051A98();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_274051A98();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2740323E0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_274033468(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_27402B120(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2740516D8();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_2740310C4(0xD000000000000019, 0x8000000274066610, aBlock);
    *(v15 + 12) = 1024;
    *(v15 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set scanning status: %{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2743E44F0](v16, -1, -1);
    MEMORY[0x2743E44F0](v15, -1, -1);
  }

  sub_274031704();
  v17 = sub_2740518F8();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a1 & 1;
  aBlock[4] = sub_274034D94;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_33;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v19);
  _Block_release(v19);

  (*(v23 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v22);
}

uint64_t sub_27402B52C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_274050E78();
}

void sub_27402B9C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
  v3 = sub_274051848();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_27402BA6C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = (v5 + *a3);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  a4(a1, a2);
  return a5(v11, v12);
}

uint64_t sub_27402BBBC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
  v3 = sub_274051848();
  v4 = (*(a2 + 16))(a2, v3);

  v5 = sub_2740517D8();
  return v5;
}

uint64_t sub_27402BC4C()
{
  v1 = v0;

  v16[0] = sub_2740333D4(v2);
  sub_2740350C8(v16, v1, &unk_288307440, sub_274034DA0);

  v3 = v16[0];
  v17 = MEMORY[0x277D84F90];
  if (v16[0] < 0 || (v16[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_16;
  }

  for (i = *(v16[0] + 16); i; i = sub_274051A98())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743E3810](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_14;
      }

LABEL_8:
      WFNetworkListRecord.knownNetworksModel.getter();
      v9 = v8;
      swift_unknownObjectRelease();
      v10 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
      v11 = swift_beginAccess();
      *(v9 + v10) = 0;
      MEMORY[0x2743E3640](v11);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_274051878();
      }

      sub_274051898();
      ++v5;
      if (v7 == i)
      {
        v13 = v17;
        goto LABEL_18;
      }
    }

    if (v5 >= *(v3 + 16))
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v13;
  v14 = v1;
  return sub_274050E78();
}

void WFNetworkListRecord.knownNetworksModel.getter()
{
  v1 = v0;
  type metadata accessor for WFNetworkRowConfigModel();
  v2 = static WFNetworkRowConfigModel.knownNetworkRowConfig()();
  sub_27403DF48(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v1;
  v3 = v2;
  swift_unknownObjectRetain();
  sub_274050E78();
  v4 = [v1 subtitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2740517D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_27403E520(v6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v6;
  v26 = v8;
  v9 = v3;
  sub_274050E78();
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v10 = sub_274050E28();
  __swift_project_value_buffer(v10, qword_280937140);
  v11 = v9;
  swift_unknownObjectRetain();
  v12 = sub_274050E08();
  v13 = sub_2740518C8();
  if (!os_log_type_enabled(v12, v13))
  {

    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v24 = v15;
  *v14 = 136315650;
  *(v14 + 4) = sub_2740310C4(0xD000000000000012, 0x8000000274066630, &v24);
  *(v14 + 12) = 2080;
  v16 = [v1 ssid];
  swift_unknownObjectRelease();

  if (v16)
  {
    v17 = sub_2740517D8();
    v19 = v18;

    v20 = sub_2740310C4(v17, v19, &v24);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v26)
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    if (v26)
    {
      v22 = v26;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = sub_2740310C4(v21, v22, &v24);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_273FB9000, v12, v13, "%s: network: %s, subtitle: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v15, -1, -1);
    MEMORY[0x2743E44F0](v14, -1, -1);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_27402C1DC()
{
  v1 = v0;

  v13 = sub_2740333D4(v2);
  sub_2740350C8(&v13, v1, &unk_288307350, sub_274034F34);

  v3 = v13;
  v13 = MEMORY[0x277D84F90];
  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_16;
  }

  for (i = *(v3 + 16); i; i = sub_274051A98())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743E3810](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_14;
      }

LABEL_8:
      WFNetworkListRecord.knownNetworksModel.getter();
      v8 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v8);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_274051878();
      }

      sub_274051898();
      ++v5;
      if (v7 == i)
      {
        v10 = v13;
        goto LABEL_18;
      }
    }

    if (v5 >= *(v3 + 16))
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v10;
  v11 = v1;
  return sub_274050E78();
}

uint64_t sub_27402C3EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
  v6 = sub_274051858();
  v7 = a1;
  a4(v6);
}

uint64_t sub_27402C46C()
{
  v1 = v0;
  v2 = sub_2740516B8();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2740516D8();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v10 = sub_274050E28();
  __swift_project_value_buffer(v10, qword_280937140);
  v11 = sub_274050E08();
  v12 = sub_2740518C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2740310C4(0xD00000000000001FLL, 0x8000000274066650, aBlock);
    _os_log_impl(&dword_273FB9000, v11, v12, "%s: Transit to preferred network list.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2743E44F0](v14, -1, -1);
    MEMORY[0x2743E44F0](v13, -1, -1);
  }

  sub_274031704();
  v15 = sub_2740518F8();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  aBlock[4] = sub_274035198;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_51;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v9, v5, v17);
  _Block_release(v17);

  (*(v21 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v20);
}

uint64_t sub_27402C85C()
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27402C910()
{
  v1 = sub_2740516B8();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2740516D8();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274031704();
  v9 = sub_2740518F8();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_2740351A0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_57;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v8, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

void sub_27402CBF4(uint64_t a1)
{
  v2 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = MEMORY[0x277D84F90];

  v4 = a1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = *(a1 + v2);
    sub_273FBBB0C(v5);

    v5(v8);
    sub_273FBD2BC(v5);
  }

  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v9 = sub_274050E28();
  __swift_project_value_buffer(v9, qword_280937140);
  v10 = sub_274050E08();
  v11 = sub_2740518C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2740310C4(0xD000000000000012, 0x8000000274066950, &v16);
    _os_log_impl(&dword_273FB9000, v10, v11, "%s: Clearing network deletion buffer and transit back to scan list", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743E44F0](v13, -1, -1);
    MEMORY[0x2743E44F0](v12, -1, -1);
  }

  MEMORY[0x28223BE20](v14);
  sub_274051688();
  sub_274050F78();

  v15 = [objc_opt_self() defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  [v15 postNotificationName:qword_280937200 object:0 userInfo:0];
}

uint64_t sub_27402CEA8(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_274050E78();
}

id NetworkListDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkListDataSource.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809354E0, &unk_27405A470);
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v1);
  v57 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935740, &qword_27405A970);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809354F0, &qword_27405A480);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809354F8, &qword_27405A488);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v50 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935500, &qword_27405A490);
  v15 = *(v50 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v50);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935508, &qword_27405A498);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = OBJC_IVAR___WFNetworkListDataSource__currentNetwork;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274050E58();
  (*(v20 + 32))(&v0[v24], v23, v19);
  v25 = OBJC_IVAR___WFNetworkListDataSource__currentNetworkRowConfig;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935528, &qword_27405A4A8);
  sub_274050E58();
  (*(v15 + 32))(&v0[v25], v18, v50);
  v26 = OBJC_IVAR___WFNetworkListDataSource__listMode;
  LOBYTE(v61) = 0;
  v27 = v51;
  sub_274050E58();
  (*(v52 + 32))(&v0[v26], v27, v53);
  v28 = OBJC_IVAR___WFNetworkListDataSource__knownNetworks;
  v29 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_274050E58();
  v30 = *(v8 + 32);
  v30(&v0[v28], v11, v7);
  v31 = OBJC_IVAR___WFNetworkListDataSource__phNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v31], v11, v7);
  v32 = OBJC_IVAR___WFNetworkListDataSource__publicNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v32], v11, v7);
  v33 = OBJC_IVAR___WFNetworkListDataSource__infraNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v33], v11, v7);
  v34 = OBJC_IVAR___WFNetworkListDataSource__adhocNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v34], v11, v7);
  v35 = OBJC_IVAR___WFNetworkListDataSource__unConfiguredNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v35], v11, v7);
  v36 = OBJC_IVAR___WFNetworkListDataSource__managedPreferredNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v36], v11, v7);
  v37 = OBJC_IVAR___WFNetworkListDataSource__editablePreferredNetworks;
  v61 = v29;
  sub_274050E58();
  v30(&v0[v37], v11, v7);
  v38 = OBJC_IVAR___WFNetworkListDataSource__isScanning;
  LOBYTE(v61) = 0;
  v39 = v54;
  sub_274050E58();
  (*(v55 + 32))(&v0[v38], v39, v56);
  v40 = OBJC_IVAR___WFNetworkListDataSource__unconfiguredNetworksSectionTitle;
  v61 = 0;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
  v41 = v57;
  sub_274050E58();
  (*(v58 + 32))(&v0[v40], v41, v59);
  *&v0[OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted] = v29;
  v42 = &v0[OBJC_IVAR___WFNetworkListDataSource_networkTapHandler];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v0[OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v0[OBJC_IVAR___WFNetworkListDataSource_associationHandler];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v0[OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &v0[OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &v0[OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&v0[OBJC_IVAR___WFNetworkListDataSource_scanResults] = v29;
  v48 = type metadata accessor for NetworkListDataSource();
  v60.receiver = v0;
  v60.super_class = v48;
  return objc_msgSendSuper2(&v60, sel_init);
}

uint64_t sub_27402D6C4(void *a1)
{
  v3 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  MEMORY[0x2743E3640](v4);
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_274051878();
  }

  sub_274051898();
  v5 = *(v1 + v3);
  swift_endAccess();
  v6 = v1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    sub_273FBBB0C(v7);

    v7(v9);
    sub_273FBD2BC(v7);
  }

  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v10 = sub_274050E28();
  __swift_project_value_buffer(v10, qword_280937140);
  swift_unknownObjectRetain();
  v11 = sub_274050E08();
  v12 = sub_2740518C8();
  if (!os_log_type_enabled(v11, v12))
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v23[0] = v14;
  *v13 = 136315394;
  *(v13 + 4) = sub_2740310C4(0xD00000000000001DLL, 0x8000000274066670, v23);
  *(v13 + 12) = 2080;
  v15 = [a1 ssid];
  result = swift_unknownObjectRelease();
  if (v15)
  {
    v17 = sub_2740517D8();
    v19 = v18;

    v20 = sub_2740310C4(v17, v19, v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_273FB9000, v11, v12, "%s: Adding pending deleting network: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v14, -1, -1);
    MEMORY[0x2743E44F0](v13, -1, -1);
LABEL_11:

    MEMORY[0x28223BE20](v21);
    sub_274051688();
    sub_274050F78();
  }

  __break(1u);
  return result;
}

uint64_t sub_27402D9E4(id a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v3 = v46;
  v47 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_63;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v38 = a1;
    v6 = 0;
    v40 = v4;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743E3810](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v4 = sub_274051A98();
        goto LABEL_3;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v45 && (v10 = [v45 ssid], swift_unknownObjectRelease(), v10))
      {
        a1 = sub_2740517D8();
        v12 = v11;
      }

      else
      {
        a1 = 0;
        v12 = 0;
      }

      v13 = [a2 ssid];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2740517D8();
        v17 = v16;

        if (v12)
        {
          if (!v17)
          {
            goto LABEL_24;
          }

          if (a1 == v15 && v12 == v17)
          {

            goto LABEL_6;
          }

          v19 = sub_274051B08();

          if ((v19 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v17)
        {
LABEL_24:

LABEL_25:
          sub_274051A38();
          v18 = *(v47 + 16);
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_6;
        }
      }

      else if (v12)
      {
        goto LABEL_24;
      }

LABEL_6:
      ++v6;
      if (v9 == v40)
      {
        v20 = v47;
        a1 = v38;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_31:

  swift_getKeyPath();
  swift_getKeyPath();
  a1 = a1;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v3 = v20;
  v47 = v5;
  if (v20 >> 62)
  {
    v21 = sub_274051A98();
    if (v21)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_33:
      v39 = a1;
      v22 = 0;
      v42 = v20 & 0xFFFFFFFFFFFFFF8;
      v43 = v20 & 0xC000000000000001;
      v41 = v21;
      while (1)
      {
        if (v43)
        {
          v23 = MEMORY[0x2743E3810](v22, v3);
        }

        else
        {
          if (v22 >= *(v42 + 16))
          {
            goto LABEL_62;
          }

          v23 = *(v3 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_61;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        if (v45 && (v26 = [v45 ssid], swift_unknownObjectRelease(), v26))
        {
          a1 = sub_2740517D8();
          v28 = v27;
        }

        else
        {
          a1 = 0;
          v28 = 0;
        }

        v29 = [a2 ssid];
        if (v29)
        {
          v30 = v29;
          v31 = sub_2740517D8();
          v33 = v32;

          if (v28)
          {
            if (!v33)
            {
              goto LABEL_53;
            }

            if (a1 == v31 && v28 == v33)
            {

              goto LABEL_35;
            }

            v35 = sub_274051B08();

            if ((v35 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v33)
          {
LABEL_53:

LABEL_54:
            sub_274051A38();
            v34 = *(v47 + 16);
            sub_274051A58();
            sub_274051A68();
            sub_274051A48();
            goto LABEL_35;
          }
        }

        else if (v28)
        {
          goto LABEL_53;
        }

LABEL_35:
        ++v22;
        if (v25 == v41)
        {
          a1 = v39;
          break;
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = a1;
  return sub_274050E78();
}

uint64_t sub_27402DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_2740330D4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_274031840(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_27403325C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_274032F24(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_27402E0D4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v3 = qword_280937208;
  sub_27402E1CC(a1);
  v4 = sub_274051758();

  [v2 postNotificationName:v3 object:0 userInfo:v4];
}

uint64_t sub_27402E1CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E0, &qword_27405A878);
    v2 = sub_274051AC8();
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_274036710(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_274036710(v34, v35);
    v19 = *(v2 + 40);
    result = sub_274051998();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_274036710(v35, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_27402E498()
{
  v1 = sub_2740516B8();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2740516D8();
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v0;
  sub_274050E68();

  v6 = aBlock[0];
  aBlock[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_23:
    v7 = sub_274051A98();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v41 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2743E3810](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    ++v8;
    if (aBlock[6])
    {
      MEMORY[0x2743E3640]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_274051878();
      }

      sub_274051898();
      v41 = aBlock[0];
      v8 = v11;
    }
  }

  v13 = v40;
  v14 = &v40[OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate];
  swift_beginAccess();
  v15 = *v14;
  if (!*v14)
  {
  }

  v16 = *(v14 + 1);

  v17 = v15(v41);
  v19 = v18;

  sub_273FBD2BC(v15);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v20 = sub_274050E28();
  __swift_project_value_buffer(v20, qword_280937140);

  v21 = sub_274050E08();
  v22 = sub_2740518C8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_2740310C4(0xD000000000000020, 0x8000000274066900, aBlock);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2740310C4(v17, v19, aBlock);
    _os_log_impl(&dword_273FB9000, v21, v22, "%s: UPdating unconfigured network section title to: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v24, -1, -1);
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v25 = sub_2740518F8();
  v26 = swift_allocObject();
  v26[2] = v13;
  v26[3] = v17;
  v26[4] = v19;
  aBlock[4] = sub_2740364F8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_189;
  v27 = _Block_copy(aBlock);
  v28 = v13;

  v29 = v34;
  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  v30 = v36;
  v31 = v39;
  sub_274051978();
  MEMORY[0x2743E3710](0, v29, v30, v27);
  _Block_release(v27);

  (*(v38 + 8))(v30, v31);
  return (*(v35 + 8))(v29, v37);
}

uint64_t sub_27402EADC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  return sub_274050E78();
}

void sub_27402EB64(void *a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WFNetworkRowConfigModel();
    v14 = a1;
    v15 = static WFNetworkRowConfigModel.modelFrom(rowConfig:)(v14);
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v16 = sub_274050E28();
    __swift_project_value_buffer(v16, qword_280937140);
    v17 = v15;
    v18 = v2;
    v19 = sub_274050E08();
    v20 = sub_2740518C8();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_29;
    }

    v21 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56[0] = v55;
    *v21 = 136316162;
    *(v21 + 4) = sub_2740310C4(0xD000000000000021, 0x8000000274066970, v56);
    *(v21 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v22 = aBlock;
    if (!aBlock)
    {
      goto LABEL_14;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (!aBlock)
    {
      goto LABEL_14;
    }

    v23 = [aBlock ssid];
    swift_unknownObjectRelease();
    if (v23)
    {
      v24 = sub_2740517D8();
      v26 = v25;

      v27 = v24;
    }

    else
    {
LABEL_14:
      v27 = 0;
      v26 = 0xE000000000000000;
    }

    v37 = sub_2740310C4(v27, v26, v56);

    *(v21 + 14) = v37;
    *(v21 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v38 = aBlock;
    if (aBlock && (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , , v38, (v39 = v58) != 0))
    {
      v40 = aBlock;
    }

    else
    {

      v40 = 0;
      v39 = 0xE000000000000000;
    }

    v41 = sub_2740310C4(v40, v39, v56);

    *(v21 + 24) = v41;
    *(v21 + 32) = 2080;
    if (v15)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (aBlock && (v42 = [aBlock ssid], swift_unknownObjectRelease(), v42))
      {
        v43 = sub_2740517D8();
        v45 = v44;

        v46 = v43;
      }

      else
      {
        v46 = 0;
        v45 = 0xE000000000000000;
      }

      v47 = sub_2740310C4(v46, v45, v56);

      *(v21 + 34) = v47;
      *(v21 + 42) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v48 = v58;
      if (v58)
      {
        v49 = aBlock;
LABEL_28:
        v51 = sub_2740310C4(v49, v48, v56);

        *(v21 + 44) = v51;
        _os_log_impl(&dword_273FB9000, v19, v20, "%s: Updating current network row config: old ssid=' %s', subtitle='%s' -> new ssid='%s', subtitle='%s'", v21, 0x34u);
        v52 = v55;
        swift_arrayDestroy();
        MEMORY[0x2743E44F0](v52, -1, -1);
        MEMORY[0x2743E44F0](v21, -1, -1);
LABEL_29:

        MEMORY[0x28223BE20](v53);
        *(&v54 - 2) = v18;
        *(&v54 - 1) = v15;
        sub_274051688();
        sub_274050F78();

        return;
      }
    }

    else
    {
      v50 = sub_2740310C4(0, 0xE000000000000000, v56);

      *(v21 + 34) = v50;
      *(v21 + 42) = 2080;
    }

    v49 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_28;
  }

  v54 = v11;
  v55 = v5;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v28 = sub_274050E28();
  __swift_project_value_buffer(v28, qword_280937140);
  v29 = sub_274050E08();
  v30 = sub_2740518C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_2740310C4(0xD000000000000021, 0x8000000274066970, &aBlock);
    _os_log_impl(&dword_273FB9000, v29, v30, "%s: Clearing current network row config", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x2743E44F0](v32, -1, -1);
    MEMORY[0x2743E44F0](v31, -1, -1);
  }

  sub_274031704();
  v33 = sub_2740518F8();
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  v61 = sub_274036894;
  v62 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_274029168;
  v60 = &block_descriptor_445;
  v35 = _Block_copy(&aBlock);
  v36 = v2;

  sub_2740516C8();
  aBlock = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v35);
  _Block_release(v35);

  (*(v55 + 8))(v8, v4);
  (*(v54 + 8))(v13, v9);
}

uint64_t sub_27402F47C(void *a1)
{
  type metadata accessor for NetworkListDataSource();
  sub_2740366C0(&unk_2809357B0, type metadata accessor for NetworkListDataSource);
  sub_274050E38();
  sub_274050E48();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_274050E78();
}

uint64_t sub_27402F548(void *a1, void *a2)
{
  v4 = sub_2740516B8();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2740516D8();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274031704();
  v19 = sub_2740518F8();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_2740368B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_451;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  v16 = v19;
  MEMORY[0x2743E3710](0, v11, v7, v13);
  _Block_release(v13);

  (*(v21 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v20);
}

uint64_t sub_27402F83C(void *a1, void *a2)
{
  type metadata accessor for NetworkListDataSource();
  sub_2740366C0(&unk_2809357B0, type metadata accessor for NetworkListDataSource);
  sub_274050E38();
  sub_274050E48();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a2;
  v5 = a1;
  return sub_274050E78();
}

void sub_27402F910()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v0 = v37;
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v1 = v37;
    v2 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v37 >> 62)
    {
LABEL_103:
      v3 = sub_274051A98();
    }

    else
    {
      v3 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v5 = -v3;
    v6 = 4;
    while (1)
    {
      if (v5 + v6 == 4)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v1 = v37;
        v2 = v37 & 0xFFFFFFFFFFFFFF8;
        if (v37 >> 62)
        {
LABEL_106:
          v11 = sub_274051A98();
        }

        else
        {
          v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = -v11;
        v6 = 4;
        while (v12 + v6 != 4)
        {
          v7 = v6 - 4;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x2743E3810](v6 - 4, v1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_97;
            }

            v13 = *(v1 + 8 * v6);
          }

          v14 = v13;
          v37 = v13;
          v15 = sub_274030224(&v37);

          if (v15)
          {

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v4 = v37;
            if ((v37 & 0xC000000000000001) != 0)
            {
              goto LABEL_105;
            }

            if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_44;
            }

            goto LABEL_92;
          }

          ++v6;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_98;
          }
        }

        goto LABEL_29;
      }

      v7 = v6 - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2743E3810](v6 - 4, v1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
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
          goto LABEL_103;
        }

        v8 = *(v1 + 8 * v6);
      }

      v9 = v8;
      v37 = v8;
      v10 = sub_274030224(&v37);

      if (v10)
      {
        break;
      }

      ++v6;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_96;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v4 = v37;
    if ((v37 & 0xC000000000000001) == 0)
    {
      if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v1 = v37;
        v2 = v37 & 0xFFFFFFFFFFFFFF8;
        if (v37 >> 62)
        {
LABEL_109:
          v16 = sub_274051A98();
        }

        else
        {
          v16 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = -v16;
        v6 = 4;
        while (1)
        {
          if (v17 + v6 == 4)
          {
LABEL_44:

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v1 = v37;
            v2 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v37 >> 62)
            {
              v21 = sub_274051A98();
            }

            else
            {
              v21 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v22 = -v21;
            v6 = 4;
            while (v22 + v6 != 4)
            {
              v7 = v6 - 4;
              if ((v1 & 0xC000000000000001) != 0)
              {
                v23 = MEMORY[0x2743E3810](v6 - 4, v1);
              }

              else
              {
                if (v7 >= *(v2 + 16))
                {
                  goto LABEL_101;
                }

                v23 = *(v1 + 8 * v6);
              }

              v24 = v23;
              v37 = v23;
              v25 = sub_274030224(&v37);

              if (v25)
              {

                swift_getKeyPath();
                swift_getKeyPath();
                sub_274050E68();

                v4 = v37;
                if ((v37 & 0xC000000000000001) != 0)
                {
                  goto LABEL_105;
                }

                if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_74;
                }

                goto LABEL_92;
              }

              ++v6;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_102;
              }
            }

LABEL_59:

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v1 = v37;
            v2 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v37 >> 62)
            {
              v26 = sub_274051A98();
            }

            else
            {
              v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v27 = -v26;
            v6 = 4;
            while (1)
            {
              if (v27 + v6 == 4)
              {
LABEL_74:

                swift_getKeyPath();
                swift_getKeyPath();
                sub_274050E68();

                v1 = v37;
                v2 = v37 & 0xFFFFFFFFFFFFFF8;
                if (v37 >> 62)
                {
                  v31 = sub_274051A98();
                }

                else
                {
                  v31 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v32 = -v31;
                v6 = 4;
                while (v32 + v6 != 4)
                {
                  v7 = v6 - 4;
                  if ((v1 & 0xC000000000000001) != 0)
                  {
                    v33 = MEMORY[0x2743E3810](v6 - 4, v1);
                  }

                  else
                  {
                    if (v7 >= *(v2 + 16))
                    {
                      __break(1u);
LABEL_108:
                      __break(1u);
                      goto LABEL_109;
                    }

                    v33 = *(v1 + 8 * v6);
                  }

                  v34 = v33;
                  v37 = v33;
                  v35 = sub_274030224(&v37);

                  if (v35)
                  {

                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_274050E68();

                    v4 = v37;
                    if ((v37 & 0xC000000000000001) != 0)
                    {
                      goto LABEL_105;
                    }

                    if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      return;
                    }

                    goto LABEL_92;
                  }

                  ++v6;
                  if (__OFADD__(v7, 1))
                  {
                    goto LABEL_108;
                  }
                }

                goto LABEL_89;
              }

              v7 = v6 - 4;
              if ((v1 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x2743E3810](v6 - 4, v1);
              }

              else
              {
                if (v7 >= *(v2 + 16))
                {
                  __break(1u);
                  goto LABEL_105;
                }

                v28 = *(v1 + 8 * v6);
              }

              v29 = v28;
              v37 = v28;
              v30 = sub_274030224(&v37);

              if (v30)
              {
                break;
              }

              ++v6;
              if (__OFADD__(v7, 1))
              {
                __break(1u);
                goto LABEL_106;
              }
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v4 = v37;
            if ((v37 & 0xC000000000000001) != 0)
            {
              goto LABEL_105;
            }

            if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_89:

              return;
            }

            goto LABEL_92;
          }

          v7 = v6 - 4;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2743E3810](v6 - 4, v1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_99;
            }

            v18 = *(v1 + 8 * v6);
          }

          v19 = v18;
          v37 = v18;
          v20 = sub_274030224(&v37);

          if (v20)
          {
            break;
          }

          ++v6;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_100;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v4 = v37;
        if ((v37 & 0xC000000000000001) != 0)
        {
          goto LABEL_105;
        }

        if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

LABEL_92:
      v36 = *(v4 + 8 * v6);
      goto LABEL_93;
    }

LABEL_105:
    MEMORY[0x2743E3810](v7, v4);
LABEL_93:

    sub_27403EB84(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = 0;
    sub_274050E78();
  }
}

uint64_t sub_274030224(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v2 = v12;
  if (v12)
  {
    v3 = [v12 ssid];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = sub_2740517D8();
      v2 = v5;
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v6 = v12;
  if (v12)
  {
    v7 = [v12 ssid];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_2740517D8();
      v6 = v9;

      if (!v2)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (v6)
      {
        if (v4 == v8 && v2 == v6)
        {

          v10 = 1;
        }

        else
        {
          v10 = sub_274051B08();
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v6 = 0;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    if (v2)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  if (!v6)
  {
    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
LABEL_20:

  return v10 & 1;
}

id NetworkListDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkListDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2740307B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworkListDataSource();
  result = sub_274050E38();
  *a1 = result;
  return result;
}

uint64_t sub_2740307F4()
{
  v0 = sub_274050E28();
  __swift_allocate_value_buffer(v0, qword_280937140);
  __swift_project_value_buffer(v0, qword_280937140);
  return sub_274050E18();
}

uint64_t sub_274030888(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v4 = v3;
  return sub_274050E78();
}

uint64_t sub_274030900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_2740309A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_274030A24(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NetworkListDataSource();
  sub_2740366C0(&unk_2809357B0, type metadata accessor for NetworkListDataSource);
  sub_274050E38();
  sub_274050E48();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_274050E78();
}

uint64_t sub_274030C10(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_274050E78();
}

uint64_t sub_274030C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_274030D18(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_274050E78();
}

double sub_274030D84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_274030E04(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_274050E78();
}

char *sub_274030E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355F0, &qword_27405A888);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_274030F88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935608, &qword_27405A898);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

_BYTE **sub_274031010(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_274031020(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_274031068(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2740310C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2740310C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_274031190(v11, 0, 0, 1, a1, a2);
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
    sub_2740209D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_274031190(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_27403129C(a5, a6);
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
    result = sub_274051A28();
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

uint64_t sub_27403129C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2740312E8(a1, a2);
  sub_274031418(&unk_288306680);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2740312E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_274031504(v5, 0);
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

  result = sub_274051A28();
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
        v10 = sub_274051818();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_274031504(v10, 0);
        result = sub_2740519E8();
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

uint64_t sub_274031418(uint64_t result)
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

  result = sub_274031578(result, v12, 1, v3);
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

void *sub_274031504(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935628, &unk_27405A8B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_274031578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935628, &unk_27405A8B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_27403166C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_27403169C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B0, qword_2740599F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274031704()
{
  result = qword_280935780;
  if (!qword_280935780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280935780);
  }

  return result;
}

uint64_t sub_274031750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2740294A0();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2740317CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2740317FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_274051998();

  return sub_2740318B8(a1, v5);
}

unint64_t sub_274031840(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_274051B38();
  sub_2740517F8();
  v6 = sub_274051B68();

  return sub_274031980(a1, a2, v6);
}

unint64_t sub_2740318B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_274036720(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743E37B0](v9, a1);
      sub_274020984(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_274031980(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_274051B08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_274031A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  *(swift_allocObject() + 16) = a5;
  v49 = a2;
  if (a3 == a2)
  {
    v10 = a5;

    goto LABEL_33;
  }

  v11 = *a4;
  v48 = a5;
  v53 = v11;
  v12 = v11 + 8 * a3 - 8;
  v13 = a1 - a3;
  while (2)
  {
    v52 = a3;
    v14 = *(v53 + 8 * a3);
    v15 = v12;
    v50 = v13;
    v51 = v12;
    while (1)
    {
      v16 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = [v14 title];
      if (!v17)
      {
        __break(1u);
LABEL_35:

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = sub_2740517D8();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        v23 = [v16 title];
        if (!v23)
        {
          goto LABEL_40;
        }

        v24 = v23;
        v25 = sub_2740517D8();
        v27 = v26;

        v28 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v28 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (!v28)
        {
          goto LABEL_28;
        }
      }

      v29 = [v14 title];
      if (!v29)
      {
        goto LABEL_36;
      }

      v30 = v29;
      v31 = sub_2740517D8();
      v33 = v32;

      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (!v34)
      {
LABEL_28:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v53)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      v35 = [v16 title];
      if (!v35)
      {
        goto LABEL_37;
      }

      v36 = v35;
      v37 = sub_2740517D8();
      v39 = v38;

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (!v40)
      {
        break;
      }

      v41 = [v14 title];
      if (!v41)
      {
        goto LABEL_38;
      }

      v42 = v41;
      sub_2740517D8();

      v43 = [v16 title];
      if (!v43)
      {
        goto LABEL_39;
      }

      v44 = v43;
      sub_2740517D8();

      sub_274020248();
      v45 = sub_274051958();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v45 != -1)
      {
        goto LABEL_5;
      }

      if (!v53)
      {
        goto LABEL_35;
      }

LABEL_29:
      v46 = *v15;
      v14 = *(v15 + 8);
      *v15 = v14;
      *(v15 + 8) = v46;
      v15 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_5:
    a3 = v52 + 1;
    v12 = v51 + 8;
    v13 = v50 - 1;
    if (v52 + 1 != v49)
    {
      continue;
    }

    break;
  }

LABEL_33:
}

uint64_t sub_274031D88(void **a1, void **a2, char *a3, void **a4, void *a5)
{
  *(swift_allocObject() + 16) = a5;
  v9 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v9 = a2 - a1;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v10 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      memmove(a4, a2, 8 * v12);
    }

    v21 = a5;
    v14 = &a4[v12];
    if (a3 - a2 < 8)
    {
      v22 = a2;
    }

    else
    {
      v22 = a2;
      if (a2 > a1)
      {
        v34 = a4;
LABEL_25:
        v32 = v22;
        v23 = v22 - 1;
        a3 -= 8;
        v24 = v14;
        do
        {
          v25 = (a3 + 8);
          v26 = *--v24;
          v27 = v23;
          v28 = *v23;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v29 = sub_274034AC4(v26, v28);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v29)
          {
            v30 = v27;
            if (v25 != v32)
            {
              *a3 = *v27;
            }

            a4 = v34;
            if (v14 <= v34 || (v22 = v30, v30 <= a1))
            {
              v22 = v30;
              goto LABEL_38;
            }

            goto LABEL_25;
          }

          if (v25 != v14)
          {
            *a3 = *v24;
          }

          a3 -= 8;
          v14 = v24;
          v23 = v27;
        }

        while (v24 > v34);
        v14 = v24;
        v22 = v32;
        a4 = v34;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v10] <= a4)
    {
      memmove(a4, a1, 8 * v10);
    }

    v13 = a5;
    v14 = &a4[v10];
    if (a2 - a1 >= 8)
    {
      v15 = a2;
      while (1)
      {
        if (v15 >= a3)
        {
          goto LABEL_35;
        }

        v18 = *v15;
        v19 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v20 = sub_274034AC4(v18, v19);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v20)
        {
          break;
        }

        v16 = a4;
        v17 = a1 == a4++;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        ++a1;
        if (a4 >= v14)
        {
          goto LABEL_35;
        }
      }

      v16 = v15;
      v17 = a1 == v15++;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *v16;
      goto LABEL_13;
    }

LABEL_35:
    v22 = a1;
  }

LABEL_38:
  if (v22 != a4 || v22 >= (a4 + ((v14 - a4 + (v14 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, a4, 8 * (v14 - a4));
  }

  return 1;
}

uint64_t sub_274032064(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2740320F0(v3);
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

void *sub_274032104(void *a1, int64_t a2, char a3)
{
  result = sub_274032124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_274032124(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935620, &qword_27405A8A8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_274032258(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_274051B38();
  sub_274051B58();
  if (a3)
  {
    sub_2740517F8();
  }

  v9 = sub_274051B68();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2740326FC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_274051B08() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_2740323E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_274051A98();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_274051A18();
  *v1 = result;
  return result;
}

uint64_t sub_274032480(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935618, &qword_27405A8A0);
  result = sub_2740519D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_274051B38();
      sub_274051B58();
      if (v20)
      {
        sub_2740517F8();
      }

      result = sub_274051B68();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2740326FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_274032480(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2740328B8();
      goto LABEL_22;
    }

    sub_274032A10(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_274051B38();
  sub_274051B58();
  if (a2)
  {
    sub_2740517F8();
  }

  result = sub_274051B68();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_274051B08(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
            result = sub_274051B18();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_2740328B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935618, &qword_27405A8A0);
  v2 = *v0;
  v3 = sub_2740519C8();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_274032A10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935618, &qword_27405A8A0);
  result = sub_2740519D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_274051B38();
      sub_274051B58();
      if (v19)
      {

        sub_2740517F8();
      }

      result = sub_274051B68();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_274032C64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E8, &qword_27405A880);
  v40 = a2;
  result = sub_274051AB8();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_274051B38();
      sub_2740517F8();
      result = sub_274051B68();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
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

uint64_t sub_274032F24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_274051988() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_274051B38();

      sub_2740517F8();
      v13 = sub_274051B68();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2740330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_274031840(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_274032C64(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_274031840(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_274051B28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_27403325C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_27403325C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E8, &qword_27405A880);
  v2 = *v0;
  v3 = sub_274051AA8();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_2740333D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_274051A98();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_274030F88(v3, 0);
  sub_274033468((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_274033468(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_274051A98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_274051A98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_27402179C(&qword_280935600, &qword_2809355F8, &qword_27405A890);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355F8, &qword_27405A890);
            v9 = sub_274033618(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_274033618(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2743E3810](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_274033698;
  }

  __break(1u);
  return result;
}

uint64_t sub_2740336B4(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

void sub_274033848(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  *(swift_allocObject() + 16) = a5;
  v172 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v150 = a5;
    v10 = MEMORY[0x277D84F90];
LABEL_139:
    v170 = *a1;
    if (!*a1)
    {
      goto LABEL_190;
    }

    *(swift_allocObject() + 16) = a5;
    v171 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_141;
    }

    goto LABEL_172;
  }

  v160 = a4;
  v167 = a5;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = &selRef_setTableViewStyle_;
  while (1)
  {
    v12 = v9 + 1;
    v165 = v10;
    if (v9 + 1 >= v8)
    {
      goto LABEL_39;
    }

    v13 = *v172;
    v14 = (v9 + 1);
    v15 = *(*v172 + 8 * v12);
    v163 = v9;
    v16 = *(*v172 + 8 * v9);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    LODWORD(v171) = sub_274034AC4(v15, v16);
    swift_unknownObjectRelease();
    v9 = v163;
    swift_unknownObjectRelease();
    v17 = v163 + 2;
    if (v163 + 2 >= v8)
    {
      v51 = v14;
      v19 = v163 + 2;
      goto LABEL_35;
    }

    v18 = (v13 + 8 * v163 + 16);
    v168 = v8;
    do
    {
      v19 = v17;
      v20 = *(v18 - 1);
      v21 = *v18;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v22 = [v21 title];
      if (!v22)
      {
        goto LABEL_181;
      }

      v23 = v22;
      v24 = sub_2740517D8();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {
        v28 = [v20 title];
        if (!v28)
        {
          goto LABEL_186;
        }

        v29 = v28;
        v30 = sub_2740517D8();
        v32 = v31;

        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v34 = [v21 title];
      if (!v34)
      {
        goto LABEL_182;
      }

      v35 = v34;
      v36 = sub_2740517D8();
      v38 = v37;

      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v170 = v19;
        v40 = [v20 title];
        if (!v40)
        {
          goto LABEL_183;
        }

        v41 = v40;
        v42 = sub_2740517D8();
        v44 = v43;

        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (v45)
        {
          v46 = [v21 title];
          if (!v46)
          {
            goto LABEL_188;
          }

          v47 = v46;
          sub_2740517D8();

          v48 = [v20 title];
          if (!v48)
          {
            goto LABEL_187;
          }

          v49 = v48;
          sub_2740517D8();

          sub_274020248();
          v50 = sub_274051958();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v10 = v165;
          v8 = v168;
          if ((v171 & 1) == (v50 != -1))
          {
            v51 = v19 - 1;
            goto LABEL_34;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v171)
          {
            v51 = v19 - 1;
            v11 = &selRef_setTableViewStyle_;
            v9 = v163;
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_7:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v171 & 1) == 0)
        {
          v12 = v19;
          v11 = &selRef_setTableViewStyle_;
          v9 = v163;
          goto LABEL_39;
        }
      }

      v17 = v19 + 1;
      ++v18;
    }

    while (v8 != v19 + 1);
    v51 = v19;
    v19 = v8;
LABEL_34:
    v11 = &selRef_setTableViewStyle_;
    v9 = v163;
LABEL_35:
    v12 = v19;
    if (v171)
    {
LABEL_36:
      if (v19 < v9)
      {
        goto LABEL_171;
      }

      if (v9 <= v51)
      {
        v144 = 8 * v19 - 8;
        v145 = 8 * v9;
        v146 = v19;
        v147 = v9;
        do
        {
          if (v147 != --v146)
          {
            v148 = *v172;
            if (!*v172)
            {
              goto LABEL_184;
            }

            v149 = *(v148 + v145);
            *(v148 + v145) = *(v148 + v144);
            *(v148 + v144) = v149;
          }

          ++v147;
          v144 -= 8;
          v145 += 8;
        }

        while (v147 < v146);
      }

      v12 = v19;
    }

LABEL_39:
    v52 = v172[1];
    if (v12 >= v52)
    {
      goto LABEL_49;
    }

    v53 = v12;
    v71 = __OFSUB__(v12, v9);
    v54 = v12 - v9;
    if (v71)
    {
      goto LABEL_168;
    }

    if (v54 >= v160)
    {
LABEL_48:
      v12 = v53;
LABEL_49:
      if (v12 < v9)
      {
        goto LABEL_167;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v9, v160))
    {
      goto LABEL_169;
    }

    if (v9 + v160 >= v52)
    {
      v55 = v172[1];
    }

    else
    {
      v55 = (v9 + v160);
    }

    if (v55 < v9)
    {
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      v10 = sub_2740320F0(v10);
LABEL_141:
      v151 = *(v10 + 16);
      if (v151 < 2)
      {
LABEL_149:

        return;
      }

      while (1)
      {
        v152 = *v172;
        if (!*v172)
        {
          goto LABEL_185;
        }

        v153 = v10;
        v10 = *(v10 + 16 * v151);
        v154 = *&v153[16 * v151 + 24];
        v155 = (v152 + 8 * v10);
        v156 = (v152 + 8 * *&v153[16 * v151 + 16]);
        v157 = (v152 + 8 * v154);
        v158 = v171;
        sub_274031D88(v155, v156, v157, v170, v158);
        if (v173)
        {

          goto LABEL_137;
        }

        if (v154 < v10)
        {
          goto LABEL_165;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_2740320F0(v153);
        }

        if (v151 - 2 >= *(v153 + 2))
        {
          goto LABEL_166;
        }

        v159 = &v153[16 * v151];
        *v159 = v10;
        v159[1] = v154;
        sub_274032064(v151 - 1);
        v10 = v153;
        v151 = *(v153 + 2);
        if (v151 <= 1)
        {
          goto LABEL_149;
        }
      }
    }

    if (v53 == v55)
    {
      goto LABEL_48;
    }

    v108 = *v172;
    v109 = *v172 + 8 * v53 - 8;
    v164 = v9;
    v110 = v9 - v53;
    v166 = v55;
    while (2)
    {
      v171 = v53;
      v111 = *(v108 + 8 * v53);
      v169 = v110;
      v170 = v109;
      while (1)
      {
        v112 = *v109;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v113 = [v111 v11[112]];
        if (!v113)
        {
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
LABEL_183:
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
LABEL_189:

          __break(1u);
LABEL_190:

          __break(1u);
          return;
        }

        v114 = v113;
        v115 = sub_2740517D8();
        v117 = v116;

        v118 = HIBYTE(v117) & 0xF;
        if ((v117 & 0x2000000000000000) == 0)
        {
          v118 = v115 & 0xFFFFFFFFFFFFLL;
        }

        if (!v118)
        {
          v119 = [v112 v11[112]];
          if (!v119)
          {
            goto LABEL_179;
          }

          v120 = v119;
          v121 = sub_2740517D8();
          v123 = v122;

          v124 = HIBYTE(v123) & 0xF;
          if ((v123 & 0x2000000000000000) == 0)
          {
            v124 = v121 & 0xFFFFFFFFFFFFLL;
          }

          if (!v124)
          {
            goto LABEL_124;
          }
        }

        v125 = [v111 v11[112]];
        if (!v125)
        {
          goto LABEL_175;
        }

        v126 = v125;
        v127 = sub_2740517D8();
        v129 = v128;

        v130 = HIBYTE(v129) & 0xF;
        if ((v129 & 0x2000000000000000) == 0)
        {
          v130 = v127 & 0xFFFFFFFFFFFFLL;
        }

        if (!v130)
        {
LABEL_124:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (!v108)
          {
            goto LABEL_174;
          }

          goto LABEL_125;
        }

        v131 = [v112 v11[112]];
        if (!v131)
        {
          goto LABEL_176;
        }

        v132 = v131;
        v133 = sub_2740517D8();
        v135 = v134;

        v136 = HIBYTE(v135) & 0xF;
        if ((v135 & 0x2000000000000000) == 0)
        {
          v136 = v133 & 0xFFFFFFFFFFFFLL;
        }

        if (!v136)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_101;
        }

        v137 = [v111 v11[112]];
        if (!v137)
        {
          goto LABEL_178;
        }

        v138 = v137;
        sub_2740517D8();

        v139 = [v112 v11[112]];
        if (!v139)
        {
          goto LABEL_177;
        }

        v140 = v139;
        sub_2740517D8();

        sub_274020248();
        v141 = sub_274051958();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v141 != -1)
        {
          break;
        }

        if (!v108)
        {
          goto LABEL_174;
        }

LABEL_125:
        v142 = *v109;
        v111 = *(v109 + 8);
        *v109 = v111;
        *(v109 + 8) = v142;
        v109 -= 8;
        v143 = __CFADD__(v110++, 1);
        v11 = &selRef_setTableViewStyle_;
        if (v143)
        {
          goto LABEL_101;
        }
      }

      v11 = &selRef_setTableViewStyle_;
LABEL_101:
      v53 = v171 + 1;
      v109 = (v170 + 1);
      v110 = v169 - 1;
      if (v171 + 1 != v166)
      {
        continue;
      }

      break;
    }

    v12 = v166;
    v9 = v164;
    v10 = v165;
    if (v166 < v164)
    {
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

LABEL_50:
    v171 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_274030E84(0, *(v10 + 16) + 1, 1, v10);
    }

    v57 = *(v10 + 16);
    v56 = *(v10 + 24);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v10 = sub_274030E84((v56 > 1), v57 + 1, 1, v10);
    }

    *(v10 + 16) = v58;
    v59 = v10 + 16 * v57;
    *(v59 + 32) = v9;
    *(v59 + 40) = v171;
    v170 = *a1;
    if (!*a1)
    {
      goto LABEL_189;
    }

    if (v57)
    {
      break;
    }

LABEL_3:
    v9 = v171;
    v8 = v172[1];
    v11 = &selRef_setTableViewStyle_;
    if (v171 >= v8)
    {
      goto LABEL_139;
    }
  }

  while (1)
  {
    v60 = v58 - 1;
    if (v58 >= 4)
    {
      v65 = v10 + 32 + 16 * v58;
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_154;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_155;
      }

      v72 = (v10 + 16 * v58);
      v74 = *v72;
      v73 = v72[1];
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_157;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_160;
      }

      if (v76 >= v68)
      {
        v94 = (v10 + 32 + 16 * v60);
        v96 = *v94;
        v95 = v94[1];
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_164;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

    if (v58 == 3)
    {
      v61 = *(v10 + 32);
      v62 = *(v10 + 40);
      v71 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      v64 = v71;
LABEL_69:
      if (v64)
      {
        goto LABEL_156;
      }

      v77 = (v10 + 16 * v58);
      v79 = *v77;
      v78 = v77[1];
      v80 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      v82 = v80;
      if (v80)
      {
        goto LABEL_159;
      }

      v83 = (v10 + 32 + 16 * v60);
      v85 = *v83;
      v84 = v83[1];
      v71 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v71)
      {
        goto LABEL_162;
      }

      if (__OFADD__(v81, v86))
      {
        goto LABEL_163;
      }

      if (v81 + v86 >= v63)
      {
        if (v63 < v86)
        {
          v60 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_83;
    }

    v87 = (v10 + 16 * v58);
    v89 = *v87;
    v88 = v87[1];
    v71 = __OFSUB__(v88, v89);
    v81 = v88 - v89;
    v82 = v71;
LABEL_83:
    if (v82)
    {
      goto LABEL_158;
    }

    v90 = v10 + 16 * v60;
    v92 = *(v90 + 32);
    v91 = *(v90 + 40);
    v71 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if (v71)
    {
      goto LABEL_161;
    }

    if (v93 < v81)
    {
      goto LABEL_3;
    }

LABEL_90:
    v98 = v60 - 1;
    if (v60 - 1 >= v58)
    {
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
      goto LABEL_167;
    }

    v99 = *v172;
    if (!*v172)
    {
      goto LABEL_180;
    }

    v100 = v10;
    v101 = *(v10 + 32 + 16 * v98);
    v102 = *(v10 + 32 + 16 * v60);
    v10 = *(v10 + 32 + 16 * v60 + 8);
    v103 = (v99 + 8 * v101);
    v104 = (v99 + 8 * v102);
    v105 = (v99 + 8 * v10);
    v106 = v167;
    sub_274031D88(v103, v104, v105, v170, v106);
    if (v173)
    {
      break;
    }

    if (v10 < v101)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_2740320F0(v100);
    }

    if (v98 >= *(v100 + 2))
    {
      goto LABEL_153;
    }

    v107 = &v100[16 * v98];
    *(v107 + 4) = v101;
    *(v107 + 5) = v10;
    sub_274032064(v60);
    v10 = v100;
    v58 = *(v100 + 2);
    if (v58 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_137:
}

uint64_t sub_274034474(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

uint64_t sub_274034608(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

uint64_t sub_27403479C(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

uint64_t sub_274034930(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

uint64_t sub_274034AC4(void *a1, void *a2)
{
  result = [a1 title];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  v6 = sub_2740517D8();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    result = [a2 title];
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = result;
    v11 = sub_2740517D8();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      return 1;
    }
  }

  result = [a1 title];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = result;
  v16 = sub_2740517D8();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return 1;
  }

  result = [a2 title];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = result;
  v21 = sub_2740517D8();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    result = [a1 title];
    if (result)
    {
      v25 = result;
      sub_2740517D8();

      result = [a2 title];
      if (result)
      {
        v26 = result;
        sub_2740517D8();

        sub_274020248();
        v27 = sub_274051958();

        return v27 == -1;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_274034CE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
  v4 = sub_2740367FC();
  result = MEMORY[0x2743E36B0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_274032258(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_274034DA0(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

uint64_t sub_274034F34(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
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
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5);
  }
}

uint64_t sub_2740350C8(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void *, id))
{
  *(swift_allocObject() + 16) = a2;
  v7 = *a1;
  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2740336A0(v7);
    *a1 = v7;
  }

  v10 = *(v7 + 16);
  v13[0] = v7 + 32;
  v13[1] = v10;
  v11 = v8;
  a4(v13, v11);

  sub_274051A48();
}

uint64_t type metadata accessor for NetworkListDataSource()
{
  result = qword_280935588;
  if (!qword_280935588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274035210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E8, &qword_27405A880);
    v3 = sub_274051AC8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_274031840(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_274035324(void *a1)
{
  v2 = sub_2740516B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2740516D8();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v39 = sub_274035210(MEMORY[0x277D84F90]);
  if (a1)
  {
    v12 = [a1 ssid];
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      v15 = sub_2740517D8();
      v17 = v16;

      v18 = v17;
      v12 = v15;
      v11 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = 0;
LABEL_6:
  sub_27402DFCC(v12, v18, 0x4E6B726F7774656ELL, 0xEB00000000656D61);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v19 = sub_274050E28();
  __swift_project_value_buffer(v19, qword_280937140);
  swift_unknownObjectRetain();
  v20 = sub_274050E08();
  v21 = sub_2740518C8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v35 = v3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_2740310C4(0xD000000000000018, 0x8000000274066930, aBlock);
    *(v22 + 12) = 2080;
    if (a1 && (v24 = [a1 ssid]) != 0)
    {
      v25 = v24;
      v26 = sub_2740517D8();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = sub_2740310C4(v26, v28, aBlock);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_273FB9000, v20, v21, "%s: posting tap PH notification for : %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v23, -1, -1);
    MEMORY[0x2743E44F0](v22, -1, -1);

    v3 = v35;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_274031704();
  v30 = sub_2740518F8();
  v31 = v39;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  aBlock[4] = sub_274036708;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_272;
  v33 = _Block_copy(aBlock);

  sub_2740516C8();
  aBlock[0] = v11;
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  sub_274051978();
  MEMORY[0x2743E3710](0, v10, v6, v33);
  _Block_release(v33);

  (*(v3 + 8))(v6, v2);
  return (*(v36 + 8))(v10, v37);
}

void sub_27403583C()
{
  sub_2740364A4(319, &qword_280935598, &unk_280934FC0, &qword_27405A4A0);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_2740364A4(319, &qword_2809355A0, &qword_280935528, &qword_27405A4A8);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_274036458(319, &qword_2809355A8);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_2740364A4(319, &unk_2809355B0, &qword_280935540, &qword_27405A4B0);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_274036458(319, &qword_280935770);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_2740364A4(319, &unk_2809355C0, &unk_280935578, &qword_27405A4B8);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_274036458(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_274050E88();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2740364A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_274050E88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2740364F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_27402EADC(*(v0 + 16));
}

uint64_t sub_274036540(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_274036580@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_2740365C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2740365FC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_274036628(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_274036654(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_274036690(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_2740366C0(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_274036710(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2740367C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_274028314();
}

unint64_t sub_2740367FC()
{
  result = qword_280935610;
  if (!qword_280935610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935578, &qword_27405A4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935610);
  }

  return result;
}

uint64_t sub_27403691C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v5 != v5)
  {
    v2 = v0 + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler;
    result = swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);

      v3(v5);
      return sub_273FBD2BC(v3);
    }
  }

  return result;
}

uint64_t sub_274036A40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v3 == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , result = , !v3))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v0;
    sub_274050E78();
    return sub_27403691C();
  }

  return result;
}

uint64_t sub_274036C14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_274036C80()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_274036CC4(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274036D74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C138;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274036E14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740368C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274036F7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C10C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_27403701C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740368C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274037184@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C0E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274037224(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_27403C0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_27403738C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740365BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_27403742C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274037594()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740375D8(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274037688()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740376CC(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403777C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C07C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_27403781C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274037904(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_27403798C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_274037A50()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_274037A94(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274037B44(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v14 = sub_274050E28();
  __swift_project_value_buffer(v14, qword_280937140);
  v15 = sub_274050E08();
  v16 = sub_2740518C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2740310C4(0xD000000000000025, 0x80000002740669C0, aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v15, v16, "%s: set networkModificationRestriction: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v9 = v20;
    v2 = v29;
    MEMORY[0x2743E44F0](v22, -1, -1);
    v23 = v18;
    v5 = v30;
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v24 = sub_2740518F8();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1 & 1;
  aBlock[4] = sub_27403B0E0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v26);
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_274037F5C(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v14 = sub_274050E28();
  __swift_project_value_buffer(v14, qword_280937140);
  v15 = sub_274050E08();
  v16 = sub_2740518C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2740310C4(0xD000000000000023, 0x80000002740669F0, aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v15, v16, "%s: set powerModificationRestriction: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v9 = v20;
    v2 = v29;
    MEMORY[0x2743E44F0](v22, -1, -1);
    v23 = v18;
    v5 = v30;
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v24 = sub_2740518F8();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1 & 1;
  aBlock[4] = sub_27403B1E4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_9;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v26);
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_274038374(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v14 = sub_274050E28();
  __swift_project_value_buffer(v14, qword_280937140);
  v15 = sub_274050E08();
  v16 = sub_2740518C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2740310C4(0xD000000000000011, 0x8000000274066A20, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = a1;
    _os_log_impl(&dword_273FB9000, v15, v16, "%s: set PowerState: %lu", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v9 = v20;
    v2 = v29;
    MEMORY[0x2743E44F0](v22, -1, -1);
    v23 = v18;
    v5 = v30;
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v24 = sub_2740518F8();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1;
  aBlock[4] = sub_27403B214;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_15;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v26);
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_27403872C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_274050E78();
  return sub_274036A40();
}

uint64_t sub_2740387F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v14 = sub_274050E28();
  __swift_project_value_buffer(v14, qword_280937140);
  v15 = sub_274050E08();
  v16 = sub_2740518C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2740310C4(0xD000000000000016, 0x8000000274066A40, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = a1;
    _os_log_impl(&dword_273FB9000, v15, v16, "%s: set AskToJoinOption: %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v9 = v20;
    v2 = v29;
    MEMORY[0x2743E44F0](v22, -1, -1);
    v23 = v18;
    v5 = v30;
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v24 = sub_2740518F8();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1;
  aBlock[4] = sub_27403B21C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_21;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v26);
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_274038C04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v14 = sub_274050E28();
  __swift_project_value_buffer(v14, qword_280937140);
  v15 = sub_274050E08();
  v16 = sub_2740518C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2740310C4(0xD00000000000001FLL, 0x8000000274066A60, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = a1;
    _os_log_impl(&dword_273FB9000, v15, v16, "%s: set autoInstantHotspotOption: %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v9 = v20;
    v2 = v29;
    MEMORY[0x2743E44F0](v22, -1, -1);
    v23 = v18;
    v5 = v30;
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v24 = sub_2740518F8();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1;
  aBlock[4] = sub_27403B248;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_27_0;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v26);
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_274038FBC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_274050E78();
}

uint64_t sub_27403944C(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000014, 0x8000000274066A80, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set isChinaDevice status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_27403961C(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000017, 0x8000000274066AA0, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set autoUnlockEnabled status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_2740397EC(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000018, 0x8000000274066AC0, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set autoUnlockEnabled status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_2740399BC(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v14 = sub_274050E28();
  __swift_project_value_buffer(v14, qword_280937140);
  v15 = sub_274050E08();
  v16 = sub_2740518C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2740310C4(0xD000000000000012, 0x8000000274066AE0, aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v15, v16, "%s: set WAPIEnabled status: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v9 = v20;
    v2 = v29;
    MEMORY[0x2743E44F0](v22, -1, -1);
    v23 = v18;
    v5 = v30;
    MEMORY[0x2743E44F0](v23, -1, -1);
  }

  sub_274031704();
  v24 = sub_2740518F8();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1 & 1;
  aBlock[4] = sub_27403B274;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_33_0;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v13, v8, v26);
  _Block_release(v26);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_274039D80(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_274050E78();
}

uint64_t sub_274039E40(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD00000000000001ALL, 0x8000000274066B00, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set UserAutoJoinEnabled: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_27403A010(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000016, 0x8000000274066B20, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set DataUsageHidden: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1 & 1;
  v9 = v2;
  return sub_274050E78();
}

uint64_t sub_27403A1FC(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000017, 0x8000000274066B40, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set WAPISwitchHidden: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1 & 1;
  v9 = v2;
  return sub_274050E78();
}

uint64_t sub_27403A41C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = (v5 + *a3);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  a4(a1, a2);
  return a5(v11, v12);
}

id NetworkListConfigDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkListConfigDataSource.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935640, &qword_27405A958);
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935648, &qword_27405A960);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935650, &qword_27405A968);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935740, &qword_27405A970);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = OBJC_IVAR___WFNetworkListConfigDataSource__powerOn;
  LOBYTE(v42) = 0;
  sub_274050E58();
  v19 = *(v14 + 32);
  v19(&v0[v18], v17, v13);
  v20 = OBJC_IVAR___WFNetworkListConfigDataSource__powerState;
  v42 = 2;
  type metadata accessor for WFPowerState(0);
  sub_274050E58();
  (*(v9 + 32))(&v0[v20], v12, v8);
  v21 = OBJC_IVAR___WFNetworkListConfigDataSource__dataUsageHidden;
  LOBYTE(v42) = 1;
  sub_274050E58();
  v19(&v0[v21], v17, v13);
  v22 = OBJC_IVAR___WFNetworkListConfigDataSource__WAPISwitchHidden;
  LOBYTE(v42) = 1;
  sub_274050E58();
  v19(&v0[v22], v17, v13);
  v23 = OBJC_IVAR___WFNetworkListConfigDataSource__WAPIEnabled;
  LOBYTE(v42) = 1;
  sub_274050E58();
  v19(&v0[v23], v17, v13);
  v24 = OBJC_IVAR___WFNetworkListConfigDataSource__askToJoinMode;
  v42 = 1;
  type metadata accessor for WFAskToJoinMode(0);
  sub_274050E58();
  (*(v36 + 32))(&v0[v24], v7, v37);
  v25 = OBJC_IVAR___WFNetworkListConfigDataSource__autoInstantHotspotOption;
  v42 = 2;
  type metadata accessor for WFAutoInstantHotspotJoinOption(0);
  v26 = v38;
  sub_274050E58();
  (*(v39 + 32))(&v0[v25], v26, v40);
  v27 = OBJC_IVAR___WFNetworkListConfigDataSource__networkModificationRestrictionOn;
  LOBYTE(v42) = 0;
  sub_274050E58();
  v19(&v0[v27], v17, v13);
  v28 = OBJC_IVAR___WFNetworkListConfigDataSource__powerModificationRestrictionOn;
  LOBYTE(v42) = 0;
  sub_274050E58();
  v19(&v0[v28], v17, v13);
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled] = 1;
  v29 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler];
  *v32 = 0;
  v32[1] = 0;
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice] = 0;
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice] = 0;
  v33 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler];
  *v33 = 0;
  v33[1] = 0;
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled] = 0;
  v34 = type metadata accessor for NetworkListConfigDataSource();
  v41.receiver = v0;
  v41.super_class = v34;
  return objc_msgSendSuper2(&v41, sel_init);
}

id NetworkListConfigDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkListConfigDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27403AD50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworkListConfigDataSource();
  result = sub_274050E38();
  *a1 = result;
  return result;
}

uint64_t sub_27403ADCC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_274050E78();
  return sub_27403691C();
}

uint64_t sub_27403AE5C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_274050E78();
  return sub_274036A40();
}

uint64_t sub_27403AF78(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_274050E78();
}

uint64_t sub_27403B020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_27403B0B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27403B128()
{
  result = qword_2809354B0;
  if (!qword_2809354B0)
  {
    sub_2740516B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809354B0);
  }

  return result;
}

unint64_t sub_27403B180()
{
  result = qword_2809354C0;
  if (!qword_2809354C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935790, &qword_27405A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809354C0);
  }

  return result;
}

uint64_t type metadata accessor for NetworkListConfigDataSource()
{
  result = qword_280935690;
  if (!qword_280935690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_43Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_27403B39C()
{
  sub_27403BFC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_27403C010(319, &qword_2809356A0, type metadata accessor for WFPowerState);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_27403C010(319, &qword_2809356A8, type metadata accessor for WFAskToJoinMode);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_27403C010(319, &qword_2809356B0, type metadata accessor for WFAutoInstantHotspotJoinOption);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_27403BFC0()
{
  if (!qword_280935770)
  {
    v0 = sub_274050E88();
    if (!v1)
    {
      atomic_store(v0, &qword_280935770);
    }
  }
}

void sub_27403C010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_274050E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27403C07C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_27403C0A8(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_27403C0E0(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_27403C10C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_27403C138(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_27403C1BC(uint64_t a1)
{
  v2 = sub_2740512F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - v18;
  if (a1)
  {
    if (a1 == 1)
    {
      v20 = v17;
      sub_274050EF8();
      sub_2740512E8();
      sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830);
      sub_27403C650();
      sub_274051498();
      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
      v21 = &v19[*(v20 + 36)];
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935270, &qword_274059CC0) + 28);
      v23 = *MEMORY[0x277CDF438];
      v24 = sub_274050ED8();
      (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
      *v21 = swift_getKeyPath();
      sub_273FBC6B8(v19, v16);
      sub_27403C7EC();
      v25 = sub_2740515D8();
      sub_273FBC728(v19);
      return v25;
    }

    if (a1 != 2)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_2740519F8();
      MEMORY[0x2743E3610](0xD000000000000018, 0x8000000274066DD0);
      v37 = a1;
      type metadata accessor for WFNetworkState(0);
      sub_274051A78();
      result = sub_274051A88();
      __break(1u);
      return result;
    }

    v27 = sub_274051558();
    v28 = sub_274051518();
    KeyPath = swift_getKeyPath();
    sub_274051388();
    v30 = sub_274051398();

    v31 = swift_getKeyPath();
    v32 = v27;
    v33 = KeyPath;
    v34 = v28;
    v35 = v31;
    v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A00, &unk_27405AD60);
    sub_27403C98C();
  }

  else
  {
    v32 = 0;
    LOBYTE(v33) = 1;
  }

  return sub_2740515D8();
}

uint64_t sub_27403C624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27403C1BC(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_27403C650()
{
  result = qword_280935A60;
  if (!qword_280935A60)
  {
    sub_2740512F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935A60);
  }

  return result;
}

uint64_t sub_27403C6A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740510B8();
  *a1 = result;
  return result;
}

uint64_t sub_27403C6D4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2740510C8();
}

uint64_t sub_27403C724(uint64_t a1)
{
  v2 = sub_274050ED8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x2743E2E50](v5);
}

unint64_t sub_27403C7EC()
{
  result = qword_2809356C8;
  if (!qword_2809356C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935A40, &unk_27405ACC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809356B8, &unk_27405B830);
    sub_2740512F8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830);
    sub_27403C650();
    swift_getOpaqueTypeConformance2();
    sub_27402179C(&qword_2809356D0, &qword_280935270, &qword_274059CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809356C8);
  }

  return result;
}

uint64_t sub_27403C934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274051058();
  *a1 = result;
  return result;
}

uint64_t sub_27403C960(uint64_t *a1)
{
  v1 = *a1;

  return sub_274051068();
}

unint64_t sub_27403C98C()
{
  result = qword_2809356D8;
  if (!qword_2809356D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935A00, &unk_27405AD60);
    sub_274020AFC();
    sub_27402179C(&unk_280935A20, &qword_280935230, &qword_274059C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809356D8);
  }

  return result;
}

id sub_27403CA44()
{
  v1 = OBJC_IVAR___WFNetworkListViewController_networkListDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27403CA98(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkListViewController_networkListDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_27403CB50(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_27403CBAC()
{
  v1 = OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27403CC00(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_27403CCB8()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkList();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v47[-v7];
  v9 = type metadata accessor for WFNetworkListViewController();
  v48.receiver = v1;
  v48.super_class = v9;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  v10 = OBJC_IVAR___WFNetworkListViewController_networkListDataSource;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource;
  swift_beginAccess();
  v13 = *&v1[v12];
  v14 = *(v2 + 24);
  v15 = objc_opt_self();
  v16 = v11;
  v17 = v13;
  v18 = [v15 defaultCenter];
  if (qword_280934D98 != -1)
  {
    swift_once();
  }

  v19 = qword_280937218;
  sub_274051938();
  v20 = (v8 + *(v2 + 28));
  *v20 = 0x4C20664F20706F54;
  v20[1] = 0xEB00000000747369;
  type metadata accessor for NetworkListDataSource();
  sub_27403D49C(&unk_2809357B0, type metadata accessor for NetworkListDataSource);
  v21 = v16;
  *v8 = sub_274050F88();
  v8[1] = v22;
  type metadata accessor for NetworkListConfigDataSource();
  sub_27403D49C(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource);
  v23 = sub_274050F88();
  v25 = v24;

  v8[2] = v23;
  v8[3] = v25;
  sub_27403D4E4(v8, v6);
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356F8, &unk_27405AD80));
  v27 = sub_2740511E8();
  v28 = *&v1[OBJC_IVAR___WFNetworkListViewController_hostingController];
  *&v1[OBJC_IVAR___WFNetworkListViewController_hostingController] = v27;
  v29 = v27;

  v30 = v29;
  [v1 addChildViewController_];
  v31 = [v30 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_10;
  }

  v32 = v31;
  v33 = [v1 view];
  if (!v33)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v34 = v33;
  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [v32 setFrame_];
  v43 = [v30 view];

  if (!v43)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v43 setAutoresizingMask_];

  v44 = [v1 view];
  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = v44;
  v46 = [v30 view];

  if (v46)
  {
    [v45 addSubview_];

    [v30 didMoveToParentViewController_];
    sub_27403D548(v8);
    return;
  }

LABEL_13:
  __break(1u);
}

id WFNetworkListViewController.__allocating_init(networkListDataSource:networkListConfigDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WFNetworkListViewController_hostingController] = 0;
  *&v5[OBJC_IVAR___WFNetworkListViewController_networkListDataSource] = a1;
  *&v5[OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id WFNetworkListViewController.init(networkListDataSource:networkListConfigDataSource:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___WFNetworkListViewController_hostingController] = 0;
  *&v2[OBJC_IVAR___WFNetworkListViewController_networkListDataSource] = a1;
  *&v2[OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WFNetworkListViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id WFNetworkListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFNetworkListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFNetworkListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27403D49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27403D4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27403D548(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_27403D76C()
{
  v0 = sub_2740517C8();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier_];

  if (!v2)
  {
    v2 = [v1 mainBundle];
  }

  v3 = sub_274050D68();

  return v3;
}

_BYTE *static WFNetworkRowConfigModel.modelFrom(rowConfig:)(void *a1)
{
  if ([a1 network])
  {
    swift_unknownObjectRelease();
    v3 = [objc_allocWithZone(v1) init];
    sub_27403DF48([a1 network]);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_274050E78();
    v5 = [a1 subtitle];
    if (v5)
    {
      v6 = v5;
      v7 = sub_2740517D8();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    sub_27403E520(v7, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v4;
    sub_274050E78();
    sub_27403EB84([a1 connectionState]);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v15;
    sub_274050E78();
    sub_27403F0F0([a1 problematicConnection]);
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_274050E78();
    sub_27403F65C([a1 signalBars]);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v17;
    sub_274050E78();
    v18 = [a1 context];
    v19 = OBJC_IVAR___WFNetworkRowConfig_context;
    swift_beginAccess();
    *&v14[v19] = v18;
    LOBYTE(v18) = [a1 hideConnectionState];
    v20 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
    swift_beginAccess();
    v14[v20] = v18;
    LOBYTE(v18) = [a1 showInfoButton];
    v21 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
    swift_beginAccess();
    v14[v21] = v18;
    v22 = [a1 infoButtonHandler];
    if (v22)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v22 = sub_274040D58;
    }

    else
    {
      v23 = 0;
    }

    v24 = &v14[OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler];
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];
    *v24 = v22;
    v24[1] = v23;
    sub_2740368EC(v25);
  }

  else
  {
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v10 = sub_274050E28();
    __swift_project_value_buffer(v10, qword_280937140);
    v11 = sub_274050E08();
    v12 = sub_2740518D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_273FB9000, v11, v12, "nil network passed in when trying to construct network model.", v13, 2u);
      MEMORY[0x2743E44F0](v13, -1, -1);
    }

    return 0;
  }

  return v14;
}

_BYTE *static WFNetworkRowConfigModel.knownNetworkRowConfig()()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  v1[v2] = 1;
  v3 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  v1[v3] = 1;
  v4 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  *&v1[v4] = 1;
  return v1;
}

uint64_t sub_27403DE54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

void sub_27403DF48(id a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2740516D8();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = [aBlock[0] ssid];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = sub_2740517D8();
      v12 = v15;

      if (!a1)
      {
LABEL_10:
        v18 = 0;
        if (v12)
        {
          goto LABEL_11;
        }

LABEL_16:
        if (!a1)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v12 = 0;
      if (!a1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  v16 = [a1 ssid];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2740517D8();
    a1 = v19;

    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v18 = 0;
  a1 = 0;
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (!a1)
  {
LABEL_17:

LABEL_18:
    sub_274031704();
    v20 = sub_2740518F8();
    v21 = swift_allocObject();
    v21[2] = v2;
    aBlock[4] = sub_274041488;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_104;
    v22 = _Block_copy(aBlock);
    v23 = v2;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v11, v7, v22);
    _Block_release(v22);

    (*(v26 + 8))(v7, v4);
    (*(v8 + 8))(v11, v25);
    return;
  }

  if (v14 == v18 && v12 == a1)
  {

    return;
  }

  v24 = sub_274051B08();

  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }
}
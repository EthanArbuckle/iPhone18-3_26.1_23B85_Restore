void sub_20B9A7AE8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C134B14();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20B9A84CC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C134AD4();
      v126 = sub_20C134AD4();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C134AD4();
        v39 = sub_20C134AD4();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20B9A84CC(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C134AD4();
    v104 = sub_20C134AD4();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_20B9A84CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C134B14();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C134AD4();
          v45 = sub_20C134AD4();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C134AD4();
        v26 = sub_20C134AD4();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07B4(&v64, &v63, &v62);
}

uint64_t sub_20B9A8A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698);

  return sub_20C137C94();
}

uint64_t sub_20B9A8B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v2 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row;
  sub_20B5D8060(v29);
  v7 = v29[9];
  *(v6 + 128) = v29[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v30;
  v8 = v29[5];
  *(v6 + 64) = v29[4];
  *(v6 + 80) = v8;
  v9 = v29[7];
  *(v6 + 96) = v29[6];
  *(v6 + 112) = v9;
  v10 = v29[1];
  *v6 = v29[0];
  *(v6 + 16) = v10;
  v11 = v29[3];
  *(v6 + 32) = v29[2];
  *(v6 + 48) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_multiUserEligibilityObserver;
  sub_20C13B704();
  *(v2 + v12) = sub_20C13B6F4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_accountHasSupportedDevice) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_accountHasWatch) = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_config;
  v14 = sub_20C134104();
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceCloudAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_deviceSubscriberAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_matchingDeviceSubscriberAccount) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_serviceSubscription;
  v16 = sub_20C135734();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingOffer;
  v18 = sub_20C138894();
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bag) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_configurationClient);
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_eventHub) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingItemProvider);
  type metadata accessor for QueueMediaTagBuilder();
  v19 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();

  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_mediaTagBuilder) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_remoteBrowsingSource);
  sub_20C133AA4();
  v20 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer;
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v27, v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueClient);
  sub_20B51CC64(v3 + v20, &v27);
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  v21 = sub_20C138D34();
  v22 = (v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_title);
  *v22 = v21;
  v22[1] = v23;
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v24 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_metricPage;
  v25 = sub_20C1333A4();
  (*(*(v25 - 8) + 32))(v3 + v24, a2, v25);
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueItems) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState) = 0;
  return v3;
}

void sub_20B9A910C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v50 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v50 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9A9B7C(a1, v19, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20B9A99BC(v19, v16, type metadata accessor for ButtonAction);
      sub_20B9A9B7C(v16 + *(v14 + 28), v13, type metadata accessor for ButtonAction.ActionType);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 == 14 || v21 == 17)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          v33 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v34 = *(v33 + 8);
            ObjectType = swift_getObjectType();
            (*(v34 + 392))(v32, 1, 2, ObjectType, v34);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_29;
      }

      if (v21 == 19)
      {
        sub_20B9A5400();
LABEL_29:
        v29 = type metadata accessor for ButtonAction;
        v30 = v16;
        goto LABEL_30;
      }

      v40 = sub_20C135ED4();
      (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
      v41 = sub_20C1352E4();
      (*(*(v41 - 8) + 56))(v4, 1, 1, v41);
      sub_20B5A7790(v16, 0, 0, v7, 0, 0, v4, v10);
      sub_20B520158(v4, &unk_27C765D50);
      sub_20B520158(v7, &unk_27C7621D0);
      v42 = v52;
      v43 = sub_20C137CB4();
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      v43(sub_20B52347C, v44);

      (*(v51 + 8))(v10, v42);
      sub_20B9A9AE4(v16, type metadata accessor for ButtonAction);
      v29 = type metadata accessor for ButtonAction.ActionType;
      v30 = v13;
    }

    else
    {
      v29 = type metadata accessor for ShelfItemAction;
      v30 = v19;
    }

LABEL_30:
    sub_20B9A9AE4(v30, v29);
    return;
  }

  v22 = *v19;
  v23 = *(v19 + 1);
  v24 = *(v19 + 2);
  v25 = v19[24];
  v26 = (v25 >> 5) & 3;
  if (v26)
  {
    if (v26 == 3)
    {
      v27 = v25 == 96 && v22 == 1;
      if (v27 && (v24 | v23) == 0)
      {
        sub_20B9A50C0();
        return;
      }
    }

    goto LABEL_26;
  }

  if ((v25 & 0x80) != 0)
  {
LABEL_26:
    sub_20B8403A8(v22, v23, v24, v25);
    return;
  }

  v36 = *v19;
  v37 = *(v19 + 1);
  v38 = v24;
  v39 = v25;
  sub_20B9A4D18(v25);
  if (!v39)
  {
    sub_20B9A34E0();
    sub_20B8403A8(v36, v37, v38, 0);
    return;
  }

  if (v39 == 1)
  {
    sub_20B9A2D8C();
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = 1;
    goto LABEL_26;
  }

  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v46 = v45;
    v47 = v45 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = *(v47 + 8);
      v49 = swift_getObjectType();
      (*(v48 + 392))(v46, 0, 2, v49, v48);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_20B8403A8(v36, v37, v38, 2u);
}

uint64_t sub_20B9A9780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B9A6808(a1, v4, v5, v6);
}

uint64_t sub_20B9A98AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_20B9A99BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9A9AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B9A9B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9A9BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B9A9CEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B9A9DC0(uint64_t a1)
{
  v99 = *(a1 + 8);
  v109 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20);
  MEMORY[0x28223BE20](v3 - 8);
  v106 = v91 - v4;
  v5 = sub_20C1329B4();
  MEMORY[0x28223BE20](v5 - 8);
  v104 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = v91 - v10;
  MEMORY[0x28223BE20](v11);
  v102 = v91 - v12;
  v13 = sub_20C13C064();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v111 = v91 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v19 - 8);
  v107 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v91 - v22;
  v24 = sub_20C13D874();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v105 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v91 - v28;
  sub_20C13D884();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_20B7839B4(v23);
  }

  v103 = v14;
  v98 = v13;
  (*(v25 + 32))(v29, v23, v24);
  v110 = v16;
  v108 = v25;
  v31 = OBJC_IVAR____TtC9SeymourUI16PageActionButton_style;
  v93 = sub_20BC92B10(a1, v1[OBJC_IVAR____TtC9SeymourUI16PageActionButton_style]);
  v92 = sub_20BC92BE0(a1, v1[v31]);
  v32 = *MEMORY[0x277D76938];
  LOBYTE(v113[0]) = 1;
  v112[0] = 1;
  v33 = v24;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = v32;
  v35[6] = 0x90100000000;
  v35[7] = 0;
  v36 = MEMORY[0x277D84FA0];
  v35[8] = 1;
  v35[9] = v36;
  v37 = v1;
  v38 = v32;
  sub_20C13C074();
  sub_20BC92CEC(v1[v31], v113);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = v113[1];
  *(v40 + 24) = v113[0];
  *(v40 + 40) = v41;
  *(v40 + 56) = v113[2];
  *(v40 + 72) = v114;
  sub_20C13C074();
  v42 = *(v108 + 16);
  v43 = v105;
  v96 = v29;
  v97 = v33;
  v95 = v108 + 16;
  v94 = v42;
  v42(v105, v29, v33);
  v44 = *a1;
  v45 = *(a1 + 8);
  v46 = *(a1 + 16);
  v47 = *(a1 + 24);
  v48 = *(a1 + 32);
  if ((v48 - 1) < 2)
  {
    v91[1] = *a1;

    v49 = v37;
    [v37 setHidden_];
    v50 = v93;
    sub_20C13D764();
    v51 = v92;
    sub_20C13D774();
    sub_20C13D784();
    v99 = v50;
    v93 = v51;
    if (v47)
    {

      sub_20C1329A4();
      v52 = v100;
      sub_20C132934();
      v53 = 0;
      v54 = v98;
    }

    else
    {
      v53 = 1;
      v54 = v98;
      v52 = v100;
    }

    v102 = v49;
    v67 = sub_20C132924();
    v68 = *(*(v67 - 8) + 56);
    v69 = 1;
    v68(v52, v53, 1, v67);
    sub_20C13D744();
    if (v45)
    {

      sub_20C1329A4();
      v70 = v101;
      sub_20C132934();
      v69 = 0;
    }

    else
    {
      v70 = v101;
    }

    v68(v70, v69, 1, v67);
    v71 = v43;
    sub_20C13D704();
    v72 = v103;
    v73 = *(v103 + 16);
    v74 = v106;
    v73(v106, v110, v54);
    v75 = *(v72 + 56);
    v75(v74, 0, 1, v54);
    sub_20C13D7B4();
    sub_20C13D794();
    v73(v74, v111, v54);
    v75(v74, 0, 1, v54);
    v43 = v71;
    sub_20C13D7C4();
    if (v45)
    {
      v37 = v102;
      v61 = v103;
      if (v47)
      {

LABEL_21:
        v66 = v109;
        v64 = v110;
        goto LABEL_22;
      }
    }

    else
    {
      v37 = v102;
      v61 = v103;
      if (!v47)
      {
        goto LABEL_21;
      }
    }

    v76 = sub_20C13D6A4();
    *v77 = 0x402C000000000000;
    v76(v112, 0);
    v78 = sub_20C13D6A4();
    *(v79 + 16) = 0x402C000000000000;
    v78(v112, 0);
    goto LABEL_21;
  }

  v55 = v93;
  v56 = v92;
  if (v48)
  {
    v54 = v98;
    v61 = v103;
    if (v46 | v45 | v44 | v47)
    {
      [v37 setHidden_];
    }

    else
    {
      [v37 setHidden_];
      sub_20C13D794();
    }

    v99 = v55;
    sub_20C13D764();
    v93 = v56;
    sub_20C13D774();
    sub_20C13D784();
    v80 = sub_20C132924();
    v81 = *(*(v80 - 8) + 56);
    v82 = v102;
    v81(v102, 1, 1, v80);
    sub_20C13D744();
    v81(v82, 1, 1, v80);
    sub_20C13D704();
    v83 = *(v61 + 56);
    v84 = v106;
    v83(v106, 1, 1, v54);
    sub_20C13D7B4();
    sub_20C13D794();
    v83(v84, 1, 1, v54);
    sub_20C13D7C4();
    goto LABEL_21;
  }

  [v37 setHidden_];
  v99 = v55;
  sub_20C13D764();
  v93 = v56;
  sub_20C13D774();
  sub_20C13D784();
  v57 = sub_20C132924();
  v58 = *(*(v57 - 8) + 56);
  v59 = v102;
  v58(v102, 1, 1, v57);
  sub_20C13D744();
  sub_20C1329A4();
  sub_20C132934();
  v58(v59, 0, 1, v57);
  v60 = v43;
  sub_20C13D704();
  v61 = v103;
  v62 = *(v103 + 16);
  v63 = v106;
  v64 = v110;
  v54 = v98;
  v62(v106, v110, v98);
  v65 = *(v61 + 56);
  v65(v63, 0, 1, v54);
  sub_20C13D7B4();
  sub_20C13D794();
  v62(v63, v111, v54);
  v65(v63, 0, 1, v54);
  v43 = v60;
  sub_20C13D7C4();
  v66 = v109;
LABEL_22:
  v85 = v96;
  v86 = v107;
  v87 = v97;
  v94(v107, v43, v97);
  v88 = v108;
  (*(v108 + 56))(v86, 0, 1, v87);
  sub_20C13D894();
  [v37 setEnabled_];

  v89 = *(v88 + 8);
  v89(v43, v87);
  v90 = *(v61 + 8);
  v90(v64, v54);
  v90(v111, v54);
  return (v89)(v85, v87);
}

id sub_20B9AAA28(char a1)
{
  v2 = v1;
  v4 = sub_20C13D664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13D6C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  if (a1)
  {
    sub_20C13D834();
    v26 = v4;
    v15 = v2;
    v16 = sub_20C13D634();
    sub_20C13BCB4();
    v16(v27, 0);
    v2 = v15;
    (*(v5 + 104))(v7, *MEMORY[0x277D74FE0], v26);
    sub_20C13D674();
  }

  else
  {
    sub_20C13D814();
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D74FF0], v8);
  sub_20C13D6D4();
  v17 = sub_20C13D874();
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  sub_20C13D894();
  v18 = OBJC_IVAR____TtC9SeymourUI16PageActionButton_minimumHeightConstraint;
  v19 = *&v2[OBJC_IVAR____TtC9SeymourUI16PageActionButton_minimumHeightConstraint];
  if (a1)
  {
    if (v19)
    {
      v20 = v19;
      [v20 setConstant_];
LABEL_10:
      [v20 setActive_];

      return [v2 setNeedsUpdateConstraints];
    }

    v21 = [v2 heightAnchor];
    v22 = [v21 constraintGreaterThanOrEqualToConstant_];

    v23 = *&v2[v18];
    *&v2[v18] = v22;
    v20 = v22;

    if (v20)
    {
      goto LABEL_10;
    }
  }

  else if (v19)
  {
    [v19 setActive_];
  }

  return [v2 setNeedsUpdateConstraints];
}

uint64_t sub_20B9AAD7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong traitCollection], v7, v8))
  {
    v9 = sub_20C1329B4();
    (*(*(v9 - 8) + 16))(a3, a1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = a2[1];
    v12 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    if (v14 < 0)
    {
      v22 = *a2;
      v23 = v10;
      v24 = v12;
      v25 = v11;
      LODWORD(v26) = v13;
      BYTE4(v26) = BYTE4(v13);
      v16 = sub_20B992B08();
    }

    else
    {
      v15 = a2[6];
      v22 = *a2;
      v23 = v10;
      v24 = v12;
      v25 = v11;
      v26 = v13;
      v27 = v14;
      v28 = v15;
      v16 = sub_20B7C6A74(v8);
    }

    v21 = v16;
    sub_20C132864();
    sub_20B81F814();
    v19 = sub_20C132974();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
    sub_20B81F86C();
    sub_20C132A74();
    v19(v20, 0);
  }

  else
  {
    v17 = sub_20C1329B4();
    return (*(*(v17 - 8) + 16))(a3, a1, v17);
  }
}

id sub_20B9AB034(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 3;
  v1[OBJC_IVAR____TtC9SeymourUI16PageActionButton_style] = 0;
  __asm { FMOV            V0.2D, #14.0 }

  *&v1[OBJC_IVAR____TtC9SeymourUI16PageActionButton_styleProvider] = _Q0;
  *&v1[OBJC_IVAR____TtC9SeymourUI16PageActionButton_minimumHeightConstraint] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PageActionButton();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_20B9AB108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageActionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_15Tm()
{

  sub_20B786774(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B9AB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

void sub_20B9AB278()
{
  v0 = *MEMORY[0x277D76918];
  v1 = *MEMORY[0x277D74368];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = v1;
  v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:0];
  v6 = v4;
  v7 = [v5 fontDescriptorWithDesign_];

  if (v7)
  {

    v5 = v7;
  }

  v8 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

  qword_27C7686B8 = v8;
}

char *sub_20B9AB394()
{
  v1 = &v0[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_layout];
  sub_20B9ABCB0(v53);
  v2 = v53[1];
  *v1 = v53[0];
  *(v1 + 1) = v2;
  *(v1 + 2) = v53[2];
  *(v1 + 6) = v54;
  v3 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 whiteColor];
  [v6 setTintColor_];

  [v6 setContentMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v0[v3] = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = sub_20C13C914();
  [v9 setText_];

  [v9 setNumberOfLines_];
  [v9 setLineBreakMode_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  v11 = [v5 whiteColor];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  if (qword_27C760850 != -1)
  {
    swift_once();
  }

  [v9 setFont_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v8] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C151490;
  v13 = *&v0[v3];
  *(v12 + 32) = v13;
  *(v12 + 40) = v9;
  v14 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v15 = v13;
  v16 = v9;
  v17 = sub_20C13CC54();

  v18 = [v14 initWithArrangedSubviews_];

  [v18 setSpacing_];
  [v18 setAlignment_];
  [v18 setAxis_];
  [v18 setDistribution_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_stackView] = v18;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for TVUpNextQueueButtonContentView();
  v19 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView];
  v21 = *&v19[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_layout + 48];
  v22 = v19;
  [v20 setImage_];
  v23 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_stackView;
  [v22 addSubview_];
  v25 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = *&v22[v23];
  v29 = [v28 leadingAnchor];
  v30 = [v22 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v24];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v28 trailingAnchor];
  v35 = [v22 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-v27];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = v36;
  v39 = [v28 topAnchor];
  v40 = [v22 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v25];

  LODWORD(v42) = 1148846080;
  [v41 setPriority_];
  v43 = [v28 bottomAnchor];
  v44 = [v22 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v26];

  LODWORD(v46) = 1148846080;
  [v45 setPriority_];
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C14FE90;
  *(v47 + 32) = v33;
  *(v47 + 40) = v38;
  *(v47 + 48) = v41;
  *(v47 + 56) = v45;
  v48 = v41;

  v49 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);
  v50 = sub_20C13CC54();

  [v49 activateConstraints_];

  return v22;
}

id sub_20B9ABA8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVUpNextQueueButtonContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B9ABB6C(uint64_t a1, int a2)
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

uint64_t sub_20B9ABBB4(uint64_t result, int a2, int a3)
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

void sub_20B9ABC14(char a1)
{
  v2 = 32;
  if ((a1 & 8) == 0)
  {
    v2 = 24;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_layout + v2);
  [v3 setTintColor_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView) setTextColor_];
}

double sub_20B9ABCB0@<D0>(uint64_t a1@<X8>)
{
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v15 = [objc_opt_self() blackColor];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76918];
  v4 = [v2 preferredFontForTextStyle_];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithFont_];

  v7 = sub_20C13C914();
  v8 = objc_opt_self();
  v9 = [v8 smm:v7 systemImageNamed:v6 withConfiguration:?];

  v10 = [v2 preferredFontForTextStyle_];
  v11 = [v5 configurationWithFont_];

  v12 = sub_20C13C914();
  v13 = [v8 smm:v12 systemImageNamed:v11 withConfiguration:?];

  result = 12.0;
  *a1 = xmmword_20C1669C0;
  *(a1 + 16) = 0x4038000000000000;
  *(a1 + 24) = v16;
  *(a1 + 32) = v15;
  *(a1 + 40) = v9;
  *(a1 + 48) = v13;
  return result;
}

void sub_20B9ABEB8()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_layout;
  sub_20B9ABCB0(v12);
  v2 = v12[1];
  *v1 = v12[0];
  *(v1 + 16) = v2;
  *(v1 + 32) = v12[2];
  *(v1 + 48) = v13;
  v3 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 whiteColor];
  [v6 setTintColor_];

  [v6 setContentMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v3) = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = sub_20C13C914();
  [v9 setText_];

  [v9 setNumberOfLines_];
  [v9 setLineBreakMode_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  v11 = [v5 whiteColor];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  if (qword_27C760850 != -1)
  {
    swift_once();
  }

  [v9 setFont_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9AC13C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v4 = sub_20C137294();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v17 = v5 + 16;
  v13 = (v5 + 8);
  v19 = a1;

  v15 = 0;
  if (v11)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      (*(v5 + 16))(v7, *(v19 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v16 << 6)), v4);
      sub_20B9AF9FC(v7, v18);
      if (v2)
      {
        break;
      }

      v11 &= v11 - 1;
      result = (*v13)(v7, v4);
      v15 = v16;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    (*v13)(v7, v4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
      }

      v11 = *(v8 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20B9AC31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  sub_20C13CDA4();
  v8[11] = sub_20C13CD94();
  v10 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B9AC3BC, v10, v9);
}

uint64_t sub_20B9AC3BC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B9ADD64(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20B9AC468(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_20C135214();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C133954();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for WorkoutPlanScheduleMetadata();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v56 - v17);
  v19 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  swift_beginAccess();
  v20 = v2 + v19;
  v21 = v2;
  sub_20B52F9E8(v20, v12, &qword_27C768710);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v22 = &qword_27C768710;
    v23 = v12;
    return sub_20B520158(v23, v22);
  }

  sub_20B9B12B4(v12, v18);
  sub_20BC1B954(v68);
  v25 = v68[5];
  v26 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v26, v9, &unk_27C76A970);
  v28 = v62;
  v27 = v63;
  v29 = v18;
  if ((*(v62 + 48))(v9, 1, v63))
  {
    result = sub_20B520158(v9, &unk_27C76A970);
    v30 = 0;
    v31 = v64;
  }

  else
  {
    v32 = v59;
    (*(v28 + 16))(v59, v9, v27);
    sub_20B520158(v9, &unk_27C76A970);
    v33 = v60;
    sub_20C133914();
    v31 = v64;
    (*(v28 + 8))(v32, v27);
    v30 = sub_20C135204();
    result = (*(v57 + 8))(v33, v58);
  }

  v34 = *v29;
  v35 = v30 + *v29;
  if (__OFADD__(v30, *v29))
  {
    __break(1u);
    goto LABEL_27;
  }

  v36 = 7 * v61;
  if ((v61 * 7) >> 64 != (7 * v61) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = __OFADD__(v25 % 7, v36);
  v38 = v25 % 7 + v36;
  if (v37)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (v35 >= v38)
  {
    v35 = v38;
  }

  if (v35 > v34)
  {
    v34 = v35;
  }

  v39 = v34 & ~(v34 >> 63);
  v40 = v29[1];
  if (v39 >= *(v40 + 16))
  {
    goto LABEL_29;
  }

  v41 = (v40 + (v39 << 6));
  v42 = v41[2];
  v43 = v41[3];
  v44 = v41[4];
  *(v76 + 10) = *(v41 + 74);
  v75[1] = v43;
  v76[0] = v44;
  v75[0] = v42;
  sub_20BC1B954(v69);
  sub_20B821784(v75, v72);
  sub_20B821784(v69, v72);
  v45 = sub_20BD47310(v69, v75);
  sub_20B8217E0(v69);
  if (v45)
  {
    sub_20B9B0D0C(v29);
    return sub_20B8217E0(v75);
  }

  else
  {
    sub_20B9E1D88(v75, v31);
    sub_20B8217E0(v75);
    sub_20BC1B954(v70);
    v46 = v70[5];
    sub_20BC1B954(v71);
    v47 = v71[5];
    sub_20B9ADB48(v31);
    swift_beginAccess();
    sub_20B52F9E8(v21 + 24, v72, &qword_27C768738);
    if (v73)
    {
      sub_20B51CC64(v72, v66);
      sub_20B520158(v72, &qword_27C768738);
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v48 = *(v31 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_20C14F320;
      *(v49 + 32) = v46;
      *(v49 + 40) = v47;
      sub_20B9E4C94(v48, 0, v49);

      __swift_destroy_boxed_opaque_existential_1(v66);
    }

    else
    {
      sub_20B520158(v72, &qword_27C768738);
    }

    v50 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
    swift_beginAccess();
    sub_20B52F9E8(v21 + v50, v66, &qword_27C768730);
    if (!v67)
    {
      sub_20B9B0D0C(v31);
      sub_20B9B0D0C(v29);
      v22 = &qword_27C768730;
      v23 = v66;
      return sub_20B520158(v23, v22);
    }

    sub_20B51CC64(v66, v65);
    sub_20B520158(v66, &qword_27C768730);
    v51 = __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    sub_20BC1B954(v72);
    v52 = v74;
    *(*v51 + 24) = v74;
    sub_20BCD20D4(v52);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v54 = Strong;

      sub_20B9B0A6C(v55, v52, 1, v54);
      swift_unknownObjectRelease();
    }

    sub_20B9B0D0C(v31);
    sub_20B9B0D0C(v29);
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }
}

uint64_t sub_20B9ACBEC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for WorkoutPlanScheduleMetadata();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - v11);
  v13 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v13, v6, &qword_27C768710);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v14 = &qword_27C768710;
    v15 = v6;
    return sub_20B520158(v15, v14);
  }

  result = sub_20B9B12B4(v6, v12);
  v17 = a1 + *v12;
  if (__OFADD__(a1, *v12))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v12[1];
  if (v17 >= *(v18 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v19 = (v18 + (v17 << 6));
  v20 = v19[2];
  v21 = v19[3];
  v22 = v19[4];
  *&v41[10] = *(v19 + 74);
  v40[1] = v21;
  *v41 = v22;
  v40[0] = v20;
  sub_20BC1B954(v35);
  sub_20B821784(v40, v38);
  sub_20B821784(v35, v38);
  v23 = sub_20BD47310(v35, v40);
  sub_20B8217E0(v35);
  if (v23)
  {
    sub_20B9B0D0C(v12);
    return sub_20B8217E0(v40);
  }

  else
  {
    v24 = v30;
    sub_20B9E1D88(v40, v30);
    sub_20B8217E0(v40);
    sub_20BC1B954(v36);
    v25 = v36[5];
    sub_20BC1B954(v37);
    v26 = v37[5];
    sub_20B9ADB48(v24);
    sub_20BC1B954(v38);
    *(v2 + 64) = v39 / 7 + 1;
    *(v2 + 72) = 0;
    swift_beginAccess();
    sub_20B52F9E8(v2 + 24, v33, &qword_27C768738);
    if (v34)
    {
      sub_20B51CC64(v33, v31);
      sub_20B520158(v33, &qword_27C768738);
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v27 = *(v24 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_20C14F320;
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      sub_20B9E4C94(v27, 0, v28);

      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_20B520158(v33, &qword_27C768738);
    }

    sub_20B52F9E8(v2 + 24, v33, &qword_27C768738);
    if (!v34)
    {
      sub_20B9B0D0C(v24);
      sub_20B9B0D0C(v12);
      v14 = &qword_27C768738;
      v15 = v33;
      return sub_20B520158(v15, v14);
    }

    sub_20B51CC64(v33, v31);
    sub_20B520158(v33, &qword_27C768738);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20B820D4C(v26, 1);
      swift_unknownObjectRelease();
    }

    sub_20B9B0D0C(v24);
    sub_20B9B0D0C(v12);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }
}

uint64_t sub_20B9AD060(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for WorkoutPlanScheduleMetadata();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  swift_beginAccess();
  v33 = v2;
  sub_20B52F9E8(v2 + v13, v6, &qword_27C768710);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v14 = &qword_27C768710;
    v15 = v6;
    return sub_20B520158(v15, v14);
  }

  sub_20B9B12B4(v6, v12);
  sub_20BC1B954(v39);
  sub_20B821784(v39, v42);
  v17 = sub_20BD47310(v39, a1);
  sub_20B8217E0(v39);
  if (v17)
  {
    return sub_20B9B0D0C(v12);
  }

  v18 = a1;
  v19 = v34;
  sub_20B9E1D88(v18, v34);
  v20 = v12;
  sub_20BC1B954(v40);
  v21 = v41;
  sub_20BC1B954(v42);
  v22 = v43;
  v23 = v33;
  sub_20B9ADB48(v19);
  swift_beginAccess();
  sub_20B52F9E8(v23 + 24, v37, &qword_27C768738);
  if (v38)
  {
    sub_20B51CC64(v37, v35);
    sub_20B520158(v37, &qword_27C768738);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v24 = *(v19 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20C14F320;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    sub_20B9E4C94(v24, 0, v25);

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_20B520158(v37, &qword_27C768738);
  }

  sub_20B52F9E8(v23 + 24, v37, &qword_27C768738);
  if (v38)
  {
    sub_20B51CC64(v37, v35);
    sub_20B520158(v37, &qword_27C768738);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v26 = *(v18 + 40);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20B820D4C(v26, 1);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_20B520158(v37, &qword_27C768738);
  }

  v27 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
  swift_beginAccess();
  sub_20B52F9E8(v23 + v27, v37, &qword_27C768730);
  if (!v38)
  {
    sub_20B9B0D0C(v20);
    sub_20B9B0D0C(v19);
    v14 = &qword_27C768730;
    v15 = v37;
    return sub_20B520158(v15, v14);
  }

  sub_20B51CC64(v37, v35);
  sub_20B520158(v37, &qword_27C768730);
  v28 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v29 = *(v18 + 48);
  v30 = *v28;
  *(*v28 + 24) = v29;
  sub_20BCD20D4(v29);
  v31 = *(v30 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanScheduleShelf);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20B9B0A6C(v31, v29, 1, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B9B0D0C(v20);
  sub_20B9B0D0C(v19);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_20B9AD530()
{
  v1 = v0;
  v2 = sub_20C13C4B4();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C13C4F4();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for WorkoutPlanScheduleMetadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v7, &qword_27C768710);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20B520158(v7, &qword_27C768710);
  }

  sub_20B9B12B4(v7, v14);
  swift_beginAccess();
  sub_20B52F9E8(v1 + 24, aBlock, &qword_27C768738);
  if (v32)
  {
    sub_20B51CC64(aBlock, v30);
    sub_20B520158(aBlock, &qword_27C768738);
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_20B9E4C94(*(v14 + 1), 0, 0);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_20B520158(aBlock, &qword_27C768738);
  }

  sub_20B5E2E18();
  v17 = sub_20C13D374();
  sub_20B9B0CA8(v14, v11);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  sub_20B9B12B4(v11, v19 + v18);
  v33 = sub_20B9B1388;
  v34 = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v32 = &block_descriptor_62;
  v20 = _Block_copy(aBlock);

  v21 = v24;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B9B13EC(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v22 = v26;
  v23 = v29;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v21, v22, v20);
  _Block_release(v20);

  (*(v28 + 8))(v22, v23);
  (*(v25 + 8))(v21, v27);
  return sub_20B9B0D0C(v14);
}

uint64_t sub_20B9ADA50(uint64_t a1)
{
  swift_beginAccess();
  sub_20B52F9E8(a1 + 24, v5, &qword_27C768738);
  if (!v6)
  {
    return sub_20B520158(v5, &qword_27C768738);
  }

  sub_20B51CC64(v5, v4);
  sub_20B520158(v5, &qword_27C768738);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_20BC1B954(v7);
  v2 = v8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B820D4C(v2, 0);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_20B9ADB48(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-1] - v5;
  sub_20B9B0CA8(a1, &v12[-1] - v5);
  v7 = type metadata accessor for WorkoutPlanScheduleMetadata();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v8, &qword_27C768710);
  swift_endAccess();
  sub_20BC1B954(v15);
  v9 = v16 / 7 + 1;
  if ((*(v2 + 72) & 1) != 0 || *(v2 + 64) != v9)
  {
    *(v2 + 64) = v9;
    *(v2 + 72) = 0;
    v10 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v10, v13, &qword_27C768730);
    if (v14)
    {
      sub_20B51CC64(v13, v12);
      sub_20B520158(v13, &qword_27C768730);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_20BBB2E84(v9, *(a1 + *(v7 + 28)));
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_20B520158(v13, &qword_27C768730);
    }
  }
}

uint64_t sub_20B9ADD64(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v91 = a4;
  v99 = a3;
  v86 = a2;
  v7 = sub_20C13BB84();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = (&v77 - v10);
  v11 = type metadata accessor for WorkoutPlanScheduleMetadata();
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v93 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20C132E94();
  v98 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v77 - v15;
  v16 = sub_20C133154();
  v96 = *(v16 - 8);
  v97 = v16;
  MEMORY[0x28223BE20](v16);
  v95 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20C135814();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v77 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v84 = &v77 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v77 - v24;
  v26 = sub_20C133954();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v100 = a1;
  v28(v25, a1, v26);
  v29 = *(v27 + 56);
  v29(v25, 0, 1, v26);
  v30 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_workoutPlan;
  swift_beginAccess();
  v31 = v5 + v30;
  v32 = v5;
  sub_20B5DF2D4(v25, v31, &unk_27C76A970);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
  swift_beginAccess();
  v80 = v33;
  sub_20B52F9E8(v32 + v33, v108, &qword_27C768730);
  if (v109)
  {
    v79 = v32;
    sub_20B51CC64(v108, v105);
    sub_20B520158(v108, &qword_27C768730);
    v34 = *__swift_project_boxed_opaque_existential_1(v105, v106);
    v35 = v100;
    v28(v25, v100, v26);
    v29(v25, 0, 1, v26);
    v36 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
    swift_beginAccess();
    sub_20B5DF2D4(v25, v34 + v36, &unk_27C76A970);
    swift_endAccess();
    v37 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanTemplate;
    swift_beginAccess();
    v38 = v34 + v37;
    v39 = v86;
    sub_20B9B1318(v86, v38);
    swift_endAccess();
    v40 = *(v34 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanScheduleShelf);
    v28(v25, v35, v26);
    v29(v25, 0, 1, v26);
    v41 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlan;
    swift_beginAccess();
    sub_20B5DF2D4(v25, v40 + v41, &unk_27C76A970);
    swift_endAccess();
    v42 = OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_workoutPlanTemplate;
    swift_beginAccess();
    sub_20B9B1318(v39, v40 + v42);
    swift_endAccess();
    *(v40 + OBJC_IVAR____TtC9SeymourUI25WorkoutPlanScheduleShelfX_completedReferencesMetrics) = v99;

    sub_20BBB31D0(0);
    v43 = v84;
    sub_20B52F9E8(v39, v84, &unk_27C762300);
    v44 = *(v87 + 48);
    v45 = v85;
    v46 = v44(v43, 1);
    sub_20B520158(v43, &unk_27C762300);
    v47 = v93;
    if (v46 != 1 && swift_unknownObjectWeakLoadStrong())
    {
      v48 = v78;
      sub_20B52F9E8(v40 + v42, v78, &unk_27C762300);
      v49 = v45;
      if ((v44)(v48, 1, v45))
      {
        sub_20B520158(v48, &unk_27C762300);
        v50 = sub_20BD3F6C8();
        v52 = v51;
      }

      else
      {
        v54 = v87;
        v55 = v77;
        (*(v87 + 16))(v77, v48, v45);
        sub_20B520158(v48, &unk_27C762300);
        v50 = sub_20C1357F4();
        v52 = v56;
        (*(v54 + 8))(v55, v49);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_20BC6756C(v50, v52);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v105);
    v53 = v101;
    v32 = v79;
  }

  else
  {
    sub_20B520158(v108, &qword_27C768730);
    v53 = v101;
    v47 = v93;
  }

  v57 = v95;
  sub_20C133014();
  v58 = v88;
  sub_20C132E84();
  v59 = v94;
  sub_20C132D64();
  v60 = *(v98 + 8);
  v60(v58, v53);
  v61 = v92;
  if (v91)
  {
    v62 = v100;
    v64 = sub_20B9B0D68(v91, v100, v57, v59);
    v65 = v99;
  }

  else
  {
    v64 = 0;
    v63 = 1;
    v65 = v99;
    v62 = v100;
  }

  sub_20B9AEA28(v62, v59, v57, v65, v64, v63 & 1, v61);
  if ((*(v89 + 48))(v61, 1, v90) == 1)
  {
    sub_20B520158(v61, &qword_27C768710);
    v66 = v81;
    sub_20C13B454();
    v67 = sub_20C13BB74();
    v68 = sub_20C13D1D4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_20B517000, v67, v68, "[WorkoutPlanCalendarCoordinator] Failed to derive metadata for active plan", v69, 2u);
      MEMORY[0x20F2F6A40](v69, -1, -1);
    }

    (*(v82 + 8))(v66, v83);
    v60(v59, v101);
    return (*(v96 + 8))(v57, v97);
  }

  else
  {
    sub_20B9B12B4(v61, v47);
    sub_20B9ADB48(v47);
    swift_beginAccess();
    sub_20B52F9E8(v32 + 24, v108, &qword_27C768738);
    if (v109)
    {
      sub_20B51CC64(v108, v105);
      sub_20B520158(v108, &qword_27C768738);
      __swift_project_boxed_opaque_existential_1(v105, v106);
      sub_20B9E4C94(*(v47 + 8), 0, 0);
      __swift_destroy_boxed_opaque_existential_1(v105);
    }

    else
    {
      sub_20B520158(v108, &qword_27C768738);
    }

    sub_20B52F9E8(v32 + 24, v108, &qword_27C768738);
    if (v109)
    {
      sub_20B51CC64(v108, v103);
      sub_20B520158(v108, &qword_27C768738);
      __swift_project_boxed_opaque_existential_1(v103, v104);
      sub_20BC1B954(v105);
      v71 = v107;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_20B820D4C(v71, 0);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v103);
    }

    else
    {
      sub_20B520158(v108, &qword_27C768738);
    }

    sub_20B52F9E8(v32 + v80, v103, &qword_27C768730);
    if (v104)
    {
      sub_20B51CC64(v103, v102);
      sub_20B520158(v103, &qword_27C768730);
      v72 = __swift_project_boxed_opaque_existential_1(v102, v102[3]);
      sub_20BC1B954(v108);
      v73 = v110;
      v74 = *v72;
      *(*v72 + 24) = v110;
      sub_20BCD20D4(v73);
      v75 = *(v74 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanScheduleShelf);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_20B9B0A6C(v75, v73, 0, Strong);
        swift_unknownObjectRelease();
      }

      v60(v59, v101);
      (*(v96 + 8))(v57, v97);
      sub_20B9B0D0C(v47);
      return __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      v60(v59, v101);
      (*(v96 + 8))(v57, v97);
      sub_20B9B0D0C(v47);
      return sub_20B520158(v103, &qword_27C768730);
    }
  }
}

uint64_t sub_20B9AEA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v101 = a6;
  v100 = a5;
  v119 = a4;
  v106 = a2;
  v116 = a7;
  v117 = type metadata accessor for WorkoutPlanScheduleMetadata();
  v120 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v102 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768710);
  MEMORY[0x28223BE20](v10 - 8);
  v99 = &v86 - v11;
  v108 = sub_20C1327F4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v105 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = &v86 - v16;
  v122 = sub_20C135214();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v114 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C133594();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C132E94();
  v123 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v113 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v27 - 8);
  v112 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v86 - v30;
  sub_20C133944();
  sub_20C133564();
  v32 = *(v19 + 8);
  v111 = v18;
  v110 = v19 + 8;
  v32(v21, v18);
  v109 = a3;
  sub_20C132D74();
  v33 = v123 + 8;
  v34 = *(v123 + 8);
  v115 = v22;
  v34(v26, v22);
  v130 = sub_20B6B4970(MEMORY[0x277D84F90]);
  sub_20B9AC13C(v119, &v130);
  v35 = v118;
  sub_20C133914();
  v96 = v32;
  v95 = v26;
  v119 = v34;
  v97 = v33;
  v98 = a1;
  v36 = v121;
  v37 = v122;
  (*(v121 + 56))(v35, 0, 1, v122);
  v38 = v114;
  (*(v36 + 32))(v114, v35, v37);
  v39 = v112;
  sub_20B52F9E8(v31, v112, &qword_27C762AC0);
  v40 = v123;
  v41 = v115;
  if ((*(v123 + 48))(v39, 1, v115) == 1)
  {
    (*(v36 + 8))(v38, v37);
    sub_20B520158(v31, &qword_27C762AC0);
    sub_20B520158(v39, &qword_27C762AC0);
    (*(v120 + 56))(v116, 1, 1, v117);
  }

  v118 = v31;
  v86 = 0;
  (*(v40 + 32))(v113, v39, v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88);
  v44 = sub_20C133134();
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~v46;
  v93 = *(v45 + 72);
  v92 = v46;
  v94 = v43;
  v48 = swift_allocObject();
  v88 = xmmword_20C14F980;
  *(v48 + 16) = xmmword_20C14F980;
  v49 = *(v45 + 104);
  v90 = *MEMORY[0x277CC9968];
  v91 = v45 + 104;
  v89 = v49;
  v49(v48 + v47);
  sub_20BE8D12C(v48);
  swift_setDeallocating();
  v50 = *(v45 + 8);
  v112 = v44;
  v87 = v50;
  v50(v48 + v47, v44);
  swift_deallocClassInstance();
  v51 = v21;
  sub_20C133944();
  v52 = v95;
  sub_20C133564();
  v96(v51, v111);
  v53 = v105;
  sub_20C133054();
  v54 = v115;

  v119(v52, v54);
  v106 = sub_20C132774();
  LOBYTE(v48) = v55;
  v56 = v53;
  v57 = v108;
  v107 = *(v107 + 8);
  (v107)(v56, v108);
  if (v48 & 1) != 0 || (v58 = swift_allocObject(), *(v58 + 16) = v88, v59 = v112, v89(v58 + v47, v90, v112), sub_20BE8D12C(v58), swift_setDeallocating(), v87(v58 + v47, v59), swift_deallocClassInstance(), sub_20C133944(), sub_20C133564(), v96(v51, v111), v60 = v104, sub_20C133054(), v54 = v115, , v119(v52, v54), v61 = sub_20C132774(), LOBYTE(v58) = v62, (v107)(v60, v57), (v58))
  {
    (*(v121 + 8))(v114, v122);
    sub_20B520158(v118, &qword_27C762AC0);
    (*(v120 + 56))(v116, 1, 1, v117);
    v119(v113, v54);
  }

  v63 = v114;
  result = sub_20C135204();
  v64 = result + v61;
  if (__OFADD__(result, v61))
  {
    __break(1u);
    goto LABEL_25;
  }

  v65 = v64 + 1;
  v66 = v103;
  v67 = v102;
  if (__OFADD__(v64, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v68 = v64 + 4;
  if (__OFADD__(v65, 3))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v69 = v68 - v68 % 7;
  v70 = v117;
  if (__OFSUB__(v68, v68 % 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v69 >= v65)
  {
    goto LABEL_16;
  }

  v71 = ceil(v65 / 7.0);
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v71 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v69 = 7 * v71;
  if ((v71 * 7) >> 64 == v69 >> 63)
  {
LABEL_16:
    v72 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
    swift_beginAccess();
    v73 = v66 + v72;
    v74 = v99;
    sub_20B52F9E8(v73, v99, &qword_27C768710);
    if ((*(v120 + 48))(v74, 1, v70))
    {
      v75 = &qword_27C768710;
      v76 = v74;
    }

    else
    {
      sub_20B9B0CA8(v74, v67);
      sub_20B520158(v74, &qword_27C768710);
      sub_20BC1B954(v131);
      v124 = v131[0];
      v125 = v131[1];
      *v126 = *v132;
      *&v126[10] = *&v132[10];
      sub_20B821784(v131, &v127);
      result = sub_20B9B0D0C(v67);
      *(v129 + 10) = *&v126[10];
      v128 = v125;
      v129[0] = *v126;
      v127 = v124;
      if (!*(&v125 + 1) || *(&v129[0] + 1) < v69)
      {
LABEL_22:
        if ((v69 & 0x8000000000000000) == 0)
        {
          MEMORY[0x28223BE20](result);
          v77 = v106;
          *(&v86 - 12) = v61;
          *(&v86 - 11) = v77;
          *(&v86 - 10) = &v127;
          *(&v86 - 9) = v78;
          *(&v86 - 64) = v79 & 1;
          v80 = v113;
          *(&v86 - 7) = v66;
          *(&v86 - 6) = v80;
          *(&v86 - 5) = v81;
          *(&v86 - 4) = v64;
          *(&v86 - 3) = v82;
          *(&v86 - 2) = &v130;
          v83 = sub_20B5E6DF4(sub_20B9B0C60, (&v86 - 14), 0, v69);
          (*(v121 + 8))(v63, v122);
          sub_20B520158(v118, &qword_27C762AC0);
          v84 = v116;
          v85 = v115;
          (*(v123 + 16))(v116 + *(v70 + 24), v80, v115);
          *v84 = v61;
          v84[1] = v83;
          *(v84 + *(v70 + 28)) = v69 / 7;
          (*(v120 + 56))(v84, 0, 1, v70);
          v124 = v127;
          v125 = v128;
          *v126 = v129[0];
          *&v126[10] = *(v129 + 10);
          sub_20B520158(&v124, &qword_27C768718);
          v119(v80, v85);
        }

        goto LABEL_28;
      }

      v124 = v127;
      v125 = v128;
      *v126 = v129[0];
      *&v126[10] = *(v129 + 10);
      v75 = &qword_27C768718;
      v76 = &v124;
    }

    result = sub_20B520158(v76, v75);
    v127 = 0u;
    v128 = 0u;
    memset(v129, 0, 26);
    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20B9AF9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135C54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = a1;
  sub_20C137284();
  sub_20C135C04();
  v12 = *(v9 + 8);
  v12(v11, v8);
  v13 = sub_20C135204();
  (*(v5 + 8))(v7, v4);
  v14 = v13;
  if (*(*a2 + 16) && (sub_20B65AFAC(v13), (v15 & 1) != 0))
  {
    v16 = sub_20BC4810C(v25, v13);
    if (*v17)
    {
      sub_20C137284();
      v18 = sub_20C135C34();
      v12(v11, v8);
      sub_20B703590(&v26, v18);
    }

    return (v16)(v25, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    sub_20C137284();
    v21 = sub_20C135C34();
    v12(v11, v8);
    *(inited + 32) = v21;
    v22 = sub_20BE8D44C(inited);
    swift_setDeallocating();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *a2;
    *a2 = 0x8000000000000000;
    result = sub_20B91E34C(v22, v14, isUniquelyReferenced_nonNull_native);
    *a2 = v25[0];
  }

  return result;
}

uint64_t sub_20B9AFCCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v100 = a8;
  v96 = a7;
  LODWORD(v93) = a6;
  v101 = a5;
  v102 = a3;
  v86 = sub_20C135214();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C1327F4();
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x28223BE20](v19);
  v98 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C133134();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v84 - v26;
  v28 = sub_20C132E94();
  v103 = *(v28 - 8);
  v104 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v105 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v97 = a2;
  v99 = v31 - a2;
  if (__OFSUB__(v31, a2))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = *(a4 + 24);
  v90 = v13;
  v92 = a4;
  if (v32)
  {
    v33 = v31 == *(a4 + 40);
  }

  else
  {
    v34 = v102;
    if (v102 < 0)
    {
      v33 = v99 == 0;
    }

    else
    {
      if ((v93 & 1) == 0)
      {
        v34 = v101;
      }

      v33 = v99 == v34;
    }
  }

  v35 = v33;
  v88 = v35;
  v36 = v31;
  v89 = a9;
  v37 = *MEMORY[0x277CC9968];
  v38 = *(v22 + 104);
  v38(v24, v37, v21, v29);
  v93 = v36;
  v91 = a10;
  sub_20C1330F4();
  (*(v22 + 8))(v24, v21);
  v40 = v103;
  v39 = v104;
  if ((*(v103 + 48))(v27, 1, v104) == 1)
  {
    sub_20B520158(v27, &qword_27C762AC0);
    *&v106[0] = 0;
    *(&v106[0] + 1) = 0xE000000000000000;
    sub_20C13DC94();

    *&v106[0] = 0xD000000000000011;
    *(&v106[0] + 1) = 0x800000020C1A2AD0;
    sub_20B9B13EC(&qword_27C768720, MEMORY[0x277CC9578]);
    v80 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v80);

    MEMORY[0x20F2F4230](544825888, 0xE400000000000000);
    v110 = v93;
    v81 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v81);

    MEMORY[0x20F2F4230](0x7379616420, 0xE500000000000000);
    goto LABEL_41;
  }

  (*(v40 + 32))(v105, v27, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88);
  v41 = *(v22 + 72);
  v42 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20C1517D0;
  v44 = v43 + v42;
  (v38)(v44, v37, v21);
  (v38)(v44 + v41, *MEMORY[0x277CC9998], v21);
  (v38)(v44 + 2 * v41, *MEMORY[0x277CC99B8], v21);
  sub_20BE8D12C(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v45 = v98;
  sub_20C133064();

  v87 = sub_20C132774();
  if (v46 & 1) != 0 || (v101 = sub_20C132784(), (v47) || (sub_20C1327D4(), (v48))
  {
LABEL_37:
    *&v106[0] = 0;
    *(&v106[0] + 1) = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD000000000000029, 0x800000020C1A2AF0);
    v110 = v93;
    v78 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v78);

    MEMORY[0x20F2F4230](0x206D6F726620, 0xE600000000000000);
    sub_20B9B13EC(&qword_27C768720, MEMORY[0x277CC9578]);
    v79 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v79);

LABEL_41:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  v49 = sub_20C133024();
  LODWORD(v100) = MEMORY[0x20F2EF6F0]();
  v50 = v93;
  v51 = v92;
  v52 = v99;
  v53 = v97;
  if (v100 == 7)
  {
    *&v106[0] = 0;
    *(&v106[0] + 1) = 0xE000000000000000;
    sub_20C13DC94();

    *&v106[0] = 0xD000000000000028;
    *(&v106[0] + 1) = 0x800000020C1A2B20;
    v110 = v49;
    v82 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v82);

    goto LABEL_41;
  }

  v54 = 1;
  v55 = v105;
  if (v93 >= v97 && v93 <= a11)
  {
    v56 = sub_20C1338A4();
    v57 = v84;
    sub_20C1351F4();
    if (!*(v56 + 16) || (v58 = sub_20B65B35C(v57), (v59 & 1) == 0))
    {

      (*(v85 + 8))(v57, v86);
      v54 = 2;
      v55 = v105;
      goto LABEL_31;
    }

    v91 = a13;
    v60 = *(*(v56 + 56) + 8 * v58);
    v61 = *(v85 + 8);

    v61(v57, v86);

    v62 = *v91;
    if (*(*v91 + 16) && (v63 = sub_20B65AFAC(v52), (v64 & 1) != 0))
    {
      v65 = *(*(*(v62 + 56) + 8 * v63) + 16);
      v66 = *(v60 + 16);

      if (v65 == v66)
      {
        v54 = 0;
        v55 = v105;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v55 = v105;
    if (!__OFADD__(v102, v53))
    {
      if (v50 < v102 + v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 4;
      }

      goto LABEL_31;
    }

    goto LABEL_36;
  }

LABEL_31:
  v67 = sub_20BAB0864();
  if (!v68)
  {
    *&v106[0] = 0;
    *(&v106[0] + 1) = 0xE000000000000000;
    sub_20C13DC94();

    *&v106[0] = 0xD00000000000002FLL;
    *(&v106[0] + 1) = 0x800000020C1A2B50;
    v83 = sub_20C132DA4();
    MEMORY[0x20F2F4230](v83);

    goto LABEL_41;
  }

  v69 = v67;
  v70 = v68;
  v71 = v52;
  v72 = v52 == v102;
  (*(v94 + 8))(v45, v95);
  result = (*(v103 + 8))(v55, v104);
  v74 = v88;
  v75 = v87;
  if (v88)
  {
    v76 = *(v51 + 16);
    v106[0] = *v51;
    v106[1] = v76;
    v107[0] = *(v51 + 32);
    *(v107 + 10) = *(v51 + 42);
    *v51 = v87;
    *(v51 + 8) = v74;
    *(v51 + 9) = v72;
    *(v51 + 10) = v108;
    *(v51 + 14) = v109;
    *(v51 + 16) = v69;
    *(v51 + 24) = v70;
    *(v51 + 32) = v101;
    *(v51 + 40) = v50;
    *(v51 + 48) = v71;
    *(v51 + 56) = v54;
    *(v51 + 57) = v100;

    result = sub_20B520158(v106, &qword_27C768718);
  }

  v77 = v89;
  *v89 = v75;
  *(v77 + 8) = v74;
  *(v77 + 9) = v72;
  *(v77 + 10) = v108;
  *(v77 + 7) = v109;
  v77[2] = v69;
  v77[3] = v70;
  v77[4] = v101;
  v77[5] = v50;
  v77[6] = v71;
  *(v77 + 56) = v54;
  *(v77 + 57) = v100;
  return result;
}

uint64_t sub_20B9B07CC()
{

  sub_20B520158(v0 + 24, &qword_27C768738);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata, &qword_27C768710);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate, &qword_27C768730);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_workoutPlan, &unk_27C76A970);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanCalendarCoordinator()
{
  result = qword_27C7686F8;
  if (!qword_27C7686F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9B08F4()
{
  sub_20B9B0A18(319, &qword_27C768708, type metadata accessor for WorkoutPlanScheduleMetadata);
  if (v0 <= 0x3F)
  {
    sub_20B9B0A18(319, &qword_27C7629F8, MEMORY[0x277D50180]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B9B0A18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20B9B0A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v18 = a3;
  v19 = a2;
  v5 = sub_20C133244();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4;
  v8 = *(a4 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    for (i = v8 + 32; ; i += 16)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      v12 = sub_20C132EC4();
      swift_unknownObjectRelease();
      if (v12)
      {
        break;
      }

      if (v9 == ++v10)
      {
        return;
      }
    }

    MEMORY[0x20F2EA980](v19, v10);
    v13 = *(v20 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView);
    v14 = sub_20C133234();
    if (v14 < [v13 numberOfSections])
    {
      v15 = sub_20C133224();
      if (v15 < [v13 numberOfItemsInSection_])
      {
        v16 = sub_20C1331B4();
        [v13 scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:v18 & 1];
      }
    }

    (*(v21 + 8))(v7, v22);
  }
}

uint64_t sub_20B9B0CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduleMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9B0D0C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduleMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B9B0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v37 = a1;
  v4 = sub_20C13BB84();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135214();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C133594();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C132E94();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C1327F4();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88);
  v16 = sub_20C133134();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F980;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x277CC9968], v16);
  sub_20BE8D12C(v19);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  swift_deallocClassInstance();
  sub_20C133944();
  sub_20C133564();
  (*(v39 + 8))(v9, v41);
  sub_20C133054();

  (*(v10 + 8))(v12, v40);
  v20 = sub_20C132774();
  LOBYTE(v19) = v21;
  result = (*(v13 + 8))(v15, v38);
  if (v19)
  {
    return v20;
  }

  v23 = __OFADD__(v20, v37);
  v20 += v37;
  if (!v23)
  {
    v24 = v36;
    sub_20C133914();
    v29 = sub_20C135204();
    (*(v31 + 8))(v24, v32);
    if (v20 < 0 || v20 >= v29)
    {
      v25 = v33;
      sub_20C13B454();
      v26 = sub_20C13BB74();
      v27 = sub_20C13D1F4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_20B517000, v26, v27, "Attempted to access entry beyond valid workout plan entries. Returning nil.", v28, 2u);
        MEMORY[0x20F2F6A40](v28, -1, -1);
      }

      (*(v34 + 8))(v25, v35);
      return 0;
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B9B12B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduleMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9B1318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9B1388()
{
  type metadata accessor for WorkoutPlanScheduleMetadata();
  v1 = *(v0 + 16);

  return sub_20B9ADA50(v1);
}

uint64_t sub_20B9B13EC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20B9B148C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_20B9B14D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20B9B1534(uint64_t a1)
{
  sub_20B9B3180(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v3 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v4 = v3;
  v5 = sub_20B9B32F4(a1);
  v6 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v7;
  v9 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v9;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v11 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v12 = sub_20C13C744();

  v13 = [v10 initWithString:v11 attributes:v12];

  return v13;
}

id sub_20B9B16E0()
{
  sub_20B9B36A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v1 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 lightGrayColor];
  v5 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v6;
  v8 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v8;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v11 = sub_20C13C744();

  v12 = [v9 initWithString:v10 attributes:v11];

  return v12;
}

void sub_20B9B18B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v64 - v3;
  sub_20C134904();
  sub_20BB09168(&v81, v5);
  if (!v1)
  {
    v6 = v82;
    v78 = v81;
    sub_20C1348F4();
    sub_20BB09168(&v81, v7);
    v84 = 0;
    v72 = v0;
    v8 = v82;
    v76 = v83;
    v77 = v81;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();

    v11 = [v10 bundleForClass_];
    v74 = sub_20C132964();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v12 = swift_allocObject();
    v73 = xmmword_20C14F320;
    *(v12 + 16) = xmmword_20C14F320;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = sub_20B5D91B8();
    v15 = v77;
    v16 = v78;
    *(v12 + 32) = v78;
    *(v12 + 40) = v6;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v15;
    v75 = v8;
    *(v12 + 80) = v8;

    v17 = sub_20C13C924();
    v19 = v18;

    v74 = v17;
    v81 = v17;
    v82 = v19;
    v76 = v19;
    v79 = v16;
    v80 = v6;
    v20 = sub_20C132FD4();
    v21 = *(*(v20 - 8) + 56);
    v21(v4, 1, 1, v20);
    sub_20B5F6EB0();
    v22 = sub_20C13DA24();
    v78 = v23;
    LOBYTE(v17) = v24;
    sub_20B86DA48(v4);

    if (v17)
    {

LABEL_7:

      sub_20B9B3DCC();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v71 = v22;
    v25 = v76;
    v81 = v74;
    v82 = v76;
    v79 = v77;
    v80 = v75;
    v21(v4, 1, 1, v20);
    v26 = sub_20C13DA24();
    v28 = v27;
    v30 = v29;
    sub_20B86DA48(v4);

    if (v30)
    {
      goto LABEL_7;
    }

    v81 = v71;
    v82 = v78;
    v31 = v74;
    v79 = v74;
    v80 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768748);
    sub_20B9B3E20();
    v32 = sub_20C13D8A4();
    v70 = v33;
    v71 = v32;
    v81 = v26;
    v82 = v28;
    v79 = v31;
    v80 = v25;

    v34 = sub_20C13D8A4();
    v36 = v35;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    *(inited + 16) = v73;
    v39 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v40 = objc_opt_self();
    v69 = v39;
    v41 = [v40 heartRateColors];
    if (v41)
    {
      v42 = v41;
      v78 = v37;
      v67 = v36;
      v68 = v34;
      v43 = [v41 nonGradientTextColor];

      if (v43)
      {
        v44 = sub_20B51C88C(0, &qword_27C762070);
        *(inited + 40) = v43;
        v45 = *MEMORY[0x277D740A8];
        *(inited + 64) = v44;
        *(inited + 72) = v45;
        v46 = v44;
        v66 = v45;
        v47 = sub_20B9B2B40();
        v65 = sub_20B51C88C(0, &qword_27C767A60);
        *(inited + 104) = v65;
        *(inited + 80) = v47;
        sub_20B6B1650(inited);
        swift_setDeallocating();
        v64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
        swift_arrayDestroy();
        v48 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v49 = sub_20C13C914();

        type metadata accessor for Key(0);
        v77 = v50;
        v76 = sub_20B76322C();
        v51 = sub_20C13C744();

        v75 = [v48 initWithString:v49 attributes:v51];

        v52 = swift_initStackObject();
        *(v52 + 16) = v73;
        v53 = v69;
        *(v52 + 32) = v69;
        v54 = objc_opt_self();
        v64[0] = v54;
        v74 = v53;
        *(v52 + 40) = [v54 whiteColor];
        v55 = v46;
        *(v52 + 64) = v46;
        v56 = v66;
        *(v52 + 72) = v66;
        v57 = sub_20B9B2B40();
        v58 = v65;
        *(v52 + 104) = v65;
        *(v52 + 80) = v57;
        sub_20B6B1650(v52);
        swift_setDeallocating();
        swift_arrayDestroy();
        v59 = sub_20C13C744();

        [v75 setAttributes:v59 range:{v71, v70}];

        v60 = swift_initStackObject();
        *(v60 + 16) = v73;
        *(v60 + 32) = v74;
        *(v60 + 40) = [v64[0] whiteColor];
        *(v60 + 64) = v55;
        *(v60 + 72) = v56;
        v61 = sub_20B9B2B40();
        *(v60 + 104) = v58;
        *(v60 + 80) = v61;
        sub_20B6B1650(v60);
        swift_setDeallocating();
        swift_arrayDestroy();
        v62 = sub_20C13C744();

        v63 = v75;
        [v75 setAttributes:v62 range:{v68, v67}];

        [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
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

void sub_20B9B20E4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v3 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 elapsedTimeColors];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 nonGradientTextColor];

    if (v8)
    {
      v9 = sub_20B51C88C(0, &qword_27C762070);
      *(inited + 40) = v8;
      v10 = *MEMORY[0x277D740A8];
      *(inited + 64) = v9;
      *(inited + 72) = v10;
      v11 = v10;
      v12 = sub_20B9B2B40();
      *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
      *(inited + 80) = v12;
      sub_20B6B1650(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
      swift_arrayDestroy();
      v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v14 = sub_20C13C914();

      type metadata accessor for Key(0);
      sub_20B76322C();
      v15 = sub_20C13C744();

      [v13 initWithString:v14 attributes:v15];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20B9B2370()
{
  SessionBurnBarPackPosition.description.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v1 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = v1;
  v4 = [v2 initWithRed:0.984313725 green:0.196078431 blue:0.419607843 alpha:1.0];
  v5 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v6;
  v8 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v8;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v11 = sub_20C13C744();

  v12 = [v9 initWithString:v10 attributes:v11];

  return v12;
}

id sub_20B9B2558()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v3 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v5 = v3;
  v6 = [v4 initWithRed:0.984313725 green:0.196078431 blue:0.419607843 alpha:{1.0, 0xE000000000000000}];
  v7 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v8;
  v10 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v10;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v13 = sub_20C13C744();

  v14 = [v11 initWithString:v12 attributes:v13];

  return v14;
}

id sub_20B9B28BC(unsigned __int8 a1)
{
  if (!a1)
  {
    return a1;
  }

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v4 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 lightGrayColor];
  v8 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v9;
  v11 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v11;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v14 = sub_20C13C744();

  v15 = [v12 initWithString:v13 attributes:v14];

  return v15;
}

id sub_20B9B2B40()
{
  v0 = sub_20C138104();
  if (v0 == sub_20C138104())
  {
    v1 = 45.0;
  }

  else
  {
    v1 = 20.0;
  }

  v2 = *MEMORY[0x277D74410];
  v3 = *MEMORY[0x277D74368];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:v1 weight:v2];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithDesign_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = [v4 fontWithDescriptor:v6 size:0.0];

  v10 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v11 = [v10 scaledFontForFont_];

  return v11;
}

id sub_20B9B2CA0()
{
  v0 = sub_20C138104();
  if (v0 == sub_20C138104())
  {
    v1 = 35.0;
  }

  else
  {
    v1 = 15.0;
  }

  v2 = *MEMORY[0x277D74410];
  v3 = *MEMORY[0x277D74368];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:v1 weight:v2];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithDesign_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = [v4 fontWithDescriptor:v6 size:0.0];

  v10 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v11 = [v10 scaledFontForFont_];

  return v11;
}

id sub_20B9B2E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v1 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 whiteColor];
  v5 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v6;
  v8 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v8;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_20C13C914();
  type metadata accessor for Key(0);
  sub_20B76322C();
  v11 = sub_20C13C744();

  v12 = [v9 initWithString:v10 attributes:v11];

  return v12;
}

id sub_20B9B2FC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v1 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 lightGrayColor];
  v5 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v6;
  v8 = sub_20B9B2CA0();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v8;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_20C13C914();
  type metadata accessor for Key(0);
  sub_20B76322C();
  v11 = sub_20C13C744();

  v12 = [v9 initWithString:v10 attributes:v11];

  return v12;
}

uint64_t sub_20B9B3180(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_20C132964();

    return v3;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B9B32F4(uint64_t a1)
{
  if ((a1 - 2) < 2)
  {
    v1 = [objc_opt_self() energyColors];
    if (!v1)
    {
      __break(1u);
      goto LABEL_14;
    }

    v2 = v1;
    v3 = [v1 nonGradientTextColor];

    if (v3)
    {
      return v3;
    }

    __break(1u);
  }

  if (a1)
  {
    goto LABEL_9;
  }

  v4 = [objc_opt_self() sedentaryColors];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v3 = [v4 nonGradientTextColor];

  if (v3)
  {
    return v3;
  }

  __break(1u);
LABEL_9:
  if (a1 == 1)
  {
    v6 = [objc_opt_self() briskColors];
    if (v6)
    {
      v7 = v6;
      v3 = [v6 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

id sub_20B9B3470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20B9B3C50(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F980;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_20B5D91B8();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;

  sub_20C13C924();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v8 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v9 = v8;
  v10 = sub_20B9B32F4(a1);
  v11 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = v12;
  v14 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v14;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v17 = sub_20C13C744();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_20B9B36A4()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = sub_20C13ADC4();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14F980;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_20B5D91B8();
    *(v7 + 32) = v3;
    *(v7 + 40) = v4;
    v8 = sub_20C13C924();
  }

  else
  {
    type metadata accessor for SeymourLocalizationBundle();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v8 = sub_20C132964();
  }

  return v8;
}

id sub_20B9B38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20B9B3B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F980;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_20B5D91B8();
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  sub_20C13C924();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9 = v7;
  v10 = [v8 initWithRed:0.984313725 green:0.196078431 blue:0.419607843 alpha:1.0];
  v11 = sub_20B51C88C(0, &qword_27C762070);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = v12;
  v14 = sub_20B9B2B40();
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v14;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v17 = sub_20C13C744();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_20B9B3B18()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();

  return v2;
}

uint64_t sub_20B9B3C50(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_20C132964();

    return v3;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

unint64_t sub_20B9B3DCC()
{
  result = qword_27C768740;
  if (!qword_27C768740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768740);
  }

  return result;
}

unint64_t sub_20B9B3E20()
{
  result = qword_27C768750;
  if (!qword_27C768750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C768748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768750);
  }

  return result;
}

unint64_t sub_20B9B3E98()
{
  result = qword_27C768758;
  if (!qword_27C768758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768758);
  }

  return result;
}

uint64_t sub_20B9B3EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_20C1344C4();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135AE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v13, v12, &qword_27C7620C8);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_20B520158(v12, &qword_27C7620C8);
    v21 = 1;
    v14 = swift_allocObject();
    *(v14 + 16) = 5;
    *(v14 + 20) = v21;
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_20B520158(v12, &qword_27C7620C8);
    sub_20C135AA4();
    (*(v7 + 8))(v9, v6);
    v16 = sub_20C134324();
    v18 = v17;
    (*(v19 + 8))(v5, v3);
    sub_20B8C9E3C(v16, v18, v20);
  }
}

uint64_t sub_20B9B41E8(int a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_20C1344C4();
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v62 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_20C135AE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v20, v13, &qword_27C7620C8);
  v21 = v15;
  v22 = *(v15 + 48);
  v23 = v14;
  if (v22(v13, 1, v14) == 1)
  {
    return sub_20B520158(v13, &qword_27C7620C8);
  }

  v25 = v21;
  v26 = *(v21 + 32);
  v27 = v19;
  v28 = v3;
  v54 = v23;
  v55 = v27;
  v26();
  v29 = v26;
  v30 = v57;
  sub_20C135AA4();
  v31 = sub_20C134324();
  v33 = v32;
  (*(v58 + 8))(v30, v28);
  v34 = v62;
  sub_20B8CA380(v31, v33, v62);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v56;
  v37 = v54;
  (*(v25 + 16))(v56, v55, v54);
  v38 = v25;
  v39 = (*(v25 + 80) + 25) & ~*(v25 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v60;
  (v29)(v40 + v39, v36, v37);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_20B9B7C5C;
  *(v41 + 24) = v40;
  v43 = v64;
  v42 = v65;
  v44 = v61;
  (*(v64 + 16))(v61, v34, v65);
  v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v46 = (v59 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v45, v44, v42);
  v48 = (v47 + v46);
  *v48 = sub_20B9B7CE0;
  v48[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v49 = v63;
  sub_20C137C94();
  (*(v43 + 8))(v34, v42);
  v50 = v67;
  v51 = sub_20C137CB4();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  v51(sub_20B52347C, v52);

  (*(v66 + 8))(v49, v50);
  return (*(v38 + 8))(v55, v37);
}

uint64_t sub_20B9B482C@<X0>(unsigned int *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  if (v8 != 1 || v7 != 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      v13 = 1;
      goto LABEL_11;
    }

    v11 = v7 | (v8 << 32);
    v12 = a2;
    goto LABEL_9;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v13 = 1;
  if (result)
  {
    v11 = 0x100000003;
    v12 = a2 & 1;
LABEL_9:
    sub_20B9B491C(v12, a3, v11);

    v13 = 0;
  }

LABEL_11:
  *a4 = v13;
  return result;
}

void sub_20B9B491C(int a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v61 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20C138094();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = a1;
  v62 = v8;
  v63 = v7;
  if ((a3 & 0x100000000) != 0)
  {
    v14 = dbl_20C166D40[a3];
    v15 = 0x3030301030300uLL >> (8 * a3);
  }

  else
  {
    v14 = *&a3;
    LOBYTE(v15) = 2;
  }

  v67 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_mediaTagStringBuilder), *(v3 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_mediaTagStringBuilder + 24));
  sub_20C1359C4();
  v16 = v67;
  v17 = sub_20C138544();

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = v17;
  *(v18 + 24) = sub_20B9B4EBC(a2);
  *(v18 + 32) = v20;
  *(v18 + 40) = v14;
  *(v18 + 48) = v15;
  v21 = sub_20C1359C4();
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v65 = v18;
    v66 = v19;
    *&v78[0] = MEMORY[0x277D84F90];
    v24 = v21;
    sub_20B526D44(0, v22, 0);
    v25 = *&v78[0];
    v26 = *(v11 + 80);
    v64 = v24;
    v27 = v24 + ((v26 + 32) & ~v26);
    v68 = *(v11 + 72);
    do
    {
      sub_20B9B7B94(v27, v13, MEMORY[0x277D53BC8]);
      v28 = MediaTag.accessibilityIdentifier.getter();
      v30 = v29;
      sub_20B9B7BFC(v13, MEMORY[0x277D53BC8]);
      *&v78[0] = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_20B526D44((v31 > 1), v32 + 1, 1);
        v25 = *&v78[0];
      }

      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v27 += v68;
      --v22;
    }

    while (v22);

    v19 = v66;
    v16 = v67;
    v18 = v65;
    v23 = MEMORY[0x277D84F90];
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  *(v18 + 56) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14F980;
  *(v34 + 32) = v18 | 0x8000000000000001;
  v69 = 0uLL;
  LOBYTE(v70) = 1;
  *(&v70 + 1) = 0;
  *&v71 = 0;
  WORD4(v71) = 128;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v34;
  *&v76[0] = v23;
  *(v76 + 8) = 0u;
  *(&v76[1] + 8) = 0u;
  *(&v76[2] + 1) = 0;
  v77 = 2;
  nullsub_1(&v69);
  v35 = v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row;
  v36 = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 144);
  v78[8] = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 128);
  v78[9] = v36;
  v79 = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 160);
  v37 = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 80);
  v78[4] = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 64);
  v78[5] = v37;
  v38 = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 112);
  v78[6] = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 96);
  v78[7] = v38;
  v39 = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 16);
  v78[0] = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row);
  v78[1] = v39;
  v40 = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 48);
  v78[2] = *(v16 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 32);
  v78[3] = v40;
  v41 = v76[2];
  *(v35 + 128) = v76[1];
  *(v35 + 144) = v41;
  *(v35 + 160) = v77;
  v42 = v74;
  *(v35 + 64) = v73;
  *(v35 + 80) = v42;
  v43 = v76[0];
  *(v35 + 96) = v75;
  *(v35 + 112) = v43;
  v44 = v70;
  *v35 = v69;
  *(v35 + 16) = v44;
  v45 = v72;
  *(v35 + 32) = v71;
  *(v35 + 48) = v45;

  sub_20B520158(v78, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v47 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

LABEL_22:

    swift_unknownObjectRelease();
    return;
  }

  v66 = v19;
  v48 = sub_20B61DB30(v16, Strong);
  if (!v49)
  {
    sub_20C0C2D50(0);

    goto LABEL_22;
  }

  v51 = v48;
  v52 = v49;
  v53 = v50;
  v65 = v18;
  sub_20B5E2E18();
  v54 = sub_20C13D374();
  v56 = v61;
  v55 = v62;
  *v61 = v54;
  v57 = v63;
  (*(v55 + 104))(v56, *MEMORY[0x277D85200], v63);
  v58 = sub_20C13C584();
  (*(v55 + 8))(v56, v57);
  if (v58)
  {
    if ((v60 & 0x80) != 0)
    {
      sub_20C10BD28(v16, v51, v60 & 1, v47);
    }

    else
    {
      sub_20B6210F0(v51, v52, v53, v16, v60 & 1, v47);
    }

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_20B9B4EBC(uint64_t a1)
{
  v52 = sub_20C135AE4();
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C137F24();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1344C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  sub_20C135AA4();
  v18 = sub_20C134494();
  v19 = *(v9 + 8);
  v19(v17, v8);
  v20 = *(v18 + 16);

  sub_20C135AA4();
  v21 = sub_20C134374();
  v19(v14, v8);
  v22 = *(v21 + 16);

  if (__OFADD__(v20, v22))
  {
    __break(1u);
    return result;
  }

  if (v20 + v22 != 1)
  {
    v28 = v53;
    sub_20C13B534();
    v29 = v49;
    v30 = v52;
    (*(v49 + 16))(v3, a1, v52);
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v33 = 136446210;
      LODWORD(v47) = v32;
      sub_20C135AA4();
      v34 = sub_20C134344();
      v36 = v35;
      v19(v17, v8);
      (*(v29 + 8))(v3, v52);
      v37 = sub_20B51E694(v34, v36, &v54);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_20B517000, v31, v47, "[CatalogWorkoutTagsShelf] %{public}s) has more than one trainer/contributor, not showing trainer link", v33, 0xCu);
      v38 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v38, -1, -1);
      MEMORY[0x20F2F6A40](v33, -1, -1);

      (*(v50 + 8))(v53, v51);
    }

    else
    {

      (*(v29 + 8))(v3, v30);
      (*(v50 + 8))(v28, v51);
    }

    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_networkEvaluator), *(v48 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_networkEvaluator + 24));
  sub_20C13A884();
  v24 = sub_20C1350A4();
  v26 = v25;
  if (v24 == sub_20C1350A4() && v26 == v27)
  {
  }

  else
  {
    v39 = sub_20C13DFF4();

    if (v39)
    {
      return 0;
    }

    sub_20C135AA4();
    v40 = sub_20C134494();
    v19(v11, v8);
    if (*(v40 + 16))
    {
      v42 = v45;
      v41 = v46;
      v43 = v47;
      (*(v46 + 16))(v45, v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v47);

      v44 = sub_20C137F04();
      (*(v41 + 8))(v42, v43);
      return v44;
    }
  }

  return 0;
}

uint64_t sub_20B9B5488()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_networkEvaluator);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_subscriptionCache);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail, &qword_27C7620C8);
  return v0;
}

uint64_t sub_20B9B55CC()
{
  sub_20B9B5488();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogWorkoutTagsShelf()
{
  result = qword_27C768798;
  if (!qword_27C768798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9B5678()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B9B577C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B9B577C()
{
  if (!qword_27C762120)
  {
    sub_20C135AE4();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C762120);
    }
  }
}

uint64_t sub_20B9B57D4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v59 = &v50 - v8;
  v9 = sub_20C1344C4();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C135AE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  v19 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v18, &qword_27C7620C8);
  if ((*(v13 + 48))(v18, 1, v12))
  {
    sub_20B520158(v18, &qword_27C7620C8);
    v20 = v60;
    sub_20C13B534();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "Download action before workout detail was available", v23, 2u);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    return (*(v61 + 8))(v20, v62);
  }

  else
  {
    v62 = v5;
    (*(v13 + 16))(v15, v18, v12);
    sub_20B520158(v18, &qword_27C7620C8);
    sub_20C135AA4();
    (*(v13 + 8))(v15, v12);
    v25 = sub_20C134324();
    v27 = v26;
    (*(v51 + 8))(v11, v52);
    Strong = swift_unknownObjectWeakLoadStrong();
    v30 = v53;
    v29 = v54;
    v32 = v56;
    v31 = v57;
    if (Strong)
    {
      v33 = Strong;
      v34 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 8);
        ObjectType = swift_getObjectType();
        (*(v35 + 256))(v33, ObjectType, v35);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_20B8CA380(v25, v27, v29);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v25;
    *(v38 + 32) = v27;
    *(v38 + 40) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_20B9B75F4;
    *(v39 + 24) = v38;
    v40 = v58;
    (*(v32 + 16))(v58, v29, v31);
    v41 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v42 = v29;
    v43 = (v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v32 + 32))(v44 + v41, v40, v31);
    v45 = (v44 + v43);
    *v45 = sub_20B8C70B8;
    v45[1] = v39;
    v46 = v59;
    sub_20C137C94();
    (*(v32 + 8))(v42, v31);
    v47 = v55;
    v48 = sub_20C137CB4();
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v48(sub_20B52347C, v49);

    return (*(v30 + 8))(v46, v47);
  }
}

uint64_t sub_20B9B5EE4()
{
  v1 = sub_20C13BB84();
  v75 = *(v1 - 8);
  v76 = v1;
  MEMORY[0x28223BE20](v1);
  v74 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v70);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C1344C4();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135AE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v66 - v14;
  v16 = sub_20C137F24();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  v21 = v0 + v20;
  v22 = v0;
  sub_20B52F9E8(v21, v12, &qword_27C7620C8);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_20B520158(v12, &qword_27C7620C8);
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_7:
    sub_20B520158(v15, &qword_27C7671C0);
    v31 = v74;
    sub_20C13B534();
    v32 = sub_20C13BB74();
    v33 = sub_20C13D1D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20B517000, v32, v33, "Trainer link tapped before workout detail was available", v34, 2u);
      MEMORY[0x20F2F6A40](v34, -1, -1);
    }

    return (*(v75 + 8))(v31, v76);
  }

  v66 = v19;
  v67 = v17;
  v68 = v16;
  v24 = v69;
  v23 = v70;
  (*(v7 + 16))(v9, v12, v6);
  sub_20B520158(v12, &qword_27C7620C8);
  v25 = v71;
  sub_20C135AA4();
  (*(v7 + 8))(v9, v6);
  v26 = sub_20C134494();
  (*(v72 + 8))(v25, v73);
  if (*(v26 + 16))
  {
    v28 = v67;
    v27 = v68;
    (*(v67 + 16))(v15, v26 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v68);
    v29 = 0;
    v30 = v23;
  }

  else
  {
    v29 = 1;
    v30 = v23;
    v28 = v67;
    v27 = v68;
  }

  (*(v28 + 56))(v15, v29, 1, v27);
  if ((*(v28 + 48))(v15, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v36 = v66;
  (*(v28 + 32))();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v39 = sub_20C136664();
    v40 = v24;
    (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
    v41 = v30[5];
    v42 = *MEMORY[0x277D51488];
    v43 = sub_20C134F24();
    (*(*(v43 - 8) + 104))(&v24[v41], v42, v43);
    v44 = v30[6];
    v45 = sub_20C132C14();
    (*(*(v45 - 8) + 56))(&v24[v44], 1, 1, v45);
    v46 = sub_20C137EB4();
    v48 = v47;
    v49 = v30[8];
    v50 = v30;
    v51 = *MEMORY[0x277D523F8];
    v52 = sub_20C135ED4();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v40 + v49, v51, v52);
    (*(v53 + 56))(v40 + v49, 0, 1, v52);
    v54 = v50[10];
    v55 = *MEMORY[0x277D51768];
    v56 = sub_20C1352E4();
    (*(*(v56 - 8) + 104))(v40 + v54, v55, v56);
    v57 = v50[11];
    v58 = sub_20C136E94();
    (*(*(v58 - 8) + 56))(v40 + v57, 1, 1, v58);
    v59 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v60 = (v40 + v50[7]);
    *v60 = v46;
    v60[1] = v48;
    v61 = (v40 + v50[9]);
    *v61 = 0;
    v61[1] = 0;
    v62 = v50[12];
    v36 = v66;
    *(v40 + v62) = v59;
    sub_20BFA0390(v22, v40, v38);
    v63 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v64 = *(v63 + 8);
      ObjectType = swift_getObjectType();
      (*(v64 + 88))(v38, v36, ObjectType, v64);
      swift_unknownObjectRelease();
    }

    sub_20B9B7BFC(v40, type metadata accessor for ShelfMetricAction);
    swift_unknownObjectRelease();
    v28 = v67;
    v27 = v68;
  }

  return (*(v28 + 8))(v36, v27);
}

uint64_t sub_20B9B6774(unsigned int *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_20C13BB84();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v23) = v13;
    sub_20B9B6AA8(a3, a4, v12 | (v13 << 32), a5 & 1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_20B75FBFC(a3, a4, &v20);
    if (v20 == 2)
    {
      sub_20C13B4E4();

      v15 = sub_20C13BB74();
      v16 = sub_20C13D1D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_20B51E694(a3, a4, &v23);
        _os_log_impl(&dword_20B517000, v15, v16, "No download entry for identifier: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x20F2F6A40](v18, -1, -1);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      (*(v19 + 8))(v11, v9);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      if (BYTE8(v21) == 255 || (BYTE8(v21) & 1) == 0 || ((1 << v24) & 0x1DD) != 0)
      {
        if (v20 & 1) != 0 || (a5)
        {
          sub_20B75DE1C(a3, a4, &v23, 0);
        }

        else
        {
          sub_20B75D680(a3, a4, &v23);
        }
      }

      else if (v24 == 1)
      {
        sub_20B75E1A8(a3, a4, &v23, 0);
      }

      sub_20B520158(&v20, &qword_27C764BC0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B9B6AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  *(v35 + 1) = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0390(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B9B7BFC(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20B9B6EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9B6F6C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B9B7054(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9B7B94(a2, v5, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 17)
  {
    return sub_20B9B5EE4();
  }

  if (EnumCaseMultiPayload == 13)
  {
    return sub_20B9B57D4();
  }

  return sub_20B9B7BFC(v5, type metadata accessor for ShelfItemAction);
}

uint64_t sub_20B9B7138@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v6, v5, &qword_27C7620C8);
  v7 = sub_20C135AE4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    result = sub_20B520158(v5, &qword_27C7620C8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v7;
    *(a1 + 32) = &off_2822F5CE0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v8 + 32))(boxed_opaque_existential_1, v5, v7);
  }

  return result;
}

unint64_t sub_20B9B72BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7687A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = sub_20C1393B4();
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  v2 = sub_20B6B2B0C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C7687B0);
  return v2;
}

uint64_t sub_20B9B7358()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_row;
  sub_20B5D8060(v14);
  v3 = v14[9];
  *(v2 + 128) = v14[8];
  *(v2 + 144) = v3;
  *(v2 + 160) = v15;
  v4 = v14[5];
  *(v2 + 64) = v14[4];
  *(v2 + 80) = v4;
  v5 = v14[7];
  *(v2 + 96) = v14[6];
  *(v2 + 112) = v5;
  v6 = v14[1];
  *v2 = v14[0];
  *(v2 + 16) = v6;
  v7 = v14[3];
  *(v2 + 32) = v14[2];
  *(v2 + 48) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  v9 = sub_20C135AE4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_eventHub) = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v13, v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  sub_20B51C710(v13, v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_networkEvaluator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v13, v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v10 = sub_20B8CB478();
  v11 = (v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_downloadSubscriptionCoordinator);
  *v11 = v10;
  v11[1] = &off_2822B2B58;
  *(v10 + 24) = &off_2822BBA20;
  swift_unknownObjectWeakAssign();
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_downloadSubscriptionCoordinator) + 40) = &off_2822BBA08;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_20B9B7630(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a3;
  v25 = a1;
  v26 = a2;
  v4 = sub_20C1344C4();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20C135AE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-v12];
  v14 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v14, v13, &qword_27C7620C8);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    return sub_20B520158(v13, &qword_27C7620C8);
  }

  v16 = v23;
  (*(v8 + 16))(v10, v13, v7);
  sub_20B520158(v13, &qword_27C7620C8);
  sub_20C135AA4();
  v17 = sub_20C134324();
  v19 = v18;
  (*(v24 + 8))(v6, v4);
  (*(v8 + 8))(v10, v7);
  if (v17 == v25 && v19 == v26)
  {

    return sub_20B9B41E8(v16 & 1 | 0xFFFFFF80);
  }

  v21 = sub_20C13DFF4();

  if (v21)
  {
    return sub_20B9B41E8(v16 & 1 | 0xFFFFFF80);
  }

  return result;
}

void *sub_20B9B7910()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = OBJC_IVAR____TtC9SeymourUI23CatalogWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v4, v3, &qword_27C7620C8);
  v5 = sub_20C135AE4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_20B520158(v3, &qword_27C7620C8);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v5;
    v20 = &off_2822F5CE0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v6 + 32))(boxed_opaque_existential_1, v3, v5);
  }

  sub_20B52F9E8(&v18, &v15, &qword_27C764BB8);
  v12[1] = v16;
  v12[0] = v15;
  v13 = v17;
  if (*(&v16 + 1))
  {
    sub_20B51C710(v12, v14);
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_20BC06C58(0, v8[2] + 1, 1, v8);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_20BC06C58((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    sub_20B51C710(v14, &v8[5 * v10 + 4]);
  }

  else
  {
    sub_20B520158(v12, &qword_27C764BB8);
    v8 = MEMORY[0x277D84F90];
  }

  sub_20B520158(&v18, &qword_27C764BB8);
  return v8;
}

uint64_t sub_20B9B7B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9B7BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_26Tm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B9B7DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_20B9B7E98(uint64_t a1, int a2)
{
  v30 = a2;
  if (a1)
  {
    v3 = a1;
    v4 = *(a1 + 16);
    if (v4)
    {
LABEL_3:

      v28 = v3;
      v29 = v2;
      v5 = (v3 + 40);
      while (1)
      {
        v6 = *(v5 - 1);
        LODWORD(v7) = *v5;
        if (v7 <= 3)
        {
          break;
        }

        if (*v5 <= 5u)
        {
          if (v7 != 4)
          {
            break;
          }
        }

        else if (v7 == 7)
        {
          break;
        }

LABEL_15:
        v7 = v7;
        v9 = sub_20BEF3CA0(v6, v7, v36);
        v10 = [v2 presentationLayer];
        if (!v10)
        {
          v37 = 0u;
          v38 = 0u;
LABEL_22:
          v14 = sub_20C13C914();
          v15 = [v2 valueForKeyPath_];

          if (v15)
          {
            sub_20C13DA64();
            swift_unknownObjectRelease();
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
          }

          v34 = v32;
          v35 = v33;
          if (*(&v38 + 1))
          {
            sub_20B8006F4(&v37);
          }

          goto LABEL_27;
        }

        v11 = v10;
        v12 = sub_20C13C914();
        v13 = [v11 valueForKeyPath_];

        if (v13)
        {
          sub_20C13DA64();
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        v37 = v34;
        v38 = v35;
        if (!*(&v35 + 1))
        {
          goto LABEL_22;
        }

        sub_20B6B3B74(&v37, &v34);
LABEL_27:
        v37 = v34;
        v38 = v35;
        if (sub_20BEDCD94(byte_20C166D7A[v7], &v37, v36))
        {
        }

        else
        {
          v31 = v6;
          sub_20BEF3CA0(v6, v7, &v34);
          v16 = *(&v35 + 1);
          if (*(&v35 + 1))
          {
            v17 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
            v18 = *(v16 - 8);
            v19 = MEMORY[0x28223BE20](v17);
            v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v18 + 16))(v21, v19);
            v22 = sub_20C13DFD4();
            (*(v18 + 8))(v21, v16);
            v2 = v29;
            __swift_destroy_boxed_opaque_existential_1(&v34);
          }

          else
          {
            v22 = 0;
          }

          v23 = sub_20C13C914();
          [v2 setValue:v22 forKeyPath:v23];
          swift_unknownObjectRelease();

          if (v30)
          {
            v24 = sub_20C13C914();
            [v2 removeAnimationForKey_];

            v25 = sub_20B9B844C(&v37, v36);
            v26 = sub_20C13C914();

            [v2 addAnimation:v25 forKey:v26];
          }

          else
          {
          }

          v6 = v31;
        }

        v5 += 16;
        sub_20B9B8424(v6, v7);
        sub_20B8006F4(v36);
        sub_20B8006F4(&v37);
        if (!--v4)
        {
        }
      }

      v8 = v6;
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_27C760818 != -1)
    {
      swift_once();
    }

    v3 = qword_27C79AB70;

    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

void sub_20B9B8424(id a1, unsigned __int8 a2)
{
  if (a2 <= 7u && ((1 << a2) & 0xAF) != 0)
  {
  }
}

id sub_20B9B844C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13C914();
  v5 = [objc_opt_self() animationWithKeyPath_];

  sub_20B68E264(a1, v21);
  v6 = v22;
  if (v22)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_20C13DFD4();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v12 = 0;
  }

  [v5 setFromValue_];
  swift_unknownObjectRelease();
  sub_20B68E264(a2, v21);
  v13 = v22;
  if (v22)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_20C13DFD4();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v19 = 0;
  }

  [v5 setToValue_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_20B9B86E0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v25 - v7;
  v25 = sub_20C134A74();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v29 = MEMORY[0x277D84F90];
    sub_20BB5D4F4(0, v14, 0);
    v15 = v29;
    v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = a2 + v26;
    v17 = *(v8 + 72);
    do
    {
      v18 = sub_20B864C34(v16, v10);
      MEMORY[0x28223BE20](v18);
      *(&v25 - 2) = v10;
      v19 = v27;
      sub_20B6B77DC(sub_20B9B8C84, v28, v27);
      sub_20B9B8CA4(v19, v5);
      v20 = sub_20C134014();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v5, 1, v20) == 1)
      {
        sub_20B9B8D14(v5);
        sub_20B864C34(v10, v13);
      }

      else
      {
        (*(v21 + 32))(v13, v5, v20);
        swift_storeEnumTagMultiPayload();
      }

      sub_20B864C98(v10);
      v29 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_20BB5D4F4(v22 > 1, v23 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v23 + 1;
      sub_20B8C6FC8(v13, v15 + v26 + v23 * v17);
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_20B9B89EC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_20C136594();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134A74();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C133E44();
  v13 = v12;
  sub_20B864C34(v25, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v11, v5);
    v14 = sub_20C133E44();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v17 = v11;
    v18 = v24;
    (*(v2 + 32))(v4, v17, v24);
    v14 = sub_20C136564();
    v16 = v19;
    (*(v2 + 8))(v4, v18);
  }

  if (v26 == v14 && v13 == v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_20C13DFF4();
  }

  return v21 & 1;
}

uint64_t sub_20B9B8CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9B8D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B9B8D7C()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 8.0;
  if (v0 == result)
  {
    v2 = 18.0;
  }

  qword_27C7687B8 = *&v2;
  return result;
}

uint64_t sub_20B9B8DC4()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 42.0;
  if (v0 == result)
  {
    v2 = 96.0;
  }

  qword_27C7687C0 = *&v2;
  return result;
}

void sub_20B9B8E14()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionTrackView_platter];
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:v3];

  LODWORD(v10) = 1148846080;
  [v9 setPriority_];
  v11 = v9;
  v12 = [v2 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-v6];

  LODWORD(v15) = 1148846080;
  [v14 setPriority_];
  v16 = v14;
  v17 = [v2 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v4];

  LODWORD(v20) = 1148846080;
  [v19 setPriority_];
  v21 = [v2 bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-v5];

  LODWORD(v24) = 1148846080;
  [v23 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C14FE90;
  *(v25 + 32) = v11;
  *(v25 + 40) = v16;
  *(v25 + 48) = v19;
  *(v25 + 56) = v23;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v27 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionTrackView_label];
  v28 = [v27 leftAnchor];
  v29 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
  v30 = [*&v2[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide] leftAnchor];
  v31 = [v28 constraintEqualToAnchor_];

  *(inited + 32) = v31;
  v32 = [*&v2[v29] heightAnchor];
  v33 = [v27 heightAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 40) = v34;
  v35 = [v27 centerYAnchor];
  v59 = v2;
  v36 = [*&v2[v29] centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(inited + 48) = v37;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20C151850;
  v39 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionTrackView_imageView];
  v40 = [v39 heightAnchor];
  if (qword_27C760860 != -1)
  {
    swift_once();
  }

  v41 = *&qword_27C7687C0;
  v42 = [v40 constraintEqualToConstant_];

  *(v38 + 32) = v42;
  v43 = [v39 widthAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v38 + 40) = v44;
  v45 = [v39 leftAnchor];
  v46 = [v27 rightAnchor];
  if (qword_27C760858 != -1)
  {
    swift_once();
  }

  v47 = [v45 constraintEqualToAnchor:v46 constant:*&qword_27C7687B8];

  *(v38 + 48) = v47;
  v48 = [*&v59[v29] &selRef_subtitle + 2];
  v49 = [v39 &selRef_subtitle + 2];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor_];

  *(v38 + 56) = v50;
  v51 = [v39 centerYAnchor];
  v52 = [*&v59[v29] centerYAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v38 + 64) = v53;
  v54 = [v39 rightAnchor];
  v55 = [*&v59[v29] rightAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v38 + 72) = v56;
  v57 = objc_opt_self();
  sub_20B8D9310(inited);
  sub_20B8D9310(v38);
  sub_20B5E29D0();
  v58 = sub_20C13CC54();

  [v57 activateConstraints_];
}

id sub_20B9B9554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionTrackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B9B9628(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20B9B2E00();
  v5 = sub_20B9B2FC0();
  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionTrackView_label);
  [*(v6 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
  v7 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  v8 = *(v6 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel);
  v9 = v5;
  [v8 setHidden_];
  [*(v6 + v7) setAttributedText_];

  [*(v2 + OBJC_IVAR____TtC9SeymourUI16SessionTrackView_imageView) setImage_];
}

void sub_20B9B973C(double a1)
{
  v3 = [v1 layer];
  [v3 setAnchorPoint_];

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v9[4] = sub_20B9B9D60;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20B7B548C;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);
  v7 = v1;

  v8 = [v5 initWithDuration:v6 dampingRatio:a1 animations:1.0];
  _Block_release(v6);
  [v8 startAnimation];
}

id sub_20B9B9888(void *a1)
{
  v2 = [a1 layer];
  [v2 setAnchorPoint_];

  return [a1 setAlpha_];
}

void sub_20B9B9964(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v8[4] = sub_20B76BA40;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B7B548C;
  v8[3] = &block_descriptor_63;
  v5 = _Block_copy(v8);
  v6 = v1;

  v7 = [v4 initWithDuration:v5 dampingRatio:a1 animations:1.0];
  _Block_release(v5);
  [v7 startAnimation];
}

double sub_20B9B9A78()
{
  if (qword_27C760860 != -1)
  {
    swift_once();
  }

  return *&qword_27C7687C0;
}

char *sub_20B9B9AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SeymourUI16SessionTrackView_platter;
  v7 = objc_allocWithZone(type metadata accessor for SessionElementBackdropView());
  v8 = sub_20BFB39E0(3, 1);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI16SessionTrackView_label;
  type metadata accessor for SessionStackedLabelView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = sub_20BC90F74(2);

  *&v3[v9] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI16SessionTrackView_imageView;
  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setClipsToBounds_];
  v14 = *MEMORY[0x277CDA138];
  v15 = [v13 layer];
  [v15 setCornerCurve_];

  v16 = [v13 layer];
  [v16 setCornerRadius_];

  [v13 setClipsToBounds_];
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTrackView_presenter] = a1;
  sub_20B78290C(a2, &v3[OBJC_IVAR____TtC9SeymourUI16SessionTrackView_stringBuilder]);
  v21.receiver = v3;
  v21.super_class = type metadata accessor for SessionTrackView();

  v17 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display + 8) = &off_2822BBC68;
  swift_unknownObjectWeakAssign();
  v18 = *&v17[OBJC_IVAR____TtC9SeymourUI16SessionTrackView_platter];
  v19 = v17;
  [v19 addSubview_];
  [v19 addSubview_];
  [v19 addSubview_];
  sub_20B9B8E14();
  [v19 setAlpha_];

  sub_20B815F44(a2);
  return v19;
}

void sub_20B9B9D68()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI16SessionTrackView_platter;
  v3 = objc_allocWithZone(type metadata accessor for SessionElementBackdropView());
  v4 = sub_20BFB39E0(3, 1);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI16SessionTrackView_label;
  type metadata accessor for SessionStackedLabelView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = sub_20BC90F74(2);

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI16SessionTrackView_imageView;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setClipsToBounds_];
  v10 = *MEMORY[0x277CDA138];
  v11 = [v9 layer];
  [v11 setCornerCurve_];

  v12 = [v9 layer];
  [v12 setCornerRadius_];

  [v9 setClipsToBounds_];
  *(v1 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B9B9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v41 - v13;
  v14 = sub_20C13A484();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = type metadata accessor for SessionRouteMonitor();
  v52[4] = &off_2822E24A0;
  v52[0] = a5;
  *&a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer] = 0;
  v17 = &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onStartCountdown];
  *v17 = 0;
  v17[1] = 0;
  v18 = &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceStarted];
  *v18 = 0;
  v18[1] = 0;
  v19 = &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceCompleted];
  *v19 = 0;
  v19[1] = 0;
  v20 = &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_timer];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *&a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioSessionCategory] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioSessionMode] = 0;
  v21 = OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_workoutDeviceConnection;
  v22 = sub_20C136484();
  (*(*(v22 - 8) + 56))(&a6[v21], 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v49, &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_timerProvider]);
  sub_20C133AA4();
  a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_platform] = v49;
  v23 = OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_catalogWorkout;
  v24 = sub_20C1344C4();
  v41 = *(v24 - 8);
  v42 = v24;
  v25 = *(v41 + 16);
  v46 = a3;
  v25(&a6[v23], a3);
  sub_20B51CC64(v52, &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_sessionRouteMonitor]);
  v45 = a4;
  sub_20B9C70A0(a4, v16, MEMORY[0x277D4DFB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = type metadata accessor for SessionCastingCountdownCoordinator();
    v27 = swift_allocObject();
    v50 = v26;
    v51 = &off_2822FCFA8;
    *&v49 = v27;
    v28 = sub_20C137EA4();
    (*(*(v28 - 8) + 8))(v16, v28);
  }

  else
  {
    sub_20B9C7450(v16, MEMORY[0x277D4DFB8]);
    v29 = type metadata accessor for SessionCountdownCoordinator();
    swift_allocObject();

    v31 = sub_20BEE35BC(v30);
    v50 = v29;
    v51 = &off_2822F44F0;
    *&v49 = v31;
  }

  sub_20B51C710(&v49, &a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_sessionCountdownCoordinator]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  v44 = a1;
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_subscriptionToken] = sub_20C13A914();
  a6[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_sessionRouteCategory] = 2;
  v32 = type metadata accessor for SessionIntroSequencePresenter();
  v48.receiver = a6;
  v48.super_class = v32;
  v33 = objc_msgSendSuper2(&v48, sel_init);
  v47 = a2;
  if (sub_20C1371E4())
  {
    swift_getObjectType();
    sub_20C13AEE4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = v33;
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v49);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B782804();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v49);
  v35 = sub_20C13CDF4();
  v36 = v43;
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20B51CC64(v52, &v49);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  sub_20B51C710(&v49, (v38 + 5));
  sub_20B615240(0, 0, v36, &unk_20C166E10, v38);
  swift_unknownObjectRelease();

  sub_20B9C7450(v45, MEMORY[0x277D4DFB8]);
  (*(v41 + 8))(v46, v42);
  v39 = sub_20C137254();
  (*(*(v39 - 8) + 8))(v47, v39);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v34;
}

uint64_t sub_20B9BA704(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v85 = a8;
  v84 = a6;
  v86 = a5;
  v87 = a4;
  v88 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = v73 - v16;
  v83 = sub_20C13A814();
  v17 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v19 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95[3] = sub_20C138A24();
  v95[4] = MEMORY[0x277D540F0];
  v95[0] = a7;
  v94[3] = type metadata accessor for SessionRouteMonitor();
  v94[4] = &off_2822E24A0;
  v94[0] = a10;
  *(a11 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a11 + 184) = 0u;
  *(a11 + 168) = 0u;
  *(a11 + 152) = 0u;
  *(a11 + 136) = 0u;
  *(a11 + 120) = 0u;
  *(a11 + 104) = 0u;
  *(a11 + 88) = 0u;
  *(a11 + 72) = 0u;
  *(a11 + 56) = 0u;
  *(a11 + 40) = 0u;
  v20 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
  v21 = sub_20C138184();
  v22 = *(*(v21 - 8) + 56);
  v22(a11 + v20, 1, 1, v21);
  v22(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_lastForegroundPlaybackSnapshot, 1, 1, v21);
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_siriRequestedPlaybackState) = 4;
  v23 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  v24 = sub_20C134C04();
  (*(*(v24 - 8) + 56))(a11 + v23, 1, 1, v24);
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_shouldResumeSyncPlaybackOnForeground) = 0;
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 0;
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isRemoteDisplayConnected) = 0;
  v25 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentMusicTrack;
  v26 = sub_20C133474();
  (*(*(v26 - 8) + 56))(a11 + v25, 1, 1, v26);
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isShowingMediaMoment) = 0;
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentAudibleMediaSelectionOption) = 0;
  v27 = (a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_outputDeviceChangedObserver);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = (a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_outputDevicesChangedObserver);
  *v28 = 0u;
  v28[1] = 0u;
  v29 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserSessionRequiringResync;
  v30 = sub_20C134CD4();
  (*(*(v30 - 8) + 56))(a11 + v29, 1, 1, v30);
  (*(v17 + 104))(v19, *MEMORY[0x277D4EF18], v83);
  LOBYTE(aBlock) = 1;
  sub_20C13A384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v31 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768908);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_keyDeliveryClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768910);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteKeyDeliveryClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient);
  v32 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_activityTypeBehavior;
  v33 = sub_20C137254();
  v78 = *(v33 - 8);
  v34 = *(v78 + 16);
  v79 = v33;
  v34(a11 + v32, v88);
  *(a11 + 240) = a3;
  *(a11 + 248) = &off_2822F9F10;
  sub_20C138F44();

  sub_20C133AA4();
  *(a11 + 256) = aBlock;
  sub_20B9C70A0(v85, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, MEMORY[0x277D4DFB8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient);
  sub_20B51CC64(v94, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionRouteMonitor);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v35 = v31;
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_subscriptionToken) = sub_20C13A914();
  sub_20B51CC64(v95, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater);
  v36 = MEMORY[0x277D54060];
  v37 = (a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaPlayer);
  v38 = v84;
  *v37 = v84;
  v37[1] = v36;
  v39 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
  v40 = sub_20C1344C4();
  v75 = *(v40 - 8);
  v41 = *(v75 + 16);
  v76 = v40;
  v41(a11 + v39, v87);
  sub_20B51CC64(v86, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter);
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_startTime) = a9;
  v74 = v38;
  sub_20C133AA4();
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserClient);
  sub_20C133AA4();
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_eventHub) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  v80 = a1;
  sub_20C133AA4();
  sub_20B51C710(&aBlock, a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer);
  *(a11 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory) = 2;
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = a3[4];
  a3[4] = sub_20B9C756C;
  a3[5] = v42;

  sub_20B583ECC(v43);

  v44 = swift_allocObject();
  swift_weakInit();
  v45 = a3[6];
  a3[6] = sub_20B9C7574;
  a3[7] = v44;

  sub_20B583ECC(v45);

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = a3[8];
  a3[8] = sub_20B9C757C;
  a3[9] = v46;

  sub_20B583ECC(v47);

  v48 = swift_allocObject();
  swift_weakInit();
  v49 = a3[10];
  a3[10] = sub_20B9C7584;
  a3[11] = v48;

  sub_20B583ECC(v49);

  ObjectType = swift_getObjectType();
  sub_20C138574();
  v51 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_subscriptionToken;
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768920, MEMORY[0x277D54038]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C138494();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768928, MEMORY[0x277D54000]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C13AD74();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C138EE4();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768930, MEMORY[0x277D541C8]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for RemoteDisplayConnected();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);

  swift_allocObject();
  swift_weakInit();
  sub_20B9C7294();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);

  sub_20C13AEE4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v52 = sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();

  v73[2] = v52;
  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);

  swift_allocObject();
  swift_weakInit();
  sub_20B86FB30();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_20B802DE8();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C139304();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768938, MEMORY[0x277D54330]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C139254();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768940, MEMORY[0x277D542F8]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C138454();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768948, MEMORY[0x277D53FE0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C138414();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&unk_27C768950, MEMORY[0x277D53FC0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C138474();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&unk_27C76F050, MEMORY[0x277D53FF0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C138434();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768828, MEMORY[0x277D53FD0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_20C13AF04();
  swift_allocObject();
  swift_weakInit();
  v73[1] = ObjectType;
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768960);
  v82 = v51;
  swift_allocObject();
  swift_weakInit();
  v84 = MEMORY[0x277D543A0];
  sub_20B6D6ABC(&qword_27C768968, &qword_27C768960);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768970);
  swift_allocObject();
  swift_weakInit();
  v83 = MEMORY[0x277D54300];
  sub_20B6D6ABC(&qword_27C768978, &qword_27C768970);
  v81 = v35;
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768980);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C768988, &qword_27C768980);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768990);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C768998, &qword_27C768990);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7689A0);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7689A8, &qword_27C7689A0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7689B0);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7689B8, &qword_27C7689B0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_20B782804();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7664();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);

  v53 = sub_20C13CDF4();
  v54 = v77;
  (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  sub_20B51CC64(v94, &aBlock);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  sub_20B51C710(&aBlock, (v55 + 4));
  v55[9] = a11;

  sub_20B614F94(0, 0, v54, &unk_20C166E08, v55);

  v56 = objc_opt_self();
  v57 = [v56 defaultCenter];
  v58 = *MEMORY[0x277CB8068];
  v59 = objc_opt_self();

  v60 = [v59 sharedInstance];
  [v57 addObserver:a11 selector:sel_handleAudioInterruptionWithNotification_ name:v58 object:v60];

  v61 = v74;
  v62 = [v56 defaultCenter];
  v63 = *MEMORY[0x277CE6100];
  sub_20C138604();
  v64 = sub_20C138644();
  if (v64)
  {
    v65 = v64;
    v66 = [v64 currentItem];

    if (!v66)
    {
      v67 = 0;
      goto LABEL_7;
    }

    *&aBlock = v66;
    sub_20B51C88C(0, &qword_27C7689D0);
    v67 = sub_20C13DFD4();
    v61 = aBlock;
  }

  else
  {
    v67 = 0;
  }

LABEL_7:
  v68 = [objc_opt_self() mainQueue];
  v69 = swift_allocObject();
  swift_weakInit();

  v92 = sub_20B9C7778;
  v93 = v69;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v90 = sub_20BF3ECF4;
  v91 = &block_descriptor_64;
  v70 = _Block_copy(&aBlock);

  v71 = [v62 addObserverForName:v63 object:v67 queue:v68 usingBlock:v70];
  _Block_release(v70);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_20B9C7450(v85, MEMORY[0x277D4DFB8]);
  __swift_destroy_boxed_opaque_existential_1(v86);
  (*(v75 + 8))(v87, v76);
  (*(v78 + 8))(v88, v79);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v94);
  return a11;
}

void *sub_20B9BC624(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-v9];
  v22[3] = sub_20B51C88C(0, &unk_27C768A60);
  v22[4] = &off_2822A8638;
  v22[0] = a3;
  a4[2] = a1;
  a4[3] = a2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  a4[4] = sub_20C13A914();
  sub_20B51CC64(v22, (a4 + 5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E78);
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = 2;
  a4[10] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A70);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = MEMORY[0x277D84FA0];
  a4[11] = v12;
  v13 = sub_20C13CDF4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;

  sub_20B614F94(0, 0, v10, &unk_20C166E38, v14);

  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];

  v17 = SMUAVOutputContextOutputDeviceDidChangeNotification();
  [v16 addObserver:a4 selector:sel_onOutputDeviceChanged name:v17 object:0];

  v18 = [v15 defaultCenter];

  v19 = SMUAVOutputContextOutputDevicesDidChangeNotification();
  [v18 addObserver:a4 selector:sel_onOutputDeviceChanged name:v19 object:0];

  swift_getObjectType();
  type metadata accessor for RemoteDisplayConnected();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v21);
  swift_allocObject();
  swift_weakInit();

  sub_20B9C7294();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return a4;
}

char *sub_20B9BCA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v7 = sub_20C13AD04();
  v13[3] = v7;
  v13[4] = MEMORY[0x277D4F358];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a4, v7);
  *(a5 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 5) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionHeartUIState();
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_lastReceivedMetric;
  v10 = sub_20C134914();
  (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
  *&a5[OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_sessionToken] = 0;
  *&a5[OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_staleHeartRateTimer] = 0;
  a5[OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_state] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + 6) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v12, &a5[OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_sessionClient]);
  sub_20B51CC64(v13, (a5 + 56));
  swift_getObjectType();
  sub_20C13AE74();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return a5;
}

uint64_t sub_20B9BCDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v9 = sub_20C1344C4();
  v30 = *(v9 - 8);
  v10 = v30;
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_isAppBackgrounded) = 0;
  v12 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_workoutDeviceConnection;
  v13 = sub_20C136484();
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  *(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_hasPlaybackBegun) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  v26 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_artworkImageLoader;
  sub_20B51C710(v34, a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_artworkImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_eventHub) = v34[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v34, a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v34, a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_storefrontLocalizer);
  v14 = OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_activityTypeBehavior;
  v31 = sub_20C137254();
  v33 = *(v31 - 8);
  (*(v33 + 16))(a5 + v14, a2, v31);
  v15 = *(v10 + 16);
  v16 = v9;
  v29 = v9;
  v15(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_catalogWorkout, a3, v9);
  v17 = (a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_mediaPlayer);
  v18 = MEMORY[0x277D54060];
  *v17 = a4;
  v17[1] = v18;
  v28 = a3;
  v19 = sub_20C1344B4();
  v21 = v20;
  v23 = v22;
  LOBYTE(v9) = sub_20C133B84();
  sub_20B583F4C(v19, v21, v23 & 1);
  *(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) = (v9 & 1) == 0;
  sub_20B51CC64(a5 + v26, v34);
  v15(v27, a3, v16);
  sub_20C1383F4();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_sessionMediaMomentsPrefetcher) = sub_20C1383D4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_subscriptionToken) = sub_20C13A914();
  swift_allocObject();
  swift_weakInit();

  sub_20C1383E4();

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B86FB30();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v34);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B86FA88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v34);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7BD0();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v34);

  swift_getObjectType();
  sub_20C138574();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768920, MEMORY[0x277D54038]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v34);
  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v34);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B97FC14();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v34);

  v24 = [objc_opt_self() defaultCenter];
  [v24 addObserver:a5 selector:sel_handleRouteChanged_ name:*MEMORY[0x277CD5640] object:0];

  (*(v30 + 8))(v28, v29);
  (*(v33 + 8))(v32, v31);
  return a5;
}

uint64_t sub_20B9BD65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v38 - v10;
  v11 = sub_20C137EA4();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13A484();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = type metadata accessor for SessionRouteMonitor();
  v46[4] = &off_2822E24A0;
  v46[0] = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_enterAudioPlayer) = 0;
  *(a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_exitAudioPlayer) = 0;
  *(a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_cachedMenu) = 0;
  v17 = MEMORY[0x277D4DFB8];
  sub_20B9C70A0(a2, a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_sessionOrigin, MEMORY[0x277D4DFB8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(&v44, a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870);
  sub_20C133AA4();
  sub_20B51C710(&v44, a4 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v18 = *(&v44 + 1);
  *(a4 + 160) = v44;
  *(a4 + 168) = v18;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a4 + 152) = sub_20C13A914();
  sub_20C133AA4();
  *(a4 + 176) = v44;
  sub_20B51CC64(v46, a4 + 112);
  *(a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_menuModel) = sub_20B6B2C08(MEMORY[0x277D84F90]);
  *(a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_sessionRouteCategory) = 2;
  v42 = a2;
  sub_20B9C70A0(a2, v16, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v38;
    v20 = v39;
    (*(v38 + 32))(v13, v16, v39);
    v21 = v40;
    sub_20C137E14();
    v22 = sub_20C135854();
    v23 = *(v22 - 8);
    v24 = v19;
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_20B520158(v21, &unk_27C76BBF0);
    }

    else
    {
      v27 = sub_20C135844();
      v29 = v28;
      v31 = v30;
      (*(v23 + 8))(v21, v22);
      *&v44 = v27;
      *(&v44 + 1) = v29;
      v45 = v31 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A40);
      sub_20C133BD4();
      sub_20B583F4C(v27, v29, v31 & 1);
      v32 = v43;
      if (v43 != 2)
      {
LABEL_7:
        v26 = v32 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768A30);
        v25 = swift_allocObject();
        *(v25 + 48) = 0;
        (*(v24 + 8))(v13, v20);
        goto LABEL_8;
      }
    }

    v32 = sub_20C135444();
    goto LABEL_7;
  }

  sub_20B9C7450(v16, MEMORY[0x277D4DFB8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768A30);
  v25 = swift_allocObject();
  *(v25 + 48) = 0;
  v26 = 0xC000000000000000;
LABEL_8:
  *(v25 + 16) = v26;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(a4 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_state) = v25;
  sub_20C0E5304();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B782804();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  swift_getObjectType();
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  swift_getObjectType();
  sub_20C139324();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768A38, MEMORY[0x277D54340]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v33 = sub_20C13CDF4();
  v34 = v41;
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  v35 = swift_allocObject();
  swift_weakInit();

  sub_20B51CC64(v46, &v44);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v35;
  sub_20B51C710(&v44, (v36 + 5));
  sub_20B615240(0, 0, v34, &unk_20C166E28, v36);

  sub_20B9C7450(v42, MEMORY[0x277D4DFB8]);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return a4;
}

uint64_t sub_20B9BDE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = v29 - v6;
  v30 = sub_20C13D364();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13D304();
  MEMORY[0x28223BE20](v10);
  v11 = sub_20C13C4F4();
  MEMORY[0x28223BE20](v11 - 8);
  v38[3] = type metadata accessor for SessionRouteMonitor();
  v38[4] = &off_2822E24A0;
  v38[0] = a2;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 57) = 2;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1282;
  v12 = sub_20B51C88C(0, &qword_281100530);
  v29[0] = "nTrackView.swift";
  v29[1] = v12;
  sub_20C13C4E4();
  *&v34 = MEMORY[0x277D84F90];
  sub_20B9C7A60(&qword_27C7663E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689F0);
  sub_20B6D6ABC(&qword_27C7663E8, &unk_27C7689F0);
  sub_20C13DA94();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v30);
  *(a3 + 80) = sub_20C13D394();
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 1;
  v13 = MEMORY[0x277D84F90];
  *(a3 + 208) = sub_20B6B2CFC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v14 = *(&v34 + 1);
  *(a3 + 40) = v34;
  *(a3 + 48) = v14;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a3 + 32) = sub_20C13A914();
  sub_20C133AA4();
  *(a3 + 56) = v34;
  sub_20B51CC64(v38, a3 + 88);
  v15 = sub_20B6B2EE4(v13);
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 160) = v15;
  *(a3 + 128) = sub_20B939280(2);
  *(a3 + 136) = v16;
  v17 = objc_opt_self();
  v18 = [v17 standardUserDefaults];
  v19 = sub_20C13C914();
  v20 = [v18 valueForKey_];

  if (v20)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v34 = v36;
  v35 = v37;
  if (*(&v37 + 1))
  {
    if (swift_dynamicCast())
    {
      v21 = v33;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    sub_20B520158(&v34, &unk_27C768A00);
    v21 = 2;
  }

  *(a3 + 72) = v21;
  v22 = [v17 standardUserDefaults];
  v23 = sub_20C13C914();
  v24 = [v22 valueForKey_];

  if (v24)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v34 = v36;
  v35 = v37;
  if (*(&v37 + 1))
  {
    if (swift_dynamicCast())
    {
      *(a3 + 73) = sub_20B81EC70(v33);
    }
  }

  else
  {
    sub_20B520158(&v34, &unk_27C768A00);
  }

  sub_20B937E14();
  swift_getObjectType();
  sub_20C13B104();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D90);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&unk_27C768A10, &qword_27C767D90);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D88);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&unk_27C768A20, &qword_27C767D88);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B782804();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  v25 = sub_20C13CDF4();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a3;

  sub_20B614F94(0, 0, v26, &unk_20C166E18, v27);

  __swift_destroy_boxed_opaque_existential_1(v38);
  return a3;
}

id sub_20B9BE7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  *&a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_eventHub] = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v19, &a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_sessionClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689E0);
  sub_20C133AA4();
  sub_20B51C710(v19, &a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_remoteParticipantClient]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_subscriptionToken] = sub_20C13A914();
  sub_20B9C70A0(a2, &a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_sessionOrigin], MEMORY[0x277D4DFB8]);
  *&a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_discoveredParticipants] = MEMORY[0x277D84F90];
  type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = &a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemRoutingController];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = &a6[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemOutputControlDeviceDiscovery];
  *v12 = a5;
  *(v12 + 1) = &off_2822F5DC8;
  v18.receiver = a6;
  v18.super_class = type metadata accessor for SessionRoutePickerPresenter(0);
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  swift_getObjectType();
  sub_20C13B144();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v14;
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_getObjectType();
  sub_20C13AD84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_getObjectType();
  sub_20C13B384();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_getObjectType();
  type metadata accessor for RemoteDisplayConnected();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B9C7A60(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);

  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B9C7294();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);

  swift_getObjectType();
  sub_20C13B0E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v19);

  swift_getObjectType();
  sub_20C13B2B4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A784();

  swift_unknownObjectRelease();

  sub_20B9C7450(a2, MEMORY[0x277D4DFB8]);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_20B9BEF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = a7;
  v70 = a8;
  v67 = a3;
  v68 = a6;
  v76 = a4;
  v77 = a5;
  v75 = a1;
  v66 = sub_20C1344C4();
  v78 = *(v66 - 8);
  v72 = *(v78 + 64);
  MEMORY[0x28223BE20](v66);
  v71 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C13A814();
  v11 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  v13 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityRings;
  v14 = sub_20C133D84();
  (*(*(v14 - 8) + 56))(a9 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_displayPreferences;
  v16 = sub_20C135274();
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_gymKitConnection;
  v18 = sub_20C134C04();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_playback;
  v20 = sub_20C138184();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_presentationTimestamp;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_summaryType) = 0;
  v22 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workoutDeviceConnection;
  v23 = sub_20C136484();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
  v25 = sub_20C137FE4();
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_cadenceMetric;
  v27 = sub_20C133DD4();
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
  v29 = sub_20C134514();
  v30 = *(*(v29 - 8) + 56);
  v30(a9 + v28, 1, 1, v29);
  v31 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
  v32 = sub_20C133B04();
  v33 = *(*(v32 - 8) + 56);
  v33(a9 + v31, 1, 1, v32);
  v34 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_heartRateMetric;
  v35 = sub_20C134914();
  (*(*(v35 - 8) + 56))(a9 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mindfulMinutesMetric;
  v37 = sub_20C135B74();
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
  v39 = sub_20C1337A4();
  (*(*(v39 - 8) + 56))(a9 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_paceMetric;
  v41 = sub_20C133494();
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_userMassMetric;
  v43 = sub_20C135364();
  (*(*(v43 - 8) + 56))(a9 + v42, 1, 1, v43);
  v44 = a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalElapsedTime;
  *v44 = 0;
  *(v44 + 8) = 1;
  v30(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalDistanceMetric, 1, 1, v29);
  v33(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalEnergyMetric, 1, 1, v32);
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_completedModalities) = MEMORY[0x277D84F90];
  v45 = v78;
  v46 = v66;
  (*(v78 + 56))(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout, 1, 1, v66);
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_previousElapsedTime) = 0;
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_eligibleForQueueCompleteEnergyMetric) = 0;
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_eligibleForQueueCompleteDistanceMetric) = 0;
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state) = 0;
  v47 = (a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_textSizeChangedObserver);
  *v47 = 0u;
  v47[1] = 0u;
  (*(v11 + 104))(v73, *MEMORY[0x277D4EF58], v74);
  LOBYTE(v79[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768830);
  sub_20B5EB060(&unk_27C76BB90);
  sub_20B5EB060(&unk_27C768840);
  sub_20C13A384();
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_dependencies) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + 176);
  v65 = *(v45 + 16);
  v48 = v75;
  v65(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v75, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(a9 + 216) = v79[0];
  sub_20C133AA4();
  *(a9 + 232) = v79[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + 240);
  v49 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityTypeBehavior;
  v50 = sub_20C137254();
  v51 = *(v50 - 8);
  v73 = v50;
  v74 = v51;
  (*(v51 + 16))(a9 + v49, v76, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C60);
  sub_20C133AA4();
  sub_20B9C7108(v79, (a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_healthStore));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionPreferenceClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_privacyPreferenceClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_remoteBrowsingSource);
  sub_20B9C70A0(v77, a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, MEMORY[0x277D4DFB8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CDC0);
  sub_20C133AA4();
  sub_20B51C710(v79, a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
  v52 = a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder;
  v53 = v67;
  v54 = *(v67 + 48);
  *(v52 + 32) = *(v67 + 32);
  *(v52 + 48) = v54;
  *(v52 + 64) = *(v53 + 64);
  v55 = *(v53 + 16);
  *v52 = *v53;
  *(v52 + 16) = v55;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a9 + 280) = sub_20C13A914();
  v56 = (a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_unitPreferencesProvider);
  *v56 = v68;
  v56[1] = &off_2822EE5E8;
  v57 = (a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext);
  v58 = v70;
  *v57 = ObjectType;
  v57[1] = v58;
  *(a9 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_healthKitActivityType) = sub_20C1371C4();
  v70 = *(a9 + 224);
  ObjectType = swift_getObjectType();
  sub_20C13A714();
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = v71;
  v65(v71, v48, v46);
  v61 = v78;
  v62 = (*(v78 + 80) + 24) & ~*(v78 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  (*(v61 + 32))(v63 + v62, v60, v46);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v79);

  swift_getObjectType();
  sub_20C13B034();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AFD4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AEE4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AE74();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AD34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13B124();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13A8E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AA84();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AC34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13AA04();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13A614();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13ABE4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v79);
  swift_getObjectType();
  sub_20C13A6A4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  sub_20B9C7450(v77, MEMORY[0x277D4DFB8]);
  (*(v74 + 8))(v76, v73);
  (*(v78 + 8))(v75, v46);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return a9;
}

char *sub_20B9C04B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v596 = &v553 - v5;
  v6 = sub_20C13A814();
  v591 = *(v6 - 8);
  v592 = v6;
  MEMORY[0x28223BE20](v6);
  v593 = &v553 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v8);
  v661 = &v553 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134B64();
  v555 = *(v10 - 8);
  v556 = v10;
  MEMORY[0x28223BE20](v10);
  v554 = &v553 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C133D84();
  v601 = *(v12 - 8);
  v602 = v12;
  MEMORY[0x28223BE20](v12);
  v565 = &v553 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v648 = sub_20C136484();
  v638 = *(v648 - 8);
  MEMORY[0x28223BE20](v648);
  v586 = &v553 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v15 - 8);
  v563 = &v553 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v639 = &v553 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v19 - 8);
  v564 = &v553 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v637 = &v553 - v22;
  v608 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  MEMORY[0x28223BE20](v608);
  v580 = &v553 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v24 - 8);
  v562 = &v553 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v635 = &v553 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v28 - 8);
  v636 = &v553 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270);
  MEMORY[0x28223BE20](v30 - 8);
  v579 = &v553 - v31;
  v617 = sub_20C1369A4();
  v616 = *(v617 - 8);
  MEMORY[0x28223BE20](v617);
  v634 = &v553 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800);
  MEMORY[0x28223BE20](v33 - 8);
  v578 = &v553 - v34;
  v35 = sub_20C1366D4();
  v614 = *(v35 - 8);
  v615 = v35;
  MEMORY[0x28223BE20](v35);
  v633 = &v553 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v606 = sub_20C135274();
  *&v640 = *(v606 - 8);
  MEMORY[0x28223BE20](v606);
  v597 = &v553 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00);
  MEMORY[0x28223BE20](v38 - 8);
  v577 = &v553 - v39;
  v40 = sub_20C136544();
  v612 = *(v40 - 8);
  v613 = v40;
  MEMORY[0x28223BE20](v40);
  v632 = &v553 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v42 - 8);
  v581 = &v553 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v641 = &v553 - v45;
  MEMORY[0x28223BE20](v46);
  v560 = &v553 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v48 - 8);
  v559 = &v553 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v50 - 8);
  v561 = &v553 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v631 = &v553 - v53;
  MEMORY[0x28223BE20](v54);
  v575 = &v553 - v55;
  v667 = sub_20C13AD04();
  v668 = *(v667 - 1);
  MEMORY[0x28223BE20](v667);
  v665 = &v553 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v666 = &v553 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v59 - 8);
  v655 = &v553 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v657 = &v553 - v62;
  v659 = sub_20C134A94();
  v658 = *(v659 - 1);
  MEMORY[0x28223BE20](v659);
  v654 = &v553 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v576 = sub_20C137EA4();
  v574 = *(v576 - 8);
  MEMORY[0x28223BE20](v576);
  v558 = &v553 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v656 = &v553 - v66;
  v67 = sub_20C1344C4();
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v672 = &v553 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v553 - v71;
  v605 = sub_20C13A484();
  MEMORY[0x28223BE20](v605);
  v573 = &v553 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v650 = (&v553 - v75);
  MEMORY[0x28223BE20](v76);
  v676 = (&v553 - v77);
  MEMORY[0x28223BE20](v78);
  v669 = &v553 - v79;
  MEMORY[0x28223BE20](v80);
  v82 = &v553 - v81;
  v683 = &v553 - v81;
  v83 = sub_20C137254();
  MEMORY[0x28223BE20](v83);
  v649 = &v553 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v684 = &v553 - v86;
  v88 = MEMORY[0x28223BE20](v87);
  v600 = v89;
  v90 = *(v89 + 16);
  v678 = &v553 - v91;
  v685 = v92;
  v679 = (v89 + 16);
  v682 = v90;
  (v90)(v88);
  v671 = v8;
  v93 = *(v8 + 28);
  v664 = MEMORY[0x277D4DFB8];
  sub_20B9C70A0(a2 + v93, v82, MEMORY[0x277D4DFB8]);
  v663 = v68;
  v94 = *(v68 + 16);
  v680 = v72;
  v662 = a2;
  v681 = v67;
  v673 = v68 + 16;
  v677 = v94;
  v94(v72, a2, v67);
  sub_20C133AA4();
  LODWORD(v652) = v704;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v96 = v704;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C60);
  sub_20C133AA4();
  v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  v98 = objc_opt_self();
  swift_unknownObjectRetain();
  v99 = [v98 sharedInstance];
  v642 = type metadata accessor for SessionRouteMonitor();
  v100 = swift_allocObject();
  v670 = *(&v96 + 1);
  v630 = v96;
  v660 = sub_20B9BC624(v96, *(&v96 + 1), v99, v100);

  v651 = v95;
  sub_20C133AA4();
  v675 = *(&v693 + 1);
  v101 = v693;
  v589 = v97;
  sub_20C133AA4();
  type metadata accessor for UnitPreferencesProvider();
  v102 = swift_allocObject();
  v103 = *(&v705 + 1);
  v104 = v706;
  v105 = v707;
  v106 = __swift_mutable_project_boxed_opaque_existential_1(&v704, *(&v705 + 1));
  v107 = MEMORY[0x28223BE20](v106);
  v109 = &v553 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v110 + 16))(v109, v107);
  v111 = v102;
  v112 = v669;
  v675 = sub_20BE47870(v101, v675, v109, v111, v103, v104, *(&v104 + 1), v105, *(&v105 + 1));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v704);
  v674 = a1;

  sub_20B9C70A0(v683, v112, v664);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v113 = v574;
    v114 = v656;
    v115 = v576;
    (*(v574 + 32))(v656, v112, v576);
    v116 = v657;
    sub_20C137DD4();
    v117 = v658;
    v118 = v659;
    if ((*(v658 + 48))(v116, 1, v659) == 1)
    {
      (*(v113 + 8))(v114, v115);
      sub_20B520158(v116, &unk_27C768AD0);
    }

    else
    {
      v119 = v654;
      (*(v117 + 32))(v654, v116, v118);
      v120 = v655;
      (*(v117 + 16))(v655, v119, v118);
      (*(v117 + 56))(v120, 0, 1, v118);
      sub_20B52A094(v120);
      sub_20B520158(v120, &unk_27C768AD0);
      (*(v117 + 8))(v119, v118);
      (*(v113 + 8))(v114, v115);
    }
  }

  else
  {
    sub_20B9C7450(v112, MEMORY[0x277D4DFB8]);
  }

  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0);
  v121 = v674;
  sub_20C133AA4();
  sub_20B51CC64(v699, v697);
  v122 = v675;
  swift_retain_n();
  v123 = sub_20C1380F4();
  v697[5] = v122;
  v697[6] = &off_2822EE5E8;
  v698 = v123;

  SummaryStringBuilder.init(unitPreferencesProvider:)(v124, &off_2822EE5E8, &v693);
  v706 = v695[0];
  v707 = v695[1];
  v708 = v696;
  v704 = v693;
  v705 = v694;

  v125 = v672;
  v126 = v680;
  sub_20BD8CCF4(v672);
  v127 = *(v662 + v671[8]);
  v128 = MEMORY[0x277D4DFB8];
  v129 = v683;
  v664 = MEMORY[0x277D4DFB8];
  sub_20B9C70A0(v683, v676, MEMORY[0x277D4DFB8]);
  v130 = objc_allocWithZone(sub_20C138604());

  v131 = sub_20C1385F4();
  v132 = v684;
  v682(v684, v678, v685);
  v677(v125, v126, v681);
  type metadata accessor for SessionAudioPlayerPresenter();
  v133 = swift_allocObject();

  v134 = v131;
  v629 = sub_20B9BCDC8(v121, v132, v125, v134, v133);

  v585 = v134;
  v135 = sub_20C1344B4();
  v137 = v136;
  LOBYTE(v125) = v138;
  sub_20C133B84();
  sub_20B583F4C(v135, v137, v125 & 1);
  v139 = [objc_opt_self() defaultCenter];
  v140 = [objc_opt_self() sharedCommandCenter];
  v141 = sub_20B51C88C(0, &qword_27C768820);
  *&v695[0] = MEMORY[0x277D54490];
  *(&v694 + 1) = v141;
  *&v693 = v140;
  sub_20C138A24();
  swift_allocObject();
  v628 = sub_20C138A14();
  v142 = v676;
  sub_20B9C70A0(v129, v676, v128);
  *&v695[0] = &off_2822E24A0;
  v143 = v642;
  *(&v694 + 1) = v642;
  v144 = v660;
  *&v693 = v660;
  type metadata accessor for AudioFocusPresenter();
  v145 = swift_allocObject();
  v146 = __swift_mutable_project_boxed_opaque_existential_1(&v693, v143);
  v659 = &v553;
  v147 = *(v143 - 8);
  v148 = *(v147 + 64);
  v149 = MEMORY[0x28223BE20](v146);
  v669 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = (&v553 - v669);
  v151 = *(v147 + 16);
  v151(&v553 - v669, v149);
  v152 = *v150;

  v627 = sub_20B9BD65C(v121, v142, v152, v145);

  __swift_destroy_boxed_opaque_existential_1(&v693);
  *&v695[0] = &off_2822E24A0;
  *(&v694 + 1) = v143;
  *&v693 = v144;
  type metadata accessor for AudioHintPresenter();
  v153 = swift_allocObject();
  v154 = __swift_mutable_project_boxed_opaque_existential_1(&v693, v143);
  v583 = v148;
  v155 = MEMORY[0x28223BE20](v154);
  v156 = (&v553 - v669);
  v584 = v147 + 16;
  v582 = v151;
  v151(&v553 - v669, v155);
  v157 = *v156;

  v626 = sub_20B9BDE80(v121, v157, v153);

  __swift_destroy_boxed_opaque_existential_1(&v693);
  v158 = v683;
  v159 = v676;
  v160 = v664;
  sub_20B9C70A0(v683, v676, v664);
  type metadata accessor for AudioLanguageTrackPresenter();
  swift_allocObject();

  v625 = sub_20C0D480C(v161, v159);

  v588 = [objc_allocWithZone(type metadata accessor for SessionBufferPresenter()) init];
  sub_20B9C70A0(v158, v159, v160);
  v162 = objc_allocWithZone(type metadata accessor for SessionCastingPresenter());

  v587 = sub_20B76BF68(v163, v159);
  v669 = type metadata accessor for HeartRateDeviceDiscovery();
  v164 = v684;
  v682(v684, v678, v685);
  v166 = v702;
  v165 = v703;
  v167 = __swift_project_boxed_opaque_existential_1(v701, v702);
  sub_20B51CC64(v700, &v693);
  v168 = sub_20B9C70A0(v158, v159, v160);
  v659 = &v553;
  v169 = MEMORY[0x28223BE20](v168);
  v171 = &v553 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v172 + 16))(v171, v167, v166, v169);
  v173 = *(v165 + 8);
  v174 = v630;
  swift_unknownObjectRetain();
  v175 = sub_20C08732C(v164, v174, v670, v171, &v693, v159, v669, v166, v173);
  v176 = v672;
  v177 = v681;
  v178 = v677;
  v677(v672, v680, v681);
  v179 = v158;
  v180 = v159;
  v181 = v159;
  v182 = v664;
  sub_20B9C70A0(v179, v180, v664);
  type metadata accessor for SessionHeartRateDiscoveryPresenter();
  v183 = swift_allocObject();
  *(v183 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v183 + 32) = 0;
  *(v183 + 40) = 0;
  *(v183 + 48) = 2;
  *(v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_discoveryState) = 0;
  *(v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_heartRateDiscoveryDelayTimer) = 0;
  v178(v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_catalogWorkout, v176, v177);

  sub_20C133AA4();
  *(v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_eventHub) = v693;
  v624 = v175;
  *(v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_heartRateDeviceDiscovery) = v175;
  sub_20C133AA4();
  *(v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_platform) = v693;
  sub_20C133AA4();
  v184 = v182;
  sub_20B9C70A0(v181, v183 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_sessionOrigin, v182);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  v659 = v183;
  v611 = v185;
  sub_20C133AA4();

  sub_20B9C7450(v181, MEMORY[0x277D4DFB8]);
  v186 = v176;
  v187 = v681;
  v594 = *(v663 + 8);
  v595 = v663 + 8;
  v594(v176, v681);
  v188 = v181;
  sub_20B9C70A0(v683, v181, v184);
  v189 = v680;
  v190 = v677;
  v677(v186, v680, v187);
  type metadata accessor for SessionWatchDiscoveryPresenter();
  swift_allocObject();

  v646 = sub_20BDE69B0(v191, v188, v186);

  type metadata accessor for SessionContinueOnWatchPresenter();
  v192 = swift_allocObject();
  *(v192 + 24) = 0;
  v623 = v192;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionOngoingWorkoutDetectedPresenter();
  v193 = swift_allocObject();
  *(v193 + 24) = 0;
  v645 = v193;
  swift_unknownObjectWeakInit();
  v190(v186, v189, v187);
  v194 = v684;
  v195 = v678;
  v196 = v685;
  v197 = v682;
  v682(v684, v678, v685);

  v198 = v683;
  v199 = sub_20C13A464();
  v200 = v198;
  v201 = v676;
  sub_20B9C70A0(v200, v676, v664);
  type metadata accessor for SessionBurnBarPresenter();
  swift_allocObject();
  v202 = v186;
  v203 = v194;
  v670 = sub_20BB70AF8(v121, v202, v194, v199, v201, 2, 0, 1, 15.0);
  type metadata accessor for SessionActiveEnergyMetricPresenter();
  swift_allocObject();

  v204 = v675;

  v658 = sub_20BA1D6EC(v121, v204, &off_2822EE5E8);

  type metadata accessor for SessionCadencePresenter();
  swift_allocObject();

  v657 = sub_20B7216FC(v121, v204, &off_2822EE5E8);

  v197(v203, v195, v196);

  v205 = v666;
  sub_20C13ACF4();
  type metadata accessor for SessionDistanceMetricPresenter(0);
  v206 = swift_allocObject();
  v207 = v667;
  *(&v694 + 1) = v667;
  *&v695[0] = MEMORY[0x277D4F358];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v693);
  v209 = *(v668 + 2);
  v655 = v668 + 16;
  v656 = v209;
  (v209)(boxed_opaque_existential_1, v205, v207);
  *(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_sessionToken) = 0;
  *(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_externalOverlayDisplay + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_20C133AA4();
  *(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_eventHub) = v691;
  sub_20C133AA4();
  sub_20B51C710(&v691, v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_sessionClient);
  v610 = sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_subscriptionToken) = sub_20C13A914();
  v210 = (v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_metricBuilder);
  *v210 = v204;
  v210[1] = &off_2822EE5E8;
  v197(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_activityTypeBehavior, v684, v685);
  sub_20B51CC64(&v693, v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_timerProvider);
  v568 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
  swift_storeEnumTagMultiPayload();
  v647 = *(v206 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_eventHub + 8);
  swift_getObjectType();
  v211 = sub_20C13A7E4();
  v654 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_subscriptionToken;
  swift_allocObject();
  swift_weakInit();

  v619 = v211;
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  v669 = v206;

  sub_20B52A8B0();
  sub_20C13A784();

  v212 = *(v600 + 8);
  v213 = v684;
  v622 = v600 + 8;
  v621 = v212;
  v212(v684, v685);
  __swift_destroy_boxed_opaque_existential_1(&v691);
  __swift_destroy_boxed_opaque_existential_1(&v693);

  v214 = v675;

  v215 = *(v668 + 1);
  v216 = v666;
  v217 = v667;
  v215(v666, v667);

  v218 = v214;

  sub_20C13ACF4();
  type metadata accessor for SessionHeartRatePresenter();
  v219 = swift_allocObject();
  v220 = v665;
  (v656)(v665, v216, v217);
  v668 = sub_20B9BCA70(v121, v218, &off_2822EE5E8, v220, v219);
  v215(v216, v217);
  type metadata accessor for SessionInclinePresenter();
  v221 = swift_allocObject();
  *(v221 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v221 + 5) = 0;
  swift_unknownObjectWeakInit();
  v222 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v222 setNumberStyle_];
  v656 = v221;
  *(v221 + 6) = v222;
  type metadata accessor for SessionIntensityPresenter();
  v223 = swift_allocObject();
  *(v223 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v223 + 40) = 0;
  v655 = v223;
  swift_unknownObjectWeakInit();
  v682(v213, v678, v685);
  v224 = v672;
  v677(v672, v680, v681);
  v225 = v683;
  v226 = v676;
  v227 = v664;
  sub_20B9C70A0(v683, v676, v664);
  *&v695[0] = &off_2822E24A0;
  *(&v694 + 1) = v642;
  *&v693 = v660;
  v667 = objc_allocWithZone(type metadata accessor for SessionIntroSequencePresenter());
  v228 = __swift_mutable_project_boxed_opaque_existential_1(&v693, *(&v694 + 1));
  v229 = MEMORY[0x28223BE20](v228);
  v231 = (&v553 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v232 + 16))(v231, v229);
  v233 = *v231;

  v234 = v684;
  v609 = sub_20B9B9F34(v121, v684, v224, v226, v233, v667);
  __swift_destroy_boxed_opaque_existential_1(&v693);
  type metadata accessor for MultiUserCelebrationPresenter();
  v235 = swift_allocObject();
  *(v235 + 24) = 0;
  swift_unknownObjectWeakInit();

  v654 = v235;
  sub_20C133AA4();

  sub_20B9C70A0(v225, v226, v227);
  type metadata accessor for SessionProgressPresenter();
  swift_allocObject();

  v653 = sub_20B821C84(v236, v226);
  type metadata accessor for SessionRingsPresenter();
  swift_allocObject();

  v667 = sub_20BACC76C();
  type metadata accessor for SessionRPMPresenter();
  v237 = swift_allocObject();
  *(v237 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v237 + 40) = 0;
  v666 = v237;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionSPMPresenter();
  v238 = swift_allocObject();
  *(v238 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v238 + 40) = 0;
  v665 = v238;
  swift_unknownObjectWeakInit();
  v239 = v234;
  v682(v234, v678, v685);
  v240 = v224;
  v241 = v224;
  v242 = v680;
  v243 = v681;
  v244 = v677;
  v677(v241, v680, v681);
  sub_20B9C70A0(v683, v226, v664);

  LODWORD(v238) = sub_20C1380F4();
  type metadata accessor for DisplayPreferencesPresenter();
  swift_allocObject();
  v620 = sub_20B647CCC(v239, v240, v121, v226, MEMORY[0x277D083F0], 0, v238);

  type metadata accessor for SessionTimerPresenter();
  swift_allocObject();

  v664 = sub_20B60E4B0();
  v244(v240, v242, v243);
  type metadata accessor for SessionTrackPresenter();
  v245 = swift_allocObject();
  *(v245 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v245 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v245 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_state) = 0;
  v246 = OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_currentArtwork;
  v247 = sub_20C137C24();
  (*(*(v247 - 8) + 56))(v245 + v246, 1, 1, v247);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();

  v248 = *(v663 + 32);
  v663 = v245;
  v248(v245 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_catalogWorkout, v240, v243);
  v249 = sub_20C138104();
  if (v249 == sub_20C138104() || (v250 = sub_20C1344B4(), v252 = v251, v254 = v253, v255 = sub_20C133B84(), sub_20B583F4C(v250, v252, v254 & 1), (v255 & 1) != 0))
  {
    type metadata accessor for NullSystemRoutingController();
    v256 = swift_allocObject();
    v257 = &off_28229AD30;
  }

  else
  {
    v256 = [objc_allocWithZone(MEMORY[0x277CD5D48]) init];
    v257 = &off_2822B5F90;
  }

  v647 = MEMORY[0x277D4DFB8];
  v258 = v676;
  sub_20B9C70A0(v683, v676, MEMORY[0x277D4DFB8]);
  v259 = objc_allocWithZone(AVOutputControlDeviceDiscovery);
  v260 = v674;

  swift_unknownObjectRetain();
  v261 = [v259 init];
  v262 = objc_allocWithZone(type metadata accessor for SessionRoutePickerPresenter(0));
  v607 = sub_20B9BE7A4(v260, v258, v256, v257, v261, v262);
  v590 = v256;
  swift_unknownObjectRelease();

  v263 = v672;
  v264 = v680;
  v265 = v681;
  v266 = v677;
  v677(v672, v680, v681);
  type metadata accessor for SessionBackgroundPresenter();
  swift_allocObject();

  v618 = sub_20BAC3084(v267, v263);

  v266(v263, v264, v265);
  v268 = v678;
  v269 = v685;
  v682(v684, v678, v685);
  v270 = v683;
  v271 = v676;
  v272 = v647;
  sub_20B9C70A0(v683, v676, v647);

  v273 = sub_20C1380F4();
  type metadata accessor for SessionInstructionsPresenter();
  swift_allocObject();
  v274 = v260;
  v275 = v684;
  v644 = sub_20BCE89C0(v274, v263, v684, v271, v273);
  v677(v263, v680, v681);
  v276 = v275;
  v277 = v682;
  v682(v276, v268, v269);
  v278 = v272;
  sub_20B9C70A0(v270, v271, v272);
  v279 = (v662 + v671[11]);
  v280 = *v279;
  v281 = v279[1];
  type metadata accessor for SessionSummaryPresenter();
  v282 = swift_allocObject();
  v283 = v674;

  v284 = v675;

  sub_20B7A3194(&v704, &v693);
  sub_20B58C2C8(v280, v281);
  v652 = sub_20B9BEF74(v263, v283, &v704, v684, v676, v284, v280, v281, v282);

  v277(v649, v678, v685);
  sub_20B9C70A0(v683, v650, v278);
  sub_20B78290C(v697, &v693);
  type metadata accessor for SessionOverlayPresenter();
  v285 = swift_allocObject();
  *(v285 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v285 + 5) = 0;
  swift_unknownObjectWeakInit();
  v286 = v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_popupEventDismissalTimer;
  *v286 = 0u;
  *(v286 + 1) = 0u;
  *(v286 + 4) = 0;
  v287 = v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricMinimizerTimer;
  *(v287 + 4) = 0;
  *v287 = 0u;
  *(v287 + 1) = 0u;
  v288 = *(v640 + 56);
  v566 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  v288(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences, 1, 1, v606);
  v604 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings;
  (*(v601 + 56))(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings, 1, 1, v602);
  v289 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  v290 = sub_20C1368F4();
  v557 = *(v290 - 8);
  v291 = *(v557 + 56);
  v567 = v289;
  v599 = v290;
  v571 = v291;
  v572 = v557 + 56;
  (v291)(v285 + v289, 1, 1);
  v292 = *(v638 + 56);
  v598 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
  v569 = v292;
  v570 = v638 + 56;
  v292(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection, 1, 1, v648);
  *(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements) = MEMORY[0x277D84FA0];

  v293 = v669;

  v294 = v670;

  v295 = v658;

  v296 = v657;

  sub_20C133AA4();
  *(v285 + 56) = v691;
  sub_20C133AA4();
  sub_20B51C710(&v691, v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerProvider);
  v297 = (v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricBuilder);
  *v297 = v284;
  v297[1] = &off_2822EE5E8;
  sub_20B78290C(&v693, v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_stringBuilder);
  v298 = v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_externalOverlayStringBuilder;
  v603 = *(v695 + 8);
  sub_20B51CC64(&v693, v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_externalOverlayStringBuilder);
  *(v298 + 40) = v603;
  v298[56] = 3;
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v285 + 6) = sub_20C13A914();
  *(v285 + 9) = v294;
  *(v285 + 10) = v295;
  *(v285 + 11) = v296;
  *(v285 + 12) = v293;
  v299 = v656;
  *(v285 + 13) = v668;
  *(v285 + 14) = v299;
  v300 = v654;
  *(v285 + 15) = v655;
  *(v285 + 16) = v300;
  v301 = v667;
  *(v285 + 17) = v653;
  *(v285 + 18) = v301;
  v302 = v665;
  *(v285 + 19) = v666;
  *(v285 + 20) = v302;
  sub_20B9C70A0(v650, v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_sessionOrigin, v647);
  *(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) = v664;
  *(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_trackPresenter) = v663;
  v303 = OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_activityRings;
  swift_beginAccess();
  v304 = &v301[v303];
  v305 = v575;
  sub_20B52F9E8(v304, v575, &unk_27C765120);
  v306 = v604;
  swift_beginAccess();

  sub_20B5DF2D4(v305, v285 + v306, &unk_27C765120);
  swift_endAccess();
  v682(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityTypeBehavior, v649, v685);
  sub_20C133AA4();
  *(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_platform) = v691;
  v307 = v573;
  sub_20B9C70A0(v650, v573, v647);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v308 = v574;
    v309 = v558;
    v310 = v576;
    (*(v574 + 32))(v558, v307, v576);
    v311 = v559;
    sub_20C137DF4();
    v312 = v566;
    swift_beginAccess();
    sub_20B5DF2D4(v311, v285 + v312, &unk_27C765100);
    swift_endAccess();
    v313 = v560;
    sub_20C137E44();
    (*(v308 + 8))(v309, v310);
    v314 = v598;
    swift_beginAccess();
    sub_20B5DF2D4(v313, v285 + v314, &unk_27C765CB0);
    swift_endAccess();
    v315 = v579;
    v316 = v577;
    v317 = v312;
  }

  else
  {
    sub_20B9C7450(v307, MEMORY[0x277D4DFB8]);
    v315 = v579;
    v316 = v577;
    v317 = v566;
  }

  swift_beginAccess();
  v318 = v640;
  v319 = *(v640 + 48);
  v320 = v606;
  v321 = v317;
  if (v319(v285 + v317, 1, v606))
  {
    v323 = v612;
    v322 = v613;
    (*(v612 + 56))(v316, 1, 1, v613);
    sub_20C1364F4();
    if ((*(v323 + 48))(v316, 1, v322) != 1)
    {
      sub_20B520158(v316, &qword_27C762D00);
    }
  }

  else
  {
    v324 = v285 + v317;
    v325 = v597;
    (*(v318 + 16))(v597, v324, v320);
    sub_20C135244();
    (*(v318 + 8))(v325, v320);
    v327 = v612;
    v326 = v613;
    (*(v612 + 56))(v316, 0, 1, v613);
    (*(v327 + 32))(v632, v316, v326);
  }

  if (v319(v285 + v321, 1, v320))
  {
    v329 = v614;
    v328 = v615;
    v330 = v578;
    (*(v614 + 56))(v578, 1, 1, v615);
    sub_20C136684();
    if ((*(v329 + 48))(v330, 1, v328) != 1)
    {
      sub_20B520158(v330, &unk_27C768800);
    }
  }

  else
  {
    v331 = v640;
    v332 = v597;
    (*(v640 + 16))(v597, v285 + v321, v320);
    v333 = v578;
    sub_20C135254();
    (*(v331 + 8))(v332, v320);
    v335 = v614;
    v334 = v615;
    (*(v614 + 56))(v333, 0, 1, v615);
    (*(v335 + 32))(v633, v333, v334);
  }

  v336 = v319(v285 + v321, 1, v320);
  v337 = v580;
  if (v336)
  {
    v338 = v616;
    v339 = v617;
    (*(v616 + 56))(v315, 1, 1, v617);
    sub_20C136954();
    v340 = (*(v338 + 48))(v315, 1, v339);
    v341 = v639;
    v342 = v598;
    if (v340 != 1)
    {
      sub_20B520158(v315, &unk_27C767270);
    }
  }

  else
  {
    v343 = v640;
    v344 = v597;
    (*(v640 + 16))(v597, v285 + v321, v320);
    sub_20C135264();
    (*(v343 + 8))(v344, v320);
    v345 = v616;
    v346 = v617;
    (*(v616 + 56))(v315, 0, 1, v617);
    (*(v345 + 32))(v634, v315, v346);
    v341 = v639;
    v342 = v598;
  }

  swift_beginAccess();
  sub_20B52F9E8(v285 + v342, v641, &unk_27C765CB0);
  sub_20B52F9E8(v285 + v604, v631, &unk_27C765120);
  v347 = sub_20C1371B4();
  v348 = sub_20C1371F4();
  v349 = *(v670 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state);
  v350 = sub_20C1371D4();
  v351 = OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence;
  v352 = v657;
  swift_beginAccess();
  sub_20B52F9E8(&v352[v351], v636, &unk_27C7687F0);
  v353 = v669;
  v354 = v568;
  swift_beginAccess();
  sub_20B9C70A0(v353 + v354, v337, type metadata accessor for SessionDistanceMetricPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v640) = v348;
  LODWORD(v606) = v347;
  if (!EnumCaseMultiPayload)
  {
    v356 = sub_20C134514();
    v357 = *(v356 - 8);
    v358 = v635;
    (*(v357 + 32))(v635, v337, v356);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767280);
    swift_unknownObjectRelease();
    v356 = sub_20C134514();
    v357 = *(v356 - 8);
    v358 = v635;
    (*(v357 + 32))(v635, v337, v356);
LABEL_29:
    (*(v357 + 56))(v358, 0, 1, v356);
    goto LABEL_31;
  }

  v359 = sub_20C134514();
  (*(*(v359 - 8) + 56))(v635, 1, 1, v359);
LABEL_31:
  v360 = v567;
  v361 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_lastReceivedMetric;
  v362 = v668;
  swift_beginAccess();
  sub_20B52F9E8(&v362[v361], v637, &unk_27C7650E0);
  swift_beginAccess();
  sub_20B52F9E8(v285 + v360, v341, &unk_27C767260);
  v690 = sub_20B7163FC(&unk_282287620);
  v363 = *(v350 + 16);
  v647 = v285;
  if (v363)
  {
    *&v691 = MEMORY[0x277D84F90];
    sub_20BB5D99C(0, v363, 0);
    v364 = 32;
    v365 = v691;
    do
    {
      v366 = *(v350 + v364);
      *&v691 = v365;
      v368 = *(v365 + 16);
      v367 = *(v365 + 24);
      if (v368 >= v367 >> 1)
      {
        sub_20BB5D99C((v367 > 1), v368 + 1, 1);
        v365 = v691;
      }

      *(v365 + 16) = v368 + 1;
      *(v365 + v368 + 32) = 0x205040C03uLL >> (8 * v366);
      ++v364;
      --v363;
    }

    while (v363);

    v285 = v647;
    v341 = v639;
  }

  else
  {

    v365 = MEMORY[0x277D84F90];
  }

  v369 = v648;
  if (qword_27C760C50 != -1)
  {
    swift_once();
  }

  v370 = off_27C76FE10;

  v371 = sub_20B7163FC(v365);

  if (*(v371 + 16) <= v370[2] >> 3)
  {
    *&v691 = v370;
    sub_20B6CE748(v371);

    v372 = v691;
  }

  else
  {
    v372 = sub_20B6CFECC(v371, v370);
  }

  sub_20B6CE748(v372);

  v373 = v581;
  sub_20B52F9E8(v641, v581, &unk_27C765CB0);
  v374 = v638;
  if ((*(v638 + 48))(v373, 1, v369) == 1)
  {

    sub_20B520158(v373, &unk_27C765CB0);
    v375 = MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v374 + 32))(v586, v373, v369);
    v376 = sub_20C1366C4();
    v378 = v377;
    *&v691 = v376;
    *(&v691 + 1) = v377;
    v380 = v379 & 1;
    v692 = v379 & 1;
    LOBYTE(v686) = 0;
    sub_20B64B480();
    sub_20B64B4D4();
    v381 = sub_20C133C04();
    sub_20B583F4C(v376, v378, v380);
    if (v381)
    {

      v690 = MEMORY[0x277D84FA0];
    }

    v382 = sub_20C136994();
    v384 = v383;
    *&v691 = v382;
    *(&v691 + 1) = v383;
    v386 = v385 & 1;
    v692 = v385 & 1;
    LOBYTE(v686) = 1;
    sub_20B64B57C();
    sub_20B64B5D0();
    v387 = sub_20C133C04();
    sub_20B583F4C(v382, v384, v386);
    v388 = v601;
    if (v387)
    {
      sub_20B6C9884(12);
    }

    v389 = sub_20C136534();
    v391 = v390;
    *&v691 = v389;
    *(&v691 + 1) = v390;
    v393 = v392 & 1;
    v692 = v392 & 1;
    LOBYTE(v686) = 0;
    sub_20B64B3D8();
    sub_20B64B42C();
    v394 = sub_20C133C04();
    sub_20B583F4C(v389, v391, v393);
    if (v394)
    {
      sub_20B6C9884(1);
    }

    v395 = v561;
    if (v349 == 3)
    {
      sub_20B6C9884(1);
    }

    v396 = v564;
    v397 = v640;
    if ((v606 & 1) == 0)
    {
      sub_20B6C9884(0);
    }

    if ((v397 & 1) == 0)
    {
      sub_20B6C9884(1);
    }

    sub_20B52F9E8(v631, v395, &unk_27C765120);
    v398 = v602;
    if ((*(v388 + 48))(v395, 1, v602) == 1)
    {
      sub_20B520158(v395, &unk_27C765120);
      sub_20B6C9884(0);
    }

    else
    {
      (*(v388 + 32))(v565, v395, v398);
      if ((sub_20B8B5FD0() & 1) == 0)
      {
        sub_20B6C9884(0);
      }

      v399 = v554;
      sub_20C133D34();
      v400 = sub_20C134B54();
      v402 = v401;
      v404 = v403;
      (*(v555 + 8))(v399, v556);
      *&v691 = v400;
      *(&v691 + 1) = v402;
      v692 = v404 & 1;
      v640 = xmmword_20C152300;
      v686 = xmmword_20C152300;
      v687 = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v405 = sub_20C133BF4();
      sub_20B583F4C(v400, v402, v404 & 1);
      if (v405 & 1) != 0 || (v406 = sub_20C136424(), v408 != -1) && (*&v691 = v406, *(&v691 + 1) = v407, v692 = v408, v686 = v640, v687 = 1, v409 = sub_20C133BF4(), sub_20B583F4C(v691, *(&v691 + 1), v692), (v409))
      {
        if (*(v690 + 16))
        {
          sub_20B6C9884(byte_282287F28);
          sub_20B6C9884(byte_282287F29);
        }
      }

      (*(v601 + 8))(v565, v602);
    }

    v410 = sub_20C0949C8();
    v411 = v563;
    sub_20B52F9E8(v639, v563, &unk_27C767260);
    v412 = v557;
    v413 = v599;
    if ((*(v557 + 48))(v411, 1, v599) == 1)
    {
      sub_20B520158(v411, &unk_27C767260);
      v414 = MEMORY[0x277D84FA0];
    }

    else
    {
      v415 = sub_20C04CE54();
      (*(v412 + 8))(v411, v413);
      v414 = v415;
    }

    v416 = v562;
    v417 = sub_20B722BEC(v414, v410);
    sub_20B52F9E8(v635, v416, &unk_27C765050);
    v418 = sub_20C134514();
    v419 = *(v418 - 8);
    if ((*(v419 + 48))(v416, 1, v418) == 1)
    {
      sub_20B520158(v416, &unk_27C765050);
    }

    else
    {
      v420 = sub_20C1344E4();
      (*(v419 + 8))(v416, v418);
      BYTE4(v691) = BYTE4(v420) & 1;
      LODWORD(v691) = v420;
      LODWORD(v686) = 0;
      BYTE4(v686) = 1;
      sub_20B791024();
      sub_20B791078();
      if (sub_20C133BF4())
      {
        *&v691 = v417;
        sub_20B6FFF90(&v686, 3);
        v417 = v691;
      }
    }

    sub_20B52F9E8(v637, v396, &unk_27C7650E0);
    v421 = sub_20C134914();
    v422 = *(v421 - 8);
    if ((*(v422 + 48))(v396, 1, v421) == 1)
    {
      sub_20B520158(v396, &unk_27C7650E0);
    }

    else
    {
      v423 = sub_20C1348D4();
      (*(v422 + 8))(v396, v421);
      BYTE4(v691) = BYTE4(v423) & 1;
      LODWORD(v691) = v423;
      LODWORD(v686) = 0;
      BYTE4(v686) = 1;
      sub_20B64BA78();
      sub_20B64BACC();
      if (sub_20C133BF4())
      {
        *&v691 = v417;
        sub_20B6FFF90(&v686, byte_282287F50);
        sub_20B6FFF90(&v686, byte_282287F51);
        sub_20B6FFF90(&v686, byte_282287F52);
        v417 = v691;
      }
    }

    v285 = v647;
    v341 = v639;
    v424 = sub_20C133DD4();
    if ((*(*(v424 - 8) + 48))(v636, 1, v424) != 1)
    {
      *&v691 = v417;
      sub_20B6FFF90(&v686, 2);
      v417 = v691;
    }

    v375 = sub_20B604E74(v417, v690);

    (*(v638 + 8))(v586, v648);
  }

  sub_20B520158(v341, &unk_27C767260);
  sub_20B520158(v637, &unk_27C7650E0);
  sub_20B520158(v635, &unk_27C765050);
  sub_20B520158(v631, &unk_27C765120);
  sub_20B520158(v641, &unk_27C765CB0);
  (*(v616 + 8))(v634, v617);
  (*(v614 + 8))(v633, v615);
  (*(v612 + 8))(v632, v613);
  sub_20B520158(v636, &unk_27C7687F0);
  *(v285 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements) = v375;
  swift_unknownObjectRetain();
  sub_20B8BAC74();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_20B8BB4D0();
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_20C13ABE4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  sub_20C13AFD4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  v425 = sub_20C13B364();
  swift_allocObject();
  swift_weakInit();
  v641 = v425;
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  sub_20C13AE74();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  sub_20C138434();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768828, MEMORY[0x277D53FD0]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v691);
  swift_getObjectType();
  v426 = sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();

  *&v640 = v426;
  sub_20C13A784();

  v427 = v674;

  __swift_destroy_boxed_opaque_existential_1(&v691);
  sub_20B815F44(&v693);
  sub_20B9C7450(v650, MEMORY[0x277D4DFB8]);
  v428 = v685;
  v621(v649, v685);
  *&v695[0] = &off_2822E24A0;
  v429 = v642;
  *(&v694 + 1) = v642;
  v430 = v660;
  *&v693 = v660;
  v431 = sub_20C131E54();
  swift_allocObject();

  v432 = sub_20C131E44();
  v689 = MEMORY[0x277CE9B88];
  v688 = v431;
  *&v686 = v432;
  sub_20B780AD8(v427, &v693, &v686, &v691);
  __swift_destroy_boxed_opaque_existential_1(&v686);
  __swift_destroy_boxed_opaque_existential_1(&v693);
  v682(v684, v678, v428);
  v433 = v672;
  v677(v672, v680, v681);
  sub_20B51CC64(&v691, &v693);
  v434 = v676;
  sub_20B9C70A0(v683, v676, MEMORY[0x277D4DFB8]);
  v689 = &off_2822E24A0;
  v688 = v429;
  *&v686 = v430;
  type metadata accessor for SessionMediaPlayerPresenter();
  v435 = swift_allocObject();
  v436 = __swift_mutable_project_boxed_opaque_existential_1(&v686, v429);
  v437 = MEMORY[0x28223BE20](v436);
  v439 = (&v553 - ((v438 + 15) & 0xFFFFFFFFFFFFFFF0));
  v582(v439, v437);
  v440 = *v439;

  v441 = v585;

  v442 = v629;

  v443 = v628;

  v649 = v441;
  v444 = sub_20B9BA704(v427, v684, v442, v433, &v693, v441, v443, v434, v127, v440, v435);
  __swift_destroy_boxed_opaque_existential_1(&v686);
  type metadata accessor for ProductPlacementPresenter();
  swift_allocObject();

  v445 = sub_20B7FA064();
  v446 = v661;
  sub_20B9C70A0(v662, v661, type metadata accessor for WorkoutSessionConfiguration);
  type metadata accessor for SessionPresenter();
  v447 = swift_allocObject();
  *(v447 + 3) = 0;
  swift_unknownObjectWeakInit();
  v448 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
  v449 = sub_20C138184();
  (*(*(v449 - 8) + 56))(&v447[v448], 1, 1, v449);
  v450 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_startDate;
  v451 = sub_20C132E94();
  (*(*(v451 - 8) + 56))(&v447[v450], 1, 1, v451);
  v569(&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection], 1, 1, v648);
  v571(&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_heartRateDeviceConnection], 1, 1, v599);
  v452 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
  v453 = sub_20C138284();
  (*(*(v453 - 8) + 56))(&v447[v452], 1, 1, v453);
  v454 = &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_initiatedGroupActivity];
  v455 = sub_20C13BA24();
  (*(*(v455 - 8) + 56))(v454, 1, 1, v455);
  v456 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_gymKitConnection;
  v457 = sub_20C134C04();
  (*(*(v457 - 8) + 56))(&v447[v456], 1, 1, v457);
  v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_allowDistributedSessionBrokering] = 1;
  v458 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination;
  v459 = sub_20C1337D4();
  (*(*(v459 - 8) + 56))(&v447[v458], 1, 1, v459);
  v460 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout;
  v461 = sub_20C137FE4();
  (*(*(v461 - 8) + 56))(&v447[v460], 1, 1, v461);
  v462 = &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onTransitioningToPostSession];
  *v462 = 0;
  *(v462 + 1) = 0;
  v463 = &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onSessionCreationError];
  *v463 = 0;
  *(v463 + 1) = 0;
  v464 = &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onWillPresentSessionSummary];
  *v464 = 0;
  *(v464 + 1) = 0;
  v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_estimatedMetricsPromptVisible] = 0;
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer] = 0;
  v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state] = 0;
  (*(v591 + 104))(v593, *MEMORY[0x277D4EF90], v592);
  LOBYTE(v693) = 2;
  v676 = v444;

  v650 = v445;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768830);
  sub_20B5EB060(&unk_27C76BB90);
  sub_20B5EB060(&unk_27C768840);
  sub_20C13A384();
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient]);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_timerProvider]);
  sub_20C133AA4();
  sub_20B9C7108(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_healthStore]);
  v465 = sub_20C1344B4();
  v467 = v466;
  *&v693 = v465;
  *(&v693 + 1) = v466;
  LOBYTE(v433) = v468 & 1;
  LOBYTE(v694) = v468 & 1;
  v686 = xmmword_20C14F2B0;
  v687 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  LOBYTE(v427) = sub_20C133BF4();
  sub_20B583F4C(v465, v467, v433);
  v469 = v671[5];
  v470 = v446;
  v648 = v454;
  if (v427)
  {
    v471 = v684;
    sub_20C137244();
    (*(v600 + 32))(&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior], v471, v685);
  }

  else
  {
    v682(&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior], (v446 + v469), v685);
  }

  sub_20C138F44();
  sub_20C133AA4();
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_audioSessionCoordinator] = v693;
  sub_20C133AA4();
  v472 = &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_eventHub];
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_eventHub] = v693;
  sub_20C133AA4();
  v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_platform] = v693;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource]);
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_subscriptionToken] = sub_20C13A914();
  *(v447 + 12) = v676;
  *(v447 + 13) = &off_28229BC70;
  v473 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout;
  v474 = v470;
  v475 = v681;
  v476 = v677;
  v677(&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout], v474, v681);
  v476(v672, &v447[v473], v475);
  sub_20B51C88C(0, &qword_281100530);

  sub_20C13D374();
  sub_20C138924();
  swift_allocObject();
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_timeline] = sub_20C138904();
  v477 = v671;
  v478 = v661;
  sub_20B9C70A0(v661 + v671[7], &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin], MEMORY[0x277D4DFB8]);
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_startTime] = *(v478 + v477[8]);
  v479 = v477[9];
  v480 = v648;
  swift_beginAccess();
  sub_20B9C7120(v478 + v479, v480);
  swift_endAccess();
  v481 = *(v472 + 1);
  type metadata accessor for DeviceOrientationObserver();
  swift_allocObject();
  v482 = swift_unknownObjectRetain();
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_orientationObserver] = sub_20B8E32D4(v482, v481);
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_unitPreferencesProvider] = v675;
  v483 = *(v472 + 1);
  v484 = v684;
  v682(v684, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior], v685);
  type metadata accessor for SessionPowerLogObserver();
  swift_allocObject();
  v485 = swift_unknownObjectRetain();
  v486 = sub_20BAC6E5C(v485, v483, v484);
  swift_unknownObjectRelease();
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionPowerLog] = v486;
  sub_20C138DE4();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionEventPublisher] = sub_20C138DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient]);
  v487 = v626;
  *(v447 + 14) = v627;
  *(v447 + 15) = v487;
  v488 = v587;
  v489 = v588;
  *(v447 + 4) = v618;
  *(v447 + 5) = v489;
  v490 = v620;
  *(v447 + 6) = v488;
  *(v447 + 7) = v490;
  v491 = v644;
  *(v447 + 8) = v659;
  *(v447 + 9) = v491;
  v492 = v645;
  *(v447 + 20) = v623;
  *(v447 + 21) = v492;
  v493 = v647;
  *(v447 + 10) = v609;
  *(v447 + 11) = v493;
  v494 = v607;
  *(v447 + 16) = v625;
  *(v447 + 17) = v494;
  v495 = v646;
  *(v447 + 18) = v652;
  *(v447 + 19) = v495;
  *(v447 + 22) = v650;
  *(v447 + 23) = &off_2822A9498;

  v684 = v489;
  v496 = v488;

  v497 = v644;

  v498 = v609;

  v677 = v607;

  v499 = v646;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_assetClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_multiUserClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_contentAvailabilityClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_mediaTagStringBuilder]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionPreferenceClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CDC0);
  sub_20C133AA4();
  sub_20B51C710(&v693, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_standaloneWorkoutTimeProvider]);
  type metadata accessor for SessionEventPresentationCoordinator();
  swift_allocObject();

  v500 = sub_20BD6CB08(0.5, 0.5);

  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_presentationCoordinator] = v500;
  v501 = v661;
  sub_20B9C70A0(v661, &v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration], type metadata accessor for WorkoutSessionConfiguration);
  *&v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_heartRateDeviceDiscovery] = v624;
  v447[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_isPictureInPictureAllowed] = *(v501 + v671[6]);
  v502 = swift_allocObject();
  swift_weakInit();
  v503 = (v497 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_onStartCountdown);
  v504 = *(v497 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_onStartCountdown);
  *v503 = sub_20B9C7190;
  v503[1] = v502;

  sub_20B583ECC(v504);

  v505 = swift_allocObject();
  swift_weakInit();
  v506 = &v498[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onStartCountdown];
  v507 = *&v498[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onStartCountdown];
  *v506 = sub_20B9C7198;
  v506[1] = v505;

  sub_20B583ECC(v507);

  v508 = swift_allocObject();
  swift_weakInit();
  v509 = &v498[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceStarted];
  v510 = *&v498[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceStarted];
  *v509 = sub_20B9C71A0;
  v509[1] = v508;

  sub_20B583ECC(v510);

  v511 = swift_allocObject();
  swift_weakInit();
  v679 = v498;
  v512 = &v498[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceCompleted];
  v513 = *&v498[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceCompleted];
  *v512 = sub_20B9C71A8;
  v512[1] = v511;

  sub_20B583ECC(v513);

  v514 = swift_allocObject();
  swift_weakInit();
  v515 = &v496[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onExitButtonTapped];
  v516 = *&v496[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onExitButtonTapped];
  *v515 = sub_20B9C71B0;
  v515[1] = v514;

  sub_20B583ECC(v516);

  v517 = swift_allocObject();
  swift_weakInit();
  v518 = &v496[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onAirplayButtonTapped];
  v519 = *&v496[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onAirplayButtonTapped];
  *v518 = sub_20B9C71B8;
  v518[1] = v517;

  sub_20B583ECC(v519);

  v520 = swift_allocObject();
  swift_weakInit();
  v682 = v496;
  v521 = &v496[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onStartIntentExpressed];
  v522 = *&v496[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onStartIntentExpressed];
  *v521 = sub_20B9C7190;
  v521[1] = v520;

  sub_20B583ECC(v522);

  v523 = swift_allocObject();
  swift_weakInit();
  v524 = v676;
  v525 = v676[7];
  v676[7] = sub_20B9C71C0;
  v524[8] = v523;

  sub_20B583ECC(v525);

  v526 = swift_allocObject();
  swift_weakInit();
  v527 = v524[13];
  v524[13] = sub_20B9C71C8;
  v524[14] = v526;

  sub_20B583ECC(v527);

  v528 = swift_allocObject();
  swift_weakInit();
  v529 = v524[11];
  v524[11] = sub_20B9C71D0;
  v524[12] = v528;

  sub_20B583ECC(v529);

  v530 = swift_allocObject();
  swift_weakInit();
  v531 = v524[9];
  v524[9] = sub_20B9C71D8;
  v524[10] = v530;

  sub_20B583ECC(v531);

  v532 = swift_allocObject();
  swift_weakInit();
  v533 = v524[15];
  v524[15] = sub_20B9C71B8;
  v524[16] = v532;

  sub_20B583ECC(v533);

  v534 = swift_allocObject();
  swift_weakInit();
  v535 = v659;
  v536 = v659[4];
  v659[4] = sub_20B9C71E0;
  v535[5] = v534;

  sub_20B583ECC(v536);

  v537 = swift_allocObject();
  swift_weakInit();
  v538 = v499[2];
  v499[2] = sub_20B9C71E8;
  v499[3] = v537;

  sub_20B583ECC(v538);

  v539 = swift_allocObject();
  swift_weakInit();
  v540 = v652;
  v541 = *(v652 + 32);
  *(v652 + 32) = sub_20B9C71F0;
  *(v540 + 40) = v539;

  sub_20B583ECC(v541);

  swift_getObjectType();
  sub_20C13AC64();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v693);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7208();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v693);

  swift_getObjectType();
  sub_20C13A734();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13A834();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13A614();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13AF14();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  type metadata accessor for RemoteDisplayConnected();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7294();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v693);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13A6A4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13A904();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13AEA4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C138FF4();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C768898, MEMORY[0x277D54230]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C138594();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&unk_27C7688A0, MEMORY[0x277D54048]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C1384E4();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C764E88, MEMORY[0x277D54010]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C1385E4();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7A60(&qword_27C7688B0, MEMORY[0x277D54058]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B9C7338();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  sub_20C13B344();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v693);
  if (sub_20C1371E4())
  {
    swift_getObjectType();
    sub_20C13AEE4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(&v693);
  }

  else
  {
  }

  v542 = v596;
  v543 = sub_20C1344B4();
  v545 = v544;
  v547 = v546;
  v548 = sub_20C133B84();
  sub_20B583F4C(v543, v545, v547 & 1);
  sub_20C13CDC4();
  v549 = sub_20C13CDF4();
  (*(*(v549 - 8) + 56))(v542, 0, 1, v549);
  if (v548)
  {
    v550 = &unk_20C166DF0;
  }

  else
  {
    v550 = &unk_20C166DE8;
  }

  v551 = swift_allocObject();
  v551[2] = 0;
  v551[3] = 0;
  v551[4] = v447;

  sub_20B6383D0(0, 0, v542, v550, v551);

  sub_20C13A464();
  sub_20C138DC4();

  sub_20B7A3B8C(&v704);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_20B9C7450(v662, type metadata accessor for WorkoutSessionConfiguration);
  sub_20B9C7450(v661, type metadata accessor for WorkoutSessionConfiguration);
  __swift_destroy_boxed_opaque_existential_1(&v691);
  sub_20B815F44(v697);
  __swift_destroy_boxed_opaque_existential_1(v699);
  __swift_destroy_boxed_opaque_existential_1(v700);
  v594(v680, v681);
  sub_20B9C7450(v683, MEMORY[0x277D4DFB8]);
  v621(v678, v685);
  __swift_destroy_boxed_opaque_existential_1(v701);
  return v447;
}
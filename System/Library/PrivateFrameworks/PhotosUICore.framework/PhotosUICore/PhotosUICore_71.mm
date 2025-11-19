void sub_1A4536440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (*(*(v6 + 112) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a3;
  v12[6] = a4;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_1A52457C4();
}

uint64_t sub_1A45366FC()
{
  swift_beginAccess();
  if (*(*(v0 + 112) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A453676C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5245904();
}

uint64_t sub_1A45369D8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_1A3D5C0BC(a1);
  if ((v5 & 1) == 0)
  {
    return swift_endAccess();
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 112);
  v10 = *(v2 + 112);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A4538454();
    v8 = v10;
  }

  sub_1A3D5FAFC(*(v8 + 48) + 40 * v6);
  sub_1A44A1A0C(v6, v8);
  *(v2 + 112) = v8;
  swift_endAccess();
  swift_unknownObjectRelease();

  return sub_1A45353F0();
}

uint64_t sub_1A4536AB8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A4536B68()
{
  sub_1A3DB0844(0);
  sub_1A4538780(&qword_1EB128DE0, 255, sub_1A3DB0844);

  sub_1A5245C54();
}

uint64_t sub_1A4536C30(void **a1)
{
  v2 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A4538600(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1A4536CD8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1A4536CD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A524EA34();
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
        type metadata accessor for NotificationsPhotosItem(0);
        v6 = sub_1A524CAC4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A4537068(v8, v9, a1, v4);
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
    return sub_1A4536E04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A4536E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for NotificationsPhotosItem(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1A4538BC8(v23, v17, type metadata accessor for NotificationsPhotosItem);
      sub_1A4538BC8(v20, v13, type metadata accessor for NotificationsPhotosItem);
      v24 = sub_1A5241084();
      sub_1A4538B68(v13, type metadata accessor for NotificationsPhotosItem);
      result = sub_1A4538B68(v17, type metadata accessor for NotificationsPhotosItem);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1A45387C8(v23, v35, type metadata accessor for NotificationsPhotosItem);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1A45387C8(v25, v20, type metadata accessor for NotificationsPhotosItem);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A4537068(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for NotificationsPhotosItem(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1A3D86884(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1A45379CC(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1A3D86884(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1A3D867F8(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1A4538BC8(v110 + v24 * v23, v18, type metadata accessor for NotificationsPhotosItem);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1A4538BC8(v26, v116, type metadata accessor for NotificationsPhotosItem);
      LODWORD(v111) = sub_1A5241084();
      sub_1A4538B68(v28, type metadata accessor for NotificationsPhotosItem);
      result = sub_1A4538B68(v18, type metadata accessor for NotificationsPhotosItem);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1A4538BC8(v30, v18, type metadata accessor for NotificationsPhotosItem);
        v31 = v116;
        sub_1A4538BC8(v5, v116, type metadata accessor for NotificationsPhotosItem);
        v32 = sub_1A5241084() & 1;
        sub_1A4538B68(v31, type metadata accessor for NotificationsPhotosItem);
        result = sub_1A4538B68(v18, type metadata accessor for NotificationsPhotosItem);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_1A45387C8(v39 + v38, v107, type metadata accessor for NotificationsPhotosItem);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1A45387C8(v107, v39 + v33, type metadata accessor for NotificationsPhotosItem);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_1A3D8598C(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1A3D8598C((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1A45379CC(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1A3D86884(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_1A3D867F8(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1A4538BC8(v5, v18, type metadata accessor for NotificationsPhotosItem);
    v93 = v116;
    sub_1A4538BC8(v90, v116, type metadata accessor for NotificationsPhotosItem);
    a4 = sub_1A5241084();
    sub_1A4538B68(v93, type metadata accessor for NotificationsPhotosItem);
    result = sub_1A4538B68(v18, type metadata accessor for NotificationsPhotosItem);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for NotificationsPhotosItem;
    v94 = v115;
    sub_1A45387C8(v5, v115, type metadata accessor for NotificationsPhotosItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_1A45387C8(v94, v90, type metadata accessor for NotificationsPhotosItem);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1A45379CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for NotificationsPhotosItem(0);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1A4538BC8(v30, v43, type metadata accessor for NotificationsPhotosItem);
          v32 = v44;
          sub_1A4538BC8(v27, v44, type metadata accessor for NotificationsPhotosItem);
          v33 = sub_1A5241084();
          sub_1A4538B68(v32, type metadata accessor for NotificationsPhotosItem);
          sub_1A4538B68(v31, type metadata accessor for NotificationsPhotosItem);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
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

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1A4538BC8(a2, v43, type metadata accessor for NotificationsPhotosItem);
        v21 = v44;
        sub_1A4538BC8(a4, v44, type metadata accessor for NotificationsPhotosItem);
        v22 = sub_1A5241084();
        sub_1A4538B68(v21, type metadata accessor for NotificationsPhotosItem);
        sub_1A4538B68(v20, type metadata accessor for NotificationsPhotosItem);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1A4537EFC(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1A4537EFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for NotificationsPhotosItem(0);
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

uint64_t sub_1A4537FE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4538AA4();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v42 = *(v24 + 32);
        v40 = v25;
        v41 = v26;
        v27 = (*(v5 + 56) + 32 * v23);
        v38 = *v27;
        v39 = v27[1];
      }

      else
      {
        sub_1A3D5FB50(v24, &v40);
        v28 = (*(v5 + 56) + 32 * v23);
        v38 = *v28;
        v39 = v28[1];

        swift_unknownObjectRetain();
      }

      result = sub_1A524E354();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v40;
      v18 = v41;
      *(v16 + 32) = v42;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      *v19 = v38;
      v19[1] = v39;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A45382A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A3D5C0BC(a5);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_1A4537FE0(v19, a6 & 1);
      v25 = sub_1A3D5C0BC(a5);
      if ((v20 & 1) != (v26 & 1))
      {
LABEL_17:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }

      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1A4538454();
  }

  v22 = *v7;
  if ((v20 & 1) == 0)
  {
LABEL_13:
    result = sub_1A3D5FB50(a5, v34);
    v22[(v16 >> 6) + 8] |= 1 << v16;
    v27 = v22[6] + 40 * v16;
    v28 = v35;
    v29 = v34[1];
    *v27 = v34[0];
    *(v27 + 16) = v29;
    *(v27 + 32) = v28;
    v30 = (v22[7] + 32 * v16);
    *v30 = a1;
    v30[1] = a2;
    v30[2] = a3;
    v30[3] = a4;
    v31 = v22[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v22[2] = v33;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  swift_unknownObjectRelease();
}

void *sub_1A4538454()
{
  v1 = v0;
  sub_1A4538AA4();
  v2 = *v0;
  v3 = sub_1A524E764();
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
        sub_1A3D5FB50(*(v2 + 48) + 40 * v17, v26);
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v4 + 48) + 40 * v17;
        v22 = *(v18 + 16);
        v23 = v26[0];
        v24 = v26[1];
        *(v21 + 32) = v27;
        *v21 = v23;
        *(v21 + 16) = v24;
        v25 = *(v4 + 56) + 32 * v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v22;

        result = swift_unknownObjectRetain();
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

unint64_t sub_1A4538614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A4538AA4();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A4538BC8(v4, v15, sub_1A4538C30);
      result = sub_1A3D5C0BC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A453872C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A45353F0();
  }

  return result;
}

uint64_t sub_1A4538780(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A45387C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4538830()
{
  result = qword_1EB13CDE0;
  if (!qword_1EB13CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDE0);
  }

  return result;
}

unint64_t sub_1A45388B0()
{
  result = qword_1EB129958;
  if (!qword_1EB129958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129958);
  }

  return result;
}

unint64_t sub_1A4538908()
{
  result = qword_1EB129940;
  if (!qword_1EB129940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129940);
  }

  return result;
}

void sub_1A4538AA4()
{
  if (!qword_1EB1263C8)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263C8);
    }
  }
}

void sub_1A4538B04()
{
  if (!qword_1EB126540)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126540);
    }
  }
}

uint64_t sub_1A4538B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4538BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4538C30()
{
  if (!qword_1EB13CDE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CDE8);
    }
  }
}

uint64_t sub_1A4538C90()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EBE68);
  __swift_project_value_buffer(v6, qword_1EB1EBE68);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A4538E7C()
{
  result = qword_1EB13CDF8;
  if (!qword_1EB13CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDF8);
  }

  return result;
}

void sub_1A4538ED0()
{
  if (!qword_1EB13CE08)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CE08);
    }
  }
}

uint64_t sub_1A4538F30(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4538FC8, v4, v3);
}

uint64_t sub_1A4538FC8()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4538E7C();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A53463C8);
}

uint64_t sub_1A45390D4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A453916C, v4, v3);
}

uint64_t sub_1A453916C()
{
  v1 = v0[5];
  sub_1A523FF44();
  v2 = v0[2];
  v0[9] = v2;
  v0[3] = v1;
  sub_1A4538E7C();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  v0[10] = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A42CF140;

  return sub_1A4539BA0(v2, v3, v5);
}

uint64_t sub_1A4539260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A45390D4(a1, v1);
}

uint64_t sub_1A45392FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return sub_1A4539BA0(a1, a2, a3);
}

uint64_t sub_1A45393BC()
{
  v0 = sub_1A5240334();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240BA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v19 = sub_1A5240BB4();
  v12 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  sub_1A3F57E84();
  v20 = v13;
  sub_1A524C5B4();
  sub_1A5241244();
  v14 = *MEMORY[0x1E6968DF0];
  v15 = *(v7 + 104);
  v15(v9, v14, v6);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v15(v9, v14, v6);
  v16 = v21;
  sub_1A5240BC4();
  (*(v12 + 56))(v16, 0, 1, v19);
  v26 = 0;
  sub_1A5240174();
  (*(v24 + 104))(v23, *MEMORY[0x1E695A500], v25);
  sub_1A3F587A8();
  sub_1A3F58824();
  return sub_1A5240034();
}

uint64_t sub_1A4539820@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB162AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EBE68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A45398E0()
{
  sub_1A453A2B0(0, &qword_1EB13CDF0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A453A2B0(0, &qword_1EB13CE00, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4538ED0();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A4539A9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A4538F30(a1, v4);
}

uint64_t sub_1A4539B3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A45393BC();
  *a1 = result;
  return result;
}

uint64_t sub_1A4539B64(uint64_t a1)
{
  v2 = sub_1A4538E7C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4539BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1A524CC54();
  v3[9] = sub_1A524CC44();
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_1A4539CB0;

  return sub_1A4895F20(1);
}

uint64_t sub_1A4539CB0()
{
  v2 = *v1;
  v2[11] = v0;

  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;
  if (v0)
  {
    v5 = sub_1A42D03E0;
  }

  else
  {
    v5 = sub_1A4539E10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4539E10()
{
  v1 = v0[11];
  v2 = PXAppIntentsAssets(for:)(v0[2]);
  if (!v1)
  {
    if (!(v2 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[1];

  return v3();
}

unint64_t sub_1A453A164()
{
  result = qword_1EB13CE10;
  if (!qword_1EB13CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CE10);
  }

  return result;
}

unint64_t sub_1A453A1BC()
{
  result = qword_1EB13CE18;
  if (!qword_1EB13CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CE18);
  }

  return result;
}

unint64_t sub_1A453A23C()
{
  result = qword_1EB13CE20;
  if (!qword_1EB13CE20)
  {
    sub_1A453A2B0(255, &qword_1EB13CE28, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CE20);
  }

  return result;
}

void sub_1A453A2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A4538E7C();
    v7 = a3(a1, &type metadata for MoveAssetsToSharedLibraryIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A453A314@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v7 = *(v6 + 24);
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v6 + 28);
  *(a3 + v8) = swift_getKeyPath();
  sub_1A42905D4(0);
  swift_storeEnumTagMultiPayload();
  result = sub_1A3C34460(a1, a3);
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1A453A3E4()
{
  v1 = MEMORY[0x1E697E5E0];
  v2 = MEMORY[0x1E697E830];
  sub_1A4545764(0, &qword_1EB13CE30, sub_1A453A8D0, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - v5;
  sub_1A4545764(0, &qword_1EB13CF00, sub_1A453B364, v1, v2);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  sub_1A4545764(0, &qword_1EB13CFE0, sub_1A453BD3C, MEMORY[0x1E6981910], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  sub_1A453BD3C(0);
  MEMORY[0x1EEE9AC00](v14);
  if ((*(v0 + 40) & 1) == 0)
  {
    sub_1A453C5A4(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v16 = shouldUseNewCollectionsLayout()();
  v17 = sub_1A5249574();
  if (v16)
  {
    *v10 = v17;
    *(v10 + 1) = 0x4018000000000000;
    v10[16] = 0;
    sub_1A45461D8(0, &qword_1EB13D090, sub_1A453B3F4);
    sub_1A453CD4C(v0, &v10[*(v18 + 44)]);
    sub_1A453B364(0);
    v10[*(v19 + 36)] = 0;
    v20 = sub_1A524A084();
    sub_1A5247BC4();
    v21 = &v10[*(v8 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_1A453F050(&qword_1EB13D098, &qword_1EB13CF00, sub_1A453B364, sub_1A453F390);
  }

  else
  {
    *v6 = v17;
    *(v6 + 1) = 0x4018000000000000;
    v6[16] = 0;
    sub_1A45461D8(0, &qword_1EB13D058, sub_1A453A9AC);
    sub_1A453E168(v0, &v6[*(v26 + 44)]);
    sub_1A453A8D0(0);
    v6[*(v27 + 36)] = 0;
    v28 = sub_1A524A084();
    sub_1A5247BC4();
    v29 = &v6[*(v4 + 36)];
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    sub_1A453F050(&qword_1EB13D060, &qword_1EB13CE30, sub_1A453A8D0, sub_1A453F0EC);
  }

  *v13 = sub_1A524B8E4();
  swift_storeEnumTagMultiPayload();
  sub_1A453F1F8(&qword_1EB13D080, sub_1A453BD3C, sub_1A453F278);
  return sub_1A5249744();
}

void sub_1A453A918()
{
  if (!qword_1EB13CE40)
  {
    sub_1A453A9AC(255);
    sub_1A4546660(&qword_1EB13CEF8, sub_1A453A9AC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CE40);
    }
  }
}

void sub_1A453A9E8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A453C168(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A453AAD4()
{
  if (!qword_1EB13CE68)
  {
    sub_1A453BE24(255, &qword_1EB13CE70, sub_1A453AC04, sub_1A453AC4C, sub_1A453B170);
    sub_1A453AC04(255);
    sub_1A453AC4C(255);
    sub_1A453B170();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CE68);
    }
  }
}

void sub_1A453AC6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4544744(255, &qword_1EB128818, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A453AD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A453AE04()
{
  if (!qword_1EB13CEA0)
  {
    sub_1A453AE98(255);
    sub_1A4546660(&qword_1EB13CED0, sub_1A453AE98);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CEA0);
    }
  }
}

void sub_1A453AED4()
{
  if (!qword_1EB13CEB8)
  {
    sub_1A3E72EF0(255, &qword_1EB13CEC0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CEB8);
    }
  }
}

void sub_1A453AF50()
{
  if (!qword_1EB123938)
  {
    sub_1A453AFD4(255, &qword_1EB124310, &qword_1EB124E48);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123938);
    }
  }
}

void sub_1A453AFD4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3E72EF0(255, a3);
    sub_1A453B05C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A453B05C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4545D94(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A453B0C8()
{
  result = qword_1EB13CED8;
  if (!qword_1EB13CED8)
  {
    sub_1A453ADD0(255);
    sub_1A4546660(&qword_1EB13CEE0, sub_1A453AE04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CED8);
  }

  return result;
}

unint64_t sub_1A453B1AC()
{
  result = qword_1EB128820;
  if (!qword_1EB128820)
  {
    sub_1A4544744(255, &qword_1EB128818, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3F9515C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128820);
  }

  return result;
}

void sub_1A453B280(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A453C280(255, a3, a4);
    sub_1A4544744(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A453B484()
{
  if (!qword_1EB13CF28)
  {
    sub_1A453BE24(255, &qword_1EB13CF30, sub_1A453B5B4, sub_1A453B5FC, sub_1A453BA1C);
    sub_1A453B5B4(255);
    sub_1A453B5FC(255);
    sub_1A453BA1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CF28);
    }
  }
}

void sub_1A453B61C()
{
  if (!qword_1EB13CF48)
  {
    sub_1A4545764(255, &qword_1EB13CF50, sub_1A453B6B8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A453B934();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CF48);
    }
  }
}

void sub_1A453B6B8()
{
  if (!qword_1EB13CF58)
  {
    sub_1A453B74C(255);
    sub_1A4546660(&qword_1EB13CFA8, sub_1A453B74C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CF58);
    }
  }
}

void sub_1A453B780()
{
  if (!qword_1EB13CF68)
  {
    sub_1A453C49C(255, &qword_1EB13CF70, &qword_1EB13CF78);
    sub_1A453B814(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CF68);
    }
  }
}

void sub_1A453B8B4()
{
  if (!qword_1EB13CFA0)
  {
    sub_1A3EC43B0();
    sub_1A453B05C(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CFA0);
    }
  }
}

unint64_t sub_1A453B934()
{
  result = qword_1EB13CFB0;
  if (!qword_1EB13CFB0)
  {
    sub_1A4545764(255, &qword_1EB13CF50, sub_1A453B6B8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A4546660(&qword_1EB13CFB8, sub_1A453B6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CFB0);
  }

  return result;
}

uint64_t sub_1A453BA58(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A453B1AC();
    sub_1A4546660(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A453BB00()
{
  result = qword_1EB13CFD0;
  if (!qword_1EB13CFD0)
  {
    sub_1A453B3F4(255);
    sub_1A453BBB0();
    sub_1A4546660(&qword_1EB1398E0, sub_1A43D0DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CFD0);
  }

  return result;
}

unint64_t sub_1A453BBB0()
{
  result = qword_1EB13CFD8;
  if (!qword_1EB13CFD8)
  {
    sub_1A453B43C(255);
    sub_1A453BE24(255, &qword_1EB13CF30, sub_1A453B5B4, sub_1A453B5FC, sub_1A453BA1C);
    sub_1A453B5B4(255);
    sub_1A453B5FC(255);
    sub_1A453BA1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4546660(&qword_1EB127A80, sub_1A3EC1EB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CFD8);
  }

  return result;
}

void sub_1A453BD78()
{
  if (!qword_1EB13CFF0)
  {
    sub_1A453BE24(255, &qword_1EB13CFF8, sub_1A453BEF4, sub_1A453BFC8, sub_1A453C4F4);
    sub_1A3F330A8();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CFF0);
    }
  }
}

void sub_1A453BE24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A453BF3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A453C004()
{
  if (!qword_1EB13D010)
  {
    sub_1A453C098();
    sub_1A4546660(&qword_1EB13D040, sub_1A453C098);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D010);
    }
  }
}

void sub_1A453C098()
{
  if (!qword_1EB13D018)
  {
    sub_1A453C12C(255);
    sub_1A4546660(&qword_1EB13D038, sub_1A453C12C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D018);
    }
  }
}

void sub_1A453C168(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A453C1E4()
{
  if (!qword_1EB1232D0)
  {
    sub_1A453C280(255, &qword_1EB123638, sub_1A453C304);
    sub_1A453B05C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1232D0);
    }
  }
}

void sub_1A453C280(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A453B05C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A453C340()
{
  if (!qword_1EB1219D8)
  {
    sub_1A453C3D4(255);
    sub_1A4546660(&qword_1EB1213B0, sub_1A453C3D4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1219D8);
    }
  }
}

void sub_1A453C408()
{
  if (!qword_1EB124E38)
  {
    sub_1A453C49C(255, &qword_1EB124E40, &qword_1EB124E48);
    sub_1A3DF14C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124E38);
    }
  }
}

void sub_1A453C49C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3E72EF0(255, a3);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A453C4F4()
{
  result = qword_1EB13D048;
  if (!qword_1EB13D048)
  {
    sub_1A453BFC8(255);
    sub_1A3F9515C();
    sub_1A4546660(&qword_1EB13D050, sub_1A453C004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D048);
  }

  return result;
}

void sub_1A453C5A4(uint64_t a1@<X8>)
{
  v32[16] = a1;
  v2 = sub_1A5241FC4();
  v32[14] = *(v2 - 8);
  v32[15] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32[13] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32[12] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32[11] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5244084();
  v32[7] = *(v8 - 8);
  v32[8] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32[5] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v32[6] = v32 - v11;
  sub_1A453BFC8(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453BEF4(0);
  v32[9] = *(v16 - 8);
  v32[10] = v16;
  MEMORY[0x1EEE9AC00](v16);
  v32[18] = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5242D14();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v32 - v23;
  type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v25 = v1;
  sub_1A4545DE4(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], v24);
  (*(v19 + 104))(v21, *MEMORY[0x1E69C2210], v18);
  v26 = sub_1A5242D04();
  v27 = *(v19 + 8);
  v27(v21, v18);
  v27(v24, v18);
  if (v26)
  {
    sub_1A524A0F4();
    sub_1A524A184();
    v28 = sub_1A524A1F4();
  }

  else
  {
    v28 = sub_1A524A0E4();
  }

  v32[4] = v28;
  sub_1A3C341C8(v25, v15);
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v32[17] = v13;
  v29 = &v15[*(v13 + 36)];
  *v29 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v29[1] = v30;
  sub_1A45461D8(0, &qword_1EB13D190, sub_1A453C12C);
  sub_1A453FC3C(v25, v28, v29 + *(v31 + 44));
}

void sub_1A453CD4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = sub_1A5241FC4();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1A5244084();
  v8 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  sub_1A453B6B8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A453B5FC(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453B5B4(0);
  v77 = v21;
  v78 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453BE24(0, &qword_1EB13CF30, sub_1A453B5B4, sub_1A453B5FC, sub_1A453BA1C);
  v80 = v23;
  v81 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v75 = &v70 - v25;
  v26 = MEMORY[0x1A590D320](v24);
  sub_1A3C341C8(a1, v20);
  *(v20 + 5) = 0x3FF0000000000000;
  *(v20 + 24) = 0;
  v27 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v29 = v28;
  *v16 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v16[1] = v30;
  sub_1A45461D8(0, &unk_1EB13D1A0, sub_1A453B74C);
  v32 = v16 + *(v31 + 44);
  v73 = a1;
  sub_1A453D6CC(v26, a1, v32);
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v33 = *(v18 + 36);
  v70 = v18;
  v34 = &v20[v33];
  sub_1A5248AD4();
  sub_1A4546244(v16, v34, sub_1A453B6B8);
  sub_1A4545764(0, &qword_1EB13CF50, sub_1A453B6B8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v36 = (v34 + *(v35 + 36));
  v37 = v96;
  v38 = v97;
  v36[4] = v95;
  v36[5] = v37;
  v36[6] = v38;
  v39 = v92;
  *v36 = v91;
  v36[1] = v39;
  v40 = v94;
  v36[2] = v93;
  v36[3] = v40;
  sub_1A453B61C();
  v42 = (v34 + *(v41 + 36));
  *v42 = v27;
  v42[1] = v29;
  v74 = *(type metadata accessor for LemonadeCollectionBookmarkCell(0) + 28);
  v72 = sub_1A42905D4;
  v71 = sub_1A3F75EB4;
  v43 = MEMORY[0x1E69C2948];
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v13);
  sub_1A5243F64();
  v44 = *(v8 + 8);
  v45 = v13;
  v46 = v13;
  v47 = v76;
  v44(v45, v76);
  v48 = sub_1A453BA1C();
  sub_1A524A784();
  v44(v10, v47);
  sub_1A4546384(v20, sub_1A453B5FC);
  v49 = sub_1A5243A44();
  (*(*(v49 - 8) + 56))(v87, 1, 1, v49);
  v50 = *MEMORY[0x1E69C27D8];
  v51 = sub_1A5243B34();
  v52 = *(v51 - 8);
  v53 = v79;
  (*(v52 + 104))(v79, v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);
  v54 = v73;
  sub_1A4545DE4(v72, v71, v43, v46);
  v55 = v82;
  sub_1A5244044();
  v44(v46, v47);
  v90[0] = v70;
  v90[1] = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v75;
  v58 = v87;
  v59 = v77;
  v60 = v86;
  sub_1A524A6A4();
  (*(v83 + 8))(v55, v84);
  sub_1A4546178(v53, sub_1A3E75D1C);
  sub_1A4546178(v58, sub_1A3E75D50);
  (*(v78 + 8))(v60, v59);
  v61 = v54[3];
  v62 = v54[4];
  v63 = __swift_project_boxed_opaque_existential_1(v54, v61);
  v90[3] = v61;
  v90[4] = *(*(v62 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v63, v61);
  v88 = v59;
  v89 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  v66 = v80;
  sub_1A524A554();
  (*(v81 + 8))(v57, v66);
  __swift_destroy_boxed_opaque_existential_0(v90);
  sub_1A453B43C(0);
  *(v65 + *(v67 + 36)) = 1;
  sub_1A453B3F4(0);
  v69 = v65 + *(v68 + 36);
  *v69 = 0x3FF0000000000000;
  *(v69 + 8) = 0;
}

uint64_t sub_1A453D6CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  LODWORD(KeyPath) = a1;
  v76 = a3;
  v75 = sub_1A5244084();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A204();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs(0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E72EF0(0, &qword_1EB13CF78);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - v15;
  sub_1A453C49C(0, &qword_1EB13CF70, &qword_1EB13CF78);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  if (KeyPath)
  {
    sub_1A5242CA4();
    (*(v14 + 32))(v21, v16, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(&v66 - v20, 1, 1, v13);
  }

  v22 = *MEMORY[0x1E6980F30];
  v23 = sub_1A524A274();
  v24 = v80;
  (*(*(v23 - 8) + 104))(v80, v22, v23);
  *(v24 + *(v10 + 20)) = 1;
  v25 = sub_1A453DF94();
  v69 = v26;
  LOBYTE(v22) = v27;
  v71 = v28;
  KeyPath = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v68 = v22 & 1;
  LOBYTE(v91[0]) = v22 & 1;
  LOBYTE(v82) = 0;
  v29 = sub_1A524A154();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_1A524A1C4();
  sub_1A4546178(v9, sub_1A3E75D84);
  v31 = v78;
  v30 = v79;
  (*(v78 + 104))(v6, *MEMORY[0x1E6980EA8], v79);
  v67 = sub_1A524A234();

  (*(v31 + 8))(v6, v30);
  v79 = swift_getKeyPath();
  LODWORD(v78) = sub_1A52499F4();
  type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v32 = v72;
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v72);
  sub_1A5244054();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  (*(v73 + 8))(v32, v75);
  v41 = sub_1A524A064();
  v42 = v41;
  LODWORD(v75) = v41;
  v120 = 0;
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  sub_1A5248AD4();
  *&v122[55] = v128;
  *&v122[71] = v129;
  *&v122[87] = v130;
  *&v122[103] = v131;
  *&v122[7] = v125;
  *&v122[23] = v126;
  *&v122[39] = v127;
  v43 = v81;
  sub_1A4546044(v21, v81, &qword_1EB13CF70, &qword_1EB13CF78);
  v44 = v43;
  v45 = v76;
  sub_1A4546044(v44, v76, &qword_1EB13CF70, &qword_1EB13CF78);
  sub_1A453B780();
  v47 = (v45 + *(v46 + 48));
  v48 = v25;
  v76 = v21;
  v49 = v69;
  v50 = v70;
  *&v82 = v25;
  *(&v82 + 1) = v69;
  LOBYTE(v25) = v68;
  LOBYTE(v83) = v68;
  *(&v83 + 1) = *v124;
  DWORD1(v83) = *&v124[3];
  v51 = v71;
  *(&v83 + 1) = v71;
  *&v84 = KeyPath;
  BYTE8(v84) = 0;
  *(&v84 + 9) = *v123;
  HIDWORD(v84) = *&v123[3];
  *&v85 = v70;
  *(&v85 + 1) = 2;
  LOBYTE(v86) = 0;
  DWORD1(v86) = *&v119[3];
  *(&v86 + 1) = *v119;
  v52 = v67;
  *(&v86 + 1) = v79;
  *&v87 = v67;
  DWORD2(v87) = v78;
  LOBYTE(v88) = v42;
  DWORD1(v88) = *&v121[3];
  *(&v88 + 1) = *v121;
  *(&v88 + 1) = v34;
  *&v89 = v36;
  *(&v89 + 1) = v38;
  *&v90[0] = v40;
  BYTE8(v90[0]) = 0;
  *(v90 + 9) = *v122;
  *(&v90[3] + 9) = *&v122[48];
  *(&v90[2] + 9) = *&v122[32];
  *(&v90[1] + 9) = *&v122[16];
  *(&v90[7] + 1) = *&v122[111];
  *(&v90[6] + 9) = *&v122[96];
  *(&v90[5] + 9) = *&v122[80];
  *(&v90[4] + 9) = *&v122[64];
  v53 = v82;
  v54 = v83;
  v55 = v85;
  v47[2] = v84;
  v47[3] = v55;
  *v47 = v53;
  v47[1] = v54;
  v56 = v86;
  v57 = v87;
  v58 = v89;
  v47[6] = v88;
  v47[7] = v58;
  v47[4] = v56;
  v47[5] = v57;
  v59 = v90[0];
  v60 = v90[1];
  v61 = v90[3];
  v47[10] = v90[2];
  v47[11] = v61;
  v47[8] = v59;
  v47[9] = v60;
  v62 = v90[4];
  v63 = v90[5];
  v64 = v90[7];
  v47[14] = v90[6];
  v47[15] = v64;
  v47[12] = v62;
  v47[13] = v63;
  sub_1A45460B4(&v82, v91, sub_1A453B814);
  sub_1A4546178(v80, type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs);
  sub_1A454611C(v76, &qword_1EB13CF70, &qword_1EB13CF78);
  v91[0] = v48;
  v91[1] = v49;
  v92 = v25;
  *v93 = *v124;
  *&v93[3] = *&v124[3];
  v94 = v51;
  v95 = KeyPath;
  v96 = 0;
  *v97 = *v123;
  *&v97[3] = *&v123[3];
  v98 = v50;
  v99 = 2;
  v100 = 0;
  *&v101[3] = *&v119[3];
  *v101 = *v119;
  v102 = v79;
  v103 = v52;
  v104 = v78;
  v105 = v75;
  *&v106[3] = *&v121[3];
  *v106 = *v121;
  v107 = v34;
  v108 = v36;
  v109 = v38;
  v110 = v40;
  v111 = 0;
  v115 = *&v122[48];
  v114 = *&v122[32];
  v113 = *&v122[16];
  v112 = *v122;
  *&v118[15] = *&v122[111];
  *v118 = *&v122[96];
  v117 = *&v122[80];
  v116 = *&v122[64];
  sub_1A4546178(v91, sub_1A453B814);
  return sub_1A454611C(v81, &qword_1EB13CF70, &qword_1EB13CF78);
}

uint64_t sub_1A453DF94()
{
  v1 = v0;
  v2 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  v5 = (*(v4 + 56))(v3, v4);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 32;
  }

  v8 = v0[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_1A4838C90(v8, v9))
  {
    sub_1A5249414();
    sub_1A5249404();
    sub_1A524B544();
    sub_1A52493E4();

    sub_1A5249404();
    sub_1A52493D4();
    sub_1A5249404();
    sub_1A5249444();
    v7 = sub_1A524A444();
  }

  return v7;
}

uint64_t sub_1A453E168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_1A524A204();
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v126 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453B258(0);
  v127 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v102 - v10;
  v124 = type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs(0);
  MEMORY[0x1EEE9AC00](v124);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1A5241FC4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v118 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1A5244084();
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v107 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v102 - v19;
  sub_1A453AE04();
  v106 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A453ADD0(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453AC4C(0);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453AC04(0);
  v115 = v31;
  v109 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v134 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453BE24(0, &qword_1EB13CE70, sub_1A453AC04, sub_1A453AC4C, sub_1A453B170);
  v114 = v33;
  v112 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v110 = &v102 - v34;
  sub_1A453AA44(0);
  v111 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v122 = &v102 - v38;
  sub_1A3C341C8(a1, v30);
  *(v30 + 5) = 0x3FF0000000000000;
  *(v30 + 24) = 0;
  v39 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v41 = v40;
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = sub_1A4838C84(v42, v43);
  v45 = 1;
  if ((v44 & 1) == 0)
  {
    *v23 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
    v23[1] = v46;
    sub_1A45461D8(0, &qword_1EB13D1B0, sub_1A453AE98);
    sub_1A453F3EC(a1, v23 + *(v47 + 44));
    sub_1A4546244(v23, v26, sub_1A453AE04);
    v45 = 0;
  }

  (*(v21 + 56))(v26, v45, 1, v106);
  v48 = *(v28 + 36);
  v103 = v28;
  v49 = &v30[v48];
  sub_1A4546244(v26, &v30[v48], sub_1A453ADD0);
  sub_1A453AD08(0);
  v51 = &v49[*(v50 + 36)];
  *v51 = v39;
  v51[1] = v41;
  v106 = *(type metadata accessor for LemonadeCollectionBookmarkCell(0) + 28);
  v105 = sub_1A42905D4;
  v104 = sub_1A3F75EB4;
  v52 = MEMORY[0x1E69C2948];
  v53 = v108;
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v108);
  v54 = v107;
  sub_1A5243F64();
  v102 = a1;
  v55 = *(v113 + 8);
  v56 = v116;
  v55(v53, v116);
  v113 = sub_1A453B170();
  sub_1A524A784();
  v55(v54, v56);
  sub_1A4546384(v30, sub_1A453AC4C);
  v57 = sub_1A5243A44();
  v58 = v117;
  (*(*(v57 - 8) + 56))(v117, 1, 1, v57);
  v59 = *MEMORY[0x1E69C27D8];
  v60 = sub_1A5243B34();
  v61 = *(v60 - 8);
  v62 = v118;
  (*(v61 + 104))(v118, v59, v60);
  (*(v61 + 56))(v62, 0, 1, v60);
  v63 = v102;
  sub_1A4545DE4(v105, v104, v52, v53);
  v64 = v119;
  sub_1A5244044();
  v55(v53, v56);
  v135 = v103;
  v136 = v113;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v110;
  v67 = v115;
  v68 = v134;
  sub_1A524A6A4();
  (*(v120 + 8))(v64, v121);
  sub_1A4546178(v62, sub_1A3E75D1C);
  sub_1A4546178(v58, sub_1A3E75D50);
  (*(v109 + 8))(v68, v67);
  v69 = v63[3];
  v70 = v63[4];
  v71 = __swift_project_boxed_opaque_existential_1(v63, v69);
  v138 = v69;
  v139 = *(*(v70 + 8) + 8);
  v72 = __swift_allocate_boxed_opaque_existential_1(&v135);
  (*(*(v69 - 8) + 16))(v72, v71, v69);
  v141 = v67;
  v142 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v73 = v122;
  v74 = v114;
  sub_1A524A554();
  (*(v112 + 8))(v66, v74);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  sub_1A453AA8C(0);
  *(v73 + *(v75 + 36)) = 1;
  v76 = v73 + *(v111 + 36);
  *v76 = 0x3FF0000000000000;
  *(v76 + 8) = 0;
  v77 = *MEMORY[0x1E6980F30];
  v78 = sub_1A524A274();
  v79 = v130;
  (*(*(v78 - 8) + 104))(v130, v77, v78);
  *(v79 + *(v124 + 20)) = 1;
  v80 = sub_1A453DF94();
  v82 = v81;
  LOBYTE(v69) = v83;
  v85 = v84;
  KeyPath = swift_getKeyPath();
  v135 = v80;
  v136 = v82;
  v137 = v69 & 1;
  v138 = v85;
  v139 = KeyPath;
  v140 = 1;
  sub_1A3EC43B0();
  sub_1A3FF8F74();
  v87 = v131;
  sub_1A524B1C4();
  sub_1A3E04DF4(v80, v82, v69 & 1);

  v88 = sub_1A524A154();
  v89 = v125;
  (*(*(v88 - 8) + 56))(v125, 1, 1, v88);
  sub_1A524A1C4();
  sub_1A4546178(v89, sub_1A3E75D84);
  v91 = v128;
  v90 = v129;
  v92 = v126;
  (*(v128 + 104))(v126, *MEMORY[0x1E6980EA8], v129);
  v93 = sub_1A524A234();

  (*(v91 + 8))(v92, v90);
  v94 = swift_getKeyPath();
  sub_1A453C280(0, &qword_1EB128620, sub_1A453B31C);
  v96 = (v87 + *(v95 + 36));
  *v96 = v94;
  v96[1] = v93;
  *(v87 + *(v127 + 36)) = sub_1A52499F4();
  v97 = v123;
  sub_1A454631C(v73, v123, sub_1A453AA44);
  v98 = v132;
  sub_1A454631C(v87, v132, sub_1A453B258);
  v99 = v133;
  sub_1A454631C(v97, v133, sub_1A453AA44);
  sub_1A453C168(0, &qword_1EB13CE50, sub_1A453AA44, sub_1A453B258);
  sub_1A454631C(v98, v99 + *(v100 + 48), sub_1A453B258);
  sub_1A4546384(v87, sub_1A453B258);
  sub_1A4546178(v79, type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs);
  sub_1A4546384(v73, sub_1A453AA44);
  sub_1A4546384(v98, sub_1A453B258);
  return sub_1A4546384(v97, sub_1A453AA44);
}

uint64_t sub_1A453F050(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4545764(255, a2, a3, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A453F128(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A4546660(a3, a4);
    sub_1A4546660(&qword_1EB127C80, sub_1A3F330A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A453F1F8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A453F278()
{
  result = qword_1EB13D088;
  if (!qword_1EB13D088)
  {
    sub_1A453BD78();
    sub_1A453BEF4(255);
    sub_1A453BFC8(255);
    sub_1A453C4F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4546660(&qword_1EB127C80, sub_1A3F330A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D088);
  }

  return result;
}

uint64_t sub_1A453F3EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_1A5244084();
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1A5242254();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1A5242264();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E72EF0(0, &qword_1EB124E48);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v70 - v8;
  sub_1A453AFD4(0, &qword_1EB124310, &qword_1EB124E48);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v70 - v10;
  sub_1A453AF50();
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v70 - v16;
  sub_1A3E72EF0(0, &qword_1EB13CEC0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  sub_1A453AED4();
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = (*(v32 + 80))(v31, v32);
  sub_1A5242CC4();
  if (v33)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.0;
  }

  (*(v19 + 32))(v27, v21, v18);
  *&v27[*(v23 + 44)] = v34;
  sub_1A4546244(v27, v30, sub_1A453AED4);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  v37 = *(v36 + 88);
  v38 = v36;
  v39 = v71;
  v40 = v37(v35, v38);
  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v43 = 0xE000000000000000;
  if (v41)
  {
    v43 = v41;
  }

  v44 = v72;
  *v72 = v42;
  v44[1] = v43;
  v45 = v73;
  v46 = v74;
  (*(v73 + 104))(v44, *MEMORY[0x1E69C1D40], v74);
  v47 = v76;
  sub_1A5242244();
  sub_1A5242B74();
  (*(v79 + 8))(v47, v81);
  (*(v45 + 8))(v44, v46);
  if (v33)
  {
    v48 = sub_1A524B434();
  }

  else
  {
    v48 = sub_1A524B2B4();
  }

  v49 = v48;
  KeyPath = swift_getKeyPath();
  v51 = v83;
  (*(v77 + 32))(v83, v39, v78);
  v52 = (v51 + *(v75 + 36));
  *v52 = KeyPath;
  v52[1] = v49;
  type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v53 = v87;
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v87);
  sub_1A5244054();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  (*(v88 + 8))(v53, v89);
  LOBYTE(v53) = sub_1A524A064();
  v62 = v80;
  sub_1A45462AC(v51, v80, &qword_1EB124310, &qword_1EB124E48);
  v63 = v62 + *(v82 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = v85;
  sub_1A4546244(v62, v85, sub_1A453AF50);
  v65 = v84;
  sub_1A454631C(v30, v84, sub_1A453AED4);
  v66 = v86;
  sub_1A454631C(v64, v86, sub_1A453AF50);
  v67 = v90;
  sub_1A454631C(v65, v90, sub_1A453AED4);
  sub_1A453C168(0, &qword_1EB13CEB0, sub_1A453AED4, sub_1A453AF50);
  sub_1A454631C(v66, v67 + *(v68 + 48), sub_1A453AF50);
  sub_1A4546384(v64, sub_1A453AF50);
  sub_1A4546384(v30, sub_1A453AED4);
  sub_1A4546384(v66, sub_1A453AF50);
  return sub_1A4546384(v65, sub_1A453AED4);
}

void sub_1A453FC3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36[11] = a2;
  v36[14] = a3;
  v4 = sub_1A524A204();
  v36[7] = *(v4 - 8);
  v36[8] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36[5] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244084();
  v36[2] = *(v6 - 8);
  v36[3] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36[1] = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453C280(0, &qword_1EB123638, sub_1A453C304);
  v36[4] = v8 - 8;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36[0] = v36 - v9;
  sub_1A453C1E4();
  v36[9] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36[13] = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36[6] = v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v36[12] = v36 - v15;
  sub_1A3E72EF0(0, &qword_1EB13CEC0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v36 - v19;
  sub_1A453AED4();
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21);
  v36[10] = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v36 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v36 - v28;
  sub_1A5242CC4();
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if ((*(v30 + 80))(v31, v30))
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  (*(v18 + 32))(v26, v20, v17);
  *&v26[*(v22 + 44)] = v32;
  sub_1A4546244(v26, v29, sub_1A453AED4);
  v33 = sub_1A5249314();
  v34 = v36[0];
  *v36[0] = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  sub_1A45461D8(0, &qword_1EB13D198, sub_1A453C3D4);
  sub_1A4540358(a1, v34 + *(v35 + 44));
}

void sub_1A4540358(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1A5242254();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A5242264();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E72EF0(0, &qword_1EB124E48);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  sub_1A453C49C(0, &qword_1EB124E40, &qword_1EB124E48);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  if (sub_1A4838C84(v18, v19))
  {
    (*(v9 + 56))(v17, 1, 1, v8);
  }

  else
  {
    v41 = v3;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v22 = (*(v21 + 88))(v20, v21);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v23)
    {
      v25 = v23;
    }

    *v6 = v24;
    v6[1] = v25;
    v26 = v42;
    v27 = v44;
    (*(v42 + 104))(v6, *MEMORY[0x1E69C1D40], v44);
    v28 = v43;
    sub_1A5242244();
    sub_1A5242B74();
    v45[1](v28, v41);
    (*(v26 + 8))(v6, v27);
    (*(v9 + 32))(v17, v11, v8);
    (*(v9 + 56))(v17, 0, 1, v8);
  }

  v29 = sub_1A453DF94();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  sub_1A4546044(v17, v14, &qword_1EB124E40, &qword_1EB124E48);
  v37 = v14;
  v45 = v14;
  v38 = v46;
  sub_1A4546044(v37, v46, &qword_1EB124E40, &qword_1EB124E48);
  sub_1A453C408();
  v40 = v38 + *(v39 + 48);
  *v40 = v29;
  *(v40 + 8) = v31;
  v33 &= 1u;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = KeyPath;
  *(v40 + 40) = 2;
  *(v40 + 48) = 0;
  sub_1A3E75E68(v29, v31, v33);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45407FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v41 = sub_1A5243834();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  v43 = sub_1A5243EC4();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4541644(0, &qword_1EB13C950, MEMORY[0x1E69C2928], &type metadata for LemonadeCollectionBookmarkPrivacySensitiveView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  sub_1A45416B0(0);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45466A8(0, &qword_1EB13D0B8, sub_1A45416EC, sub_1A45416B0, MEMORY[0x1E697F948]);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - v17;
  v18 = v1[3];
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v18);
  v20 = (*(v19 + 104))(v18, v19);
  if (v20 > 3)
  {
    if (v20 - 4 < 2)
    {
      sub_1A3C341C8(v1, v51);
      sub_1A4543C70(v51, v52);
      LOBYTE(KeyPath) = 0;
      sub_1A45418D4();
      sub_1A4541928();
      sub_1A5249744();
      sub_1A4543A7C(v50, v48, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      v49 = 0;
      v23 = MEMORY[0x1E697F960];
      sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
      sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v23);
      sub_1A4541828();
      sub_1A454197C();
      sub_1A5249744();
      sub_1A4543B00(v50, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      sub_1A45460B4(v52, v45, sub_1A45416EC);
      swift_storeEnumTagMultiPayload();
      sub_1A45416EC();
      sub_1A45417A8();
      sub_1A44F1A58();
      sub_1A5249744();
      sub_1A4546178(v52, sub_1A45416EC);
      return sub_1A4543CA8(v51);
    }

    if (v20 == 10)
    {
      sub_1A3C341C8(v1, v51);
      sub_1A4543BA0(v51, v52);
      LOBYTE(KeyPath) = 0;
      sub_1A4541A28();
      sub_1A4541A7C();
      sub_1A5249744();
      sub_1A4543A7C(v50, v48, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
      v49 = 1;
      v25 = MEMORY[0x1E697F960];
      sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
      sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v25);
      sub_1A4541828();
      sub_1A454197C();
      sub_1A5249744();
      sub_1A4543B00(v50, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
      sub_1A45460B4(v52, v45, sub_1A45416EC);
      swift_storeEnumTagMultiPayload();
      sub_1A45416EC();
      sub_1A45417A8();
      sub_1A44F1A58();
      sub_1A5249744();
      sub_1A4546178(v52, sub_1A45416EC);
      return sub_1A4543BD8(v51);
    }

    goto LABEL_15;
  }

  switch(v20)
  {
    case 0u:
      v26 = v1[3];
      v27 = v1[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      if ((sub_1A4838C84(v26, v27) & 1) == 0)
      {
        sub_1A3C341C8(v2, v51);
        sub_1A4543A44(v51, v52);
        LOBYTE(KeyPath) = 1;
        sub_1A4541A28();
        sub_1A4541A7C();
        sub_1A5249744();
        sub_1A4543A7C(v50, v48, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
        v49 = 1;
        v28 = MEMORY[0x1E697F960];
        sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
        sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v28);
        sub_1A4541828();
        sub_1A454197C();
        sub_1A5249744();
        sub_1A4543B00(v50, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
        sub_1A45460B4(v52, v45, sub_1A45416EC);
        swift_storeEnumTagMultiPayload();
        sub_1A45416EC();
        sub_1A45417A8();
        sub_1A44F1A58();
        sub_1A5249744();
        sub_1A4546178(v52, sub_1A45416EC);
        return sub_1A4543B70(v51);
      }

      break;
    case 2u:
      sub_1A3C52C70(0, &qword_1EB126A10);
      v29 = [swift_getObjCClassFromMetadata() sharedInstance];
      v30 = [v29 enableInlinePlaybackMemories];

      if ((v30 & 1) == 0)
      {
        break;
      }

LABEL_14:
      sub_1A3C341C8(v2, v51);
      sub_1A4543C08(v51, v52);
      LOBYTE(KeyPath) = 1;
      sub_1A45418D4();
      sub_1A4541928();
      sub_1A5249744();
      sub_1A4543A7C(v50, v48, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      v49 = 0;
      v31 = MEMORY[0x1E697F960];
      sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
      sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v31);
      sub_1A4541828();
      sub_1A454197C();
      sub_1A5249744();
      sub_1A4543B00(v50, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      sub_1A45460B4(v52, v45, sub_1A45416EC);
      swift_storeEnumTagMultiPayload();
      sub_1A45416EC();
      sub_1A45417A8();
      sub_1A44F1A58();
      sub_1A5249744();
      sub_1A4546178(v52, sub_1A45416EC);
      return sub_1A4543C40(v51);
    case 3u:
      sub_1A3C52C70(0, &qword_1EB126A10);
      v21 = [swift_getObjCClassFromMetadata() sharedInstance];
      v22 = [v21 enableInlinePlaybackEvents];

      if (v22)
      {
        goto LABEL_14;
      }

      break;
  }

LABEL_15:
  v32 = v2[3];
  v33 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v32);
  if (sub_1A4838C84(v32, v33))
  {
    sub_1A3C341C8(v2, v52);
    KeyPath = swift_getKeyPath();
    v54 = 0;
    v55 = swift_getKeyPath();
    v56 = 0;
    sub_1A44F08C4(v52, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    sub_1A44F0920(v52);
  }

  else
  {
    v34 = v2[3];
    v35 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v34);
    (*(v35 + 72))(v34, v35);
    memset(v52, 0, 32);
    v52[32] = 1;
    v36 = sub_1A52429A4();
    (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
    (*(v40 + 104))(v4, *MEMORY[0x1E69C2678], v41);
    sub_1A5243ED4();
    v37 = v42;
    v38 = v43;
    (*(v42 + 16))(v12, v9, v43);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    (*(v37 + 8))(v9, v38);
  }

  sub_1A45460B4(v15, v45, sub_1A45416B0);
  swift_storeEnumTagMultiPayload();
  sub_1A45416EC();
  sub_1A45417A8();
  sub_1A44F1A58();
  sub_1A5249744();
  return sub_1A4546178(v15, sub_1A45416B0);
}

void sub_1A4541644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45416EC()
{
  if (!qword_1EB1224A0)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1A4544744(255, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
    sub_1A4544744(255, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v0);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1224A0);
    }
  }
}

unint64_t sub_1A45417A8()
{
  result = qword_1EB1224A8;
  if (!qword_1EB1224A8)
  {
    sub_1A45416EC();
    sub_1A4541828();
    sub_1A454197C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224A8);
  }

  return result;
}

unint64_t sub_1A4541828()
{
  result = qword_1EB127DC0;
  if (!qword_1EB127DC0)
  {
    sub_1A4544744(255, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
    sub_1A45418D4();
    sub_1A4541928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DC0);
  }

  return result;
}

unint64_t sub_1A45418D4()
{
  result = qword_1EB17D580[0];
  if (!qword_1EB17D580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D580);
  }

  return result;
}

unint64_t sub_1A4541928()
{
  result = qword_1EB17D468[0];
  if (!qword_1EB17D468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D468);
  }

  return result;
}

unint64_t sub_1A454197C()
{
  result = qword_1EB1228A8;
  if (!qword_1EB1228A8)
  {
    sub_1A4544744(255, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, MEMORY[0x1E697F960]);
    sub_1A4541A28();
    sub_1A4541A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228A8);
  }

  return result;
}

unint64_t sub_1A4541A28()
{
  result = qword_1EB17D4F0[0];
  if (!qword_1EB17D4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D4F0);
  }

  return result;
}

unint64_t sub_1A4541A7C()
{
  result = qword_1EB163BE8[0];
  if (!qword_1EB163BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB163BE8);
  }

  return result;
}

uint64_t sub_1A4541AD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;

  return sub_1A3C34460(a1, a2);
}

uint64_t sub_1A4541B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_1A5243834();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A5243EC4();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45466A8(0, &qword_1EB127FA0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v33 - v7;
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v33 - v9;
  v42 = sub_1A5242494();
  v34 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v13 = *(v12 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v13(v11, v12, v17);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v19, v15);
LABEL_8:
    v26 = v2[3];
    v27 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v26);
    (*(v27 + 72))(v26, v27);
    v46 = 0u;
    v47 = 0u;
    LOBYTE(AssociatedConformanceWitness) = 1;
    v28 = sub_1A52429A4();
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
    (*(v35 + 104))(v37, *MEMORY[0x1E69C2678], v36);
    v29 = v38;
    sub_1A5243ED4();
    v30 = v39;
    v31 = v44;
    (*(v39 + 16))(v43, v29, v44);
    swift_storeEnumTagMultiPayload();
    sub_1A4546660(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return (*(v30 + 8))(v29, v31);
  }

  *(&v47 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
  (*(v20 + 32))(boxed_opaque_existential_1, v19, AssociatedTypeWitness);
  sub_1A3C34400(0, &qword_1EB128C70);
  sub_1A3CA2A44();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((sub_1A52426F4() & 1) == 0)
  {

    goto LABEL_8;
  }

  if (!(sub_1A5242704() >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  sub_1A524E6F4();

  sub_1A524B304();
  v22 = sub_1A52429A4();
  (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
  v23 = v33;
  sub_1A52424A4();
  v24 = v34;
  v25 = v42;
  (*(v34 + 16))(v43, v23, v42);
  swift_storeEnumTagMultiPayload();
  sub_1A4546660(&qword_1EB1292A0, MEMORY[0x1E69C1E58]);
  sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5249744();

  return (*(v24 + 8))(v23, v25);
}

uint64_t sub_1A4542340@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_1A5243834();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v57 - v6;
  v78 = sub_1A5243EC4();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697F948];
  sub_1A45464B0(0, &qword_1EB13D138, MEMORY[0x1E697F948]);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v57 - v10;
  sub_1A4545B88(0, &qword_1EB13C120);
  v68 = v11;
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v57 - v12;
  sub_1A4545AE0(0, &qword_1EB13D150, v8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v57 - v14;
  v61 = sub_1A5243624();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545B88(0, &qword_1EB125960);
  v65 = v16;
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v62 = (&v57 - v17);
  sub_1A4545AE0(0, &unk_1EB13D140, MEMORY[0x1E697F960]);
  v75 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v57 - v19;
  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  v22 = *(v21 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1A524DF24();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v22(v20, v21, v26);
  v29 = *(AssociatedTypeWitness - 8);
  if ((*(v29 + 48))(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v25 + 8))(v28, v24);
LABEL_6:
    v43 = v2[3];
    v44 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v43);
    (*(v44 + 72))(v43, v44);
    v81 = 0u;
    v82 = 0u;
    LOBYTE(AssociatedConformanceWitness) = 1;
    v45 = sub_1A52429A4();
    (*(*(v45 - 8) + 56))(v69, 1, 1, v45);
    (*(v70 + 104))(v72, *MEMORY[0x1E69C2678], v71);
    v46 = v73;
    sub_1A5243ED4();
    v47 = v74;
    v48 = v78;
    (*(v74 + 16))(v77, v46, v78);
    swift_storeEnumTagMultiPayload();
    sub_1A44B2678();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return (*(v47 + 8))(v46, v48);
  }

  *(&v82 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
  (*(v29 + 32))(boxed_opaque_existential_1, v28, AssociatedTypeWitness);
  sub_1A3C34400(0, &qword_1EB128C70);
  sub_1A3D61454();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v31 = v80;
  sub_1A5242954();
  v74 = v81;
  v32 = *(v81 + 16);
  if (v32 < 0)
  {

    v50 = PhotoKitItem.expectsKeyAssets.getter();
    v42 = v67;
    if (v50)
    {
      v51 = PhotoKitItem.keyAssets.getter();
      if (!v51)
      {
        v52 = 1;
        goto LABEL_11;
      }
    }

    v52 = 0;
LABEL_11:
    v53 = sub_1A3C36888();
    v54 = v57;
    sub_1A414D6DC(v31, v32 & 0x7FFFFFFFFFFFFFFFLL, v52);
    v55 = v58;
    v56 = v68;
    (*(v58 + 16))(v66, v54, v68);
    swift_storeEnumTagMultiPayload();
    *&v81 = &type metadata for LemonadePeopleShelfProvider;
    *(&v81 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    *&v81 = &type metadata for LemonadePeopleShelfProvider;
    *(&v81 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();

    (*(v55 + 8))(v54, v56);
    goto LABEL_12;
  }

  v33 = v60;
  v34 = v59;
  v35 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x1E69C2530], v61);
  v36 = sub_1A3C36888();

  v37 = sub_1A3C30368();
  v38 = sub_1A3C5A374();
  v39 = v62;
  sub_1A414D324(v32, v34, v37 & 1, v38 & 1, v62);
  (*(v33 + 8))(v34, v35);
  v40 = v63;
  v41 = v65;
  (*(v63 + 16))(v66, v39, v65);
  swift_storeEnumTagMultiPayload();
  *&v81 = &type metadata for LemonadePeopleShelfProvider;
  *(&v81 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  *&v81 = &type metadata for LemonadePeopleShelfProvider;
  *(&v81 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v42 = v67;
  sub_1A5249744();

  (*(v40 + 8))(v39, v41);
LABEL_12:
  sub_1A3D07D0C(v42, v77);
  swift_storeEnumTagMultiPayload();
  sub_1A44B2678();
  sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5249744();

  return sub_1A3D07D8C(v42);
}

uint64_t sub_1A4542EA8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_1A4545FE0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = *(v6 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v7(v5, v6, v11);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v15 = (*(v10 + 8))(v13, v9);
LABEL_5:
    v22 = 0uLL;
    v21 = 1;
    v23 = 0uLL;
    goto LABEL_6;
  }

  *(&v31 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(v14 + 32))(boxed_opaque_existential_1, v13, AssociatedTypeWitness);
  sub_1A3C34400(0, &qword_1EB128C70);
  type metadata accessor for LemonadeMapModel();
  v15 = swift_dynamicCast();
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  *&v17 = sub_1A3F2CCA4();
  v26 = v17;
  v27 = v18;
  v25 = v19;
  v28 = v20;

  *&v23 = v25;
  *&v22 = v26;
  v21 = 0;
  *(&v22 + 1) = v27;
  *(&v23 + 1) = v28;
LABEL_6:
  v30 = v22;
  v31 = v23;
  LOBYTE(AssociatedConformanceWitness) = v21;
  sub_1A417147C(v15);
  return sub_1A416D188(&v30, 0x6B72616D6B6F6F62, 0xEF7765695670614DLL, v4, v29);
}

uint64_t sub_1A45431A8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v45 = sub_1A5243834();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v42 - v4;
  v52 = sub_1A5243EC4();
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45466A8(0, &qword_1EB122C68, sub_1A4545BFC, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v7;
  sub_1A4545BFC();
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v12 = *(v10 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v12(v11, v10, v16);
  v19 = *(AssociatedTypeWitness - 8);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    *(&v61 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    (*(v19 + 32))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    v21 = PhotosModel.photokitObject.getter(AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0(&v60);
    if (v21)
    {
      v67[2] = &unk_1F198AE70;
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (v22)
      {
        v23 = v22;
        v24 = v1[3];
        v25 = v1[4];
        __swift_project_boxed_opaque_existential_1(v1, v24);
        v67[0] = (*(v25 + 40))(v24, v25);
        v67[1] = v26;
        v27 = v1[3];
        v28 = v1[4];
        __swift_project_boxed_opaque_existential_1(v1, v27);
        v29 = (*(v28 + 72))(v27, v28);
        v65 = v23;
        v66 = 0;
        v30 = v21;
        v31 = MEMORY[0x1E69E6158];
        v32 = MEMORY[0x1E69E6168];
        j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ(&v60);
        v54 = v60;
        v55 = v61;
        v56 = *(&v61 + 1);
        v57 = AssociatedConformanceWitness;
        v58 = v63;
        v59 = v64;
        v33 = sub_1A3D41FBC();
        v34 = v42;
        LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(v67, v29, 0, 0, v31, v32, v42, v33);
        sub_1A45460B4(v34, v51, sub_1A4545BFC);
        swift_storeEnumTagMultiPayload();
        sub_1A4546660(&qword_1EB125540, sub_1A4545BFC);
        sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
        sub_1A5249744();

        return sub_1A4546178(v34, sub_1A4545BFC);
      }
    }
  }

  v36 = v1[3];
  v37 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v36);
  (*(v37 + 72))(v36, v37);
  v60 = 0u;
  v61 = 0u;
  LOBYTE(AssociatedConformanceWitness) = 1;
  v38 = sub_1A52429A4();
  (*(*(v38 - 8) + 56))(v43, 1, 1, v38);
  (*(v44 + 104))(v46, *MEMORY[0x1E69C2678], v45);
  v39 = v47;
  sub_1A5243ED4();
  v40 = v48;
  v41 = v52;
  (*(v48 + 16))(v51, v39, v52);
  swift_storeEnumTagMultiPayload();
  sub_1A4546660(&qword_1EB125540, sub_1A4545BFC);
  sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5249744();
  return (*(v40 + 8))(v39, v41);
}

uint64_t sub_1A4543A7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1A4544744(0, a3, a4, a5, MEMORY[0x1E697F960]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A4543B00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1A4544744(0, a2, a3, a4, MEMORY[0x1E697F960]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A4543CD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_1A5242254();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1A5242274();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1A5242264();
  v65 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E72EF0(0, &qword_1EB124E60);
  v71 = v8;
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v60 - v9;
  sub_1A453AFD4(0, &unk_1EB124340, &qword_1EB124E60);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v60 - v11;
  sub_1A45446C0();
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249234();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1A5242234();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v23 = *(a1 + 40);
  v24 = *(a1 + 48) == 1;
  v62 = v14;
  v61 = v15;
  if (v24)
  {
    v85 = v23;
  }

  else
  {

    sub_1A524D254();
    v25 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v23, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v23) = v85;
  }

  v84 = v23;
  v83 = 2;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v86 == v82)
  {
  }

  else
  {
    v26 = sub_1A524EAB4();

    if ((v26 & 1) == 0)
    {
LABEL_9:
      v28 = v22;
      sub_1A5242184();
      goto LABEL_12;
    }
  }

  v27 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_1A524D254();
    v29 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v27, 0);
    (*(v61 + 8))(v17, v62);
    if (v86 != 1)
    {
      goto LABEL_9;
    }
  }

  v28 = v22;
  sub_1A52421A4();
LABEL_12:
  v63 = v28;
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = (*(v31 + 88))(v30, v31);
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v35 = 0xE000000000000000;
  if (v33)
  {
    v35 = v33;
  }

  *v7 = v34;
  v7[1] = v35;
  v36 = v65;
  v37 = v74;
  (*(v65 + 104))(v7, *MEMORY[0x1E69C1D40], v74);
  v38 = v76;
  v39 = v66;
  v40 = v77;
  (*(v76 + 104))(v66, *MEMORY[0x1E69C1D48], v77);
  sub_1A5242194();
  v41 = v75;
  sub_1A5242244();
  v42 = v64;
  sub_1A5242B44();
  (*(v79 + 8))(v41, v80);
  v80 = *(v68 + 8);
  v43 = v19;
  v44 = v69;
  v80(v43, v69);
  (*(v38 + 8))(v39, v40);
  (*(v36 + 8))(v7, v37);
  v45 = sub_1A524B4A4();
  KeyPath = swift_getKeyPath();
  v47 = v73;
  (*(v70 + 32))(v73, v42, v71);
  v48 = &v47[*(v67 + 36)];
  *v48 = KeyPath;
  v48[1] = v45;
  sub_1A524BC74();
  sub_1A5248AD4();
  v49 = v47;
  v50 = v78;
  sub_1A45462AC(v49, v78, &unk_1EB124340, &qword_1EB124E60);
  v51 = (v50 + *(v72 + 36));
  v52 = v91;
  v51[4] = v90;
  v51[5] = v52;
  v51[6] = v92;
  v53 = v87;
  *v51 = v86;
  v51[1] = v53;
  v54 = v89;
  v51[2] = v88;
  v51[3] = v54;
  v55 = sub_1A524B2F4();
  LOBYTE(KeyPath) = sub_1A524A064();
  v80(v63, v44);
  v56 = v50;
  v57 = v81;
  sub_1A4546244(v56, v81, sub_1A45446C0);
  sub_1A454462C();
  v59 = v57 + *(v58 + 36);
  *v59 = v55;
  *(v59 + 8) = KeyPath;
}

void sub_1A454462C()
{
  if (!qword_1EB1234A8)
  {
    sub_1A45446C0();
    sub_1A4544744(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1234A8);
    }
  }
}

void sub_1A45446C0()
{
  if (!qword_1EB123960)
  {
    sub_1A453AFD4(255, &unk_1EB124340, &qword_1EB124E60);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123960);
    }
  }
}

void sub_1A4544744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A4544798(uint64_t *a1@<X8>)
{
  *a1 = sub_1A524BC74();
  a1[1] = v3;
  sub_1A45461D8(0, &qword_1EB124400, sub_1A454462C);
  sub_1A4543CD8(v1, a1 + *(v4 + 44));
}

void sub_1A4544804(uint64_t a1@<X8>)
{
  v9 = a1;
  v1 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v1);
  v8 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BB64();
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for LemonadeBookmarksManager(0);
  v4 = [objc_opt_self() sharedPhotoLibrary];
  v5 = type metadata accessor for LemonadeMockBookmarksDataSource();
  v6 = sub_1A495E4AC();
  v10[3] = v5;
  v10[4] = sub_1A4546660(&qword_1EB13D0D0, type metadata accessor for LemonadeMockBookmarksDataSource);
  v10[0] = v6;
  LemonadeBookmarksManager.__allocating_init(photoLibrary:dataSource:)(v4, v10);
}

void sub_1A4544BDC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4544EB8()
{
  v0 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4544BDC(0xD000000000000016, 0x80000001A53DB8C0, 0.1);
}

void sub_1A45451A0()
{
  if (!qword_1EB13D0E0)
  {
    type metadata accessor for LemonadeCollectionBookmarkCell(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13D0E0);
    }
  }
}

unint64_t sub_1A4545208()
{
  result = qword_1EB13D0F0;
  if (!qword_1EB13D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D0F0);
  }

  return result;
}

unint64_t sub_1A45452B4()
{
  result = qword_1EB13D0F8;
  if (!qword_1EB13D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D0F8);
  }

  return result;
}

uint64_t sub_1A4545328(uint64_t a1)
{
  v2 = sub_1A4545CAC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4545374(uint64_t a1)
{
  v2 = sub_1A4545CAC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A45453E8()
{
  sub_1A3C34400(319, &qword_1EB125408);
  if (v0 <= 0x3F)
  {
    sub_1A4545FE0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4545FE0(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4545534()
{
  result = sub_1A524A274();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A45455B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1A4545600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4545674()
{
  result = qword_1EB13D100;
  if (!qword_1EB13D100)
  {
    sub_1A4545764(255, &qword_1EB13D108, sub_1A453BD3C, MEMORY[0x1E6981910], MEMORY[0x1E697F960]);
    sub_1A453F1F8(&qword_1EB13D080, sub_1A453BD3C, sub_1A453F278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D100);
  }

  return result;
}

void sub_1A4545764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A45457D0()
{
  result = qword_1EB13D110;
  if (!qword_1EB13D110)
  {
    sub_1A45466A8(255, &unk_1EB13D118, sub_1A45416EC, sub_1A45416B0, MEMORY[0x1E697F960]);
    sub_1A45417A8();
    sub_1A44F1A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D110);
  }

  return result;
}

unint64_t sub_1A45458DC()
{
  result = qword_1EB1234B0;
  if (!qword_1EB1234B0)
  {
    sub_1A454462C();
    sub_1A453F1F8(&qword_1EB123968, sub_1A45446C0, sub_1A425D1A8);
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1234B0);
  }

  return result;
}

void sub_1A4545994()
{
  if (!qword_1EB13D130)
  {
    sub_1A454516C(255);
    sub_1A4546660(&qword_1EB13D0E8, sub_1A454516C);
    v0 = sub_1A524BDA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D130);
    }
  }
}

void sub_1A4545AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4545B88(255, &qword_1EB125960);
    v7 = v6;
    sub_1A4545B88(255, &qword_1EB13C120);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4545B88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3C36888();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4545BFC()
{
  if (!qword_1EB125530)
  {
    type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
    sub_1A4546660(&qword_1EB12A9A0, type metadata accessor for PhotosPreviewableCollectionPlaceholder);
    v0 = type metadata accessor for LemonadeInlineStoryPlayerView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125530);
    }
  }
}

unint64_t sub_1A4545CAC()
{
  result = qword_1EB13D158;
  if (!qword_1EB13D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D158);
  }

  return result;
}

void sub_1A4545D00()
{
  if (!qword_1EB13D160)
  {
    sub_1A5244174();
    sub_1A4546660(&unk_1EB13D168, MEMORY[0x1E69C29D0]);
    v0 = type metadata accessor for LemonadeMockObservableCollectionBookmark();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D160);
    }
  }
}

void sub_1A4545D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4545DE4@<X0>(uint64_t (*a1)(void, __n128)@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
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

void sub_1A4545FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4546044(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1A453C49C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A45460B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A454611C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1A453C49C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4546178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45461D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A4546244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45462AC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1A453AFD4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A454631C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4546384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A45463E4()
{
  result = qword_1EB13D1B8;
  if (!qword_1EB13D1B8)
  {
    sub_1A45464B0(255, &qword_1EB13D1C0, MEMORY[0x1E697F960]);
    sub_1A44B2678();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D1B8);
  }

  return result;
}

void sub_1A45464B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4545AE0(255, &unk_1EB13D140, MEMORY[0x1E697F960]);
    v7 = v6;
    v8 = sub_1A5243EC4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A454653C()
{
  result = qword_1EB1228C8;
  if (!qword_1EB1228C8)
  {
    sub_1A45466A8(255, &qword_1EB1228C0, sub_1A4545BFC, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A4546660(&qword_1EB125540, sub_1A4545BFC);
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228C8);
  }

  return result;
}

uint64_t sub_1A4546660(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A45466A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4546738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_1A45484B4(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for LemonadeSheetContent();
  v11 = (a5 + *(v10 + 40));
  result = a4();
  *v11 = a1;
  v11[1] = a2;
  *(a5 + *(v10 + 44)) = a3;
  return result;
}

uint64_t sub_1A4546828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v50 - v8;
  sub_1A4546E88();
  v10 = v9;
  v11 = *(a1 + 24);
  sub_1A4546F3C();
  v13 = v12;
  v14 = sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C);
  v63 = v13;
  v64 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v4;
  v64 = v10;
  v65 = v11;
  v66 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v4;
  v64 = v10;
  v58 = v11;
  v65 = v11;
  v66 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1A3D5F9DC();
  v19 = MEMORY[0x1E69E6158];
  v63 = OpaqueTypeMetadata2;
  v64 = MEMORY[0x1E69E6158];
  v65 = v17;
  v66 = v18;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_1A5249754();
  v63 = OpaqueTypeMetadata2;
  v64 = v19;
  v65 = v17;
  v66 = v18;
  v21 = v2;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v17;
  WitnessTable = swift_getWitnessTable();
  v52 = v20;
  v50[1] = WitnessTable;
  v23 = sub_1A5248484();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v50 - v28;
  v30 = sub_1A52498B4();
  v51 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A5249754();
  v55 = *(v33 - 8);
  v56 = v33;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = v50 - v36;
  if (*(v21 + *(v34 + 44)) == 1)
  {
    v38 = sub_1A5249824();
    v54 = v30;
    MEMORY[0x1EEE9AC00](v38);
    v39 = v58;
    v50[-4] = v4;
    v50[-3] = v39;
    v50[-2] = v21;
    v50[-1] = v32;
    sub_1A5248474();
    v53 = swift_getWitnessTable();
    v40 = *(v24 + 16);
    v40(v29, v26, v23);
    v41 = *(v24 + 8);
    v41(v26, v23);
    v40(v26, v29, v23);
    v42 = v58;
    sub_1A3DF4798(v26, v23);
    v41(v26, v23);
    v41(v29, v23);
    (*(v51 + 8))(v32, v54);
  }

  else
  {
    v43 = *(v5 + 16);
    v44 = v53;
    v43(v53, v21 + *(v34 + 36), v4, v35);
    v45 = v54;
    (v43)(v54, v44, v4);
    swift_getWitnessTable();
    v42 = v58;
    sub_1A3DF4890(v45, v23, v4);
    v46 = *(v5 + 8);
    v46(v45, v4);
    v46(v44, v4);
  }

  v59 = swift_getWitnessTable();
  v60 = v42;
  v47 = v56;
  swift_getWitnessTable();
  v48 = v55;
  (*(v55 + 16))(v57, v37, v47);
  return (*(v48 + 8))(v37, v47);
}

void sub_1A4546E88()
{
  if (!qword_1EB13D1C8)
  {
    sub_1A4546F3C();
    sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D1C8);
    }
  }
}

void sub_1A4546F3C()
{
  if (!qword_1EB13D1D0)
  {
    sub_1A4546FDC();
    sub_1A4547040(&qword_1EB13D1E0, sub_1A4546FDC);
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D1D0);
    }
  }
}

void sub_1A4546FDC()
{
  if (!qword_1EB13D1D8)
  {
    sub_1A3E352FC();
    sub_1A3E4509C();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D1D8);
    }
  }
}

uint64_t sub_1A4547040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4547088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a5;
  sub_1A4546E88();
  v8 = v7;
  sub_1A4546F3C();
  sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C);
  v43 = a3;
  v44 = v8;
  v26[1] = v8;
  v45 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v29 = v26 - v10;
  v43 = a3;
  v44 = v8;
  v45 = a4;
  v11 = swift_getOpaqueTypeConformance2();
  v28 = v11;
  v32 = sub_1A3D5F9DC();
  v43 = OpaqueTypeMetadata2;
  v44 = MEMORY[0x1E69E6158];
  v45 = v11;
  OpaqueTypeConformance2 = v32;
  v31 = MEMORY[0x1E697CFD8];
  swift_getOpaqueTypeMetadata2();
  v12 = sub_1A5249754();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v27 = v26 - v17;
  v18 = type metadata accessor for LemonadeSheetContent();
  v37 = a3;
  v38 = a4;
  v19 = v34;
  v39 = v35;
  v40 = v34;
  swift_checkMetadataState();
  v20 = v29;
  sub_1A524B0E4();
  v21 = v28;
  sub_1A4547AF8(*(v19 + *(v18 + 40)), *(v19 + *(v18 + 40) + 8), OpaqueTypeMetadata2, v28, v15);
  (*(v33 + 8))(v20, OpaqueTypeMetadata2);
  v43 = OpaqueTypeMetadata2;
  v44 = MEMORY[0x1E69E6158];
  v45 = v21;
  OpaqueTypeConformance2 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v21;
  swift_getWitnessTable();
  v22 = *(v13 + 16);
  v23 = v27;
  v22(v27, v15, v12);
  v24 = *(v13 + 8);
  v24(v15, v12);
  v22(v36, v23, v12);
  return (v24)(v23, v12);
}

uint64_t sub_1A4547470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = sub_1A52498B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4546F3C();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v16);
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a2;
  sub_1A4546FDC();
  sub_1A4547040(&qword_1EB13D1E0, sub_1A4546FDC);
  sub_1A5247F24();
  v19 = sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C);
  MEMORY[0x1A5904CD0](v18, v14, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1A45476A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeSheetContent();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_1A3E352FC();
  sub_1A3E4509C();
  return sub_1A524B704();
}

uint64_t sub_1A4547824(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45484B4(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4547A9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  v3 = sub_1A524A264();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_1A4547AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v36 = *(a3 - 8);
  OpaqueTypeConformance2 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1A3D5F9DC();
  v13 = MEMORY[0x1E69E6158];
  v45 = a3;
  v46 = MEMORY[0x1E69E6158];
  v47 = a4;
  v48 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = sub_1A5249754();
  v40 = *(v21 - 8);
  v41 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v42 = &v35 - v23;
  if (a2)
  {
    v45 = OpaqueTypeConformance2;
    v46 = a2;
    sub_1A524ABB4();
    v45 = a3;
    v46 = v13;
    v47 = a4;
    v48 = v12;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v12;
    v24 = *(v15 + 16);
    v24(v20, v17, OpaqueTypeMetadata2);
    v25 = *(v15 + 8);
    v25(v17, OpaqueTypeMetadata2);
    v24(v17, v20, OpaqueTypeMetadata2);
    v12 = v39;
    sub_1A3DF4798(v17, OpaqueTypeMetadata2);
    v25(v17, OpaqueTypeMetadata2);
    v25(v20, OpaqueTypeMetadata2);
    v26 = MEMORY[0x1E69E6158];
  }

  else
  {
    v27 = v36;
    v28 = *(v36 + 16);
    v28(v11, v39, a3, v22);
    v29 = v35;
    (v28)(v35, v11, a3);
    v26 = MEMORY[0x1E69E6158];
    v45 = a3;
    v46 = MEMORY[0x1E69E6158];
    v47 = a4;
    v48 = v12;
    swift_getOpaqueTypeConformance2();
    sub_1A3DF4890(v29, OpaqueTypeMetadata2, a3);
    v30 = *(v27 + 8);
    v30(v29, a3);
    v30(v11, a3);
  }

  v45 = a3;
  v46 = v26;
  v47 = a4;
  v48 = v12;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = a4;
  v31 = v41;
  swift_getWitnessTable();
  v32 = v40;
  v33 = v42;
  (*(v40 + 16))(v38, v42, v31);
  return (*(v32 + 8))(v33, v31);
}

void sub_1A4547FC0()
{
  sub_1A45484B4(319, &qword_1EB124730, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1A405D488(319, &qword_1EB126FA0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4548094(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v7 + v10 + 1;
  v14 = v11 + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  v23 = &a1[v13] & ~v10;
  if (v9 < 0x7FFFFFFE)
  {
    v25 = *(((v14 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    if ((v25 + 1) >= 2)
    {
      return v25;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = *(*(*(a3 + 16) - 8) + 48);

    return v24(v23);
  }
}

void sub_1A4548278(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + v12 + 1;
  v15 = *(v10 + 64) + 7;
  v16 = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = &a1[v14] & ~v12;
      if (v11 < 0x7FFFFFFE)
      {
        v24 = ((v15 + v22) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v24 = 0;
          v24[1] = 0;
          *v24 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v24[1] = a2;
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v16);
  if (v16 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v16] = v21;
      }

      else
      {
        *&a1[v16] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }
}

void sub_1A45484B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5248284();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A454852C()
{
  v1 = *(type metadata accessor for LemonadeSheetContent() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1A4547824(v2);
}

uint64_t sub_1A4548590()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1C5E18);
  __swift_project_value_buffer(v6, qword_1EB1C5E18);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static CreateAssetsIntent.title.modify())()
{
  if (qword_1EB1C5E10 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1C5E18);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4548880@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C5E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1C5E18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A4548940(uint64_t a1)
{
  if (qword_1EB1C5E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1C5E18);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static CreateAssetsIntent.parameterSummary.getter()
{
  sub_1A454AF24(0, &qword_1EB13D1F0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A454AF24(0, &qword_1EB13D200, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4548BCC();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4548C44();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4548BCC()
{
  result = qword_1EB13D1F8;
  if (!qword_1EB13D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D1F8);
  }

  return result;
}

void sub_1A4548C44()
{
  if (!qword_1EB13D208)
  {
    sub_1A4548CA4();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D208);
    }
  }
}

void sub_1A4548CA4()
{
  if (!qword_1EB13D210)
  {
    sub_1A45493B0(255, &qword_1EB13D218, MEMORY[0x1E6959ED8], MEMORY[0x1E69E62F8]);
    sub_1A4548D38();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D210);
    }
  }
}

unint64_t sub_1A4548D38()
{
  result = qword_1EB13D220;
  if (!qword_1EB13D220)
  {
    sub_1A45493B0(255, &qword_1EB13D218, MEMORY[0x1E6959ED8], MEMORY[0x1E69E62F8]);
    sub_1A454AD30(&qword_1EB13D228, MEMORY[0x1E6959ED8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D220);
  }

  return result;
}

uint64_t CreateAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v1 = sub_1A5240334();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1A45493B0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v22 - v5;
  sub_1A45493B0(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23 = sub_1A5240BB4();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4548CA4();
  v26 = v16;
  sub_1A524C5B4();
  sub_1A5241244();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v9 + 104);
  v18(v11, v17, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v18(v11, v17, v8);
  v19 = v25;
  sub_1A5240BC4();
  (*(v14 + 56))(v19, 0, 1, v23);
  v32 = 0;
  sub_1A45493B0(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1A5246D14();
  *(swift_allocObject() + 16) = xmmword_1A52FC9F0;
  sub_1A5246CC4();
  sub_1A5246CD4();
  v20 = sub_1A523FDB4();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  result = sub_1A523FFD4();
  *v31 = result;
  return result;
}

void sub_1A45493B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t CreateAssetsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A45494B0, v5, v4);
}

uint64_t sub_1A45494B0()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4548BCC();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A5346CA8);
}

uint64_t sub_1A45495F0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4549688, v4, v3);
}

uint64_t sub_1A4549688()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[6];
  v0[14] = v2;
  v0[7] = v1;
  sub_1A4548BCC();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  v0[15] = v4;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1A4549770;

  return sub_1A4549AC8((v0 + 2), v2, v3, v5);
}

uint64_t sub_1A4549770(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A45499C8;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A45498B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A45498B4()
{
  v1 = v0[18];

  v2 = v0[2];
  v3 = v0[3];
  v0[8] = v1;
  v0[4] = v2;
  v0[5] = v3;
  sub_1A3DB4E34(0, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
  sub_1A3F57F0C();
  sub_1A454AE30();
  sub_1A523FDC4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45499C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4549A2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A45495F0(a1, v1);
}

uint64_t sub_1A4549AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1A5246F24();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1A524CC54();
  v4[10] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4549BC0, v7, v6);
}

uint64_t sub_1A4549BC0()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = 0;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1A4549C9C;
  v5 = v0[4];

  return sub_1A489A508(v5, &unk_1A5346CC0, v3);
}

uint64_t sub_1A4549C9C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A454A004;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A4549DB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A4549DB8()
{

  if (*(v0 + 16))
  {
    v1 = [*(v0 + 16) importedAssets];
    if (v1)
    {
      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      v5 = static AssetEntity.entities(for:)(v1);
      PXAppIntentsDebugDescription(for:)(v5);
      v6 = sub_1A3CB648C();
      (*(v3 + 16))(v2, v6, v4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A454A004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A454A084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A5246F24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A454A17C, v7, v6);
}

void sub_1A454A17C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1A48995FC();
  v4 = sub_1A3CB648C();
  (*(v2 + 16))(v1, v4, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A454A36C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  if (v1)
  {
    v7 = sub_1A454A764;
  }

  else
  {
    v7 = sub_1A454A4B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A454A4B0()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = objc_allocWithZone(PXImportFilesAction);
  sub_1A5240E64();
  v4 = v1;
  v5 = sub_1A524CA14();
  v6 = [v3 initWithPhotoLibrary:v4 fileURLs:v5 assetCollection:0];
  v0[15] = v6;

  v7 = *v2;
  *v2 = v6;
  v8 = v6;

  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1A454A5D0;
  v10 = v0[4];
  v11 = v0[5];

  return sub_1A4899AD4(v6, v10, v11);
}

uint64_t sub_1A454A5D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A454A7D0;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A454A6EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A454A6EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A454A764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A454A7D0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A454A84C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A454A084(a1, v4, v5, v6);
}

void (*CreateAssetsIntent.files.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A454A9A4()
{
  sub_1A454AF24(0, &qword_1EB13D1F0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A454AF24(0, &qword_1EB13D200, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4548C44();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A454AB60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return CreateAssetsIntent.perform()(a1);
}

uint64_t sub_1A454ABFC(uint64_t a1)
{
  v2 = sub_1A4548BCC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A454AC3C()
{
  result = qword_1EB13D230;
  if (!qword_1EB13D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D230);
  }

  return result;
}

unint64_t sub_1A454AC94()
{
  result = qword_1EB13D238;
  if (!qword_1EB13D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D238);
  }

  return result;
}

uint64_t sub_1A454AD30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A454AD78()
{
  if (!qword_1EB13D248)
  {
    sub_1A3DB4E34(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    sub_1A3F57F0C();
    sub_1A454AE30();
    v0 = sub_1A52402B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D248);
    }
  }
}

unint64_t sub_1A454AE30()
{
  result = qword_1EB13D250;
  if (!qword_1EB13D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D250);
  }

  return result;
}

unint64_t sub_1A454AEB0()
{
  result = qword_1EB13D258;
  if (!qword_1EB13D258)
  {
    sub_1A454AF24(255, &unk_1EB13D260, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D258);
  }

  return result;
}

void sub_1A454AF24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A4548BCC();
    v7 = a3(a1, &type metadata for CreateAssetsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A454AFA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A454B004@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  type metadata accessor for PhotosBatchedSearchStateModel();
  v5 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  result = sub_1A4A2CC24(v4);
  *a1 = result;
  return result;
}

uint64_t sub_1A454B0FC()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-v3 - 8];
  v5 = type metadata accessor for PhotosSearchResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A455280C(v0 + *(v9 + 28), v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A3C2C9F8(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
    return 0;
  }

  sub_1A4552A08(v4, v8, type metadata accessor for PhotosSearchResults);
  sub_1A3C451FC(v0 + *(v9 + 32), v22);
  v11 = v23;
  result = sub_1A3C2CE9C(v22);
  if (v11)
  {
LABEL_4:
    v10 = 0;
LABEL_5:
    sub_1A454C114(v8, type metadata accessor for PhotosSearchResults);
    return v10;
  }

  v13 = 0;
  v14 = *&v8[*(v5 + 28)];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v13;
LABEL_16:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    if (*(*(*(v14 + 56) + ((v19 << 9) | (8 * v20))) + 16))
    {
      v10 = 1;
      goto LABEL_5;
    }
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
      goto LABEL_4;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A454B3D4()
{
  v1 = sub_1A5249234();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v68 = &v57[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1A5249A94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57[-v10];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v57[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v57[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57[-v25];
  v73 = type metadata accessor for PhotosSearchResultsGridView(0);
  v74 = v0;
  sub_1A3DC7F98(v26);
  v27 = v4[13];
  v63 = *MEMORY[0x1E697FF40];
  v62 = v27;
  v27(v23);
  v61 = v4[7];
  v61(v23, 0, 1, v3);
  v64 = v7;
  v28 = *(v7 + 48);
  sub_1A45529A0(v26, v11, sub_1A3DC7D88);
  sub_1A45529A0(v23, &v11[v28], sub_1A3DC7D88);
  v72 = v4;
  v29 = v4[6];
  if (v29(v11, 1, v3) == 1)
  {
    v71 = v29;
    sub_1A454C114(v23, sub_1A3DC7D88);
    sub_1A454C114(v26, sub_1A3DC7D88);
    if (v71(&v11[v28], 1, v3) != 1)
    {
      v30 = v74;
LABEL_14:
      v31 = v73;
LABEL_15:
      sub_1A454C114(v11, sub_1A3DD0DCC);
      goto LABEL_16;
    }

    v59 = v14;
    sub_1A454C114(v11, sub_1A3DC7D88);
    v31 = v73;
    v30 = v74;
LABEL_8:
    v26 = v65;
    sub_1A3DC7F98(v65);
    v35 = v67;
    v62(v67, v63, v3);
    v36 = v35;
    v61(v35, 0, 1, v3);
    v37 = *(v64 + 48);
    v11 = v66;
    sub_1A45529A0(v26, v66, sub_1A3DC7D88);
    sub_1A45529A0(v35, &v11[v37], sub_1A3DC7D88);
    v38 = v71;
    if (v71(v11, 1, v3) == 1)
    {
      sub_1A454C114(v35, sub_1A3DC7D88);
      sub_1A454C114(v26, sub_1A3DC7D88);
      if (v38(&v11[v37], 1, v3) == 1)
      {
        sub_1A454C114(v11, sub_1A3DC7D88);
LABEL_25:
        v53 = v30 + *(v31 + 92);
        v54 = *v53;
        if (*(v53 + 8) == 1)
        {
          v78 = v54 & 1;
        }

        else
        {

          sub_1A524D254();
          v55 = sub_1A524A014();
          sub_1A5246DF4();

          v56 = v68;
          sub_1A5249224();
          swift_getAtKeyPath();
          sub_1A3C53AEC(v54, 0);
          (*(v69 + 8))(v56, v70);
          LOBYTE(v54) = v78;
        }

        v77 = v54 & 1;
        v76 = 1;
        v44 = !static LemonadeRootViewOrientation.== infix(_:_:)(&v77, &v76);
        v45 = 9;
        v46 = 13;
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v39 = v59;
    sub_1A45529A0(v11, v59, sub_1A3DC7D88);
    if (v38(&v11[v37], 1, v3) == 1)
    {
      v32 = v39;
      v23 = v36;
      goto LABEL_13;
    }

    v48 = v72;
    v49 = v60;
    (v72[4])(v60, &v11[v37], v3);
    sub_1A4553284(&qword_1EB127B70, MEMORY[0x1E697FF50]);
    v50 = v39;
    v51 = sub_1A524C594();
    v52 = v48[1];
    v52(v49, v3);
    sub_1A454C114(v67, sub_1A3DC7D88);
    sub_1A454C114(v26, sub_1A3DC7D88);
    v52(v50, v3);
    v30 = v74;
    sub_1A454C114(v11, sub_1A3DC7D88);
    if (v51)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  sub_1A45529A0(v11, v75, sub_1A3DC7D88);
  if (v29(&v11[v28], 1, v3) == 1)
  {
    v30 = v74;
    v32 = v75;
LABEL_13:
    sub_1A454C114(v23, sub_1A3DC7D88);
    sub_1A454C114(v26, sub_1A3DC7D88);
    (v72[1])(v32, v3);
    goto LABEL_14;
  }

  v71 = v29;
  v59 = v14;
  v33 = v60;
  (v72[4])(v60, &v11[v28], v3);
  sub_1A4553284(&qword_1EB127B70, MEMORY[0x1E697FF50]);
  v58 = sub_1A524C594();
  v34 = v72[1];
  v34(v33, v3);
  sub_1A454C114(v23, sub_1A3DC7D88);
  sub_1A454C114(v26, sub_1A3DC7D88);
  v34(v75, v3);
  sub_1A454C114(v11, sub_1A3DC7D88);
  v31 = v73;
  v30 = v74;
  if (v58)
  {
    goto LABEL_8;
  }

LABEL_16:
  v40 = v30 + *(v31 + 92);
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    v81 = v41 & 1;
  }

  else
  {

    sub_1A524D254();
    v42 = sub_1A524A014();
    sub_1A5246DF4();

    v43 = v68;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v41, 0);
    (*(v69 + 8))(v43, v70);
    LOBYTE(v41) = v81;
  }

  v80 = v41 & 1;
  v79 = 1;
  v44 = !static LemonadeRootViewOrientation.== infix(_:_:)(&v80, &v79);
  v45 = 6;
  v46 = 9;
LABEL_20:
  if (v44)
  {
    return v45;
  }

  else
  {
    return v46;
  }
}

uint64_t sub_1A454BD80()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-1] - v6;
  v8 = type metadata accessor for PhotosSearchResults(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PhotosSearchResultsGridView(0);
  v12 = *(v22 + 28);
  sub_1A455280C(v0 + v12, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v1);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1A3C2C9F8(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A4552A08(v7, v11, type metadata accessor for PhotosSearchResults);
  v15 = MEMORY[0x1E69E6720];
  sub_1A455280C(v0 + v12, v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v16 = v13(v4, 1, v8);
  sub_1A3C2C9F8(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v15, sub_1A4554CD8);
  if (v16 == 1 || (sub_1A3C451FC(v0 + *(v22 + 32), v23), v17 = v23[3], sub_1A3C2CE9C(v23), v17))
  {
    sub_1A454C114(v11, type metadata accessor for PhotosSearchResults);
  }

  else
  {
    v20 = *(*&v11[*(v8 + 20)] + 16);
    v21 = sub_1A454B3D4();
    sub_1A454C114(v11, type metadata accessor for PhotosSearchResults);
    if (v21 >= v20)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A4A2DA28(1);
  v19 = v18;

  return v19;
}

uint64_t sub_1A454C114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A454C174()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PhotosSearchResults(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PhotosSearchResultsGridView(0);
  v12 = *(v20 + 28);
  sub_1A455280C(v0 + v12, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v1);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1A3C2C9F8(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
  }

  else
  {
    v19 = v11;
    sub_1A4552A08(v7, v11, type metadata accessor for PhotosSearchResults);
    v14 = MEMORY[0x1E69E6720];
    sub_1A455280C(v0 + v12, v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
    v15 = v13(v4, 1, v8);
    sub_1A3C2C9F8(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v14, sub_1A4554CD8);
    if (v15 != 1)
    {
      sub_1A3C451FC(v0 + *(v20 + 32), v21);
      v16 = v22;
      sub_1A3C2CE9C(v21);
      if (!v16)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    sub_1A454C114(v19, type metadata accessor for PhotosSearchResults);
  }

  return MEMORY[0x1E69E7CC0];
}

id PhotosSearchResultViewController.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfiguration_];

  return v3;
}

void sub_1A454C5C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v119 = a1;
  v136 = type metadata accessor for PhotosSearchResultsGridView(0);
  v120 = *(v136 - 1);
  MEMORY[0x1EEE9AC00](v136);
  v121 = v5;
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52411C4();
  v124 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4();
  v117 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v123 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v112 - v19;
  v21 = type metadata accessor for PhotosSearchResults(0);
  v134 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v115 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v112 - v24;
  sub_1A4554CD8(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v11);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v113 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v112 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v112 - v31;
  sub_1A4552778();
  v135 = v32;
  sub_1A5249FD4();
  v33 = aBlock;
  v34 = *&aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider];

  v35 = [v34 hostViewController];
  v131 = a2;
  if (v35)
  {
    type metadata accessor for PhotosSearchResultViewController();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      v38 = [v36 viewModelIfLoaded];
      v128 = v37;
      if (v38)
      {
        v39 = v38;
        v40 = [v38 gridActionManager];

        if (v40)
        {
          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (v41)
          {
            v42 = v41;
            sub_1A5249FD4();
            v43 = aBlock;
            [v42 setUserInfoDelegate_];
          }
        }
      }

LABEL_10:
      v129 = v21;
      v122 = v6;
      sub_1A5249FD4();
      v44 = aBlock;
      v45 = &aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container];
      swift_beginAccess();
      v46 = *(v45 + 3);
      v133 = v3;
      if (v46)
      {
        v47 = *(v45 + 4);
        v48 = __swift_project_boxed_opaque_existential_1(v45, v46);
        v49 = *(v46 - 8);
        v50 = MEMORY[0x1EEE9AC00](v48);
        v52 = &v112 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v52, v50);

        v53 = (*(v47 + 8))(v46, v47);
        v55 = v54;
        (*(v49 + 8))(v52, v46);
        v3 = v133;
      }

      else
      {

        v53 = 0;
        v55 = 0;
      }

      v127 = v136[8];
      sub_1A3C451FC(v3 + v127, &aBlock);
      v56 = v138;
      if (v138)
      {
        v57 = v139;
        __swift_project_boxed_opaque_existential_1(&aBlock, v138);
        v58 = (*(v57 + 8))(v56, v57);
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        if (!v55)
        {
          v61 = v129;
          v62 = v134;
          v63 = v125;
          if (!v60)
          {
            v126 = 1;
            v3 = v133;
LABEL_27:
            sub_1A5249FD4();
            v64 = aBlock;
            v65 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
            swift_beginAccess();
            v67 = *(v62 + 48);
            v66 = v62 + 48;
            v130 = v67;
            if (v67(&v64[v65], 1, v61))
            {

              v68 = v124;
              v69 = *(v124 + 56);
              v69(v63, 1, 1, v7);
            }

            else
            {
              v70 = &v64[v65];
              v71 = v132;
              sub_1A45529A0(v70, v132, type metadata accessor for PhotosSearchResults);

              v68 = v124;
              (*(v124 + 16))(v63, v71, v7);
              sub_1A454C114(v71, type metadata accessor for PhotosSearchResults);
              v69 = *(v68 + 56);
              v69(v63, 0, 1, v7);
            }

            v132 = v136[7];
            sub_1A455280C(v3 + v132, v20, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
            v72 = v130(v20, 1, v61);
            v134 = v66;
            if (v72 == 1)
            {
              sub_1A3C2C9F8(v20, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
              v73 = 1;
            }

            else
            {
              (*(v68 + 16))(v29, v20, v7);
              sub_1A454C114(v20, type metadata accessor for PhotosSearchResults);
              v73 = 0;
            }

            v74 = v118;
            v69(v29, v73, 1, v7);
            v75 = *(v117 + 48);
            v76 = MEMORY[0x1E69695A8];
            v77 = MEMORY[0x1E69E6720];
            sub_1A455280C(v63, v74, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
            sub_1A455280C(v29, v74 + v75, &qword_1EB12AFA0, v76, v77);
            v78 = v63;
            v79 = *(v68 + 48);
            if (v79(v74, 1, v7) == 1)
            {
              v80 = MEMORY[0x1E69695A8];
              v81 = MEMORY[0x1E69E6720];
              sub_1A3C2C9F8(v29, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
              sub_1A3C2C9F8(v78, &qword_1EB12AFA0, v80, v81, sub_1A4554CD8);
              if (v79(v74 + v75, 1, v7) == 1)
              {
                sub_1A3C2C9F8(v74, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
                v82 = 1;
LABEL_39:
                v86 = v133;
                v87 = v129;
                goto LABEL_41;
              }
            }

            else
            {
              v118 = v29;
              v83 = v113;
              sub_1A455280C(v74, v113, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
              if (v79(v74 + v75, 1, v7) != 1)
              {
                v88 = v124;
                v89 = v112;
                (*(v124 + 32))(v112, v74 + v75, v7);
                sub_1A4553284(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
                v82 = sub_1A524C594();
                v90 = *(v88 + 8);
                v90(v89, v7);
                v91 = MEMORY[0x1E69695A8];
                v92 = MEMORY[0x1E69E6720];
                sub_1A3C2C9F8(v118, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
                sub_1A3C2C9F8(v125, &qword_1EB12AFA0, v91, v92, sub_1A4554CD8);
                v90(v83, v7);
                sub_1A3C2C9F8(v74, &qword_1EB12AFA0, v91, v92, sub_1A4554CD8);
                v86 = v133;
                v87 = v129;
LABEL_41:
                sub_1A5249FD4();
                v93 = v140;
                v94 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
                swift_beginAccess();
                sub_1A455287C(v86 + v132, v93 + v94);
                swift_endAccess();

                sub_1A5249FD4();
                v95 = v140;
                v96 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container;
                swift_beginAccess();
                sub_1A4552910(v86 + v127, v95 + v96);
                swift_endAccess();

                sub_1A5249FD4();
                v97 = aBlock;
                aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition] = (v82 & 1) == 0;

                if (v128)
                {
                  v98 = v116;
                  sub_1A455280C(v86 + v132, v116, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
                  if (v130(v98, 1, v87) != 1)
                  {
                    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                  }

                  v99 = v128;
                  v100 = v128;
                  sub_1A3C2C9F8(v98, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
                  *&v99[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap] = 0;
                }

                LODWORD(v125) = v82;
                if ((v126 & 1) == 0)
                {
                  sub_1A5249FD4();
                  v101 = aBlock;
                  v102 = *v86;
                  v103 = v127;
                  v104 = sub_1A4009494(*v86, v86 + v127);
                  v105 = *&v101[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection];
                  *&v101[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection] = v104;

                  sub_1A5249FD4();
                  v106 = aBlock;
                  v107 = sub_1A4009928(v102, v86 + v103);
                  v108 = *&v106[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection];
                  *&v106[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection] = v107;

                  sub_1A5249FD4();
                  v109 = aBlock;
                  v110 = sub_1A4009E10(v102, v86 + v103, 0);
                  v111 = *&v109[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection];
                  *&v109[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection] = v110;
                }

                sub_1A5249FD4();
                *&aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap] = *(v86 + v136[14]);
                _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
              }

              v84 = MEMORY[0x1E69695A8];
              v85 = MEMORY[0x1E69E6720];
              sub_1A3C2C9F8(v118, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
              sub_1A3C2C9F8(v125, &qword_1EB12AFA0, v84, v85, sub_1A4554CD8);
              (*(v124 + 8))(v83, v7);
            }

            sub_1A454C114(v74, sub_1A45526E4);
            v82 = 0;
            goto LABEL_39;
          }

          v126 = 0;
          v3 = v133;
LABEL_26:

          goto LABEL_27;
        }

        v3 = v133;
        if (v60)
        {
          if (v53 == v58 && v55 == v60)
          {

            v126 = 1;
          }

          else
          {
            v126 = sub_1A524EAB4();
          }

          goto LABEL_25;
        }
      }

      else
      {
        sub_1A3C2CE9C(&aBlock);
        if (!v55)
        {
          v126 = 1;
          v61 = v129;
          v62 = v134;
          v63 = v125;
          goto LABEL_27;
        }
      }

      v126 = 0;
LABEL_25:
      v61 = v129;
      v62 = v134;
      v63 = v125;
      goto LABEL_26;
    }
  }

  v128 = 0;
  goto LABEL_10;
}

id sub_1A454E204(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v30 = type metadata accessor for PhotosSearchResultsGridView(0);
  v14 = *(v30 + 28);
  sub_1A455280C(a2 + v14, v13, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4);
  v15 = type metadata accessor for PhotosSearchResults(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v13, 1, v15) == 1)
  {
    sub_1A3C2C9F8(v13, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
    v17 = 0;
  }

  else
  {
    v17 = *&v13[*(v15 + 40)];
    sub_1A454C114(v13, type metadata accessor for PhotosSearchResults);
  }

  [a1 setSearchQueryMatchInfo_];

  sub_1A455280C(a2 + v14, v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (v16(v10, 1, v15) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C2C9F8(v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
  [a1 setSearchContextualVideoThumbnailIdentifiers_];

  v18 = MEMORY[0x1E69E6720];
  sub_1A455280C(a2 + v14, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v19 = v16(v7, 1, v15) != 1;
  sub_1A3C2C9F8(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v18, sub_1A4554CD8);
  [a1 setAllowsEmptyPlaceholderBehavior_];
  v20 = v30;
  v21 = (a2 + *(v30 + 80));
  v22 = *v21;
  v23 = *(v21 + 1);
  v32 = v22;
  v33 = v23;
  sub_1A4554D3C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v31)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  [a1 setFooterVisibilityStyle_];
  v25 = a2 + *(v20 + 44);
  v26 = 0.0;
  if ((*(v25 + 8) & 1) == 0)
  {
    v27 = *v25;
    v28 = sub_1A454B0FC();
    v26 = -12.0;
    if (v28)
    {
      v26 = v27 + -12.0;
    }
  }

  return [a1 setHeaderFloatingThresholdOffset_];
}

Swift::Bool __swiftcall PhotosSearchResultViewController.resetToInitialStateIfPossible()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_resetToInitialStateIfPossible);
}

id sub_1A454E6E0()
{
  v1 = v0;
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v37 - v3;
  v4 = type metadata accessor for PhotosSearchResultsGridView(0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v8 = *(v7 + 32);
  v9 = sub_1A4009494(*v0, v0 + v8);
  v10 = sub_1A4009928(v6, v0 + v8);
  v11 = sub_1A4009E10(v6, v0 + v8, 0);
  sub_1A3C451FC(v1 + v8, v57);
  v56[4] = v9;
  v56[5] = v10;
  v56[6] = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v52 = v10;
  v50 = v10;
  v51 = v11;
  v13 = v9;
  result = v9;
  v49 = result;
  v15 = 0;
LABEL_2:
  if (v15 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  while (1)
  {
    if (v15 == 3)
    {
      sub_1A454AFA8(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, sub_1A3C52C70);
      swift_arrayDestroy();
      v19 = sub_1A400B130(v12);
      v21 = v20;

      v45 = v13;
      v22 = sub_1A400A650(v6, v57, v13, v52, v51, v19, v21);

      sub_1A3C2CE9C(v57);
      v43 = type metadata accessor for PhotosSearchResultsGridView;
      v23 = v54;
      sub_1A45529A0(v1, v54, type metadata accessor for PhotosSearchResultsGridView);
      type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
      v48 = v22;
      v41 = sub_1A43F36AC(v48);
      v39 = [objc_allocWithZone(PXPhotosSearchBodyLayoutProvider) initWithCollectionSectionProvider_];
      v38 = [objc_allocWithZone(PXPhotosViewOptionsModel) initWithPhotoLibrary_];
      v24 = *(v1 + v4[13]);
      sub_1A3C451FC(v1 + v8, v57);
      v25 = v4[7];
      v47 = type metadata accessor for PhotosSearchResults;
      v46 = MEMORY[0x1E69E6720];
      sub_1A455280C(v1 + v25, v53, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
      v42 = *(v1 + v4[14]);
      v44 = type metadata accessor for PhotosSearchResultsGridView.Coordinator(0);
      v26 = objc_allocWithZone(v44);
      v27 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection;
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection] = 0;
      v28 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection;
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection] = 0;
      v29 = &v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container];
      *v29 = 0u;
      *(v29 + 1) = 0u;
      *(v29 + 4) = 0;
      v30 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
      v40 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
      v31 = type metadata accessor for PhotosSearchResults(0);
      (*(*(v31 - 8) + 56))(&v26[v30], 1, 1, v31);
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap] = 0;
      v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition] = 1;
      sub_1A45529A0(v23, &v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent], v43);
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager] = v41;
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider] = v39;
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_viewOptionsModel] = v38;
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_toolbarModel] = v24;
      *&v26[v27] = v45;
      v32 = v51;
      *&v26[v28] = v52;
      *&v26[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection] = v32;
      swift_beginAccess();

      v33 = v49;
      v34 = v50;
      v35 = v32;
      v52 = v33;
      v51 = v34;
      v36 = v35;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v16 == v15)
    {
      break;
    }

    v17 = v56[v15++ + 4];
    if (v17)
    {
      v18 = v17;
      MEMORY[0x1A5907D70]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
      v12 = v55;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_1A454ED9C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v16 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection] = 0;
  v17 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection] = 0;
  v18 = &v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container];
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
  v34 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
  v20 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
  v35 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap] = 0;
  v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition] = 1;
  sub_1A45529A0(a1, &v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent], type metadata accessor for PhotosSearchResultsGridView);
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager] = a2;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider] = a3;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_viewOptionsModel] = a4;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_toolbarModel] = a5;
  *&v15[v16] = a6;
  *&v15[v17] = a7;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection] = a8;
  swift_beginAccess();
  v21 = a7;
  v33 = a8;
  v31 = a2;
  v26 = a3;
  v22 = a4;

  v23 = a6;
  sub_1A4552910(a9, v18);
  swift_endAccess();
  swift_beginAccess();
  sub_1A455287C(a10, &v15[v34]);
  swift_endAccess();
  *&v15[v35] = a11;

  v38.receiver = v15;
  v38.super_class = v36;
  v24 = objc_msgSendSuper2(&v38, sel_init);

  sub_1A3C2C9F8(a10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
  sub_1A3C2CE9C(a9);
  sub_1A454C114(a1, type metadata accessor for PhotosSearchResultsGridView);
  return v24;
}

unint64_t sub_1A454F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A4551E1C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A3C5DCA4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A4551F94();
        v14 = v16;
      }

      result = sub_1A3D74B38(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1A454F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A3C57128(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1A3E98278(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = MEMORY[0x1E69E6720];
    sub_1A3C2C9F8(a1, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A4554D3C);
    sub_1A4551904(a2, a3, v11);

    return sub_1A3C2C9F8(v11, &qword_1EB126130, v8 + 8, v9, sub_1A4554D3C);
  }

  return result;
}

uint64_t sub_1A454F5BC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v37 = sub_1A524BEE4();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BFC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = v2 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
  v14 = (v13 + *(type metadata accessor for PhotosSearchResultsGridView(0) + 60));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  aBlock = *v14;
  v42 = v16;
  LOBYTE(v43) = v17;
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v47);
  if (v47 == 1)
  {
    aBlock = v15;
    v42 = v16;
    LOBYTE(v43) = v17;
    LOBYTE(v47) = 0;
    sub_1A524B904();
  }

  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = sub_1A3C5D7A8(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v20 = sub_1A524D474();
  sub_1A524BFA4();
  v21 = v12;
  sub_1A524C014();
  v22 = *(v7 + 8);
  v31 = v6;
  v32 = v22;
  v22(v9, v6);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v18;
  v24[3] = v23;
  v25 = v35;
  v24[4] = v34;
  v24[5] = v25;
  v45 = sub_1A4553E40;
  v46 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1A3C2E0D0;
  v44 = &block_descriptor_39_1;
  v26 = _Block_copy(&aBlock);

  v27 = v33;
  sub_1A524BF14();
  aBlock = v19;
  sub_1A4553284(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A4554CD8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v29 = v36;
  v28 = v37;
  sub_1A524E224();
  MEMORY[0x1A5908790](v21, v27, v29, v26);
  _Block_release(v26);

  (*(v40 + 8))(v29, v28);
  (*(v38 + 8))(v27, v39);
  v32(v21, v31);
}

uint64_t sub_1A454FAAC()
{
  v1 = [v0 visibleUUIDs];
  v2 = sub_1A524CA34();

  return v2;
}

void sub_1A454FB88(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosSearchResultsGridView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v57 = a1;
    if ((a2 & 0x40000) != 0 && [v10 isInteractiveZooming])
    {
      v11 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent + v6[15];
      v12 = *v11;
      v13 = *(v11 + 8);
      LOBYTE(v11) = *(v11 + 16);
      v63 = v12;
      v64 = v13;
      v65 = v11;
      LOBYTE(v60) = 0;
      sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      sub_1A524B904();
    }

    if ((a2 & 4) != 0)
    {
      if ([v10 isInSelectMode])
      {
        v14 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent + v6[15];
        v15 = *v14;
        v16 = *(v14 + 8);
        LOBYTE(v14) = *(v14 + 16);
        v63 = v15;
        v64 = v16;
        v65 = v14;
        LOBYTE(v60) = 0;
        sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
        sub_1A524B904();
        sub_1A455341C();
      }

      v17 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
      v18 = [v10 isInSelectMode];
      v19 = (v17 + v6[16]);
      v20 = *v19;
      v21 = v19[1];
      LOBYTE(v19) = *(v19 + 16);
      v63 = v20;
      v64 = v21;
      v65 = v19;
      LOBYTE(v60) = v18;
      sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      sub_1A524B904();
      v58 = v8;
      if ((a2 & 0x80000000) == 0)
      {
LABEL_7:
        if ((a2 & 0x100000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v58 = v8;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    v22 = [v10 isScrolledToTop];
    v23 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
    v24 = sub_1A524A074();
    v25 = (v23 + v6[18]);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v25 + 16);
    if (v22)
    {
      v63 = *v25;
      v64 = v27;
      v65 = v28;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v30 = v29;

      MEMORY[0x1A5906C60](&v66, v30);
      v31 = v66;
      sub_1A524A0A4();
      if (sub_1A524A0A4() != v24)
      {
        v31 = sub_1A524A0A4();
      }

      v60 = v26;
      v61 = v27;
      v62 = v28;
      v59 = v31;
      sub_1A524B904();
    }

    else
    {
      v56 = a3;
      v63 = v26;
      v64 = v27;
      v65 = v28;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v33 = v32;

      MEMORY[0x1A5906C60](&v66, v33);
      v34 = v66;
      sub_1A524A0A4();
      v35 = sub_1A524A0A4();
      if (v35 != sub_1A524A0A4())
      {
        sub_1A524A0A4();
        sub_1A524A0A4();
        v34 = sub_1A524A0A4();
      }

      v60 = v26;
      v61 = v27;
      v62 = v28;
      v59 = v34;
      sub_1A524B904();

      a3 = v56;
    }

    v8 = v58;
    if ((a2 & 0x100000000000000) == 0)
    {
LABEL_8:
      if ((a2 & 0x2000000) == 0)
      {
LABEL_33:

        return;
      }

LABEL_29:
      sub_1A45529A0(a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent, v8, type metadata accessor for PhotosSearchResultsGridView);
      v50 = [v10 contentFilterState];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 isFiltering];
      }

      else
      {
        v52 = 0;
      }

      v53 = &v8[v6[20]];
      v54 = *v53;
      v55 = *(v53 + 1);
      LOBYTE(v63) = v54;
      v64 = v55;
      LOBYTE(v60) = v52;
      sub_1A4554D3C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6B4();
      sub_1A454C114(v8, type metadata accessor for PhotosSearchResultsGridView);
      sub_1A455341C();
      goto LABEL_33;
    }

LABEL_21:
    v36 = [v10 isScrolledToBottom];
    v37 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
    v38 = sub_1A524A084();
    v39 = (v37 + v6[18]);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v39 + 16);
    if (v36)
    {
      v63 = *v39;
      v64 = v41;
      v65 = v42;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v44 = v43;

      MEMORY[0x1A5906C60](&v66, v44);
      v45 = v66;
      sub_1A524A0A4();
      if (sub_1A524A0A4() != v38)
      {
        v45 = sub_1A524A0A4();
      }

      v60 = v40;
      v61 = v41;
      v62 = v42;
      v59 = v45;
      sub_1A524B904();
    }

    else
    {
      v56 = a3;
      v63 = v40;
      v64 = v41;
      v65 = v42;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v47 = v46;

      MEMORY[0x1A5906C60](&v66, v47);
      v48 = v66;
      sub_1A524A0A4();
      v49 = sub_1A524A0A4();
      if (v49 != sub_1A524A0A4())
      {
        sub_1A524A0A4();
        sub_1A524A0A4();
        v48 = sub_1A524A0A4();
      }

      v60 = v40;
      v61 = v41;
      v62 = v42;
      v59 = v48;
      sub_1A524B904();

      a3 = v56;
    }

    v8 = v58;
    if ((a2 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }
}

void sub_1A45504C8(void *a1)
{
  v2 = [a1 viewModel];
  [v2 registerChangeObserver:v1 context:0];
}

uint64_t sub_1A455052C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
    swift_beginAccess();
    if (!(*(v5 + 48))(&v12[v13], 1, v4))
    {
      sub_1A45529A0(&v12[v13], v10, type metadata accessor for PhotosSearchResults);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v14 = [swift_getObjCClassFromMetadata() sharedInstance];
  v15 = [v14 showSearchDebugBadges];

  if (v15)
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
      swift_beginAccess();
      if (!(*(v5 + 48))(&v17[v18], 1, v4))
      {
        sub_1A45529A0(&v17[v18], v7, type metadata accessor for PhotosSearchResults);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
    swift_beginAccess();
    if (!(*(v5 + 48))(&v20[v21], 1, v4))
    {
      sub_1A45529A0(&v20[v21], v10, type metadata accessor for PhotosSearchResults);

      v22 = *&v10[*(v4 + 40)];
      v23 = v22;
      sub_1A454C114(v10, type metadata accessor for PhotosSearchResults);
      goto LABEL_15;
    }
  }

  v22 = 0;
LABEL_15:
  v24 = type metadata accessor for PhotosSearchUtilities();
  v25 = (*(v24 + 272))(a1, a2, v22);

  return v25;
}

uint64_t sub_1A4550A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  v38 = type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A3EA751C(a4, a9 + v38[7]);
  v39 = a9 + v38[8];
  v40 = *(a5 + 16);
  *v39 = *a5;
  *(v39 + 1) = v40;
  *(v39 + 4) = *(a5 + 32);
  v41 = (a9 + v38[9]);
  *v41 = a6;
  v41[1] = a7;
  v42 = (a9 + v38[10]);
  *v42 = a10;
  v42[1] = a11;
  v42[2] = a12;
  v42[3] = a13;
  v43 = a9 + v38[11];
  *v43 = a8;
  v43[8] = a14 & 1;
  *(a9 + v38[12]) = a15;
  *(a9 + v38[13]) = a16;
  *(a9 + v38[14]) = a17;
  v44 = a9 + v38[15];
  *v44 = a18;
  *(v44 + 1) = a19;
  v44[16] = a20;
  v45 = a9 + v38[16];
  *v45 = a21;
  *(v45 + 1) = a22;
  v45[16] = a23;
  v46 = a9 + v38[17];
  *v46 = a24;
  *(v46 + 1) = a25;
  v46[16] = a26;
  v47 = a9 + v38[18];
  *v47 = a27;
  *(v47 + 1) = a28;
  v47[16] = a29;
  v48 = (a9 + v38[19]);
  *v48 = a30;
  v48[1] = a31;
  v49 = a9 + v38[20];
  sub_1A524B694();
  *v49 = v57;
  *(v49 + 1) = v58;
  v50 = v38[21];
  *(a9 + v50) = swift_getKeyPath();
  sub_1A4554CD8(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v51 = v38[22];
  *(a9 + v51) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v52 = a9 + v38[23];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  type metadata accessor for PhotosBatchedSearchStateModel();
  return sub_1A5247C74();
}

id sub_1A4550D68()
{
  v0 = sub_1A4552128();

  return v0;
}

id sub_1A4550D98@<X0>(void *a1@<X8>)
{
  result = sub_1A454E6E0();
  *a1 = result;
  return result;
}

uint64_t sub_1A4550DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4550E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4550EE8()
{
  sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView);
  sub_1A5249ED4();
  __break(1u);
}

uint64_t PhotosSearchResultViewController.debugAssetRetrievalMap.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap);
  if (v1)
  {
    sub_1A3D75C90(0, &qword_1EB120460);
    v2 = sub_1A524E764();
    v3 = v2;
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;
    if (!v7)
    {
      v11 = 0;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v8)
        {
          return v3;
        }

        v12 = *(v1 + 64 + 8 * v4);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v10 = __clz(__rbit64(v7));
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v1 + 56) + 8 * v13);
    if (v17 > 1)
    {
      if (v17 == 3)
      {
        v18 = 0xE300000000000000;
        v19 = 4533069;
        goto LABEL_20;
      }

      if (v17 == 2)
      {
        v18 = 0xE100000000000000;
        v19 = 69;
LABEL_20:
        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        v20 = 16 * v13;
        v21 = (v3[6] + v20);
        *v21 = v16;
        v21[1] = v15;
        v22 = (v3[7] + v20);
        *v22 = v19;
        v22[1] = v18;
        v23 = v3[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (!v24)
        {
          v3[2] = v25;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

LABEL_25:
        __break(1u);
      }
    }

    else
    {
      if (!v17)
      {
        v18 = 0xE100000000000000;
        v19 = 85;
        goto LABEL_20;
      }

      if (v17 == 1)
      {
        v18 = 0xE100000000000000;
        v19 = 77;
        goto LABEL_20;
      }
    }

    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  return 0;
}

Swift::Void __swiftcall PhotosSearchResultViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = &v0[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  sub_1A4554CD8(0, &unk_1EB1202C0, sub_1A3C8B2D8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  v5 = sub_1A5247364();
  v6 = MEMORY[0x1E69DC0F8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1A524D3A4();
  swift_unknownObjectRelease();
}

uint64_t PhotosSearchResultViewController.present(_:animated:completion:)(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1A3C2E0D0;
    v14[3] = &block_descriptor_42_3;
    a3 = _Block_copy(v14);
  }

  v15.receiver = v4;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
  v10 = &v4[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 1);
    v13 = swift_getObjectType();
    (*(v12 + 24))(v4, a1, v13, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A45514DC(void *a1)
{
  v6 = [a1 scrollView];
  swift_unknownObjectRelease();
  if (v6)
  {
    [v6 contentOffset];
    if (v2 - *(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) >= 500.0)
    {
      *(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) = v2;
      v3 = v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 32))(v1, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }
}

id PhotosSearchResultViewController.init(configuration:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_, a1);

  return v4;
}

id PhotosSearchResultViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PhotosSearchResultViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

double sub_1A4551904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A3E98434();
      v10 = v12;
    }

    sub_1A3C57128((*(v10 + 56) + 32 * v8), a3);
    sub_1A4551C6C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1A45519A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C2EF1C(0, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6EC8]);
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A4551C6C(unint64_t result, uint64_t a2)
{
  if ((*(a2 + 64 + ((((result + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((result + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  v2 = *(a2 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v4;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A4551E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A45519A8(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A4551F94();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void *sub_1A4551F94()
{
  v1 = v0;
  sub_1A3C2EF1C(0, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_14;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_15;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_14:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v1 = v4;
  }

  return result;
}

void *sub_1A4552128()
{
  sub_1A4552778();
  sub_1A5249FD4();
  v1 = PXPhotosViewConfigurationForSearchResultsWithDataSourceManager(*&v24[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager]);
  v2 = [v1 photosAppConfiguration];
  [v2 setViewOptionsModel_];

  v3 = [v1 photosAppConfiguration];
  [v3 setHidesViewOptionsToolbar_];

  [v1 setFooterVisibilityStyle_];
  [v1 setNavBarStyle_];
  [v1 setLightModeBackgroundStyle_];
  [v1 setDarkModeBackgroundStyle_];
  [v1 setGridPresentationType_];
  [v1 setGridStyle_];
  [v1 setPrefersActionsInToolbar_];
  [v1 setDelegate_];
  v4 = type metadata accessor for PhotosSearchResultsGridView(0);
  v5 = v0 + *(v4 + 36);
  if (*v5)
  {
    v6 = *(v5 + 8);
    v29 = *v5;
    v30 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1A3D8EF18;
    v28 = &block_descriptor_87_4;
    v7 = _Block_copy(&aBlock);
  }

  else
  {
    v7 = 0;
  }

  [v1 setCustomAssetSelectionHandler_];
  _Block_release(v7);
  [v1 setOneUpAssetsViewMode_];
  [v1 setContentStartingPosition_];
  [v1 setSectionBodyStyle_];
  [v1 setSectionBodyLayoutProvider_];
  [v1 setSectionHeaderStyle_];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_1A4554D8C;
  v30 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1A44D38E0;
  v28 = &block_descriptor_84_3;
  v9 = _Block_copy(&aBlock);

  [v1 setBadgesModifier_];
  _Block_release(v9);
  [v1 setEmptyPlaceholderStatusViewModel_];
  [v1 setWantsFooterVisibleWhenEmpty_];
  [v1 setHidesAssetCountInFooter_];

  v10 = [objc_allocWithZone(type metadata accessor for PhotosSearchResultViewController()) initWithConfiguration_];
  sub_1A5249FD4();
  v11 = aBlock;
  *&v10[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate + 8] = &off_1F1715560;
  swift_unknownObjectWeakAssign();

  v12 = v10;
  if ([v1 toolbarStyle])
  {
    sub_1A5249FD4();
    v13 = aBlock;
  }

  else
  {
    v13 = 0;
  }

  [v12 setGridPresentationBarsUpdateDelegate_];

  swift_unknownObjectRelease();
  sub_1A5249FD4();
  v14 = aBlock;
  v15 = *&aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider];

  v16 = v12;
  [v15 setHostViewController_];

  v17 = *(v0 + 8);
  sub_1A4554D3C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52F9790;
  *(v18 + 32) = v16;
  sub_1A3C52C70(0, &qword_1EB126B10);
  v19 = sub_1A524CA14();

  [v17 setViewControllers_];

  sub_1A5249FD4();
  v20 = aBlock;
  [v17 setDelegate_];

  [v17 setToolbarHidden_];
  [v17 setNavigationBarHidden_];
  v21 = [v17 traitCollection];
  v22 = [v21 userInterfaceStyle];

  [v17 _setBuiltinTransitionStyle_];
  return v17;
}

void sub_1A45526E4()
{
  if (!qword_1EB126010)
  {
    sub_1A4554CD8(255, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126010);
    }
  }
}

void sub_1A4552778()
{
  if (!qword_1EB13D280)
  {
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView);
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D280);
    }
  }
}

uint64_t sub_1A455280C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A4554CD8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A455287C(uint64_t a1, uint64_t a2)
{
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4552910(uint64_t a1, uint64_t a2)
{
  sub_1A454AFA8(0, &qword_1EB129AC0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer, sub_1A3C34400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45529A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4552A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A4552A70(void *a1)
{
  v3 = type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A3C451FC(v1 + *(v3 + 32) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(v5 + 24))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1A3C2CE9C(v8);
    v6 = 0;
  }

  return [a1 setHidesSortOrderMenu_];
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for PhotosSearchResultsGridView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v2 + v1[7];
  v4 = type metadata accessor for PhotosSearchResults(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_1A52411C4();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  v6 = v2 + v1[8];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  if (*(v2 + v1[9]))
  {
  }

  if (*(v2 + v1[19]))
  {
  }

  v7 = v1[21];
  sub_1A4554CD8(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5249A94();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[22];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249A94();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  v13 = v2 + v1[24];
  sub_1A4554CD8(0, &qword_1EB13D290, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E6981E90]);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A4554CD8(0, &qword_1EB13D298, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

void sub_1A4553058(void *a1)
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v2 = sub_1A4A2C468();

  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 setSearch:v3 overriddenAllAssetsCount:?];
}

id sub_1A455317C(void *a1)
{
  v3 = *(type metadata accessor for PhotosSearchResultsGridView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A454E204(a1, v4);
}

uint64_t sub_1A45531EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
  v4 = swift_dynamicCastClassUnconditional();
  return (*((*MEMORY[0x1E69E7D40] & *v4) + 0x58))(v1, v2, v3);
}

uint64_t sub_1A4553284(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A45532EC(void *a1)
{
  type metadata accessor for PhotosSearchResultViewController();
  if (swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  result = [a1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

LABEL_4:
    type metadata accessor for PhotosSearchResultsGridView(0);
    sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    sub_1A524B904();
    return sub_1A455341C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A455341C()
{
  v1 = type metadata accessor for PhotosSearchResults(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container;
  swift_beginAccess();
  sub_1A3C451FC(v0 + v5, v11);
  v6 = v12;
  result = sub_1A3C2CE9C(v11);
  if (!v6)
  {
    v8 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
    swift_beginAccess();
    if (!(*(v2 + 48))(v0 + v8, 1, v1))
    {
      sub_1A45529A0(v0 + v8, v4, type metadata accessor for PhotosSearchResults);
      sub_1A3DA6000(*(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent));
      sub_1A454C114(v4, type metadata accessor for PhotosSearchResults);
    }

    v9 = v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
    result = type metadata accessor for PhotosSearchResultsGridView(0);
    v10 = (v9 + *(result + 76));
    if (*v10)
    {
      return (*v10)();
    }
  }

  return result;
}

void sub_1A45535C0()
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v1 = sub_1A4A2C024();

  if (v1)
  {
    sub_1A5247C84();
    sub_1A4A2DDEC();

    v2 = *(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager);
    sub_1A5247C84();
    sub_1A4A2DA28(1);
    v4 = v3;

    sub_1A3C4467C(v4);

    v5 = sub_1A524CF34();

    [v2 setAllowedUUIDs_];
  }
}

uint64_t sub_1A4553714(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent];
  v6 = &v5[*(type metadata accessor for PhotosSearchResultsGridView(0) + 60)];
  v7 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v41 = v7;
  LOBYTE(v42) = v6;
  LOBYTE(v39) = 0;
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1A524B904();
  sub_1A4554CD8(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v9;
  v43 = ObjectType;
  v40 = v2;
  v10 = v2;
  String.init(forType:)(&v40);
  v11 = sub_1A524C634();

  *(inited + 48) = v11;
  v12 = sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A454C114(inited + 32, sub_1A3F24E98);
  v13 = [a1 asset];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 bundleIdentifier];

    if (v17)
    {
      sub_1A524C674();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_1A524C674();
    v22 = v21;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A4551E1C(v15, v20, v22, isUniquelyReferenced_nonNull_native);

    v40 = v12;
    v24 = sub_1A524C674();
    v26 = v25;
    if (v19)
    {
    }

    else
    {

      v17 = 0;
    }

    sub_1A454F230(v17, v24, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v27 = objc_opt_self();
  v28 = *MEMORY[0x1E6991CB0];
  sub_1A3C52C70(0, &qword_1EB12B160);
  v29 = v28;
  v30 = sub_1A524C3D4();
  [v27 sendEvent:v29 withPayload:v30];

  if ([a1 sectionObject])
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = [v31 transientIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1A524C674();
        v36 = v35;

        if (v34 != sub_1A524C674() || v36 != v37)
        {
          sub_1A524EAB4();
        }
      }
    }

    swift_unknownObjectRelease();
  }

  if (*&v10[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A455341C();
}

uint64_t sub_1A4553C9C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_toolbarModel);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  v4 = *(*v2 + 120);

  v6 = v4(v5);
  v7 = [v3 toolbarItems];
  if (v7)
  {
    v8 = v7;
    sub_1A3C52C70(0, &qword_1EB126B80);
    v9 = sub_1A524CA34();

    if (v6)
    {
      if (v9)
      {
        v10 = sub_1A42AEED0(v6, v9);

        if (v10)
        {
          goto LABEL_16;
        }

LABEL_12:
        v11 = [v3 toolbarItems];
        if (v11)
        {
          v12 = v11;
          sub_1A3C52C70(0, &qword_1EB126B80);
          v13 = sub_1A524CA34();
        }

        else
        {
          v13 = 0;
        }

        (*(*v2 + 128))(v13);
        goto LABEL_16;
      }

LABEL_11:

      goto LABEL_12;
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v6)
  {
    goto LABEL_11;
  }

LABEL_16:
}

uint64_t sub_1A4553E40()
{
  v0 = [objc_opt_self() px_mainScreen];
  v1 = [v0 snapshotViewAfterScreenUpdates_];

  [v1 frame];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A4554B80;
  *(v8 + 24) = v7;
  v14 = sub_1A3D78DD0;
  v15 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  v13 = &block_descriptor_71_0;
  v9 = _Block_copy(aBlock);
  v1;

  v10 = [v6 imageWithActions_];

  _Block_release(v9);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    sub_1A4A38E34();
    v13 = sub_1A3C52C70(0, &qword_1EB126630);
    aBlock[0] = v10;
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1A4554378()
{
  v1 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition;
  if (*(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition) == 1)
  {
    v2 = [*(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider) hostViewController];
    if (v2)
    {
      v3 = v2;
      v4 = type metadata accessor for PhotosSearchResultViewController();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        *&v5[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
        v6.receiver = v5;
        v6.super_class = v4;
        objc_msgSendSuper2(&v6, sel_resetToInitialStateIfPossible);
      }
    }

    *(v0 + v1) = 0;
  }
}

void sub_1A4554490()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &unk_1EB126900);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhotosSearchCollectionSectionProvider();
      if (v2 <= 0x3F)
      {
        sub_1A4554CD8(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A454AFA8(319, &qword_1EB129AC0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer, sub_1A3C34400);
          if (v4 <= 0x3F)
          {
            sub_1A4554CD8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for UIEdgeInsets(319);
              if (v6 <= 0x3F)
              {
                sub_1A4554D3C(319, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1A3C52C70(319, &qword_1EB13D2C8);
                  if (v8 <= 0x3F)
                  {
                    sub_1A4554CD8(319, &qword_1EB12A2F0, type metadata accessor for LemonadeToolbarModel, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A4554898();
                      if (v10 <= 0x3F)
                      {
                        sub_1A4554D3C(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A4554D3C(319, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
                          if (v12 <= 0x3F)
                          {
                            sub_1A4554D3C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                            if (v13 <= 0x3F)
                            {
                              sub_1A4554CD8(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
                              if (v14 <= 0x3F)
                              {
                                sub_1A4554D3C(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1A4554CD8(319, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
                                  if (v16 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A4554898()
{
  if (!qword_1EB120DB0)
  {
    sub_1A3C2EF1C(255, &unk_1EB120DC0, &qword_1EB126610, 0x1E696AD98, MEMORY[0x1E69E5E28]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120DB0);
    }
  }
}

void sub_1A4554924()
{
  type metadata accessor for PhotosSearchResultsGridView(319);
  if (v0 <= 0x3F)
  {
    sub_1A4554CD8(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4554A54()
{
  v1 = *(v0 + 16);
  v2 = sub_1A524C3D4();
  (*(v1 + 16))(v1, v2);
}

void sub_1A4554AC8(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 _setBuiltinTransitionStyle_];
  }
}

id sub_1A4554B80()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_1A4554BD0(void *a1)
{
  type metadata accessor for PhotosSearchResultViewController();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = a1;
    sub_1A4A38E4C();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A4554CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4554D3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1A4554E5C(void *a1, unsigned __int16 a2)
{
  v4 = sub_1A45550C4(a1, a2, 0);
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setSharingFilter_];
  [v5 setIncludeGuestAssets_];
  result = [objc_opt_self() fetchKeyAssetForEachSuggestion:v4 options:v5];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PhotosIntelligenceFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosIntelligenceFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosIntelligenceFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosIntelligenceFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosIntelligenceFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A45550C4(void *a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_1A5244EE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v19 - v12;
  v14 = [a1 librarySpecificFetchOptions];
  [v14 setFetchLimit_];
  [v14 setSharingFilter_];
  (*(v7 + 104))(v13, *MEMORY[0x1E69C12A8], v6);
  (*(v7 + 16))(v9, v13, v6);
  sub_1A5244EF4();
  swift_allocObject();
  v15 = v14;
  v16 = a1;
  sub_1A5244ED4();
  sub_1A5244CA4();
  v17 = sub_1A5244C94();

  (*(v7 + 8))(v13, v6);
  return v17;
}

uint64_t sub_1A45552C8()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 304))(KeyPath);

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_1A4555384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A45552C8();
  *a1 = result;
  return result;
}

uint64_t sub_1A45553D8(char a1)
{
  v3 = *(*v1 + 104);
  sub_1A4557A54();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v6);
  }

  return result;
}

void sub_1A45555AC()
{
  v1 = *v0;
  v2 = sub_1A52450C4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  *(v0 + *(v1 + 104)) = 0;
  (*(v5 + 104))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C13D8], v3);
  sub_1A52450E4();
  type metadata accessor for SpatialPresentation.AnimatedView();
  *(v0 + *(*v0 + 120)) = sub_1A524C384();
  sub_1A5246EF4();
}

uint64_t sub_1A45557A4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v9 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 312))(KeyPath, sub_1A4557C9C, &v6, MEMORY[0x1E69E7CA8] + 8);
}

id sub_1A45558B8()
{
  v1 = v0;
  v2 = *v0;
  v40 = sub_1A5246A24();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5246A34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(sub_1A5246A14()) initWithFrame_];
  (*(v7 + 104))(v9, *MEMORY[0x1E69C1B40], v6);
  sub_1A52469F4();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  v13[2] = v14;
  v15 = *(v2 + 88);
  v13[3] = v15;
  v13[4] = v11;
  v13[5] = v12;
  sub_1A3C52C70(0, &qword_1EB12B180);

  sub_1A524D474();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C1B28], v40);
  sub_1A5246A74();
  swift_allocObject();
  v16 = sub_1A5246A64();

  v40 = v16;
  sub_1A5246A54();
  sub_1A5246AB4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v10;

  v19 = objc_allocWithZone(ObjCClassFromMetadata);
  v20 = v18;
  v21 = [v19 init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v20;
  [v22 addSubview_];
  v39 = objc_opt_self();
  sub_1A3CB8F68();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A531C940;
  v24 = [v21 topAnchor];
  v25 = [v22 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v23 + 32) = v26;
  v27 = [v21 bottomAnchor];
  v28 = [v22 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v23 + 40) = v29;
  v30 = [v21 leadingAnchor];
  v31 = [v22 leadingAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v23 + 48) = v32;
  v33 = [v21 trailingAnchor];

  v34 = [v22 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v23 + 56) = v35;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v36 = sub_1A524CA14();

  [v39 activateConstraints_];

  v46 = v22;
  v47 = v21;
  v48 = v40;
  v43 = v14;
  v44 = v15;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 304))(KeyPath);

  v45 = v1;
  v41 = v14;
  v42 = v15;
  swift_getKeyPath();
  type metadata accessor for SpatialPresentation();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  type metadata accessor for SpatialPresentation.AnimatedView();
  sub_1A524CB74();
  sub_1A524CB14();
  swift_endAccess();
  sub_1A52415B4();
  sub_1A4556C9C();

  return v22;
}
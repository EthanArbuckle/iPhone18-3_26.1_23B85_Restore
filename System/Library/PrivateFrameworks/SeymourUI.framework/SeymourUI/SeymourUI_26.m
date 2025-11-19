unint64_t CatalogMediaType.addToQueueTitleLocalizationKey(activityType:)(uint64_t a1, char a2)
{
  v2 = 0xD000000000000017;
  v3 = 0xD000000000000018;
  if (a1 != 52)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (a1 != 37)
  {
    v2 = v3;
  }

  if (a2 == 3)
  {
    return v2;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

unint64_t CatalogMediaType.startWorkoutActionTitleLocalizationKey(activityType:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000020;
  v3 = 0xD000000000000019;
  v4 = 0xD00000000000001DLL;
  if (a1 == 52)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (a1 != 37)
  {
    v3 = v4;
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000020;
  }

  if (a2)
  {
    v2 = 0xD000000000000021;
  }

  if (a2 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id CatalogMediaType.startWorkoutActionImage(activityType:)()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() smm:v0 systemImageNamed:?];

  return v1;
}

unint64_t CatalogMediaType.resumeWorkoutActionTitleLocalizationKey(activityType:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000021;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD00000000000001ELL;
  if (a1 == 52)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (a1 != 37)
  {
    v3 = v4;
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000021;
  }

  if (a2)
  {
    v2 = 0xD000000000000022;
  }

  if (a2 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_20B80158C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  v0 = sub_20C13E234();
  MEMORY[0x20F2F4230](v0);

  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B80165C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD00000000000001FLL, 0x800000020C19B280);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B80172C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000025, 0x800000020C19B250);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B8017FC()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000025, 0x800000020C19B220);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B8018CC()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000027, 0x800000020C19B1F0);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B80199C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000026, 0x800000020C19B1C0);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801A6C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000024, 0x800000020C19B190);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801B3C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000027, 0x800000020C19B160);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801C0C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000015, 0x800000020C19B140);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801CDC()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C19B120);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801DAC()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000020, 0x800000020C19B080);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801E7C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD000000000000021, 0x800000020C19B0F0);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B801F4C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD00000000000001CLL, 0x800000020C19B0D0);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B80201C()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6C6C6F72746E6F43, 0xEB00000000207265);
  MEMORY[0x20F2F4230](0xD00000000000001FLL, 0x800000020C19B0B0);
  MEMORY[0x20F2F4230](0xD000000000000047, 0x800000020C19B030);
  sub_20C13DE24();
  __break(1u);
}

void sub_20B8020EC(uint64_t a1)
{
  v2 = [objc_opt_self() externalDisplayLayoutMonitorWithIdentity_];
  v3 = v2;
  if (v2)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_20B523268;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B51EB6C;
    aBlock[3] = &block_descriptor_19;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v6 setTransitionHandler_];
    _Block_release(v5);
  }

  v7 = *(v1 + 16);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v7 + 6);
  sub_20B802E58();
  os_unfair_lock_unlock(v7 + 6);
}

uint64_t sub_20B802260(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8020EC(a1);
  }

  return result;
}

uint64_t sub_20B8022C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v1 + 24));
    sub_20B802E3C((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_20B802374(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_20C0C0904(a3, a2);
}

uint64_t sub_20B8023CC(uint64_t *a1, void *a2)
{
  swift_unknownObjectRetain();
  v4 = sub_20B65B49C(a2);
  if ((v5 & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  v10 = *a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20BA10914();
    v8 = v10;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_20BE393B8(v6, v8);
  result = swift_unknownObjectRelease();
  *a1 = v8;
  return result;
}

uint64_t sub_20B802484(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_20B6A07A0(v8);
      v8 = result;
    }

    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = v8;
        v8 = (v87 - 1);
        v89 = *&v88[16 * v87];
        v90 = *&v88[16 * v87 + 24];
        sub_20B802B04((*a3 + 8 * v89), (*a3 + 8 * *&v88[16 * v87 + 16]), (*a3 + 8 * v90), v7);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_20B6A07A0(v88);
        }

        if (v87 - 2 >= *(v88 + 2))
        {
          goto LABEL_116;
        }

        v91 = &v88[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_20B6A0714(v87 - 1);
        v8 = v88;
        v87 = *(v88 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v97 = v5;
      v10 = *(*a3 + 8 * v7);
      v93 = 8 * v9;
      v11 = (*a3 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v102 = [v10 level];
      v100 = [v13 level];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v95 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v16 = *(v12 - 1);
        v15 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = v8;
        v18 = [v15 level];
        v7 = [v16 level];
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v19 = v7 < v18;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v12;
        if ((((v100 < v102) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v95;
      v5 = v97;
      v21 = v93;
      if (v100 < v102)
      {
        if (v6 < v95)
        {
          goto LABEL_119;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20BC05740(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_20BC05740((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_106;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_109;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_113;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_73:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_80:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_20B802B04((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v85), v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_20B6A07A0(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_20B6A0714(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_104;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_105;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_107;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_110;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_114;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v94 = v8;
  v96 = v9;
  v98 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v101 = v28;
LABEL_32:
  v103 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = [v32 level];
    v37 = [v35 level];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v37 >= v36)
    {
LABEL_31:
      v7 = v103 + 1;
      v30 += 8;
      --v31;
      if ((v103 + 1) != v101)
      {
        goto LABEL_32;
      }

      v7 = v101;
      v9 = v96;
      v5 = v98;
      v8 = v94;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v38;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

uint64_t sub_20B802B04(char *__dst, void **a2, void **a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v37 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v35 = v5;
LABEL_27:
        v36 = a2;
        v24 = a2 - 1;
        --v4;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 1;
          v28 = *--v26;
          v29 = v24;
          v30 = *v24;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v31 = [v28 level];
          v32 = [v30 level];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v32 < v31)
          {
            v33 = v29;
            if (v27 != v36)
            {
              *v4 = *v29;
            }

            v13 = v37;
            v14 = v25;
            if (v25 <= v37 || (a2 = v33, v33 <= v35))
            {
              a2 = v33;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          --v4;
          v25 = v26;
          v13 = v37;
          v24 = v29;
        }

        while (v26 > v37);
        v14 = v26;
        a2 = v36;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15;
        v17 = *v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 level];
        v19 = [v17 level];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v19 >= v18)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

unint64_t sub_20B802DE8()
{
  result = qword_27C7660C0;
  if (!qword_27C7660C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7660C0);
  }

  return result;
}

uint64_t sub_20B802E58()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_20C0C0904(v1, v2);
}

uint64_t sub_20B802EAC()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 30.0;
  if (Width / v13 <= 375.0)
  {
    v16 = 16.0;
  }

  if (v14 == result)
  {
    v16 = 0.0;
  }

  qword_27C7660E0 = *&v16;
  return result;
}

char *sub_20B802FBC(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v46 = sub_20C13D874();
  v12 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailDimensions] = xmmword_20C15BCD0;
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setContentMode_];
  [v14 setClipsToBounds_];
  if (_UISolariumEnabled())
  {
    v15 = 10.0;
  }

  else
  {
    v15 = 5.0;
  }

  v16 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailView;
  v17 = [v14 layer];
  [v17 setCornerRadius_];

  [v14 setClipsToBounds_];
  *&v4[v16] = v14;
  v18 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels;
  v19 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v19 &selRef_count + 2];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v21];

  *&v4[v18] = v19;
  v22 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuide;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v23 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideSecondaryConstraints] = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labelsBottomConstraint;
  *&v4[v24] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v25 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_bookmarkButtonBottomConstraint;
  *&v4[v25] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailHeightConstraint] = 0;
  v26 = &v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = sub_20C13C914();
  [v28 setAccessibilityIdentifier_];

  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_bookmarkButton] = v28;
  v30 = objc_allocWithZone(MEMORY[0x277D75220]);
  v31 = v28;
  v32 = [v30 &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = sub_20C13C914();
  [v32 setAccessibilityIdentifier_];

  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_shareButton] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C151490;
  *(v34 + 32) = v31;
  *(v34 + 40) = v32;
  v35 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v36 = v32;
  v37 = sub_20C13CC54();

  v38 = [v35 initWithArrangedSubviews_];

  [v38 setAxis_];
  [v38 setSpacing_];
  [v38 setAlignment_];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_actionButtonsStackView] = v38;
  v39 = type metadata accessor for SummaryContentSummaryView();
  v47.receiver = v4;
  v47.super_class = v39;
  v40 = objc_msgSendSuper2(&v47, &selRef__hysteresis, a1, a2, a3, a4);
  [v31 addTarget:v40 action:sel_bookmarkButtonTapped forControlEvents:64];
  v41 = v36;
  [v41 addTarget:v40 action:sel_shareButtonTapped forControlEvents:64];
  v42 = v45;
  sub_20B804C50(0xD000000000000013, 0x800000020C19B630);
  v43 = v46;
  (*(v12 + 16))(v11, v42, v46);
  (*(v12 + 56))(v11, 0, 1, v43);
  sub_20C13D894();
  [v41 setEnabled_];

  [v40 addSubview_];
  [v40 addSubview_];
  [v40 addSubview_];
  [v40 addLayoutGuide_];
  sub_20B8036C4();

  (*(v12 + 8))(v42, v43);
  return v40;
}

void sub_20B8036C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailView];
  v3 = [v2 widthAnchor];
  v4 = [v3 constraintEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v5) = v87;
  [v4 setPriority_];
  v6 = [v2 heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailWidthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailWidthConstraint] = v4;
  v85 = v4;

  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailHeightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailHeightConstraint] = v7;
  v83 = v7;

  v10 = [v1 traitCollection];
  sub_20B804AA0(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C151850;
  v12 = [v2 leadingAnchor];
  v13 = [v1 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [v2 trailingAnchor];
  v16 = [v1 trailingAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [v2 topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v11 + 48) = v20;
  v21 = [v2 bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v11 + 56) = v23;
  *(v11 + 64) = v85;
  v82 = v11;
  *(v11 + 72) = v83;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14FE90;
  v25 = *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuide];
  v86 = v85;
  v84 = v83;
  v26 = [v25 leadingAnchor];
  v27 = [v2 trailingAnchor];
  if (qword_27C760758 != -1)
  {
    swift_once();
  }

  v28 = [v26 constraintEqualToAnchor:v27 constant:{*&qword_27C7660E0, 4, 9}];

  *(v24 + 32) = v28;
  v29 = [v25 topAnchor];
  v30 = [v1 topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v24 + 40) = v31;
  v32 = [v25 trailingAnchor];
  v33 = [v1 trailingAnchor];
  v34 = [v32 &selRef:v33 alertControllerReleasedDictationButton:? + 5];

  *(v24 + 48) = v34;
  v35 = [v25 bottomAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor_];

  *(v24 + 56) = v37;
  v81 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideConstraints;
  *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideConstraints] = v24;

  v38 = swift_allocObject();
  *(v38 + 16) = v80;
  v39 = [v25 topAnchor];
  v40 = [v2 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:8.0];

  *(v38 + 32) = v41;
  v42 = [v25 leadingAnchor];
  v43 = [v1 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v38 + 40) = v44;
  v45 = [v25 trailingAnchor];
  v46 = [v1 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v38 + 48) = v47;
  v48 = [v25 bottomAnchor];
  v49 = [v1 bottomAnchor];
  v50 = [v48 constraintLessThanOrEqualToAnchor_];

  *(v38 + 56) = v50;
  *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideSecondaryConstraints] = v38;

  v51 = *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels];
  v52 = [v51 bottomAnchor];
  v53 = [v25 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  v55 = *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labelsBottomConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labelsBottomConstraint] = v54;

  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C150040;
  v57 = [v51 topAnchor];
  v58 = [v25 topAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v56 + 32) = v59;
  v60 = [v51 leadingAnchor];
  v61 = [v25 leadingAnchor];
  v62 = [v60 &selRef:v61 alertControllerReleasedDictationButton:? + 5];

  *(v56 + 40) = v62;
  v63 = [v51 trailingAnchor];
  v64 = [v25 trailingAnchor];
  v65 = [v63 constraintLessThanOrEqualToAnchor_];

  *(v56 + 48) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_20C150040;
  v67 = *&v1[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_actionButtonsStackView];
  v68 = [v67 topAnchor];
  v69 = [v51 bottomAnchor];
  v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:9.0];

  *(v66 + 32) = v70;
  v71 = [v67 leadingAnchor];
  v72 = [v51 leadingAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v66 + 40) = v73;
  v74 = [v67 bottomAnchor];
  v75 = [v25 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v66 + 48) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 32) = v82;
  *(inited + 40) = *&v1[v81];
  *(inited + 48) = v56;
  *(inited + 56) = v66;
  v78 = objc_opt_self();

  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v79 = sub_20C13CC54();

  [v78 activateConstraints_];
}

id sub_20B8041AC()
{
  [*&v0[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels] sizeThatFits_];
  [v0 bounds];
  CGRectGetWidth(v6);
  v1 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v2 = sub_20C13CC54();

  [v1 deactivateConstraints_];

  v3 = sub_20C13CC54();

  [v1 activateConstraints_];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SummaryContentSummaryView();
  return objc_msgSendSuper2(&v5, sel_updateConstraints);
}

double sub_20B8043A8()
{
  [*&v0[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels] sizeThatFits_];
  v2 = v1;
  [v0 bounds];
  v3 = CGRectGetWidth(v5) + -175.0 + -16.0 + -8.0;
  [*&v0[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuide] layoutFrame];
  CGRectGetHeight(v6);
  if (v3 >= v2)
  {
    return v2 + 191.0;
  }

  return v2;
}

void sub_20B80447C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailView);
  v4 = [v3 layer];
  if (a1)
  {
    v5 = 0;
    v6 = 0.0;
  }

  else
  {
    v7 = [objc_opt_self() separatorColor];
    v5 = [v7 CGColor];

    v6 = 1.0;
  }

  [v4 setBorderColor_];

  v8 = [v3 layer];
  [v8 setBorderWidth_];
}

char *sub_20B8045A8(char *result, uint64_t a2, void *a3)
{
  v3 = *&result[*a3];
  if (v3)
  {
    v4 = result;
    v5 = sub_20B584050(v3);
    v3(v5);

    return sub_20B583ECC(v3);
  }

  return result;
}

uint64_t sub_20B8046FC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_20C13D874();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = 0x72616D6B63656863;
    v11 = 0xE90000000000006BLL;
  }

  else
  {
    v10 = 1937075312;
    v11 = 0xE400000000000000;
  }

  sub_20B804C50(v10, v11);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_bookmarkButton);
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_20C13D894();
  [v12 setEnabled_];
  return (*(v7 + 8))(v9, v6);
}

void sub_20B8048BC(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SummaryContentSummaryView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = sub_20C13C954();
    v7 = v6;
    if (v5 == sub_20C13C954() && v7 == v8)
    {

      goto LABEL_13;
    }

    v10 = sub_20C13DFF4();

    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  [v1 setNeedsUpdateConstraints];
  [v1 invalidateIntrinsicContentSize];
LABEL_13:
  v11 = [v1 traitCollection];
  sub_20B804AA0(v11);
}

void sub_20B804AA0(void *a1)
{
  v3 = [a1 verticalSizeClass];
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailWidthConstraint);
  if (v3 == 1)
  {
    if (v4)
    {
      [v4 setConstant_];
    }

    v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailHeightConstraint);
    if (v5)
    {

      [v5 setConstant_];
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
      v7 = [a1 preferredContentSizeCategory];
      v8 = sub_20B6DB2C0();

      [v6 setConstant_];
    }

    v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailHeightConstraint);
    if (v9)
    {
      v12 = v9;
      v10 = [a1 preferredContentSizeCategory];
      v11 = sub_20B6DB2C0();

      [v12 setConstant_];
    }
  }
}

uint64_t sub_20B804C50(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v2 = sub_20C13D664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BD14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_20C13BCC4();
  v13 = sub_20C1380F4();
  v14 = objc_allocWithZone(MEMORY[0x277D75348]);
  v15 = 0.15;
  if (v13 == 3)
  {
    v15 = 0.415686275;
  }

  [v14 initWithWhite:v15 alpha:1.0];
  sub_20C13BCD4();
  sub_20C13D814();
  (*(v3 + 104))(v5, *MEMORY[0x277D74FD8], v2);
  sub_20C13D674();
  (*(v7 + 16))(v9, v12, v6);
  sub_20C13D644();
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  v17 = [objc_opt_self() configurationWithFont:v16 scale:1];

  v18 = v17;
  v19 = sub_20C13C914();
  v20 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v18];

  sub_20C13D804();
  return (*(v7 + 8))(v12, v6);
}

id sub_20B804F34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryContentSummaryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B8050A0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailDimensions) = xmmword_20C15BCD0;
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setContentMode_];
  [v1 setClipsToBounds_];
  if (_UISolariumEnabled())
  {
    v2 = 10.0;
  }

  else
  {
    v2 = 5.0;
  }

  v3 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailView;
  v4 = [v1 layer];
  [v4 setCornerRadius_];

  [v1 setClipsToBounds_];
  *(v0 + v3) = v1;
  v5 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels;
  v6 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v8];

  *(v0 + v5) = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuide;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v10 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_layoutGuideSecondaryConstraints) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labelsBottomConstraint;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v12 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_bookmarkButtonBottomConstraint;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_thumbnailHeightConstraint) = 0;
  v13 = (v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped);
  *v14 = 0;
  v14[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

BOOL sub_20B80531C()
{
  v0 = sub_20C1335E4();
  v2 = v1;
  v4 = v3;
  v5 = sub_20C1335E4();
  v8 = v7;
  if (v4)
  {
    if (v7)
    {
      return qword_20C15BD00[v0] < qword_20C15BD00[v5];
    }

    else
    {
      sub_20B583F4C(v5, v6, 0);
      return 1;
    }
  }

  else
  {
    v10 = v6;
    v11 = v5;
    sub_20B583F4C(v0, v2, 0);
    result = 0;
    if ((v8 & 1) == 0)
    {
      sub_20B583F4C(v11, v10, 0);
      v12 = sub_20C1335D4();
      v14 = v13;
      if (v12 == sub_20C1335D4() && v14 == v15)
      {

        return 0;
      }

      else
      {
        v16 = sub_20C13DFF4();

        return v16 & 1;
      }
    }
  }

  return result;
}

void sub_20B805460()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76988];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = [objc_opt_self() configurationWithFont_];
  qword_27C766160 = v3;
}

char *sub_20B8055A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_layout];
  sub_20B808250(v123);
  v13 = v123[3];
  *(v12 + 2) = v123[2];
  *(v12 + 3) = v13;
  *(v12 + 8) = v124;
  v14 = v123[1];
  *v12 = v123[0];
  *(v12 + 1) = v14;
  v15 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex];
  *v15 = 0;
  v15[8] = 1;
  v16 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items] = MEMORY[0x277D84F90];
  v17 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemCellIdentifier];
  v122 = type metadata accessor for TVRootShowcaseCarouselItemCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766290);
  *v21 = sub_20C13C9D4();
  v21[1] = v22;
  v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements] = v16;
  v23 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_leftArrowButton;
  if (qword_27C760760 != -1)
  {
    swift_once();
  }

  v24 = qword_27C766160;
  v25 = sub_20C13C914();
  v26 = objc_opt_self();
  v27 = [v26 systemImageNamed:v25 withConfiguration:v24];

  v28 = type metadata accessor for TVButtonImageContentView();
  v29 = objc_allocWithZone(v28);
  v30 = v27;
  v31 = sub_20B8C9328(v27);
  v32 = type metadata accessor for TVButton();
  v33 = sub_20BB87F4C(v31, 0, 1, objc_allocWithZone(v32), 0.0, 0.0, 0.0, 0.0);

  v34 = sub_20B9E1660(0x11uLL, 0);
  v35 = *MEMORY[0x277D768C8];
  v36 = *(MEMORY[0x277D768C8] + 8);
  v37 = *(MEMORY[0x277D768C8] + 16);
  v38 = *(MEMORY[0x277D768C8] + 24);
  sub_20B9DDC1C(*MEMORY[0x277D768C8], v36, v37, v38);
  *&v34[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4044000000000000;
  sub_20B9DE3E4();
  sub_20B9DEC5C(*&v34[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] | 2, 0);
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v23] = v34;
  v39 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_rightArrowButton;
  v40 = sub_20C13C914();
  v41 = [v26 systemImageNamed:v40 withConfiguration:v24];

  v42 = objc_allocWithZone(v28);
  v43 = v41;
  v44 = sub_20B8C9328(v41);
  v45 = sub_20BB87F4C(v44, 0, 1, objc_allocWithZone(v32), 0.0, 0.0, 0.0, 0.0);

  v46 = sub_20B9E1660(0x11uLL, 0);
  sub_20B9DDC1C(v35, v36, v37, v38);
  *&v46[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4044000000000000;
  sub_20B9DE3E4();
  sub_20B9DEC5C(*&v46[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] | 2, 0);
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v39] = v46;
  v47 = [objc_opt_self() smu_tvCarouselView];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView] = v47;
  v48 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v48 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl] = v48;
  v121.receiver = v5;
  v121.super_class = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  v49 = objc_msgSendSuper2(&v121, sel_initWithFrame_, a1, a2, a3, a4);
  v50 = *&v49[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl];
  v51 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl;
  v118 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl;
  v52 = v49;
  [v50 setNumberOfPages_];
  [*&v49[v51] setHidesForSinglePage_];
  v53 = v52;
  v54 = [v53 contentView];
  v55 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView;
  [v54 addSubview_];

  [*&v53[v55] setDataSource_];
  v56 = *&v53[v55];
  [v56 setDelegate_];

  [*&v53[v55] setScrollMode_];
  v57 = &v53[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_layout];
  v117 = &v53[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_layout];
  [*&v53[v55] setItemSize_];
  [*&v53[v55] setInteritemSpacing_];
  [*&v53[v55] setShowsPageControl_];
  [*&v53[v55] setAutoscrollInterval_];
  [*&v53[v55] setShouldScaleOnIdleFocus_];
  v58 = *&v53[v55];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = v58;

  v61 = sub_20C13C914();

  [v60 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v61];

  v62 = [v53 &selRef_setMaximumFractionDigits_];
  [v62 addSubview_];

  v63 = [v53 &selRef_setMaximumFractionDigits_];
  v64 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_leftArrowButton;
  [v63 addSubview_];

  v65 = [v53 &selRef_setMaximumFractionDigits_];
  v66 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_rightArrowButton;
  [v65 addSubview_];

  v120 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20C14FF90;
  v68 = [*&v49[v118] topAnchor];
  v69 = [*&v53[v55] bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:v57[6]];

  *(v67 + 32) = v70;
  v71 = [*&v49[v118] centerXAnchor];
  v72 = [*&v53[v55] centerXAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v67 + 40) = v73;
  v74 = [*&v53[v64] centerYAnchor];
  v75 = [*&v53[v55] centerYAnchor];
  v76 = [v74 &selRef:v75 alertControllerReleasedDictationButton:? + 5];

  *(v67 + 48) = v76;
  v77 = [*&v53[v64] leftAnchor];
  v78 = [*&v53[v55] leftAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:*v117];

  *(v67 + 56) = v79;
  v80 = [*&v53[v64] widthAnchor];
  v81 = [v80 constraintEqualToConstant_];

  *(v67 + 64) = v81;
  v82 = [*&v53[v64] heightAnchor];
  v83 = [v82 &selRef_visibleCells + 1];

  *(v67 + 72) = v83;
  v84 = [*&v53[v66] centerYAnchor];
  v85 = [*&v53[v55] centerYAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v67 + 80) = v86;
  v87 = [*&v53[v66] rightAnchor];
  v88 = [*&v53[v55] rightAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:-*v117];

  *(v67 + 88) = v89;
  v90 = [*&v53[v66] widthAnchor];
  v91 = [v90 constraintEqualToConstant_];

  *(v67 + 96) = v91;
  v92 = [*&v53[v66] heightAnchor];
  v93 = [v92 constraintEqualToConstant_];

  *(v67 + 104) = v93;
  v94 = *&v53[v55];
  v95 = [v53 contentView];

  v96 = [v94 leadingAnchor];
  v97 = [v95 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v36];

  LODWORD(v99) = 1148846080;
  [v98 setPriority_];
  v119 = v98;
  v100 = [v94 trailingAnchor];
  v101 = [v95 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:-v38];

  LODWORD(v103) = 1148846080;
  [v102 setPriority_];
  v104 = v102;
  v105 = [v94 topAnchor];
  v106 = [v95 topAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:v35];

  LODWORD(v108) = 1148846080;
  [v107 setPriority_];
  v109 = [v94 bottomAnchor];
  v110 = [v95 bottomAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:-v37];

  LODWORD(v112) = 1148846080;
  [v111 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v119;
  *(inited + 40) = v104;
  *(inited + 48) = v107;
  *(inited + 56) = v111;
  v114 = v107;

  v122 = v67;
  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500);
  v115 = sub_20C13CC54();

  [v120 activateConstraints_];

  return v53;
}

void sub_20B806488()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange];
  if (v1)
  {

    v1([v0 bounds]);
    sub_20B583ECC(v1);
  }

  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange];
  if (v2)
  {

    v2([v0 bounds]);
    sub_20B583ECC(v2);
  }

  sub_20B806650();
}

void sub_20B806650()
{
  v1 = sub_20C13C4B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C514();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression) = 1;
    sub_20B51C88C(0, &qword_281100530);
    v20 = v5;
    v18 = sub_20C13D374();
    sub_20C13C504();
    sub_20C13C574();
    v19 = *(v9 + 8);
    v19(v11, v8);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_20B809410;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_20;
    v16 = _Block_copy(aBlock);

    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    sub_20C13DA94();
    v17 = v18;
    MEMORY[0x20F2F4A80](v14, v7, v4, v16);
    _Block_release(v16);

    (*(v2 + 8))(v4, v1);
    (*(v21 + 8))(v7, v20);
    v19(v14, v8);
  }
}

void sub_20B8069EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression;
    if (*(Strong + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression) == 1)
    {
      sub_20B806A58();
      v1[v2] = 0;
    }
  }
}

uint64_t sub_20B806A58()
{
  v1 = type metadata accessor for MetricImpressionElement();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v50 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766278);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v50 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v58 = &v50 - v14;
  sub_20B8070B8();
  v16 = v15;
  v50 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements;
  v51 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements);
  v18 = *(v17 + 16);
  v53 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance);
  v54 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance);

  v59 = v18;
  if (v18)
  {
    v20 = 0;
    v56 = v16;
    v57 = v2;
    v55 = v17;
    while (v20 < *(v17 + 16))
    {
      v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v23 = *(v2 + 72) * v20;
      result = sub_20B8092E0(v17 + v22 + v23, v63, type metadata accessor for MetricImpressionElement);
      v24 = *(v16 + 16);
      if (v20 == v24)
      {

        result = sub_20B8093B0(v63, type metadata accessor for MetricImpressionElement);
        goto LABEL_17;
      }

      if (v20 >= v24)
      {
        goto LABEL_34;
      }

      v25 = v62;
      v26 = *(v62 + 48);
      v27 = v58;
      sub_20B809348(v63, v58, type metadata accessor for MetricImpressionElement);
      sub_20B8092E0(v16 + v22 + v23, v27 + v26, type metadata accessor for MetricImpressionElement);
      v28 = *(v25 + 48);
      sub_20B809348(v27, v12, type metadata accessor for MetricImpressionElement);
      v60 = v28;
      sub_20B809348(v27 + v26, &v12[v28], type metadata accessor for MetricImpressionElement);
      sub_20B52F9E8(v12, v9, &qword_27C766278);
      v30 = *v9;
      v29 = v9[1];

      sub_20B8093B0(v9, type metadata accessor for MetricImpressionElement);
      v31 = v61;
      sub_20B52F9E8(v12, v61, &qword_27C766278);
      v32 = (v31 + *(v25 + 48));
      v33 = *v32;
      v34 = v32[1];

      sub_20B8093B0(v32, type metadata accessor for MetricImpressionElement);
      if (v30 == v33 && v29 == v34)
      {

        v21 = *(v62 + 48);
        sub_20B8093B0(v61, type metadata accessor for MetricImpressionElement);
        sub_20B8093B0(v9 + v21, type metadata accessor for MetricImpressionElement);
        v16 = v56;
        v2 = v57;
      }

      else
      {
        v35 = sub_20C13DFF4();

        v36 = *(v62 + 48);
        sub_20B8093B0(v61, type metadata accessor for MetricImpressionElement);
        sub_20B8093B0(v9 + v36, type metadata accessor for MetricImpressionElement);
        v16 = v56;
        v2 = v57;
        if ((v35 & 1) == 0)
        {
          v37 = *v53;
          if (*v53)
          {

            v37(v12);
            sub_20B583ECC(v37);
          }

          v38 = *v54;
          if (*v54)
          {

            v38(&v12[v60]);
            sub_20B583ECC(v38);
          }
        }
      }

      ++v20;
      result = sub_20B520158(v12, &qword_27C766278);
      v17 = v55;
      if (v59 == v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_15:

LABEL_17:
    v40 = v50;
    v39 = v51;
    v41 = *(*(v51 + v50) + 16);
    v42 = *(v16 + 16);
    v43 = v53;
    if (v42 < v41)
    {
      v44 = v52;
      while (1)
      {
        v45 = *v43;
        if (*v43)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v46 = *(v39 + v40);
          if (v42 >= *(v46 + 16))
          {
            goto LABEL_33;
          }

          sub_20B8092E0(v46 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v42, v44, type metadata accessor for MetricImpressionElement);

          v45(v44);
          sub_20B583ECC(v45);
          result = sub_20B8093B0(v44, type metadata accessor for MetricImpressionElement);
        }

        if (v41 == ++v42)
        {
          goto LABEL_25;
        }
      }
    }

    v47 = v52;
    v48 = v54;
    if (v41 < v42)
    {
      do
      {
        v49 = *v48;
        if (*v48)
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (v41 >= *(v16 + 16))
          {
            goto LABEL_36;
          }

          sub_20B8092E0(v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v41, v47, type metadata accessor for MetricImpressionElement);

          v49(v47);
          sub_20B583ECC(v49);
          result = sub_20B8093B0(v47, type metadata accessor for MetricImpressionElement);
        }

        ++v41;
      }

      while (v42 != v41);
    }

LABEL_25:
    *(v39 + v40) = v16;
  }

  return result;
}

void sub_20B8070B8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl) currentPage];
  v2 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    return;
  }

  v3 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items);
  if (v1 >= *(v4 + 16))
  {
    return;
  }

  v5 = *(type metadata accessor for RootShowcaseItem() - 8);
  if (*(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3 + 16) != 1)
  {
    return;
  }

  v18 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView);
  v6 = [v18 visibleCells];
  v7 = sub_20C13CC74();

  v21 = v2;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v9, v20);
      sub_20B6B3B74(v20, &v19);
      type metadata accessor for TVRootShowcaseCarouselItemCell();
      if (swift_dynamicCast())
      {
        MEMORY[0x20F2F43B0]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
        v10 = v21;
      }

      v9 += 32;
      --v8;
    }

    while (v8);

    if (!(v10 >> 62))
    {
LABEL_12:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_13;
      }

LABEL_26:

      return;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_12;
    }
  }

  v11 = sub_20C13DB34();
  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_13:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x20F2F5430](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if ([v18 indexForCell_] == v3)
    {

      v16 = *&v14[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_buttonActions];
      swift_beginAccess();

      sub_20BCF46F8(v17, v14, v16);

      goto LABEL_26;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id sub_20B8073F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVRootShowcaseCarouselContainerCell()
{
  result = qword_27C766198;
  if (!qword_27C766198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B80759C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B807848(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B807894@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B8078FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B807980()
{
  [*(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView) setScrollMode_];
  *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements) = MEMORY[0x277D84F90];

  *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance);
  *v1 = 0;
  v1[1] = 0;
  sub_20B583ECC(v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance);
  *v3 = 0;
  v3[1] = 0;
  sub_20B583ECC(v4);
  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange);
  *v5 = 0;
  v5[1] = 0;
  sub_20B583ECC(v6);
  v7 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange);
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange);
  *v7 = 0;
  v7[1] = 0;

  return sub_20B583ECC(v8);
}

uint64_t sub_20B807A6C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

uint64_t sub_20B807A8C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

uint64_t sub_20B807AAC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

uint64_t sub_20B807ACC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

unint64_t sub_20B807AEC(unint64_t a1)
{
  v65 = sub_20C13BB84();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RootShowcaseItem();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v58 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766270);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x32)
  {
    sub_20C13B534();

    v30 = v1;
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66 = a1;
      v67 = v35;
      *v33 = 138543618;
      *(v33 + 4) = v30;
      *v34 = v30;
      *(v33 + 12) = 2082;
      v36 = sub_20B5F66D0();
      v37 = v30;
      v38 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v36);
      v40 = sub_20B51E694(v38, v39, &v67);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_20B517000, v31, v32, "Attempted to configure %{public}@ with item: %{public}s", v33, 0x16u);
      sub_20B520158(v34, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    return (*(v3 + 8))(v5, v65);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771D90);
  v22 = swift_projectBox();
  v23 = *v22;
  v24 = *(v21 + 48);
  v60 = *(v22 + *(v21 + 64));
  sub_20B52F9E8(v22 + v24, v20, &qword_27C766270);
  v25 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items];
  *&v1[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items] = v23;
  v65 = v1;
  v26 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl];
  v27 = *(v23 + 16);
  swift_bridgeObjectRetain_n();
  v61 = v26;
  v62 = v27;
  [v26 setNumberOfPages_];
  v63 = v20;
  sub_20B52F9E8(v20, v17, &qword_27C766270);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {

    sub_20B520158(v17, &qword_27C766270);
    v28 = v62;
    v29 = v65;
    goto LABEL_13;
  }

  v59 = v25;
  result = sub_20B809348(v17, v14, type metadata accessor for RootShowcaseItem);
  v42 = *(v23 + 16);
  v29 = v65;
  if (!v42)
  {
LABEL_12:

    sub_20B8093B0(v14, type metadata accessor for RootShowcaseItem);
    v28 = v62;
LABEL_13:
    v47 = v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex;
    *v47 = 0;
    *(v47 + 8) = 1;
    [*(v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView) reloadData];
LABEL_14:
    v48 = v28 < 2;
    [*(v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_leftArrowButton) setHidden_];
    [*(v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_rightArrowButton) setHidden_];
    return sub_20B520158(v63, &qword_27C766270);
  }

  v43 = 0;
  while (1)
  {
    if (v43 >= *(v23 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v45 = *(v7 + 72);
    sub_20B8092E0(v23 + v44 + v45 * v43, v11, type metadata accessor for RootShowcaseItem);
    v46 = sub_20B653A70(v11, v14);
    result = sub_20B8093B0(v11, type metadata accessor for RootShowcaseItem);
    if (v46)
    {
      break;
    }

    if (v42 == ++v43)
    {
      goto LABEL_12;
    }
  }

  v49 = v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex;
  *v49 = v43;
  *(v49 + 8) = 0;
  v50 = v59;
  v51 = *(v59 + 16);
  v52 = v61;
  if ([v61 currentPage] >= v51)
  {
    goto LABEL_21;
  }

  result = [v52 currentPage];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (result < *(v50 + 16))
  {
    v53 = v64;
    sub_20B8092E0(v50 + v44 + result * v45, v64, type metadata accessor for RootShowcaseItem);

    v55 = *v53;
    v54 = v53[1];

    sub_20B8093B0(v53, type metadata accessor for RootShowcaseItem);
    if (v55 == *v14 && v54 == v14[1])
    {
LABEL_21:
    }

    else
    {
      v56 = sub_20C13DFF4();

      if ((v56 & 1) == 0)
      {
        v57 = *(v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView);
        if (v60)
        {
          [*(v29 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView) centerItemAtPageIndex_];
          [v57 setNeedsFocusUpdate];
        }

        else
        {
          [v57 reloadData];
        }
      }
    }

    [v52 setCurrentPage_];
    sub_20B8093B0(v14, type metadata accessor for RootShowcaseItem);
    v28 = v62;
    goto LABEL_14;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_20B808250(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Width = CGRectGetWidth(v23);
  v13 = [v2 mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  v22 = CGRectGetWidth(v24);
  *a1 = xmmword_20C15BD30;
  *(a1 + 16) = 0x403F000000000000;
  *(a1 + 24) = Width;
  *(a1 + 32) = xmmword_20C15BD40;
  *(a1 + 48) = xmmword_20C15BD50;
  *(a1 + 64) = v22;
}

void sub_20B808370()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_layout;
  sub_20B808250(v39);
  v5 = v39[3];
  *(v4 + 32) = v39[2];
  *(v4 + 48) = v5;
  *(v4 + 64) = v40;
  v6 = v39[1];
  *v4 = v39[0];
  *(v4 + 16) = v6;
  v7 = v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items) = MEMORY[0x277D84F90];
  v9 = (v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementAppearance);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onElementDisappearance);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onImpressionableBoundsChange);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_onVisibleBoundsChange);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemCellIdentifier);
  type metadata accessor for TVRootShowcaseCarouselItemCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766290);
  *v13 = sub_20C13C9D4();
  v13[1] = v14;
  *(v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements) = v8;
  v15 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_leftArrowButton;
  if (qword_27C760760 != -1)
  {
    swift_once();
  }

  v16 = qword_27C766160;
  v17 = sub_20C13C914();
  v18 = objc_opt_self();
  v19 = [v18 systemImageNamed:v17 withConfiguration:v16];

  v20 = type metadata accessor for TVButtonImageContentView();
  v21 = objc_allocWithZone(v20);
  v22 = v19;
  v23 = sub_20B8C9328(v19);
  v24 = type metadata accessor for TVButton();
  v25 = sub_20BB87F4C(v23, 0, 1, objc_allocWithZone(v24), 0.0, 0.0, 0.0, 0.0);

  v26 = sub_20B9E1660(0x11uLL, 0);
  v27 = *MEMORY[0x277D768C8];
  v28 = *(MEMORY[0x277D768C8] + 8);
  v29 = *(MEMORY[0x277D768C8] + 16);
  v30 = *(MEMORY[0x277D768C8] + 24);
  sub_20B9DDC1C(*MEMORY[0x277D768C8], v28, v29, v30);
  *&v26[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4044000000000000;
  sub_20B9DE3E4();
  sub_20B9DEC5C(*&v26[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] | 2, 0);
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v15) = v26;
  v31 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_rightArrowButton;
  v32 = sub_20C13C914();
  v33 = [v18 systemImageNamed:v32 withConfiguration:v16];

  v34 = objc_allocWithZone(v20);
  v35 = v33;
  v36 = sub_20B8C9328(v33);
  v37 = sub_20BB87F4C(v36, 0, 1, objc_allocWithZone(v24), 0.0, 0.0, 0.0, 0.0);

  v38 = sub_20B9E1660(0x11uLL, 0);
  sub_20B9DDC1C(v27, v28, v29, v30);
  *&v38[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4044000000000000;
  sub_20B9DE3E4();
  sub_20B9DEC5C(*&v38[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] | 2, 0);
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v31) = v38;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B8087DC(uint64_t a1)
{
  v3 = type metadata accessor for RootShowcaseItem();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v6;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  sub_20C13B4A4();
  v14 = v1;
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  v17 = os_log_type_enabled(v15, v16);
  v42 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = a1;
    *(v18 + 12) = 2048;
    *(v18 + 14) = (*(&v14->isa + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items))[2];

    _os_log_impl(&dword_20B517000, v15, v16, "TVRootShowcaseCarouselContainerCell: requested cell at index %ld for %ld items.", v18, 0x16u);
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  v19 = *(v8 + 8);
  v19(v13, v7);
  v20 = *(&v14->isa + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView);
  v21 = sub_20C13C914();
  v22 = [v20 dequeueReusableCellWithReuseIdentifier:v21 forIndex:a1];

  sub_20C13DA64();
  swift_unknownObjectRelease();
  type metadata accessor for TVRootShowcaseCarouselItemCell();
  if (!swift_dynamicCast())
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v23 = v44;
  v24 = v14 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_delegate;
  swift_unknownObjectWeakLoadStrong();
  *(v23 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_delegate + 8) = *(v24 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v23 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_carouselItemDelegate + 8) = &off_2822AA180;
  result = swift_unknownObjectWeakAssign();
  v26 = *(&v14->isa + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items);
  if (*(v26 + 16) <= a1)
  {
    return v23;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v27 = v43;
    sub_20B8092E0(v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * a1, v43, type metadata accessor for RootShowcaseItem);
    v28 = v42;
    sub_20C13B4A4();
    v29 = v40;
    sub_20B8092E0(v27, v40, type metadata accessor for RootShowcaseItem);
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v32 = 134218242;
      *(v32 + 4) = a1;
      *(v32 + 12) = 2080;
      if (*(v29 + 16))
      {
        v33 = 1835365481;
      }

      else
      {
        v33 = 0x6C6F686563616C70;
      }

      if (*(v29 + 16))
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xEB00000000726564;
      }

      sub_20B8093B0(v29, type metadata accessor for RootShowcaseItem);
      v35 = sub_20B51E694(v33, v34, v45);

      *(v32 + 14) = v35;
      _os_log_impl(&dword_20B517000, v30, v31, "TVRootShowcaseCarouselContainerCell: configuring cell at index %ld with item type: %s.", v32, 0x16u);
      v36 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);

      v37 = v42;
    }

    else
    {

      sub_20B8093B0(v29, type metadata accessor for RootShowcaseItem);
      v37 = v28;
    }

    v19(v37, v7);
    v38 = v43;
    sub_20BBD4BA0(v43);
    sub_20B8093B0(v38, type metadata accessor for RootShowcaseItem);
    return v23;
  }

  __break(1u);
  return result;
}

void sub_20B808D50(unint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction();
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items;
  if (*(*(v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items) + 16) > a1)
  {
    v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl);
    [v12 setCurrentPage_];
    [v12 layoutIfNeeded];
    v13 = v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex;
    *v13 = 0;
    *(v13 + 8) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v15 = *(v1 + v11);
        if (*(v15 + 16) > a1)
        {
          v16 = Strong;
          v17 = *(type metadata accessor for RootShowcaseItem() - 8);
          sub_20B8092E0(v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a1, v10, type metadata accessor for RootShowcaseItem);
          v18 = swift_storeEnumTagMultiPayload();
          *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
          *(&v22 - 4) = 0;
          *(&v22 - 24) = 1;
          *(&v22 - 2) = v10;
          *(&v22 - 1) = v16;
          v20 = [*(v16 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
          if (v20)
          {
            v21 = v20;
            sub_20C1331E4();

            sub_20C0C1CDC(v6, sub_20B5E27BC);
            (*(v4 + 8))(v6, v3);
          }

          swift_unknownObjectRelease();
          sub_20B8093B0(v10, type metadata accessor for ShelfItemAction);
          goto LABEL_8;
        }
      }

      __break(1u);
      return;
    }

LABEL_8:
    sub_20B806650();
  }
}

void sub_20B809054(uint64_t a1)
{
  v3 = type metadata accessor for ShelfCellItemInfo();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_items);
  if (*(v10 + 16) > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(type metadata accessor for RootShowcaseItem() - 8);
      if ((*(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1 + 16) & 1) == 0)
      {
        v12 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
        swift_beginAccess();
        sub_20B52F9E8(v1 + v12, v9, &qword_27C762550);
        if ((*(v4 + 48))(v9, 1, v3))
        {
          sub_20B520158(v9, &qword_27C762550);
        }

        else
        {
          sub_20B8092E0(v9, v6, type metadata accessor for ShelfCellItemInfo);
          sub_20B520158(v9, &qword_27C762550);
          v13 = *(v6 + 4);
          swift_unknownObjectRetain();
          sub_20B8093B0(v6, type metadata accessor for ShelfCellItemInfo);
          ObjectType = swift_getObjectType();
          (*(v13 + 64))(a1, ObjectType, v13);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_20B8092E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B809348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8093B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B809418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, int a7)
{
  v8 = v7;
  LODWORD(v124) = a7;
  v123 = a6;
  v127 = a1;
  v128 = a5;
  LODWORD(v126) = a4;
  v11 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v11 - 8);
  v125 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutDetail;
  v14 = sub_20C135AE4();
  (*(*(v14 - 8) + 56))(v7 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_marketingOffer;
  v16 = sub_20C138894();
  (*(*(v16 - 8) + 56))(v7 + v15, 1, 1, v16);
  v17 = (v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_metricPageName);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_lockup;
  v19 = sub_20C134014();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_backgroundArtworkDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_startActivityType;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_shouldPublishPageEventWhenAvailable) = 0;
  v21 = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_bookmarks) = v21;
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_playlists) = v21;
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_resumableSessions) = v21;
  *(v7 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_configuration;
  v23 = sub_20C134104();
  (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
  *(v8 + 216) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v8 + 224) = v142;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 320);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v8 + 360) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + 368);
  *(v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_marketingPlacement) = v126;
  v24 = (v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier);
  *v24 = v127;
  v24[1] = a2;
  swift_beginAccess();
  v126 = a2;

  sub_20B80E138(v128, v8 + v18);
  swift_endAccess();
  *v20 = v123;
  *(v20 + 8) = v124 & 1;
  type metadata accessor for TVCatalogWorkoutDetailHeaderShelf();
  swift_allocObject();

  v26 = sub_20B5D799C(v25);

  v124 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_compositeHeaderShelf;
  *(v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_compositeHeaderShelf) = v26;
  type metadata accessor for TVMetadataShelf();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v28 = v27 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row;
  sub_20B5D8060(&v142);
  v29 = v151;
  *(v28 + 128) = v150;
  *(v28 + 144) = v29;
  *(v28 + 160) = v152;
  v30 = v147;
  *(v28 + 64) = v146;
  *(v28 + 80) = v30;
  v31 = v149;
  *(v28 + 96) = v148;
  *(v28 + 112) = v31;
  v32 = v143;
  *v28 = v142;
  *(v28 + 16) = v32;
  v33 = v145;
  *(v28 + 32) = v144;
  *(v28 + 48) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(&v139, v27 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v139, v27 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_storefrontLocalizer);

  v123 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_metadataShelf;
  *(v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_metadataShelf) = v27;
  type metadata accessor for MusicTracksShelf();
  swift_allocObject();

  v34 = sub_20BFF2094();

  v35 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_musicTracksShelf;
  *(v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_musicTracksShelf) = v34;
  type metadata accessor for RelatedWorkoutsShelf();
  swift_allocObject();

  v36 = sub_20B8A1180();

  v37 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_relatedWorkoutsShelf;
  *(v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_relatedWorkoutsShelf) = v36;
  type metadata accessor for TVCatalogSummaryShelf();
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v39 = v38 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row;
  v40 = v151;
  *(v39 + 128) = v150;
  *(v39 + 144) = v40;
  *(v39 + 160) = v152;
  v41 = v147;
  *(v39 + 64) = v146;
  *(v39 + 80) = v41;
  v42 = v149;
  *(v39 + 96) = v148;
  *(v39 + 112) = v42;
  v43 = v143;
  *v39 = v142;
  *(v39 + 16) = v43;
  v44 = v145;
  *(v39 + 32) = v144;
  *(v39 + 48) = v44;
  sub_20C133AA4();
  sub_20B51C710(&v139, v38 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder);
  sub_20C133AA4();
  sub_20B51C710(&v139, v38 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer);

  v45 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_summaryShelf;
  *(v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_summaryShelf) = v38;
  v122 = a3;
  sub_20C133AA4();
  sub_20B51C710(&v139, v8 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  v46 = swift_allocObject();
  v46[4] = *(v8 + v124);
  v47 = *(v8 + v35);
  v48 = *(v8 + v37);
  v46[5] = &off_2822901F0;
  v46[6] = v47;
  v49 = *(v8 + v45);
  v46[7] = &off_2822FED50;
  v46[8] = v48;
  v50 = *&v123[v8];
  v46[9] = &off_2822B0AD0;
  v46[10] = v49;
  v46[11] = &off_2822F9D68;
  v46[12] = v50;
  v46[13] = &off_2822CB260;

  v116 = v47;

  v117 = v48;

  v118 = v49;

  v121 = v50;

  LODWORD(v124) = sub_20C1380F4();
  v51 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v123 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v51 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v52 = sub_20C13C724();
  v53 = type metadata accessor for CatalogPageImpressionTracker();
  v54 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v55 = MEMORY[0x277D221C0];
  v54[2] = sub_20C13C6D4();
  v54[3] = v52;
  v54[4] = v55;
  v140 = v53;
  v56 = sub_20B80E6F8(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v141 = v56;
  *&v139 = v54;
  v57 = type metadata accessor for MetricLocationStore();
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D84F98];
  v60 = MEMORY[0x277D84F90];
  *(v58 + 16) = MEMORY[0x277D84F90];
  *(v58 + 24) = v59;
  v61 = __swift_mutable_project_boxed_opaque_existential_1(&v139, v53);
  v62 = MEMORY[0x28223BE20](v61);
  v64 = (&v115 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64, v62);
  v66 = *v64;
  v120 = v56;
  v138[3] = v53;
  v138[4] = v56;
  v138[0] = v66;
  v137[3] = v57;
  v137[4] = &off_2822B6968;
  v119 = v57;
  v137[0] = v58;
  v136[0] = v60;
  sub_20BB5D394(0, 5, 0);
  v67 = v136[0];
  v125 = (v46 + 4);
  v68 = *(v136[0] + 16);
  v69 = *(v136[0] + 24);
  v70 = v68 + 1;
  v115 = *(v46 + 2);
  swift_unknownObjectRetain();
  if (v68 >= v69 >> 1)
  {
    sub_20BB5D394((v69 > 1), v68 + 1, 1);
    v67 = v136[0];
  }

  *(v67 + 16) = v70;
  v71 = v67 + 24 * v68;
  *(v71 + 32) = v115;
  *(v71 + 48) = 0;
  v72 = *(v67 + 24);
  v73 = v68 + 2;
  v74 = swift_unknownObjectRetain();
  if (v70 >= v72 >> 1)
  {
    sub_20BB5D394((v72 > 1), v73, 1);
    v67 = v136[0];
  }

  *(v67 + 16) = v73;
  v75 = v67 + 24 * v70;
  *(v75 + 32) = v74;
  *(v75 + 40) = &off_2822FED50;
  *(v75 + 48) = 0;
  v77 = *(v67 + 16);
  v76 = *(v67 + 24);
  v78 = v77 + 1;
  v79 = v117;
  swift_unknownObjectRetain();
  v80 = v121;
  if (v77 >= v76 >> 1)
  {
    sub_20BB5D394((v76 > 1), v77 + 1, 1);
  }

  v81 = v136[0];
  *(v136[0] + 16) = v78;
  v82 = v81 + 24 * v77;
  *(v82 + 32) = v79;
  *(v82 + 40) = &off_2822B0AD0;
  *(v82 + 48) = 0;
  v83 = *(v81 + 24);
  v84 = v77 + 2;
  v85 = v118;
  swift_unknownObjectRetain();
  if (v78 >= v83 >> 1)
  {
    sub_20BB5D394((v83 > 1), v84, 1);
    v81 = v136[0];
  }

  *(v81 + 16) = v84;
  v86 = v81 + 24 * v78;
  *(v86 + 32) = v85;
  *(v86 + 40) = &off_2822F9D68;
  *(v86 + 48) = 0;
  v87 = *(v81 + 16);
  v88 = *(v81 + 24);
  swift_unknownObjectRetain();
  if (v87 >= v88 >> 1)
  {
    sub_20BB5D394((v88 > 1), v87 + 1, 1);
    v81 = v136[0];
  }

  *(v81 + 16) = v87 + 1;
  v89 = v81 + 24 * v87;
  *(v89 + 32) = v80;
  *(v89 + 40) = &off_2822CB260;
  *(v89 + 48) = 0;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_20B51CC64(v138, v136);
  sub_20B51CC64(v137, v135);
  v90 = __swift_mutable_project_boxed_opaque_existential_1(v136, v136[3]);
  v91 = MEMORY[0x28223BE20](v90);
  v93 = (&v115 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93, v91);
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v135, v135[3]);
  v125 = &v115;
  v96 = MEMORY[0x28223BE20](v95);
  v98 = (&v115 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v99 + 16))(v98, v96);
  v100 = *v93;
  v101 = *v98;
  v133 = v53;
  v134 = v120;
  v132[0] = v100;
  v130 = v119;
  v131 = &off_2822B6968;
  v129[0] = v101;
  v102 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v103 = __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
  v104 = MEMORY[0x28223BE20](v103);
  v106 = (&v115 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v107 + 16))(v106, v104);
  v108 = __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  v109 = MEMORY[0x28223BE20](v108);
  v111 = (&v115 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v112 + 16))(v111, v109);
  v113 = sub_20BE3AA74(v127, v126, v81, v124, v123, *v106, *v111, 2, v102);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v138);
  __swift_destroy_boxed_opaque_existential_1(v129);
  __swift_destroy_boxed_opaque_existential_1(v132);
  __swift_destroy_boxed_opaque_existential_1(v135);
  __swift_destroy_boxed_opaque_existential_1(v136);
  __swift_destroy_boxed_opaque_existential_1(&v139);
  *(v8 + 408) = v113;
  sub_20BE1166C();
  swift_getObjectType();
  sub_20C139454();
  swift_allocObject();
  swift_weakInit();
  sub_20B80E6F8(&unk_281103B10, MEMORY[0x277D543B0]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v139);

  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v139);

  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v139);

  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  sub_20B520158(v128, &unk_27C769C20);
  __swift_destroy_boxed_opaque_existential_1(&v139);

  return v8;
}

uint64_t sub_20B80A734(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, a2, v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B80A8A8();
  }

  return result;
}

uint64_t sub_20B80A8A8()
{
  v159 = sub_20C1344C4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v155 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20C135AE4();
  v195 = v2;
  v161 = *(v2 - 8);
  v3 = v161;
  MEMORY[0x28223BE20](v2);
  v156 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v5);
  v164 = &v155 - v6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v170 = *(v171 - 8);
  v7 = MEMORY[0x28223BE20](v171);
  v167 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v8;
  MEMORY[0x28223BE20](v7);
  v168 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v200 = *(v10 - 8);
  v201 = v10;
  v199 = *(v200 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v198 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v197 = &v155 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v155 - v19;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v188 = *(v194 - 8);
  v196 = v188[8];
  v21 = MEMORY[0x28223BE20](v194);
  v180 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v165 = &v155 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v169 = &v155 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v193 = &v155 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v189 = &v155 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v203 = &v155 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v204 = &v155 - v34;
  MEMORY[0x28223BE20](v33);
  v202 = &v155 - v35;
  v36 = swift_allocBox();
  (*(v3 + 56))(v37, 1, 1, v2);
  v191 = swift_allocObject();
  *(v191 + 16) = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v190 = swift_allocBox();
  v39 = v38;
  v40 = sub_20C138894();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  v41 = v0;
  v42 = v0[20];
  v185 = v41;
  __swift_project_boxed_opaque_existential_1(v41 + 17, v42);
  v43 = *(v41 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier + 8);
  v187 = *(v41 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier);
  v44 = v20;
  sub_20C13A0B4();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_20B80E494;
  *(v45 + 24) = v36;
  v46 = *(v15 + 16);
  v47 = v20;
  v48 = v14;
  v178 = v15 + 16;
  v177 = v46;
  v46(v18, v47, v14);
  v49 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v175 = *(v15 + 80);
  v50 = swift_allocObject();
  v51 = *(v15 + 32);
  v176 = v49;
  v181 = v18;
  v173 = v15 + 32;
  v172 = v51;
  v51(v50 + v49, v18, v48);
  v179 = (v16 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v50 + v179);
  *v52 = sub_20B80E4B0;
  v52[1] = v45;
  v192 = v36;

  sub_20C137C94();
  v53 = *(v15 + 8);
  v182 = v44;
  v184 = v48;
  v183 = v15 + 8;
  v174 = v53;
  v53(v44, v48);
  v54 = v185;
  __swift_project_boxed_opaque_existential_1(v185 + 12, v185[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = v187;
  *(inited + 40) = v43;

  sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  v56 = v197;
  sub_20C13A1D4();

  v57 = swift_allocObject();
  v58 = v191;
  *(v57 + 16) = sub_20B80E4E0;
  *(v57 + 24) = v58;
  v60 = v200;
  v59 = v201;
  v61 = v198;
  (*(v200 + 16))(v198, v56, v201);
  v62 = v60;
  v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v64 = (v199 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v61, v59);
  v66 = (v65 + v64);
  *v66 = sub_20B760084;
  v66[1] = v57;

  v67 = v203;
  sub_20C137C94();
  (*(v62 + 8))(v56, v59);
  v68 = swift_allocObject();
  v68[2] = 0xD000000000000036;
  v68[3] = 0x800000020C19B960;
  v68[4] = 158;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20B5D9EA0;
  *(v69 + 24) = v68;
  v70 = v188;
  v71 = v188[2];
  v72 = v189;
  v73 = v67;
  v74 = v194;
  v198 = (v188 + 2);
  v199 = v71;
  v71(v189, v67, v194);
  v75 = *(v70 + 80);
  v76 = v70;
  v162 = ~v75;
  v77 = (v75 + 16) & ~v75;
  v78 = v164;
  v79 = (v196 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v163 = v75;
  v80 = swift_allocObject();
  v81 = v76[4];
  v196 = v76 + 4;
  v197 = v77;
  v186 = v81;
  v81((v80 + v77), v72, v74);
  v187 = v79;
  v82 = (v80 + v79);
  *v82 = sub_20B5D9EC0;
  v82[1] = v69;
  sub_20C137C94();
  v200 = v76[1];
  v201 = (v76 + 1);
  (v200)(v73, v74);
  v83 = v54[33];
  v84 = v54[34];
  __swift_project_boxed_opaque_existential_1(v54 + 30, v83);
  v160 = *(v54 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_marketingPlacement);
  v85 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutDetail;
  swift_beginAccess();
  v86 = v54;
  v87 = v195;
  sub_20B52F9E8(v54 + v85, v78, &qword_27C7620C8);
  v88 = v161;
  if ((*(v161 + 48))(v78, 1, v87))
  {
    sub_20B520158(v78, &qword_27C7620C8);
    v89 = 0;
    v90 = 0;
  }

  else
  {
    v91 = v156;
    (*(v88 + 16))(v156, v78, v87);
    sub_20B520158(v78, &qword_27C7620C8);
    v92 = v157;
    sub_20C135AA4();
    (*(v88 + 8))(v91, v87);
    v93 = sub_20C1344B4();
    v95 = v94;
    v97 = v96;
    (*(v158 + 8))(v92, v159);
    if (v97)
    {
      v89 = sub_20C134BA4();
      v90 = v98;
    }

    else
    {
      sub_20B583F4C(v93, v95, 0);
      v89 = 0;
      v90 = 0;
    }
  }

  v99 = v168;
  sub_20BBC5308(v160, v86 + 40, v89, v90, v83, v84, v168);

  v100 = swift_allocObject();
  v101 = v190;
  *(v100 + 16) = sub_20B80E54C;
  *(v100 + 24) = v101;
  v102 = v101;
  v103 = v170;
  v104 = v167;
  v105 = v171;
  (*(v170 + 16))(v167, v99, v171);
  v106 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v107 = (v166 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  (*(v103 + 32))(v108 + v106, v104, v105);
  v109 = (v108 + v107);
  *v109 = sub_20B80E568;
  v109[1] = v100;

  v110 = v165;
  sub_20C137C94();
  (*(v103 + 8))(v99, v105);
  v111 = swift_allocObject();
  *(v111 + 16) = sub_20B80E598;
  *(v111 + 24) = v102;
  v112 = v203;
  v113 = v194;
  v199(v203, v110, v194);
  v114 = v187;
  v115 = v163;
  v116 = swift_allocObject();
  v117 = v186;
  v186(&v197[v116], v112, v113);
  v118 = (v116 + v114);
  *v118 = sub_20B5DF204;
  v118[1] = v111;

  v119 = v169;
  sub_20C137C94();
  v120 = v200;
  (v200)(v110, v113);
  v121 = v120;
  v122 = swift_allocObject();
  *(v122 + 16) = nullsub_1;
  *(v122 + 24) = 0;
  v199(v112, v119, v113);
  v123 = swift_allocObject();
  v117(&v197[v123], v112, v113);
  v124 = (v123 + v114);
  *v124 = sub_20B5DF3D4;
  v124[1] = v122;
  v125 = v193;
  sub_20C137C94();
  v121(v119, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v126 = v188[9];
  v127 = (v115 + 32) & v162;
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_20C1517D0;
  v129 = v128 + v127;
  v130 = v199;
  v199(v129, v202, v113);
  v130(v129 + v126, v125, v113);
  v130(v129 + 2 * v126, v204, v113);
  sub_20B5E2E18();
  v131 = sub_20C13D374();
  sub_20C13A7C4();
  v132 = v189;
  sub_20C137C74();

  v133 = swift_allocObject();
  v134 = v192;
  *(v133 + 16) = sub_20B80E5B4;
  *(v133 + 24) = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_20B7F133C;
  *(v135 + 24) = v133;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_20B80E5BC;
  *(v136 + 24) = v135;
  v137 = v180;
  v130(v180, v132, v113);
  v138 = v187;
  v139 = swift_allocObject();
  v186(&v197[v139], v137, v113);
  v140 = (v139 + v138);
  *v140 = sub_20B80E5D8;
  v140[1] = v136;

  v141 = v182;
  sub_20C137C94();
  (v200)(v132, v113);
  v142 = swift_allocObject();
  v143 = v190;
  v142[2] = v185;
  v142[3] = v143;
  v142[4] = v191;
  v144 = swift_allocObject();
  *(v144 + 16) = sub_20B80E608;
  *(v144 + 24) = v142;
  v145 = v181;
  v146 = v184;
  v177(v181, v141, v184);
  v147 = v179;
  v148 = swift_allocObject();
  v172(v148 + v176, v145, v146);
  v149 = (v148 + v147);
  *v149 = sub_20B80E740;
  v149[1] = v144;

  v150 = v203;
  sub_20C137C94();
  v174(v141, v146);
  v151 = sub_20C137CB4();
  v152 = swift_allocObject();
  *(v152 + 16) = 0;
  *(v152 + 24) = 0;
  v151(sub_20B52347C, v152);

  v153 = v200;
  (v200)(v150, v113);
  v153(v193, v113);
  v153(v204, v113);
  v153(v202, v113);
}

uint64_t sub_20B80BD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  v6 = sub_20C135AE4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_20B5DF2D4(v4, v5, &qword_27C7620C8);
}

uint64_t sub_20B80BE94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
}

uint64_t sub_20B80BEFC(void **a1)
{
  v2 = sub_20C139594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C138E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = *a1;
  v14 = swift_projectBox();
  (*(v7 + 104))(v9, *MEMORY[0x277D54190], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D54408], v2);
  v15 = v13;
  sub_20C138854();
  v16 = sub_20C138894();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  return sub_20B5DF2D4(v12, v14, &unk_27C768660);
}

uint64_t sub_20B80C168(void *a1)
{
  v2 = v1;
  v4 = sub_20C139594();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C138E94();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v48 = swift_projectBox();
  v52[0] = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  v16 = sub_20C138A74();
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (v17)
  {
    v19 = *(v16 - 8);
    v18(v14, 0, 1, v16);
    v20 = (*(v19 + 88))(v14, v16);
    v21 = *MEMORY[0x277D54118];
    (*(v19 + 8))(v14, v16);
    v22 = v20 == v21;
    v2 = v1;
    if (v22)
    {
      v23 = sub_20C138894();
      v24 = v49;
      (*(*(v23 - 8) + 56))(v49, 1, 1, v23);
      goto LABEL_10;
    }
  }

  else
  {
    v18(v14, 1, 1, v16);
    sub_20B520158(v14, &qword_27C7662D0);
  }

  sub_20C13B534();
  v25 = a1;
  v26 = sub_20C13BB74();
  v27 = sub_20C13D1D4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v2;
    v30 = v29;
    v52[0] = v29;
    *v28 = 136446210;
    swift_getErrorValue();
    v31 = MEMORY[0x20F2F5850](v50, v51);
    v33 = v9;
    v34 = sub_20B51E694(v31, v32, v52);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_20B517000, v26, v27, "Error fetching marketing offer: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x20F2F6A40](v30, -1, -1);
    MEMORY[0x20F2F6A40](v28, -1, -1);

    (*(v43 + 8))(v33, v7);
  }

  else
  {

    (*(v43 + 8))(v9, v7);
  }

  sub_20B6B4370(MEMORY[0x277D84F90]);
  v35 = objc_allocWithZone(MEMORY[0x277CEE528]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662D8);
  v36 = sub_20C13C744();

  [v35 initWithDictionary_];

  (*(v44 + 104))(v45, *MEMORY[0x277D54190], v46);
  (*(v41 + 104))(v47, *MEMORY[0x277D54408], v42);
  v24 = v49;
  sub_20C138854();
  v37 = sub_20C138894();
  (*(*(v37 - 8) + 56))(v24, 0, 1, v37);
LABEL_10:
  v38 = v48;
  swift_beginAccess();
  return sub_20B5DF2D4(v24, v38, &unk_27C768660);
}

uint64_t sub_20B80C7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  return sub_20B52F9E8(v2, a1, &qword_27C7620C8);
}

uint64_t sub_20B80C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12[-v7];
  v9 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v9, v8, &unk_27C768660);
  swift_beginAccess();
  v10 = *(a4 + 16);

  sub_20B80C938(a1, v8, v10);

  return sub_20B520158(v8, &unk_27C768660);
}

uint64_t sub_20B80C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20C1333A4();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C137C24();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - v18;
  v20 = sub_20C135AE4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  v22 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v19, v4 + v22, &qword_27C7620C8);
  swift_endAccess();
  sub_20B59793C(a1, a2, a3);
  sub_20BFF01E8(a1);
  sub_20B89FA80(a1);
  sub_20BF6C7F4(a1);
  sub_20BAEDA20();
  v23 = (v4 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_mediaTagStringBuilder), *(v4 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_mediaTagStringBuilder + 24));
  sub_20C135AD4();
  v24 = sub_20C138544();

  v25 = [v24 string];

  v26 = sub_20C13C954();
  v28 = v27;

  v29 = (v4 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_metricPageName);
  v51 = v26;
  *v29 = v26;
  v29[1] = v28;

  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_20C1359C4();
  v30 = sub_20C138544();

  v31 = [v30 string];

  v32 = sub_20C13C954();
  v34 = v33;

  v36 = v53;
  v35 = v54;
  sub_20C135A04();
  v37 = v52;
  (*(v36 + 56))(v16, 0, 1, v35);
  sub_20B52F9E8(v16, v37, &unk_27C766680);
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    sub_20B520158(v37, &unk_27C766680);
  }

  else
  {
    v38 = v47;
    (*(v36 + 32))(v47, v37, v35);
    sub_20BC4D528(v38);
    (*(v36 + 8))(v38, v35);
  }

  v39 = v4 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_backgroundArtworkDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v39 + 8);
    ObjectType = swift_getObjectType();
    v55[3] = type metadata accessor for TVCatalogWorkoutDetailPageDataProvider();
    v55[4] = &off_2822AA3D0;
    v55[0] = v4;
    v42 = *(v40 + 16);

    v42(v55, v16, v51, v28, v32, v34, ObjectType, v40);

    swift_unknownObjectRelease();
    sub_20B520158(v16, &unk_27C766680);
    result = __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {

    result = sub_20B520158(v16, &unk_27C766680);
  }

  v44 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_shouldPublishPageEventWhenAvailable;
  if (*(v4 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_shouldPublishPageEventWhenAvailable) == 1)
  {
    v55[0] = v4;
    v45 = v48;
    sub_20B80D384(v48);
    type metadata accessor for TVCatalogWorkoutDetailPageDataProvider();
    sub_20B80E6F8(&unk_27C7620D0, type metadata accessor for TVCatalogWorkoutDetailPageDataProvider);
    sub_20C138C54();
    result = (*(v49 + 8))(v45, v50);
    *(v4 + v44) = 0;
  }

  return result;
}

uint64_t sub_20B80CFC4()
{
  v1 = sub_20C1333A4();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_20C1352E4();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F24();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  (*(v11 + 104))(v13, *MEMORY[0x277D51390]);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier);
  v19[1] = *(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier + 8);
  v19[2] = v14;
  v15 = *MEMORY[0x277D52408];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_20B80D384(v3);
  type metadata accessor for TVCatalogWorkoutDetailPageDataProvider();
  sub_20B80E6F8(&qword_27C7662C0, type metadata accessor for TVCatalogWorkoutDetailPageDataProvider);
  sub_20C138D94();
  (*(v22 + 8))(v3, v23);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v20);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_20B80D384@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v42 - v5;
  v6 = sub_20C1344C4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v42 - v9;
  v10 = sub_20C135AE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v42 - v21;
  v23 = (*(v1 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v24 = v23[1];
  v49 = *v23;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662B8) + 48);
  v25 = *MEMORY[0x277D50C00];
  v26 = sub_20C134A14();
  (*(*(v26 - 8) + 104))(v22, v25, v26);
  v27 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutDetail;
  swift_beginAccess();
  v51 = v1;
  sub_20B52F9E8(v1 + v27, v19, &qword_27C7620C8);
  v47 = *(v11 + 48);
  v28 = v47(v19, 1, v10);
  v48 = v24;
  v42 = v13;
  if (v28)
  {

    sub_20B520158(v19, &qword_27C7620C8);
    v29 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, v19, v10);

    sub_20B520158(v19, &qword_27C7620C8);
    v29 = sub_20C135A24();
    (*(v11 + 8))(v13, v10);
  }

  v30 = v10;
  *&v22[v46] = v29;
  v31 = *MEMORY[0x277D51868];
  v32 = sub_20C1352F4();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v22, v31, v32);
  (*(v33 + 56))(v22, 0, 1, v32);
  sub_20B52F9E8(v51 + v27, v17, &qword_27C7620C8);
  if (v47(v17, 1, v10))
  {
    sub_20B520158(v17, &qword_27C7620C8);
    v34 = 1;
    v35 = v50;
  }

  else
  {
    v36 = v42;
    (*(v11 + 16))(v42, v17, v30);
    sub_20B520158(v17, &qword_27C7620C8);
    v37 = v43;
    sub_20C135AA4();
    (*(v11 + 8))(v36, v30);
    v35 = v50;
    sub_20C134334();
    (*(v44 + 8))(v37, v45);
    v34 = 0;
  }

  v38 = sub_20C132C14();
  (*(*(v38 - 8) + 56))(v35, v34, 1, v38);
  v39 = sub_20C135ED4();
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v40 = sub_20C136914();
  (*(*(v40 - 8) + 56))(v53, 1, 1, v40);

  return sub_20C133384();
}

uint64_t sub_20B80DA9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 368);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutDetail, &qword_27C7620C8);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_marketingOffer, &unk_27C768660);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_mediaTagStringBuilder);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_lockup, &unk_27C769C20);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_backgroundArtworkDelegate);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_configuration, &qword_27C761800);
  return v0;
}

uint64_t sub_20B80DC84()
{
  sub_20B80DA9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogWorkoutDetailPageDataProvider()
{
  result = qword_27C7662A0;
  if (!qword_27C7662A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B80DD30()
{
  sub_20B80DF8C(319, &qword_27C762120, MEMORY[0x277D51E68]);
  if (v0 <= 0x3F)
  {
    sub_20B80DF8C(319, &qword_281103B50, MEMORY[0x277D540B0]);
    if (v1 <= 0x3F)
    {
      sub_20B80DF8C(319, &qword_27C7662B0, MEMORY[0x277D504F8]);
      if (v2 <= 0x3F)
      {
        sub_20B80DF8C(319, &qword_281103BF0, MEMORY[0x277D50560]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20B80DF8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20B80E0D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20B80E138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B80E1A8@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  a1(v5);
  v8 = sub_20C135AE4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_20B520158(v7, &qword_27C7620C8);
  v10 = sub_20C133C44();
  sub_20B80E6F8(&qword_27C7662C8, MEMORY[0x277D50320]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50318], v10);
  return swift_willThrow();
}

uint64_t sub_20B80E374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_20C135AE4();

  return sub_20C137C94();
}

uint64_t sub_20B80E628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B80E6F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B80E750(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v55 - v8;
  v61.receiver = v3;
  v61.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 setImage:a1 forState:0];
  [v10 setImage:a2 forState:4];
  [v10 setImage:a2 forState:8];
  if (_UISolariumEnabled())
  {
    sub_20C13D7F4();
    v11 = sub_20C13D874();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    sub_20C13D894();

    v12 = objc_opt_self();
    v13 = v10;
    v14 = [v12 clearColor];
    [v13 setTintColor_];

    [v13 setNeedsUpdateConfiguration];
    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20C151490;
    v17 = [v13 widthAnchor];
    v18 = [v17 constraintEqualToConstant_];

    *(v16 + 32) = v18;
    v19 = [v13 heightAnchor];

    v20 = [v19 constraintEqualToConstant_];
    *(v16 + 40) = v20;
    sub_20B5E29D0();
    v21 = sub_20C13CC54();

    [v15 activateConstraints_];
LABEL_5:

    return v10;
  }

  v58 = a1;
  v59 = a2;

  v22 = [v10 imageView];
  if (v22)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CB8590]) init];
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    [v23 addSubview:v22 applyingMaterialStyle:0 tintEffectStyle:0];
    [v23 setUserInteractionEnabled_];
    v24 = v10;
    [v24 addSubview_];
    v57 = objc_opt_self();
    v55[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v25 = swift_allocObject();
    v56 = v22;
    *(v25 + 16) = xmmword_20C151490;
    v26 = v25;
    v27 = [v24 widthAnchor];
    v28 = [v27 constraintEqualToConstant_];

    *(v26 + 32) = v28;
    v55[0] = v26;
    v29 = [v24 heightAnchor];

    v30 = [v29 constraintEqualToConstant_];
    *(v26 + 40) = v30;
    v32 = *MEMORY[0x277D768C8];
    v31 = *(MEMORY[0x277D768C8] + 8);
    v33 = *(MEMORY[0x277D768C8] + 16);
    v34 = *(MEMORY[0x277D768C8] + 24);
    v35 = [v23 leadingAnchor];
    v36 = [v24 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:v31];

    LODWORD(v38) = 1148846080;
    [v37 setPriority_];
    v39 = v37;
    v40 = [v23 trailingAnchor];
    v41 = [v24 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:-v34];

    LODWORD(v43) = 1148846080;
    [v42 setPriority_];
    v44 = v42;
    v45 = [v23 topAnchor];
    v46 = [v24 topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:v32];

    LODWORD(v48) = 1148846080;
    [v47 setPriority_];
    v49 = [v23 bottomAnchor];
    v50 = [v24 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-v33];

    LODWORD(v52) = 1148846080;
    [v51 setPriority_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14FE90;
    *(inited + 32) = v39;
    *(inited + 40) = v44;
    *(inited + 48) = v47;
    *(inited + 56) = v51;

    v60 = v55[0];
    sub_20B8D9310(inited);
    sub_20B5E29D0();
    v21 = sub_20C13CC54();

    [v57 activateConstraints_];

    a1 = v58;
    a2 = v59;
    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B80EF84()
{
  v0 = sub_20C13C914();
  v1 = objc_opt_self();
  v2 = [v1 smm:v0 systemImageNamed:?];

  v3 = [objc_opt_self() whiteColor];
  v4 = [v2 imageWithTintColor_];

  if (_UISolariumEnabled())
  {
    v5 = v4;
  }

  else
  {
    if (qword_27C760C78 != -1)
    {
      swift_once();
    }

    v6 = qword_27C770A80;
    v7 = sub_20C13C914();
    v5 = [v1 systemImageNamed:v7 withConfiguration:v6];
  }

  v8 = objc_allocWithZone(type metadata accessor for CastingControlItem());
  v9 = sub_20B80E750(v5, 0);

  return v9;
}

void *sub_20B80F0F0()
{
  v0 = sub_20C13C914();
  v1 = objc_opt_self();
  v2 = [v1 smm:v0 systemImageNamed:?];

  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v2 imageWithTintColor:v4 renderingMode:1];

  v6 = sub_20C13C914();
  v7 = [v1 smm:v6 systemImageNamed:?];

  v8 = [v3 whiteColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:1];

  if (!_UISolariumEnabled())
  {
    v14 = sub_20C13C914();
    v15 = [v1 smm:v14 systemImageNamed:?];

    if (qword_27C760C80 != -1)
    {
      swift_once();
    }

    v10 = [v15 imageWithConfiguration_];

    if (!_UISolariumEnabled())
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = v9;
    goto LABEL_10;
  }

  v10 = v5;
  if (_UISolariumEnabled())
  {
    goto LABEL_9;
  }

LABEL_3:
  v11 = sub_20C13C914();
  v12 = [v1 smm:v11 systemImageNamed:?];

  if (qword_27C760C78 != -1)
  {
    swift_once();
  }

  v13 = [v12 imageWithConfiguration_];

LABEL_10:
  v16 = objc_allocWithZone(type metadata accessor for CastingControlItem());
  v17 = sub_20B80E750(v10, v13);
  [v17 setSelected_];

  return v17;
}

void sub_20B80F3D0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_20C13DB34())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764330);
  v3 = sub_20C13DC44();
LABEL_6:
  if (sub_20B51C88C(0, &qword_27C762910) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_20C13DAE4();
      sub_20B51C88C(0, &qword_27C772960);
      sub_20B80FE94();
      sub_20C13CFF4();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_20C13DB64())
        {
LABEL_55:
          sub_20B583EDC();

          return;
        }

        sub_20B51C88C(0, &qword_27C772960);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_20B80FD54(v35);
    }
  }

  if (v2)
  {

    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C772960);
    sub_20B80FE94();
    sub_20C13CFF4();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_20C13DB64())
    {
      goto LABEL_55;
    }

    sub_20B51C88C(0, &qword_27C772960);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_20C13D5E4();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_20B80F8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v33 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662E0);
    v9 = sub_20C13DC44();
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  v10 = v33 + 56;
  v11 = 1 << *(v33 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v33 + 56);
  v14 = (v11 + 63) >> 6;
  v31[1] = v4 + 32;
  v31[2] = v4 + 16;
  v15 = v9 + 56;

  v17 = 0;
  while (v13)
  {
LABEL_15:
    v23 = v32;
    (*(v4 + 16))(v32, *(v33 + 48) + *(v4 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v3);
    (*(v4 + 32))(v8, v23, v3);
    swift_dynamicCast();
    result = sub_20C13DBB4();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v15 + 8 * v26);
        if (v30 != -1)
        {
          v18 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v15 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v13 &= v13 - 1;
    v19 = *(v9 + 48) + 40 * v18;
    v20 = v34;
    v21 = v35;
    *(v19 + 32) = v36;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++*(v9 + 16);
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v22);
    ++v17;
    if (v13)
    {
      v17 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20B80FBD0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = sub_20C1358F4();
        v2 = MEMORY[0x277D50618];
      }

      else
      {
        v1 = sub_20C135874();
        v2 = MEMORY[0x277D52AF8];
      }
    }

    else if (a1)
    {
      v1 = sub_20C135904();
      v2 = MEMORY[0x277D53E88];
    }

    else
    {
      v1 = sub_20C135894();
      v2 = MEMORY[0x277D53E10];
    }

    goto LABEL_18;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v1 = sub_20C1358A4();
      v2 = MEMORY[0x277D4FE80];
    }

    else
    {
      v1 = sub_20C1358B4();
      v2 = MEMORY[0x277D4FF18];
    }

    goto LABEL_18;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      v1 = sub_20C1358C4();
      v2 = MEMORY[0x277D53128];
    }

    else
    {
      v1 = sub_20C1358E4();
      v2 = MEMORY[0x277D51130];
    }

LABEL_18:
    v4 = v2;
    goto LABEL_19;
  }

  sub_20C135864();
  v3 = sub_20C13CFB4();

  v4 = MEMORY[0x277D50278];
  v1 = v3;
LABEL_19:
  v5 = sub_20B80F8B0(v1, v4);

  return v5;
}

void sub_20B80FD54(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_20C13D5E4();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_20B51C88C(0, &qword_27C762910);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_20C13D5F4();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

unint64_t sub_20B80FE94()
{
  result = qword_27C764660;
  if (!qword_27C764660)
  {
    sub_20B51C88C(255, &qword_27C772960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764660);
  }

  return result;
}

id AccountAvatarProvider.makeFetchRequest(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  if (result)
  {
    v4 = result;
    result = sub_20B80FF64();
    a2[3] = result;
    a2[4] = &protocol witness table for AAMyPhotoRequest;
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20B80FF64()
{
  result = qword_27C7662E8;
  if (!qword_27C7662E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7662E8);
  }

  return result;
}

id sub_20B80FFB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  if (result)
  {
    v4 = result;
    result = sub_20B80FF64();
    a2[3] = result;
    a2[4] = &protocol witness table for AAMyPhotoRequest;
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B810014(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_20B810114;
    v5[3] = &block_descriptor_21;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 performRequestWithHandler_];
  _Block_release(v4);
}

void sub_20B810114(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_20B8101CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_20C135364();
  if ((*(*(v9 - 8) + 48))(a1, 1, v9) == 1)
  {
    sub_20B520158(a1, &unk_27C765080);
    v10 = 1;
  }

  else if ((a3 & 1) != 0 && (v11 = sub_20C134844(), (*(*(v11 - 8) + 48))(a2, 1, v11) == 1))
  {
    sub_20B520158(a1, &unk_27C765080);
    v10 = 2;
  }

  else
  {
    sub_20B810420(a2, v8);
    v12 = sub_20C134844();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_20B520158(v8, &qword_27C76B330);
      sub_20B520158(a1, &unk_27C765080);
      v10 = 0;
    }

    else
    {
      v14 = sub_20C1347E4();
      (*(v13 + 8))(v8, v12);
      sub_20B520158(a1, &unk_27C765080);
      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }
    }
  }

  sub_20B520158(a2, &qword_27C76B330);
  return v10;
}

uint64_t sub_20B810420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B8104A4()
{
  result = qword_27C7662F0;
  if (!qword_27C7662F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7662F0);
  }

  return result;
}

float sub_20B8104F8()
{
  if (qword_27C760770 != -1)
  {
    swift_once();
  }

  result = *&dword_27C79A5F4 + -4.0;
  *&dword_27C79A5F0 = *&dword_27C79A5F4 + -4.0;
  return result;
}

uint64_t sub_20B810558()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  Width = CGRectGetWidth(v18);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  if (v14 == result)
  {
    *&v16 = 130.0;
LABEL_8:
    v17 = *&v16;
    goto LABEL_9;
  }

  if (Width / v13 <= 375.0)
  {
    *&v16 = 54.0;
    goto LABEL_8;
  }

  v17 = 70.0;
  if (Width / v13 < 834.0)
  {
    v17 = 60.0;
  }

LABEL_9:
  dword_27C79A5F4 = LODWORD(v17);
  return result;
}

void sub_20B810694(uint64_t a1, int a2)
{
  v94 = a2;
  v97 = sub_20C133984();
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = v83 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v83 - v8;
  v10 = sub_20C134B64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v83 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricBuilder);
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricBuilder + 8);
  v98 = a1;
  sub_20C133D34();
  sub_20C09DDC4(v18, &v102);
  v90 = v18;
  v91 = v17;
  v89 = v13;
  v85 = v2;
  v88 = *(v11 + 8);
  v88(v16, v10);
  v86 = v102;
  v93 = v103;
  v87 = v104;
  v92 = v105;
  sub_20C133D64();
  sub_20C133974();
  v20 = v19;
  v21 = *(v99 + 8);
  v22 = v9;
  v23 = v97;
  v99 += 8;
  v21(v22, v97);
  v24 = v11 + 8;
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v25 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v27 = [v25 stringFromNumber_];

  v28 = v96;
  if (v27)
  {
    v83[7] = v24;
    v84 = v10;
    v83[6] = sub_20C13C954();
    v30 = v29;

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    v33 = sub_20C132964();
    v35 = v34;

    v36 = v95;
    sub_20C133D44();
    sub_20C133974();
    v38 = v37;
    v21(v36, v23);
    sub_20BB09618(&v102, v38);
    v83[3] = v33;
    v90 = v35;
    v83[1] = v30;
    v95 = v21;
    v83[2] = v102;
    v91 = v103;
    v83[4] = v104;
    v83[5] = v105;
    v39 = sub_20C133D24();
    v41 = v40;
    v102 = v39;
    v103 = v40;
    v43 = v42 & 1;
    LOBYTE(v104) = v42 & 1;
    v100 = xmmword_20C152300;
    v101 = 1;
    sub_20B815F98();
    sub_20B815FEC();
    v44 = sub_20C133BF4();
    sub_20B583F4C(v39, v41, v43);
    v45 = v85;
    if (v44)
    {
      v46 = [*(v85 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView) ringGroup];
      [v46 setIsStandalonePhoneFitnessMode_];

      [*(v45 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_exerciseLabel) setHidden_];
      [*(v45 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_standLabel) setHidden_];
    }

    v47 = *(v45 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_moveLabel);
    v48 = *&v47[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel];
    v49 = sub_20C13C914();
    [v48 setText_];

    v50 = *&v47[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel];
    v51 = sub_20C13C914();
    [v50 setText_];

    [v47 invalidateIntrinsicContentSize];
    [v47 setNeedsLayout];

    v52 = *(v45 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_exerciseLabel);
    v53 = *&v52[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel];
    v54 = sub_20C13C914();
    [v53 setText_];

    v55 = *&v52[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel];
    v56 = sub_20C13C914();
    [v55 setText_];

    [v52 invalidateIntrinsicContentSize];
    [v52 setNeedsLayout];

    v57 = *(v45 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_standLabel);
    v58 = *&v57[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel];
    v59 = sub_20C13C914();
    [v58 setText_];

    v60 = *&v57[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel];
    v61 = sub_20C13C914();
    [v60 setText_];

    [v57 invalidateIntrinsicContentSize];
    [v57 setNeedsLayout];

    v62 = [*(v45 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView) ringGroup];
    v63 = v89;
    sub_20C133D34();
    sub_20C134B44();
    v88(v63, v84);
    sub_20C133974();
    v65 = v64;
    sub_20C133964();
    v67 = v66;
    v68 = v97;
    v69 = v95;
    (v95)(v28, v97);
    v70 = v67;
    *&v67 = v65 / v70;
    sub_20C133D64();
    sub_20C133974();
    v72 = v71;
    sub_20C133964();
    v74 = v73;
    v69(v28, v68);
    v75 = v74;
    *&v74 = v72 / v75;
    sub_20C133D44();
    sub_20C133974();
    v77 = v76;
    sub_20C133964();
    v79 = v78;
    v80 = v69(v28, v68);
    v80.n128_f32[0] = v79;
    *&v81 = v77 / v80.n128_f32[0];
    v80.n128_u32[0] = LODWORD(v67);
    LODWORD(v82) = LODWORD(v74);
    [v62 setActiveEnergyPercentage:v94 & 1 exerciseMinutesPercentage:0 standHoursPercentage:v80.n128_f64[0] animated:v82 completion:v81];
  }

  else
  {
  }
}

void sub_20B810FC4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SessionRingsView();
  objc_msgSendSuper2(&v4, sel_didMoveToSuperview);
  v1 = [v0 superview];
  if (v1)
  {

    v2 = objc_opt_self();
    UIView.constraintsPinningToLayoutGuide(_:supportingRTL:insets:)(*&v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentLayoutGuide], 1, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
    sub_20B51C88C(0, &qword_281100500);
    v3 = sub_20C13CC54();

    [v2 activateConstraints_];
  }
}

void sub_20B811100()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView];
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:v4];

  LODWORD(v10) = 1148846080;
  [v9 setPriority_];
  v11 = v9;
  v12 = [v2 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-v5];

  LODWORD(v15) = 1148846080;
  [v14 setPriority_];
  v16 = v14;
  v17 = [v2 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v3];

  LODWORD(v20) = 1148846080;
  [v19 setPriority_];
  v21 = [v2 bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-v6];

  LODWORD(v24) = 1148846080;
  [v23 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C14FE90;
  *(v25 + 32) = v11;
  *(v25 + 40) = v16;
  *(v25 + 48) = v19;
  *(v25 + 56) = v23;
  v146 = v25;

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C151490;
  v27 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsContainer];
  v28 = [v27 rightAnchor];
  v29 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_containerView];
  v30 = [v29 rightAnchor];
  v31 = [v28 constraintEqualToAnchor_];

  *(v26 + 32) = v31;
  v143 = v27;
  v32 = [v27 topAnchor];
  v33 = [v29 topAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  v145 = v26;
  *(v26 + 40) = v34;
  v35 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainer];
  v36 = [v35 topAnchor];
  v37 = [v29 topAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  v39 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint;
  v40 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint] = v38;

  v41 = [v35 rightAnchor];
  v144 = v29;
  v42 = [v29 rightAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  v44 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint;
  v45 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint] = v43;

  v46 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView];
  v47 = [v46 ringGroup];
  [v47 groupDiameter];
  v49 = v48;

  v50 = (v49 + 4.0);
  v51 = [v35 widthAnchor];
  v52 = [v51 constraintEqualToConstant_];

  v53 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint;
  v54 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint] = v52;

  v55 = [v35 heightAnchor];
  v56 = [v55 constraintEqualToConstant_];

  v57 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint;
  v58 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint] = v56;

  v59 = *&v1[v44];
  v60 = *&v1[v53];
  v61 = *&v1[v57];
  v150 = *&v1[v39];
  v151 = v59;
  v152 = v60;
  v153 = v61;
  v62 = MEMORY[0x277D84F90];
  v148 = MEMORY[0x277D84F90];
  v63 = v61;
  v64 = v150;
  v65 = v59;
  v66 = v60;
  v67 = 0;
LABEL_2:
  if (v67 <= 4)
  {
    v68 = 4;
  }

  else
  {
    v68 = v67;
  }

  while (v67 != 4)
  {
    if (v68 == v67)
    {
      __break(1u);
      goto LABEL_14;
    }

    v69 = v149[v67++ + 4];
    if (v69)
    {
      v70 = v69;
      MEMORY[0x20F2F43B0]();
      if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v62 = v148;
      goto LABEL_2;
    }
  }

  v142 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390);
  swift_arrayDestroy();
  if (qword_27C760768 == -1)
  {
    goto LABEL_12;
  }

LABEL_14:
  swift_once();
LABEL_12:
  v71 = *&dword_27C79A5F0 * 6.0;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14FE90;
  v73 = v72;
  v74 = [v46 centerXAnchor];
  v75 = [v35 centerXAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  v73[4] = v76;
  v77 = [v46 centerYAnchor];
  v78 = [v35 centerYAnchor];
  v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

  v73[5] = v79;
  v80 = [v46 widthAnchor];
  v81 = [v80 &selRef_visibleCells + 1];

  v141 = v73;
  v73[6] = v81;
  v82 = [v46 heightAnchor];
  v83 = [v82 &selRef_visibleCells + 1];

  v73[7] = v83;
  v84 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsPlatter];
  v85 = [v84 leadingAnchor];
  v86 = [v35 leadingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:v4];

  LODWORD(v88) = 1148846080;
  [v87 setPriority_];
  v89 = v87;
  v90 = [v84 trailingAnchor];
  v91 = [v35 trailingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:-v5];

  LODWORD(v93) = 1148846080;
  [v92 setPriority_];
  v94 = v92;
  v140 = v84;
  v95 = [v84 topAnchor];
  v96 = [v35 &selRef_setLineBreakMode_];
  v97 = [v95 constraintEqualToAnchor:v96 constant:v3];

  LODWORD(v98) = 1148846080;
  [v97 setPriority_];
  v99 = [v84 bottomAnchor];
  v100 = [v35 &selRef_secondaryLabel + 5];
  v101 = [v99 constraintEqualToAnchor:v100 constant:-v6];

  LODWORD(v102) = 1148846080;
  [v101 setPriority_];
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_20C14FE90;
  *(v103 + 32) = v89;
  *(v103 + 40) = v94;
  *(v103 + 48) = v97;
  *(v103 + 56) = v101;

  v104 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsPlatter];
  v105 = *&v104[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide];
  v147 = UIView.constraintsPinningToLayoutGuide(_:supportingRTL:insets:)(v105, 1, v3, v4, v6, v5);

  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_20C151490;
  v107 = [v104 rightAnchor];
  v108 = [v143 rightAnchor];
  v109 = [v107 constraintEqualToAnchor_];

  *(v106 + 32) = v109;
  v139 = v106;
  v110 = [v104 topAnchor];
  v111 = [v143 topAnchor];
  v112 = [v110 constraintEqualToAnchor_];

  *(v106 + 40) = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_20C151490;
  v114 = [v143 widthAnchor];
  v115 = [v114 constraintEqualToConstant_];

  *(v113 + 32) = v115;
  v116 = [v143 heightAnchor];
  v117 = [v116 constraintEqualToConstant_];

  *(v113 + 40) = v117;
  v118 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewContractedConstraints;
  *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewContractedConstraints] = v113;

  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_20C151490;
  v120 = [v104 leftAnchor];
  v121 = [v143 leftAnchor];
  v122 = [v120 constraintEqualToAnchor_];

  *(v119 + 32) = v122;
  v123 = [v104 bottomAnchor];
  v124 = [v143 bottomAnchor];
  v125 = [v123 constraintEqualToAnchor_];

  *(v119 + 40) = v125;
  *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewExpandedConstraints] = v119;

  v126 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter];
  v127 = *&v126[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide];
  v128 = UIView.constraintsPinningToLayoutGuide(_:supportingRTL:insets:)(v127, 1, v3, v4, v6, v5);

  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_20C151490;
  v130 = [v126 rightAnchor];
  v131 = [v140 rightAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:-16.0];

  *(v129 + 32) = v132;
  v133 = [v126 topAnchor];
  v134 = [v144 topAnchor];
  v135 = [v133 constraintEqualToAnchor_];

  *(v129 + 40) = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C15C310;
  *(inited + 32) = v146;
  *(inited + 40) = v145;
  *(inited + 48) = v142;
  *(inited + 56) = v141;
  *(inited + 64) = v103;
  *(inited + 72) = v147;
  *(inited + 80) = v139;
  *(inited + 88) = v128;
  *(inited + 96) = *&v1[v118];
  *(inited + 104) = v129;
  v137 = objc_opt_self();

  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v138 = sub_20C13CC54();

  [v137 activateConstraints_];
}

id sub_20B812020()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SessionRingsView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView];
  v2 = [v1 translatesAutoresizingMaskIntoConstraints];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v1 layer];
  [v3 setAnchorPoint_];

  v4 = [v1 layer];
  [v1 bounds];
  [v4 setPosition_];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

void sub_20B812170(char a1, char a2, float a3, double a4, double a5, double a6, double a7)
{
  v13 = *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView];
  v14 = [v13 ringGroup];
  [v14 groupDiameter];
  v16 = v15;

  v17 = (v16 * a3);
  v18 = *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint];
  if (v18)
  {
    [v18 setConstant_];
  }

  v19 = (a3 * 4.0) + v17;
  v20 = -a7;
  if (v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_onNotchSide] == 1 && (a2 & 1) != 0)
  {
    v21 = *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_notchInset];
    if (qword_27C760D30 != -1)
    {
      swift_once();
    }

    v20 = v21 - *&qword_27C79D738 - a7;
  }

  [*&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint] setConstant_];
  [*&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint] setConstant_];
  [*&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint] setConstant_];
  v22 = a3 * 0.5;
  if (a1)
  {
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v7;
    *(v24 + 24) = v22;
    *(v24 + 32) = v19;
    *&v28.tx = sub_20B816D80;
    *&v28.ty = v24;
    *&v28.a = MEMORY[0x277D85DD0];
    *&v28.b = 1107296256;
    *&v28.c = sub_20B7B548C;
    *&v28.d = &block_descriptor_131;
    v25 = _Block_copy(&v28);
    v26 = v7;

    [v23 animateWithDuration:v25 animations:0.2];
    _Block_release(v25);
  }

  else
  {
    CGAffineTransformMakeScale(&v28, v22, v22);
    [v13 setTransform_];
    v27 = [*&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsPlatter] layer];
    [v27 setCornerRadius_];

    [v7 layoutIfNeeded];
  }

  v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_shouldTuckToSide] = a2 & 1;
}

id sub_20B812454(char *a1, CGFloat a2, double a3)
{
  v5 = *&a1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView];
  CGAffineTransformMakeScale(&v8, a2, a2);
  [v5 setTransform_];
  v6 = [*&a1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsPlatter] layer];
  [v6 setCornerRadius_];

  return [a1 layoutIfNeeded];
}

void sub_20B812538()
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  if (v1 == sub_20C138104())
  {
    v2 = [v0 window];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 windowScene];

      if (v4)
      {
        v5 = [v4 interfaceOrientation];

        [v0 safeAreaInsets];
        if (v6 > 0.0)
        {
          v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_onNotchSide] = v5 == 4;
          if (v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_shouldTuckToSide] == 1)
          {
            v7 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint];
            if (v7)
            {
              if (v5 == 4)
              {
                v8 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_notchInset];
                v9 = qword_27C760D30;
                v10 = v7;
                if (v9 != -1)
                {
                  v13 = v10;
                  swift_once();
                  v10 = v13;
                }

                v11 = v8 - *&qword_27C79D738;
              }

              else
              {
                v10 = v7;
                v11 = 0.0;
              }

              v12 = v10;
              [v10 setConstant_];
            }
          }
        }
      }
    }
  }
}

id sub_20B812704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRingsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B812918(char a1, double a2)
{
  if (a1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView);
    CGAffineTransformMakeScale(&v10, 0.9, 0.9);
    [v5 setTransform_];
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = a1 & 1;
  *(v8 + 24) = v7;
  *&v10.tx = sub_20B81621C;
  *&v10.ty = v8;
  *&v10.a = MEMORY[0x277D85DD0];
  *&v10.b = 1107296256;
  *&v10.c = sub_20B7B548C;
  *&v10.d = &block_descriptor_94;
  v9 = _Block_copy(&v10);

  [v6 animateWithDuration:v9 animations:a2];
  _Block_release(v9);
}

void sub_20B812A80(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView);

      v7[0] = 0x3FF0000000000000;
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0x3FF0000000000000;
      v7[4] = 0;
      v7[5] = 0;
      [v3 setTransform_];
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView);

    [v6 setAlpha_];
  }
}

void sub_20B812B6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView);

    [v2 setAlpha_];
  }
}

uint64_t sub_20B812BE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C4B4();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C4F4();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v12 = sub_20C13BB74();
  v13 = sub_20C13D1F4();
  if (!os_log_type_enabled(v12, v13))
  {

    (*(v9 + 8))(v11, v8);
    if (a1 != 3)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766400);
      v20 = swift_allocObject();
      v21 = a1;
      v18 = v20;
      *(v20 + 16) = xmmword_20C14F980;
      *(v20 + 32) = v21;
      goto LABEL_15;
    }

LABEL_6:
    v18 = &unk_28228D390;
LABEL_15:
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v2;
    aBlock[4] = sub_20B81617C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_51;
    v23 = _Block_copy(aBlock);
    v24 = v2;
    sub_20C13C4D4();
    v34 = MEMORY[0x277D84F90];
    sub_20B8160E0(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B816128(&qword_2811005A0, &unk_27C766280);
    v25 = v31;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v7, v25, v23);
    _Block_release(v23);
    (*(v33 + 8))(v25, v4);
    (*(v30 + 8))(v7, v32);
  }

  v29 = v4;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  aBlock[0] = v15;
  *v14 = 141558274;
  *(v14 + 4) = 1752392040;
  *(v14 + 12) = 2080;
  v27 = a1;
  v28 = v2;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v16 = 0xE400000000000000;
      v17 = 1702260589;
      goto LABEL_13;
    }

    if (a1 == 3)
    {
      v16 = 0xE300000000000000;
      v17 = 7105633;
LABEL_13:
      v19 = sub_20B51E694(v17, v16, aBlock);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_20B517000, v12, v13, "Play ring celebration on ring type: %{mask.hash}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);

      (*(v9 + 8))(v11, v8);
      v2 = v28;
      v4 = v29;
      a1 = v27;
      if (v27 != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }
  }

  else
  {
    if (!a1)
    {
      v16 = 0xE500000000000000;
      v17 = 0x646E617473;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v16 = 0xE800000000000000;
      v17 = 0x6573696372657865;
      goto LABEL_13;
    }
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B813160(uint64_t a1, void *a2)
{
  v38 = sub_20C13C4B4();
  v31 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C13C4F4();
  v30 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch_group_create();
  v9 = *(a1 + 16);
  if (v9)
  {
    v36 = objc_opt_self();
    v10 = sub_20B51C88C(0, &qword_281100530);
    v11 = (a1 + 32);
    v34 = &v44;
    v35 = v10;
    v32 = (v30 + 8);
    v33 = (v31 + 8);
    do
    {
      v41 = v9;
      v12 = *v11++;
      v13 = [v36 celebrationOfType_];
      dispatch_group_enter(v8);
      v40 = sub_20C13D374();
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = v13;
      v14[4] = v12;
      v14[5] = v8;
      v46 = sub_20B816184;
      v47 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_20B7B548C;
      v45 = &block_descriptor_57;
      v15 = _Block_copy(&aBlock);
      v16 = a2;
      v39 = v13;
      v17 = v8;

      sub_20C13C4D4();
      aBlock = MEMORY[0x277D84F90];
      sub_20B8160E0(&qword_281103AB0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
      sub_20B816128(&qword_2811005A0, &unk_27C766280);
      v18 = v5;
      v19 = v38;
      v20 = v41;
      sub_20C13DA94();
      v21 = v40;
      MEMORY[0x20F2F4AF0](0, v7, v18, v15);
      _Block_release(v15);

      v22 = v19;
      v5 = v18;
      v23 = v37;
      (*v33)(v18, v22);
      (*v32)(v7, v23);
      v9 = v20 - 1;
    }

    while (v9);
  }

  sub_20C13D2E4();
  sub_20B51C88C(0, &qword_281100530);
  v24 = sub_20C13D374();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = sub_20B816190;
  v47 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_20B7B548C;
  v45 = &block_descriptor_63;
  v26 = _Block_copy(&aBlock);

  sub_20C13C4D4();
  aBlock = MEMORY[0x277D84F90];
  sub_20B8160E0(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B816128(&qword_2811005A0, &unk_27C766280);
  v27 = v38;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v7, v5, v26);
  _Block_release(v26);

  (*(v31 + 8))(v5, v27);
  return (*(v30 + 8))(v7, v37);
}

void sub_20B8136BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [*(a1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView) ringGroup];
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    v12[4] = sub_20B816214;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_20B7B548C;
    v12[3] = &block_descriptor_87;
    v10 = _Block_copy(v12);
    v11 = a4;

    [v8 playCelebration:a2 onRingAtIndex:a3 completion:v10];
    _Block_release(v10);
  }
}

void sub_20B8137DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20B812170(1, 1, 1.0, *MEMORY[0x277D768C8], v1, v2, *(MEMORY[0x277D768C8] + 24));
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v15 = sub_20B816198;
    v16 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_20B7B548C;
    v14 = &block_descriptor_69;
    v6 = _Block_copy(&aBlock);
    v7 = v3;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v15 = sub_20B8161A0;
    v16 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_20B5E3874;
    v14 = &block_descriptor_75;
    v9 = _Block_copy(&aBlock);
    v10 = v7;

    [v4 animateWithDuration:0x20000 delay:v6 options:v9 animations:0.3 completion:0.0];
    _Block_release(v9);
    _Block_release(v6);
  }
}

void sub_20B8139C4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20B9B1534(a1);
  v4 = sub_20B9B16E0();
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelView);
  [*(v5 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
  v6 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel);
  v8 = v4;
  [v7 setHidden_];
  [*(v5 + v6) setAttributedText_];
}

id sub_20B813A9C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter);
  [v2 setAlpha_];
  v3 = [*(a1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView) ringGroup];
  [v3 groupDiameter];
  v5 = v4;

  CGAffineTransformMakeTranslation(&v7, -v5, 0.0);
  return [v2 setTransform_];
}

void sub_20B813B5C(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_20B8161A8;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20B7B548C;
  v7[3] = &block_descriptor_81;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 animateWithDuration:0x10000 delay:v5 options:0 animations:0.3 completion:2.0];
  _Block_release(v5);
}

void sub_20B813C5C(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView] ringGroup];
  [v3 groupDiameter];
  v5 = v4;

  v6 = (v5 * 0.89) + 3.55999994;
  [*&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint] setConstant_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint] setConstant_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint] setConstant_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint] setConstant_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = 0x3FDC7AE140000000;
  *(v8 + 32) = v6;
  v24 = sub_20B816228;
  v25 = v8;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20B7B548C;
  v23 = &block_descriptor_100;
  v9 = _Block_copy(&v20);
  v10 = v1;

  [v7 animateWithDuration:v9 animations:0.2];
  _Block_release(v9);
  v10[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_shouldTuckToSide] = 0;
  v11 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v12 = sub_20C13CC54();

  [v11 deactivateConstraints_];

  v13 = sub_20C13CC54();

  [v11 activateConstraints_];

  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v24 = sub_20B816234;
  v25 = v14;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20B7B548C;
  v23 = &block_descriptor_106;
  v15 = _Block_copy(&v20);
  v16 = v10;

  [v7 animateWithDuration:0x20000 delay:v15 usingSpringWithDamping:0 initialSpringVelocity:(a1 + a1) / 3.0 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v24 = sub_20B816244;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20B7B548C;
  v23 = &block_descriptor_112;
  v18 = _Block_copy(&v20);
  v19 = v16;

  [v7 animateKeyframesWithDuration:0x20000 delay:v18 options:0 animations:a1 completion:0.0];
  _Block_release(v18);
}

uint64_t sub_20B81405C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v22 = sub_20B81624C;
  v23 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_20B7B548C;
  v21 = &block_descriptor_118;
  v4 = _Block_copy(&aBlock);
  v5 = a1;

  v17 = v2;
  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.3];
  _Block_release(v4);
  v6 = [*&v5[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stackView] arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v7 = sub_20C13CC74();

  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    for (j = 0; ; ++j)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](j, v7);
      }

      else
      {
        if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v7 + 8 * j + 32);
      }

      v11 = v10;
      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      v22 = sub_20B81626C;
      v23 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_20B7B548C;
      v21 = &block_descriptor_124;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v17 addKeyframeWithRelativeStartTime:v14 relativeDuration:j * 0.333333333 animations:0.333333333];
      _Block_release(v14);

      if (v12 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_20B814384(double a1)
{
  v3 = sub_20C13C4B4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C13C4F4();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C13C4A4();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_20C13C514();
  v37 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v15 = sub_20C13CC54();

  [v14 deactivateConstraints_];

  v16 = sub_20C13CC54();

  [v14 activateConstraints_];

  v17 = (a1 + a1) / 3.0;
  v18 = a1 - v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  v49 = sub_20B816040;
  v50 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_20B7B548C;
  v48 = &block_descriptor_22;
  v21 = _Block_copy(&aBlock);
  v22 = v1;

  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v49 = sub_20B816098;
  v50 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_20B5E3874;
  v48 = &block_descriptor_39_0;
  v24 = _Block_copy(&aBlock);
  v25 = v22;

  [v19 animateWithDuration:0 delay:v21 usingSpringWithDamping:v24 initialSpringVelocity:v17 options:v18 animations:1.0 completion:0.0];
  _Block_release(v24);
  _Block_release(v21);
  sub_20B51C88C(0, &qword_281100530);
  v26 = sub_20C13D374();
  result = sub_20C13C504();
  v28 = v18 * 1000.0;
  if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v28 < 9.22337204e18)
  {
    *v8 = v28;
    v29 = v36;
    (*(v6 + 104))(v8, *MEMORY[0x277D85178], v36);
    MEMORY[0x20F2F3CD0](v10, v8);
    (*(v6 + 8))(v8, v29);
    v37 = *(v37 + 8);
    (v37)(v10, v44);
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    v49 = sub_20B8160A0;
    v50 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_20B7B548C;
    v48 = &block_descriptor_45_0;
    v31 = _Block_copy(&aBlock);
    v32 = v25;

    v33 = v38;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B8160E0(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B816128(&qword_2811005A0, &unk_27C766280);
    v34 = v40;
    v35 = v43;
    sub_20C13DA94();
    MEMORY[0x20F2F4A80](v13, v33, v34, v31);
    _Block_release(v31);

    (*(v42 + 8))(v34, v35);
    (*(v39 + 8))(v33, v41);
    return (v37)(v13, v44);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_20B814AA0(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stackView) arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v3 = sub_20C13CC74();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2F5430](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha_];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_20B814BD8()
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  result = sub_20C138104();
  if (v1 == result)
  {
    v3 = [v0 window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5) && (v6 = objc_msgSend(v5, sel_interfaceOrientation), v5, v6 == 4))
    {
      result = [v0 safeAreaInsets];
      v8 = v7;
    }

    else
    {
      result = [v0 safeAreaInsets];
    }
  }

  else
  {
    v8 = 0x4046000000000000;
  }

  *&v0[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_notchInset] = v8;
  return result;
}

uint64_t sub_20B814D18(uint64_t a1)
{
  sub_20B8139C4(a1);
  sub_20B812170(1, 0, 2.0, *MEMORY[0x277D768C8], v2, v3, *(MEMORY[0x277D768C8] + 24));

  return sub_20B812BE8(a1);
}

void sub_20B814D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v152) = a6;
  v153 = a3;
  v154 = a5;
  v150 = a4;
  v151 = a1;
  v155 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v138 - v9;
  v10 = sub_20C133D84();
  v142 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v139 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C0B4();
  MEMORY[0x28223BE20](v12 - 8);
  v140 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13D364();
  v148 = *(v14 - 8);
  v149 = v14;
  MEMORY[0x28223BE20](v14);
  v147 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_20C13D304();
  MEMORY[0x28223BE20](v145);
  v146 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C4F4();
  MEMORY[0x28223BE20](v17 - 8);
  v144 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_notchInset] = 0;
  v6[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_onNotchSide] = 0;
  v6[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_shouldTuckToSide] = 1;
  v19 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v19] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_containerView;
  v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v21] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainer;
  v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v23] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView;
  v26 = sub_20C1380F4();
  sub_20C0134C0(v26, &v156);
  d = v156.d;
  tx = v156.tx;
  __swift_project_boxed_opaque_existential_1(&v156, *&v156.d);
  v29 = (*(*&tx + 72))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(&v156);
  *&v7[v25] = v29;
  v30 = type metadata accessor for SessionSingleMetricView();
  v31 = [objc_allocWithZone(v30) initWithFrame_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = objc_opt_self();
  v33 = [v32 energyColors];
  if (!v33)
  {
    __break(1u);
    goto LABEL_39;
  }

  v34 = v33;
  v141 = v10;
  v35 = [v33 nonGradientTextColor];

  if (!v35)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [*&v31[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];

  v36 = [v32 energyColors];
  if (!v36)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = v36;
  v38 = [v36 nonGradientTextColor];

  if (!v38)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v39 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_moveLabel;
  [*&v31[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

  *&v7[v39] = v31;
  v40 = [objc_allocWithZone(v30) initWithFrame_];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = [v32 briskColors];
  if (!v41)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = v41;
  v43 = [v41 nonGradientTextColor];

  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [*&v40[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];

  v44 = [v32 briskColors];
  if (!v44)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v45 = v44;
  v46 = [v44 nonGradientTextColor];

  if (!v46)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v47 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_exerciseLabel;
  [*&v40[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

  *&v7[v47] = v40;
  v48 = [objc_allocWithZone(v30) initWithFrame_];
  [v48 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = [v32 sedentaryColors];
  if (!v49)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v50 = v49;
  v51 = [v49 nonGradientTextColor];

  if (!v51)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [*&v48[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];

  v52 = [v32 sedentaryColors];
  if (!v52)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v53 = v52;
  v54 = [v52 nonGradientTextColor];

  if (!v54)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v55 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_standLabel;
  [*&v48[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

  *&v7[v55] = v48;
  v56 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  [v56 setClipsToBounds_];
  v57 = *MEMORY[0x277CDA138];
  v58 = [v56 layer];
  [v58 setCornerCurve_];

  sub_20C1380F4();
  v59 = objc_opt_self();
  v60 = [v59 mainScreen];
  [v60 nativeBounds];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;

  v158.origin.x = v62;
  v158.origin.y = v64;
  v158.size.width = v66;
  v158.size.height = v68;
  Width = CGRectGetWidth(v158);
  v70 = [v59 mainScreen];
  [v70 nativeScale];
  v72 = v71;

  v73 = sub_20C138104();
  v74 = sub_20C138104();
  v75 = 30.0;
  if (Width / v72 <= 375.0)
  {
    v75 = 20.0;
  }

  if (v73 == v74)
  {
    v76 = 40.0;
  }

  else
  {
    v76 = v75;
  }

  v77 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsContainer;
  v78 = [v56 layer];
  [v78 setCornerRadius_];

  [v56 setClipsToBounds_];
  *&v7[v77] = v56;
  v79 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsPlatter;
  v80 = type metadata accessor for SessionElementBackdropView();
  v81 = objc_allocWithZone(v80);
  v82 = sub_20BFB39E0(5, 0);
  [v82 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v79] = v82;
  v83 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stackView;
  v84 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v84 setAlignment_];
  [v84 setAxis_];
  [v84 setDistribution_];
  v85 = v84;
  [v85 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v86) = 1148846080;
  [v85 setContentCompressionResistancePriority:0 forAxis:v86];
  LODWORD(v87) = 1148846080;
  [v85 setContentCompressionResistancePriority:1 forAxis:v87];

  *&v7[v83] = v85;
  v88 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelView;
  v89 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v89 setTranslatesAutoresizingMaskIntoConstraints_];
  v90 = sub_20BC90F74(2);

  *&v7[v88] = v90;
  v91 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter;
  v92 = objc_allocWithZone(v80);
  v93 = sub_20BFB39E0(0, 1);
  [v93 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v7[v91] = v93;
  v94 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_layoutGuideConstraints] = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewExpandedConstraints] = v94;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewContractedConstraints] = v94;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint] = 0;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint] = 0;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint] = 0;
  v95 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_celebrationLoadingQueue;
  sub_20B51C88C(0, &qword_281100530);
  sub_20C13C4E4();
  v156.a = v94;
  sub_20B8160E0(&qword_27C7663E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689F0);
  sub_20B816128(&qword_27C7663E8, &unk_27C7689F0);
  sub_20C13DA94();
  (*(v148 + 104))(v147, *MEMORY[0x277D85260], v149);
  *&v7[v95] = sub_20C13D394();
  v96 = v150;
  v97 = v151;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentLayoutGuide] = v151;
  v98 = v154;
  *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_presenter] = v155;
  v99 = &v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricBuilder];
  *v99 = v153;
  v99[1] = v96;
  sub_20B78290C(v98, &v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stringBuilder]);
  v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_platform] = v152;
  v100 = v97;

  swift_unknownObjectRetain();
  if (_UISolariumEnabled())
  {
    v101 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v101 &selRef_count + 2];
    [v101 setClipsToBounds_];
    *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsPlatter] = v101;
    v102 = v101;
    sub_20C13C0A4();
    *&v156.d = sub_20C13C0D4();
    *&v156.tx = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(&v156);
    sub_20C13C0E4();
    sub_20C13D564();
  }

  else
  {
    v103 = [objc_opt_self() smu:10.0 effectWithBlurRadius:?];
    v104 = [objc_opt_self() sessionColorDark];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_20C151490;
    *(v105 + 32) = v103;
    *(v105 + 40) = v104;
    v106 = objc_allocWithZone(MEMORY[0x277D75D68]);
    sub_20B51C88C(0, &qword_27C7663F0);
    v107 = sub_20C13CC54();

    v108 = [v106 initWithBackgroundEffects_];

    [v108 &selRef_count + 2];
    [v108 setClipsToBounds_];
    *&v7[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsPlatter] = v108;
  }

  v109 = type metadata accessor for SessionRingsView();
  v157.receiver = v7;
  v157.super_class = v109;
  v110 = objc_msgSendSuper2(&v157, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v110 setUserInteractionEnabled_];
  v111 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView;
  v112 = [*&v110[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView] ringGroup];
  LODWORD(v113) = 2.0;
  [v112 setScale_];

  v114 = *&v110[v111];
  CGAffineTransformMakeScale(&v156, 0.5, 0.5);
  [v114 setTransform_];
  v150 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsContainer;
  [*&v110[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsContainer] setAlpha_];
  v151 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter;
  [*&v110[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter] setAlpha_];
  v115 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView;
  [v110 addSubview_];
  v116 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_containerView;
  [*&v110[v115] addSubview_];
  v117 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stackView;
  [*&v110[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stackView] addArrangedSubview_];
  [*&v110[v117] addArrangedSubview_];
  [*&v110[v117] addArrangedSubview_];
  v118 = [*&v110[v117] arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v119 = sub_20C13CC74();

  v152 = v116;
  v153 = v111;
  if (v119 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v121 = 0;
    while (1)
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        v122 = MEMORY[0x20F2F5430](v121, v119);
      }

      else
      {
        if (v121 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v122 = *(v119 + 8 * v121 + 32);
      }

      v123 = v122;
      v124 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        break;
      }

      [v122 setAlpha_];

      ++v121;
      if (v124 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:

  v125 = OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_activityRings;
  v126 = v155;
  swift_beginAccess();
  v127 = v126 + v125;
  v128 = v143;
  sub_20B782968(v127, v143);
  v129 = v142;
  v130 = v141;
  v131 = v117;
  if ((*(v142 + 48))(v128, 1, v141) == 1)
  {
    sub_20B7829D8(v128);
  }

  else
  {
    v132 = v139;
    (*(v129 + 32))(v139, v128, v130);
    sub_20B810694(v132, 0);
    (*(v129 + 8))(v132, v130);
  }

  v134 = v151;
  v133 = v152;
  v135 = v150;
  [*&v110[v152] addSubview_];
  v136 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsPlatter;
  [*&v110[v135] addSubview_];
  [*&v110[v136] addSubview_];
  [*&v110[v134] addSubview_];
  [*&v110[v133] addSubview_];
  v137 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainer;
  [*&v110[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainer] addSubview_];
  [*&v110[v137] addSubview_];
  [*&v110[v133] addSubview_];
  *(v155 + 24) = &off_2822AA950;
  swift_unknownObjectWeakAssign();
  sub_20B811100();

  sub_20B815F44(v154);
}

unint64_t sub_20B815F98()
{
  result = qword_27C7663F8;
  if (!qword_27C7663F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7663F8);
  }

  return result;
}

unint64_t sub_20B815FEC()
{
  result = qword_27C7672F0;
  if (!qword_27C7672F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672F0);
  }

  return result;
}

id sub_20B816040()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsContainer];

  return [v2 setAlpha_];
}

uint64_t sub_20B8160E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B816128(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20B8161A8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter);
  [v1 setAlpha_];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

void sub_20B816280()
{
  v1 = v0;
  v2 = sub_20C13D364();
  v87 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v86 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20C13D304();
  MEMORY[0x28223BE20](v84);
  v85 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_notchInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_onNotchSide) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_shouldTuckToSide) = 1;
  v6 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_contentView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_containerView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsView;
  v13 = sub_20C1380F4();
  sub_20C0134C0(v13, v88);
  v14 = v89;
  v15 = v90;
  __swift_project_boxed_opaque_existential_1(v88, v89);
  v16 = (*(v15 + 72))(v14, v15);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(v88);
  *(v1 + v12) = v16;
  v17 = type metadata accessor for SessionSingleMetricView();
  v18 = [objc_allocWithZone(v17) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  v20 = [v19 energyColors];
  if (!v20)
  {
    __break(1u);
  }

  v21 = v20;
  v22 = [v20 nonGradientTextColor];

  if (!v22)
  {
    __break(1u);
  }

  [*&v18[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];

  v23 = [v19 energyColors];
  if (!v23)
  {
    __break(1u);
  }

  v24 = v23;
  v25 = [v23 nonGradientTextColor];

  if (!v25)
  {
    __break(1u);
  }

  v26 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_moveLabel;
  [*&v18[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

  *(v1 + v26) = v18;
  v27 = [objc_allocWithZone(v17) initWithFrame_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v19 briskColors];
  if (!v28)
  {
    __break(1u);
  }

  v29 = v28;
  v30 = [v28 nonGradientTextColor];

  if (!v30)
  {
    __break(1u);
  }

  [*&v27[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];

  v31 = [v19 briskColors];
  if (!v31)
  {
    __break(1u);
  }

  v32 = v31;
  v33 = [v31 nonGradientTextColor];

  if (!v33)
  {
    __break(1u);
  }

  v34 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_exerciseLabel;
  [*&v27[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

  *(v1 + v34) = v27;
  v35 = [objc_allocWithZone(v17) initWithFrame_];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v19 sedentaryColors];
  if (!v36)
  {
    __break(1u);
  }

  v37 = v36;
  v38 = [v36 nonGradientTextColor];

  if (!v38)
  {
    __break(1u);
  }

  [*&v35[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];

  v39 = [v19 sedentaryColors];
  if (!v39)
  {
    __break(1u);
  }

  v40 = v39;
  v41 = [v39 nonGradientTextColor];

  if (!v41)
  {
    __break(1u);
  }

  v42 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_standLabel;
  [*&v35[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

  *(v1 + v42) = v35;
  v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v43 setTranslatesAutoresizingMaskIntoConstraints_];
  [v43 setClipsToBounds_];
  v44 = *MEMORY[0x277CDA138];
  v45 = [v43 layer];
  [v45 setCornerCurve_];

  sub_20C1380F4();
  v46 = objc_opt_self();
  v47 = [v46 mainScreen];
  [v47 nativeBounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v91.origin.x = v49;
  v91.origin.y = v51;
  v91.size.width = v53;
  v91.size.height = v55;
  Width = CGRectGetWidth(v91);
  v57 = [v46 mainScreen];
  [v57 nativeScale];
  v59 = v58;

  v60 = sub_20C138104();
  v61 = sub_20C138104();
  v62 = 30.0;
  if (Width / v59 <= 375.0)
  {
    v62 = 20.0;
  }

  if (v60 == v61)
  {
    v63 = 40.0;
  }

  else
  {
    v63 = v62;
  }

  v64 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsContainer;
  v65 = [v43 layer];
  [v65 setCornerRadius_];

  [v43 setClipsToBounds_];
  *(v1 + v64) = v43;
  v66 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsPlatter;
  v67 = type metadata accessor for SessionElementBackdropView();
  v68 = objc_allocWithZone(v67);
  v69 = sub_20BFB39E0(5, 0);
  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v66) = v69;
  v70 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_stackView;
  v71 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v71 setAlignment_];
  [v71 setAxis_];
  [v71 setDistribution_];
  v72 = v71;
  [v72 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v73) = 1148846080;
  [v72 setContentCompressionResistancePriority:0 forAxis:v73];
  LODWORD(v74) = 1148846080;
  [v72 setContentCompressionResistancePriority:1 forAxis:v74];

  *(v1 + v70) = v72;
  v75 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelView;
  v76 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v76 setTranslatesAutoresizingMaskIntoConstraints_];
  v77 = sub_20BC90F74(2);

  *(v1 + v75) = v77;
  v78 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringClosureLabelPlatter;
  v79 = objc_allocWithZone(v67);
  v80 = sub_20BFB39E0(0, 1);
  [v80 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v78) = v80;
  v81 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_layoutGuideConstraints) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewExpandedConstraints) = v81;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_metricsViewContractedConstraints) = v81;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerRightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionRingsView_ringsContainerHeightConstraint) = 0;
  v82 = OBJC_IVAR____TtC9SeymourUI16SessionRingsView_celebrationLoadingQueue;
  sub_20B51C88C(0, &qword_281100530);
  sub_20C13C4E4();
  v88[0] = v81;
  sub_20B8160E0(&qword_27C7663E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689F0);
  sub_20B816128(&qword_27C7663E8, &unk_27C7689F0);
  sub_20C13DA94();
  (*(v87 + 104))(v86, *MEMORY[0x277D85260], v83);
  *(v1 + v82) = sub_20C13D394();
  sub_20C13DE24();
  __break(1u);
}

void sub_20B816DC4(double a1, uint64_t a2, void **a3, void *a4)
{
  v6 = *a3;
  v7 = objc_allocWithZone(MEMORY[0x277D75520]);
  v8 = v6;
  v9 = [v7 initForTextStyle_];

  v10 = *MEMORY[0x277D74410];
  v11 = *MEMORY[0x277D74368];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemFontOfSize:a1 weight:v10];
  v15 = [v14 fontDescriptor];

  v16 = v13;
  v17 = [v15 fontDescriptorWithDesign_];

  if (v17)
  {

    v15 = v17;
  }

  v18 = [v12 fontWithDescriptor:v15 size:0.0];

  v19 = [v9 scaledFontForFont_];
  *a4 = v19;
}

void *sub_20B816F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v90 = a3;
  v89 = a2;
  v88 = a1;
  v85 = sub_20C13A814();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v86 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_20C132EE4();
  v6 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - v11;
  v13 = sub_20C132254();
  v84 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_containerBuilder;
  sub_20C132454();
  (*(v14 + 104))(v16, *MEMORY[0x277CE9CC0], v13);
  v17[1] = 2;
  sub_20C132ED4();
  sub_20C132104();
  (*(v6 + 8))(v8, v83);
  v18 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v10 + 8))(v12, v9);
  v19 = v85;
  *v17 = 1;
  v20 = sub_20C131F44();
  v21 = &v17[v18[7]];
  *v21 = v20;
  v21[8] = v22;
  v23 = sub_20C131FD4();
  v24 = &v17[v18[8]];
  *v24 = v23;
  v24[8] = v25;
  v26 = sub_20C131FE4();
  v27 = &v17[v18[9]];
  *v27 = v26;
  *(v27 + 1) = v28;
  v27[20] = v29;
  *(v27 + 4) = v30;
  v27[21] = v31;
  v32 = sub_20C132384();
  v33 = &v17[v18[10]];
  *v33 = v32 & 0xFFFFFFFFFFLL;
  v33[12] = v34;
  *(v33 + 2) = v35;
  v33[13] = 0;
  v36 = sub_20C132004();
  v38 = v37;
  v40 = v39;
  LOBYTE(v6) = v41;
  (*(v14 + 8))(v16, v84);
  v42 = &v17[v18[11]];
  v43 = v86;
  *v42 = v36;
  *(v42 + 1) = v38;
  *(v42 + 2) = v40;
  v44 = v87;
  v42[24] = v6;
  *(v4 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  v45 = *(v44 + 104);
  v45(v43, *MEMORY[0x277D4EEF8], v19);
  if (qword_27C760B10 != -1)
  {
    swift_once();
  }

  v93 = qword_27C79C100;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E50);
  sub_20B7825DC();
  sub_20B7826BC();
  sub_20C13A384();
  v45(v43, *MEMORY[0x277D4F080], v19);
  LOBYTE(v93) = 0;
  sub_20C13A384();
  v45(v43, *MEMORY[0x277D4EF50], v19);
  LOBYTE(v93) = 1;
  sub_20C13A384();
  v46 = v89;
  v4[2] = v88;
  v4[3] = v46;
  v4[5] = v90;
  v47 = qword_27C760730;

  if (v47 != -1)
  {
    swift_once();
  }

  type metadata accessor for StackedTextNodeBuilder();
  swift_allocObject();
  v48 = sub_20BD7F468();
  v4[4] = v48;
  v49 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v48 + v49) = 0;
  v50 = sub_20C1323F4();
  LOBYTE(v49) = v51;
  v53 = BYTE4(v52);
  *&v92 = v51;
  *(&v92 + 1) = v52;
  v54 = *(&v92 + 4);
  v55 = *(v4[3] + 32) + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  v56 = v55 + v18[9];
  v57 = *v56;
  v58 = *(v56 + 8);
  *v56 = v50;
  *(v56 + 8) = v49 | (v54 << 32);
  v59 = *(v56 + 21);
  *(v56 + 21) = 0;
  v60 = *(v56 + 16);
  v56 += 16;
  v61 = v60 | (*(v56 + 4) << 32);
  *v56 = HIDWORD(v54);
  *(v56 + 4) = v53;
  sub_20B81DC6C(v57, v58, v61, v59);
  v62 = sub_20C1323F4();
  LOBYTE(v49) = v63;
  v65 = BYTE4(v64);
  *&v91 = v63;
  *(&v91 + 1) = v64;
  v66 = *(&v91 + 4);

  v67 = v4[2] + OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
  swift_beginAccess();
  v68 = v67 + v18[9];
  v69 = *v68;
  v70 = *(v68 + 8);
  *v68 = v62;
  *(v68 + 8) = v49 | (v66 << 32);
  v71 = *(v68 + 21);
  *(v68 + 21) = 0;
  v72 = *(v68 + 16);
  v68 += 16;
  v73 = v72 | (*(v68 + 4) << 32);
  *v68 = HIDWORD(v66);
  *(v68 + 4) = v65;
  sub_20B81DC6C(v69, v70, v73, v71);
  v74 = v4[2];
  v75 = OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v74 + v75) = 0;
  v76 = (v4[5] + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder);
  swift_beginAccess();
  *v76 = 0;
  v77 = &v76[v18[8]];
  v78 = *v77;
  *v77 = 0;
  v79 = v77[8];
  v77[8] = 0;

  sub_20B584060(v78, v79);

  v80 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v4 + v80) = 0;
  *(v4[2] + 24) = &off_2822AAF48;
  swift_unknownObjectWeakAssign();
  *(v4[4] + 24) = &off_2822AAF48;
  swift_unknownObjectWeakAssign();
  *(v4[3] + 24) = &off_2822AAF48;
  swift_unknownObjectWeakAssign();
  *(v4[5] + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent + 8) = &off_2822AAF48;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_20B81780C()
{

  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent);
  v1 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__scottyFeatures;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__externalOverlayAttributedStringsEnabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__reducedOverlayAnimations, v4);
  return v0;
}

uint64_t sub_20B817934()
{
  sub_20B81780C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionOverlayNodeBuilder()
{
  result = qword_27C766430;
  if (!qword_27C766430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8179E0()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20B817B00();
    if (v1 <= 0x3F)
    {
      sub_20B52432C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B817B00()
{
  if (!qword_27C766440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764E50);
    sub_20B7825DC();
    sub_20B7826BC();
    v0 = sub_20C13A374();
    if (!v1)
    {
      atomic_store(v0, &qword_27C766440);
    }
  }
}

uint64_t sub_20B817B84@<X0>(uint64_t a1@<X8>)
{
  v170 = a1;
  v161 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v161);
  v169 = &v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_20C13BB84();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v164 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v165 = &v159 - v5;
  v6 = sub_20C132264();
  v186 = *(v6 - 8);
  v187 = v6;
  MEMORY[0x28223BE20](v6);
  v162 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v171 = &v159 - v9;
  MEMORY[0x28223BE20](v10);
  v174 = &v159 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v159 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v188 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v168 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v175 = &v159 - v17;
  MEMORY[0x28223BE20](v18);
  v160 = &v159 - v19;
  MEMORY[0x28223BE20](v20);
  v190 = &v159 - v21;
  MEMORY[0x28223BE20](v22);
  v163 = &v159 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v159 - v25;
  MEMORY[0x28223BE20](v27);
  v176 = &v159 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v159 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766448);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v159 - v35;
  v37 = *(v33 + 16);
  v177 = v1;
  v179 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__scottyFeatures;
  v180 = v37;
  v181 = v33 + 16;
  (v37)(&v159 - v35, v1 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__scottyFeatures, v32, v34);
  sub_20C13A344();
  v38 = *(v33 + 8);
  v182 = v36;
  v183 = v33 + 8;
  v184 = v32;
  v178 = v38;
  v38(v36, v32);
  v39 = *(v194 + 16);
  v40 = (v194 + 32);
  while (2)
  {
    if (v39)
    {
      switch(*v40)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
          v41 = sub_20C13DFF4();

          ++v40;
          --v39;
          if ((v41 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      sub_20C0F138C(v31);
      v42 = v185;
      (*(v188 + 16))(v14, v31, v185);
      (*(v186 + 104))(v14, *MEMORY[0x277CE9CE8], v187);
      v43 = sub_20BC07444(0, 1, 1, MEMORY[0x277D84F90]);
      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = sub_20BC07444(v44 > 1, v45 + 1, 1, v43);
      }

      (*(v188 + 8))(v31, v42);
      v43[2] = v45 + 1;
      v46 = *(v186 + 32);
      v47 = (*(v186 + 80) + 32) & ~*(v186 + 80);
      v189 = v43;
      v46(v43 + v47 + *(v186 + 72) * v45, v14, v187);
    }

    else
    {

      v189 = MEMORY[0x277D84F90];
    }

    break;
  }

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  v50 = v177;
  v167 = v26;
  do
  {
    v52 = 0xE700000000000000;
    v53 = 0x7261426E727562;
    switch(byte_282287620[v48 + 32])
    {
      case 1:
        goto LABEL_26;
      case 2:
        v54 = 0x636E65646163;
        goto LABEL_25;
      case 3:
        v52 = 0xE800000000000000;
        v53 = 0x65636E6174736964;
        goto LABEL_26;
      case 4:
        v52 = 0xE600000000000000;
        v53 = 0x796772656E65;
        goto LABEL_26;
      case 5:
        v53 = 0x7461527472616568;
        v52 = 0xE900000000000065;
        goto LABEL_26;
      case 7:
        v52 = 0xE900000000000079;
        v53 = 0x7469736E65746E69;
        goto LABEL_26;
      case 8:
        v54 = 0x6E696C636E69;
LABEL_25:
        v53 = v54 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        goto LABEL_26;
      case 9:
        v52 = 0xE300000000000000;
        v53 = 7172210;
        goto LABEL_26;
      case 0xA:
        v52 = 0xE900000000000072;
        v53 = 0x6F74617261706573;
        goto LABEL_26;
      case 0xB:
        v53 = 7172211;
        v52 = 0xE300000000000000;
        goto LABEL_26;
      case 0xC:
        v52 = 0xE800000000000000;
        v53 = 0x73736572676F7270;
        goto LABEL_26;
      case 0xD:
        v52 = 0xE500000000000000;
        v53 = 0x72656D6974;
LABEL_26:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_20BC05BA4(0, *(v49 + 2) + 1, 1, v49);
        }

        v56 = *(v49 + 2);
        v55 = *(v49 + 3);
        if (v56 >= v55 >> 1)
        {
          v49 = sub_20BC05BA4((v55 > 1), v56 + 1, 1, v49);
        }

        *(v49 + 2) = v56 + 1;
        v51 = &v49[16 * v56];
        *(v51 + 4) = v53;
        *(v51 + 5) = v52;
        break;
      default:
        break;
    }

    ++v48;
  }

  while (v48 != 14);
  v57 = v182;
  v58 = v184;
  v180(v182, v50 + v179, v184);
  sub_20C13A344();
  isUniquelyReferenced_nonNull_native = v178(v57, v58);
  v60 = *(v194 + 16);
  v166 = v194;
  if (v60)
  {
    v61 = (v194 + 32);
    v62 = MEMORY[0x277D84F90];
    do
    {
      v65 = *v61++;
      v64 = v65;
      v66 = 0xED000073676E6952;
      v67 = 0x7974697669746361;
      switch(v65)
      {
        case 1:
          v66 = 0xE700000000000000;
          v67 = 0x7261426E727562;
          break;
        case 2:
          v66 = 0xE700000000000000;
          v68 = 0x636E65646163;
          goto LABEL_48;
        case 3:
          v66 = 0xE800000000000000;
          v67 = 0x65636E6174736964;
          break;
        case 4:
          v66 = 0xE600000000000000;
          v67 = 0x796772656E65;
          break;
        case 5:
          v67 = 0x7461527472616568;
          v66 = 0xE900000000000065;
          break;
        case 6:
          v66 = 0xE900000000000074;
          v67 = 0x6867696C68676968;
          break;
        case 7:
          v66 = 0xE900000000000079;
          v67 = 0x7469736E65746E69;
          break;
        case 8:
          v66 = 0xE700000000000000;
          v68 = 0x6E696C636E69;
LABEL_48:
          v67 = v68 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 9:
          v66 = 0xE300000000000000;
          v67 = 7172210;
          break;
        case 10:
          v66 = 0xE900000000000072;
          v67 = 0x6F74617261706573;
          break;
        case 11:
          v67 = 7172211;
          v66 = 0xE300000000000000;
          break;
        case 12:
          v66 = 0xE800000000000000;
          v67 = 0x73736572676F7270;
          break;
        case 13:
          v66 = 0xE500000000000000;
          v67 = 0x72656D6974;
          break;
        case 14:
          v67 = 0x617254636973756DLL;
          v66 = 0xEA00000000006B63;
          break;
        default:
          break;
      }

      v194 = v67;
      v195 = v66;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      *(&v159 - 2) = &v194;
      v69 = sub_20B79692C(sub_20B606650, (&v159 - 4), v49);

      if (v69)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v193[0] = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_20BB5E0E8(0, *(v62 + 16) + 1, 1);
          v62 = v193[0];
        }

        v71 = *(v62 + 16);
        v70 = *(v62 + 24);
        if (v71 >= v70 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_20BB5E0E8((v70 > 1), v71 + 1, 1);
          v62 = v193[0];
        }

        *(v62 + 16) = v71 + 1;
        *(v62 + v71 + 32) = v64;
      }

      --v60;
      v63 = v190;
    }

    while (v60);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
    v63 = v190;
  }

  v72 = *(v62 + 16);

  v73 = v167;
  if (v72)
  {
    v74 = v177;
    v75 = v176;
    sub_20BEF1788(v176);
    v76 = *(v188 + 16);
    v77 = v174;
    v78 = v185;
    v76(v174, v75, v185);
    (*(v186 + 104))(v77, *MEMORY[0x277CE9CE8], v187);
    v79 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_20BC07444(0, v79[2] + 1, 1, v79);
    }

    v81 = v79[2];
    v80 = v79[3];
    if (v81 >= v80 >> 1)
    {
      v79 = sub_20BC07444(v80 > 1, v81 + 1, 1, v79);
    }

    v79[2] = v81 + 1;
    v82 = *(v186 + 32);
    v83 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v189 = v79;
    v82(v79 + v83 + *(v186 + 72) * v81, v174, v187);
    v84 = v165;
    sub_20C13B554();
    v76(v73, v176, v78);
    v85 = sub_20C13BB74();
    v86 = sub_20C13D1F4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v193[0] = v88;
      *v87 = 136315138;
      v194 = sub_20C131FB4();
      LODWORD(v195) = v89;
      BYTE4(v195) = v90;
      BYTE5(v195) = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766458);
      v92 = sub_20C13C9D4();
      v94 = v93;
      v95 = v73;
      v96 = *(v188 + 8);
      v96(v95, v78);
      v97 = sub_20B51E694(v92, v94, v193);
      v63 = v190;

      *(v87 + 4) = v97;
      _os_log_impl(&dword_20B517000, v85, v86, "Metrics Platter Size: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      v98 = v88;
      v74 = v177;
      MEMORY[0x20F2F6A40](v98, -1, -1);
      MEMORY[0x20F2F6A40](v87, -1, -1);

      (*(v172 + 8))(v165, v173);
      v96(v176, v78);
    }

    else
    {

      v99 = *(v188 + 8);
      v99(v73, v78);
      (*(v172 + 8))(v84, v173);
      v99(v176, v78);
    }
  }

  else
  {
    v74 = v177;
  }

  v100 = v182;
  v101 = v184;
  v180(v182, v74 + v179, v184);
  sub_20C13A344();
  v178(v100, v101);
  v102 = *(v194 + 16);
  v103 = (v194 + 32);
  while (2)
  {
    if (v102)
    {
      switch(*v103)
      {
        case 6:

          break;
        default:
          v104 = sub_20C13DFF4();

          ++v103;
          --v102;
          if ((v104 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v105 = v163;
      sub_20BD7ECF8(v163);
      v106 = *(v188 + 16);
      v107 = v171;
      v108 = v185;
      v106(v171, v105, v185);
      (*(v186 + 104))(v107, *MEMORY[0x277CE9CE8], v187);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_20BC07444(0, v189[2] + 1, 1, v189);
      }

      v110 = v189[2];
      v109 = v189[3];
      if (v110 >= v109 >> 1)
      {
        v189 = sub_20BC07444(v109 > 1, v110 + 1, 1, v189);
      }

      v111 = v189;
      v189[2] = v110 + 1;
      (*(v186 + 32))(v111 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v110, v171, v187);
      v112 = v164;
      sub_20C13B554();
      v106(v63, v105, v108);
      v113 = sub_20C13BB74();
      v114 = sub_20C13D1F4();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = v108;
        v117 = swift_slowAlloc();
        v193[0] = v117;
        *v115 = 136315138;
        v194 = sub_20C131FE4();
        v195 = v118;
        v196 = v119;
        v197 = v120;
        v198 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766450);
        v122 = sub_20C13C9D4();
        v123 = v63;
        v125 = v124;
        v126 = *(v188 + 8);
        v126(v123, v116);
        v127 = sub_20B51E694(v122, v125, v193);

        *(v115 + 4) = v127;
        _os_log_impl(&dword_20B517000, v113, v114, "Highlight Node Position: %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v117);
        MEMORY[0x20F2F6A40](v117, -1, -1);
        MEMORY[0x20F2F6A40](v115, -1, -1);

        (*(v172 + 8))(v164, v173);
        v126(v163, v116);
      }

      else
      {

        v128 = *(v188 + 8);
        v128(v63, v108);
        (*(v172 + 8))(v112, v173);
        v128(v105, v108);
      }
    }

    else
    {
    }

    break;
  }

  v129 = v182;
  v130 = v184;
  v180(v182, v74 + v179, v184);
  sub_20C13A344();
  v178(v129, v130);
  v131 = *(v194 + 16);
  v132 = (v194 + 32);
  while (2)
  {
    if (v131)
    {
      switch(*v132)
      {
        case 0xE:

          break;
        default:
          v133 = sub_20C13DFF4();

          ++v132;
          --v131;
          if ((v133 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v136 = *(v74 + 16) + OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
      swift_beginAccess();
      v137 = v136 + *(v161 + 32);
      v138 = *v137;
      v139 = *(v137 + 8);
      sub_20B7E2BC0(*v137, v139);
      sub_20B8197F8(v138, v139);
      sub_20B584060(v138, v139);
      sub_20C1323F4();
      v193[0] = v140;
      v193[1] = v141;
      v142 = v175;
      sub_20BE4D37C(v175);
      v143 = v160;
      v144 = v185;
      sub_20C131F54();
      v145 = v188;
      v146 = *(v188 + 8);
      v146(v142, v144);
      v147 = v162;
      (*(v145 + 16))(v162, v143, v144);
      (*(v186 + 104))(v147, *MEMORY[0x277CE9CE8], v187);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_20BC07444(0, v189[2] + 1, 1, v189);
      }

      v149 = v189[2];
      v148 = v189[3];
      if (v149 >= v148 >> 1)
      {
        v189 = sub_20BC07444(v148 > 1, v149 + 1, 1, v189);
      }

      v150 = v143;
      v135 = v185;
      v146(v150, v185);
      v151 = v189;
      v189[2] = v149 + 1;
      (*(v186 + 32))(v151 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v149, v147, v187);
      v134 = v169;
    }

    else
    {

      v134 = v169;
      v135 = v185;
    }

    break;
  }

  v152 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_containerBuilder;
  swift_beginAccess();
  sub_20B6B5ADC(v74 + v152, v134);
  v153 = v168;
  sub_20B7E27F8(v168);

  sub_20B593250(v134);
  sub_20C132404();
  v191 = v154;
  v192 = v155;
  v156 = v175;
  sub_20C131F54();
  v157 = *(v188 + 8);
  v157(v153, v135);
  sub_20C132384();
  sub_20C131FF4();
  return (v157)(v156, v135);
}

uint64_t sub_20B8195CC@<X0>(uint64_t a1@<X8>)
{
  sub_20B817B84(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_20B81964C(uint64_t a1, uint64_t a2)
{
  v4 = BYTE5(a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  if (!v4)
  {
    return a1 & 0xFFFFFFFFFFLL;
  }

  v13 = a1;
  sub_20B81DC3C(a1, a2, BYTE5(a2));
  sub_20BEF2548(&v13);
  v9 = *(v13 + 2);
  if (v9)
  {
    (*(v6 + 16))(v8, &v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v9 - 1)], v5);

    sub_20C1324A4();
    v10 = v13 | (BYTE4(v13) << 32);
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    return 0xFF00000000;
  }

  return v10;
}

unint64_t sub_20B8197F8(char *a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  if (v4)
  {
    v13 = a1;
    sub_20B7E2BC0(a1, a2);
    sub_20B81C46C(&v13);
    v9 = *(v13 + 2);
    if (!v9)
    {

      LODWORD(a1) = 0;
      v10 = 1;
      return a1 | (v10 << 32);
    }

    (*(v6 + 16))(v8, &v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v9 - 1)], v5);

    sub_20C1324A4();
    LODWORD(a1) = v13;
    (*(v6 + 8))(v8, v5);
  }

  v10 = 0;
  return a1 | (v10 << 32);
}

uint64_t sub_20B819990()
{
  v0 = sub_20BA956C8();
  v1 = sub_20BE4D234();
  sub_20B8D9970(v1);
  return v0;
}

uint64_t sub_20B8199E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B819A34()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B819AAC(uint64_t a1, char **a2, double a3)
{
  v4 = v3;
  v97 = 0;
  v105 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v92 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v92 - v15;
  (*(v13 + 16))(&v92 - v15, v4 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__reducedOverlayAnimations, v12, v14);
  sub_20C13A344();
  (*(v13 + 8))(v16, v12);
  if (v104)
  {
    a3 = 0.0;
  }

  v99 = *(v4 + 24);
  v17 = *(a1 + 32);
  v18 = v17 & 0x3F;
  v19 = 1;
  v20 = ((1 << v17) + 63) >> 6;
  v21 = (8 * v20);

  v95 = v4;
  v96 = v8;
  v94 = v9;
  if (v18 <= 0xD)
  {
    goto LABEL_4;
  }

  while (1)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_4:
      MEMORY[0x28223BE20](v22);
      bzero(&v92 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v21);
      v23 = 0;
      v24 = 0;
      v25 = v19 << *(a1 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(a1 + 56);
      while (v27)
      {
        v28 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v29 = v28 | (v24 << 6);
LABEL_14:
        v32 = *(*(a1 + 48) + v29);
        if (v32 <= 0xD && ((v19 << v32) & 0x3FBE) != 0)
        {
          *(&v92 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)) = (*(&v92 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)) | (v19 << v29));
          v33 = __OFADD__(v23++, 1);
          if (v33)
          {
            __break(1u);
LABEL_19:
            v34 = sub_20BC0EA58((&v92 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)), v20, v23, a1);
            goto LABEL_20;
          }
        }
      }

      v30 = v24;
      while (1)
      {
        v24 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v24 >= ((v25 + 63) >> 6))
        {
          goto LABEL_19;
        }

        v31 = *(a1 + 56 + 8 * v24);
        ++v30;
        if (v31)
        {
          v27 = (v31 - 1) & v31;
          v29 = __clz(__rbit64(v31)) | (v24 << 6);
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    v19 = swift_slowAlloc();

    v88 = v97;
    v89 = sub_20B81DBAC(v19, v20, a1, sub_20B81DC84);
    v97 = v88;
    if (v88)
    {
      break;
    }

    v34 = v89;
    swift_bridgeObjectRelease_n();
    MEMORY[0x20F2F6A40](v19, -1, -1);
LABEL_20:
    v100 = a1;
    v35 = *(a2 + 32);
    v36 = v35 & 0x3F;
    v20 = ((1 << v35) + 63) >> 6;
    v19 = 8 * v20;

    v101 = a2;
    if (v36 <= 0xD)
    {
      goto LABEL_21;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_21:
      v38 = a2;
      a2 = &v92;
      MEMORY[0x28223BE20](v37);
      v21 = &v92 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v21, v19);
      v39 = 0;
      v40 = 0;
      v41 = 1 << *(v38 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & v38[7];
      while (v43)
      {
        v44 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v45 = v44 | (v40 << 6);
LABEL_31:
        v48 = v101[6][v45];
        if (v48 <= 0xD && ((1 << v48) & 0x3FBE) != 0)
        {
          *&v21[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
          v33 = __OFADD__(v39++, 1);
          if (v33)
          {
            __break(1u);
LABEL_36:
            v21 = sub_20BC0EA58((&v92 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0)), v20, v39, v101);
            goto LABEL_37;
          }
        }
      }

      v46 = v40;
      while (1)
      {
        v40 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v40 >= ((v41 + 63) >> 6))
        {
          goto LABEL_36;
        }

        v47 = v38[v40 + 7];
        ++v46;
        if (v47)
        {
          v43 = (v47 - 1) & v47;
          v45 = __clz(__rbit64(v47)) | (v40 << 6);
          goto LABEL_31;
        }
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v19 = swift_slowAlloc();

    v90 = v97;
    v91 = sub_20B81DBAC(v19, v20, a2, sub_20B81DC84);
    v97 = v90;
    if (v90)
    {
      break;
    }

    v21 = v91;
    swift_bridgeObjectRelease_n();
    MEMORY[0x20F2F6A40](v19, -1, -1);
LABEL_37:
    v93 = v11;
    v49 = v99;
    sub_20BA958F0(v34, v21, a3);

    v50 = *(v49 + 48);
    a2 = *(v50 + 16);

    if (!a2)
    {
      v20 = MEMORY[0x277D84F90];
LABEL_51:

      v57 = *(v20 + 16);

      v58 = *(v99 + 32);
      v59 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
      swift_beginAccess();
      *(v58 + v59) = v57 == 0;
      v11 = v93;
      sub_20BEF1788(v93);
      v60 = 0;
      if (v57)
      {
        a1 = v96;
        v61 = sub_20C131FB4();
        v63 = v62;
        v64 = v62 >> 40;
        v65 = sub_20B81964C(v61, v62 & 0xFFFFFFFFFFFFLL);
        v67 = v66;
        sub_20B81DC54(v61, v63, v64);
        v68 = v100;
        if ((~v65 & 0xFF00000000) != 0)
        {
          a2 = v101;
          v69 = v95;
          if ((v67 & 0xFF00000000) == 0)
          {
            v60 = v67;
          }
        }

        else
        {
          a2 = v101;
          v69 = v95;
        }
      }

      else
      {
        v69 = v95;
        a1 = v96;
        v68 = v100;
        a2 = v101;
      }

      v19 = v68 + 56;
      v70 = 1 << *(v68 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v72 = v71 & *(v68 + 56);
      v20 = (v70 + 63) >> 6;

      v74 = 0;
      while (v72)
      {
        v75 = v74;
LABEL_65:
        v76 = __clz(__rbit64(v72));
        v72 &= v72 - 1;
        v103 = *(*(v100 + 48) + (v76 | (v75 << 6)));
        LODWORD(v73) = v60;
        sub_20B81A4A0(&v103, v69, v73, a3);
      }

      while (1)
      {
        v75 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_82;
        }

        if (v75 >= v20)
        {

          v19 = (a2 + 7);
          v77 = 1 << *(a2 + 32);
          v78 = -1;
          if (v77 < 64)
          {
            v78 = ~(-1 << v77);
          }

          v79 = v78 & a2[7];
          v20 = (v77 + 63) >> 6;

          v81 = 0;
          while (v79)
          {
            v82 = v81;
LABEL_75:
            v83 = __clz(__rbit64(v79));
            v79 &= v79 - 1;
            v103 = a2[6][v83 | (v82 << 6)];
            LODWORD(v80) = v60;
            sub_20B81AEDC(&v103, v69, v80, a3);
          }

          while (1)
          {
            v82 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_83;
            }

            if (v82 >= v20)
            {

              v84 = v69 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v85 = *(v84 + 8);
                ObjectType = swift_getObjectType();
                (*(v85 + 8))(ObjectType, v85);
                swift_unknownObjectRelease();
              }

              return (*(v94 + 8))(v11, a1);
            }

            v79 = *(v19 + 8 * v82);
            ++v81;
            if (v79)
            {
              v81 = v82;
              goto LABEL_75;
            }
          }
        }

        v72 = *(v19 + 8 * v75);
        ++v74;
        if (v72)
        {
          v74 = v75;
          goto LABEL_65;
        }
      }
    }

    v11 = 0;
    a1 = v50 + 32;
    v92 = a2 - 1;
    v20 = MEMORY[0x277D84F90];
LABEL_39:
    v98 = v20;
    v51 = v11;
    while (v51 < *(v50 + 16))
    {
      v102 = *(a1 + 16 * v51);
      v11 = v51 + 1;
      v20 = v102;
      v19 = swift_getObjectType();
      v21 = *(&v102 + 1);
      v52 = *(*(&v102 + 1) + 40);
      swift_unknownObjectRetain();
      if ((v52(v19, v21) & 1) == 0)
      {
        v20 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E118(0, *(v20 + 16) + 1, 1);
          v20 = v104;
        }

        v54 = v102;
        v56 = *(v20 + 16);
        v55 = *(v20 + 24);
        v19 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          sub_20BB5E118((v55 > 1), v56 + 1, 1);
          v54 = v102;
          v20 = v104;
        }

        *(v20 + 16) = v19;
        *(v20 + 16 * v56 + 32) = v54;
        if (v92 != v51)
        {
          goto LABEL_39;
        }

        goto LABEL_51;
      }

      swift_unknownObjectRelease();
      ++v51;
      if (a2 == v11)
      {
        v20 = v98;
        goto LABEL_51;
      }
    }

LABEL_84:
    __break(1u);
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x20F2F6A40](v19, -1, -1);
  __break(1u);
  return result;
}

void sub_20B81A4A0(_BYTE *a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_20C13BB84();
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = &v90 - v13;
  v14 = sub_20C132EE4();
  MEMORY[0x28223BE20](v14 - 8);
  v105 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766468);
  v100 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v90 - v17;
  v19 = sub_20C1321F4();
  MEMORY[0x28223BE20](v19);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v90 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v90 - v26;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v90 - v32;
  if (((1 << *a1) & 0x3FBE) == 0)
  {
    if (*a1)
    {
      v43 = v29;
      v44 = v30;
      v98 = sub_20C1323F4();
      v46 = v45;
      *v115 = v45;
      *&v115[8] = v47;
      v97 = *&v115[4];
      v48 = *(a2 + 32);
      LODWORD(v45) = *MEMORY[0x277CE9C68];
      v96 = v44;
      v49 = *(v44 + 104);
      v95 = v45;
      v99 = v43;
      v50 = v47;
      v94 = v44 + 104;
      v93 = v49;
      v49(v33);
      v51 = v48 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder;
      swift_beginAccess();
      v92 = v46;
      v91 = HIDWORD(v50);
      if (a4 <= 0.0)
      {
        v57 = 0;
        v55 = v46 | (v97 << 32);
        v56 = v50 & 0xFFFFFFFF00000000 | HIDWORD(v97);
        v54 = v98;
      }

      else
      {
        v111 = v98;
        v112 = v46;
        v113 = v97;
        v114 = BYTE4(v50);
        v108 = xmmword_20C15C390;
        v110 = 0;
        v109 = 0;
        (*(v96 + 16))(v27, v33, v99);
        sub_20C132ED4();
        sub_20B7E2548();
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766478);
        v52 = v100;
        v53 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_20C14F980;
        (*(v52 + 32))(v54 + v53, v18, v16);
        v55 = 0;
        v56 = 0;
        v57 = 1;
      }

      v64 = v99;
      v99 = type metadata accessor for ContainerNodeBuilder();
      v65 = v51 + *(v99 + 36);
      v66 = *v65;
      v67 = *(v65 + 8);
      *v65 = v54;
      *(v65 + 8) = v55;
      v68 = *(v65 + 21);
      v69 = *(v65 + 16);
      *(v65 + 21) = v57;
      v70 = v69 | (*(v65 + 20) << 32);
      *(v65 + 16) = v56;
      *(v65 + 20) = BYTE4(v56);
      sub_20B81DC6C(v66, v67, v70, v68);
      swift_endAccess();
      v71 = v96;
      v72 = *(v96 + 8);
      v72(v33, v64);
      v93(v24, v95, v64);
      v100 = v51;
      swift_beginAccess();
      v73 = 1065353216;
      if (a4 <= 0.0)
      {
        v74 = 0;
      }

      else
      {
        LODWORD(v108) = 1065353216;
        LODWORD(v111) = 0;
        v74 = 1;
        BYTE4(v111) = 1;
        (*(v71 + 16))(v27, v24, v64);
        sub_20C132ED4();
        v75 = v101;
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
        v76 = v102;
        v77 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_20C14F980;
        (*(v76 + 32))(v73 + v77, v75, v103);
      }

      v78 = v104;
      v79 = v98;
      v80 = v100 + *(v99 + 32);
      v81 = *v80;
      *v80 = v73;
      v82 = *(v80 + 8);
      *(v80 + 8) = v74;
      sub_20B584060(v81, v82);
      swift_endAccess();
      v72(v24, v64);
      sub_20C13B554();
      v83 = sub_20C13BB74();
      v84 = sub_20C13D1F4();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v111 = v86;
        *v85 = 136446210;
        *v115 = v79;
        v115[8] = v92;
        *&v115[12] = v97;
        v116 = v91;
        v87 = sub_20C13C9D4();
        v89 = sub_20B51E694(v87, v88, &v111);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_20B517000, v83, v84, "Showing highlight at %{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x20F2F6A40](v86, -1, -1);
        MEMORY[0x20F2F6A40](v85, -1, -1);
      }

      (*(v106 + 8))(v78, v107);
    }

    else
    {
      v34 = *(a2 + 16);
      v35 = v29;
      v36 = v30;
      (*(v30 + 104))(v21, *MEMORY[0x277CE9C68], v29, v31);
      v37 = v34 + OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
      swift_beginAccess();
      v38 = 1065353216;
      if (a4 <= 0.0)
      {
        v39 = 0;
      }

      else
      {
        LODWORD(v108) = 1065353216;
        LODWORD(v111) = 0;
        v39 = 1;
        BYTE4(v111) = 1;
        (*(v36 + 16))(v27, v21, v35);
        sub_20C132ED4();
        v40 = v101;
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
        v99 = v35;
        v41 = v102;
        v42 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_20C14F980;
        (*(v41 + 32))(v38 + v42, v40, v103);
        v35 = v99;
      }

      v58 = v37 + *(type metadata accessor for ContainerNodeBuilder() + 32);
      v59 = *v58;
      *v58 = v38;
      v60 = *(v58 + 8);
      *(v58 + 8) = v39;
      sub_20B584060(v59, v60);
      swift_endAccess();
      (*(v36 + 8))(v21, v35);
      sub_20C13B554();
      v61 = sub_20C13BB74();
      v62 = sub_20C13D1F4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_20B517000, v61, v62, "Showing Activity Rings", v63, 2u);
        MEMORY[0x20F2F6A40](v63, -1, -1);
      }

      (*(v106 + 8))(v9, v107);
    }
  }
}

void sub_20B81AEDC(_BYTE *a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_20C13BB84();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x28223BE20](v12);
  v103 = &v92 - v13;
  v14 = sub_20C132EE4();
  MEMORY[0x28223BE20](v14 - 8);
  v107 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766468);
  v102 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v92 - v17;
  v19 = sub_20C1321F4();
  MEMORY[0x28223BE20](v19);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v92 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v92 - v26;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v92 - v32;
  if (((1 << *a1) & 0x3FBE) == 0)
  {
    if (*a1)
    {
      v44 = v29;
      v45 = v30;
      v100 = sub_20C1323F4();
      v47 = v46;
      *v117 = v46;
      *&v117[8] = v48;
      v99 = *&v117[4];
      v49 = *(a2 + 32);
      LODWORD(v46) = *MEMORY[0x277CE9C68];
      v98 = v45;
      v50 = *(v45 + 104);
      v96 = v46;
      v93 = v44;
      v51 = v48;
      v95 = v45 + 104;
      v94 = v50;
      v50(v33);
      v101 = v49 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder;
      swift_beginAccess();
      v97 = v47;
      v92 = HIDWORD(v51);
      if (a4 <= 0.0)
      {
        v58 = 0;
        v56 = v47 | (v99 << 32);
        v57 = v51 & 0xFFFFFFFF00000000 | HIDWORD(v99);
        v55 = v100;
        v52 = v93;
      }

      else
      {
        v113 = v100;
        v114 = v47;
        v115 = v99;
        v116 = BYTE4(v51);
        v110 = xmmword_20C15C390;
        v112 = 0;
        v111 = 0;
        v52 = v93;
        (*(v98 + 16))(v27, v33, v93);
        sub_20C132ED4();
        sub_20B7E2548();
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766478);
        v53 = v102;
        v54 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_20C14F980;
        (*(v53 + 32))(v55 + v54, v18, v16);
        v56 = 0;
        v57 = 0;
        v58 = 1;
      }

      v102 = type metadata accessor for ContainerNodeBuilder();
      v65 = v101 + *(v102 + 36);
      v66 = *v65;
      v67 = *(v65 + 8);
      *v65 = v55;
      *(v65 + 8) = v56;
      v68 = *(v65 + 21);
      v69 = *(v65 + 16);
      *(v65 + 21) = v58;
      v70 = v69 | (*(v65 + 20) << 32);
      *(v65 + 16) = v57;
      *(v65 + 20) = BYTE4(v57);
      sub_20B81DC6C(v66, v67, v70, v68);
      swift_endAccess();
      v71 = v98;
      v72 = *(v98 + 8);
      v72(v33, v52);
      v94(v24, v96, v52);
      swift_beginAccess();
      if (a4 <= 0.0)
      {
        v78 = 0;
        v73 = 0;
        v79 = v106;
        v74 = v52;
      }

      else
      {
        LODWORD(v110) = 0;
        LODWORD(v113) = 0;
        v73 = 1;
        BYTE4(v113) = 1;
        (*(v71 + 16))(v27, v24, v52);
        v74 = v52;
        sub_20C132ED4();
        v75 = v103;
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
        v76 = v104;
        v77 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_20C14F980;
        (*(v76 + 32))(v78 + v77, v75, v105);
        v79 = v106;
      }

      v80 = v100;
      v81 = v97;
      v82 = v101 + *(v102 + 32);
      v83 = *v82;
      *v82 = v78;
      v84 = *(v82 + 8);
      *(v82 + 8) = v73;
      sub_20B584060(v83, v84);
      swift_endAccess();
      v72(v24, v74);
      sub_20C13B554();
      v85 = sub_20C13BB74();
      v86 = sub_20C13D1F4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v113 = v88;
        *v87 = 136446210;
        *v117 = v80;
        v117[8] = v81;
        *&v117[12] = v99;
        v118 = v92;
        v89 = sub_20C13C9D4();
        v91 = sub_20B51E694(v89, v90, &v113);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_20B517000, v85, v86, "Hiding highlight at %{public}s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x20F2F6A40](v88, -1, -1);
        MEMORY[0x20F2F6A40](v87, -1, -1);
      }

      (*(v108 + 8))(v79, v109);
    }

    else
    {
      v34 = *(a2 + 16);
      v35 = v29;
      v36 = v30;
      (*(v30 + 104))(v21, *MEMORY[0x277CE9C68], v29, v31);
      v37 = v34 + OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
      swift_beginAccess();
      if (a4 <= 0.0)
      {
        v41 = 0;
        v43 = 0;
      }

      else
      {
        LODWORD(v110) = 0;
        LODWORD(v113) = 0;
        BYTE4(v113) = 1;
        (*(v36 + 16))(v27, v21, v35);
        sub_20C132ED4();
        v38 = v103;
        sub_20C132474();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
        v39 = v104;
        v40 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_20C14F980;
        v42 = v41 + v40;
        v43 = 1;
        (*(v39 + 32))(v42, v38, v105);
      }

      v59 = v37 + *(type metadata accessor for ContainerNodeBuilder() + 32);
      v60 = *v59;
      *v59 = v41;
      v61 = *(v59 + 8);
      *(v59 + 8) = v43;
      sub_20B584060(v60, v61);
      swift_endAccess();
      (*(v36 + 8))(v21, v35);
      sub_20C13B554();
      v62 = sub_20C13BB74();
      v63 = sub_20C13D1F4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_20B517000, v62, v63, "Hiding Activity Rings", v64, 2u);
        MEMORY[0x20F2F6A40](v64, -1, -1);
      }

      (*(v108 + 8))(v9, v109);
    }
  }
}

uint64_t sub_20B81B934(char a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B554();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__reducedOverlayAnimations, v6);
  sub_20C13A344();
  (*(v7 + 8))(v9, v6);
  sub_20BA95F00(1, a1 & ~v18[15] & 1, a2, 0.5);
  v14 = v3 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B81BB8C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B554();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__reducedOverlayAnimations, v4);
  sub_20C13A344();
  (*(v5 + 8))(v7, v4);
  sub_20BA95F00(0, a1 & ~v16[15] & 1, 0, 0.3);
  v12 = v2 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B81BDE0(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B554();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder__externalOverlayAttributedStringsEnabled, v6);
  sub_20C13A344();
  (*(v7 + 8))(v9, v6);
  if (v61 == 1)
  {
    v14 = *(v3 + 32);
    v15 = *(v14 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryText);
    *(v14 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryText) = a1;

    v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText);
    *(v14 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText) = a2;
    v17 = a1;
    v18 = a2;
  }

  else
  {
    v19 = [a1 string];
    if (!v19)
    {
      sub_20C13C954();
      v19 = sub_20C13C914();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    v59 = xmmword_20C14F320;
    *(inited + 16) = xmmword_20C14F320;
    v21 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v22 = qword_27C760778;
    v58 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_27C766408;
    v24 = sub_20B51C88C(0, &qword_27C767A60);
    *(inited + 40) = v23;
    v25 = *MEMORY[0x277D740C0];
    v57 = v24;
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    v26 = objc_opt_self();
    v27 = v23;
    v55 = v25;
    v56 = v26;
    v28 = [v26 whiteColor];
    v54 = sub_20B51C88C(0, &qword_27C762070);
    *(inited + 104) = v54;
    *(inited + 80) = v28;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
    swift_arrayDestroy();
    v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
    type metadata accessor for Key(0);
    sub_20B76322C();
    v30 = sub_20C13C744();

    v31 = [v29 initWithString:v19 attributes:v30];

    v32 = *(v3 + 32);
    v33 = *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryText);
    *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_primaryText) = v31;
    v34 = v31;

    if (a2)
    {
      v53 = v34;
      v35 = a2;
      v36 = [v35 string];
      if (!v36)
      {
        sub_20C13C954();
        v36 = sub_20C13C914();
      }

      v37 = swift_initStackObject();
      *(v37 + 16) = v59;
      v38 = v58;
      *(v37 + 32) = v58;
      v39 = qword_27C760780;
      v40 = v38;
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = qword_27C766410;
      *(v37 + 40) = qword_27C766410;
      v42 = v55;
      *(v37 + 64) = v57;
      *(v37 + 72) = v42;
      v43 = v42;
      v44 = v41;
      v45 = [v56 whiteColor];
      *(v37 + 104) = v54;
      *(v37 + 80) = v45;
      sub_20B6B1650(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      v46 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v47 = sub_20C13C744();

      v48 = [v46 initWithString:v36 attributes:v47];

      v16 = *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText);
      *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText) = v48;
    }

    else
    {

      v16 = *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText);
      *(v32 + OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_secondaryText) = 0;
    }
  }

  v49 = v3 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v51 = *(v49 + 8);
    ObjectType = swift_getObjectType();
    (*(v51 + 8))(ObjectType, v51);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B81C46C(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0FC4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B81C520(v5);
  *a1 = v3;
}

void sub_20B81C520(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B81C968(v8, v9, a1, v4);
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
    sub_20B81C664(0, v2, 1, a1);
  }
}

void sub_20B81C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
LABEL_6:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v26 = v23;
    v27 = v22;
    while (1)
    {
      v28 = v52;
      (v52)(v17, v24, v8, v15);
      v28(v12, v27, v8);
      sub_20C132494();
      v30 = v29;
      sub_20C132494();
      if (v30 >= v31)
      {
        v25 = *v51;
        (*v51)(v12, v8);
        v25(v17, v8);
LABEL_5:
        a3 = v46 + 1;
        v22 = &v45[v41];
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_6;
      }

      sub_20C1324B4();
      v33 = v32;
      sub_20C1324B4();
      v35 = v34;
      v36 = *v51;
      (*v51)(v12, v8);
      v36(v17, v8);
      if (v33 >= v35)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v27, v38, v8);
      v27 += v47;
      v24 += v47;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20B81C968(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  MEMORY[0x28223BE20](v8);
  v152 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v165 = &v143 - v11;
  MEMORY[0x28223BE20](v12);
  v169 = &v143 - v13;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v154 = &v143 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v143 - v19;
  v26 = MEMORY[0x28223BE20](v21);
  v27 = *(a3 + 1);
  v159 = v23;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_100:
    v30 = *v149;
    if (!*v149)
    {
      goto LABEL_138;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v159;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v170 = v29;
      v137 = *(v29 + 16);
      if (v137 >= 2)
      {
        do
        {
          v138 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v139 = a3;
          v140 = *(v29 + 16 * v137);
          a3 = v29;
          v141 = *(v29 + 16 * (v137 - 1) + 32);
          v29 = *(v29 + 16 * (v137 - 1) + 40);
          sub_20B81D518(&v138[*(v8 + 72) * v140], &v138[*(v8 + 72) * v141], &v138[*(v8 + 72) * v29], v30);
          if (v5)
          {
            break;
          }

          if (v29 < v140)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v137 - 2 >= *(a3 + 2))
          {
            goto LABEL_126;
          }

          v142 = &a3[16 * v137];
          *v142 = v140;
          *(v142 + 1) = v29;
          v170 = a3;
          sub_20B6A0714(v137 - 1);
          v29 = v170;
          v137 = *(v170 + 16);
          a3 = v139;
        }

        while (v137 > 1);
      }

LABEL_110:

      return;
    }

LABEL_132:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_102;
  }

  v148 = &v143 - v22;
  v145 = v20;
  v153 = v25;
  v164 = v24;
  v144 = a4;
  v28 = 0;
  v167 = v23 + 16;
  v168 = (v23 + 8);
  v166 = (v23 + 32);
  v29 = MEMORY[0x277D84F90];
  v151 = a3;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v157 = v27;
      v31 = *a3;
      v32 = *(v159 + 72);
      v33 = *(v159 + 16);
      v33(v148, &v31[v32 * v28], v8, v26);
      v150 = v30;
      v160 = v32;
      v34 = &v31[v32 * v30];
      v35 = v31;
      v36 = v148;
      v37 = v145;
      v156 = v33;
      (v33)(v145, v34, v8);
      sub_20C132494();
      v39 = v38;
      sub_20C132494();
      v147 = v5;
      if (v39 >= v40)
      {
        LODWORD(v158) = 0;
      }

      else
      {
        sub_20C1324B4();
        v42 = v41;
        sub_20C1324B4();
        LODWORD(v158) = v42 < v43;
      }

      v146 = v29;
      v44 = *v168;
      (*v168)(v37, v8);
      v155 = v44;
      (v44)(v36, v8);
      v45 = v150 + 2;
      v46 = v160 * (v150 + 2);
      v47 = &v35[v46];
      v48 = v160 * v28;
      v49 = &v35[v160 * v28];
      do
      {
        v56 = v45;
        v55 = v28;
        v29 = v48;
        a3 = v46;
        if (v45 >= v157)
        {
          break;
        }

        v161 = v48;
        v163 = v28;
        v5 = v153;
        v57 = v156;
        v156(v153, v47, v8);
        v58 = v154;
        v57(v154, v49, v8);
        sub_20C132494();
        v60 = v59;
        sub_20C132494();
        v162 = a3;
        if (v60 < v61)
        {
          sub_20C1324B4();
          v51 = v50;
          sub_20C1324B4();
          v53 = v51 < v52;
        }

        else
        {
          v53 = 0;
        }

        v54 = v155;
        v155(v58, v8);
        v54(v5, v8);
        v45 = v56 + 1;
        v29 = v161;
        v47 += v160;
        v49 += v160;
        a3 = v162;
        v55 = v163;
        v28 = (v163 + 1);
        v48 = v161 + v160;
        v46 = &v162[v160];
      }

      while (v158 == v53);
      if (v158)
      {
        v30 = v150;
        if (v56 < v150)
        {
          goto LABEL_129;
        }

        if (v150 >= v56)
        {
          v28 = v56;
          v5 = v147;
          a3 = v151;
          v29 = v146;
          goto LABEL_30;
        }

        v62 = v150;
        v63 = v150 * v160;
        do
        {
          if (v62 != v55)
          {
            v65 = *v151;
            if (!*v151)
            {
              goto LABEL_135;
            }

            v66 = v55;
            v163 = *v166;
            (v163)(v152, v65 + v63, v8);
            if (v63 < v29 || v65 + v63 >= &a3[v65])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(v65 + v29, v152, v8);
            v55 = v66;
          }

          ++v62;
          v29 -= v160;
          a3 -= v160;
          v63 += v160;
        }

        while (v62 < v55--);
      }

      v28 = v56;
      v5 = v147;
      a3 = v151;
      v29 = v146;
      v30 = v150;
    }

LABEL_30:
    v67 = *(a3 + 1);
    if (v28 < v67)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_128;
      }

      if (v28 - v30 < v144)
      {
        break;
      }
    }

LABEL_49:
    if (v28 < v30)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v90 = *(v29 + 16);
    v89 = *(v29 + 24);
    v91 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      v29 = sub_20BC05740((v89 > 1), v90 + 1, 1, v29);
    }

    *(v29 + 16) = v91;
    v92 = v29 + 16 * v90;
    *(v92 + 32) = v30;
    *(v92 + 40) = v28;
    v163 = *v149;
    if (!v163)
    {
      goto LABEL_137;
    }

    if (v90)
    {
      while (1)
      {
        v30 = v91 - 1;
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v93 = *(v29 + 32);
          v94 = *(v29 + 40);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_69:
          if (v96)
          {
            goto LABEL_116;
          }

          v109 = (v29 + 16 * v91);
          v111 = *v109;
          v110 = v109[1];
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_119;
          }

          v115 = (v29 + 32 + 16 * v30);
          v117 = *v115;
          v116 = v115[1];
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_123;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              v30 = v91 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v119 = (v29 + 16 * v91);
        v121 = *v119;
        v120 = v119[1];
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_83:
        if (v114)
        {
          goto LABEL_118;
        }

        v122 = v29 + 16 * v30;
        v124 = *(v122 + 32);
        v123 = *(v122 + 40);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_121;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_90:
        v130 = v30 - 1;
        if (v30 - 1 >= v91)
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
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v131 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v132 = a3;
        a3 = v29;
        v133 = *(v29 + 32 + 16 * v130);
        v134 = *(v29 + 32 + 16 * v30);
        v29 = *(v29 + 32 + 16 * v30 + 8);
        sub_20B81D518(&v131[*(v159 + 72) * v133], &v131[*(v159 + 72) * v134], &v131[*(v159 + 72) * v29], v163);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v29 < v133)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v130 >= *(a3 + 2))
        {
          goto LABEL_113;
        }

        v135 = &a3[16 * v130];
        *(v135 + 4) = v133;
        *(v135 + 5) = v29;
        v170 = a3;
        sub_20B6A0714(v30);
        v29 = v170;
        v91 = *(v170 + 16);
        a3 = v132;
        if (v91 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = v29 + 32 + 16 * v91;
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_114;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_115;
      }

      v104 = (v29 + 16 * v91);
      v106 = *v104;
      v105 = v104[1];
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_117;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_120;
      }

      if (v108 >= v100)
      {
        v126 = (v29 + 32 + 16 * v30);
        v128 = *v126;
        v127 = v126[1];
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_124;
        }

        if (v95 < v129)
        {
          v30 = v91 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v27 = *(a3 + 1);
    if (v28 >= v27)
    {
      goto LABEL_100;
    }
  }

  v68 = (v30 + v144);
  if (__OFADD__(v30, v144))
  {
    goto LABEL_130;
  }

  if (v68 >= v67)
  {
    v68 = *(a3 + 1);
  }

  if (v68 < v30)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v28 == v68)
  {
    goto LABEL_49;
  }

  v146 = v29;
  v147 = v5;
  v69 = *a3;
  v70 = *(v159 + 72);
  v71 = *(v159 + 16);
  v72 = *a3 + v70 * (v28 - 1);
  v162 = -v70;
  v150 = v30;
  v73 = v30 - v28;
  v163 = v69;
  v155 = v70;
  v156 = v68;
  v74 = &v69[v28 * v70];
  v75 = v164;
LABEL_41:
  v160 = v72;
  v161 = v28;
  v157 = v74;
  v158 = v73;
  while (1)
  {
    v71(v75, v74, v8);
    v71(v169, v72, v8);
    sub_20C132494();
    v78 = v77;
    sub_20C132494();
    if (v78 >= v79)
    {
      v76 = *v168;
      (*v168)(v169, v8);
      v76(v75, v8);
LABEL_40:
      v28 = v161 + 1;
      v72 = v155 + v160;
      v73 = v158 - 1;
      v74 = v155 + v157;
      if ((v161 + 1) == v156)
      {
        v28 = v156;
        v5 = v147;
        a3 = v151;
        v29 = v146;
        v30 = v150;
        goto LABEL_49;
      }

      goto LABEL_41;
    }

    sub_20C1324B4();
    v81 = v80;
    v82 = v169;
    sub_20C1324B4();
    v84 = v83;
    v85 = *v168;
    (*v168)(v82, v8);
    v85(v75, v8);
    if (v81 >= v84)
    {
      goto LABEL_40;
    }

    if (!v163)
    {
      break;
    }

    v86 = v165;
    v87 = *v166;
    (*v166)(v165, v74, v8);
    swift_arrayInitWithTakeFrontToBack();
    v87(v72, v86, v8);
    v72 += v162;
    v74 = &v162[v74];
    v88 = __CFADD__(v73++, 1);
    v75 = v164;
    if (v88)
    {
      goto LABEL_40;
    }
  }

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
}
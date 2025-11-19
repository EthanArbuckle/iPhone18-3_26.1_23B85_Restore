uint64_t sub_272239014()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27223904C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272219D80;

  return sub_272237E68(a1, v5);
}

uint64_t sub_272239104(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272211DBC;

  return sub_272237E68(a1, v5);
}

void *VASymbolTable.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F98];
  result[2] = MEMORY[0x277D84F98];
  result[3] = v1;
  result[4] = v1;
  return result;
}

void *VASymbolTable.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

unint64_t sub_272239260()
{
  v2 = v0;
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237788C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_27237787C();
  result = sub_2723777EC();
  if (v1)
  {
    return result;
  }

  v11 = result;
  v115 = 10;
  v116 = 0xE100000000000000;
  MEMORY[0x28223BE20](result);
  v101[-2] = &v115;
  v13 = v12;

  result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, &v101[-4], v11, v13, v14);
  v15 = result;
  v101[2] = 0;
  v111 = *(result + 16);
  if (!v111)
  {
LABEL_104:

    v96 = sub_2722C389C();
    (*(v4 + 16))(v7, v96, v3);

    v97 = sub_27237725C();
    v98 = sub_272377E7C();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      v100 = *((*(*v2 + 104))() + 16);

      *(v99 + 4) = v100;

      _os_log_impl(&dword_2721E4000, v97, v98, "Loaded %ld symbols", v99, 0xCu);
      MEMORY[0x2743C69C0](v99, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v7, v3);
  }

  v101[1] = v13;
  v16 = 0;
  v109 = v7;
  v110 = result + 32;
  v102 = &v115 + 1;
  v106 = v4;
  v107 = v3;
  v108 = v0;
  v105 = result;
  while (2)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v112 = v16;
    v17 = (v110 + 32 * v16);
    v18 = *v17;
    v19 = v17[2];
    v20 = v17[3];
    v21 = *v17 >> 14;
    v22 = v17[1] >> 14;

    v114 = v20;
    if (v21 == v22)
    {
      v23 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }

    v113 = MEMORY[0x277D84F90];
    v24 = v18;
    do
    {
      while (sub_27237807C() != 9 || v28 != 0xE100000000000000)
      {
        v29 = sub_27237865C();

        if (v29)
        {
          goto LABEL_16;
        }

        result = sub_27237803C();
        v21 = result >> 14;
        if (result >> 14 == v22)
        {
          goto LABEL_22;
        }
      }

LABEL_16:
      if (v24 >> 14 != v21)
      {
        if (v21 < v24 >> 14)
        {
          goto LABEL_112;
        }

        v30 = sub_27237808C();
        v103 = v31;
        v104 = v30;
        v33 = v32;
        v35 = v34;
        v36 = v113;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_2721FF9B8(0, *(v36 + 2) + 1, 1, v36);
        }

        v37 = v36;
        v38 = *(v36 + 2);
        v113 = v37;
        v39 = *(v37 + 3);
        if (v38 >= v39 >> 1)
        {
          v113 = sub_2721FF9B8((v39 > 1), v38 + 1, 1, v113);
        }

        v25 = v113;
        *(v113 + 2) = v38 + 1;
        v26 = &v25[32 * v38];
        v27 = v103;
        *(v26 + 4) = v104;
        *(v26 + 5) = v33;
        *(v26 + 6) = v35;
        *(v26 + 7) = v27;
      }

      result = sub_27237803C();
      v24 = result;
      v21 = result >> 14;
    }

    while (result >> 14 != v22);
LABEL_22:
    if (v24 >> 14 == v22)
    {

      v23 = v113;
      goto LABEL_30;
    }

    v40 = v113;
    if (v22 < v24 >> 14)
    {
      goto LABEL_113;
    }

    v41 = sub_27237808C();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2721FF9B8(0, *(v40 + 2) + 1, 1, v40);
      v40 = result;
    }

    v48 = v40;
    v49 = *(v40 + 2);
    v50 = v48;
    v51 = *(v48 + 3);
    if (v49 >= v51 >> 1)
    {
      result = sub_2721FF9B8((v51 > 1), v49 + 1, 1, v50);
      v50 = result;
    }

    *(v50 + 16) = v49 + 1;
    v52 = (v50 + 32 * v49);
    v23 = v50;
    v52[4] = v41;
    v52[5] = v43;
    v52[6] = v45;
    v52[7] = v47;
LABEL_30:
    if (*(v23 + 2) < 2uLL)
    {
      goto LABEL_110;
    }

    v54 = *(v23 + 8);
    v53 = *(v23 + 9);
    v55 = *(v23 + 10);
    v56 = *(v23 + 11);

    v57 = MEMORY[0x2743C4A20](v54, v53, v55, v56);
    v59 = v58;

    v60 = HIBYTE(v59) & 0xF;
    v61 = v57 & 0xFFFFFFFFFFFFLL;
    if ((v59 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v59) & 0xF;
    }

    else
    {
      v62 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (!v62)
    {

      v83 = 0;
      v82 = 1;
      goto LABEL_96;
    }

    if ((v59 & 0x1000000000000000) != 0)
    {
      v117 = 0;
      v64 = sub_272200A34(v57, v59, 10);
      v82 = v95;
      goto LABEL_93;
    }

    if ((v59 & 0x2000000000000000) != 0)
    {
      v115 = v57;
      v116 = v59 & 0xFFFFFFFFFFFFFFLL;
      if (v57 == 43)
      {
        if (v60)
        {
          if (--v60)
          {
            v64 = 0;
            v74 = v102;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                break;
              }

              v76 = 10 * v64;
              if ((v64 * 10) >> 64 != (10 * v64) >> 63)
              {
                break;
              }

              v64 = v76 + v75;
              if (__OFADD__(v76, v75))
              {
                break;
              }

              ++v74;
              if (!--v60)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }
      }

      else
      {
        if (v57 != 45)
        {
          if (v60)
          {
            v64 = 0;
            v79 = &v115;
            while (1)
            {
              v80 = *v79 - 48;
              if (v80 > 9)
              {
                break;
              }

              v81 = 10 * v64;
              if ((v64 * 10) >> 64 != (10 * v64) >> 63)
              {
                break;
              }

              v64 = v81 + v80;
              if (__OFADD__(v81, v80))
              {
                break;
              }

              v79 = (v79 + 1);
              if (!--v60)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

        if (v60)
        {
          if (--v60)
          {
            v64 = 0;
            v68 = v102;
            while (1)
            {
              v69 = *v68 - 48;
              if (v69 > 9)
              {
                break;
              }

              v70 = 10 * v64;
              if ((v64 * 10) >> 64 != (10 * v64) >> 63)
              {
                break;
              }

              v64 = v70 - v69;
              if (__OFSUB__(v70, v69))
              {
                break;
              }

              ++v68;
              if (!--v60)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_91:
          v64 = 0;
          LOBYTE(v60) = 1;
          goto LABEL_92;
        }

LABEL_114:
        __break(1u);
      }

      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if ((v57 & 0x1000000000000000) != 0)
    {
      result = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_27237825C();
    }

    v63 = *result;
    if (v63 != 43)
    {
      if (v63 != 45)
      {
        if (!v61)
        {
          goto LABEL_91;
        }

        v64 = 0;
        if (!result)
        {
          goto LABEL_83;
        }

        while (1)
        {
          v77 = *result - 48;
          if (v77 > 9)
          {
            goto LABEL_91;
          }

          v78 = 10 * v64;
          if ((v64 * 10) >> 64 != (10 * v64) >> 63)
          {
            goto LABEL_91;
          }

          v64 = v78 + v77;
          if (__OFADD__(v78, v77))
          {
            goto LABEL_91;
          }

          ++result;
          if (!--v61)
          {
            goto LABEL_83;
          }
        }
      }

      if (v61 < 1)
      {
        goto LABEL_116;
      }

      v60 = v61 - 1;
      if (v61 == 1)
      {
        goto LABEL_91;
      }

      v64 = 0;
      if (result)
      {
        v65 = (result + 1);
        while (1)
        {
          v66 = *v65 - 48;
          if (v66 > 9)
          {
            goto LABEL_91;
          }

          v67 = 10 * v64;
          if ((v64 * 10) >> 64 != (10 * v64) >> 63)
          {
            goto LABEL_91;
          }

          v64 = v67 - v66;
          if (__OFSUB__(v67, v66))
          {
            goto LABEL_91;
          }

          ++v65;
          if (!--v60)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_83:
      LOBYTE(v60) = 0;
LABEL_92:
      v117 = v60;
      v82 = v60;
LABEL_93:

      if (v82)
      {
        v83 = 0;
      }

      else
      {
        v83 = v64;
      }

LABEL_96:
      v2 = v108;
      v7 = v109;
      if (!*(v23 + 2))
      {
        goto LABEL_111;
      }

      v84 = *(v23 + 4);
      v85 = *(v23 + 5);
      v86 = *(v23 + 6);
      v87 = *(v23 + 7);

      v88 = MEMORY[0x2743C4A20](v84, v85, v86, v87);
      v90 = v89;

      if (v82)
      {
        goto LABEL_118;
      }

      v91 = v112 + 1;

      v92 = (*(*v2 + 120))(&v115);

      sub_272201434(v88, v90, v83);

      v92(&v115, 0);
      v93 = (*(*v2 + 144))(&v115);
      sub_272201588(v83, v88, v90);

      result = v93(&v115, 0);
      v16 = v91;
      v94 = v91 == v111;
      v4 = v106;
      v3 = v107;
      v15 = v105;
      if (v94)
      {
        goto LABEL_104;
      }

      continue;
    }

    break;
  }

  if (v61 >= 1)
  {
    v60 = v61 - 1;
    if (v61 == 1)
    {
      goto LABEL_91;
    }

    v64 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    v71 = (result + 1);
    while (1)
    {
      v72 = *v71 - 48;
      if (v72 > 9)
      {
        goto LABEL_91;
      }

      v73 = 10 * v64;
      if ((v64 * 10) >> 64 != (10 * v64) >> 63)
      {
        goto LABEL_91;
      }

      v64 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_91;
      }

      ++v71;
      if (!--v60)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

uint64_t sub_272239C80(void (*a1)(void *, void), uint64_t a2)
{
  v71 = a2;
  v70 = a1;
  v73 = sub_272376D5C();
  v3 = *(v73 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v73);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v2 + 120))(v74);
  v9 = v8;
  v10 = *v8;

  v11 = MEMORY[0x277D84F98];
  *v9 = MEMORY[0x277D84F98];
  v7(v74, 0);
  v12 = *(*v2 + 144);
  v13 = *v2 + 144;
  v14 = v12(v74);
  v16 = v15;
  v17 = *v15;

  *v16 = v11;
  v14(v74, 0);
  sub_272376CAC();
  v18 = v72;
  v19 = sub_272376D6C();
  if (v18)
  {

    return (*(v3 + 8))(v6, v73);
  }

  v22 = v19;
  v23 = v20;
  v71 = v13;
  v72 = v12;
  v24 = v2;
  (*(v3 + 8))(v6, v73);
  sub_27221982C(0, &qword_280881D80, 0x277CCAAC8);
  sub_27221982C(0, &qword_280881D88, 0x277CBEAC0);
  v25 = sub_272377EBC();
  v63[1] = 0;
  if (!v25)
  {
    return sub_2721F05C8(v22, v23);
  }

  v74[0] = 0;
  v26 = v25;
  sub_27237771C();

  if (!v74[0])
  {
    return sub_2721F05C8(v22, v23);
  }

  v27 = (*(*v24 + 112))();
  v28 = *(*v24 + 104);
  v68 = v24;
  v29 = v28(v27);
  v30 = 0;
  v69 = v29;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v29 + 64;
  v34 = v32 & *(v29 + 64);
  v35 = (v31 + 63) >> 6;
  v64 = v22;
  v65 = v23;
  v66 = v35;
  for (i = v29 + 64; ; v33 = i)
  {
    v38 = v72;
    if (!v34)
    {
      break;
    }

LABEL_15:
    v40 = __clz(__rbit64(v34)) | (v30 << 6);
    v41 = *(v69 + 56);
    v73 = *(*(v69 + 48) + 8 * v40);
    v42 = (v41 + 16 * v40);
    v43 = *v42;
    v44 = v42[1];

    v70 = v38(v74);
    v46 = v45;
    v47 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *v46;
    v49 = v75;
    *v46 = 0x8000000000000000;
    v50 = v43;
    v52 = sub_27220038C(v43, v44);
    v53 = v49[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_29;
    }

    v56 = v51;
    if (v49[3] >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v51)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_272201D78();
        if (v56)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_272201970(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_27220038C(v50, v44);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_31;
      }

      v52 = v57;
      if (v56)
      {
LABEL_8:

        v36 = v75;
        *(v75[7] + 8 * v52) = v73;
        goto LABEL_9;
      }
    }

    v36 = v75;
    v75[(v52 >> 6) + 8] |= 1 << v52;
    v59 = (v36[6] + 16 * v52);
    *v59 = v50;
    v59[1] = v44;
    *(v36[7] + 8 * v52) = v73;
    v60 = v36[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_30;
    }

    v36[2] = v62;
LABEL_9:
    v22 = v64;
    v23 = v65;
    v34 &= v34 - 1;
    v37 = *v46;
    *v46 = v36;

    v70(v74, 0);
    v35 = v66;
  }

  while (1)
  {
    v39 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v39 >= v35)
    {
      sub_2721F05C8(v22, v23);
    }

    v34 = *(v33 + 8 * v39);
    ++v30;
    if (v34)
    {
      v30 = v39;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void sub_27223A198()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = sub_272376D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  (*(*v0 + 104))();
  v7 = sub_27237770C();

  v17[0] = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:0 error:v17];

  v9 = v17[0];
  if (v8)
  {
    v10 = sub_272376D8C();
    v12 = v11;

    sub_272376CAC();
    sub_272376D9C();
    (*(v2 + 8))(v5, v1);
    sub_2721F05C8(v10, v12);
  }

  else
  {
    v13 = v9;
    v14 = sub_272376C6C();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void *VASymbolTable.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t VASymbolTable.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t VANameDetectionResult.keyword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword + 8);

  return v1;
}

uint64_t VANameDetectionResult.secondPassResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8);

  return v1;
}

uint64_t VANameDetectionResult.filename.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8);

  return v1;
}

id VANameDetectionResult.__allocating_init(keyword:score:secondPassResult:filename:isValid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, float a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score] = a8;
  v19 = &v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
  *v19 = a3;
  v19[1] = a4;
  v20 = &v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename];
  *v20 = a5;
  v20[1] = a6;
  v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid] = a7;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id VANameDetectionResult.init(keyword:score:secondPassResult:filename:isValid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, float a8)
{
  v9 = &v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score] = a8;
  v10 = &v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
  *v10 = a3;
  v10[1] = a4;
  v11 = &v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename];
  *v11 = a5;
  v11[1] = a6;
  v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid] = a7;
  v13.receiver = v8;
  v13.super_class = type metadata accessor for VANameDetectionResult();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_27223A774(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword);
  v4 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword + 8);
  v5 = sub_2723777FC();
  v6 = sub_2723777FC();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score);
  v8 = sub_2723777FC();
  LODWORD(v9) = v7;
  [a1 encodeFloat:v8 forKey:v9];

  if (*(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8))
  {
    v10 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult);
    v11 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8);
  }

  v12 = sub_2723777FC();

  v13 = sub_2723777FC();
  [a1 encodeObject:v12 forKey:v13];

  if (*(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8))
  {
    v14 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename);
    v15 = sub_2723777FC();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_2723777FC();
  [a1 encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  v17 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid);
  v18 = sub_2723777FC();
  [a1 encodeBool:v17 forKey:v18];
}

id VANameDetectionResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = sub_2723777FC();
  v16 = [a1 decodeObjectForKey_];

  if (v16)
  {
    sub_27237814C();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57 = v55;
  v58 = v56;
  if (!*(&v56 + 1))
  {
    sub_27223B044(&v57);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v24 = sub_2722C389C();
    (*(v5 + 16))(v14, v24, v4);
    v25 = sub_27237725C();
    v26 = sub_272377E8C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2721E4000, v25, v26, "Decoding result - falied keyword", v27, 2u);
      MEMORY[0x2743C69C0](v27, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_30;
  }

  v17 = v54;
  v18 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword];
  *v18 = v53;
  *(v18 + 1) = v17;
  v51 = v18;
  v19 = sub_2723777FC();
  [a1 decodeFloatForKey_];
  v21 = v20;

  *&v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score] = v21;
  v22 = sub_2723777FC();
  v23 = [a1 decodeObjectForKey_];

  if (v23)
  {
    sub_27237814C();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57 = v55;
  v58 = v56;
  if (*(&v56 + 1))
  {
    if (swift_dynamicCast())
    {
      v28 = v54;
      v29 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
      *v29 = v53;
      v29[1] = v28;
      v30 = sub_2723777FC();
      v31 = [a1 decodeObjectForKey_];

      if (v31)
      {
        sub_27237814C();
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
      }

      v57 = v55;
      v58 = v56;
      if (*(&v56 + 1))
      {
        if (swift_dynamicCast())
        {
          v37 = v54;
          v38 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename];
          *v38 = v53;
          v38[1] = v37;
          v39 = sub_2723777FC();
          v40 = [a1 decodeBoolForKey_];

          v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid] = v40;
          v41 = type metadata accessor for VANameDetectionResult();
          v52.receiver = v2;
          v52.super_class = v41;
          v42 = objc_msgSendSuper2(&v52, sel_init);

          return v42;
        }
      }

      else
      {
        sub_27223B044(&v57);
      }

      v44 = sub_2722C389C();
      (*(v5 + 16))(v9, v44, v4);
      v45 = sub_27237725C();
      v46 = sub_272377E8C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2721E4000, v45, v46, "Decoding result - failed filename", v47, 2u);
        MEMORY[0x2743C69C0](v47, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      v48 = *(v51 + 1);

      v36 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
      goto LABEL_29;
    }
  }

  else
  {
    sub_27223B044(&v57);
  }

  v32 = sub_2722C389C();
  (*(v5 + 16))(v12, v32, v4);
  v33 = sub_27237725C();
  v34 = sub_272377E8C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2721E4000, v33, v34, "Decoding result - failed secondPassResult", v35, 2u);
    MEMORY[0x2743C69C0](v35, -1, -1);
  }

  (*(v5 + 8))(v12, v4);
  v36 = v51;
LABEL_29:
  v49 = *(v36 + 1);

LABEL_30:
  type metadata accessor for VANameDetectionResult();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_27223B044(uint64_t a1)
{
  v2 = sub_2721F065C(&unk_280881DB8, &qword_27237DDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27223B13C()
{
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000017, 0x800000027238A3F0);
  MEMORY[0x2743C4AD0](*(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword), *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword + 8));
  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score);
  sub_272377D5C();
  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult);
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8);
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x2743C4AD0](v3, v4);

  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8);
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x2743C4AD0](v6, v7);

  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2743C4AD0](v8, v9);

  return 0;
}

id VANameDetectionResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VANameDetectionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VANameDetectionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27223B49C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_27223D5A8(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_27223B528()
{
  v1 = *(*v0 + 96);

  return v1(v2);
}

uint64_t sub_27223B574()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_27223B634()
{
  v0 = VATempDir()();
  v1 = NSUserName();
  v2 = sub_27237782C();
  v4 = v3;

  MEMORY[0x2743C4AD0](v2, v4);

  MEMORY[0x2743C4AD0](0xD000000000000013, 0x800000027238A5A0);

  xmmword_280887548 = v0;
  return result;
}

uint64_t sub_27223B714()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_27223B760(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_27223B804@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_27223B88C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_27223B97C(uint64_t a1, uint64_t a2)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  v13 = swift_allocObject();
  sub_272376E4C();
  (*(v7 + 32))(v13 + OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid, v10, v6);
  v13[2] = sub_27223D5A8(MEMORY[0x277D84F90]);
  v14 = v13 + 2;
  v13[3] = a1;
  v13[4] = a2;
  v15 = sub_27223BADC();
  if (v3)
  {
  }

  else
  {
    v16 = v15;
    swift_beginAccess();
    v17 = *v14;
    *v14 = v16;
  }

  return v13;
}

uint64_t sub_27223BADC()
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v67 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  (*(*v0 + 128))(v11);
  v12 = sub_27223D6AC();
  if (v1)
  {
  }

  v70 = v12;

  sub_27223DE44();
  v15 = v14;
  if (!v14)
  {
    v28 = sub_2722C389C();
    (*(v3 + 16))(v7, v28, v2);
    v29 = sub_27237725C();
    v30 = sub_272377E6C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2721E4000, v29, v30, "No custom lexicon", v31, 2u);
      MEMORY[0x2743C69C0](v31, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return v70;
  }

  v16 = sub_2722C389C();
  (*(v3 + 16))(v10, v16, v2);

  v17 = sub_27237725C();
  v18 = sub_272377E6C();
  v19 = v17;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    LODWORD(v69) = v18;
    v21 = v20;
    v68 = swift_slowAlloc();
    v71 = v68;
    *v21 = 134218242;
    *(v21 + 4) = *(v15 + 16);

    *(v21 + 12) = 2080;

    sub_2721F065C(&qword_2808817F0, &unk_27237BF20);
    v22 = sub_27237774C();
    v24 = v23;

    v25 = sub_2721FFD04(v22, v24, &v71);

    *(v21 + 14) = v25;
    v26 = v19;
    _os_log_impl(&dword_2721E4000, v19, v69, "Merged %ld words from custom lexicon: %s", v21, 0x16u);
    v27 = v68;
    sub_2722039C8(v68);
    MEMORY[0x2743C69C0](v27, -1, -1);
    MEMORY[0x2743C69C0](v21, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v10, v2);
  v32 = 1 << *(v15 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v15 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  while (v34)
  {
LABEL_19:
    v41 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v42 = (*(v15 + 48) + ((v36 << 10) | (16 * v41)));
    v44 = *v42;
    v43 = v42[1];
    v45 = *(v15 + 16);

    if (v45 && (v46 = sub_27220038C(v44, v43), (v47 & 1) != 0))
    {
      v69 = *(*(v15 + 56) + 8 * v46);

      v48 = v70;
      LODWORD(v68) = swift_isUniquelyReferenced_nonNull_native();
      v71 = v48;
      v49 = sub_27220038C(v44, v43);
      v51 = *(v48 + 16);
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_37;
      }

      if (*(v48 + 24) >= v54)
      {
        if (v68)
        {
          goto LABEL_29;
        }

        v68 = v49;
        LODWORD(v70) = v50;
        sub_27223D2B8();
        v49 = v68;
        if ((v70 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        v60 = v49;

        v70 = v71;
        v61 = v71[7];
        v62 = *(v61 + 8 * v60);
        *(v61 + 8 * v60) = v69;
      }

      else
      {
        LODWORD(v70) = v50;
        sub_27223C9E8(v54, v68);
        v49 = sub_27220038C(v44, v43);
        v55 = v50 & 1;
        LOBYTE(v50) = v70;
        if ((v70 & 1) != v55)
        {
          goto LABEL_39;
        }

LABEL_29:
        if (v50)
        {
          goto LABEL_30;
        }

LABEL_32:
        v63 = v71;
        v71[(v49 >> 6) + 8] |= 1 << v49;
        v64 = (v63[6] + 16 * v49);
        *v64 = v44;
        v64[1] = v43;
        *(v63[7] + 8 * v49) = v69;
        v65 = v63[2];
        v53 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v53)
        {
          goto LABEL_38;
        }

        v70 = v63;
        v63[2] = v66;
      }
    }

    else
    {
      v37 = sub_27220038C(v44, v43);
      v39 = v38;

      if (v39)
      {
        v56 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v56;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_27223D2B8();
          v56 = v71;
        }

        v58 = *(*(v56 + 48) + 16 * v37 + 8);

        v59 = *(*(v56 + 56) + 8 * v37);

        v70 = v56;
        sub_27223CF60(v37, v56);
      }
    }
  }

  while (1)
  {
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v40 >= v35)
    {

      return v70;
    }

    v34 = *(v15 + 64 + 8 * v40);
    ++v36;
    if (v34)
    {
      v36 = v40;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_27223C1C4()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27237725C();
  v9 = sub_272377E7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "deinit VALexicon", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 16);

  v12 = *(v1 + 32);

  v13 = OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid;
  v14 = sub_272376E5C();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  return v1;
}

uint64_t sub_27223C374()
{
  sub_27223C1C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_27223C418()
{
  v2 = *v0;
  sub_27223E45C();
  if (!v1)
  {
    v3 = sub_27223BADC();
    (*(*v2 + 112))(v3);
  }
}

uint64_t sub_27223C474()
{
  v1 = *v0;
  v2 = sub_27237782C();
  v3 = MEMORY[0x2743C4B70](v2);

  return v3;
}

uint64_t sub_27223C4B0()
{
  v1 = *v0;
  sub_27237782C();
  sub_27237790C();
}

uint64_t sub_27223C504()
{
  v1 = *v0;
  sub_27237782C();
  sub_27237874C();
  sub_27237790C();
  v2 = sub_27237878C();

  return v2;
}

uint64_t sub_27223C580(uint64_t a1, id *a2)
{
  result = sub_27237780C();
  *a2 = 0;
  return result;
}

uint64_t sub_27223C5F8(uint64_t a1, id *a2)
{
  v3 = sub_27237781C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_27223C678@<X0>(uint64_t *a1@<X8>)
{
  sub_27237782C();
  v2 = sub_2723777FC();

  *a1 = v2;
  return result;
}

uint64_t sub_27223C6BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_27237782C();
  v6 = v5;
  if (v4 == sub_27237782C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27237865C();
  }

  return v9 & 1;
}

uint64_t sub_27223C744@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2723777FC();

  *a2 = v5;
  return result;
}

uint64_t sub_27223C78C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_27237782C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_27223C7B8(uint64_t a1)
{
  v2 = sub_27223F044(&qword_280881E90);
  v3 = sub_27223F044(&qword_280881EE0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_27223C850(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_27237782C();
  sub_27237874C();
  sub_27237790C();
  v4 = sub_27237878C();

  return sub_27223C8E4(a1, v4);
}

unint64_t sub_27223C8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_27237782C();
      v9 = v8;
      if (v7 == sub_27237782C() && v9 == v10)
      {
        break;
      }

      v12 = sub_27237865C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_27223C9E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280881EA8, &qword_27237DEC0);
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

uint64_t sub_27223CC90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280881EA0, &qword_27237DEB8);
  v37 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_27221981C(v23, v38);
      }

      else
      {
        sub_2722041FC(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_27237782C();
      sub_27237874C();
      sub_27237790C();
      v26 = sub_27237878C();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_27221981C(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_27223CF60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_27237874C();

      sub_27237790C();
      v13 = sub_27237878C();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

_OWORD *sub_27223D110(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_27223C850(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_27223D428();
      v8 = v16;
      goto LABEL_8;
    }

    sub_27223CC90(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_27223C850(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for FileAttributeKey();
      result = sub_2723786BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_2722039C8(v20);

    return sub_27221981C(a1, v20);
  }

  else
  {
    sub_27223D250(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_27223D250(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_27221981C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_27223D2B8()
{
  v1 = v0;
  sub_2721F065C(&qword_280881EA8, &qword_27237DEC0);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_27223D428()
{
  v1 = v0;
  sub_2721F065C(&qword_280881EA0, &qword_27237DEB8);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2722041FC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_27221981C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

unint64_t sub_27223D5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881EA8, &qword_27237DEC0);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_27223D6AC()
{
  v0 = sub_27237788C();
  isa = v0[-1].isa;
  v60 = v0;
  v1 = *(isa + 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = sub_27237728C();
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - v9;
  v11 = sub_2723777FC();
  v12 = [v11 stringByDeletingPathExtension];

  v13 = sub_27237782C();
  v14 = sub_2723777FC();
  v15 = [v14 pathExtension];

  sub_27237782C();
  sub_2722560E0();
  v17 = v16;
  v19 = v18;

  if (v19)
  {
    v20 = [objc_opt_self() defaultManager];
    v21 = sub_2723777FC();
    v22 = [v20 fileExistsAtPath_];

    v23 = v62;
    if ((v22 & 1) == 0)
    {
      v24 = sub_2722C389C();
      (*(v23 + 16))(v10, v24, v5);

      v25 = sub_27237725C();
      v26 = sub_272377E8C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v57 = v5;
        v29 = v28;
        v63 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_2721FFD04(v17, v19, &v63);
        _os_log_impl(&dword_2721E4000, v25, v26, "Invalid lexicon file, doesn't exist: %s", v27, 0xCu);
        sub_2722039C8(v29);
        v30 = v29;
        v5 = v57;
        MEMORY[0x2743C69C0](v30, -1, -1);
        MEMORY[0x2743C69C0](v27, -1, -1);

        v31 = v62;
      }

      else
      {

        v31 = v23;
      }

      (*(v31 + 8))(v10, v5);
    }

    sub_27237787C();
    v33 = v61;
    sub_2723777EC();
    v13 = v33;
    if (v33)
    {

LABEL_13:
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000017, 0x800000027238A660);
      v65 = v13;
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_27237836C();
      v43 = v63;
      v44 = v64;
      sub_2722032B4();
      swift_allocError();
      *v45 = v43;
      v45[1] = v44;
      swift_willThrow();

      return v13;
    }

    sub_27237787C();
    v34 = sub_27237783C();
    v36 = v35;

    (*(isa + 1))(v4, v60);
    if (v36 >> 60 == 15)
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_27237820C();

      v63 = 0xD00000000000001DLL;
      v64 = 0x800000027238A680;
      MEMORY[0x2743C4AD0](v17, v19);

      v37 = v63;
      v38 = v64;
      sub_2722032B4();
      v13 = swift_allocError();
      *v39 = v37;
      v39[1] = v38;
      swift_willThrow();
      goto LABEL_13;
    }

    v57 = v5;
    v40 = sub_272376ABC();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_272376AAC();
    sub_2721F065C(&qword_280881EB0, &qword_27237DEC8);
    sub_27223EEA0();
    sub_272376A9C();
    v13 = v63;
    v47 = sub_2722C389C();
    (*(v62 + 16))(v58, v47, v57);

    v48 = sub_27237725C();
    v49 = sub_272377E7C();

    LODWORD(v61) = v49;
    v50 = v49;
    v51 = v48;
    if (os_log_type_enabled(v48, v50))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60 = v51;
      v54 = v53;
      v63 = v53;
      *v52 = 136315138;
      v55 = sub_2721FFD04(v17, v19, &v63);

      *(v52 + 4) = v55;
      v56 = v60;
      _os_log_impl(&dword_2721E4000, v60, v61, "Loaded lexicon from %s", v52, 0xCu);
      sub_2722039C8(v54);
      MEMORY[0x2743C69C0](v54, -1, -1);
      MEMORY[0x2743C69C0](v52, -1, -1);

      sub_2721F05B4(v34, v36);
    }

    else
    {

      sub_2721F05B4(v34, v36);
    }

    (*(v62 + 8))(v58, v57);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v32 = 0xD00000000000001ELL;
    v32[1] = 0x800000027238A640;
    swift_willThrow();
  }

  return v13;
}

void sub_27223DE44()
{
  v0 = sub_27237728C();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = *(v43 + 64);
  MEMORY[0x28223BE20](v0);
  v45 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27237788C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  if (qword_280887540 != -1)
  {
    swift_once();
  }

  v10 = xmmword_280887548;
  v11 = sub_2723777FC();
  v12 = [v9 fileExistsAtPath_];

  if (v12)
  {
    v13 = [v8 defaultManager];
    v14 = sub_2723777FC();
    v15 = [v13 isReadableFileAtPath_];

    if ((v15 & 1) == 0)
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_27237820C();

      v49 = 0xD000000000000026;
      v50 = 0x800000027238A5C0;
      MEMORY[0x2743C4AD0](v10, *(&v10 + 1));
      v22 = v49;
      v23 = v50;
      sub_2722032B4();
      swift_allocError();
      *v24 = v22;
      v24[1] = v23;
      swift_willThrow();
      return;
    }

    sub_27237787C();
    v16 = v48;
    sub_2723777EC();
    v17 = v16;
    if (v16)
    {
      goto LABEL_11;
    }

    sub_27237787C();
    v18 = sub_27237783C();
    v20 = v19;

    (*(v46 + 8))(v7, v47);
    if (v20 >> 60 == 15)
    {
      sub_2722032B4();
      v17 = swift_allocError();
      *v21 = 0xD000000000000023;
      v21[1] = 0x800000027238A610;
      swift_willThrow();
LABEL_11:
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD00000000000001ELL, 0x800000027238A5F0);
      v51 = v17;
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_27237836C();
      v28 = v49;
      v29 = v50;
      sub_2722032B4();
      swift_allocError();
      *v30 = v28;
      v30[1] = v29;
      swift_willThrow();

      return;
    }

    v25 = sub_272376ABC();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_272376AAC();
    sub_2721F065C(&qword_280881EB0, &qword_27237DEC8);
    sub_27223EEA0();
    sub_272376A9C();
    v42 = v10;
    v46 = v18;
    v47 = v49;
    v31 = sub_2722C389C();
    v32 = v43;
    v33 = v44;
    v34 = v45;
    (*(v43 + 16))(v45, v31, v44);
    v35 = sub_27237725C();
    v36 = sub_272377E7C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v32;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = 0;
      v49 = v39;
      v40 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_2721FFD04(v42, *(&v10 + 1), &v49);
      _os_log_impl(&dword_2721E4000, v35, v36, "Loaded custom lexicon from %s", v38, 0xCu);
      sub_2722039C8(v40);
      MEMORY[0x2743C69C0](v40, -1, -1);
      MEMORY[0x2743C69C0](v38, -1, -1);

      sub_2721F05B4(v46, v20);

      (*(v37 + 8))(v45, v10);
    }

    else
    {

      sub_2721F05B4(v46, v20);

      (*(v32 + 8))(v34, v33);
    }
  }
}

void sub_27223E45C()
{
  v69 = *MEMORY[0x277D85DE8];
  v0 = sub_27237728C();
  v58 = *(v0 - 8);
  v59 = v0;
  v1 = *(v58 + 64);
  MEMORY[0x28223BE20](v0);
  v60 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27237788C();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = objc_opt_self();
  v8 = [v64 defaultManager];
  if (qword_280887540 != -1)
  {
    swift_once();
  }

  v9 = xmmword_280887548;
  v10 = sub_2723777FC();
  v11 = [v8 fileExistsAtPath_];

  if (v11 && (v12 = [v64 defaultManager], v13 = sub_2723777FC(), v14 = objc_msgSend(v12, sel_isWritableFileAtPath_, v13), v12, v13, (v14 & 1) == 0))
  {
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v67 = 0xD000000000000025;
    *(&v67 + 1) = 0x800000027238A570;
    MEMORY[0x2743C4AD0](v9, *(&v9 + 1));
    v28 = v67;
    sub_2722032B4();
    swift_allocError();
    *v29 = v28;
    swift_willThrow();
  }

  else
  {
    v61 = v9;
    v15 = objc_opt_self();
    sub_2721F065C(&qword_2808817F0, &unk_27237BF20);
    v16 = sub_27237770C();
    *&v67 = 0;
    v17 = [v15 dataWithJSONObject:v16 options:0 error:&v67];

    v18 = v67;
    if (v17)
    {
      v19 = sub_272376D8C();
      v21 = v20;

      sub_27237787C();
      v22 = sub_27237784C();
      if (v23)
      {
        *&v67 = v22;
        *(&v67 + 1) = v23;
        *&v66[0] = v61;
        *(&v66[0] + 1) = *(&v9 + 1);

        sub_27237787C();
        sub_272203AC4();
        v24 = v63;
        sub_27237810C();
        if (v24)
        {
          sub_2721F05C8(v19, v21);
          (*(v62 + 8))(v7, v3);

          v25 = v24;
LABEL_17:
          *&v67 = 0;
          *(&v67 + 1) = 0xE000000000000000;
          sub_27237820C();
          MEMORY[0x2743C4AD0](0xD00000000000001DLL, 0x800000027238A550);
          *&v66[0] = v25;
          sub_2721F065C(&qword_280881A38, &unk_27237CA20);
          sub_27237836C();
          v54 = v67;
          sub_2722032B4();
          swift_allocError();
          *v55 = v54;
          swift_willThrow();

          goto LABEL_18;
        }

        v57 = v19;
        (*(v62 + 8))(v7, v3);

        v30 = v64;
        v31 = [v64 defaultManager];
        v32 = sub_2723777FC();
        *&v67 = 0;
        v33 = [v31 attributesOfItemAtPath:v32 error:&v67];

        v34 = v67;
        if (!v33)
        {
          goto LABEL_16;
        }

        v63 = 0;
        type metadata accessor for FileAttributeKey();
        sub_27223F044(&qword_280881E90);
        v35 = sub_27237772C();
        v36 = v34;

        v37 = *MEMORY[0x277CCA180];
        v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v68 = sub_27223EE54();
        *&v67 = v38;
        sub_27221981C(&v67, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v35;
        sub_27223D110(v66, v37, isUniquelyReferenced_nonNull_native);
        v40 = [v30 defaultManager];
        v41 = sub_27237770C();

        v42 = sub_2723777FC();
        *&v67 = 0;
        LODWORD(v37) = [v40 setAttributes:v41 ofItemAtPath:v42 error:&v67];

        if (!v37)
        {
LABEL_16:
          v53 = v67;
          v25 = sub_272376C6C();

          swift_willThrow();
          sub_2721F05C8(v57, v21);
          goto LABEL_17;
        }

        v43 = v21;
        v44 = v67;
        v45 = sub_2722C389C();
        v47 = v58;
        v46 = v59;
        v48 = v60;
        (*(v58 + 16))(v60, v45, v59);
        v49 = sub_27237725C();
        v50 = sub_272377E7C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v67 = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_2721FFD04(v61, *(&v9 + 1), &v67);
          _os_log_impl(&dword_2721E4000, v49, v50, "Updated lexicon at %s.", v51, 0xCu);
          sub_2722039C8(v52);
          MEMORY[0x2743C69C0](v52, -1, -1);
          MEMORY[0x2743C69C0](v51, -1, -1);
          sub_2721F05C8(v57, v43);

          (*(v9 + 8))(v60, v46);
        }

        else
        {
          sub_2721F05C8(v57, v43);

          (*(v47 + 8))(v48, v46);
        }
      }

      else
      {
        sub_2721F05C8(v19, v21);
      }
    }

    else
    {
      v26 = v18;
      v27 = sub_272376C6C();

      swift_willThrow();
    }
  }

LABEL_18:
  v56 = *MEMORY[0x277D85DE8];
}

uint64_t type metadata accessor for VAFileBackedLexicon()
{
  result = qword_280887558;
  if (!qword_280887558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27223ED5C()
{
  result = sub_272376E5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_280881EC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280881EC0);
    }
  }
}

unint64_t sub_27223EE54()
{
  result = qword_280881E98;
  if (!qword_280881E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280881E98);
  }

  return result;
}

unint64_t sub_27223EEA0()
{
  result = qword_280881EB8;
  if (!qword_280881EB8)
  {
    sub_2721F214C(&qword_280881EB0, &qword_27237DEC8);
    sub_27223EF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881EB8);
  }

  return result;
}

unint64_t sub_27223EF2C()
{
  result = qword_2808817E8;
  if (!qword_2808817E8)
  {
    sub_2721F214C(&qword_2808817F0, &unk_27237BF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808817E8);
  }

  return result;
}

uint64_t sub_27223F044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27223F0C4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_27223F138(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_27223F178()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_27223F1B0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_27223F1F8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_27223F230(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_27223F278()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_27223F2B0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_27223F2F8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_27223F330(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_27223F378()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_27223F3B0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_27223F448()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_27223F480(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_27223F4C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_27223F518(a1, a2);
  return v4;
}

void sub_27223F518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2723769FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3[4] = 0;
  v11 = v3 + 4;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v3[2] = a1;
  v12 = v3 + 2;
  if (a2 + 0x4000000000000000 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = ceilf(log2f((2 * a2)));
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13 >= 1.8447e19)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3[3] = v13;
  (*(v7 + 104))(v10, *MEMORY[0x277D83108], v6);
  type metadata accessor for DSPSplitComplex();
  v14 = sub_2721F065C(&qword_280881EE8, &unk_27237E090);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2723769DC();
  if (v17)
  {
    v18 = v17;
    swift_beginAccess();
    v19 = *v11;
    *v11 = v18;

    swift_beginAccess();
    v20 = *v12;
    if ((*v12 & 0x8000000000000000) == 0)
    {
      if (!v20)
      {
        v3[5] = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

      v21 = *v12;
      v22 = sub_272377B5C();
      *(v22 + 16) = v20;
      bzero((v22 + 32), 4 * v20);
      v23 = v3[2];
      v3[5] = v22;
      if ((v23 & 0x8000000000000000) == 0)
      {
        if (v23)
        {
          v24 = sub_272377B5C();
          *(v24 + 16) = v23;
          bzero((v24 + 32), 4 * v23);
          v25 = v3[2];
          v3[6] = v24;
          if ((v25 & 0x8000000000000000) == 0)
          {
            if (v25)
            {
              v26 = sub_272377B5C();
              *(v26 + 16) = v25;
              bzero((v26 + 32), 4 * v25);
              v27 = v3[2];
              v3[7] = v26;
              if ((v27 & 0x8000000000000000) == 0)
              {
                if (v27)
                {
                  v28 = sub_272377B5C();
                  *(v28 + 16) = v27;
                  bzero((v28 + 32), 4 * v27);
                  v29 = v3[2];
                  v3[8] = v28;
                  if ((v29 & 0x8000000000000000) == 0)
                  {
                    if (v29)
                    {
                      v30 = sub_272377B5C();
                      *(v30 + 16) = v29;
                      bzero((v30 + 32), 4 * v29);
                      v31 = v3[2];
                      v3[9] = v30;
                      if ((v31 & 0x8000000000000000) == 0)
                      {
                        if (v31)
                        {
                          v32 = sub_272377B5C();
                          *(v32 + 16) = v31;
                          bzero((v32 + 32), 4 * v31);
                        }

                        else
                        {
                          v32 = MEMORY[0x277D84F90];
                        }

                        goto LABEL_25;
                      }

                      goto LABEL_37;
                    }

LABEL_24:
                    v32 = MEMORY[0x277D84F90];
                    v3[9] = MEMORY[0x277D84F90];
LABEL_25:
                    v3[10] = v32;
                    return;
                  }

LABEL_36:
                  __break(1u);
LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

LABEL_23:
                v3[8] = MEMORY[0x277D84F90];
                goto LABEL_24;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_22:
            v3[7] = MEMORY[0x277D84F90];
            goto LABEL_23;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_21:
        v3[6] = MEMORY[0x277D84F90];
        goto LABEL_22;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_38:
  __break(1u);
}

void type metadata accessor for DSPSplitComplex()
{
  if (!qword_280881F20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280881F20);
    }
  }
}

char *sub_27223F8EC(int64_t a1)
{
  v2 = v1;
  v57[4] = *MEMORY[0x277D85DE8];
  v50 = (*(*v1 + 336))(v57);
  v5 = v4;
  v6 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  v49 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v8 = (*(*v2 + 152))();
    vDSP_vclr(v6 + 8, 1, v8);
    vDSP_mmov((a1 + 32), v6 + 8, *(a1 + 16), 1uLL, 1uLL, 1uLL);
    v48 = (*(*v2 + 240))(v56);
    v10 = v9;
    v11 = *v9;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v11;
    v47 = v10;
    if ((v12 & 1) == 0)
    {
      v11 = sub_2722002AC(v11);
      *v10 = v11;
    }

    v46 = (*(*v2 + 264))(v55);
    v14 = v13;
    v15 = *v13;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    v45 = v14;
    if ((v16 & 1) == 0)
    {
      v15 = sub_2722002AC(v15);
      *v14 = v15;
    }

    v44 = (*(*v2 + 288))(v54);
    v18 = v17;
    v19 = *v17;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_2722002AC(v19);
      *v18 = v19;
    }

    v52.realp = (v15 + 32);
    v52.imagp = (v19 + 32);
    if (!(*(*v2 + 200))())
    {
      __break(1u);
    }

    sub_2723769EC();

    v43 = v52;
    v21 = (*(*v2 + 312))(v53);
    v23 = v22;
    v24 = *v22;
    v25 = *(*v22 + 2);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((v26 & 1) == 0)
    {
      v24 = sub_2722002AC(v24);
      *v23 = v24;
    }

    __A = v43;
    vDSP_zvabs(&__A, 1, v24 + 8, 1, v25);
    v21(v53, 0);
    *v18 = v19;
    v44(v54, 0);
    *v45 = v15;
    v46(v55, 0);
    *v47 = v11;
    v48(v56, 0);
    *v49 = v6;
    v6 = v57;
    v27 = v50(v57, 0);
    v28 = *(*v2 + 296);
    v29 = (v28)(v27);
    v30 = v28();
    v31 = (*(*v2 + 360))(v57);
    sub_272242274(v29, v30, v32);

    v33 = v31(v57, 0);
    v5 = v2;
    v34 = (*(*v2 + 344))(v33);
    a1 = *(v34 + 16);
    if (a1)
    {
      break;
    }

    v2 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v6 = sub_2722002AC(v6);
    *v5 = v6;
  }

  v57[0] = MEMORY[0x277D84F90];
  v5 = v57;
  v6 = v34;
  sub_2722005AC(0, a1, 0);
  v35 = v6;
  v2 = v57[0];
  v36 = *(v57[0] + 16);
  v37 = 32;
  do
  {
    v38 = *&v35[v37];
    v57[0] = v2;
    v39 = *(v2 + 3);
    if (v36 >= v39 >> 1)
    {
      v5 = v57;
      sub_2722005AC((v39 > 1), v36 + 1, 1);
      v35 = v6;
      v2 = v57[0];
    }

    *(v2 + 2) = v36 + 1;
    *&v2[4 * v36 + 32] = v38 * 0.25;
    v37 += 4;
    ++v36;
    --a1;
  }

  while (a1);

  if (!*(v2 + 2))
  {
    goto LABEL_21;
  }

LABEL_17:
  v40 = *(v2 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2722002AC(v2);
  }

  *(v2 + 8) = v40 * 0.5;
  v41 = *MEMORY[0x277D85DE8];
  return v2;
}

void *sub_27223FECC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return v0;
}

uint64_t sub_27223FF1C()
{
  sub_27223FECC();

  return swift_deallocClassInstance();
}

uint64_t sub_272240068(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_2722400B8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void sub_27224016C()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft + 8) != 1)
  {
    v5 = *v1;
    return;
  }

  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  v3 = log2f(v2);
  v4 = exp2f(ceilf(v3));
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (v4 > -9.2234e18)
  {
    if (v4 < 9.2234e18)
    {
      *v1 = v4;
      v1[8] = 0;
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_272240238(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_272240250(void *a1))(void *result)
{
  a1[1] = v1;
  sub_27224016C();
  *a1 = v3;
  return sub_272240298;
}

void *sub_272240298(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_2722402B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator);
  }

  else
  {
    v3 = MEMORY[0x277D85000];
    v4 = v0;
    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
    v6 = (*((*v3 & *v0) + 0x88))();
    type metadata accessor for VAFFTCalculator();
    v2 = swift_allocObject();
    sub_27223F518(v5, v6);
    v7 = *(v4 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2722403A8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator);
  *(v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator) = a1;
}

uint64_t (*sub_2722403C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2722402B4();
  return sub_272240408;
}

void sub_272240428()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened);
LABEL_65:

    return;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
  v5 = logf((v4 / 700.0) + 1.0);
  v6 = (*((*v3 & *v0) + 0xB0))();
  v7 = logf((v6 / 700.0) + 1.0);
  v8 = *((*v3 & *v0) + 0x98);
  v9 = v8();
  v64 = *((*v3 & *v0) + 0xF0);
  v10 = v64();
  if (v10 < -3)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v11 = v10;
  v60 = v1;
  v65 = v0;
  v12 = v10 / 2;
  v13 = v10 / 2 + 1;
  if (v10 < -1)
  {
    v14 = MEMORY[0x277D84F90];
    if (v10 / 2 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = sub_272377B5C();
    *(v14 + 16) = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  *(v14 + 32) = 0;
  if ((v11 + 1) >= 3)
  {
    bzero((v14 + 36), 4 * v12);
  }

LABEL_10:
  v15 = v8();
  v16 = sub_27220392C(v14, v15);

  v18 = (*((*v3 & *v0) + 0x90))(v17);
  v19 = v64();
  v20 = v8();
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = 0;
    v61 = (((v7 / 2.3026) * 2595.0) - ((v5 / 2.3026) * 2595.0)) / (v9 + 1.0);
    v62 = (v5 / 2.3026) * 2595.0;
    v22 = v18 / v19;
    v63 = v20;
    while (1)
    {
      if (v21 == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_74;
      }

      v23 = v64();
      if (v23 < -3)
      {
        break;
      }

      v24 = v21 + 1;
      if ((v23 + 3) >= 2)
      {
        v25 = 0;
        v26 = v62 + (v61 * v21);
        v27 = v61 * v24;
        v28 = v62 + v27;
        v29 = v61 * (v21 + 2);
        v30 = v62 + v29;
        v31 = (v62 + v27) - v26;
        v32 = (v62 + v29) - (v62 + v27);
        v33 = v23 / 2 + 1;
        do
        {
          v35 = (logf(((v22 * v25) / 700.0) + 1.0) / 2.3026) * 2595.0;
          if (v26 < v35 && v35 < v30)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (v35 <= v28)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v16 = sub_272200344(v16);
              }

              if (v21 >= v16[2])
              {
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
                goto LABEL_75;
              }

              v38 = v16[v21 + 4];
              v40 = swift_isUniquelyReferenced_nonNull_native();
              v16[v21 + 4] = v38;
              if (v40)
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v38 = sub_2722002AC(v38);
                v16[v21 + 4] = v38;
                if ((v25 & 0x8000000000000000) != 0)
                {
LABEL_44:
                  __break(1u);
LABEL_45:
                  v41 = sub_2721F065C(&qword_280881F28, &unk_272381E80);
                  v42 = sub_2722199BC(&qword_280881F30, &qword_280881F28, &unk_272381E80);
                  v43 = sub_2722199BC(&qword_280881F38, &qword_280881858, &unk_27237C260);
                  v44 = sub_2722C0820(v41, v42, v43);
                  v45 = *(v44 + 16);
                  if (!v45)
                  {
                    v47 = MEMORY[0x277D84F90];
LABEL_64:

                    v59 = *(v65 + v60);
                    *(v65 + v60) = v47;

                    goto LABEL_65;
                  }

                  v46 = 0;
                  v47 = MEMORY[0x277D84F90];
                  while (2)
                  {
                    if (v46 >= *(v44 + 16))
                    {
                      goto LABEL_71;
                    }

                    v48 = *(v44 + 32 + 8 * v46);
                    v49 = *(v48 + 16);
                    v50 = *(v47 + 2);
                    v51 = v50 + v49;
                    if (__OFADD__(v50, v49))
                    {
                      goto LABEL_72;
                    }

                    v52 = *(v44 + 32 + 8 * v46);

                    v53 = swift_isUniquelyReferenced_nonNull_native();
                    if (v53 && v51 <= *(v47 + 3) >> 1)
                    {
                      if (!*(v48 + 16))
                      {
LABEL_47:

                        if (v49)
                        {
                          goto LABEL_73;
                        }

LABEL_48:
                        if (v45 == ++v46)
                        {
                          goto LABEL_64;
                        }

                        continue;
                      }
                    }

                    else
                    {
                      if (v50 <= v51)
                      {
                        v54 = v50 + v49;
                      }

                      else
                      {
                        v54 = v50;
                      }

                      v47 = sub_2721FF8B4(v53, v54, 1, v47);
                      if (!*(v48 + 16))
                      {
                        goto LABEL_47;
                      }
                    }

                    break;
                  }

                  v55 = *(v47 + 2);
                  if ((*(v47 + 3) >> 1) - v55 < v49)
                  {
                    goto LABEL_76;
                  }

                  memcpy(&v47[4 * v55 + 32], (v48 + 32), 4 * v49);

                  if (v49)
                  {
                    v56 = *(v47 + 2);
                    v57 = __OFADD__(v56, v49);
                    v58 = v56 + v49;
                    if (v57)
                    {
                      goto LABEL_77;
                    }

                    *(v47 + 2) = v58;
                  }

                  goto LABEL_48;
                }
              }

              if (v25 >= *(v38 + 2))
              {
                goto LABEL_70;
              }

              v34 = (v35 - v26) / v31;
            }

            else
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v16 = sub_272200344(v16);
              }

              if (v21 >= v16[2])
              {
                goto LABEL_67;
              }

              v38 = v16[v21 + 4];
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v16[v21 + 4] = v38;
              if (v39)
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v38 = sub_2722002AC(v38);
                v16[v21 + 4] = v38;
                if ((v25 & 0x8000000000000000) != 0)
                {
                  goto LABEL_68;
                }
              }

              if (v25 >= *(v38 + 2))
              {
                goto LABEL_69;
              }

              v34 = (v30 - v35) / v32;
            }

            *&v38[4 * v25 + 32] = v34;
          }

          ++v25;
        }

        while (v33 != v25);
      }

      ++v21;
      if (v24 == v63)
      {
        goto LABEL_45;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_272240AA4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened);
  *(v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened) = a1;
}

uint64_t (*sub_272240ABC(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  sub_272240428();
  *a1 = v3;
  return sub_272240B04;
}

uint64_t sub_272240B24()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow);
LABEL_12:

    return v2;
  }

  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  result = v3();
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = v1;
    if (result)
    {
      v5 = result;
      v2 = sub_272377B5C();
      *(v2 + 16) = v5;
      bzero((v2 + 32), 4 * v5);
      result = v3();
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_6:
        v6 = result;
        if (!result)
        {
LABEL_11:
          v8 = *(v0 + v9);
          *(v0 + v9) = v2;

          goto LABEL_12;
        }

        v7 = 0;
        while (1)
        {
          result = v3();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_15;
          }

          if (v7 >= *(v2 + 16))
          {
            goto LABEL_16;
          }

          *(v2 + 32 + 4 * v7) = (cosf(((v7 + v7) * 3.1416) / (result - 1)) * -0.46) + 0.54;
          if (v6 == ++v7)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      result = v3();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_272240CCC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow);
  *(v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow) = a1;
}

uint64_t (*sub_272240CE4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_272240B24();
  return sub_272240D2C;
}

uint64_t sub_272240D4C(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(v4 + *a3);
  *(v4 + *a3) = v5;
  return a4(v6);
}

uint64_t sub_272240D64(uint64_t a1)
{
  v2 = 0.0 - sub_272242360(a1);

  return sub_2722423C4(a1, v2);
}

float sub_272240DA4(float a1)
{
  if (a1 <= 1.2e-38)
  {
    a1 = 1.2e-38;
  }

  return logf(a1);
}

uint64_t sub_272240DBC(char **a1)
{
  v4 = *a1;
  v5 = *(*a1 + 2);
  v9[0] = 1.0;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v9[1] = -v6();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = v5 - 1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    result = sub_2722002AC(v4);
    v4 = result;
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v4 = sub_2722002AC(v4);
  v7 = v5 - 1;
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  vDSP_deq22(v4 + 8, 1, v9, v4 + 8, 1, v7);
  v2 = v6();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(v4 + 2))
  {
LABEL_5:
    *(v4 + 8) = (1.0 - v2) * *(v4 + 8);
    *a1 = v4;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_272240EE4(char **a1)
{
  v4 = *a1;
  if (*(*a1 + 2) >= 2uLL)
  {
    v6 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
    if ((v6)() != 1.0)
    {
      v8 = *(v4 + 2);
      if (v8 < 2)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v9 = v8 - 1;
        if (v8 - 1 >= *(v4 + 2))
        {
          break;
        }

        v8 = &v4[4 * v8];
        v2 = *(v8 + 28);
        v7 = v6();
        v11 = *(v4 + 2);
        if (v9 - 1 >= v11)
        {
          goto LABEL_16;
        }

        if (v9 >= v11)
        {
          goto LABEL_17;
        }

        *(v8 + 28) = v2 - (v10 * *(v8 + 24));
        v8 = v9;
        if (v9 <= 1)
        {
          v8 = *(v4 + 2);
LABEL_10:
          if (!v8)
          {
            goto LABEL_18;
          }

          v3 = *(v4 + 8);
          v2 = (v6)(v7);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (*(v4 + 2))
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }

LABEL_19:
          v4 = sub_2722002AC(v4);
          if (*(v4 + 2))
          {
LABEL_13:
            *(v4 + 8) = v3 * (1.0 - v2);
            *a1 = v4;
            return;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          v4 = sub_2722002AC(v4);
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }
}

uint64_t sub_272241064(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v7 = *(v6() + 16);

  if (v4 != v7)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v68 = a1;
  v9 = *((*v5 & *v2) + 0xB8);

  if (v9(v10))
  {

    v68 = (*((*v5 & *v2) + 0x150))(a1);
  }

  v11 = (*((*v5 & *v2) + 0x168))(&v68);
  v12 = *((*v5 & *v2) + 0xC0);
  v13 = *((v12)(v11) + 16);

  v15 = *((*v5 & *v2) + 0x88);
  if (v13 != (v15)(v14))
  {
    result = v15();
    if (result < 0)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (result)
    {
      v16 = result;
      v17 = sub_272377B5C();
      *(v17 + 16) = v16;
      bzero((v17 + 32), 4 * v16);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    (*((*v5 & *v2) + 0xC8))(v17);
  }

  v18 = *((*v5 & *v2) + 0xD0);
  v19 = v18(v67);
  sub_27224230C(v20);
  v21 = v19(v67, 0);
  v22 = v6;
  v23 = v68;
  v24 = (v22)(v21);
  v25 = v18(v67);
  sub_272242274(v23, v24, v26);

  v27 = v25(v67, 0);
  v28 = (*((*v5 & *v2) + 0x108))(v27);
  v29 = v12();
  v30 = (*(*v28 + 376))(v29);

  v32 = *((*v5 & *v2) + 0xF0);
  result = (v32)(v31);
  if (result < -3)
  {
    goto LABEL_29;
  }

  v33 = *(v30 + 16);
  if (v33 <= result / 2)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = 2 * (result / 2) + 3;
  v65 = v32;
  if (v33 != v34 >> 1)
  {
    sub_272241D34(v30, v30 + 32, 0, v34);
    v36 = v35;

    v30 = v36;
  }

  v37 = *((*v5 & *v2) + 0xD8);
  v38 = *(v37(result) + 16);

  v40 = *((*v5 & *v2) + 0x98);
  if (v38 == (v40)(v39))
  {
    goto LABEL_20;
  }

  result = v40();
  if (result < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if (result)
  {
    v41 = result;
    v42 = sub_272377B5C();
    *(v42 + 16) = v41;
    bzero((v42 + 32), 4 * v41);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  (*((*v5 & *v2) + 0xE0))(v42);
LABEL_20:
  v66 = v37;
  v43 = *((*v5 & *v2) + 0xE8);
  v44 = v43(v67);
  sub_27224230C(v45);
  v46 = v44(v67, 0);
  v47 = (*((*v5 & *v2) + 0x120))(v46);
  v48 = v40();
  v49 = v65() / 2;
  v50 = v66;
  v51 = v43(v67);
  sub_272242158(v30, v47, v52, 1, v48, v49 + 1);

  v53 = v51(v67, 0);
  v54 = v66(v53);
  v55 = *(v54 + 16);
  if (v55)
  {
    v67[0] = MEMORY[0x277D84F90];
    v56 = sub_2722005AC(0, v55, 0);
    v57 = v67[0];
    v58 = *((*MEMORY[0x277D85000] & *v2) + 0x158);
    v59 = 32;
    do
    {
      v56 = v58(v56, *(v54 + v59));
      v67[0] = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      if (v62 >= v61 >> 1)
      {
        v63 = v60;
        v56 = sub_2722005AC((v61 > 1), v62 + 1, 1);
        v60 = v63;
        v57 = v67[0];
      }

      *(v57 + 16) = v62 + 1;
      *(v57 + 4 * v62 + 32) = v60;
      v59 += 4;
      --v55;
    }

    while (v55);

    v50 = v66;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v64 = (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(v57);
  return v50(v64);
}

uint64_t sub_272241824(uint64_t result, int64_t a2, uint64_t a3)
{
  v3 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = result;
  if (v3 != *(result + 16))
  {
    return MEMORY[0x277D84F90];
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = MEMORY[0x277D84F90];
    if (a2)
    {
      v19 = MEMORY[0x277D84F90];
      result = sub_2722005CC(0, a2, 0);
      v8 = 0;
      v9 = v19;
      while (1)
      {
        v10 = v8 * a3;
        if ((v8 * a3) >> 64 != (v8 * a3) >> 63)
        {
          break;
        }

        v11 = ++v8 * a3;
        if ((v8 * a3) >> 64 != (v8 * a3) >> 63)
        {
          goto LABEL_28;
        }

        v12 = v11 - v10;
        if (v11 < v10)
        {
          goto LABEL_29;
        }

        if (v10 < 0)
        {
          goto LABEL_30;
        }

        if (v3 < v11)
        {
          goto LABEL_31;
        }

        if (v3 == v12)
        {

          v13 = v4;
        }

        else
        {
          v13 = v6;
          if (v11 != v10)
          {
            if (v12 < 1)
            {
              v17 = 4 * v12;
              v13 = v6;
            }

            else
            {
              sub_2721F065C(&qword_280881848, &unk_27237C250);
              v13 = swift_allocObject();
              v16 = j__malloc_size(v13);
              v17 = 4 * v12;
              v18 = v16 - 32;
              if (v16 < 32)
              {
                v18 = v16 - 29;
              }

              v13[2] = v12;
              v13[3] = 2 * (v18 >> 2);
            }

            result = memcpy(v13 + 4, v4 + 4 * v10 + 32, v17);
          }
        }

        v15 = *(v19 + 16);
        v14 = *(v19 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_2722005CC((v14 > 1), v15 + 1, 1);
        }

        *(v19 + 16) = v15 + 1;
        *(v19 + 8 * v15 + 32) = v13;
        if (a2 == v8)
        {
          return v9;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_33:
  __break(1u);
  return result;
}

id sub_272241A54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_272241AA4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id VAFeatureExtract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAFeatureExtract.init()()
{
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract_windowAppliedFrame] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract_frameFeatureVec] = v1;
  v2 = &v0[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft];
  *v2 = 0;
  v2[8] = 1;
  *&v0[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator] = 0;
  *&v0[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened] = 0;
  *&v0[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VAFeatureExtract();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_272241C80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_272241D34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881848, &unk_27237C250);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_272241E04(void *result, int64_t a2, char a3, void *a4)
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

uint64_t sub_2722420D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_272242114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_272242158(uint64_t a1, uint64_t a2, char **a3, int64_t a4, int64_t a5, int64_t a6)
{
  if ((a4 * a6) >> 64 != (a4 * a6) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = a1;
  if (a4 * a6 != *(a1 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __P = a6;
  v7 = a5;
  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = a2;
  if (a5 * a6 != *(a2 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = a4;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3;
  v12 = *a3;
  if (a4 * a5 == *(*a3 + 2))
  {
    v13 = *a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v12 = sub_2722002AC(v12);
LABEL_8:
  if (((v7 | v8 | __P) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    vDSP_mmul((v11 + 32), 1, (v9 + 32), 1, v12 + 8, 1, v8, v7, __P);
    *v6 = v12;
  }
}

uint64_t sub_272242274(uint64_t a1, uint64_t a2, char **a3)
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = a3;
  v5 = *a3;
  if (v7 != *(*a3 + 2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2;
  v6 = a1;
  v8 = *a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = sub_2722002AC(v5);
  }

  result = MEMORY[0x2743C6BD0](v6 + 32, 1, v4 + 32, 1, v5 + 32, 1, *(v5 + 2));
  *v3 = v5;
  return result;
}

void sub_27224230C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2722002AC(v2);
  }

  vDSP_vclr(v2 + 8, 1, *(v2 + 2));
  *a1 = v2;
}

float sub_272242360(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  __C = 0.0;
  vDSP_meanv((a1 + 32), 1, &__C, *(a1 + 16));
  result = __C;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2722423C4(uint64_t a1, float a2)
{
  sub_2721F065C(&qword_280881848, &unk_27237C250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 32) = a2;
  v5 = *(a1 + 16);

  v6 = sub_272242468(v5, inited, a1);

  swift_setDeallocating();
  return v6;
}

uint64_t sub_272242468(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = sub_272377B5C();
      *(v6 + 16) = v5;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    result = MEMORY[0x2743C6BF0](a3 + 32, 1, a2 + 32, v6 + 32, 1, *(a3 + 16));
    v7 = *(a3 + 16);
    if (v7 <= v5)
    {
      *(v6 + 16) = v7;
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27224251C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_272242560(float a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_2722425D4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_272242648(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_27224270C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_272242780(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_2722427F4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_272242868(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

__n128 AVSEndpointer.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 56) = vdupq_n_s64(0x28uLL);
  *(v2 + 72) = 1060320051;
  *(v2 + 80) = xmmword_27237E1E0;
  *(v2 + 96) = 0;
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  result = *(a1 + 24);
  *(v2 + 40) = result;
  return result;
}

uint64_t AVSEndpointer.init(config:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = vdupq_n_s64(0x28uLL);
  *(v1 + 72) = 1060320051;
  *(v1 + 80) = xmmword_27237E1E0;
  *(v1 + 96) = 0;
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 40) = *(a1 + 24);
  return v1;
}

uint64_t sub_2722429B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (((*(*v1 + 408))() & 1) != 0 || v4 < (*(*v1 + 192))())
  {
    (*(*v1 + 416))(0);
    return 0;
  }

  v5 = (*(*v1 + 216))();
  v6 = (*(*v1 + 240))();
  v7 = sub_2722436FC();
  v8 = sub_272243704();
  v9 = sub_272243714();
  v11 = sub_27224371C(a1, v6, v7, v9, v5, v8);
  v12 = *(v10 + 16);
  if (!v12)
  {
LABEL_10:

    return 0;
  }

  v13 = v12 - 1;
  v14 = v10 + 32;
  v15 = *(v10 + 32 + 8 * (v12 - 1));
  v49 = *(*v2 + 168);
  result = v49();
  v17 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = (*(*v2 + 264))();
  if (__OFSUB__(v17, result))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v15 < v17 - result)
  {
    goto LABEL_10;
  }

  result = v49();
  if (__OFSUB__(v4, result))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  if (v4 - result < *(v14 + 8 * v13))
  {
    goto LABEL_10;
  }

  v45 = a1;
  v18 = v11;
  v19 = 0;
  v47 = v18;
  v46 = v18 + 40;
  v20 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v48 = v12;
  do
  {
    v22 = v19 + 1;
    if (v13 == v19)
    {
      v23 = *(v14 + 8 * v13);
      v24 = v4 - v23;
      if (__OFSUB__(v4, v23))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (v22 >= *(v47 + 2))
      {
        goto LABEL_45;
      }

      v25 = *&v46[8 * v19];
      v26 = *(v14 + 8 * v19);
      v24 = v25 - v26;
      if (__OFSUB__(v25, v26))
      {
        goto LABEL_46;
      }
    }

    result = v49();
    if (result < v24)
    {
      v27 = *(v14 + 8 * v19);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_27220897C(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_27220897C((v28 > 1), v29 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v29 + 1;
      *(v21 + 8 * v29 + 32) = v27;
    }

    v19 = v22;
  }

  while (v48 != v22);

  if (v4)
  {
    v30 = sub_272242F18(0, v4, 0);
    v31 = *(*v2 + 336);
    v32 = (v45 + 32);
    do
    {
      v33 = *v32;
      v30 = v31(v30);
      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v38 = v34;
        v30 = sub_272242F18((v35 > 1), v36 + 1, 1);
        v34 = v38;
      }

      *(v20 + 16) = v37;
      *(v20 + v36 + 32) = v34 <= v33;
      ++v32;
      --v4;
    }

    while (v4);
    goto LABEL_33;
  }

  v37 = *(v20 + 16);
  v39 = v20;
  if (v37)
  {
LABEL_33:
    v39 = MEMORY[0x277D84F90];
    v40 = 32;
    do
    {
      if (*(v20 + v40) == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_272242F18(0, *(v39 + 16) + 1, 1);
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_272242F18((v41 > 1), v42 + 1, 1);
        }

        *(v39 + 16) = v42 + 1;
        *(v39 + v42 + 32) = 1;
      }

      ++v40;
      --v37;
    }

    while (v37);
  }

  v43 = *(v39 + 16);

  return *(v21 + 16) && v43 >= (*(*v2 + 360))(v44);
}

char *sub_272242F18(char *a1, int64_t a2, char a3)
{
  result = sub_272242F38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272242F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881F40, &unk_2723860C0);
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

uint64_t OS_os_log.default(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377EAC();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t sub_272243114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_27237E2B0;
        sub_27221629C(a5 + 32, v16 + 32);
        sub_27221629C(a5 + 72, v16 + 72);
        sub_27221629C(a5 + 112, v16 + 112);
        sub_27221629C(a5 + 152, v16 + 152);
        sub_27221629C(a5 + 192, v16 + 192);
        sub_27221629C(a5 + 232, v16 + 232);
        v8 = a5 + 272;
        v9 = v16 + 272;
        goto LABEL_18;
      }

      if (v6 == 8)
      {
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_27237E2C0;
        sub_27221629C(a5 + 32, v12 + 32);
        sub_27221629C(a5 + 72, v12 + 72);
        sub_27221629C(a5 + 112, v12 + 112);
        sub_27221629C(a5 + 152, v12 + 152);
        sub_27221629C(a5 + 192, v12 + 192);
        sub_27221629C(a5 + 232, v12 + 232);
        sub_27221629C(a5 + 272, v12 + 272);
        v8 = a5 + 312;
        v9 = v12 + 312;
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v6 == 5)
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_27237AFA0;
      sub_27221629C(a5 + 32, v14 + 32);
      sub_27221629C(a5 + 72, v14 + 72);
      sub_27221629C(a5 + 112, v14 + 112);
      sub_27221629C(a5 + 152, v14 + 152);
      v8 = a5 + 192;
      v9 = v14 + 192;
    }

    else
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_27237AF70;
      sub_27221629C(a5 + 32, v10 + 32);
      sub_27221629C(a5 + 72, v10 + 72);
      sub_27221629C(a5 + 112, v10 + 112);
      sub_27221629C(a5 + 152, v10 + 152);
      sub_27221629C(a5 + 192, v10 + 192);
      v8 = a5 + 232;
      v9 = v10 + 232;
    }

LABEL_18:
    sub_27221629C(v8, v9);
    sub_27237718C();
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_27237AFB0;
      sub_27221629C(a5 + 32, v15 + 32);
      sub_27221629C(a5 + 72, v15 + 72);
      v8 = a5 + 112;
      v9 = v15 + 112;
    }

    else
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_27237AF60;
      sub_27221629C(a5 + 32, v11 + 32);
      sub_27221629C(a5 + 72, v11 + 72);
      sub_27221629C(a5 + 112, v11 + 112);
      v8 = a5 + 152;
      v9 = v11 + 152;
    }

    goto LABEL_18;
  }

  if (v6 == 1)
  {
    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_27237AF80;
    v8 = a5 + 32;
    v9 = v13 + 32;
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_27237AF90;
    sub_27221629C(a5 + 32, v7 + 32);
    v8 = a5 + 72;
    v9 = v7 + 72;
    goto LABEL_18;
  }

LABEL_21:

  return sub_27237718C();
}

uint64_t OS_os_log.info(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E6C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t OS_os_log.debug(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E7C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t OS_os_log.error(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E8C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t OS_os_log.fault(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E9C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

char *sub_27224371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v59[6] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  v57 = v10;
  if (v10)
  {
    v59[0] = MEMORY[0x277D84F90];
    sub_272242F18(0, v10, 0);
    v11 = v59[0];
    v13 = (a1 + 32);
    v14 = *(v59[0] + 2);
    do
    {
      v15 = *v13;
      v59[0] = v11;
      v16 = *(v11 + 3);
      v17 = v14 + 1;
      if (v14 >= v16 >> 1)
      {
        sub_272242F18((v16 > 1), v14 + 1, 1);
        v11 = v59[0];
      }

      *(v11 + 2) = v17;
      v11[v14 + 32] = v15 >= a5;
      ++v13;
      ++v14;
      --v10;
    }

    while (v10);
  }

  else
  {
    v17 = *(MEMORY[0x277D84F90] + 16);
    v18 = MEMORY[0x277D84F90];
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v18 = MEMORY[0x277D84F90];
  do
  {
    if (v11[v19 + 32] == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27220058C(0, *(v18 + 16) + 1, 1);
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_27220058C((v20 > 1), v21 + 1, 1);
      }

      *(v18 + 16) = v21 + 1;
      *(v18 + 8 * v21 + 32) = v19;
    }

    ++v19;
  }

  while (v17 != v19);
LABEL_16:

  v59[0] = v18;
  sub_272244348(v59);
  v22 = v59[0];
  v23 = *(v59[0] + 2);
  if (v23)
  {
    v24 = v59[0] + 32;
    v25 = *(v59[0] + 4);
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_27237AF80;
    *(inited + 32) = v25;
    v55 = a2;
    if (v23 == 1)
    {
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = 1;
      v30 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    v52 = a4;
    v56 = a1 + 32;
    v31 = 1;
    v53 = MEMORY[0x277D84F90];
    v54 = MEMORY[0x277D84F90];
    v30 = v22;
    do
    {
      v27 = 0;
      v28 = v31;
      while (1)
      {
        if (v31 < 1 || v28 >= v23)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v28 >= *(v22 + 2))
        {
          goto LABEL_67;
        }

        v32 = v25 + a3;
        if (__OFADD__(v25, a3))
        {
          goto LABEL_68;
        }

        v25 = *&v24[8 * v28];
        if (v32 < v25)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_27220897C(0, *(inited + 16) + 1, 1, inited);
        }

        v34 = *(inited + 16);
        v33 = *(inited + 24);
        v29 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          inited = sub_27220897C((v33 > 1), v34 + 1, 1, inited);
        }

        *(inited + 16) = v29;
        *(inited + 8 * v34 + 32) = v25;
        if (v25 >= v57)
        {
          goto LABEL_69;
        }

        if (*(v56 + 4 * v25) >= a6 && __OFADD__(v27++, 1))
        {
          goto LABEL_70;
        }

        v22 = v30;
        if (v23 == ++v28)
        {
          goto LABEL_52;
        }
      }

      v36 = *(inited + 16);
      if (v36 < v55 || v27 < v52)
      {
        goto LABEL_50;
      }

      if (!v36)
      {
        __break(1u);
LABEL_76:
        __break(1u);
      }

      v37 = *(inited + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_27220897C(0, *(v54 + 2) + 1, 1, v54);
      }

      v39 = *(v54 + 2);
      v38 = *(v54 + 3);
      if (v39 >= v38 >> 1)
      {
        v54 = sub_27220897C((v38 > 1), v39 + 1, 1, v54);
      }

      *(v54 + 2) = v39 + 1;
      *&v54[8 * v39 + 32] = v37;
      v40 = *(inited + 16);
      if (!v40)
      {
        goto LABEL_76;
      }

      v41 = *(inited + 32 + 8 * v40 - 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_27220897C(0, *(v53 + 2) + 1, 1, v53);
      }

      v43 = *(v53 + 2);
      v42 = *(v53 + 3);
      if (v43 >= v42 >> 1)
      {
        v53 = sub_27220897C((v42 > 1), v43 + 1, 1, v53);
      }

      *(v53 + 2) = v43 + 1;
      *&v53[8 * v43 + 32] = v41;
      v22 = v30;
LABEL_50:
      v31 = v28 + 1;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_27237AF80;
      *(v44 + 32) = v25;
      inited = v44;
    }

    while (v23 - 1 != v28);
    v27 = 0;
    v29 = *(inited + 16);
LABEL_52:
    a4 = v52;
    v28 = v53;
    v30 = v54;
LABEL_53:
    if (v29 < v55 || v27 < a4)
    {
      goto LABEL_64;
    }

    if (v29)
    {
      v24 = (inited + 32);
      v25 = *(inited + 32);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v30 = sub_27220897C(0, *(v30 + 2) + 1, 1, v30);
LABEL_57:
    v46 = *(v30 + 2);
    v45 = *(v30 + 3);
    if (v46 >= v45 >> 1)
    {
      v30 = sub_27220897C((v45 > 1), v46 + 1, 1, v30);
    }

    *(v30 + 2) = v46 + 1;
    *&v30[8 * v46 + 32] = v25;
    v47 = *(inited + 16);
    if (v47)
    {
      v24 = *&v24[8 * v47 - 8];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_61:
        v49 = *(v28 + 16);
        v48 = *(v28 + 24);
        if (v49 >= v48 >> 1)
        {
          v28 = sub_27220897C((v48 > 1), v49 + 1, 1, v28);
        }

        *(v28 + 16) = v49 + 1;
        *(v28 + 8 * v49 + 32) = v24;
LABEL_64:

        goto LABEL_65;
      }
    }

    else
    {
      __break(1u);
    }

    v28 = sub_27220897C(0, *(v28 + 16) + 1, 1, v28);
    goto LABEL_61;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_65:
  v50 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_272243D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 / a2;
  if (v3 != 0.0)
  {
    sub_272201EE0(0.0, v2, v3);
    v6 = *(v5 + 16);
    if (!v6)
    {
LABEL_14:

      return;
    }

    v7 = (v5 + 32);
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *v7;
      if ((*v7 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v10 <= -9.2234e18)
      {
        goto LABEL_16;
      }

      if (v10 >= 9.2234e18)
      {
        goto LABEL_17;
      }

      v11 = v10;
      if (v10 < 0)
      {
        goto LABEL_18;
      }

      if (v2 <= v11)
      {
        goto LABEL_19;
      }

      v12 = *(v8 + 8 * v11);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_272241E04(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_272241E04((v13 > 1), v14 + 1, 1, v9);
      }

      v9[2] = v14 + 1;
      v9[v14 + 4] = v12;
      ++v7;
      if (!--v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_272243EC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = v5 - 1;
  if (v5 == 1)
  {

    return v4;
  }

  if (v5)
  {
    if (v5 - 2 < *(a2 + 16))
    {
      result = sub_27220897C(0, 1, 1, MEMORY[0x277D84F90]);
      v7 = result;
      v8 = (a2 + 32);
      v9 = (v4 + 40);
      do
      {
        v11 = *v9++;
        v10 = v11;
        v12 = *v8++;
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          result = sub_27220897C((v14 > 1), v15 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v16;
        *(v7 + 8 * v15 + 32) = v13;
        --v6;
      }

      while (v6);
      v17 = 0;
      v33 = v4 + 32;
      v34 = v5;
      v18 = MEMORY[0x277D84F90];
      v19 = 4;
      v4 = MEMORY[0x277D84F90];
      do
      {
        if (*(v7 + 8 * v19) > a3)
        {
          if (v17 >= v34)
          {
            goto LABEL_39;
          }

          v20 = *(v33 + 8 * v17);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v4 + 16) + 1, 1, v4);
            v4 = result;
          }

          v22 = *(v4 + 16);
          v21 = *(v4 + 24);
          if (v22 >= v21 >> 1)
          {
            result = sub_27220897C((v21 > 1), v22 + 1, 1, v4);
            v4 = result;
          }

          *(v4 + 16) = v22 + 1;
          *(v4 + 8 * v22 + 32) = v20;
          if ((v19 - 4) >= *(a2 + 16))
          {
            goto LABEL_41;
          }

          v23 = *(a2 + 8 * v19);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v18 + 16) + 1, 1, v18);
            v18 = result;
          }

          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_27220897C((v24 > 1), v25 + 1, 1, v18);
            v18 = result;
          }

          v17 = v19 - 3;
          *(v18 + 16) = v25 + 1;
          *(v18 + 8 * v25 + 32) = v23;
        }

        if (v16 == 1)
        {
          if (v17 >= v34)
          {
            goto LABEL_40;
          }

          v26 = *(v33 + 8 * v17);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v4 + 16) + 1, 1, v4);
            v4 = result;
          }

          v28 = *(v4 + 16);
          v27 = *(v4 + 24);
          if (v28 >= v27 >> 1)
          {
            result = sub_27220897C((v27 > 1), v28 + 1, 1, v4);
            v4 = result;
          }

          *(v4 + 16) = v28 + 1;
          *(v4 + 8 * v28 + 32) = v26;
          v29 = *(a2 + 16);
          if (!v29)
          {
            goto LABEL_42;
          }

          v30 = *(a2 + 24 + 8 * v29);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v18 + 16) + 1, 1, v18);
            v18 = result;
          }

          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          if (v32 >= v31 >> 1)
          {
            result = sub_27220897C((v31 > 1), v32 + 1, 1, v18);
            v18 = result;
          }

          *(v18 + 16) = v32 + 1;
          *(v18 + 8 * v32 + 32) = v30;
        }

        ++v19;
        --v16;
      }

      while (v16);

      return v4;
    }
  }

  else
  {
LABEL_43:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_272244258(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    if (v2 <= *(a2 + 16))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = (result + 32);
      v7 = (a2 + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        v11 = *v7++;
        v10 = v11;
        v12 = v11 - v8;
        if (__OFSUB__(v11, v8))
        {
          break;
        }

        if (v5 < v12)
        {
          v3 = v10;
          v4 = v8;
        }

        if (v5 <= v12)
        {
          v5 = v12;
        }

        if (!--v2)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0;
LABEL_12:
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_27237AF80;
    *(v13 + 32) = v4;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_27237AF80;
    *(v14 + 32) = v3;
    return v13;
  }

  return result;
}

uint64_t sub_272244348(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_272244CD8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27237861C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_272377B5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_272244584(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_272244480(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881F48, &unk_272381AE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_272244584(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_272244CC4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_272244AD0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272244480(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_272244480((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_272244AD0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_272244AD0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_272244CEC(int a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_272244D44(a1, a2, a3);
  return v6;
}

uint64_t sub_272244D44(int a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v18 = sub_272377EDC();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_272377ECC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2723776EC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_27221982C(0, &qword_280881910, 0x277D85C78);
  v17[1] = "com.apple.mi.mind.voiceactions";
  v17[2] = v12;
  sub_2723776CC();
  v22 = MEMORY[0x277D84F90];
  sub_272253DFC(&qword_280881918, MEMORY[0x277D85230]);
  sub_2721F065C(&qword_280881920, &qword_27237C500);
  sub_2722199BC(&qword_280881928, &qword_280881920, &qword_27237C500);
  sub_27237815C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v18);
  v13 = sub_272377F0C();
  *(v3 + 16) = v19;
  v15 = v20;
  v14 = v21;
  *(v3 + 24) = v13;
  *(v3 + 32) = v15;
  *(v3 + 40) = v14;
  return v3;
}

uint64_t sub_272244FD4()
{
  v1 = *(v0 + 24);
  sub_272377EEC();
  return v3;
}

uint64_t sub_272245040(char a1)
{
  v2 = v1;
  v4 = sub_2723776EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2723776AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 24);
  sub_27237769C();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_2722454C4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2722454D0;
  aBlock[3] = &unk_28817E418;
  v16 = _Block_copy(aBlock);

  sub_2723776CC();
  MEMORY[0x2743C5050](0, v8, v13, v16);
  _Block_release(v16);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_27224526C(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != v4)
  {
    v11 = sub_2722C389C();
    (*(v6 + 16))(v10, v11, v5);

    v12 = sub_27237725C();
    v13 = sub_272377E7C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v14 = 136315650;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);

      v17 = sub_2721FFD04(v15, v16, &v20);

      *(v14 + 4) = v17;
      *(v14 + 12) = 1024;
      *(v14 + 14) = *(a1 + 16);

      *(v14 + 18) = 1024;
      *(v14 + 20) = a2 & 1;
      _os_log_impl(&dword_2721E4000, v12, v13, "%s: %{BOOL}d => %{BOOL}d", v14, 0x18u);
      v18 = v19;
      sub_2722039C8(v19);
      MEMORY[0x2743C69C0](v18, -1, -1);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    else
    {
    }

    result = (*(v6 + 8))(v10, v5);
    *(a1 + 16) = a2 & 1;
  }

  return result;
}

uint64_t sub_27224548C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2722454D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_272245514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_27224552C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 24);
  sub_272377EEC();
  *(a1 + 8) = *(a1 + 9);
  return sub_2722455B4;
}

uint64_t sub_2722455DC()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id VASpeechAPISpotter.__allocating_init(delegate:asrDelegate:speechDetectorDelegate:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2722526C0(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v10;
}

id VASpeechAPISpotter.init(delegate:asrDelegate:speechDetectorDelegate:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2722526C0(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_27224574C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_272245878;
  v2 = swift_continuation_init();
  v0[17] = sub_2721F065C(&qword_280881F60, &qword_27237E308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2722459C4;
  v0[13] = &unk_28817E440;
  v0[14] = v2;
  [v1 installedLanguagesForTaskHint:1009 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_272245878()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_272245958, 0, 0);
}

uint64_t sub_272245958()
{
  v1 = *(*(v0 + 144) + 16);

  v2 = *(v0 + 8);

  return v2(v1 == 0);
}

uint64_t sub_2722459C4(uint64_t a1)
{
  v1 = *sub_27220300C((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_272377D8C();

  return MEMORY[0x282200948](v1);
}

uint64_t static VASpeechAPISpotter.downloadGeneralASRModel(progress:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_272245A5C, 0, 0);
}

uint64_t sub_272245A5C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v1[20];
  v4 = v1[21];
  v6 = objc_allocWithZone(MEMORY[0x277CDCE88]);
  v7 = sub_2723777FC();
  v8 = [v6 initWithLanguage:v7 assetType:7];
  v1[22] = v8;

  v16 = objc_opt_self();
  v9 = sub_2723777FC();
  v1[23] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v1[14] = sub_272252A2C;
  v1[15] = v10;
  v11 = MEMORY[0x277D85DD0];
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_272245EC4;
  v1[13] = &unk_28817E490;
  v12 = _Block_copy(v3);
  v1[24] = v12;
  v13 = v1[15];

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_272245CA4;
  v14 = swift_continuation_init();
  v1[17] = sub_2721F065C(&qword_280881F68, &qword_27237E318);
  v1[10] = v11;
  v1[11] = 1107296256;
  v1[12] = sub_272245F18;
  v1[13] = &unk_28817E4B8;
  v1[14] = v14;
  [v16 fetchAssetWithConfig:v8 clientIdentifier:v9 progress:v12 completion:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_272245CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_272245E30;
  }

  else
  {
    v3 = sub_272245DB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272245DB4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 152);

  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_272245E30()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  _Block_release(v1);
  swift_willThrow();
  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t sub_272245EC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_272245F18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_27220300C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_27237782C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

float *sub_272245FEC(float *a1)
{
  v3 = v1;
  v5 = sub_27237728C();
  v106 = *(v5 - 8);
  v6 = v106[8];
  v7 = MEMORY[0x28223BE20](v5);
  v105 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v96 - v9;
  v10 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v96 - v12;
  v13 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = (&v96 - v18);
  v19 = type metadata accessor for VARuntimeParameters();
  v108 = *(v19 - 8);
  v20 = *(v108 + 8);
  v21 = MEMORY[0x28223BE20](v19);
  v101 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v103 = &v96 - v23;
  MEMORY[0x28223BE20](v22);
  v107 = &v96 - v24;
  v25 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v96 - v30;
  v109 = a1;
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v35 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v38 = 0xD00000000000006DLL;
LABEL_7:
    *v37 = v38;
    v37[1] = v35;
    swift_willThrow();
    return v35;
  }

  v32 = (*((*MEMORY[0x277D85000] & *v3) + 0x78))();
  if (!v32)
  {
    v35 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v38 = 0xD000000000000011;
    goto LABEL_7;
  }

  v98 = v5;
  v99 = v32;
  v96 = v17;
  v97 = v2;
  sub_272216374(v109, v31);
  v33 = v108;
  (*(v108 + 7))(v31, 0, 1, v19);
  v34 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_runtimeParameters;
  swift_beginAccess();
  sub_27221D3B4(v31, v3 + v34, &qword_280881F70, &qword_27237E320);
  swift_endAccess();
  sub_2721F07F4(v3 + v34, v29, &qword_280881F70, &qword_27237E320);
  if ((*(v33 + 6))(v29, 1, v19) == 1)
  {
    sub_2721F40F0(v29, &qword_280881F70, &qword_27237E320);
    v35 = 0x800000027238AA90;
    sub_2722032B4();
    swift_allocError();
    *v36 = 0xD000000000000012;
    v36[1] = 0x800000027238AA90;
    swift_willThrow();
LABEL_19:

    return v35;
  }

  v39 = v107;
  sub_2722164B8(v29, v107);
  v40 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration;
  v41 = *(**(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 144);

  v41(v112, v42);

  v111 = v112[0];
  v110 = 0;
  sub_272252A6C();
  if (sub_2723777DC())
  {
    v43 = v109;
    v44 = MEMORY[0x277D85000];
  }

  else
  {
    type metadata accessor for VASpeechDetector();
    v35 = sub_27221A8BC();
    v79 = v78;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v112);
    v111 = v112[0];
    swift_unknownObjectRetain();
    v80 = v97;
    v81 = VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(v35, v79, &v111, v3);
    v44 = MEMORY[0x277D85000];
    if (v80)
    {
      sub_272216BD8(v39);
      goto LABEL_19;
    }

    v82 = v81;
    v83 = *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
    *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector) = v81;

    v84 = v109[13];
    v85 = *(**(v3 + v40) + 216);

    v87 = v85(v86);

    v88 = v100;
    (*(*v82 + 672))(v87 & 1, v84);
    v97 = 0;

    v89 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
    v90 = *(v89 - 8);
    (*(v90 + 56))(v88, 0, 1, v89);
    v91 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorOutputStream;
    swift_beginAccess();
    sub_27221D3B4(v88, v3 + v91, &qword_2808819B8, &qword_27237C508);
    swift_endAccess();
    v92 = v3 + v91;
    v93 = v96;
    sub_2721F07F4(v92, v96, &qword_2808819B8, &qword_27237C508);
    result = (*(v90 + 48))(v93, 1, v89);
    if (result == 1)
    {
      goto LABEL_25;
    }

    v94 = sub_272252AC0(v93);
    (*(v90 + 8))(v93, v89);
    v95 = *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask);
    *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask) = v94;

    v39 = v107;
    v43 = v109;
  }

  *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped) = 0;
  type metadata accessor for VARequestContext(0);
  v45 = v103;
  sub_272216374(v43, v103);
  v100 = v99;
  v46 = sub_272232E00(v100, v45);
  (*((*v44 & *v3) + 0x128))(v46);
  type metadata accessor for VAStrategyLayerPassthrough();
  sub_272216374(v43, v45);
  v47 = swift_unknownObjectRetain();
  v48 = sub_2723457E8(v47, &protocol witness table for VAKeywordSpotterBase, v45);
  (*((*v44 & *v3) + 0x158))(v48);
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  v109 = result;
  if (result)
  {
    v99 = dispatch_semaphore_create(0);
    v50 = sub_272377C3C();
    (*(*(v50 - 8) + 56))(v104, 1, 1, v50);
    sub_272216374(v43, v45);
    v51 = v101;
    sub_272216374(v39, v101);
    v52 = *(v108 + 80);
    v53 = v45;
    v54 = (v52 + 32) & ~v52;
    v55 = (v20 + v52 + v54) & ~v52;
    v56 = (v20 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    sub_2722164B8(v53, v58 + v54);
    sub_2722164B8(v51, v58 + v55);
    *(v58 + v56) = v3;
    v59 = v109;
    *(v58 + v57) = v109;
    v60 = v99;
    *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;
    v61 = v3;
    v108 = v59;
    v109 = v60;
    v62 = sub_27224C3F0(0, 0, v104, &unk_27237E330, v58);
    v63 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask;
    v64 = *(v61 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask);
    *(v61 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask) = v62;

    v65 = sub_2722C389C();
    v66 = v106[2];
    v67 = v102;
    v66(v102, v65, v98);
    v68 = sub_27237725C();
    v69 = sub_272377E7C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2721E4000, v68, v69, "Waiting for speech API readiness", v70, 2u);
      MEMORY[0x2743C69C0](v70, -1, -1);
    }

    v71 = v106[1];
    v72 = v98;
    v71(v67, v98);
    sub_272377F5C();
    v66(v105, v65, v72);
    v73 = sub_27237725C();
    v74 = sub_272377E7C();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_2721E4000, v73, v74, "Speech API is ready", v75, 2u);
      MEMORY[0x2743C69C0](v75, -1, -1);
    }

    result = (v71)(v105, v98);
    v35 = *(v61 + v63);
    v76 = v107;
    if (v35)
    {
      v77 = *(v61 + v63);

      sub_272216BD8(v76);

      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_272246C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a1;
  v8[21] = a4;
  v9 = *(type metadata accessor for VARuntimeParameters() - 8);
  v8[26] = v9;
  v8[27] = *(v9 + 64);
  v8[28] = swift_task_alloc();
  v10 = *(*(sub_2721F065C(&qword_2808819D8, &qword_27237CB50) - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v11 = *(*(sub_2721F065C(&qword_280881FB8, &unk_272381B60) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v12 = *(*(sub_2723772FC() - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v13 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v14 = *(*(sub_2721F065C(&qword_280881F98, &qword_27237E358) - 8) + 64) + 15;
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v15 = sub_2721F065C(&qword_280881FC0, &qword_27237E400);
  v8[36] = v15;
  v16 = *(v15 - 8);
  v8[37] = v16;
  v17 = *(v16 + 64) + 15;
  v8[38] = swift_task_alloc();
  v18 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v8[39] = v18;
  v19 = *(v18 - 8);
  v8[40] = v19;
  v20 = *(v19 + 64) + 15;
  v8[41] = swift_task_alloc();
  v21 = sub_2721F065C(&qword_280881F50, &unk_272381B70);
  v8[42] = v21;
  v22 = *(v21 - 8);
  v8[43] = v22;
  v23 = *(v22 + 64) + 15;
  v8[44] = swift_task_alloc();
  v24 = *(*(sub_2721F065C(&qword_280881FC8, &qword_27237E408) - 8) + 64) + 15;
  v8[45] = swift_task_alloc();
  v25 = *(*(sub_2721F065C(&qword_280881FD0, &qword_27237E410) - 8) + 64) + 15;
  v8[46] = swift_task_alloc();
  v26 = *(*(sub_272376EBC() - 8) + 64) + 15;
  v8[47] = swift_task_alloc();
  v27 = sub_27237728C();
  v8[48] = v27;
  v28 = *(v27 - 8);
  v8[49] = v28;
  v29 = *(v28 + 64) + 15;
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v30 = sub_272376BCC();
  v8[52] = v30;
  v31 = *(v30 - 8);
  v8[53] = v31;
  v32 = *(v31 + 64) + 15;
  v8[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272247090, 0, 0);
}

uint64_t sub_272247090()
{
  v223 = v0;
  v1 = *(v0 + 168);
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    sub_272203AC4();
    v5 = (v2 + 40);
    do
    {
      v6 = *v5;
      *(v0 + 64) = *(v5 - 1);
      *(v0 + 72) = v6;
      *(v0 + 80) = 95;
      *(v0 + 88) = 0xE100000000000000;
      *(v0 + 96) = 32;
      *(v0 + 104) = 0xE100000000000000;
      v7 = sub_2723780FC();
      v9 = sub_2722D6FA4(v7, v8);
      v11 = v10;

      v12 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2721FFBF8(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_2721FFBF8((v13 > 1), v14 + 1, 1, v12);
      }

      v4 = v12;
      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v210 = v4;
  v16 = *(v0 + 176);
  v17 = *(v16 + 64);
  if (v17)
  {
    *(v0 + 112) = *(v16 + 56);
    *(v0 + 120) = v17;
    *(v0 + 128) = 44;
    *(v0 + 136) = 0xE100000000000000;
    sub_272203AC4();
    v18 = sub_2723780BC();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = *(v0 + 424);
      v222 = MEMORY[0x277D84F90];
      sub_27220056C(0, v19, 0);
      v21 = v222;
      v214 = (v20 + 8);
      v22 = (v18 + 40);
      do
      {
        v23 = *(v0 + 432);
        v24 = *(v0 + 416);
        v25 = *v22;
        *(v0 + 144) = *(v22 - 1);
        *(v0 + 152) = v25;

        sub_272376B4C();
        v26 = sub_2723780EC();
        v28 = v27;
        (*v214)(v23, v24);

        v222 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_27220056C((v29 > 1), v30 + 1, 1);
          v21 = v222;
        }

        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v22 += 2;
        --v19;
      }

      while (v19);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v33 = *(v21 + 16);
    v32 = v210;
    if (v33)
    {
      v34 = (v21 + 40);
      do
      {
        v35 = *(v34 - 1);
        v36 = *v34;

        v37 = sub_2722D6FA4(v35, v36);
        v39 = v38;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2721FFBF8(0, *(v32 + 2) + 1, 1, v32);
        }

        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          v32 = sub_2721FFBF8((v40 > 1), v41 + 1, 1, v32);
        }

        *(v32 + 2) = v41 + 1;
        v42 = &v32[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        v34 += 2;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v32 = v4;
  }

  *(v0 + 440) = v32;
  v43 = *(v0 + 408);
  v45 = *(v0 + 384);
  v44 = *(v0 + 392);
  v46 = sub_27237749C();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  *(v0 + 448) = sub_27237748C();
  v49 = sub_2722C389C();
  *(v0 + 456) = v49;
  v50 = *(v44 + 16);
  *(v0 + 464) = v50;
  *(v0 + 472) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v43, v49, v45);
  v51 = sub_27237725C();
  v52 = sub_272377E6C();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 408);
  v56 = *(v0 + 384);
  v55 = *(v0 + 392);
  if (v53)
  {
    v57 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v58 = v222;
    *v57 = 136315138;

    v215 = v54;
    v60 = v32;
    v61 = MEMORY[0x2743C4C60](v59, MEMORY[0x277D837D0]);
    v63 = v62;

    v64 = sub_2721FFD04(v61, v63, &v222);

    *(v57 + 4) = v64;
    v32 = v60;
    _os_log_impl(&dword_2721E4000, v51, v52, "Setting bias: %s", v57, 0xCu);
    sub_2722039C8(v58);
    MEMORY[0x2743C69C0](v58, -1, -1);
    MEMORY[0x2743C69C0](v57, -1, -1);

    (*(v55 + 8))(v215, v56);
  }

  else
  {

    (*(v55 + 8))(v54, v56);
  }

  v65 = *(v0 + 184);
  sub_2721F065C(&qword_280881FD8, &qword_27237E418);
  v66 = (sub_2721F065C(&qword_280881FE0, &qword_27237E420) - 8);
  v67 = *(*v66 + 72);
  v68 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_27237AF80;
  v70 = v69 + v68;
  v71 = v66[14];
  sub_27237744C();
  *(v70 + v71) = v32;

  sub_272253380(v69);
  swift_setDeallocating();
  sub_2721F40F0(v70, &qword_280881FE0, &qword_27237E420);
  swift_deallocClassInstance();
  sub_27237742C();
  v72 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped;
  v73 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration;
  *(v0 + 480) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped;
  *(v0 + 488) = v73;
  v74 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  *(v0 + 496) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStream;
  *(v0 + 504) = v74;
  *(v0 + 512) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer;
  *(v0 + 520) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask;
  if (*(v65 + v72))
  {
LABEL_38:
    v158 = *(v0 + 440);
    v157 = *(v0 + 448);
    v159 = *(v0 + 432);
    v160 = *(v0 + 400);
    v161 = *(v0 + 408);
    v163 = *(v0 + 368);
    v162 = *(v0 + 376);
    v165 = *(v0 + 352);
    v164 = *(v0 + 360);
    v191 = *(v0 + 328);
    v194 = *(v0 + 304);
    v197 = *(v0 + 280);
    v200 = *(v0 + 272);
    v203 = *(v0 + 264);
    v206 = *(v0 + 256);
    v209 = *(v0 + 248);
    v213 = *(v0 + 240);
    v218 = *(v0 + 232);
    v221 = *(v0 + 224);
    v166 = *(v0 + 160);

    *v166 = 1;

    v167 = *(v0 + 8);

    return v167();
  }

  else
  {
    *(v0 + 560) = *MEMORY[0x277CDCB08];
    v75 = MEMORY[0x277CDCB18];
    v76 = MEMORY[0x277CDCB10];
    v77 = MEMORY[0x277CDCAB0];
    v78 = MEMORY[0x277CDCAB8];
    v79 = MEMORY[0x277CDCAA8];
    *(v0 + 564) = *MEMORY[0x277CDCB28];
    *(v0 + 568) = *v75;
    *(v0 + 572) = *v76;
    *(v0 + 576) = *v77;
    *(v0 + 580) = *v78;
    *(v0 + 584) = *v79;
    *(v0 + 588) = *MEMORY[0x277D85778];
    while (1)
    {
      v189 = *(v0 + 588);
      v219 = *(v0 + 584);
      v174 = *(v0 + 576);
      v175 = *(v0 + 580);
      v80 = *(v0 + 572);
      v172 = *(v0 + 564);
      v173 = *(v0 + 568);
      v171 = *(v0 + 560);
      v207 = *(v0 + 496);
      v211 = *(v0 + 504);
      v81 = *(v0 + 488);
      v82 = *(v0 + 368);
      v176 = *(v0 + 376);
      v83 = *(v0 + 360);
      v185 = *(v0 + 352);
      v192 = *(v0 + 344);
      v195 = *(v0 + 336);
      v183 = *(v0 + 328);
      v201 = *(v0 + 320);
      v204 = *(v0 + 312);
      v177 = *(v0 + 296);
      v179 = *(v0 + 288);
      v181 = *(v0 + 304);
      v187 = *(v0 + 280);
      v198 = *(v0 + 264);
      v216 = *(v0 + 256);
      v84 = *(v0 + 184);
      v85 = *(**(v84 + v81) + 288);

      v87 = v85(v86);

      sub_272376E9C();

      v88 = *(**(v84 + v81) + 168);

      v88(v89);

      v90 = sub_27237768C();
      (*(*(v90 - 8) + 56))(v82, 0, 1, v90);
      v91 = *(**(v84 + v81) + 264);

      v91(v92);

      v93 = sub_27237732C();
      (*(*(v93 - 8) + 56))(v83, 0, 1, v93);
      sub_2721F065C(&qword_280881FE8, &qword_27237E428);
      v94 = sub_27237737C();
      v95 = *(v94 - 8);
      v96 = *(v95 + 72);
      v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_27237AF60;
      v99 = v98 + v97;
      v100 = *(v95 + 104);
      v100(v99, v171, v94);
      v100(v99 + v96, v172, v94);
      v100(v99 + 2 * v96, v173, v94);
      v100(v99 + 3 * v96, v80, v94);
      sub_272253568(v98);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2721F065C(&qword_280881FF0, &unk_27237E430);
      v101 = sub_27237733C();
      v102 = *(v101 - 8);
      v103 = *(v102 + 72);
      v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_27237AFB0;
      v106 = v105 + v104;
      v107 = *(v102 + 104);
      v107(v106, v174, v101);
      v107(v106 + v103, v175, v101);
      v107(v106 + 2 * v103, v219, v101);
      sub_272253888(v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v108 = sub_2723773AC();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();
      v220 = sub_27237739C();
      *(v0 + 528) = v220;
      sub_2723773DC();
      (*(v177 + 104))(v181, v189, v179);
      sub_272377C4C();
      (*(v177 + 8))(v181, v179);
      (*(v192 + 32))(v187, v185, v195);
      (*(v192 + 56))(v187, 0, 1, v195);
      (*(v201 + 32))(v198, v183, v204);
      (*(v201 + 56))(v198, 0, 1, v204);
      swift_beginAccess();
      sub_27221D3B4(v187, v84 + v207, &qword_280881F98, &qword_27237E358);
      swift_endAccess();
      swift_beginAccess();
      sub_27221D3B4(v198, v84 + v211, &qword_280881F80, &qword_27237E338);
      swift_endAccess();
      sub_2721F07F4(v84 + v211, v216, &qword_280881F80, &qword_27237E338);
      if ((*(v201 + 48))(v216, 1, v204))
      {
        sub_2721F40F0(*(v0 + 256), &qword_280881F80, &qword_27237E338);
      }

      else
      {
        v112 = *(v0 + 320);
        v111 = *(v0 + 328);
        v113 = *(v0 + 312);
        v114 = *(v0 + 256);
        (*(v112 + 16))(v111, v114, v113);
        sub_2721F40F0(v114, &qword_280881F80, &qword_27237E338);
        sub_272377C5C();
        (*(v112 + 8))(v111, v113);
      }

      v115 = *(v0 + 496);
      v116 = *(v0 + 336);
      v117 = *(v0 + 344);
      v118 = *(v0 + 272);
      v119 = *(v0 + 248);
      v120 = *(v0 + 184);
      sub_2723772EC();
      sub_2721F07F4(v120 + v115, v118, &qword_280881F98, &qword_27237E358);
      v121 = (*(v117 + 48))(v118, 1, v116);
      if (v121 == 1)
      {
        __break(1u);
        return MEMORY[0x282200430](v121, v122, v123, v124, v125);
      }

      v199 = *(v0 + 520);
      v184 = *(v0 + 512);
      v126 = *(v0 + 488);
      v212 = *(v0 + 464);
      v217 = *(v0 + 472);
      v127 = *(v0 + 448);
      v202 = *(v0 + 400);
      v205 = *(v0 + 384);
      v208 = *(v0 + 456);
      v180 = *(v0 + 336);
      v182 = *(v0 + 272);
      v128 = *(v0 + 240);
      v178 = *(v0 + 248);
      v186 = *(v0 + 232);
      v196 = *(v0 + 216);
      v190 = *(v0 + 224);
      v193 = *(v0 + 208);
      v129 = *(v0 + 184);
      v130 = *(v0 + 192);
      v188 = *(v0 + 176);
      sub_2723772DC();
      sub_2721F065C(&qword_280881FF8, &qword_272381B90);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_27237AF80;
      v132 = sub_272253DFC(&qword_280882000, MEMORY[0x277CDCB98]);
      *(v131 + 32) = v220;
      *(v131 + 40) = v132;
      v133 = *(**&v129[v126] + 312);
      v134 = v130;

      v133(v135);

      v136 = sub_2723774DC();
      (*(*(v136 - 8) + 56))(v128, 0, 1, v136);
      sub_2722199BC(&qword_280882008, &qword_280881F50, &unk_272381B70);

      v137 = sub_2723772CC();
      v138 = *&v129[v184];
      *&v129[v184] = v137;

      v139 = sub_272377C3C();
      (*(*(v139 - 8) + 56))(v186, 1, 1, v139);
      sub_272216374(v188, v190);
      v140 = (*(v193 + 80) + 48) & ~*(v193 + 80);
      v141 = swift_allocObject();
      v141[2] = 0;
      v141[3] = 0;
      v141[4] = v220;
      v141[5] = v129;
      sub_2722164B8(v190, v141 + v140);

      v142 = v129;
      v143 = sub_27224C3F0(0, 0, v186, &unk_27237E448, v141);
      v144 = *&v129[v199];
      *&v129[v199] = v143;

      v212(v202, v208, v205);
      v145 = sub_27237725C();
      v146 = sub_272377E7C();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_2721E4000, v145, v146, "Speech API actively listening", v147, 2u);
        MEMORY[0x2743C69C0](v147, -1, -1);
      }

      v148 = *(v0 + 520);
      v150 = *(v0 + 392);
      v149 = *(v0 + 400);
      v151 = *(v0 + 384);
      v152 = *(v0 + 200);
      v153 = *(v0 + 184);

      (*(v150 + 8))(v149, v151);
      sub_272377F6C();
      v154 = *(v153 + v148);
      *(v0 + 536) = v154;
      if (v154)
      {
        break;
      }

      v155 = *(v0 + 480);
      v156 = *(v0 + 184);

      if (*(v156 + v155))
      {
        goto LABEL_38;
      }
    }

    v169 = *(MEMORY[0x277D857C8] + 4);

    v170 = swift_task_alloc();
    *(v0 + 544) = v170;
    v124 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v170 = v0;
    v170[1] = sub_27224843C;
    v123 = MEMORY[0x277D839B0];
    v125 = MEMORY[0x277D84950];
    v121 = v0 + 592;
    v122 = v154;

    return MEMORY[0x282200430](v121, v122, v123, v124, v125);
  }
}

uint64_t sub_27224843C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);

  if (v0)
  {
    v6 = sub_2722492B4;
  }

  else
  {
    v6 = sub_272248570;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272248570()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 480);
  v3 = *(v0 + 184);

  if (*(v3 + v2))
  {
LABEL_10:
    v82 = *(v0 + 440);
    v81 = *(v0 + 448);
    v83 = *(v0 + 432);
    v84 = *(v0 + 400);
    v85 = *(v0 + 408);
    v87 = *(v0 + 368);
    v86 = *(v0 + 376);
    v89 = *(v0 + 352);
    v88 = *(v0 + 360);
    v115 = *(v0 + 328);
    v118 = *(v0 + 304);
    v121 = *(v0 + 280);
    v124 = *(v0 + 272);
    v127 = *(v0 + 264);
    v130 = *(v0 + 256);
    v133 = *(v0 + 248);
    v136 = *(v0 + 240);
    v139 = *(v0 + 232);
    v142 = *(v0 + 224);
    v90 = *(v0 + 160);

    *v90 = 1;

    v91 = *(v0 + 8);

    return v91();
  }

  else
  {
    while (1)
    {
      v113 = *(v0 + 588);
      v140 = *(v0 + 584);
      v98 = *(v0 + 576);
      v99 = *(v0 + 580);
      v4 = *(v0 + 572);
      v96 = *(v0 + 564);
      v97 = *(v0 + 568);
      v95 = *(v0 + 560);
      v131 = *(v0 + 496);
      v134 = *(v0 + 504);
      v5 = *(v0 + 488);
      v6 = *(v0 + 368);
      v100 = *(v0 + 376);
      v7 = *(v0 + 360);
      v109 = *(v0 + 352);
      v116 = *(v0 + 344);
      v119 = *(v0 + 336);
      v107 = *(v0 + 328);
      v125 = *(v0 + 320);
      v128 = *(v0 + 312);
      v101 = *(v0 + 296);
      v103 = *(v0 + 288);
      v105 = *(v0 + 304);
      v111 = *(v0 + 280);
      v122 = *(v0 + 264);
      v137 = *(v0 + 256);
      v8 = *(v0 + 184);
      v9 = *(**(v8 + v5) + 288);

      v11 = v9(v10);

      sub_272376E9C();

      v12 = *(**(v8 + v5) + 168);

      v12(v13);

      v14 = sub_27237768C();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
      v15 = *(**(v8 + v5) + 264);

      v15(v16);

      v17 = sub_27237732C();
      (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
      sub_2721F065C(&qword_280881FE8, &qword_27237E428);
      v18 = sub_27237737C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_27237AF60;
      v23 = v22 + v21;
      v24 = *(v19 + 104);
      v24(v23, v95, v18);
      v24(v23 + v20, v96, v18);
      v24(v23 + 2 * v20, v97, v18);
      v24(v23 + 3 * v20, v4, v18);
      sub_272253568(v22);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2721F065C(&qword_280881FF0, &unk_27237E430);
      v25 = sub_27237733C();
      v26 = *(v25 - 8);
      v27 = *(v26 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_27237AFB0;
      v30 = v29 + v28;
      v31 = *(v26 + 104);
      v31(v30, v98, v25);
      v31(v30 + v27, v99, v25);
      v31(v30 + 2 * v27, v140, v25);
      sub_272253888(v29);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v32 = sub_2723773AC();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v141 = sub_27237739C();
      *(v0 + 528) = v141;
      sub_2723773DC();
      (*(v101 + 104))(v105, v113, v103);
      sub_272377C4C();
      (*(v101 + 8))(v105, v103);
      (*(v116 + 32))(v111, v109, v119);
      (*(v116 + 56))(v111, 0, 1, v119);
      (*(v125 + 32))(v122, v107, v128);
      (*(v125 + 56))(v122, 0, 1, v128);
      swift_beginAccess();
      sub_27221D3B4(v111, v8 + v131, &qword_280881F98, &qword_27237E358);
      swift_endAccess();
      swift_beginAccess();
      sub_27221D3B4(v122, v8 + v134, &qword_280881F80, &qword_27237E338);
      swift_endAccess();
      sub_2721F07F4(v8 + v134, v137, &qword_280881F80, &qword_27237E338);
      if ((*(v125 + 48))(v137, 1, v128))
      {
        sub_2721F40F0(*(v0 + 256), &qword_280881F80, &qword_27237E338);
      }

      else
      {
        v36 = *(v0 + 320);
        v35 = *(v0 + 328);
        v37 = *(v0 + 312);
        v38 = *(v0 + 256);
        (*(v36 + 16))(v35, v38, v37);
        sub_2721F40F0(v38, &qword_280881F80, &qword_27237E338);
        sub_272377C5C();
        (*(v36 + 8))(v35, v37);
      }

      v39 = *(v0 + 496);
      v40 = *(v0 + 336);
      v41 = *(v0 + 344);
      v42 = *(v0 + 272);
      v43 = *(v0 + 248);
      v44 = *(v0 + 184);
      sub_2723772EC();
      sub_2721F07F4(v44 + v39, v42, &qword_280881F98, &qword_27237E358);
      v45 = (*(v41 + 48))(v42, 1, v40);
      if (v45 == 1)
      {
        __break(1u);
        return MEMORY[0x282200430](v45, v46, v47, v48, v49);
      }

      v123 = *(v0 + 520);
      v108 = *(v0 + 512);
      v50 = *(v0 + 488);
      v135 = *(v0 + 464);
      v138 = *(v0 + 472);
      v51 = *(v0 + 448);
      v126 = *(v0 + 400);
      v129 = *(v0 + 384);
      v132 = *(v0 + 456);
      v104 = *(v0 + 336);
      v106 = *(v0 + 272);
      v52 = *(v0 + 240);
      v102 = *(v0 + 248);
      v110 = *(v0 + 232);
      v120 = *(v0 + 216);
      v114 = *(v0 + 224);
      v117 = *(v0 + 208);
      v53 = *(v0 + 184);
      v54 = *(v0 + 192);
      v112 = *(v0 + 176);
      sub_2723772DC();
      sub_2721F065C(&qword_280881FF8, &qword_272381B90);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_27237AF80;
      v56 = sub_272253DFC(&qword_280882000, MEMORY[0x277CDCB98]);
      *(v55 + 32) = v141;
      *(v55 + 40) = v56;
      v57 = *(**&v53[v50] + 312);
      v58 = v54;

      v57(v59);

      v60 = sub_2723774DC();
      (*(*(v60 - 8) + 56))(v52, 0, 1, v60);
      sub_2722199BC(&qword_280882008, &qword_280881F50, &unk_272381B70);

      v61 = sub_2723772CC();
      v62 = *&v53[v108];
      *&v53[v108] = v61;

      v63 = sub_272377C3C();
      (*(*(v63 - 8) + 56))(v110, 1, 1, v63);
      sub_272216374(v112, v114);
      v64 = (*(v117 + 80) + 48) & ~*(v117 + 80);
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = 0;
      v65[4] = v141;
      v65[5] = v53;
      sub_2722164B8(v114, v65 + v64);

      v66 = v53;
      v67 = sub_27224C3F0(0, 0, v110, &unk_27237E448, v65);
      v68 = *&v53[v123];
      *&v53[v123] = v67;

      v135(v126, v132, v129);
      v69 = sub_27237725C();
      v70 = sub_272377E7C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_2721E4000, v69, v70, "Speech API actively listening", v71, 2u);
        MEMORY[0x2743C69C0](v71, -1, -1);
      }

      v72 = *(v0 + 520);
      v74 = *(v0 + 392);
      v73 = *(v0 + 400);
      v75 = *(v0 + 384);
      v76 = *(v0 + 200);
      v77 = *(v0 + 184);

      (*(v74 + 8))(v73, v75);
      sub_272377F6C();
      v78 = *(v77 + v72);
      *(v0 + 536) = v78;
      if (v78)
      {
        break;
      }

      v79 = *(v0 + 480);
      v80 = *(v0 + 184);

      if (*(v80 + v79))
      {
        goto LABEL_10;
      }
    }

    v93 = *(MEMORY[0x277D857C8] + 4);

    v94 = swift_task_alloc();
    *(v0 + 544) = v94;
    v48 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v94 = v0;
    v94[1] = sub_27224843C;
    v47 = MEMORY[0x277D839B0];
    v49 = MEMORY[0x277D84950];
    v45 = v0 + 592;
    v46 = v78;

    return MEMORY[0x282200430](v45, v46, v47, v48, v49);
  }
}

uint64_t sub_2722492B4()
{
  v1 = v0[66];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[46];
  v7 = v0[47];
  v10 = v0[44];
  v9 = v0[45];
  v14 = v0[41];
  v15 = v0[38];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[28];

  v11 = v0[1];
  v12 = v0[69];

  return v11();
}

uint64_t sub_272249410(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2721F065C(&qword_280882010, &unk_27237E450);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  (*(v14 + 16))(&v34 - v16, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D85738])
  {
    v19 = sub_2722C389C();
    (*(v3 + 16))(v12, v19, v2);
    v20 = sub_27237725C();
    v21 = sub_272377E7C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "Speech API Input stream finished successfully.", v22, 2u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    return (*(v3 + 8))(v12, v2);
  }

  else
  {
    v24 = v18;
    v25 = *MEMORY[0x277D85740];
    v26 = sub_2722C389C();
    v27 = *(v3 + 16);
    if (v24 == v25)
    {
      v27(v10, v26, v2);
      v28 = sub_27237725C();
      v29 = sub_272377E7C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2721E4000, v28, v29, "Speech API Input stream was cancelled.", v30, 2u);
        MEMORY[0x2743C69C0](v30, -1, -1);
      }

      return (*(v3 + 8))(v10, v2);
    }

    else
    {
      v27(v7, v26, v2);
      v31 = sub_27237725C();
      v32 = sub_272377E7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2721E4000, v31, v32, "Speech API Unknown termination reason.", v33, 2u);
        MEMORY[0x2743C69C0](v33, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      return (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_2722497F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[58] = a5;
  v6[59] = a6;
  v6[56] = a1;
  v6[57] = a4;
  v7 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v6[60] = swift_task_alloc();
  v8 = *(*(type metadata accessor for VARuntimeParameters() - 8) + 64) + 15;
  v6[61] = swift_task_alloc();
  v9 = sub_27237728C();
  v6[62] = v9;
  v10 = *(v9 - 8);
  v6[63] = v10;
  v11 = *(v10 + 64) + 15;
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v12 = sub_272376C2C();
  v6[70] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[71] = swift_task_alloc();
  v14 = sub_272376C3C();
  v6[72] = v14;
  v15 = *(v14 - 8);
  v6[73] = v15;
  v16 = *(v15 + 64) + 15;
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v17 = sub_2723773FC();
  v6[76] = v17;
  v18 = *(v17 - 8);
  v6[77] = v18;
  v19 = *(v18 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v20 = sub_27237736C();
  v6[80] = v20;
  v21 = *(v20 - 8);
  v6[81] = v21;
  v22 = *(v21 + 64) + 15;
  v6[82] = swift_task_alloc();
  v23 = *(*(sub_2721F065C(&qword_280882018, &unk_27237EBF0) - 8) + 64) + 15;
  v6[83] = swift_task_alloc();
  v24 = sub_2721F065C(&qword_280882020, &unk_27237E460);
  v6[84] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v6[85] = swift_task_alloc();
  v26 = sub_2721F065C(&qword_280882028, &qword_27237EC00);
  v6[86] = v26;
  v27 = *(v26 - 8);
  v6[87] = v27;
  v28 = *(v27 + 64) + 15;
  v6[88] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272249B90, 0, 0);
}

uint64_t sub_272249B90()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 456);
  v5 = *(v0 + 464);
  sub_27237738C();
  *(v0 + 712) = swift_getOpaqueTypeConformance2();
  sub_272377D0C();
  *(v0 + 720) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult;
  *(v0 + 728) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration;
  *(v0 + 736) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech;
  *(v0 + 744) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate;
  *(v0 + 752) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_timingInfo;
  *(v0 + 760) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult;
  *(v0 + 768) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask;
  *(v0 + 776) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded;
  *(v0 + 784) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  *(v0 + 792) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer;
  swift_beginAccess();
  *(v0 + 872) = *MEMORY[0x277CDCBB8];
  *(v0 + 876) = *MEMORY[0x277CDCBA0];
  *(v0 + 882) = 0;
  v6 = *(v0 + 712);
  v7 = *(v0 + 688);
  v8 = *(v0 + 672);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 800) = v11;
  *v11 = v0;
  v11[1] = sub_272249D70;
  v12 = *(v0 + 704);
  v13 = *(v0 + 688);
  v14 = *(v0 + 664);

  return MEMORY[0x282200310](v14, 0, 0, v0 + 408, v13, AssociatedConformanceWitness);
}

uint64_t sub_272249D70()
{
  v2 = *(*v1 + 800);
  v5 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = sub_27224C0C0;
  }

  else
  {
    v3 = sub_272249E84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272249E84()
{
  v322 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 680);
    v5 = *(v0 + 656);
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 600);
    v9 = *(v0 + 592);
    v290 = *(v0 + 568);
    v293 = *(v0 + 552);
    v296 = *(v0 + 544);
    v299 = *(v0 + 536);
    v301 = *(v0 + 528);
    v304 = *(v0 + 520);
    v307 = *(v0 + 512);
    v312 = *(v0 + 488);
    v316 = *(v0 + 480);
    v10 = *(v0 + 448);
    (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    *v10 = 1;

    v11 = *(v0 + 8);
LABEL_3:

    return v11();
  }

  v317 = *(v0 + 876);
  v13 = *(v0 + 872);
  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 616);
  v17 = *(v0 + 608);
  (*(v2 + 32))(*(v0 + 656), v1, v3);
  sub_27237734C();
  v18 = *(v16 + 104);
  v18(v15, v13, v17);
  v19 = sub_2723773EC();
  v20 = *(v16 + 8);
  v20(v15, v17);
  v20(v14, v17);
  sub_27237734C();
  v18(v15, v317, v17);
  v21 = sub_2723773EC();
  v20(v15, v17);
  v22 = (v20)(v14, v17);
  v278 = v21;
  v279 = v19;
  v23 = v19 | v21;
  if (((v19 | v21) & 1) == 0)
  {
    v24 = *(**(*(v0 + 464) + *(v0 + 720)) + 168);

    v24(1);
  }

  v25 = *(v0 + 882);
  v26 = *(v0 + 656);
  *(v0 + 440) = 0;
  v27 = *(MEMORY[0x2743C44B0](v22) + 16);

  if (!v27 || (v25 & 1) != 0)
  {
    (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
    v45 = *(v0 + 882);
LABEL_97:
    *(v0 + 882) = v45;
    v244 = *(v0 + 712);
    v245 = *(v0 + 688);
    v246 = *(v0 + 672);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v248 = *(MEMORY[0x277D856D8] + 4);
    v249 = swift_task_alloc();
    *(v0 + 800) = v249;
    *v249 = v0;
    v249[1] = sub_272249D70;
    v250 = *(v0 + 704);
    v251 = *(v0 + 688);
    v252 = *(v0 + 664);

    return MEMORY[0x282200310](v252, 0, 0, v0 + 408, v251, AssociatedConformanceWitness);
  }

  v308 = v23;
  *(v0 + 400) = MEMORY[0x277D84F90];
  v28 = MEMORY[0x2743C44B0]();
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v0 + 584);
    v31 = v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v318 = *(v30 + 72);
    v32 = *(v30 + 16);
    v33 = MEMORY[0x277D84F90];
    do
    {
      v34 = *(v0 + 600);
      v35 = *(v0 + 584);
      v36 = *(v0 + 576);
      v37 = *(v0 + 568);
      v38 = *(v0 + 560);
      v32(v34, v31, v36);
      sub_272376C1C();
      (*(v35 + 8))(v34, v36);
      sub_272253DFC(&qword_280882030, MEMORY[0x277CC8B30]);
      v39 = sub_272377A3C();
      v41 = v40;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2721FFBF8(0, *(v33 + 2) + 1, 1, v33);
      }

      v43 = *(v33 + 2);
      v42 = *(v33 + 3);
      if (v43 >= v42 >> 1)
      {
        v33 = sub_2721FFBF8((v42 > 1), v43 + 1, 1, v33);
      }

      *(v33 + 2) = v43 + 1;
      v44 = &v33[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      *(v0 + 400) = v33;
      swift_endAccess();
      v31 += v318;
      --v29;
    }

    while (v29);
    v313 = v33;
  }

  else
  {

    v313 = MEMORY[0x277D84F90];
  }

  v46 = *(v0 + 552);
  v48 = *(v0 + 496);
  v47 = *(v0 + 504);
  v284 = sub_2722C389C();
  v285 = *(v47 + 16);
  v285(v46);
  v49 = sub_27237725C();
  v50 = sub_272377E6C();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 552);
  v54 = *(v0 + 496);
  v53 = *(v0 + 504);
  if (v51)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 67109634;
    *(v55 + 4) = v279 & 1;
    *(v55 + 8) = 1024;
    *(v55 + 10) = v278 & 1;
    *(v55 + 14) = 2080;
    v321[0] = v56;

    v58 = MEMORY[0x2743C4C60](v57, MEMORY[0x277D837D0]);
    v60 = v59;

    v61 = sub_2721FFD04(v58, v60, v321);

    *(v55 + 16) = v61;
    _os_log_impl(&dword_2721E4000, v49, v50, "nBest[isFinal %{BOOL}d isFinalTerminal: %{BOOL}d]: %s", v55, 0x18u);
    sub_2722039C8(v56);
    MEMORY[0x2743C69C0](v56, -1, -1);
    MEMORY[0x2743C69C0](v55, -1, -1);
  }

  else
  {
  }

  v283 = *(v53 + 8);
  v62 = v283(v52, v54);
  v63 = *(v0 + 656);
  v64 = MEMORY[0x2743C44B0](v62);
  if (!*(v64 + 16))
  {
    goto LABEL_105;
  }

  v65 = *(v0 + 728);
  v66 = *(v0 + 592);
  v67 = *(v0 + 584);
  v68 = *(v0 + 576);
  v69 = *(v0 + 568);
  v70 = *(v0 + 560);
  v71 = *(v0 + 464);
  (*(v67 + 16))(v66, v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v68);

  sub_272376C1C();
  (*(v67 + 8))(v66, v68);
  sub_272253DFC(&qword_280882030, MEMORY[0x277CC8B30]);
  sub_272377A3C();
  v72 = sub_2723778AC();
  v74 = v73;

  *(v0 + 816) = v74;
  v75 = *(**(v71 + v65) + 144);

  v75(v321, v76);

  *(v0 + 881) = v321[0];
  *(v0 + 880) = 2;
  sub_272253DA8();
  sub_272377A8C();
  sub_272377A8C();
  v77 = *(v0 + 464);
  if (*(v0 + 384) != *(v0 + 392) || (v308 & 1) == 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = *(v77 + *(v0 + 736));
    v79 = v78;
  }

  *(v0 + 824) = v78;
  v272 = v78;
  if (*(v77 + *(v0 + 744)))
  {
    type metadata accessor for VAASRResult();
    *(v0 + 432) = v313;

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
    v80 = sub_2723777CC();
    v82 = v81;

    v83 = v78;
    v84 = sub_2722E2418(v80, v82, v279 & 1, v278 & 1, 0, 0, v78);
    swift_beginAccess();
    v85 = v84;
    *(v0 + 440) = v84;
    v77 = *(v0 + 464);
  }

  else
  {
    v85 = 0;
  }

  v86 = *(v77 + *(v0 + 752));
  v87 = MEMORY[0x277D85000];
  if (v86)
  {
    v88 = v85;
    v89 = *((*MEMORY[0x277D85000] & *v86) + 0x1F8);
    v90 = v86;
    v89(v72, v74, v279 & 1);

    v85 = v88;
  }

  v91 = v313;
  v280 = v85;
  if ((v308 & 1) == 0 && *(*(v0 + 472) + 77) != 1)
  {
    v219 = *(**(*(v0 + 464) + *(v0 + 720)) + 160);

    LOBYTE(v219) = v219(v220);

    if (v219)
    {
      v45 = 0;
    }

    else
    {
      (v285)(*(v0 + 512), v284, *(v0 + 496));
      v221 = sub_27237725C();
      v222 = sub_272377E7C();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        *v223 = 0;
        _os_log_impl(&dword_2721E4000, v221, v222, "Got first partial result after speech ended", v223, 2u);
        MEMORY[0x2743C69C0](v223, -1, -1);
      }

      v224 = *(v0 + 760);
      v225 = *(v0 + 720);
      v227 = *(v0 + 504);
      v226 = *(v0 + 512);
      v228 = *(v0 + 496);
      v229 = *(v0 + 464);

      v283(v226, v228);
      v230 = *(**(v229 + v225) + 168);

      v230(1);

      v231 = *(**(v229 + v224) + 168);

      v231(0);

      v45 = 0;
    }

LABEL_93:
    v232 = *(v0 + 744);
    v233 = *(v0 + 464);
    v234 = *(v233 + v232);
    if (!v234)
    {
      v242 = *(v0 + 824);
      v243 = *(v0 + 816);
      (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));

      goto LABEL_97;
    }

    if (v280)
    {
      v235 = *(v0 + 824);
      v236 = *(v0 + 816);
      v237 = *(v0 + 656);
      v238 = *(v0 + 648);
      v239 = *(v0 + 640);
      v240 = *(v233 + v232);
      swift_unknownObjectRetain();
      v241 = v280;

      [v234 speechResultsWithResult_];

      swift_unknownObjectRelease();
      (*(v238 + 8))(v237, v239);

      goto LABEL_97;
    }

LABEL_108:
    __break(1u);
    return MEMORY[0x28212BBF0]();
  }

  v92 = *(v313 + 2);
  v93 = *(v0 + 808);
  *(v0 + 840) = v313;
  *(v0 + 832) = v85;

  if (!v92)
  {
    goto LABEL_74;
  }

  v94 = 0;
  v297 = -v92;
  v95 = v313 + 40;
  v271 = v313 + 40;
  while (2)
  {
    v96 = &v95[16 * v94];
    v97 = v94 + 1;
    v314 = v91;
    while (1)
    {
      if ((v97 - 1) >= *(v91 + 2))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v309 = *(v96 - 1);
      v98 = *((*v87 & **(v0 + 464)) + 0x120);
      v319 = *v96;

      v100 = v98(v99);
      if (!v100)
      {
        goto LABEL_106;
      }

      v101 = *(v0 + 488);
      (*(*v100 + 312))(v100);

      v102 = VARuntimeParameters.keywordsNoThresholds.getter();
      sub_272216BD8(v101);
      v103 = *(v102 + 2);
      if (v103)
      {
        break;
      }

      ++v97;
      v96 += 2;
      v91 = v314;
      if (v297 + v97 == 1)
      {
        goto LABEL_74;
      }
    }

    swift_beginAccess();
    v104 = 0;
    v270 = v297 + v97;
    v105 = (v102 + 40);
    v276 = v97;
    v277 = v102;
    v275 = v103;
    do
    {
      if (v104 >= *(v102 + 2))
      {
        goto LABEL_104;
      }

      v287 = v104;
      v294 = v93;
      v108 = *(v0 + 544);
      v288 = *(v0 + 496);
      v109 = *(v105 - 1);
      v110 = *v105;
      v286 = v105;
      *(v0 + 208) = v109;
      *(v0 + 216) = v110;
      *(v0 + 224) = 95;
      *(v0 + 232) = 0xE100000000000000;
      *(v0 + 240) = 32;
      *(v0 + 248) = 0xE100000000000000;
      sub_272203AC4();

      v302 = sub_2723780FC();
      v112 = v111;
      v289 = v110;
      v291 = v109;
      *(v0 + 192) = v109;
      *(v0 + 200) = v110;
      *(v0 + 256) = 95;
      *(v0 + 264) = 0xE100000000000000;
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      v113 = sub_2723780FC();
      v115 = v114;
      (v285)(v108, v284, v288);
      v116 = v319;

      v117 = sub_27237725C();
      v118 = sub_272377E7C();

      v119 = os_log_type_enabled(v117, v118);
      v120 = *(v0 + 544);
      v122 = *(v0 + 496);
      v121 = *(v0 + 504);
      v305 = v115;
      if (v119)
      {
        v123 = swift_slowAlloc();
        v274 = v122;
        v124 = swift_slowAlloc();
        v321[0] = v124;
        *v123 = 136315650;
        *(v123 + 4) = sub_2721FFD04(v302, v112, v321);
        *(v123 + 12) = 2080;
        *(v123 + 14) = sub_2721FFD04(v113, v305, v321);
        *(v123 + 22) = 2080;
        v125 = sub_2723778AC();
        v273 = v120;
        v127 = sub_2721FFD04(v125, v126, v321);

        *(v123 + 24) = v127;
        _os_log_impl(&dword_2721E4000, v117, v118, "Looking for %s or %s in %s", v123, 0x20u);
        swift_arrayDestroy();
        v128 = v113;
        v129 = v112;
        v130 = v309;
        MEMORY[0x2743C69C0](v124, -1, -1);
        v131 = v305;
        MEMORY[0x2743C69C0](v123, -1, -1);

        v283(v273, v274);
      }

      else
      {

        v283(v120, v122);
        v128 = v113;
        v129 = v112;
        v130 = v309;
        v131 = v115;
      }

      sub_2721F065C(&qword_280882040, &unk_27237E470);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_27237AF80;
      *(v0 + 304) = 0;
      *(v0 + 312) = 0xE000000000000000;
      sub_27237820C();
      v133 = *(v0 + 312);

      strcpy((v0 + 288), "Looking for ");
      *(v0 + 302) = -4864;
      MEMORY[0x2743C4AD0](v302, v129);
      MEMORY[0x2743C4AD0](0x2220726F2022, 0xE600000000000000);
      MEMORY[0x2743C4AD0](v128, v131);
      MEMORY[0x2743C4AD0](0x22206E692022, 0xE600000000000000);
      v134 = sub_2723778AC();
      MEMORY[0x2743C4AD0](v134);

      MEMORY[0x2743C4AD0](34, 0xE100000000000000);
      v135 = *(v0 + 288);
      v136 = *(v0 + 296);
      *(v132 + 56) = MEMORY[0x277D837D0];
      *(v132 + 32) = v135;
      *(v132 + 40) = v136;
      sub_27237872C();

      if (sub_2722155A0())
      {
        v137 = 1;
        v138 = v305;
      }

      else
      {
        v138 = v305;
        v137 = sub_2722155A0();
      }

      v281 = v128;
      v139 = v138;
      if (sub_2723779FC())
      {
        v140 = 1;
      }

      else
      {
        v140 = sub_2723779FC();
      }

      v141 = sub_272241A18();
      v142 = sub_272241A18();
      v143 = sub_272324094();
      v144 = sub_272324094();
      sub_27232409C(v291, v289, v143, v144, v137 & 1, v140 & 1, 1, 0, v0 + 16, 1.0, v141, v142, 0);
      *(v0 + 320) = sub_2723778AC();
      *(v0 + 328) = v145;
      *(v0 + 336) = v302;
      *(v0 + 344) = v129;
      v146 = sub_27237813C();

      if (v146)
      {

LABEL_58:
        v149 = *(v0 + 464);
        v282 = v129;
        if (*(v149 + *(v0 + 744)))
        {
          if (!*(v314 + 2) || (v130 != *(v314 + 4) || v319 != *(v314 + 5)) && (sub_27237865C() & 1) == 0)
          {
            (v285)(*(v0 + 536), v284, *(v0 + 496));

            v150 = sub_27237725C();
            v151 = sub_272377E7C();

            v152 = os_log_type_enabled(v150, v151);
            v153 = *(v0 + 536);
            v155 = *(v0 + 496);
            v154 = *(v0 + 504);
            if (v152)
            {
              v156 = swift_slowAlloc();
              v292 = v155;
              v157 = swift_slowAlloc();
              v321[0] = v157;
              *v156 = 136315394;
              *(v156 + 4) = sub_2721FFD04(v309, v319, v321);
              *(v156 + 12) = 2080;

              v159 = MEMORY[0x2743C4C60](v158, MEMORY[0x277D837D0]);
              v161 = v160;

              v162 = sub_2721FFD04(v159, v161, v321);

              *(v156 + 14) = v162;
              _os_log_impl(&dword_2721E4000, v150, v151, "Picked final %s from n-best: %s", v156, 0x16u);
              swift_arrayDestroy();
              v130 = v309;
              MEMORY[0x2743C69C0](v157, -1, -1);
              MEMORY[0x2743C69C0](v156, -1, -1);

              v283(v153, v292);
            }

            else
            {

              v283(v153, v155);
            }

            v116 = v319;
          }

          type metadata accessor for VAASRResult();
          v173 = v272;

          v174 = sub_2722E2418(v130, v116, v279 & 1, v278 & 1, 0, 0, v272);
          *(v0 + 440) = v174;

          v149 = *(v0 + 464);
          v280 = v174;
        }

        v87 = MEMORY[0x277D85000];
        type metadata accessor for VAKeywordResult();
        sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
        v175 = swift_allocObject();
        v176 = *(v0 + 48);
        v177 = *(v0 + 64);
        v178 = *(v0 + 16);
        v175[3] = *(v0 + 32);
        v175[4] = v176;
        v179 = *(v0 + 80);
        v175[5] = v177;
        v175[6] = v179;
        v175[1] = xmmword_27237AF80;
        v175[2] = v178;
        v180 = VAKeywordResult.__allocating_init(detections:)(v175);
        *(v0 + 424) = v314;

        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
        v181 = sub_2723777CC();
        v183 = v182;

        (*((*v87 & *v149) + 0x4F8))(v180, v130, v319, v181, v183, 1);
        if (v294)
        {
          v253 = *(v0 + 704);
          v254 = *(v0 + 696);
          v310 = *(v0 + 688);
          v255 = *(v0 + 656);
          v256 = *(v0 + 648);
          v257 = *(v0 + 640);

          (*(v256 + 8))(v255, v257);
LABEL_102:
          (*(v254 + 8))(v253, v310);

          v261 = *(v0 + 704);
          v262 = *(v0 + 680);
          v263 = *(v0 + 664);
          v264 = *(v0 + 656);
          v265 = *(v0 + 632);
          v266 = *(v0 + 624);
          v267 = *(v0 + 600);
          v268 = *(v0 + 592);
          v269 = *(v0 + 568);
          v295 = *(v0 + 552);
          v298 = *(v0 + 544);
          v300 = *(v0 + 536);
          v303 = *(v0 + 528);
          v306 = *(v0 + 520);
          v311 = *(v0 + 512);
          v315 = *(v0 + 488);
          v320 = *(v0 + 480);

          v11 = *(v0 + 8);
          goto LABEL_3;
        }

        v184 = *(v0 + 752);
        v185 = *(v0 + 464);

        v186 = *(v185 + v184);
        if (v186)
        {
          v106 = *((*v87 & *v186) + 0x1E8);
          v107 = v186;
          v106(v302, v282);
        }

        else
        {
        }

        goto LABEL_44;
      }

      *(v0 + 352) = sub_2723778AC();
      *(v0 + 360) = v147;
      *(v0 + 368) = v281;
      *(v0 + 376) = v139;
      v148 = sub_27237813C();

      if (v148)
      {
        goto LABEL_58;
      }

      v163 = *(v0 + 464);

      *(v0 + 32) = 0;
      type metadata accessor for VAKeywordResult();
      sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
      v164 = swift_allocObject();
      v165 = *(v0 + 48);
      v166 = *(v0 + 64);
      v167 = *(v0 + 16);
      v164[3] = *(v0 + 32);
      v164[4] = v165;
      v168 = *(v0 + 80);
      v164[5] = v166;
      v164[6] = v168;
      v164[1] = xmmword_27237AF80;
      v164[2] = v167;
      v169 = VAKeywordResult.__allocating_init(detections:)(v164);
      *(v0 + 416) = v314;

      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
      v170 = sub_2723777CC();
      v172 = v171;

      v87 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v163) + 0x4F8))(v169, v130, v319, v170, v172, 0);
      if (v294)
      {
        v253 = *(v0 + 704);
        v254 = *(v0 + 696);
        v310 = *(v0 + 688);
        v258 = *(v0 + 656);
        v259 = *(v0 + 648);
        v260 = *(v0 + 640);

        (*(v259 + 8))(v258, v260);
        goto LABEL_102;
      }

LABEL_44:
      v94 = v276;
      v102 = v277;
      v93 = 0;
      v104 = v287 + 1;
      v105 = v286 + 2;
    }

    while (v275 != v287 + 1);

    v93 = 0;
    v91 = v314;
    *(v0 + 840) = v314;
    *(v0 + 832) = v280;
    v95 = v271;
    if (v270)
    {
      continue;
    }

    break;
  }

LABEL_74:
  v187 = *(v0 + 768);
  v188 = *(v0 + 760);
  v189 = *(v0 + 464);

  v190 = *(**(v189 + v188) + 168);

  v190(1);

  if (*(v189 + v187))
  {
    (v285)(*(v0 + 528), v284, *(v0 + 496));

    v191 = sub_27237725C();
    v192 = sub_272377E6C();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v193 = 138412290;
      *(v193 + 4) = v280;
      *v194 = v280;
      v195 = v280;
      _os_log_impl(&dword_2721E4000, v191, v192, "Got final, Cancelling task to feed audio till final result: %@", v193, 0xCu);
      sub_2721F40F0(v194, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v194, -1, -1);
      MEMORY[0x2743C69C0](v193, -1, -1);
    }

    v196 = *(v0 + 768);
    v197 = *(v0 + 528);
    v198 = *(v0 + 496);
    v199 = *(v0 + 504);
    v200 = *(v0 + 464);

    v283(v197, v198);
    sub_272377CBC();

    v201 = *(v200 + v196);
    *(v200 + v196) = 0;
  }

  v202 = *(**(*(v0 + 464) + *(v0 + 776)) + 160);

  LOBYTE(v202) = v202(v203);

  if ((v202 & 1) == 0)
  {
    (v285)(*(v0 + 520), v284, *(v0 + 496));
    v204 = sub_27237725C();
    v205 = sub_272377E7C();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 0;
      _os_log_impl(&dword_2721E4000, v204, v205, "Got final result before speech ended", v206, 2u);
      MEMORY[0x2743C69C0](v206, -1, -1);
    }

    v207 = *(v0 + 520);
    v208 = *(v0 + 496);
    v209 = *(v0 + 504);

    v283(v207, v208);
  }

  v210 = *(v0 + 480);
  sub_2721F07F4(*(v0 + 464) + *(v0 + 784), v210, &qword_280881F80, &qword_27237E338);
  v211 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v212 = *(v211 - 8);
  if ((*(v212 + 48))(v210, 1, v211) == 1)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v213 = *(v0 + 792);
  v214 = *(v0 + 480);
  v215 = *(v0 + 464);
  sub_272377C7C();
  (*(v212 + 8))(v214, v211);
  v216 = *(v215 + v213);
  *(v0 + 848) = v216;
  if (!v216)
  {
    v45 = 1;
    goto LABEL_93;
  }

  v217 = *(MEMORY[0x277CDCA48] + 4);

  v218 = swift_task_alloc();
  *(v0 + 856) = v218;
  *v218 = v0;
  v218[1] = sub_27224BDB4;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_27224BDB4()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;
  v2[108] = v0;

  v5 = v2[106];
  if (v0)
  {
    v6 = v2[102];

    v7 = sub_27224C234;
  }

  else
  {

    v7 = sub_27224BEFC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_27224BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 840);
  v8 = *(v6 + 832);
  v9 = *(v6 + 744);
  v10 = *(*(v6 + 464) + v9);
  if (v10)
  {
    if (!v8)
    {
      __break(1u);
      return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
    }

    v11 = *(v6 + 824);
    v12 = *(v6 + 816);
    v13 = *(v6 + 656);
    v14 = *(v6 + 648);
    v15 = *(v6 + 640);
    v16 = *(*(v6 + 464) + v9);
    swift_unknownObjectRetain();
    v8 = v8;

    [v10 speechResultsWithResult_];

    swift_unknownObjectRelease();
    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v17 = *(v6 + 824);
    v18 = *(v6 + 816);
    (*(*(v6 + 648) + 8))(*(v6 + 656), *(v6 + 640));
  }

  *(v6 + 882) = 1;
  v19 = *(v6 + 712);
  v20 = *(v6 + 688);
  v21 = *(v6 + 672);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(MEMORY[0x277D856D8] + 4);
  v24 = swift_task_alloc();
  *(v6 + 800) = v24;
  *v24 = v6;
  v24[1] = sub_272249D70;
  v25 = *(v6 + 704);
  a5 = *(v6 + 688);
  a1 = *(v6 + 664);
  a4 = v6 + 408;
  a2 = 0;
  a3 = 0;
  a6 = AssociatedConformanceWitness;

  return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_27224C0C0()
{
  (*(v0[87] + 8))(v0[88], v0[86]);
  v20 = v0[51];
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[71];
  v10 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[61];
  v19 = v0[60];

  v11 = v0[1];

  return v11();
}

uint64_t sub_27224C234()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v28 = *(v0 + 864);
  v9 = *(v0 + 704);
  v10 = *(v0 + 680);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 600);
  v16 = *(v0 + 592);
  v17 = *(v0 + 568);
  v18 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v26 = *(v0 + 488);
  v27 = *(v0 + 480);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_27224C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2721F07F4(a3, v24 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_272377BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_2723778BC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}
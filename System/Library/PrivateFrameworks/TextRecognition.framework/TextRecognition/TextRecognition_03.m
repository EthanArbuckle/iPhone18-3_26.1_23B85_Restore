uint64_t sub_1B4113C9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {

    v4 = sub_1B4114C28;
  }

  else
  {
    v4 = sub_1B4113DCC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4113DCC()
{
  v2 = *(v0 + 368);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = swift_unknownObjectRetain();
  MEMORY[0x1B8C72680](v3);
  if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_147;
  }

LABEL_3:
  sub_1B429FE38();
  swift_unknownObjectRelease();
LABEL_4:
  v4 = *(v0 + 336);
  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (!(v4 >> 62))
  {
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      v6 = v5[2];
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v1 = *(v0 + 336);
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        v1 = sub_1B42A0438();
        v5 = (v1 & 0xFFFFFFFFFFFFFF8);
      }

      sub_1B40E27B4(0, &unk_1ED95E680);
      swift_arrayDestroy();
      if (v6)
      {
        if (v1 >> 62)
        {
          goto LABEL_157;
        }

        v2 = v5[2];
        result = memmove(v5 + 4, &v5[v6 + 4], 8 * (v2 - v6));
LABEL_11:
        if (__OFADD__(v2, -v6))
        {
          __break(1u);
          goto LABEL_160;
        }

        v5[2] = v2 - v6;
      }

      goto LABEL_26;
    }

    if (!(v5[3] >> 1))
    {
      goto LABEL_24;
    }

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
    v1 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v1);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v1 + 16) = 0;
    *(v1 + 24) = (2 * (v12 >> 3)) | 1;
    goto LABEL_25;
  }

  if (v4 < 0)
  {
    v2 = *(v0 + 336);
  }

  else
  {
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = sub_1B42A0518();
  v10 = sub_1B42A0518();
  if (v10 < 0)
  {
    goto LABEL_151;
  }

  v10 = sub_1B42A0518();
  if (v9 < 0 || v10 < v9)
  {
    goto LABEL_152;
  }

  if (v9)
  {
    goto LABEL_20;
  }

LABEL_24:
  v1 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  name = (v0 + 96);
  *(v0 + 88) = v1;
  v13 = *(v0 + 376);
  v14 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
  while (1)
  {
    v15 = *(v0 + 80);
    if (v15 >> 62)
    {
      v16 = sub_1B42A0518();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16 != [*(v0 + 344) v14[92]])
    {

      goto LABEL_51;
    }

    v17 = *(v0 + 25);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    v20 = *(v0 + 192);
    *(v0 + 16) = v15;
    *(v0 + 24) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
    sub_1B429FF18();
    (*(v18 + 8))(v19, v20);
    v2 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
      v22 = sub_1B42A0518();
      v10 = sub_1B42A0518();
      if (v10 < 0)
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        v55 = MEMORY[0x1B8C72CD0](v10, *(v0 + 136));
LABEL_114:
        v56 = v55;
        *(v0 + 48) = 0;
        *(v0 + 56) = 1;
        result = MEMORY[0x1B8C72130]();
        if (*(v0 + 56))
        {
          goto LABEL_167;
        }

        v57 = *(v0 + 120);
        v58 = *(v0 + 48);

        v59 = *v57;
        namea = (v5[1] + *v5[1]);
        v60 = swift_task_alloc();
        *(v0 + 384) = v60;
        *v60 = v0;
        v60[1] = sub_1B4114CC0;
        v61 = *(v0 + 144);
        v62 = *(v0 + 128);
        v63 = v1;
        v64.n128_u64[0] = v58;
        v65 = v59;
        goto LABEL_116;
      }

      v10 = sub_1B42A0518();
      v14 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
      if (v22 < 0 || v10 < v22)
      {
        goto LABEL_149;
      }

      v23 = *(v0 + 320);
      if (!v22)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
    {
      v14 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
      v23 = *(v0 + 320);
      if (!(*((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
LABEL_49:

        v24 = MEMORY[0x1E69E7CC0];
LABEL_50:

        *(v0 + 80) = v24;
        goto LABEL_51;
      }

LABEL_45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
      v24 = swift_allocObject();
      v2 = _swift_stdlib_malloc_size(v24);

      v25 = v2 - 32;
      if (v2 < 32)
      {
        v25 = v2 - 25;
      }

      v24[2] = 0;
      v24[3] = (2 * (v25 >> 3)) | 1;
      goto LABEL_50;
    }

    v6 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
    if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
    {
      v15 = sub_1B42A0438();
      v2 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950);
    swift_arrayDestroy();
    if (v6)
    {
      if (v15 >> 62)
      {
        result = sub_1B42A0518();
        if (__OFSUB__(result, v6))
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        memmove((v2 + 32), (v2 + 8 * v6 + 32), 8 * (result - v6));
        v21 = sub_1B42A0518();
      }

      else
      {
        v21 = *(v2 + 16);
        memmove((v2 + 32), (v2 + 8 * v6 + 32), 8 * (v21 - v6));
      }

      if (__OFADD__(v21, -v6))
      {
        goto LABEL_156;
      }

      *(v2 + 16) = v21 - v6;
      v14 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
    }

    *(v0 + 80) = v15;
LABEL_51:
    v26 = *(v0 + 328);
    if (v26 == *(v0 + 312))
    {
      break;
    }

LABEL_86:
    v43 = *(v0 + 304);
    if ((v43 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B8C72CD0](v26);
    }

    else
    {
      if (v26 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v10 = *(v43 + 8 * v26 + 32);
    }

    *(v0 + 320) = v10;
    *(v0 + 328) = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      sub_1B429FE08();
      goto LABEL_3;
    }

    if (*(v0 + 288))
    {
      v44 = 0;
    }

    else
    {
      v45 = *(v0 + 304);
      if (v45 >> 62)
      {
        v2 = v10;
        v46 = sub_1B42A0518();
        v10 = v2;
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = __OFSUB__(v46, 1);
      v48 = v46 - 1;
      if (v47)
      {
        goto LABEL_150;
      }

      v44 = v26 == v48;
    }

    *(v0 + 25) = v44;
    v49 = v10;
    MEMORY[0x1B8C72680]();
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B429FE08();
    }

    sub_1B429FE38();
    v1 = *(v0 + 88);
    *(v0 + 336) = v1;
    if (v1 >> 62)
    {
      v50 = sub_1B42A0518();
    }

    else
    {
      v50 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = **(v0 + 120);
    *(v0 + 344) = v6;
    if (v50 == [v6 batchSize])
    {
      v66 = *(v0 + 120);
      v67 = *(v0 + 136) & 0xC000000000000001;
      v2 = v66[4];
      v5 = v66[5];
      __swift_project_boxed_opaque_existential_0(v66 + 1, v66[4]);
      result = *(v0 + 296);
      if (!v67)
      {
        if (result < 0)
        {
          __break(1u);
        }

        else
        {
          v68 = *(v0 + 136);
          if (result < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v69 = *(v68 + 8 * result + 32);
            goto LABEL_127;
          }
        }

        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

LABEL_160:
      v69 = MEMORY[0x1B8C72CD0](result, *(v0 + 136));
LABEL_127:
      v70 = v69;
      *(v0 + 32) = 0;
      *(v0 + 40) = 1;
      result = MEMORY[0x1B8C72130]();
      if (*(v0 + 40))
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v71 = *(v0 + 32);

      namea = (v5[1] + *v5[1]);
      v72 = swift_task_alloc();
      *(v0 + 360) = v72;
      *v72 = v0;
      v72[1] = sub_1B4113C9C;
      v61 = *(v0 + 144);
      v62 = *(v0 + 128);
      v63 = v1;
      v64.n128_u64[0] = v71;
      v65 = v6;
LABEL_116:

      return (namea)(v63, v62, v65, v61, v2, v5, v64);
    }
  }

  while (1)
  {
    *(v0 + 352) = v1;

    if (v1 >> 62)
    {
      break;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_110;
    }

LABEL_54:
    v27 = *(v0 + 80);
    v28 = v27 >> 62;
    if (v27 >> 62)
    {
      if (!sub_1B42A0518())
      {
        goto LABEL_65;
      }
    }

    else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_65;
    }

    v29 = *(v0 + 200);
    v2 = *(v0 + 208);
    v30 = *(v0 + 192);
    v31 = *(v0 + 288) == 0;
    *(v0 + 64) = v27;
    *(v0 + 72) = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
    sub_1B429FF18();
    (*(v29 + 8))(v2, v30);
    if (v28)
    {
      v32 = sub_1B42A0518();
      result = sub_1B42A0518();
      if (result < 0)
      {
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        if (HIDWORD(v2))
        {
          goto LABEL_164;
        }

        if ((v2 & 0xFFFFF800) != 0xD800)
        {
          if (v2 >> 16 > 0x10)
          {
            goto LABEL_165;
          }

          goto LABEL_141;
        }

        goto LABEL_166;
      }

      result = sub_1B42A0518();
      if (v32 < 0 || result < v32)
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        sub_1B41192EC(0, *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10), sub_1B40FB7FC, sub_1B41191E0);
        goto LABEL_65;
      }

      v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v33 = sub_1B40DDE04(0, v32);

    *(v0 + 80) = v33;
LABEL_65:
    v34 = *(v0 + 272);
    v35 = v34 - 1;
    if (v34 == 1)
    {
      v73 = *(v0 + 248);
      v74 = *(v0 + 256);
      v28 = *(v0 + 240);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
      sub_1B429FF28();
      v75 = sub_1B410F8A0();
      (*(v73 + 16))(v74, v75, v28);
      v76 = sub_1B410F958();
      v2 = *v76;
      v77 = *(v76 + 16);
      v27 = sub_1B429F9C8();
      sub_1B429FA08();
      LOBYTE(v28) = sub_1B42A01B8();
      result = sub_1B42A0278();
      if ((result & 1) == 0)
      {
LABEL_135:
        v79 = *(v0 + 248);
        v78 = *(v0 + 256);
        v81 = *(v0 + 232);
        v80 = *(v0 + 240);
        v82 = *(v0 + 216);
        v83 = *(v0 + 224);

        (*(v83 + 8))(v81, v82);
        (*(v79 + 8))(v78, v80);
        goto LABEL_109;
      }

      if ((v77 & 1) == 0)
      {
        if (!v2)
        {
          goto LABEL_163;
        }

        name = v2;
LABEL_141:
        v85 = *(v0 + 176);
        v84 = *(v0 + 184);
        v86 = *(v0 + 168);

        sub_1B429FA38();

        v87 = (*(v85 + 88))(v84, v86);
        v88 = v28;
        if (v87 == *MEMORY[0x1E69E93E8])
        {
          v89 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
          v89 = "";
        }

        v90 = *(v0 + 248);
        v97 = *(v0 + 256);
        v91 = *(v0 + 232);
        v92 = *(v0 + 240);
        v94 = *(v0 + 216);
        v93 = *(v0 + 224);
        v95 = swift_slowAlloc();
        *v95 = 0;
        v96 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v27, v88, v96, name, v89, v95, 2u);
        MEMORY[0x1B8C74FA0](v95, -1, -1);

        (*(v93 + 8))(v91, v94);
        (*(v90 + 8))(v97, v92);
        goto LABEL_109;
      }

      goto LABEL_138;
    }

    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v38 = *(v0 + 264);
    if (v34 == v38)
    {
      v36 = *(v0 + 264);
    }

    *(v0 + 272) = v35;
    *(v0 + 280) = v36;
    if (v35 == v38)
    {
      v37 = v38;
    }

    *(v0 + 288) = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (v35 != v38 && v36 < v35)
    {
      goto LABEL_134;
    }

    v1 = *(*(v0 + 104) + 8 * v34 + 16);
    *(v0 + 296) = v1;
    v5 = v13;
    sub_1B429FF98();
    if (v13)
    {

      v51 = *(v0 + 8);
      goto LABEL_120;
    }

    if (!*(*(v0 + 112) + 16) || (v39 = sub_1B41163E0(v1), (v40 & 1) == 0))
    {

LABEL_109:

      v51 = *(v0 + 8);
LABEL_120:

      return v51();
    }

    v41 = *(*(*(v0 + 112) + 56) + 8 * v39);
    *(v0 + 304) = v41;
    if (v41 >> 62)
    {
      v2 = v41;
      v42 = sub_1B42A0518();
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 312) = v42;

    v13 = 0;
    if (v42)
    {
      v26 = 0;
      goto LABEL_86;
    }

    v1 = *(v0 + 88);
  }

  if (!sub_1B42A0518())
  {
    goto LABEL_54;
  }

LABEL_110:
  v52 = *(v0 + 120);
  v53 = *(v0 + 136) & 0xC000000000000001;
  v2 = v52[4];
  v5 = v52[5];
  v6 = __swift_project_boxed_opaque_existential_0(v52 + 1, v2);
  v10 = *(v0 + 296);
  if (v53)
  {
    goto LABEL_153;
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v54 = *(v0 + 136);
    if (v10 < *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v55 = *(v54 + 8 * v10 + 32);
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_1B42A0518();
  if (!__OFSUB__(result, v6))
  {
    memmove(v5 + 4, &v5[v6 + 4], 8 * (result - v6));
    result = sub_1B42A0518();
    v2 = result;
    goto LABEL_11;
  }

LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_1B4114C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4114CC0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {

    v4 = sub_1B4115B4C;
  }

  else
  {
    v4 = sub_1B4114DE4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1B4114DE4()
{
  if (*(v1 + 392))
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x1B8C72680](v3);
    v4 = *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_139;
    }

    goto LABEL_3;
  }

LABEL_4:
  v5 = *(v1 + 352);
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *(v1 + 352);
    }

    else
    {
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_1B42A0518();
    result = sub_1B42A0518();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_148;
    }

    v9 = sub_1B42A0518();
    if ((v6 & 0x8000000000000000) == 0 && v9 >= v6)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v6 = *(v6 + 24) >> 1;
LABEL_15:
    v10 = sub_1B40DDE04(0, v6);

    *(v1 + 88) = v10;
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1B41192EC(0, *(v6 + 16), sub_1B4118344, sub_1B41190D0);
LABEL_16:
  name = (v1 + 96);
  v0 = *(v1 + 400);
  while (1)
  {
    v7 = *(v1 + 80);
    if (v7 >> 62)
    {
      if (!sub_1B42A0518())
      {
        goto LABEL_31;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v11 = *(v1 + 200);
    v12 = *(v1 + 208);
    v13 = *(v1 + 192);
    v14 = *(v1 + 288) == 0;
    *(v1 + 64) = v7;
    *(v1 + 72) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
    sub_1B429FF18();
    (*(v11 + 8))(v12, v13);
    if (v7 >> 62)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = sub_1B42A0518();
      v4 = sub_1B42A0518();
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        v70 = MEMORY[0x1B8C72CD0](v4, *(v1 + 136));
LABEL_110:
        v71 = v70;
        *(v1 + 32) = 0;
        *(v1 + 40) = 1;
        result = MEMORY[0x1B8C72130]();
        if ((*(v1 + 40) & 1) == 0)
        {
          v72 = *(v1 + 32);

          namea = (*(v0 + 8) + **(v0 + 8));
          v73 = swift_task_alloc();
          *(v1 + 360) = v73;
          *v73 = v1;
          v73[1] = sub_1B4113C9C;
          v62 = *(v1 + 144);
          v63 = *(v1 + 128);
          v64 = v2;
          v65.n128_u64[0] = v72;
          v66 = v15;
          goto LABEL_112;
        }

LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v4 = sub_1B42A0518();
      if (v15 < 0 || v4 < v15)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        sub_1B41192EC(0, *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10), sub_1B40FB7FC, sub_1B41191E0);
        goto LABEL_31;
      }

      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v16 = sub_1B40DDE04(0, v15);

    *(v1 + 80) = v16;
LABEL_31:
    v17 = *(v1 + 272);
    v18 = v17 - 1;
    if (v17 == 1)
    {
LABEL_126:
      v76 = *(v1 + 248);
      v75 = *(v1 + 256);
      v77 = *(v1 + 240);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
      sub_1B429FF28();
      v78 = sub_1B410F8A0();
      (*(v76 + 16))(v75, v78, v77);
      v79 = sub_1B410F958();
      v80 = *v79;
      v81 = *(v79 + 16);
      v7 = sub_1B429F9C8();
      sub_1B429FA08();
      v82 = sub_1B42A01B8();
      result = sub_1B42A0278();
      if (result)
      {
        if (v81)
        {
          if (v80 >> 32)
          {
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if ((v80 & 0xFFFFF800) == 0xD800)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v80 >> 16 > 0x10)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }
        }

        else
        {
          if (!v80)
          {
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          name = v80;
        }

        v90 = *(v1 + 176);
        v89 = *(v1 + 184);
        v91 = *(v1 + 168);

        sub_1B429FA38();

        v92 = v82;
        if ((*(v90 + 88))(v89, v91) == *MEMORY[0x1E69E93E8])
        {
          v93 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 176) + 8))(*(v1 + 184), *(v1 + 168));
          v93 = "";
        }

        v94 = *(v1 + 248);
        v101 = *(v1 + 256);
        v95 = *(v1 + 232);
        v96 = *(v1 + 240);
        v98 = *(v1 + 216);
        v97 = *(v1 + 224);
        v99 = swift_slowAlloc();
        *v99 = 0;
        v100 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v7, v92, v100, name, v93, v99, 2u);
        MEMORY[0x1B8C74FA0](v99, -1, -1);

        (*(v97 + 8))(v95, v98);
        (*(v94 + 8))(v101, v96);
LABEL_116:

        v74 = *(v1 + 8);
        goto LABEL_118;
      }

LABEL_133:
      v84 = *(v1 + 248);
      v83 = *(v1 + 256);
      v86 = *(v1 + 232);
      v85 = *(v1 + 240);
      v87 = *(v1 + 216);
      v88 = *(v1 + 224);

      (*(v88 + 8))(v86, v87);
      (*(v84 + 8))(v83, v85);
      goto LABEL_116;
    }

    v19 = *(v1 + 280);
    v20 = *(v1 + 288);
    v21 = *(v1 + 264);
    if (v17 == v21)
    {
      v19 = *(v1 + 264);
    }

    *(v1 + 272) = v18;
    *(v1 + 280) = v19;
    if (v18 == v21)
    {
      v20 = v21;
    }

    *(v1 + 288) = v20 - 1;
    if (__OFSUB__(v20, 1))
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v18 != v21 && v19 < v18)
    {
      goto LABEL_131;
    }

    v22 = *(*(v1 + 104) + 8 * v17 + 16);
    *(v1 + 296) = v22;
    sub_1B429FF98();
    if (v0)
    {
      break;
    }

    if (!*(*(v1 + 112) + 16) || (v23 = sub_1B41163E0(v22), (v24 & 1) == 0))
    {

      goto LABEL_116;
    }

    v25 = *(*(*(v1 + 112) + 56) + 8 * v23);
    *(v1 + 304) = v25;
    if (v25 >> 62)
    {
      v26 = sub_1B42A0518();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v1 + 312) = v26;

    if (v26)
    {
      v27 = 0;
      while (1)
      {
        v28 = *(v1 + 304);
        if ((v28 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1B8C72CD0](v27);
        }

        else
        {
          if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_122;
          }

          v29 = *(v28 + 8 * v27 + 32);
        }

        *(v1 + 320) = v29;
        *(v1 + 328) = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (*(v1 + 288))
        {
          v30 = 0;
        }

        else
        {
          v31 = *(v1 + 304);
          if (v31 >> 62)
          {
            v33 = v29;
            v32 = sub_1B42A0518();
            v29 = v33;
          }

          else
          {
            v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v34 = __OFSUB__(v32, 1);
          v35 = v32 - 1;
          if (v34)
          {
            goto LABEL_123;
          }

          v30 = v27 == v35;
        }

        *(v1 + 25) = v30;
        v36 = v29;
        MEMORY[0x1B8C72680]();
        if (*((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B429FE08();
        }

        sub_1B429FE38();
        v2 = *(v1 + 88);
        *(v1 + 336) = v2;
        if (v2 >> 62)
        {
          v37 = sub_1B42A0518();
        }

        else
        {
          v37 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = *(v1 + 120);
        v15 = *v38;
        *(v1 + 344) = *v38;
        if (v37 == [v15 batchSize])
        {
          v67 = *(v1 + 120);
          v68 = *(v1 + 136) & 0xC000000000000001;
          v7 = v67[4];
          v0 = v67[5];
          __swift_project_boxed_opaque_existential_0(v67 + 1, v7);
          v4 = *(v1 + 296);
          if (v68)
          {
            goto LABEL_136;
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v69 = *(v1 + 136);
            if (v4 < *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v70 = *(v69 + 8 * v4 + 32);
              goto LABEL_110;
            }
          }

          __break(1u);
LABEL_139:
          v0 = v4;
          sub_1B429FE08();
LABEL_3:
          sub_1B429FE38();
          swift_unknownObjectRelease();
          goto LABEL_4;
        }

        v7 = *(v1 + 80);
        if (v7 >> 62)
        {
          v39 = sub_1B42A0518();
        }

        else
        {
          v39 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v39 == [*(v1 + 344) maxConcurrentBatches])
        {
          v40 = *(v1 + 25);
          v42 = *(v1 + 200);
          v41 = *(v1 + 208);
          v43 = *(v1 + 192);
          *(v1 + 16) = v7;
          *(v1 + 24) = v40;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050);
          sub_1B429FF18();
          (*(v42 + 8))(v41, v43);
          v44 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v7 >> 62)
          {
            v47 = sub_1B42A0518();
            if (sub_1B42A0518() < 0)
            {
              goto LABEL_124;
            }

            v48 = sub_1B42A0518();
            if (v47 < 0 || v48 < v47)
            {
              goto LABEL_125;
            }

            v49 = *(v1 + 320);
            if (v47)
            {
              goto LABEL_81;
            }

LABEL_85:

            v50 = MEMORY[0x1E69E7CC0];
LABEL_86:

            *(v1 + 80) = v50;
            goto LABEL_47;
          }

          if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
          {
            v49 = *(v1 + 320);
            if (!(*((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
            {
              goto LABEL_85;
            }

LABEL_81:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
            v50 = swift_allocObject();
            v51 = _swift_stdlib_malloc_size(v50);

            v52 = v51 - 32;
            if (v51 < 32)
            {
              v52 = v51 - 25;
            }

            v50[2] = 0;
            v50[3] = (2 * (v52 >> 3)) | 1;
            goto LABEL_86;
          }

          v45 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
          {
            v7 = sub_1B42A0438();
            v44 = v7 & 0xFFFFFFFFFFFFFF8;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950);
          swift_arrayDestroy();
          if (v45)
          {
            if (v7 >> 62)
            {
              result = sub_1B42A0518();
              if (__OFSUB__(result, v45))
              {
                goto LABEL_152;
              }

              memmove((v44 + 32), (v44 + 8 * v45 + 32), 8 * (result - v45));
              v46 = sub_1B42A0518();
            }

            else
            {
              v46 = *(v44 + 16);
              memmove((v44 + 32), (v44 + 8 * v45 + 32), 8 * (v46 - v45));
            }

            if (__OFADD__(v46, -v45))
            {
              goto LABEL_132;
            }

            *(v44 + 16) = v46 - v45;
          }

          *(v1 + 80) = v7;
        }

        else
        {
        }

LABEL_47:
        v27 = *(v1 + 328);
        if (v27 == *(v1 + 312))
        {
          goto LABEL_93;
        }
      }
    }

    v2 = *(v1 + 88);
LABEL_93:
    *(v1 + 352) = v2;

    if (v2 >> 62)
    {
      v0 = 0;
      if (sub_1B42A0518())
      {
LABEL_100:
        v53 = *(v1 + 120);
        v54 = *(v1 + 136) & 0xC000000000000001;
        v7 = v53[4];
        v0 = v53[5];
        __swift_project_boxed_opaque_existential_0(v53 + 1, v7);
        result = *(v1 + 296);
        if (!v54)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v55 = *(v1 + 136);
            if (result < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v56 = *(v55 + 8 * result + 32);
              goto LABEL_104;
            }
          }

          __break(1u);
          goto LABEL_151;
        }

LABEL_148:
        v56 = MEMORY[0x1B8C72CD0](result, *(v1 + 136));
LABEL_104:
        v57 = v56;
        *(v1 + 48) = 0;
        *(v1 + 56) = 1;
        result = MEMORY[0x1B8C72130]();
        if ((*(v1 + 56) & 1) == 0)
        {
          v58 = *(v1 + 120);
          v59 = *(v1 + 48);

          v60 = *v58;
          namea = (*(v0 + 8) + **(v0 + 8));
          v61 = swift_task_alloc();
          *(v1 + 384) = v61;
          *v61 = v1;
          v61[1] = sub_1B4114CC0;
          v62 = *(v1 + 144);
          v63 = *(v1 + 128);
          v64 = v2;
          v65.n128_u64[0] = v59;
          v66 = v60;
LABEL_112:

          return (namea)(v64, v63, v66, v62, v7, v0, v65);
        }

LABEL_157:
        __break(1u);
        return result;
      }
    }

    else
    {
      v0 = 0;
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }
    }
  }

  v74 = *(v1 + 8);
LABEL_118:

  return v74();
}

uint64_t sub_1B4115B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4115BDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B40E17D0;

  return v7();
}

uint64_t sub_1B4115CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1B4105F1C(a3, v23 - v10);
  v12 = sub_1B429FEE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B4105F8C(v11);
  }

  else
  {
    sub_1B429FED8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B429FE78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B429FC08() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1B4105F8C(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B4105F8C(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B4115F70(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 8);

  return sub_1B40D5F90(a1, v1 + 8);
}

uint64_t sub_1B4115FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B40DD740;

  return CRRecognizerBatchedByWidthsFeatureProvider.recognizerFeatures(for:lineRegions:rectifier:)(a1, a2, a3, a4);
}

uint64_t sub_1B4116080(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4118CB4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B42A0638();
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
      v7 = sub_1B429FE28();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B41172CC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B41161B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B40E08D4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B41170BC(v6);
  return sub_1B42A0468();
}

void sub_1B4116230(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_1B40E27B4(0, &unk_1ED95E680);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1B4116324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1B4116C50(*(a1 + 16), 0);
  v4 = sub_1B41186E8(&v6, v3 + 4, v1, a1);

  sub_1B41187E8();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1B41163E0(uint64_t a1)
{
  v2 = sub_1B42A0768();

  return sub_1B4116A88(a1, v2);
}

uint64_t sub_1B4116424(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B41163E0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B4116AF4();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1B4116918(v8, v7);
  *v2 = v7;
  return v9;
}

void (*sub_1B41164AC(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B4116F3C(v5);
  v5[9] = sub_1B4116CD4(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B4116550;
}

void sub_1B4116550(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1B41165B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return sub_1B42A05B8();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    sub_1B40E27B4(0, &unk_1ED95E680);

    result = v5;
    do
    {
      v6 = result + 1;
      sub_1B42A0418();
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B41166A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885060);
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1B42A0768();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4116918(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B42A0388() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1B42A0768();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B4116A88(uint64_t a1, uint64_t a2)
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

void *sub_1B4116AF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885060);
  v2 = *v0;
  v3 = sub_1B42A05C8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B4116C50(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855C0);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void (*sub_1B4116CD4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B41163E0(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B4116AF4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B41166A8(v16, a3 & 1);
    v11 = sub_1B41163E0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1B4116E1C;
}

void sub_1B4116E1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_1B4116918(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1B4116F3C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B4116F64;
}

unint64_t sub_1B4116F70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B41163E0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B41166A8(v14, a3 & 1);
      result = sub_1B41163E0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1B42A06E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B4116AF4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_1B41170BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B42A0638();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B40E27B4(0, &unk_1ED95E680);
        v6 = sub_1B429FE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B4117818(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1B41171D0(0, v2, 1, a1);
  }
}

void sub_1B41171D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 aspectRatio];
      v15 = v14;
      [v13 aspectRatio];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B41172CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1B40E05F0(v8);
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
        sub_1B4117E90((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
  v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1B40DDD00(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1B40DDD00((v29 > 1), v5 + 1, 1, v8);
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
        sub_1B4117E90((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
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

void sub_1B4117818(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1B40E05F0(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1B4118084((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B40E05F0(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_1B40E0564(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 aspectRatio];
      v19 = v18;
      [v17 aspectRatio];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 aspectRatio];
        v27 = v26;
        [v25 aspectRatio];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B40DDD00(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1B40DDD00((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1B4118084((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B40E05F0(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_1B40E0564(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 aspectRatio];
    v48 = v47;
    [v46 aspectRatio];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1B4117E90(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_1B4118084(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 aspectRatio];
        v35 = v34;
        [v33 aspectRatio];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 aspectRatio];
        v19 = v18;
        [v17 aspectRatio];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1B4118344(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1B42A0518();
    }

    result = sub_1B42A0438();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B4118400(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1B42A0518();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B40DDE04(v3, 0);
  sub_1B4118494((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B4118494(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B42A0518();
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
      result = sub_1B42A0518();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B411906C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884920);
            v9 = sub_1B40E0604(v13, i, a3);
            v11 = *v10;
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
        sub_1B40E27B4(0, &unk_1ED95E680);
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

uint64_t sub_1B4118624(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1B42A06A8();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1B41186E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

int64_t sub_1B41187F0(int64_t result, uint64_t *a2)
{
  v3 = v2;
  v4 = *(v2 + 16);
  if (*(v4 + 16))
  {
    v5 = result;
    v6 = *(v3 + 24);
    result = sub_1B41163E0(*a2);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * result);
      if (v8 >> 62)
      {
        v9 = sub_1B42A0518();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = *v6;
      v11 = v9 / [*v6 batchSize];
      result = [v10 maxConcurrentBatches];
      v12 = ceilf(v11 / result);
      if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
      }

      else if (v12 > -9.2234e18)
      {
        if (v12 < 9.2234e18)
        {
          if (!__OFADD__(*v5, v12))
          {
            *v5 += v12;
            return result;
          }

LABEL_15:
          __break(1u);
          return result;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1B4118940()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050) - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  v9 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B40E17D0;

  return sub_1B4112DF0(v4, v5, (v0 + 4), v6, v7, v8, v0 + v3, v9);
}

uint64_t sub_1B4118A80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B40E6828;

  return sub_1B40F96E4(v2, v3, v4);
}

uint64_t sub_1B4118B40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B40E6828;

  return sub_1B4115BDC(a1, v4, v5, v6);
}

uint64_t sub_1B4118C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884880);

  return sub_1B429FF68();
}

unint64_t sub_1B4118C60()
{
  result = qword_1ED95EFA8;
  if (!qword_1ED95EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95EFA8);
  }

  return result;
}

uint64_t sub_1B4118CC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1B42A0518();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1B4118344(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B40E27B4(0, &unk_1ED95E680);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of CRRecognizerFeatureProviding.recognizerFeatures(for:lineRegions:rectifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B40E6368;

  return v15(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B4118FC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B4119010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B411906C()
{
  result = qword_1ED95E6F8;
  if (!qword_1ED95E6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E6F8);
  }

  return result;
}

uint64_t sub_1B41190D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1B40E27B4(0, &unk_1ED95E680);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B42A0518();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B42A0518();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B41191E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B42A0518();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B42A0518();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B41192EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B42A0518();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_1B42A0518();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_1B4119404()
{
  sub_1B40DF594();
  swift_allocError();
  *v1 = 5;
  *(v1 + 4) = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B411949C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a3;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B41194C8, 0, 0);
}

uint64_t sub_1B41194C8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 7);
  if (v1)
  {
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 8) = v3;
    *v3 = v0;
    v3[1] = sub_1B411964C;
    v4 = *(v0 + 5);
    v5 = *(v0 + 6);
    v6 = v0[4];
    v8 = *(v0 + 2);
    v7 = *(v0 + 3);

    return sub_1B4119840(v8, v7, v4, v5, v6);
  }

  else
  {
    v11 = *(v0 + 5);
    v10 = *(v0 + 6);
    v12 = v0[4];
    v13 = *(v0 + 3);
    sub_1B40E27B4(0, &unk_1ED95E680);
    v14 = sub_1B429FDE8();
    v15 = [v2 objcInputBatchFromLineRegions:v14 image:v13 regionWidth:v11 configuration:v10 rectifier:v12];

    v16 = *(v0 + 1);

    return v16(v15);
  }
}

uint64_t sub_1B411964C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1B41197DC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1B4119774;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4119774()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B41197DC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4119840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 104) = a3;
  *(v6 + 96) = a5;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  *(v6 + 128) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B41198BC, 0, 0);
}

id sub_1B41198BC()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = [*(v0 + 104) batchSize];
  if (result < v2)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([*(v0 + 120) shouldSaturateInputBatches])
  {
    v2 = [*(v0 + 104) batchSize];
  }

  *(v0 + 136) = v2;
  v4 = *(v0 + 96);
  result = swift_getObjCClassFromMetadata();
  *(v0 + 144) = result;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  result = [*(v0 + 104) inputHeight];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = [v5 _createBufferWithWidth_height_channels_batchSize_sequenceLength_];
  *(v0 + 152) = v13;
  *(v0 + 160) = v14;
  *(v0 + 168) = v15;
  if (v13)
  {
    if (is_mul_ok(v15, v14))
    {
      if (((v15 * v14) & 0x8000000000000000) == 0)
      {
        v7 = swift_task_alloc();
        *(v0 + 184) = v7;
        *v7 = v0;
        v7[1] = sub_1B4119B40;
        v8 = *(v0 + 104);
        v9 = *(v0 + 112);
        v10 = *(v0 + 80);
        v11 = *(v0 + 88);

        return sub_1B4102728(v13, v15 * v14, v10, v11, v2, v8, v9, v15);
      }

LABEL_30:
      __break(1u);
      return result;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1B4119B40(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 192) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B4119C8C, 0, 0);
  }
}

uint64_t sub_1B4119C8C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 96);
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  [v5 _checkCRLogRecognizerInputBatch_width_];
  v8 = objc_allocWithZone(CRTextRecognizerModelEspressoInput);
  sub_1B40E27B4(0, &qword_1ED95E068);
  v9 = sub_1B429FDE8();

  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  v10 = [v8 initWithImgInput:v0 + 48 batchSize:v6 featureInfo:v9];

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1B4119DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_1B4119DD8, 0, 0);
}

uint64_t sub_1B4119DD8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 7);
  if (v1)
  {
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 8) = v3;
    *v3 = v0;
    v3[1] = sub_1B4119F5C;
    v4 = *(v0 + 5);
    v5 = *(v0 + 6);
    v6 = v0[4];
    v8 = *(v0 + 2);
    v7 = *(v0 + 3);

    return sub_1B4119840(v8, v7, v4, v5, v6);
  }

  else
  {
    v11 = *(v0 + 5);
    v10 = *(v0 + 6);
    v12 = v0[4];
    v13 = *(v0 + 3);
    sub_1B40E27B4(0, &unk_1ED95E680);
    v14 = sub_1B429FDE8();
    v15 = [v2 objcInputBatchFromLineRegions:v14 image:v13 regionWidth:v11 configuration:v10 rectifier:v12];

    v16 = *(v0 + 1);

    return v16(v15);
  }
}

uint64_t sub_1B4119F5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1B411AB7C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1B411AB78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B411A084()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B411A0F4, 0, 0);
}

void sub_1B411A0F4()
{
  v29 = v0;
  v1 = *(v0 + 48);
  v2 = [v1 configuration];
  v3 = [v2 batchSize];

  v4 = [v1 configuration];
  v5 = [v4 inputWidths];

  sub_1B40E27B4(0, &qword_1ED95EE90);
  v6 = sub_1B429FDF8();
  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:

    __break(1u);
    goto LABEL_15;
  }

  if (!sub_1B42A0518())
  {
    goto LABEL_14;
  }

LABEL_3:

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v8 = MEMORY[0x1B8C72CD0](0, v7);
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v7 + 32);
LABEL_6:
  v9 = v8;

  *&v28[0] = 0;
  BYTE8(v28[0]) = 1;
  MEMORY[0x1B8C72920](v9, v28);
  if (BYTE8(v28[0]))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = *&v28[0];
  v11 = *(v0 + 48);

  v12 = [v11 configuration];
  [v12 inputHeight];
  v14 = v13;
  v15 = v13;

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(v0 + 48);
  [swift_getObjCClassFromMetadata() _createBufferWithWidth_height_channels_batchSize_sequenceLength_];
  v26 = v28[1];
  v27 = v28[0];
  v17 = objc_allocWithZone(CRTextRecognizerModelEspressoInput);
  sub_1B40E27B4(0, &qword_1ED95E068);
  v18 = sub_1B429FDE8();
  *(v0 + 32) = v26;
  *(v0 + 16) = v27;
  v19 = [v17 initWithImgInput:v0 + 16 batchSize:v3 featureInfo:v18];
  *(v0 + 64) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B42AC090;
  *(v20 + 32) = v19;
  v21 = v19;
  *(v0 + 72) = *sub_1B40E75F0();
  v22 = swift_allocObject();
  *(v0 + 80) = v22;
  *(v22 + 16) = v16;
  *(v22 + 24) = v20;

  v23 = v16;
  v24 = swift_task_alloc();
  *(v0 + 88) = v24;
  *v24 = v0;
  v24[1] = sub_1B411A480;
  v25 = MEMORY[0x1E69E7CA8] + 8;

  sub_1B40E7640(v24, sub_1B411A680, v22, v25);
}

uint64_t sub_1B411A480()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B411A608;
  }

  else
  {

    v2 = sub_1B411A5A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B411A5A4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B411A608()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B411A680()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950);
  v2 = sub_1B429FDE8();
  v5 = 0;

  v3 = v5;
  if (v5)
  {
    swift_willThrow();
    v4 = v3;
  }
}

uint64_t sub_1B411A8A0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B411A948;

  return sub_1B411A084();
}

uint64_t sub_1B411A948()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1B429F588();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1B411AACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B40E6828;

  return sub_1B411A8A0(v2, v3);
}

uint64_t sub_1B411AB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 16) = v5;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1B411AC4C;

  return sub_1B411AFE0(a1, a2, a3, 0, a4, a5);
}

uint64_t sub_1B411AC4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1B411AD94, v7, 0);
  }
}

uint64_t sub_1B411AD94()
{
  v1 = [*(v0 + 32) contentsWithTypes_];
  sub_1B411C940();
  v2 = sub_1B429FDF8();

  if (v2 >> 62)
  {
    v3 = sub_1B42A0518();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_14:
    v16 = *(v0 + 32);

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1B42A0488();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B8C72CD0](v5, v2);
    }

    else
    {
      v10 = *(v2 + 8 * v5 + 32);
    }

    v11 = v10;
    v12 = [*(v0 + 32) title];
    v13 = v11;
    v14 = v13;
    if (v12)
    {
      v6 = v13;
      v7 = sub_1B42A0258();
    }

    else
    {
      v7 = 0;
    }

    ++v5;
    v8 = objc_allocWithZone(CRImageReaderOutput);
    v9 = @"CROutputTypeText";
    [v8 initWithType:v9 outputRegion:v14 isTitle:v7 & 1];

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
  }

  while (v3 != v5);

  v15 = v18;
LABEL_15:
  v17 = *(v0 + 8);

  return v17(v15);
}

uint64_t sub_1B411AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  v7[37] = swift_task_alloc();
  v8 = sub_1B429F868();
  v7[38] = v8;
  v7[39] = *(v8 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v9 = sub_1B429FA68();
  v7[43] = v9;
  v7[44] = *(v9 - 8);
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v10 = sub_1B429F658();
  v7[47] = v10;
  v7[48] = *(v10 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v11 = sub_1B429F9B8();
  v7[51] = v11;
  v7[52] = *(v11 - 8);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v12 = sub_1B429F9E8();
  v7[55] = v12;
  v7[56] = *(v12 - 8);
  v7[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B411B290, v6, 0);
}

uint64_t sub_1B411B290()
{
  v102 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = sub_1B410F8A0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1B410F904();
  v6 = *v5;
  v7 = *(v5 + 16);
  sub_1B429F9A8();
  v8 = sub_1B429F9C8();
  v9 = sub_1B42A01C8();
  if (sub_1B42A0278())
  {
    if ((v7 & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v8, v9, v11, v6, "", v10, 2u);
        MEMORY[0x1B8C74FA0](v10, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_13;
    }

    if ((v6 & 0xFFFFF800) != 0xD800)
    {
      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 232);
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DA78]();
  }

LABEL_10:

  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 416);
  v17 = *(v0 + 408);
  (*(v16 + 16))(*(v0 + 424), v15, v17);
  sub_1B429FA28();
  swift_allocObject();
  *(v0 + 464) = sub_1B429FA18();
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  if ((os_variant_has_internal_diagnostics() & 1) == 0 || (sub_1B4141614(4u) & 1) == 0)
  {
    v48 = 0;
    v49 = 0;
    goto LABEL_18;
  }

  v18 = [*(v0 + 240) bufferHash];
  sub_1B42A0408();

  v101[0] = 0x75706E695F72636FLL;
  v101[1] = 0xEA00000000005F74;
  v100 = v18;
  *(v0 + 224) = v18;
  v19 = sub_1B42A0648();
  MEMORY[0x1B8C72530](v19);

  MEMORY[0x1B8C72530](1735290926, 0xE400000000000000);
  if (qword_1EB895980 != -1)
  {
    goto LABEL_35;
  }

LABEL_13:
  v20 = *(v0 + 400);
  v98 = *(v0 + 392);
  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v23 = *(v0 + 368);
  v25 = *(v0 + 344);
  v24 = *(v0 + 352);
  v26 = *(v0 + 240);
  __swift_project_value_buffer(v22, qword_1EB895988);
  sub_1B429F618();

  v27 = sub_1B429F5F8();
  [v26 writeToURL_];

  v28 = sub_1B41254F0();
  (*(v24 + 16))(v23, v28, v25);
  (*(v21 + 16))(v98, v20, v22);
  v29 = sub_1B429FA48();
  v30 = sub_1B42A0128();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 392);
  v99 = *(v0 + 400);
  v34 = *(v0 + 376);
  v33 = *(v0 + 384);
  v35 = *(v0 + 368);
  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  if (v31)
  {
    v97 = *(v0 + 344);
    v38 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v101[0] = v96;
    *v38 = 136315394;
    *(v38 + 4) = sub_1B40DDE8C(0xD000000000000060, 0x80000001B42B3D00, v101);
    *(v38 + 12) = 2080;
    v39 = sub_1B429F5C8();
    v40 = v34;
    v94 = v34;
    v95 = v35;
    v41 = v39;
    v43 = v42;
    v44 = *(v33 + 8);
    v44(v32, v40);
    v45 = sub_1B40DDE8C(v41, v43, v101);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_1B40D2000, v29, v30, "%s: Saving image at location: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v96, -1, -1);
    MEMORY[0x1B8C74FA0](v38, -1, -1);

    (*(v36 + 8))(v95, v97);
    v46 = v99;
    v47 = v94;
  }

  else
  {

    v44 = *(v33 + 8);
    v44(v32, v34);
    (*(v36 + 8))(v35, v37);
    v46 = v99;
    v47 = v34;
  }

  v44(v46, v47);
  v49 = 1;
  v48 = v100;
LABEL_18:
  *(v0 + 592) = v49;
  *(v0 + 472) = v48;
  v50 = *(v0 + 272);
  if (v50)
  {
    v50(0, 0.0);
  }

  v52 = *(v0 + 328);
  v51 = *(v0 + 336);
  v54 = *(v0 + 312);
  v53 = *(v0 + 320);
  v55 = *(v0 + 304);
  v56 = *(v0 + 240);
  *(v0 + 208) = *(v0 + 248);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885150);
  sub_1B411CDFC();
  sub_1B429F848();
  sub_1B429F818();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  *(v0 + 480) = v57;
  *(v0 + 488) = v59;
  *(v0 + 496) = v61;
  *(v0 + 504) = v63;
  v65 = *(v54 + 16);
  *(v0 + 512) = v65;
  *(v0 + 520) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v65(v52, v51, v55);
  v104.origin.x = v58;
  v104.origin.y = v60;
  v104.size.width = v62;
  v104.size.height = v64;
  v66 = -CGRectGetMinX(v104);
  v105.origin.x = v58;
  v105.origin.y = v60;
  v105.size.width = v62;
  v105.size.height = v64;
  MinY = CGRectGetMinY(v105);
  CGAffineTransformMakeTranslation((v0 + 16), v66, -MinY);
  sub_1B429F838();
  v65(v53, v52, v55);
  v106.origin.x = v58;
  v106.origin.y = v60;
  v106.size.width = v62;
  v106.size.height = v64;
  v68 = 1.0 / CGRectGetWidth(v106);
  v107.origin.x = v58;
  v107.origin.y = v60;
  v107.size.width = v62;
  v107.size.height = v64;
  Height = CGRectGetHeight(v107);
  CGAffineTransformMakeScale((v0 + 64), v68, 1.0 / Height);
  sub_1B429F838();
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v113.size.width = 1.0;
  v113.size.height = 1.0;
  v108.origin.x = v58;
  v108.origin.y = v60;
  v108.size.width = v62;
  v108.size.height = v64;
  v109 = CGRectIntersection(v108, v113);
  y = v109.origin.y;
  width = v109.size.width;
  v72 = v109.size.height;
  v73 = v109.origin.x * [v56 width];
  v74 = y * [v56 height];
  v75 = width * [v56 width];
  v110.size.height = v72 * [v56 height];
  v110.origin.x = v73;
  v110.origin.y = v74;
  v110.size.width = v75;
  v111 = CGRectIntegral(v110);
  x = v111.origin.x;
  v77 = v111.origin.y;
  v78 = v111.size.width;
  v79 = v111.size.height;
  v80 = [v56 width];
  v81 = [v56 height];
  v114.size.width = v80;
  v114.size.height = v81;
  v114.origin.x = 0.0;
  v114.origin.y = 0.0;
  v112.origin.x = x;
  v112.origin.y = v77;
  v112.size.width = v78;
  v112.size.height = v79;
  v82 = CGRectEqualToRect(v112, v114);
  *(v0 + 593) = v82;
  if (v82)
  {
    v83 = *(v0 + 240);
LABEL_24:
    v85 = v83;
    goto LABEL_25;
  }

  objc_opt_self();
  v84 = swift_dynamicCastObjCClass();
  if (v84)
  {
    v83 = [v84 imageByCroppingRectangle:1 iosurfaceBacking:{x, v77, v78, v79}];
    goto LABEL_24;
  }

  v85 = [*(v0 + 240) imageByCroppingRectangle_];
  if (v85)
  {
LABEL_25:
    *(v0 + 528) = v85;
    sub_1B429FF98();
    *(v0 + 536) = 0;
    v92 = swift_task_alloc();
    *(v0 + 544) = v92;
    *v92 = v0;
    v92[1] = sub_1B411BC7C;

    return MEMORY[0x1EEE6DA78]();
  }

  sub_1B40DF594();
  swift_allocError();
  *v93 = 3;
  *(v93 + 4) = 1;
  swift_willThrow();
  v86 = *(v0 + 328);
  v87 = *(v0 + 336);
  v88 = *(v0 + 304);
  v89 = *(*(v0 + 312) + 8);
  v89(*(v0 + 320), v88);
  v89(v86, v88);
  v89(v87, v88);
  sub_1B411CA20();

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_1B411BC7C()
{
  v1 = *(*v0 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1B411BD8C, v1, 0);
}

uint64_t sub_1B411BD8C()
{
  v1 = *(v0 + 256);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 528))(v2, v3);
  v5 = *(v0 + 528);
  if (v4 != 1)
  {
    v7 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_0(*(v0 + 256), v7);
    v8 = [v5 imageByCorrectingFromOrientation_];
    v5 = *(v0 + 528);
    if (!v8)
    {
      sub_1B40DF594();
      swift_allocError();
      *v25 = 3;
      *(v25 + 4) = 1;
      swift_willThrow();
      goto LABEL_9;
    }

    v9 = v8;

    v5 = v9;
  }

  *(v0 + 552) = v5;
  v10 = *(v0 + 536);
  *(v0 + 560) = (*(**(v0 + 288) + 176))();
  if (!v10)
  {
    v12 = v11;
    v13 = *(v0 + 512);
    v14 = *(v0 + 312);
    v15 = *(v0 + 320);
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    ObjectType = swift_getObjectType();
    v13(v17, v15, v16);
    (*(v14 + 56))(v17, 0, 1, v16);
    v31 = (*(v12 + 16) + **(v12 + 16));
    v18 = swift_task_alloc();
    *(v0 + 568) = v18;
    *v18 = v0;
    v18[1] = sub_1B411C144;
    v19 = *(v0 + 296);
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);
    v23 = *(v0 + 264);

    return v31(v5, v19, v22, v23, v20, v21, ObjectType, v12);
  }

LABEL_9:

  v26 = *(v0 + 328);
  v27 = *(v0 + 336);
  v28 = *(v0 + 304);
  v29 = *(*(v0 + 312) + 8);
  v29(*(v0 + 320), v28);
  v29(v26, v28);
  v29(v27, v28);
  sub_1B411CA20();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1B411C144(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 576) = a1;
  *(v4 + 584) = v1;

  v5 = *(v3 + 296);
  v6 = *(v3 + 288);
  sub_1B411CE60(v5);
  if (v1)
  {
    v7 = sub_1B411C7D8;
  }

  else
  {
    v7 = sub_1B411C298;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B411C298()
{
  v49 = v0;
  if ((*(v0 + 593) & 1) == 0)
  {
    v2 = *(v0 + 496);
    v1 = *(v0 + 504);
    CGAffineTransformMakeTranslation(&v48, *(v0 + 480), *(v0 + 488));
    v3 = *&v48.c;
    v4 = *&v48.tx;
    *(v0 + 160) = *&v48.a;
    *(v0 + 176) = v3;
    *(v0 + 192) = v4;
    CGAffineTransformScale((v0 + 112), (v0 + 160), v2, v1);
    sub_1B4127090((v0 + 112));
  }

  if (*(v0 + 592) == 1)
  {
    v5 = *(v0 + 472);
    v48.a = 0.0;
    v48.b = -2.68156159e154;
    sub_1B42A0408();

    v48.a = 4.93432906e257;
    v48.b = -3.91910665e202;
    *(v0 + 216) = v5;
    v6 = sub_1B42A0648();
    MEMORY[0x1B8C72530](v6);

    MEMORY[0x1B8C72530](1952539694, 0xE400000000000000);
    a = v48.a;
    v7 = *&v48.b;
    if (qword_1EB895980 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 576);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v12 = *(v0 + 344);
    __swift_project_value_buffer(*(v0 + 376), qword_1EB895988);
    v13 = sub_1B429F5F8();
    v45 = *&a;
    v14 = sub_1B429FB88();
    v15 = [v9 writeToFileInFolder:v13 basename:v14];

    v16 = sub_1B41254F0();
    (*(v11 + 16))(v10, v16, v12);

    v17 = sub_1B429FA48();
    LOBYTE(v13) = sub_1B42A0128();

    v44 = v13;
    v18 = os_log_type_enabled(v17, v13);
    v20 = *(v0 + 352);
    v19 = *(v0 + 360);
    v21 = *(v0 + 336);
    v46 = *(v0 + 344);
    v22 = *(v0 + 328);
    v47 = *(v0 + 320);
    v23 = *(v0 + 304);
    v24 = *(v0 + 312);
    if (v18)
    {
      v41 = *(v0 + 552);
      v43 = *(v0 + 328);
      v25 = swift_slowAlloc();
      v42 = v21;
      v26 = swift_slowAlloc();
      *&v48.a = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_1B40DDE8C(0xD000000000000060, 0x80000001B42B3D00, &v48);
      *(v25 + 12) = 2080;
      v40 = v19;
      v27 = sub_1B429F648();
      v29 = sub_1B40DDE8C(v27, v28, &v48);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2080;
      v30 = sub_1B40DDE8C(v45, v7, &v48);

      *(v25 + 24) = v30;
      _os_log_impl(&dword_1B40D2000, v17, v44, "%s: Saving OCR output results at location: %s/%s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v26, -1, -1);
      MEMORY[0x1B8C74FA0](v25, -1, -1);

      swift_unknownObjectRelease();
      (*(v20 + 8))(v40, v46);
      v31 = *(v24 + 8);
      v31(v47, v23);
      v31(v43, v23);
      v32 = v42;
    }

    else
    {

      swift_unknownObjectRelease();

      (*(v20 + 8))(v19, v46);
      v31 = *(v24 + 8);
      v31(v47, v23);
      v31(v22, v23);
      v32 = v21;
    }
  }

  else
  {
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v36 = *(v0 + 312);
    v35 = *(v0 + 320);
    v23 = *(v0 + 304);

    swift_unknownObjectRelease();
    v31 = *(v36 + 8);
    v31(v35, v23);
    v31(v34, v23);
    v32 = v33;
  }

  v31(v32, v23);
  sub_1B411CA20();

  v37 = *(v0 + 8);
  v38 = *(v0 + 576);

  return v37(v38);
}

uint64_t sub_1B411C7D8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(*(v0 + 312) + 8);
  v4(*(v0 + 320), v3);
  v4(v1, v3);
  v4(v2, v3);
  sub_1B411CA20();

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1B411C940()
{
  result = qword_1ED95EE70;
  if (!qword_1ED95EE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95EE70);
  }

  return result;
}

uint64_t sub_1B411C98C()
{
  v0 = sub_1B429F658();
  __swift_allocate_value_buffer(v0, qword_1EB895988);
  __swift_project_value_buffer(v0, qword_1EB895988);
  v1 = NSTemporaryDirectory();
  sub_1B429FB98();

  sub_1B429F5D8();
}

uint64_t sub_1B411CA20()
{
  v0 = sub_1B429F9F8();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B429F9E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B410F8A0();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_1B410F904();
  v30 = *v14;
  v15 = *(v14 + 16);
  v16 = sub_1B429F9C8();
  sub_1B429FA08();
  v26 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  v25 = v4;
  if ((v15 & 1) == 0)
  {
    if (v30)
    {
      v18 = v29;
LABEL_9:

      sub_1B429FA38();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v18, v28) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v18, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v16, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x1B8C74FA0](v22, -1, -1);
      v4 = v25;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v30 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    v18 = v29;
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t ImageReader.Pipeline.debugDescription.getter()
{
  if (*v0)
  {
    return 1953718630;
  }

  else
  {
    return 0x6574617275636361;
  }
}

uint64_t sub_1B411CDC8()
{
  if (*v0)
  {
    return 1953718630;
  }

  else
  {
    return 0x6574617275636361;
  }
}

unint64_t sub_1B411CDFC()
{
  result = qword_1EB884828;
  if (!qword_1EB884828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884828);
  }

  return result;
}

uint64_t sub_1B411CE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B411CF54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrectorLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B411D02C()
{
  v1 = (v0[2] + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider);
  v0[3] = *v1;
  v2 = v1[1];
  v0[4] = v2;
  v0[5] = swift_getObjectType();
  v0[6] = *(v2 + 56);
  v0[7] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0x2EE000000000000;
  v4 = sub_1B429FE78();

  return MEMORY[0x1EEE6DFA0](sub_1B4124D80, v4, v3);
}

uint64_t sub_1B411D0F8()
{
  v1 = (v0[2] + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider);
  v0[3] = *v1;
  v2 = v1[1];
  v0[4] = v2;
  v0[5] = swift_getObjectType();
  v0[6] = *(v2 + 64);
  v0[7] = (v2 + 64) & 0xFFFFFFFFFFFFLL | 0x7956000000000000;
  v4 = sub_1B429FE78();

  return MEMORY[0x1EEE6DFA0](sub_1B411D1A4, v4, v3);
}

uint64_t sub_1B411D1A4()
{
  v1 = (*(v0 + 48))(*(v0 + 40), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B411D20C(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1B411D264(a1, a2);
  return v4;
}

uint64_t sub_1B411D264(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v52 - v8;
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_isCancelled) = 0;
  v53 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector;
  *(v2 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector) = 0;
  v54 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrectorLoadTask;
  *(v2 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrectorLoadTask) = 0;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  *(v2 + 112) = (*(v11 + 560))(v10, v11);
  v12 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_owner;
  sub_1B40E6464(a2, v2 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_owner, &unk_1EB884870);
  v13 = objc_allocWithZone(CRPerformanceStatistics);
  v14 = sub_1B429FB88();
  v15 = [v13 initWithName:v14 measureRecentPeak:0];

  v16 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_groupingStats;
  *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_groupingStats) = v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v17);
  v19 = (*(v18 + 24))(v17, v18);
  v20 = *(v3 + 112);

  v21 = v19;
  v22 = v58;
  v23 = sub_1B4123A84(v21, v20, a2);
  v58 = v22;
  if (v22)
  {

    sub_1B40E26E8(v3 + v12, &unk_1EB884870);

    type metadata accessor for CRConcurrentRecognitionPipeline();
    swift_defaultActor_destroy();
    sub_1B40E26E8(a2, &unk_1EB884870);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v23;
    v27 = v25;
    v52 = v9;
    v28 = v24;

    v29 = (v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider);
    *v29 = v26;
    v29[1] = v28;
    *(v3 + 120) = v27;
    ObjectType = swift_getObjectType();
    v31 = *(v28 + 80);
    swift_unknownObjectRetain();
    v32 = v31(ObjectType, v28);
    v34 = v33;
    swift_unknownObjectRelease();
    v35 = *(v3 + 120);
    v36 = *(v34 + 32);
    v56 = v32;
    v57 = v34;
    __swift_allocate_boxed_opaque_existential_0(&v55);
    v36(v35, v32, v34);
    sub_1B40D5F90(&v55, v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter);
    *(v3 + v53) = 0;

    v37 = v54;
    swift_beginAccess();
    *(v3 + v37) = 0;

    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v38);
    v40 = (*(v39 + 24))(v38, v39);
    if (v40 >= 3)
    {
      nullsub_1(v40);
      *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognitionPostProcessor) = 0;
      v42 = objc_allocWithZone(CRPerformanceStatistics);
      v43 = sub_1B429FB88();
      v44 = [v42 initWithName:v43 measureRecentPeak:0];

      *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationStats) = v44;
      v45 = sub_1B429FEE8();
      v41 = v52;
      (*(*(v45 - 8) + 56))(v52, 1, 1, v45);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v3;

      *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrectorLoadTask) = sub_1B40E4100(0, 0, v41, &unk_1B42AD760, v46);
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognitionPostProcessor) = 1;
      *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationStats) = 0;
      v41 = v52;
    }

    v47 = a1[3];
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v47);
    if ((*(v48 + 144))(v47, v48))
    {
      v49 = sub_1B429FEE8();
      (*(*(v49 - 8) + 56))(v41, 1, 1, v49);
      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v50[4] = v3;

      sub_1B4115CC4(0, 0, v41, &unk_1B42AD770, v50);
    }

    sub_1B40E26E8(a2, &unk_1EB884870);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t static CRConcurrentRecognitionPipeline.recognizerProvider(forRevision:options:owner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4123A84(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B411D89C()
{
  sub_1B411DA4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B411D91C()
{
  v1 = (v0[2] + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider);
  v0[3] = *v1;
  v2 = v1[1];
  v0[4] = v2;
  v0[5] = swift_getObjectType();
  v0[6] = *(v2 + 40);
  v0[7] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x1C49000000000000;
  v4 = sub_1B429FE78();

  return MEMORY[0x1EEE6DFA0](sub_1B411D9C8, v4, v3);
}

uint64_t sub_1B411D9C8()
{
  (*(v0 + 48))(*(v0 + 40), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B411DA4C()
{
  v1 = sub_1B429FA68();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  type metadata accessor for CRTextOrientationCorrector();
  sub_1B40E6464(v0 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_owner, v6, &unk_1EB884870);

  *(v0 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector) = CRTextOrientationCorrector.__allocating_init(options:owner:)(v7, v6);
}

uint64_t sub_1B411DCF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B411DD14, v2, 0);
}

uint64_t sub_1B411DD14()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1B411DDDC;
  v5 = v0[2];
  v4 = v0[3];

  return sub_1B40FD09C(v5, v4, ObjectType, v1);
}

uint64_t sub_1B411DDDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B411DED0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B411DEF4, v1, 0);
}

uint64_t sub_1B411DEF4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1B411DFBC;
  v4 = *(v0 + 32);

  return sub_1B40FD498(v4, ObjectType, v1);
}

uint64_t sub_1B411DFBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1B411E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v7 = sub_1B429FA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider + 8);
  ObjectType = swift_getObjectType();
  v51 = *(v11 + 72);
  v52 = ObjectType;
  v51(a1);
  if (v13)
  {
    v49 = a3;
    sub_1B40D6404(*(v3 + 112));
    v14 = objc_allocWithZone(CRNeuralRecognizerConfiguration);
    v15 = sub_1B41231B0();
    if (v15)
    {
      v31 = v15;
      if (v49)
      {
        v32 = confidenceThresholds();
        if (v32)
        {
          v33 = v32;
          sub_1B40E27B4(0, &qword_1ED95EE90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885870);
          sub_1B4124600();
          v34 = sub_1B429FAF8();

          v35 = sub_1B411E540(v34);
          v36 = v49;

          if (v35)
          {
            v37 = [*(v4 + 120) revision];
            if (*(v35 + 16))
            {
              v38 = sub_1B41163E0(v37);
              if (v39)
              {
                v40 = *(*(v35 + 56) + 8 * v38);

                v41 = [v31 decodeWithLM];
                if (*(v40 + 16))
                {
                  v42 = sub_1B41233CC(v41);
                  if (v43)
                  {
                    v44 = *(*(v40 + 56) + 8 * v42);

                    if (*(v44 + 16))
                    {
                      v45 = sub_1B40F0030(v50, v36);
                      if (v46)
                      {
                        v47 = *(*(v44 + 56) + 8 * v45);

LABEL_25:

                        return v47;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v47 = [v31 confidenceThresholds];
      goto LABEL_25;
    }
  }

  v16 = sub_1B41253CC();
  v17 = v53;
  (*(v8 + 16))(v53, v16, v7);
  swift_unknownObjectRetain();

  v18 = sub_1B429FA48();
  v19 = sub_1B42A0148();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v50 = v7;
    v22 = v21;
    v54 = v21;
    *v20 = 136315138;
    v23 = a1;
    v24 = v19;
    v25 = (v51)(v23, v52, v11);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v25 = 0x296C696E28;
      v27 = 0xE500000000000000;
    }

    v28 = sub_1B40DDE8C(v25, v27, &v54);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_1B40D2000, v18, v24, "Unable to create neural recognizer configuration for ID: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B8C74FA0](v22, -1, -1);
    MEMORY[0x1B8C74FA0](v20, -1, -1);

    (*(v8 + 8))(v17, v50);
  }

  else
  {

    (*(v8 + 8))(v17, v7);
  }

  v29 = [objc_opt_self() defaultConfidenceThresholds];

  return v29;
}

uint64_t sub_1B411E540(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885168);
    v2 = sub_1B42A05F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v8 = 0;
  if (v5)
  {
LABEL_12:
    v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));

    sub_1B42A0088();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_12;
      }
    }

    __break(1u);
    __break(1u);
  }

  return result;
}

id sub_1B411E7F4(void *a1)
{
  v30 = sub_1B429FA68();
  v3 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider + 8);
  ObjectType = swift_getObjectType();
  v28 = *(v7 + 72);
  v29 = ObjectType;
  v28(a1);
  if (v9 && (sub_1B40D6404(*(v1 + 112)), v10 = objc_allocWithZone(CRNeuralRecognizerConfiguration), v11 = sub_1B41231B0(), v11))
  {
    v25 = v11;
    v26 = [v11 titleParameters];

    return v26;
  }

  else
  {
    v12 = sub_1B41253CC();
    (*(v3 + 16))(v6, v12, v30);
    v13 = a1;

    v14 = sub_1B429FA48();
    v15 = sub_1B42A0148();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v6;
      v18 = v17;
      v31 = v17;
      *v16 = 136315138;
      v19 = (v28)(v13, v29, v7);
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v19 = 0x296C696E28;
        v21 = 0xE500000000000000;
      }

      v22 = sub_1B40DDE8C(v19, v21, &v31);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1B40D2000, v14, v15, "Unable to create neural recognizer configuration for ID: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8C74FA0](v18, -1, -1);
      MEMORY[0x1B8C74FA0](v16, -1, -1);

      (*(v3 + 8))(v27, v30);
    }

    else
    {

      (*(v3 + 8))(v6, v30);
    }

    v23 = [objc_opt_self() defaultTitleParameters];

    return v23;
  }
}

uint64_t sub_1B411EB4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = sub_1B410F988();
  v8 = *v7;
  v9 = *(v7 + 16);
  v12 = v3;
  v13 = a1;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885158);
  sub_1B40FF6E8(v8, v9, a3, &v11, &v15);
  return v15;
}

uint64_t sub_1B411EBF0()
{
  v1[6] = v0;
  v2 = sub_1B429FA68();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B411ECBC, v0, 0);
}

uint64_t sub_1B411ECBC()
{
  v42 = v0;
  v1 = *(v0 + 48);
  type metadata accessor for CRNeuralTextRecognizer(0);
  v2 = sub_1B416AF60([*(v1 + 120) revision]);
  *(v0 + 88) = v2;
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v2 + 32);
  *(v0 + 288) = v6;
  v7 = -1;
  v8 = -1 << v6;
  v9 = *(v2 + 64);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  *(v0 + 96) = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider;
  *(v0 + 104) = 0;
  v10 = v7 & v9;
  if (v10)
  {
    v11 = 0;
LABEL_12:
    v14 = (v4 + 16);
    *(v0 + 112) = v10;
    *(v0 + 120) = v11;
    v15 = *(v0 + 80);
    v16 = *(v0 + 56);
    v17 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v10)))));
    v18 = *v17;
    *(v0 + 128) = *v17;
    v19 = v17[1];
    *(v0 + 136) = v19;

    v20 = sub_1B41253CC();
    *(v0 + 144) = v20;
    v21 = *v14;
    *(v0 + 152) = *v14;
    *(v0 + 160) = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v15, v20, v16);

    v22 = sub_1B429FA48();
    v23 = sub_1B42A0118();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 80);
    v26 = *(v0 + 56);
    v27 = *(v0 + 64);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1B40DDE8C(v18, v19, &v41);
      _os_log_impl(&dword_1B40D2000, v22, v23, "Preheating %s model", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1B8C74FA0](v29, -1, -1);
      MEMORY[0x1B8C74FA0](v28, -1, -1);
    }

    v30 = *(v27 + 8);
    v30(v25, v26);
    *(v0 + 184) = v30;
    v31 = (*(v0 + 48) + *(v0 + 96));
    *(v0 + 192) = *v31;
    v32 = v31[1];
    *(v0 + 200) = v32;
    *(v0 + 208) = swift_getObjectType();
    *(v0 + 216) = *(v32 + 48);
    *(v0 + 224) = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x5189000000000000;

    v34 = sub_1B429FE78();

    return MEMORY[0x1EEE6DFA0](sub_1B411F36C, v34, v33);
  }

  else
  {
    v12 = 0;
    v13 = ((63 - v8) >> 6) - 1;
    while (v13 != v12)
    {
      v11 = v12 + 1;
      v10 = *(v2 + 8 * v12++ + 72);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v36 = (*(*v5 + 224))(v35);
    *(v0 + 168) = v36;
    if (v36)
    {
      v37 = swift_task_alloc();
      *(v0 + 176) = v37;
      *v37 = v0;
      v37[1] = sub_1B411F160;

      return MEMORY[0x1EEE6DA40]();
    }

    else
    {
      v38 = *(*(v0 + 48) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector);
      *(v0 + 264) = v38;

      if (v38)
      {
        v39 = swift_task_alloc();
        *(v0 + 272) = v39;
        *v39 = v0;
        v39[1] = sub_1B411F9E0;

        return sub_1B40D6700();
      }

      else
      {

        v40 = *(v0 + 8);

        return v40();
      }
    }
  }
}

uint64_t sub_1B411F160()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1B411F270, v1, 0);
}

uint64_t sub_1B411F270()
{

  v1 = *(v0[6] + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector);
  v0[33] = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[34] = v2;
    *v2 = v0;
    v2[1] = sub_1B411F9E0;

    return sub_1B40D6700();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B411F36C()
{
  v1 = *(v0 + 104);
  *(v0 + 232) = (*(v0 + 216))(*(v0 + 128), *(v0 + 136), *(v0 + 208), *(v0 + 200));
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    swift_bridgeObjectRelease_n();

    return MEMORY[0x1EEE6DFA0](sub_1B411FB30, v2, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v0 + 248) = v3;
    *v3 = v0;
    v3[1] = sub_1B411F478;

    return sub_1B41660D8();
  }
}

uint64_t sub_1B411F478()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1B411FBA4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B411F5A0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B411F5A0()
{
  v36 = v0;

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 104) = *(v0 + 256);
  v3 = (v2 - 1) & v2;
  if (v3)
  {
    v4 = *(v0 + 88);
LABEL_7:
    *(v0 + 112) = v3;
    *(v0 + 120) = v1;
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = (*(v4 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v3)))));
    v10 = *v9;
    *(v0 + 128) = *v9;
    v11 = v9[1];
    *(v0 + 136) = v11;

    v12 = sub_1B41253CC();
    *(v0 + 144) = v12;
    v13 = *(v8 + 16);
    *(v0 + 152) = v13;
    *(v0 + 160) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v6, v12, v7);

    v14 = sub_1B429FA48();
    v15 = sub_1B42A0118();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1B40DDE8C(v10, v11, &v35);
      _os_log_impl(&dword_1B40D2000, v14, v15, "Preheating %s model", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8C74FA0](v21, -1, -1);
      MEMORY[0x1B8C74FA0](v20, -1, -1);
    }

    v22 = *(v19 + 8);
    v22(v17, v18);
    *(v0 + 184) = v22;
    v23 = (*(v0 + 48) + *(v0 + 96));
    *(v0 + 192) = *v23;
    v24 = v23[1];
    *(v0 + 200) = v24;
    *(v0 + 208) = swift_getObjectType();
    *(v0 + 216) = *(v24 + 48);
    *(v0 + 224) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x5189000000000000;

    v26 = sub_1B429FE78();

    return MEMORY[0x1EEE6DFA0](sub_1B411F36C, v26, v25);
  }

  else
  {
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6DA40]();
      }

      v4 = *(v0 + 88);
      if (v5 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v4 + 8 * v5 + 64);
      ++v1;
      if (v3)
      {
        v1 = v5;
        goto LABEL_7;
      }
    }

    v27 = *(v0 + 48);

    v29 = (*(*v27 + 224))(v28);
    *(v0 + 168) = v29;
    if (v29)
    {
      v30 = swift_task_alloc();
      *(v0 + 176) = v30;
      *v30 = v0;
      v30[1] = sub_1B411F160;

      return MEMORY[0x1EEE6DA40]();
    }

    v31 = *(*(v0 + 48) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector);
    *(v0 + 264) = v31;

    if (v31)
    {
      v32 = swift_task_alloc();
      *(v0 + 272) = v32;
      *v32 = v0;
      v32[1] = sub_1B411F9E0;

      return sub_1B40D6700();
    }

    else
    {

      v33 = *(v0 + 8);

      return v33();
    }
  }
}

uint64_t sub_1B411F9E0()
{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1B41201B4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B411FB30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B411FBA4()
{
  v58 = v0;
  v1 = *(v0 + 256);
  (*(v0 + 152))(*(v0 + 72), *(v0 + 144), *(v0 + 56));

  v2 = v1;
  v3 = sub_1B429FA48();
  v4 = sub_1B42A0118();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 232);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v55 = *(v0 + 72);
    v56 = *(v0 + 184);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v57 = v11;
    *v10 = 136315394;
    v12 = sub_1B40DDE8C(v8, v7, &v57);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1B42A06F8();
    v15 = sub_1B40DDE8C(v13, v14, &v57);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1B40D2000, v3, v4, "Preheating %s model failed: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v11, -1, -1);
    MEMORY[0x1B8C74FA0](v10, -1, -1);

    v56(v55, v9);
  }

  else
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 184);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);

    v18(v19, v20);
  }

  v22 = *(v0 + 112);
  v21 = *(v0 + 120);
  *(v0 + 104) = 0;
  v23 = (v22 - 1) & v22;
  if (v23)
  {
    v24 = *(v0 + 88);
LABEL_10:
    *(v0 + 112) = v23;
    *(v0 + 120) = v21;
    v26 = *(v0 + 80);
    v27 = *(v0 + 56);
    v28 = *(v0 + 64);
    v29 = (*(v24 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v23)))));
    v30 = *v29;
    *(v0 + 128) = *v29;
    v31 = v29[1];
    *(v0 + 136) = v31;

    v32 = sub_1B41253CC();
    *(v0 + 144) = v32;
    v33 = *(v28 + 16);
    *(v0 + 152) = v33;
    *(v0 + 160) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v26, v32, v27);

    v34 = sub_1B429FA48();
    v35 = sub_1B42A0118();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 80);
    v38 = *(v0 + 56);
    v39 = *(v0 + 64);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1B40DDE8C(v30, v31, &v57);
      _os_log_impl(&dword_1B40D2000, v34, v35, "Preheating %s model", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B8C74FA0](v41, -1, -1);
      MEMORY[0x1B8C74FA0](v40, -1, -1);
    }

    v42 = *(v39 + 8);
    v42(v37, v38);
    *(v0 + 184) = v42;
    v43 = (*(v0 + 48) + *(v0 + 96));
    *(v0 + 192) = *v43;
    v44 = v43[1];
    *(v0 + 200) = v44;
    *(v0 + 208) = swift_getObjectType();
    *(v0 + 216) = *(v44 + 48);
    *(v0 + 224) = (v44 + 48) & 0xFFFFFFFFFFFFLL | 0x5189000000000000;

    v46 = sub_1B429FE78();

    return MEMORY[0x1EEE6DFA0](sub_1B411F36C, v46, v45);
  }

  else
  {
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6DA40]();
      }

      v24 = *(v0 + 88);
      if (v25 >= (((1 << *(v0 + 288)) + 63) >> 6))
      {
        break;
      }

      v23 = *(v24 + 8 * v25 + 64);
      ++v21;
      if (v23)
      {
        v21 = v25;
        goto LABEL_10;
      }
    }

    v47 = *(v0 + 48);

    v49 = (*(*v47 + 224))(v48);
    *(v0 + 168) = v49;
    if (v49)
    {
      v50 = swift_task_alloc();
      *(v0 + 176) = v50;
      *v50 = v0;
      v50[1] = sub_1B411F160;

      return MEMORY[0x1EEE6DA40]();
    }

    v51 = *(*(v0 + 48) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector);
    *(v0 + 264) = v51;

    if (v51)
    {
      v52 = swift_task_alloc();
      *(v0 + 272) = v52;
      *v52 = v0;
      v52[1] = sub_1B411F9E0;

      return sub_1B40D6700();
    }

    else
    {

      v53 = *(v0 + 8);

      return v53();
    }
  }
}

uint64_t sub_1B41201B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4120228()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  *(v0 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_isCancelled) = 1;
  v5 = sub_1B429FEE8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1B4124784(&qword_1EB884840, type metadata accessor for CRConcurrentRecognitionPipeline);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  sub_1B40E4100(0, 0, v4, &unk_1B42AD7A8, v7);
}

uint64_t sub_1B412039C()
{
  v1 = (v0[2] + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider);
  v0[3] = *v1;
  v2 = v1[1];
  v0[4] = v2;
  v0[5] = swift_getObjectType();
  v0[6] = *(v2 + 88);
  v0[7] = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0xC3E2000000000000;
  v4 = sub_1B429FE78();

  return MEMORY[0x1EEE6DFA0](sub_1B4120448, v4, v3);
}

uint64_t sub_1B4120448()
{
  (*(v0 + 48))(*(v0 + 40), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41204B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B41204D8, v4, 0);
}

uint64_t sub_1B41204D8()
{
  if (*(*(v0 + 72) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_isCancelled))
  {
    sub_1B429FEC8();
    sub_1B4124784(&qword_1ED95E720, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1B429FAD8();
LABEL_3:
    swift_willThrow();
    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 48);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_24:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  if (!sub_1B42A0518())
  {
    goto LABEL_24;
  }

LABEL_8:
  v4 = *(*(v0 + 72) + 120);
  if ([v4 skipRecognition])
  {
    v5 = 0;
LABEL_25:
    v32 = *(v0 + 8);

    return v32(v5);
  }

  v6 = [*(v0 + 40) imageByConvertingToColorSpace_];
  *(v0 + 80) = v6;
  if (!v6)
  {
    sub_1B40DF594();
    swift_allocError();
    *v10 = 3;
    *(v10 + 4) = 1;
    goto LABEL_3;
  }

  v7 = *(v0 + 72);
  *(v0 + 16) = 0;
  v8 = (*(*v7 + 224))();
  *(v0 + 88) = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_1B4120B08;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v11 = *(v0 + 72);
    if ()
    {

      v12 = swift_task_alloc();
      *(v0 + 104) = v12;
      *v12 = v0;
      v12[1] = sub_1B4120FCC;
      v13 = *(v0 + 80);
      v14 = *(v0 + 48);

      return sub_1B41221FC(v14, v13, v0 + 16);
    }

    else
    {
      v15 = *(v0 + 48);
      v16 = *(v0 + 56);
      *(v0 + 128) = 0;
      *(v0 + 136) = v15;
      v17 = *(v0 + 80);
      v33 = *(v0 + 64);
      v18 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter;
      *(v0 + 144) = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter;
      v19 = (v11 + v18);
      v20 = *(v11 + v18 + 24);
      v21 = *(v11 + v18 + 32);

      __swift_project_boxed_opaque_existential_0(v19, v20);
      v34 = (*(v21 + 40))(v15, v20, v21);
      *(v0 + 152) = v34;
      v22 = [objc_opt_self() progressWithTotalUnitCount_];
      *(v0 + 160) = v22;
      v23 = objc_allocWithZone(CRMutableRecognitionResult);
      v24 = v17;
      v25 = [v23 init];
      *(v0 + 168) = v25;
      *(v0 + 32) = v25;
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v22;
      v26[5] = v11;
      v26[6] = v24;
      v26[7] = 0;
      v26[8] = v16;
      v26[9] = v33;
      v27 = swift_allocObject();
      *(v0 + 176) = v27;
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = &unk_1B42AD7C0;
      v27[5] = v26;
      sub_1B429FEC8();
      sub_1B4124784(&qword_1ED95E720, MEMORY[0x1E69E8550]);
      v28 = swift_allocError();
      *(v0 + 184) = v28;
      v29 = v24;
      v30 = v22;

      sub_1B40D5FF0(v16);
      sub_1B429FAD8();
      v31 = swift_task_alloc();
      *(v0 + 192) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856E0);
      sub_1B40E27B4(0, &unk_1ED95E6A0);
      sub_1B40E27B4(0, &unk_1ED95E648);
      *v31 = v0;
      v31[1] = sub_1B4121418;

      return _sSa15TextRecognitions8SendableRzlE26cappedConcurrencyMapReduce4into3map6reduce9didCancel18maxConcurrentTasksqd_0_qd_0__qd__xYaYbKYAcyqd_0_z_qd__tKXEs5Error_pSitYaKsABRd__r0_lF(v0 + 24, v0 + 32, &unk_1B42AD7D0, v27, sub_1B4121ED4, 0, v28, 2);
    }
  }
}

uint64_t sub_1B4120B08()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1B4120C18, v1, 0);
}

uint64_t sub_1B4120C18()
{

  v1 = v0[9];
  if ()
  {

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1B4120FCC;
    v3 = v0[10];
    v4 = v0[6];

    return sub_1B41221FC(v4, v3, (v0 + 2));
  }

  else
  {
    v6 = v0[6];
    v7 = v0[7];
    v0[16] = 0;
    v0[17] = v6;
    v8 = v0[10];
    v23 = v0[8];
    v9 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter;
    v0[18] = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter;
    v10 = (v1 + v9);
    v11 = *(v1 + v9 + 24);
    v12 = *(v1 + v9 + 32);

    __swift_project_boxed_opaque_existential_0(v10, v11);
    v24 = (*(v12 + 40))(v6, v11, v12);
    v0[19] = v24;
    v13 = [objc_opt_self() progressWithTotalUnitCount_];
    v0[20] = v13;
    v14 = objc_allocWithZone(CRMutableRecognitionResult);
    v15 = v8;
    v16 = [v14 init];
    v0[21] = v16;
    v0[4] = v16;
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v13;
    v17[5] = v1;
    v17[6] = v15;
    v17[7] = 0;
    v17[8] = v7;
    v17[9] = v23;
    v18 = swift_allocObject();
    v0[22] = v18;
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = &unk_1B42AD7C0;
    v18[5] = v17;
    sub_1B429FEC8();
    sub_1B4124784(&qword_1ED95E720, MEMORY[0x1E69E8550]);
    v19 = swift_allocError();
    v0[23] = v19;
    v20 = v15;
    v21 = v13;

    sub_1B40D5FF0(v7);
    sub_1B429FAD8();
    v22 = swift_task_alloc();
    v0[24] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856E0);
    sub_1B40E27B4(0, &unk_1ED95E6A0);
    sub_1B40E27B4(0, &unk_1ED95E648);
    *v22 = v0;
    v22[1] = sub_1B4121418;

    return _sSa15TextRecognitions8SendableRzlE26cappedConcurrencyMapReduce4into3map6reduce9didCancel18maxConcurrentTasksqd_0_qd_0__qd__xYaYbKYAcyqd_0_z_qd__tKXEs5Error_pSitYaKsABRd__r0_lF((v0 + 3), (v0 + 4), &unk_1B42AD7D0, v18, sub_1B4121ED4, 0, v19, 2);
  }
}

uint64_t sub_1B4120FCC(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  v5 = v4[9];
  if (v1)
  {
    v6 = sub_1B4121698;
  }

  else
  {
    v4[15] = a1;
    v6 = sub_1B4121108;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B4121108()
{
  v1 = v0[2];
  v2 = v0[15];
  v0[16] = v1;
  v0[17] = v2;
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v21 = v0[7];
  v6 = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter;
  v0[18] = OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter;
  v7 = *(v4 + v6 + 24);
  v8 = *(v4 + v6 + 32);
  __swift_project_boxed_opaque_existential_0((v4 + v6), v7);
  v22 = (*(v8 + 40))(v2, v7, v8);
  v0[19] = v22;
  v9 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[20] = v9;
  v10 = objc_allocWithZone(CRMutableRecognitionResult);
  v11 = v3;
  v12 = [v10 init];
  v0[21] = v12;
  v0[4] = v12;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v9;
  v13[5] = v4;
  v13[6] = v11;
  v13[7] = v1;
  v13[8] = v21;
  v13[9] = v5;
  v14 = swift_allocObject();
  v0[22] = v14;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B42AD7C0;
  v14[5] = v13;
  sub_1B429FEC8();
  sub_1B4124784(&qword_1ED95E720, MEMORY[0x1E69E8550]);
  v15 = swift_allocError();
  v0[23] = v15;
  v16 = v1;
  v17 = v11;
  v18 = v9;

  sub_1B40D5FF0(v21);
  sub_1B429FAD8();
  v19 = swift_task_alloc();
  v0[24] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856E0);
  sub_1B40E27B4(0, &unk_1ED95E6A0);
  sub_1B40E27B4(0, &unk_1ED95E648);
  *v19 = v0;
  v19[1] = sub_1B4121418;

  return _sSa15TextRecognitions8SendableRzlE26cappedConcurrencyMapReduce4into3map6reduce9didCancel18maxConcurrentTasksqd_0_qd_0__qd__xYaYbKYAcyqd_0_z_qd__tKXEs5Error_pSitYaKsABRd__r0_lF((v0 + 3), (v0 + 4), &unk_1B42AD7D0, v14, sub_1B4121ED4, 0, v15, 2);
}

uint64_t sub_1B4121418()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = v2[9];

    v5 = sub_1B4121704;
  }

  else
  {
    v6 = v2[23];
    v7 = v2[21];
    v4 = v2[9];

    v5 = sub_1B412158C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B412158C()
{
  v1 = v0[17];
  v2 = v0[9];
  v3 = (v2 + v0[18]);
  v4 = v0[3];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v5);
  v7 = sub_1B415DF54(v1, v4, v5, v6);

  v8 = *(v2 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognitionPostProcessor);
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[10];
  if (v8)
  {
  }

  else
  {
    v12 = sub_1B41592C4(v7);

    v7 = v12;
  }

  v13 = v0[1];

  return v13(v7);
}

uint64_t sub_1B4121698()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4121704()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4121790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B41217CC, 0, 0);
}

uint64_t sub_1B41217CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[11] = v3;
  [v2 addChild:v3 withPendingUnitCount:1];
  v4 = v1 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider;
  v0[12] = *(v1 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_recognizerProvider);
  v5 = *(v4 + 8);
  v0[13] = v5;
  v0[14] = swift_getObjectType();
  v0[15] = *(v5 + 48);
  v0[16] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x5189000000000000;
  v7 = sub_1B429FE78();

  return MEMORY[0x1EEE6DFA0](sub_1B41218B8, v7, v6);
}

uint64_t sub_1B41218B8()
{
  *(v0 + 136) = (*(v0 + 120))(*(v0 + 16), *(v0 + 24), *(v0 + 112), *(v0 + 104));
  *(v0 + 144) = 0;
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1B4121958, v1, 0);
}

uint64_t sub_1B4121988()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 88);
    sub_1B429FEC8();
    sub_1B4124784(&qword_1ED95E720, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1B429FAD8();
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 40);
    v9 = swift_allocObject();
    *(v0 + 152) = v9;
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v9[5] = v8;
    v10 = v6;
    sub_1B40D5FF0(v7);
    v11 = v8;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_1B4121B50;
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 32);

    return sub_1B4166624(v14, v15, v13, sub_1B4124CB0, v9);
  }
}

uint64_t sub_1B4121B50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1B4121D54;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1B4121C80;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4121C80()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2(v3);
}

uint64_t sub_1B4121CF0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4121D54()
{
  v1 = v0[17];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B4121DC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1B41054F8;

  return v11(v6, v7, v8);
}

uint64_t sub_1B4121ED4(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v6[4] = sub_1B412215C;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B4122160;
  v6[3] = &block_descriptor_3;
  v4 = _Block_copy(v6);

  [v3 addContentsOfRecognitionResult:v2 shouldOverwriteExistingHandler:v4];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B4121FC4(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v2 = a1;
    v17 = sub_1B42A0518();
    a1 = v2;
    if (!v17)
    {
      return 0;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C72CD0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v4 = *(a1 + 32);
  }

  v2 = v4;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  result = sub_1B42A0518();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v6 = MEMORY[0x1B8C72CD0](0, a2);
    goto LABEL_11;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v6 = *(a2 + 32);
LABEL_11:
  v7 = v6;
  result = [v6 text];
  if (result)
  {
    v8 = result;
    v9 = sub_1B429FB98();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      [v7 activationProbability];
      v14 = v13;
      [v2 activationProbability];
      v16 = v15;

      return (v16 < v14);
    }

    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B4122160(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1B40E27B4(0, &qword_1ED95E670);
  v2 = sub_1B429FDF8();
  v3 = sub_1B429FDF8();
  v4 = v1(v2, v3);

  return v4 & 1;
}

uint64_t sub_1B41221FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4122220, v3, 0);
}

uint64_t sub_1B4122220()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationCorrector);
  *(v0 + 64) = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationStats), (*(v0 + 72) = v3) != 0))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 32);
    v6 = **(v0 + 48);
    *(v0 + 80) = v6;
    v7 = v6;

    v3;
    v8 = sub_1B410F940();
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    v12[2] = v5;
    v12[3] = v1;
    v12[4] = v6;
    v12[5] = v4;
    v12[6] = v2;
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885160);
    *v13 = v0;
    v13[1] = sub_1B4122404;

    return sub_1B40FFD6C(v0 + 16, v9, v10, v11, &unk_1B42AD8E8, v12);
  }

  else
  {
    sub_1B40DF594();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B4122404()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1B41225BC;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 56);

    v4 = sub_1B4122534;
    v3 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B4122534()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  v3 = *(v0 + 16);
  *v2 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1B41225BC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4122640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4122668, 0, 0);
}

id sub_1B4122668()
{
  v48 = v0;

  v47 = sub_1B4118400(v1);
  sub_1B41161B4(&v47);
  v2 = v47;
  v0[13] = v47;
  if (v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v3 = sub_1B42A0518();
    if (!v3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_30;
    }
  }

  v4 = 0;
  v5 = 0;
  v45 = v0;
  v6 = v0[9];
  x = 0.0;
  v0 = &selRef_initWithOptions_error_;
  y = 0.0;
  width = 0.0;
  height = 0.0;
  while (2)
  {
    v46 = v4;
    v11 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B8C72CD0](v11, v2);
      }

      else
      {
        if (v11 >= *(v2 + 16))
        {
          goto LABEL_28;
        }

        v12 = *(v2 + 8 * v11 + 32);
      }

      v13 = v12;
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v14 = [v12 polygon];
      if (v14)
      {
        v15 = v14;
        if ([v14 pointCount] >= 4 && objc_msgSend(*(v6 + 15), sel_rectifyPolygons))
        {
          v31 = [v15 denormalizedPolyline];
          [v31 boundingRect];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          v55.origin.x = v33;
          v55.origin.y = v35;
          v55.size.width = v37;
          v55.size.height = v39;
          v53 = CGRectUnion(v52, v55);
          x = v53.origin.x;
          y = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;

          goto LABEL_22;
        }
      }

      result = [v13 boundingQuad];
      if (!result)
      {
        __break(1u);
        goto LABEL_35;
      }

      v17 = result;
      [result baselineAngle];
      v19 = v18;

      [*(v6 + 15) angleThresholdForRotatedCrops];
      if (v20 < fabs(v19))
      {
        break;
      }

      ++v11;
      if (v5 == v3)
      {
        v4 = v46;
        goto LABEL_23;
      }
    }

    result = [v13 boundingQuad];
    if (!result)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = [result denormalizedQuad];

    [v22 boundingBox];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v54.origin.x = v24;
    v54.origin.y = v26;
    v54.size.width = v28;
    v54.size.height = v30;
    v51 = CGRectUnion(v50, v54);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
LABEL_22:

    v4 = 1;
    if (v5 != v3)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v0 = v45;
  if ((v4 & 1) != 0 && !v45[10])
  {
    v45[5] = &type metadata for CRFeatureFlags;
    v45[6] = sub_1B4118C60();
    *(v45 + 16) = 0;
    v40 = sub_1B429F898();
    __swift_destroy_boxed_opaque_existential_0((v45 + 2));
    if (v40)
    {
      v41 = [objc_allocWithZone(CRMetalPolygonRectifier) initWithDevice:objc_msgSend(*(v6 + 15) sourceImage:sel_metalDevice) regionOfInterest:{v45[11], x, y, width, height}];
      swift_unknownObjectRelease();
      goto LABEL_31;
    }
  }

LABEL_30:
  v41 = v0[10];
  v42 = v41;
LABEL_31:
  v0[14] = v41;
  v43 = swift_task_alloc();
  v0[15] = v43;
  *v43 = v0;
  *(v43 + 1) = sub_1B4122ACC;
  v44 = v0[11];

  return sub_1B40D6BF8(v2, 0, v44, v41);
}

uint64_t sub_1B4122ACC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1B4122E74;
  }

  else
  {
    v4 = sub_1B4122C08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4122C08()
{
  if ([*(v0[9] + 120) scriptDetectionDisabled])
  {
    v1 = v0[14];
    v2 = v0[7];
    *v2 = v0[16];
    v2[1] = v1;
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_1B4122D08;
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[11];

    return sub_1B40DAC88(v6, 0, v8, v7);
  }
}

uint64_t sub_1B4122D08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1B4122ED8;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_1B4122E4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4122E4C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  *v2 = *(v0 + 160);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1B4122E74()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4122ED8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4122F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B40DF748(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B40DF748((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B40D4758(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B412303C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B41234A8(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t CRConcurrentRecognitionPipeline.deinit()
{

  sub_1B40E26E8(v0 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_owner, &unk_1EB884870);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CRConcurrentRecognitionPipeline.__deallocating_deinit()
{
  CRConcurrentRecognitionPipeline.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1B41231B0()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B429FB88();

  v2 = sub_1B429FAE8();

  v7[0] = 0;
  v3 = [v0 initWithLocale:v1 imageReaderOptions:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v3;
}

char *sub_1B41232C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1B41233CC(int a1)
{
  sub_1B42A0778();
  sub_1B42A0798();
  v2 = sub_1B42A07A8();

  return sub_1B4123438(a1, v2);
}

unint64_t sub_1B4123438(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

_OWORD *sub_1B41234BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x1E69E6530];
  v9 = *a5;
  v11 = sub_1B40F0030(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_1B40D4758(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1B410B07C();
    goto LABEL_7;
  }

  sub_1B410AC14(v14, a4 & 1);
  v20 = sub_1B40F0030(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6530]);
  sub_1B4123614(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_1B4123614(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x1E69E6530];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B40D4758(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1B4123698(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1B412377C(char *a1)
{
  v2 = sub_1B429F5B8();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1B429FDE8();
  sub_1B4122F3C(a1);
  v8 = sub_1B429FDE8();

  v9 = [v6 languageSetFromInputLanguages:v7 supportedLanguages:v8];

  v31 = a1;

  v22 = v9;
  sub_1B42A0108();
  sub_1B429F5A8();
  if (!v30)
  {
LABEL_20:
    (*(v23 + 8))(v5, v24);

    return a1;
  }

  v10 = 0;
  while (1)
  {
    sub_1B40D4758(&v29, v28);
    sub_1B40E2888(v28, v27);
    swift_dynamicCast();
    v11 = v26;
    v12 = *(a1 + 2);
    if (!v12)
    {
LABEL_3:

      __swift_destroy_boxed_opaque_existential_0(v28);
      goto LABEL_4;
    }

    v13 = 0;
    v14 = v25;
    v15 = a1 + 40;
    while (1)
    {
      v16 = *(v15 - 1) == v14 && *v15 == v11;
      if (v16 || (sub_1B42A0678() & 1) != 0)
      {
        break;
      }

      ++v13;
      v15 += 2;
      if (v12 == v13)
      {
        goto LABEL_3;
      }
    }

    sub_1B412303C(v13);

    sub_1B40E2888(v28, v27);
    result = swift_dynamicCast();
    a1 = v31;
    v18 = *(v31 + 2);
    if (v18 < v10)
    {
      break;
    }

    if (v10 < 0)
    {
      goto LABEL_22;
    }

    v20 = v25;
    v19 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(a1 + 3) >> 1)
    {
      a1 = sub_1B41232C0(isUniquelyReferenced_nonNull_native, v18 + 1, 1, a1);
      v31 = a1;
    }

    sub_1B4123698(v10, v10, 1, v20, v19);

    v31 = a1;
    __swift_destroy_boxed_opaque_existential_0(v28);
    ++v10;
LABEL_4:
    sub_1B429F5A8();
    if (!v30)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1B4123A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v95 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v86 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v87 = &v84 - v14;
  v15 = sub_1B429FA68();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B429FB98();
  v22 = v21;
  if (*(a2 + 16))
  {
    v23 = v20;

    isUniquelyReferenced_nonNull_native = sub_1B40F0030(v23, v22);
    v25 = v24;

    if (v25)
    {
      sub_1B40E2888(*(a2 + 56) + 32 * isUniquelyReferenced_nonNull_native, &v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E6530];
      if ((swift_dynamicCast() & 1) != 0 && v91 != a1)
      {
        v26 = sub_1B429FB98();
        v28 = v27;
        v94 = isUniquelyReferenced_nonNull_native;
        *&v93 = a1;
        sub_1B40D4758(&v93, &v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = a2;
        v29 = __swift_mutable_project_boxed_opaque_existential_0(&v91, v92);
        sub_1B41234BC(*v29, v26, v28, isUniquelyReferenced_nonNull_native, &v90);

        __swift_destroy_boxed_opaque_existential_0(&v91);
        a2 = v90;
      }
    }
  }

  else
  {
  }

  if ((a1 - 1) >= 2)
  {
    if (a1 == 3)
    {
      v43 = sub_1B429FB98();
      if (*(a2 + 16))
      {
        v45 = sub_1B40F0030(v43, v44);
        isUniquelyReferenced_nonNull_native = v46;

        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1B40E2888(*(a2 + 56) + 32 * v45, &v93);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
          if (swift_dynamicCast())
          {
            if (v91)
            {
              v47 = objc_opt_self();
              sub_1B40D6404(a2);
              v48 = sub_1B429FAE8();

              *&v93 = 0;
              v49 = [v47 cachedConfigurationWithImageReaderOptions:v48 error:&v93];

              isUniquelyReferenced_nonNull_native = v93;
              if (v49)
              {
                v50 = type metadata accessor for CRSingleLocaleRecognizerProvider();
                v51 = v85;
                sub_1B40E6464(v88, v85, &unk_1EB884870);

                v52 = isUniquelyReferenced_nonNull_native;
                v39 = v49;
                isUniquelyReferenced_nonNull_native = v50;
                v53 = v89;
                v54 = sub_1B40EF244(a2, v39, v51);
                if (!v53)
                {
                  isUniquelyReferenced_nonNull_native = v54;

                  goto LABEL_12;
                }

                goto LABEL_32;
              }

              goto LABEL_21;
            }
          }
        }
      }

      else
      {
      }

      sub_1B40E27B4(0, &unk_1ED95EE60);
      v56 = [swift_getObjCClassFromMetadata() supportedLanguagesForVersion_];
      if (v56)
      {
        v57 = v56;
        v58 = sub_1B429FDF8();

        v59 = sub_1B429FB98();
        v61 = v60;
        v62 = sub_1B429FB98();
        if (*(a2 + 16))
        {
          v64 = sub_1B40F0030(v62, v63);
          v66 = v65;

          if (v66)
          {
            sub_1B40E2888(*(a2 + 56) + 32 * v64, &v93);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
            swift_dynamicCast();
          }
        }

        else
        {
        }

        v68 = sub_1B412377C(v58);

        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
        *&v93 = v68;
        sub_1B40D4758(&v93, &v91);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v90 = a2;
        v70 = __swift_mutable_project_boxed_opaque_existential_0(&v91, v92);
        v71 = MEMORY[0x1EEE9AC00](v70, v70);
        v73 = (&v84 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v74 + 16))(v73, v71);
        sub_1B410B444(*v73, v59, v61, v69, &v90);

        __swift_destroy_boxed_opaque_existential_0(&v91);
        v75 = v90;
        v76 = objc_opt_self();
        sub_1B40D6404(v75);
        v77 = sub_1B429FAE8();

        *&v93 = 0;
        v78 = [v76 cachedConfigurationWithImageReaderOptions:v77 error:&v93];

        isUniquelyReferenced_nonNull_native = v93;
        if (!v78)
        {
          v83 = v93;
          sub_1B429F598();

          swift_willThrow();

          return isUniquelyReferenced_nonNull_native;
        }

        type metadata accessor for CRMultiLocaleRecognizerProvider();
        v79 = v86;
        sub_1B40E6464(v88, v86, &unk_1EB884870);
        v80 = isUniquelyReferenced_nonNull_native;

        v39 = v78;
        v81 = v89;
        isUniquelyReferenced_nonNull_native = sub_1B413EFD4(v75, v39, v79);

        if (!v81)
        {
          v41 = &unk_1ED95E250;
          v42 = type metadata accessor for CRMultiLocaleRecognizerProvider;
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

    sub_1B40DF594();
    swift_allocError();
    *v67 = 1;
    *(v67 + 4) = 1;
    goto LABEL_28;
  }

  v30 = sub_1B41253CC();
  (*(v16 + 16))(v19, v30, v15);
  v31 = sub_1B429FA48();
  v32 = sub_1B42A0148();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = a1;
    _os_log_impl(&dword_1B40D2000, v31, v32, "Unexpected attempt to access V%ld recognizer configuration", v33, 0xCu);
    MEMORY[0x1B8C74FA0](v33, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  v34 = objc_opt_self();
  sub_1B40D6404(a2);
  v35 = sub_1B429FAE8();

  *&v93 = 0;
  v36 = [v34 cachedConfigurationWithImageReaderOptions:v35 error:&v93];

  isUniquelyReferenced_nonNull_native = v93;
  if (v36)
  {
    type metadata accessor for CRSingleLocaleRecognizerProvider();
    v37 = v87;
    sub_1B40E6464(v88, v87, &unk_1EB884870);
    v38 = isUniquelyReferenced_nonNull_native;

    v39 = v36;
    v40 = v89;
    isUniquelyReferenced_nonNull_native = sub_1B40EF244(a2, v39, v37);

    if (!v40)
    {
LABEL_12:
      v41 = &unk_1EB884830;
      v42 = type metadata accessor for CRSingleLocaleRecognizerProvider;
LABEL_36:
      sub_1B4124784(v41, v42);
      return isUniquelyReferenced_nonNull_native;
    }

LABEL_32:

    return isUniquelyReferenced_nonNull_native;
  }

LABEL_21:
  v55 = isUniquelyReferenced_nonNull_native;
  sub_1B429F598();

LABEL_28:
  swift_willThrow();

  return isUniquelyReferenced_nonNull_native;
}

uint64_t type metadata accessor for CRConcurrentRecognitionPipeline()
{
  result = qword_1ED95F580;
  if (!qword_1ED95F580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B41244D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E17D0;

  return sub_1B411D87C(v3, v4, v5, v2);
}

uint64_t sub_1B412456C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E17D0;

  return sub_1B411D8FC(v3, v4, v5, v2);
}

unint64_t sub_1B4124600()
{
  result = qword_1ED95E620;
  if (!qword_1ED95E620)
  {
    sub_1B40E27B4(255, &qword_1ED95EE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E620);
  }

  return result;
}

uint64_t sub_1B4124668@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = (v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter);
  v7 = *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter), v7);
  v9 = sub_1B415DF54(v4, v5, v7, v8);
  v10 = v6[3];
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v10);
  v12 = sub_1B415D9AC(v9, v10, v11);

  *a1 = v12;
  return result;
}

uint64_t sub_1B4124714@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter + 24);
  v7 = *(v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_textFeatureSplitter), v6);
  result = sub_1B415DBC4(v4, v5, v6, v7);
  *a1 = result;
  return result;
}

uint64_t sub_1B4124784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B412480C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E6828;

  return sub_1B412037C(v3, v4, v5, v2);
}

uint64_t sub_1B41248A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B40E6368;

  return sub_1B4121790(a1, a2, a3, v12, v13, v8, v9, v10);
}

uint64_t sub_1B412498C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B40E6828;

  return sub_1B4121DC8(a1, a2, v6, v7, v8);
}

void sub_1B4124A70()
{
  sub_1B4124B78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B4124B78()
{
  if (!qword_1ED95E5B8)
  {
    sub_1B429F6D8();
    v0 = sub_1B42A0288();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED95E5B8);
    }
  }
}

uint64_t sub_1B4124BD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B40E6828;

  return sub_1B4122640(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1B4124CB0(double a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  result = [v3 totalUnitCount];
  v7 = result * a1;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = [v3 setCompletedUnitCount_];
  if (v4)
  {
    [v5 fractionCompleted];
    return v4(0);
  }

  return result;
}

uint64_t sub_1B4124D84(NSObject *a1, NSObject *a2, NSObject *a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v7 = sub_1B429FA68();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1E69E7CC0];
  v13 = [a1 tableRegions];
  sub_1B40E27B4(0, &qword_1ED95E6D0);
  v14 = sub_1B429FDF8();

  if (v14 >> 62)
  {
    v15 = sub_1B42A0518();
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
LABEL_17:

      return MEMORY[0x1E69E7CC0];
    }
  }

  swift_beginAccess();
  isa = v5[5].isa;
  if (!isa)
  {
    goto LABEL_17;
  }

  v17 = isa;
  v18 = sub_1B4125490();
  (*(v8 + 16))(v12, v18, v7);

  v19 = sub_1B429FA48();
  v34 = sub_1B42A0128();
  if (os_log_type_enabled(v19, v34))
  {
    v33 = v19;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v14 >> 62)
    {
      v21 = sub_1B42A0518();
    }

    else
    {
      v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    v22 = v33;
    _os_log_impl(&dword_1B40D2000, v33, v34, "Processing %ld tables", v20, 0xCu);
    MEMORY[0x1B8C74FA0](v20, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  result = (*(v8 + 8))(v12, v7);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    for (i = 0; i != v15; i = (i + 1))
    {
      if (!v5[12].isa)
      {
        sub_1B40E27B4(0, &qword_1ED95E658);
        v29 = sub_1B40EFA9C(v35);
        v31 = [objc_allocWithZone(CRTableStructureRecognizer) initWithComputeDeviceType:v29 metalDevice:v30];
        swift_unknownObjectRelease();
        v32 = v5[12].isa;
        v5[12].isa = v31;
      }

      v25 = sub_1B410F9B8();
      MEMORY[0x1EEE9AC00](v25, v25[1]);
      *(&v33 - 6) = v5;
      *(&v33 - 5) = a1;
      v26 = v37;
      *(&v33 - 4) = v36;
      *(&v33 - 3) = i;
      *(&v33 - 2) = v26;
      *(&v33 - 1) = &v38;
      sub_1B40FF6E8(v28, v27, sub_1B4125130, &(&v33)[-8], v28);
    }

    return v38;
  }

  return result;
}

void sub_1B4125130()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  swift_beginAccess();
  v6 = *(v1 + 96);
  if (v6)
  {
    sub_1B40E27B4(0, &qword_1ED95E670);
    v7 = v6;
    v8 = sub_1B429FDE8();
    v9 = [v7 recognizeDetectedTableInRegion:v2 filteredResults:v8 tableIndex:v3 image:v5];

    if (v9)
    {
      v10 = sub_1B429FDE8();
      v11 = [v7 tableGroupRegionFromResult:v9 recognizedLines:v10];

      v12 = v11;
      MEMORY[0x1B8C72680]();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
    }
  }
}

uint64_t sub_1B412554C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B429FA68();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B429FA58();
}

uint64_t sub_1B41255E8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B429FA68();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1B4125660@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B429FA68();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for CRLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CRLog(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1B41257F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v57 = a5;
  v58 = a6;
  v68 = 32;
  v69 = 0xE100000000000000;
  v67 = &v68;

  v59 = a1;
  v60 = a2;
  v10 = 0;
  result = sub_1B4126014(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B410CE00, v66, a1, a2, v11);
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = result + 24;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v18 = (v16 + 32 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    ++v14;
    v19 = v18 + 4;
    v20 = v18[1];
    v21 = v18[2];
    v18 += 4;
    if ((v21 ^ v20) >= 0x4000)
    {
      v64 = a3;
      v22 = *v19;
      v62 = *(v19 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v68 = v17;
      v65 = a4;
      v63 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1B41263D4(0, *(v17 + 16) + 1, 1);
        v17 = v68;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1B41263D4((v23 > 1), v24 + 1, 1);
        v17 = v68;
      }

      *(v17 + 16) = v24 + 1;
      v25 = (v17 + 32 * v24);
      v25[4] = v20;
      v25[5] = v21;
      v10 = v63;
      v25[6] = v62;
      v25[7] = v22;
      a3 = v64;
      a4 = v65;
      goto LABEL_2;
    }
  }

  v68 = 32;
  v69 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v26, v27);
  v55 = &v68;

  result = sub_1B4126014(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B410D55C, &v54, a3, a4, v28);
  v29 = result;
  v64 = v10;
  v30 = 0;
  v31 = *(result + 16);
  v32 = result + 24;
  v33 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v34 = (v32 + 32 * v30);
  while (v31 != v30)
  {
    if (v30 >= *(v29 + 16))
    {
      goto LABEL_33;
    }

    ++v30;
    v35 = v34 + 4;
    v37 = v34[1];
    v36 = v34[2];
    v34 += 4;
    if ((v36 ^ v37) >= 0x4000)
    {
      v39 = *(v35 - 1);
      v38 = *v35;

      result = swift_isUniquelyReferenced_nonNull_native();
      v68 = v33;
      v61 = v17;
      v65 = v39;
      if ((result & 1) == 0)
      {
        result = sub_1B41263D4(0, *(v33 + 16) + 1, 1);
        v33 = v68;
      }

      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_1B41263D4((v40 > 1), v41 + 1, 1);
        v33 = v68;
      }

      *(v33 + 16) = v41 + 1;
      v42 = (v33 + 32 * v41);
      v42[4] = v37;
      v42[5] = v36;
      v42[6] = v65;
      v42[7] = v38;
      v17 = v61;
      goto LABEL_12;
    }
  }

  if (*(v17 + 16) == *(v33 + 16))
  {
    v45 = v58;
    if (v58)
    {

      v46._countAndFlagsBits = v57;
      v46._object = v45;
      LOBYTE(v43) = CRLocale.init(rawValue:)(v46);
      if (v68 != 30)
      {
        [objc_opt_self() defaultRevisionNumber];
        v43 = sub_1B413D718();
        if (v43)
        {
          v47 = v43;
          if (*(v43 + 16) && (v48 = sub_1B40F0030(0xD000000000000011, 0x80000001B42B3F10), (v49 & 1) != 0))
          {
            sub_1B40E2888(*(v47 + 56) + 32 * v48, &v68);

            v43 = swift_dynamicCast();
          }

          else
          {
          }
        }
      }
    }

    MEMORY[0x1EEE9AC00](v43, v44);
    LOBYTE(v55) = v50;
    v56 = v51;
    v52 = sub_1B412666C(v17, v33, sub_1B412660C);

    v68 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885178);
    sub_1B4126930();
    sub_1B4126994();
    v53 = sub_1B429FDC8();

    return v53;
  }

  else
  {

    return v59;
  }
}

uint64_t sub_1B4125CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_1B42A02E8();
      v12 = v11;
      v13 = sub_1B42A0298();
      v14 = sub_1B429FCA8();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_1B42A0678();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_1B429FCA8();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t static CRTextDecodingUtilsTesting.adjustedBeamSearchDecodedString(_:greedyDecodedString:decodingLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v5 = *a5;
  v6 = sub_1B429FB88();
  v7 = sub_1B429FB88();
  if (v5 == 30)
  {
    v8 = 0;
  }

  else
  {
    CRLocale.rawValue.getter();
    v8 = sub_1B429FB88();
  }

  v9 = [objc_opt_self() adjustedBeamSearchDecodedString:v6 greedyDecodedString:v7 decodingLocale:v8];

  v10 = sub_1B429FB98();
  return v10;
}
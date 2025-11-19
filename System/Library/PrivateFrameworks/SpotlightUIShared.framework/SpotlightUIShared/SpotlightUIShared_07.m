uint64_t sub_26B991020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B99128C(&qword_280427170, type metadata accessor for TypedValueResultQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B991104(uint64_t a1)
{
  result = sub_26B99128C(&qword_280427168, type metadata accessor for TypedValueResultQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B99115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B99128C(&qword_280427160, type metadata accessor for TypedValueResultQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B991208()
{
  result = sub_26B9ABE84();
  if (v1 <= 0x3F)
  {
    result = sub_26B9AB984();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B99128C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B9912F4(uint64_t a1)
{
  v1[25] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427178, &unk_26B9B5858);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = _s18ResolutionStrategyOMa(0);
  v1[29] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v9 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v10 = sub_26B92A538();
  swift_beginAccess();
  v11 = *v10;
  v1[39] = v11;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9914F4, v11, 0);
}

uint64_t sub_26B9914F4()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[25];
  v5 = v4 + *(type metadata accessor for TypedValueResultQuery() + 20);
  sub_26B9AB934();
  v6 = sub_26B9AB914();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = sub_26B9AC0E4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_26B906128();
  sub_26B964AE0(0, 0, v1, v3, v8 & 1, 1, v2);
  type metadata accessor for TypedValueResultBuilder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v9 = sub_26B9ABE84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v0[40] = v13;
  *(v13 + 16) = xmmword_26B9AF300;
  (*(v10 + 16))(v13 + v12, v4, v9);
  v14 = swift_task_alloc();
  v0[41] = v14;
  *v14 = v0;
  v14[1] = sub_26B991724;
  v15 = v0[38];

  return sub_26B965EEC(v13, v15);
}

uint64_t sub_26B991724(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_26B991858, v4, 0);
}

uint64_t sub_26B991858()
{
  v93 = v0;
  v1 = v0;
  v2 = *(v0 + 336);
  v3 = sub_26B99430C(MEMORY[0x277D84F90]);
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
  {
    v5 = 0;
    v88 = v2 & 0xFFFFFFFFFFFFFF8;
    v89 = v2 & 0xC000000000000001;
    v87 = *(v1 + 336) + 32;
    v86 = i;
    while (v89)
    {
      v8 = MEMORY[0x26D686B00](v5, *(v1 + 336));
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_36;
      }

LABEL_9:
      v90 = v9;
      v11 = *(v1 + 272);
      v10 = *(v1 + 280);
      v12 = *(v1 + 232);
      (*(*v8 + 104))();
      sub_26B99441C(v10, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v14 = *(v1 + 272);
          v15 = sub_26B9AB104();
          (*(*(v15 - 8) + 8))(v14, v15);
          v16 = 2;
          if (!v3[2])
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = 0;
          if (!v3[2])
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_26B9944E4(*(v1 + 272), _s18ResolutionStrategyOMa);
        v16 = 1;
        if (!v3[2])
        {
          goto LABEL_18;
        }
      }

      v17 = sub_26B8F6AB0(v16);
      if (v18)
      {
        v19 = *(v3[7] + 8 * v17);

        goto LABEL_19;
      }

LABEL_18:
      v19 = MEMORY[0x277D84F90];
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427180, &qword_26B9B5868);
      v20 = v1;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B9AF300;
      *(inited + 32) = v5;
      *(inited + 40) = v8;
      *(inited + 48) = 0;
      v92 = v19;
      sub_26B9AAAE4();
      sub_26B992F04(inited);
      v22 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v3;
      v2 = v3;
      v25 = sub_26B8F6AB0(v16);
      v26 = v3[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_38;
      }

      v1 = v24;
      if (v3[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v24)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v2 = &v92;
          sub_26B9941B0();
          v3 = v92;
          if (v1)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_26B993A10(v28, isUniquelyReferenced_nonNull_native);
        v3 = v92;
        v2 = v92;
        v29 = sub_26B8F6AB0(v16);
        if ((v1 & 1) != (v30 & 1))
        {

          return sub_26B9ACF24();
        }

        v25 = v29;
        if (v1)
        {
LABEL_4:
          v6 = v3[7];
          v7 = *(v6 + 8 * v25);
          *(v6 + 8 * v25) = v22;

          goto LABEL_5;
        }
      }

      v3[(v25 >> 6) + 8] |= 1 << v25;
      *(v3[6] + v25) = v16;
      *(v3[7] + 8 * v25) = v22;

      v31 = v3[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_39;
      }

      v3[2] = v33;
LABEL_5:
      ++v5;
      v1 = v20;
      if (v90 == v86)
      {
        goto LABEL_43;
      }
    }

    if (v5 >= *(v88 + 16))
    {
      goto LABEL_37;
    }

    v8 = *(v87 + 8 * v5);
    sub_26B9AAAE4();
    v9 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    if (*(v1 + 336) < 0)
    {
      v35 = *(v1 + 336);
    }
  }

LABEL_43:
  *(v1 + 344) = v3;
  v36 = *(v1 + 336);
  v38 = *(v1 + 256);
  v37 = *(v1 + 264);
  v39 = *(v1 + 232);

  swift_storeEnumTagMultiPayload();
  sub_26B994480(v37, v38);
  v40 = swift_getEnumCaseMultiPayload();
  if (v40)
  {
    if (v40 == 1)
    {
      v41 = *(v1 + 256);
      v42 = sub_26B9AB104();
      (*(*(v42 - 8) + 8))(v41, v42);
      v43 = 2;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    sub_26B9944E4(*(v1 + 256), _s18ResolutionStrategyOMa);
    v43 = 1;
  }

  v44 = MEMORY[0x277D84F90];
  if (v3[2])
  {
    v45 = sub_26B8F6AB0(v43);
    if (v46)
    {
      v47 = *(v3[7] + 8 * v45);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  *(v1 + 176) = v48;
  *(v1 + 184) = v44;
  v49 = *(v3 + 32);
  *(v1 + 432) = v49;
  v50 = 1 << v49;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & v3[8];

  v53 = 0;
  while (v52)
  {
    result = *(v1 + 344);
LABEL_65:
    *(v1 + 352) = v52;
    *(v1 + 360) = v53;
    v56 = *(v1 + 264);
    v57 = *(v1 + 248);
    v58 = *(v1 + 232);
    v59 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v60 = v59 | (v53 << 6);
    v61 = *(*(result + 48) + v60);
    v62 = *(*(result + 56) + 8 * v60);
    *(v1 + 368) = v62;
    sub_26B994480(v56, v57);
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v54 = *(v1 + 248);

      sub_26B9944E4(v54, _s18ResolutionStrategyOMa);
      if (v61 != 1)
      {
        goto LABEL_71;
      }

      goto LABEL_58;
    }

    if (result == 1)
    {
      v63 = *(v1 + 248);
      v64 = sub_26B9AB104();
      v65 = *(*(v64 - 8) + 8);

      v65(v63, v64);
      if (v61 != 2)
      {
        goto LABEL_71;
      }

LABEL_58:
    }

    else if (v61)
    {

LABEL_71:
      v66 = off_279D105A0[v61];
      v67 = off_279D105B8[v61];
      *(v1 + 96) = v66;
      *(v1 + 104) = v67;
      __swift_project_boxed_opaque_existential_1((v1 + 72), v66);
      v68 = v67[1];
      v91 = (v68 + *v68);
      v69 = v68[1];
      v70 = swift_task_alloc();
      *(v1 + 376) = v70;
      *v70 = v1;
      v70[1] = sub_26B992120;
      v71 = v62;
      v72 = v66;
      v73 = v67;
      goto LABEL_78;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return result;
    }

    result = *(v1 + 344);
    if (v55 >= (((1 << *(v1 + 432)) + 63) >> 6))
    {
      break;
    }

    v52 = *(result + 8 * v55 + 64);
    ++v53;
    if (v52)
    {
      v53 = v55;
      goto LABEL_65;
    }
  }

  v74 = *(v1 + 264);
  v76 = *(v1 + 232);
  v75 = *(v1 + 240);

  sub_26B994480(v74, v75);
  v77 = swift_getEnumCaseMultiPayload();
  if (v77)
  {
    if (v77 == 1)
    {
      v78 = *(v1 + 240);
      v79 = sub_26B9AB104();
      (*(*(v79 - 8) + 8))(v78, v79);
      v80 = &off_287C60DE0;
      v81 = &type metadata for MetadataTypedValueResultResolver;
    }

    else
    {
      v80 = &off_287C60DC0;
      v81 = &type metadata for StandardTypedValueResultResolver;
    }
  }

  else
  {
    sub_26B9944E4(*(v1 + 240), _s18ResolutionStrategyOMa);
    v80 = &off_287C60DD0;
    v81 = &type metadata for IndexedEntityTypedValueResultResolver;
  }

  *(v1 + 136) = v81;
  *(v1 + 144) = v80;
  __swift_project_boxed_opaque_existential_1((v1 + 112), v81);
  v82 = *(v1 + 176);
  *(v1 + 400) = v82;
  v83 = v80[1];
  v91 = (v83 + *v83);
  v84 = v83[1];
  v85 = swift_task_alloc();
  *(v1 + 408) = v85;
  *v85 = v1;
  v85[1] = sub_26B992808;
  v71 = v82;
  v72 = v81;
  v73 = v80;
LABEL_78:

  return (v91)(v71, v72, v73);
}

uint64_t sub_26B992120(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v14 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = v3[46];
    v6 = v3[39];
    v7 = v3[23];

    v8 = v3[22];

    v9 = sub_26B992C7C;
    v10 = v6;
  }

  else
  {
    v11 = v3[46];
    v12 = v3[39];

    v9 = sub_26B992270;
    v10 = v12;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_26B992270()
{
  v4 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 384) + 48;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    do
    {
      v2 = *(v6 - 16);
      v10 = *(v6 - 8);
      v3 = *v6;
      if (*v6)
      {
        v42 = v3;
        sub_26B9AAAE4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26B993620(0, *(v7 + 2) + 1, 1, v7);
        }

        v1 = *(v7 + 2);
        v13 = *(v7 + 3);
        v11 = v1 + 1;
        if (v1 >= v13 >> 1)
        {
LABEL_30:
          v40 = sub_26B993620((v13 > 1), v11, 1, v7);
          v7 = v40;
        }

        else
        {
          v40 = v7;
        }
      }

      else
      {
        v43 = *(v6 - 8);
        sub_26B9AAAE4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26B993620(0, *(v8 + 16) + 1, 1, v8);
        }

        v1 = *(v8 + 16);
        v44 = *(v8 + 24);
        v11 = v1 + 1;
        if (v1 >= v44 >> 1)
        {
          v40 = sub_26B993620((v44 > 1), v1 + 1, 1, v8);
          v8 = v40;
        }

        else
        {
          v40 = v8;
        }
      }

      v6 += 24;
      *(v40 + 2) = v11;
      v41 = &v40[24 * v1];
      *(v41 + 4) = v2;
      *(v41 + 5) = v10;
      *(v41 + 6) = v3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 384);

  sub_26B992F04(v8);
  v10 = v0 + 184;
  sub_26B992F04(v7);
  v11 = *(v0 + 360);
  v6 = (*(v0 + 352) - 1) & *(v0 + 352);
  v5 = 1;
  while (v6)
  {
    v12 = *(v0 + 344);
LABEL_13:
    *(v0 + 352) = v6;
    *(v0 + 360) = v11;
    v14 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v11 << 6);
    v1 = *(*(v12 + 48) + v16);
    v10 = *(*(v12 + 56) + 8 * v16);
    *(v0 + 368) = v10;
    sub_26B994480(v14, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v7 = *(v0 + 248);

      sub_26B9944E4(v7, _s18ResolutionStrategyOMa);
      if (v1 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 248);
      v8 = sub_26B9AB104();
      v18 = *(v8 - 8);
      v2 = *(v18 + 8);
      v3 = (v18 + 8);

      v2(v7, v8);
      if (v1 != 2)
      {
        goto LABEL_19;
      }

LABEL_6:
    }

    else if (v1)
    {

LABEL_19:
      v19 = off_279D105A0[v1];
      v20 = off_279D105B8[v1];
      *(v0 + 96) = v19;
      *(v0 + 104) = v20;
      __swift_project_boxed_opaque_existential_1((v0 + 72), v19);
      v21 = v20[1];
      v45 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 376) = v23;
      *v23 = v0;
      v23[1] = sub_26B992120;
      v24 = v10;
      v25 = v19;
      v26 = v20;
      goto LABEL_26;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v0 + 344);
    if (v13 >= (((1 << *(v0 + 432)) + 63) >> 6))
    {
      break;
    }

    v6 = *(v12 + 8 * v13 + 64);
    ++v11;
    if (v6)
    {
      v11 = v13;
      goto LABEL_13;
    }
  }

  v27 = *(v0 + 264);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);

  sub_26B994480(v27, v28);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = *(v0 + 240);
      v32 = sub_26B9AB104();
      (*(*(v32 - 8) + 8))(v31, v32);
      v33 = &off_287C60DE0;
      v34 = &type metadata for MetadataTypedValueResultResolver;
    }

    else
    {
      v33 = &off_287C60DC0;
      v34 = &type metadata for StandardTypedValueResultResolver;
    }
  }

  else
  {
    sub_26B9944E4(*(v0 + 240), _s18ResolutionStrategyOMa);
    v33 = &off_287C60DD0;
    v34 = &type metadata for IndexedEntityTypedValueResultResolver;
  }

  *(v0 + 136) = v34;
  *(v0 + 144) = v33;
  __swift_project_boxed_opaque_existential_1((v0 + 112), v34);
  v35 = *(v0 + 176);
  *(v0 + 400) = v35;
  v36 = v33[1];
  v45 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 408) = v38;
  *v38 = v0;
  v38[1] = sub_26B992808;
  v24 = v35;
  v25 = v34;
  v26 = v33;
LABEL_26:

  return (v45)(v24, v25, v26);
}

uint64_t sub_26B992808(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v7 = v4[50];
    v8 = v4[39];
    v9 = v4[23];

    v10 = sub_26B992DC4;
    v11 = v8;
  }

  else
  {
    v11 = v4[39];
    v4[53] = a1;
    v10 = sub_26B992954;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_26B992954()
{
  v1 = v0[53];
  v2 = v0[39];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  sub_26B992F04(v1);
  v0[24] = v0[23];
  swift_getKeyPath();
  sub_26B9AAF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427188, &qword_26B9B5890);
  sub_26B8F7938(&qword_280427190, &qword_280427188, &qword_26B9B5890);
  sub_26B8F7938(&qword_280427198, &qword_280427178, &unk_26B9B5858);
  v6 = sub_26B9AC634();
  (*(v4 + 8))(v3, v5);

  v8 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v6 + 16);
      if (v10 >= v11)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v12 = *(v6 + 32 + 24 * v10 + 16);
      v13 = v10 + 1;
      if (!v12)
      {
        break;
      }

LABEL_9:
      v10 = v13;
      v16 = v12;
      MEMORY[0x26D6865A0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26B9AC734();
      }

      result = sub_26B9AC774();
      v8 = v31;
      if (v10 == v9)
      {
        goto LABEL_12;
      }
    }

    v14 = (v6 + 72 + 24 * v10);
    while (v9 != v13)
    {
      if (v11 == v13)
      {
        goto LABEL_15;
      }

      v15 = *v14;
      v14 += 3;
      v12 = v15;
      ++v13;
      if (v15)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_12:
  v18 = v0[50];
  v19 = v0[43];
  v21 = v0[37];
  v20 = v0[38];
  v23 = v0[35];
  v22 = v0[36];
  v24 = v0[33];
  v26 = v0[34];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[28];

  sub_26B9944E4(v24, _s18ResolutionStrategyOMa);
  sub_26B9944E4(v20, type metadata accessor for TypedValueResultBuilder.Config);

  v25 = v0[1];

  return v25(v8);
}

uint64_t sub_26B992C7C()
{
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[33];

  sub_26B9944E4(v4, _s18ResolutionStrategyOMa);
  sub_26B9944E4(v3, type metadata accessor for TypedValueResultBuilder.Config);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  v17 = v0[49];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  v14 = v0[28];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26B992DC4()
{
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[33];

  sub_26B9944E4(v4, _s18ResolutionStrategyOMa);
  sub_26B9944E4(v3, type metadata accessor for TypedValueResultBuilder.Config);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  v17 = v0[52];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  v14 = v0[28];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26B992F04(uint64_t result)
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

  result = sub_26B993620(result, v11, 1, v3);
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

uint64_t sub_26B992FFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26B9ACB44();
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

  v15 = sub_26B9ACB44();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26B928DFC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B932FF0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t TypedValueResultQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26B993178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8F40D4;

  return sub_26B99477C(a1);
}

uint64_t sub_26B99320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v12 = sub_26B9AC4C4();
  v13 = [v11 initWithQueryString:v12 queryContext:a4];

  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v24 = sub_26B99612C;
  v25 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26B930024;
  v23 = &block_descriptor_4;
  v15 = _Block_copy(&aBlock);
  sub_26B9AAAE4();

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v24 = sub_26B9333F0;
  v25 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26B9300A8;
  v23 = &block_descriptor_31_0;
  v18 = _Block_copy(&aBlock);
  sub_26B9AAAE4();

  [v13 setCompletionHandler_];
  _Block_release(v18);
  [v13 start];
}

uint64_t sub_26B9934F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8F4CF4;

  return sub_26B99535C(a1);
}

uint64_t sub_26B99358C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8F4CF4;

  return sub_26B994C78(a1);
}

char *sub_26B993620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427180, &qword_26B9B5868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B993740(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271B8, &unk_26B9B5AA8);
  v40 = a2;
  result = sub_26B9ACD74();
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
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v41 = *v25;
      v42 = *v23;
      v27 = v25[2];
      if ((v40 & 1) == 0)
      {
        v28 = v27;

        sub_26B9AAAE4();
      }

      v29 = *(v8 + 40);
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
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
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v41;
      v18[1] = v26;
      v18[2] = v27;
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

uint64_t sub_26B993A10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271C0, &unk_26B9B5AC0);
  v33 = a2;
  result = sub_26B9ACD74();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_26B9ACFB4();
      MEMORY[0x26D686E90](v21);
      result = sub_26B9ACFF4();
      v24 = -1 << *(v8 + 32);
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
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26B993CA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B9ACB24() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26B9ACFB4();

      sub_26B9AC574();
      v14 = sub_26B9ACFF4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_26B993E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_26B9201A8(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_26B993740(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_26B9201A8(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_26B9ACF24();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_26B994018();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = v27[1];
    v33 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;

    return;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v26[7] + 24 * v15);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

void *sub_26B994018()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271B8, &unk_26B9B5AA8);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
        v28 = v25;

        result = sub_26B9AAAE4();
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

void *sub_26B9941B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271C0, &unk_26B9B5AC0);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_26B99430C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271C0, &unk_26B9B5AC0);
  v3 = sub_26B9ACD84();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_26B8F6AB0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_26B8F6AB0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B99441C(uint64_t a1, uint64_t a2)
{
  v4 = _s18ResolutionStrategyOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B994480(uint64_t a1, uint64_t a2)
{
  v4 = _s18ResolutionStrategyOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9944E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26B994548()
{
  result = qword_2804271A0;
  if (!qword_2804271A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271A0);
  }

  return result;
}

void sub_26B99461C()
{
  sub_26B994690();
  if (v0 <= 0x3F)
  {
    sub_26B9946F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26B994690()
{
  if (!qword_2804271A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804271A8);
    }
  }
}

void sub_26B9946F4()
{
  if (!qword_2804271B0)
  {
    v0 = sub_26B9AB104();
    if (!v1)
    {
      atomic_store(v0, &qword_2804271B0);
    }
  }
}

uint64_t sub_26B99477C(uint64_t a1)
{
  v1[2] = a1;
  v2 = _s18ResolutionStrategyOMa(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_26B9AB104();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B99486C, 0, 0);
}

uint64_t sub_26B99486C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v26 = (v3 + 32);
    v27 = (v3 + 8);
    v4 = (v1 + 48);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v10 = v0[3];
      v9 = v0[4];
      v11 = *(v4 - 1);
      v31 = *(v4 - 2);
      v12 = *(*v11 + 104);
      v32 = *v4;
      v30 = *v4;
      v13 = sub_26B9AAAE4();
      v12(v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = v0[7];
        (*v26)(v14, v0[4], v0[5]);
        v15 = sub_26B93F048(v14);
        if (v15)
        {
          v16 = [objc_opt_self() resultBuilderWithResult_];
          swift_retain_n();
          v29 = v16;
          v32 = [v16 buildResult];
          v28 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_26B993620(0, *(v5 + 2) + 1, 1, v5);
          }

          v18 = *(v5 + 2);
          v17 = *(v5 + 3);
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            v5 = sub_26B993620((v17 > 1), v18 + 1, 1, v5);
          }

          v6 = v0[7];
          v7 = v0[5];

          (*v27)(v6, v7);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_26B993620(0, *(v5 + 2) + 1, 1, v5);
          }

          v18 = *(v5 + 2);
          v21 = *(v5 + 3);
          v19 = v18 + 1;
          if (v18 >= v21 >> 1)
          {
            v5 = sub_26B993620((v21 > 1), v18 + 1, 1, v5);
          }

          (*v27)(v0[7], v0[5]);
        }
      }

      else
      {
        sub_26B9944E4(v0[4], _s18ResolutionStrategyOMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_26B993620(0, *(v5 + 2) + 1, 1, v5);
        }

        v18 = *(v5 + 2);
        v20 = *(v5 + 3);
        v19 = v18 + 1;
        if (v18 >= v20 >> 1)
        {
          v5 = sub_26B993620((v20 > 1), v18 + 1, 1, v5);
        }
      }

      v4 += 3;
      *(v5 + 2) = v19;
      v8 = &v5[24 * v18];
      *(v8 + 4) = v31;
      *(v8 + 5) = v11;
      *(v8 + 6) = v32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v22 = v0[7];
  v23 = v0[4];

  v24 = v0[1];

  return v24(v5);
}

uint64_t sub_26B994C98()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = MEMORY[0x277D84F90];
    v0[5] = 0;
    v0[6] = v1[4];
    v3 = v1[5];
    v0[7] = v3;
    v4 = v1[6];
    v0[8] = v4;
    v5 = *(*v3 + 120);
    swift_retain_n();
    v6 = v4;
    v12 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_26B994E38;

    return v12();
  }

  else
  {
    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_26B994E38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v3[4];

    v6 = sub_26B9951CC;
  }

  else
  {
    v6 = sub_26B994F54;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B994F54()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v25 = *(v0 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 32);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_26B993620(0, *(v4 + 2) + 1, 1, *(v0 + 32));
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_26B993620((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);

  *(v4 + 2) = v6 + 1;
  v13 = &v4[24 * v6];
  *(v13 + 4) = v10;
  *(v13 + 5) = v8;
  *(v13 + 6) = v7;
  if (v11 + 1 == v12)
  {
    v14 = *(v0 + 8);

    return v14(v4);
  }

  else
  {
    v16 = *(v0 + 40);
    *(v0 + 32) = v4;
    *(v0 + 40) = v16 + 1;
    v17 = (*(v0 + 16) + 24 * v16);
    *(v0 + 48) = v17[7];
    v18 = v17[8];
    *(v0 + 56) = v18;
    v19 = v17[9];
    *(v0 + 64) = v19;
    v20 = *(*v18 + 120);
    swift_retain_n();
    v21 = v19;
    v24 = (v20 + *v20);
    v22 = v20[1];
    v23 = swift_task_alloc();
    *(v0 + 72) = v23;
    *v23 = v0;
    v23[1] = sub_26B994E38;

    return v24();
  }
}

uint64_t sub_26B9951CC()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

unint64_t sub_26B99523C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271B8, &unk_26B9B5AA8);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v10 = *i;

      sub_26B9AAAE4();
      result = sub_26B9201A8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t sub_26B99535C(uint64_t a1)
{
  v1[4] = a1;
  v2 = _s18ResolutionStrategyOMa(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9953F0, 0, 0);
}

uint64_t sub_26B9953F0()
{
  v1 = v0[4];
  v2 = MEMORY[0x277D84F90];
  v58 = sub_26B99523C(MEMORY[0x277D84F90]);
  v59 = v0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v55 = v0[6];
    v4 = (v0[4] + 48);
    v60 = v2;
    do
    {
      v63 = v3;
      v64 = v2;
      v6 = v59[5];
      v7 = v59[6];
      v9 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v11 = *(*v8 + 104);
      v61 = *v4;
      v12 = sub_26B9AAAE4();
      v11(v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v59[6];
      if (EnumCaseMultiPayload)
      {
        sub_26B9944E4(v14, _s18ResolutionStrategyOMa);
        v15 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_26B993620(0, *(v60 + 2) + 1, 1, v60);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = sub_26B993620((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        v60 = v15;
        v5 = &v15[24 * v17];
        *(v5 + 4) = v9;
        *(v5 + 5) = v8;
        *(v5 + 6) = v10;
      }

      else
      {
        v18 = *v14;
        v19 = v55[1];
        v56 = *v14;
        v57 = v55[2];
        v20 = v55[3];
        v21 = v55[4];
        v22 = v55[5];

        MEMORY[0x26D686470](46, 0xE100000000000000);

        MEMORY[0x26D686470](v18, v19);

        MEMORY[0x26D686470](46, 0xE100000000000000);
        MEMORY[0x26D686470](v21, v22);
        sub_26B9AAAE4();
        v62 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_26B993E5C(v9, v8, v10, v57, v20, isUniquelyReferenced_nonNull_native);

        sub_26B9ACBF4();
        MEMORY[0x26D686470](0xD000000000000024, 0x800000026B9BA3C0);
        MEMORY[0x26D686470](v21, v22);

        MEMORY[0x26D686470](0xD000000000000024, 0x800000026B9BA3F0);

        MEMORY[0x26D686470](v56, v19);

        MEMORY[0x26D686470](0xD000000000000015, 0x800000026B9BA420);

        MEMORY[0x26D686470](v57, v20);

        swift_bridgeObjectRelease_n();
        v2 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26B91F91C(0, *(v64 + 2) + 1, 1, v64);
        }

        v25 = *(v2 + 2);
        v24 = *(v2 + 3);
        if (v25 >= v24 >> 1)
        {
          v2 = sub_26B91F91C((v24 > 1), v25 + 1, 1, v2);
        }

        *(v2 + 2) = v25 + 1;
        v26 = &v2[16 * v25];
        *(v26 + 4) = 0;
        *(v26 + 5) = 0xE000000000000000;
      }

      v4 += 3;
      v3 = v63 - 1;
    }

    while (v63 != 1);
  }

  else
  {
    v60 = v2;
  }

  v59[9] = v2;
  v59[10] = v58;
  v59[7] = v58;
  v59[8] = v60;
  v27 = *(v2 + 2);
  if (v27)
  {
    v65 = MEMORY[0x277D84F90];
    sub_26B921238(0, v27, 0);
    v28 = (v2 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      MEMORY[0x26D686470](v29, v30);
      MEMORY[0x26D686470](41, 0xE100000000000000);

      v32 = *(v65 + 16);
      v31 = *(v65 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_26B921238((v31 > 1), v32 + 1, 1);
      }

      *(v65 + 16) = v32 + 1;
      v33 = v65 + 16 * v32;
      *(v33 + 32) = 40;
      *(v33 + 40) = 0xE100000000000000;
      v28 += 2;
      --v27;
    }

    while (v27);
    v59[2] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426788, &qword_26B9B2A70);
    sub_26B8F7938(&qword_280426790, &qword_280426788, &qword_26B9B2A70);
    v34 = sub_26B9AC484();
    v36 = v35;

    v59[11] = v36;
    v37 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
    v59[12] = v37;
    v38 = rankingPrefetchedAttributesArray();
    if (v38)
    {
      v46 = v38;
      [v37 setFetchAttributes_];

      [v37 setDisableSemanticSearch_];
      v47 = swift_task_alloc();
      v59[13] = v47;
      v47[2] = v34;
      v47[3] = v36;
      v47[4] = v37;
      v48 = *(MEMORY[0x277D85A40] + 4);
      v49 = swift_task_alloc();
      v59[14] = v49;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F0, &qword_26B9B1C58);
      *v49 = v59;
      v49[1] = sub_26B995AA4;
      v43 = sub_26B996120;
      v41 = 0x2865766C6F736572;
      v42 = 0xEF293A736B736174;
      v38 = v59 + 3;
      v39 = 0;
      v40 = 0;
      v44 = v47;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822008A0](v38, v39, v40, v41, v42, v43, v44, v45);
  }

  else
  {
    v50 = v59[4];

    v51 = v59[4];
    v52 = v59[6];

    v53 = v59[1];

    return v53(v51);
  }
}

uint64_t sub_26B995AA4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  v6 = v2[11];
  if (v0)
  {
    v7 = v2[8];
    v8 = v2[9];

    v9 = sub_26B9960A4;
  }

  else
  {

    v9 = sub_26B995C20;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26B995C20()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v45 = v0[3];
    }

    v46 = v0[3];
    result = sub_26B9ACB44();
    v1 = v46;
    v52 = v0;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_35:
    v47 = v0[8];
    v57 = v47;
    v59 = v0[10];
LABEL_36:
    v48 = v52[12];
    v49 = v52[9];

    v50 = v52[6];

    v51 = v52[1];

    return v51(v57);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v4 = &selRef_setObject_forKey_;
    v5 = v0[8];
    v57 = v5;
    v58 = v0[10];
    v53 = v0[7];
    v54 = v1 & 0xC000000000000001;
    v55 = result;
    v56 = v1;
    while (1)
    {
      if (v54)
      {
        v6 = MEMORY[0x26D686B00](v3);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = [v6 v4[21]];
      v9 = [v8 bundleID];

      if (v9)
      {
        v10 = sub_26B9AC504();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v13 = [v7 v4[21]];
      v14 = [v13 appEntityType];

      if (v14)
      {
        v15 = sub_26B9AC504();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0xE000000000000000;
      }

      v18 = v4;
      v19 = [v7 v4[21]];
      v20 = [v19 appEntityInstanceId];

      if (v20)
      {
        v21 = sub_26B9AC504();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      MEMORY[0x26D686470](46, 0xE100000000000000);
      MEMORY[0x26D686470](v15, v17);

      MEMORY[0x26D686470](46, 0xE100000000000000);
      MEMORY[0x26D686470](v21, v23);

      v24 = v12;
      if (*(v58 + 16))
      {
        v25 = sub_26B9201A8(v10, v12);
        if ((v26 & 1) == 0)
        {
          v4 = v18;

          goto LABEL_7;
        }

        v27 = *(v58 + 56) + 24 * v25;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        swift_retain_n();
        v31 = sub_26B9201A8(v10, v24);
        v33 = v32;

        if (v33)
        {
          v34 = v53;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_26B994018();
            v34 = v53;
          }

          v35 = *(*(v34 + 48) + 16 * v31 + 8);

          v36 = *(v34 + 56) + 24 * v31;
          v37 = *(v36 + 8);
          v38 = *(v36 + 16);

          sub_26B993CA0(v31, v34);
          v53 = v34;
          v58 = v34;
        }

        v39 = [objc_opt_self() resultBuilderForItem_];
        v40 = [v39 buildResult];

        v41 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_26B993620(0, *(v57 + 2) + 1, 1, v57);
        }

        v43 = *(v57 + 2);
        v42 = *(v57 + 3);
        if (v43 >= v42 >> 1)
        {
          v57 = sub_26B993620((v42 > 1), v43 + 1, 1, v57);
        }

        *(v57 + 2) = v43 + 1;
        v44 = &v57[24 * v43];
        *(v44 + 4) = v28;
        *(v44 + 5) = v29;
        *(v44 + 6) = v40;
      }

      else
      {
      }

      v4 = v18;
LABEL_7:
      ++v3;
      v1 = v56;
      if (v55 == v3)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B9960A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_26B99612C()
{
  swift_beginAccess();

  sub_26B992FFC(v0);
  return swift_endAccess();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t WebsiteQuery.searchString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WebsiteQuery.init(command:searchString:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 WebsiteQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CEE8();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B996230()
{
  result = qword_2804271C8;
  if (!qword_2804271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271C8);
  }

  return result;
}

__n128 sub_26B996284@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CEE8();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B9962B8(uint64_t a1)
{
  result = sub_26B996230();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9962E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B996550();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9963BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B996550();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B996470(uint64_t a1)
{
  result = sub_26B996498();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B996498()
{
  result = qword_2804271D0;
  if (!qword_2804271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271D0);
  }

  return result;
}

uint64_t sub_26B9964EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B996230();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B996550()
{
  result = qword_2804271D8;
  if (!qword_2804271D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271D8);
  }

  return result;
}

uint64_t sub_26B9965C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  *(v4 + 136) = *a1;
  *(v4 + 144) = *(a1 + 8);
  *(v4 + 160) = *(a2 + 24);
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  *(v4 + 168) = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B996668, v6, 0);
}

uint64_t sub_26B996668()
{
  v1 = [*(v0 + 136) entityIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 136) bundleIdentifier];
    if (!v3)
    {
      sub_26B9AC504();
      v3 = sub_26B9AC4C4();
    }

    v4 = *(v0 + 152);
    v5 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
    [v5 setResultBundleId_];

    if (v4)
    {
      v6 = *(v0 + 144);
      v7 = *(v0 + 152);
      v8 = sub_26B9AC4C4();
    }

    else
    {
      v8 = 0;
    }

    v10 = [objc_opt_self() cardSectionForSearchWebsiteCommand:*(v0 + 136) searchString:v8];

    v11 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26B9B1290;
    *(v12 + 32) = v10;
    sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
    v13 = v10;
    v14 = sub_26B9AC6E4();

    [v11 setCardSections_];

    [v5 setInlineCard_];
    [v5 setIdentifier_];

    v15 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
    v16 = sub_26B9AC4C4();
    [v15 setIdentifier_];

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26B9B1290;
    *(v17 + 32) = v5;
    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v18 = sub_26B9AC6E4();

    [v15 setResults_];

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26B9B1290;
    *(v9 + 32) = v15;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v9 >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);

    v19 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v19 = v9;
  }

  v20 = *(v0 + 160);
  v21 = *(v0 + 120);

  v22 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v19, v20, 1, 1, 0, v22 & 1, v0 + 16);
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = *(v0 + 33);
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = v23;
  *(v0 + 72) = v24;
  *(v0 + 73) = v25;
  *(v0 + 80) = v26;
  *(v0 + 88) = v27;
  v32 = (v21 + *v21);
  v28 = v21[1];
  v29 = swift_task_alloc();
  *(v0 + 176) = v29;
  *v29 = v0;
  v29[1] = sub_26B996B00;
  v30 = *(v0 + 128);

  return v32(v0 + 56);
}

uint64_t sub_26B996B00()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26B996C50, v3, 0);
}

uint64_t sub_26B996C50()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B996CC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_26B996D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WebsiteQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

__n128 TopLevelFiltersQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

SpotlightUIShared::TopLevelFiltersQuery __swiftcall TopLevelFiltersQuery.init()()
{
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  return result;
}

unint64_t sub_26B997054(uint64_t a1)
{
  result = sub_26B92C01C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B99707C@<X0>(void *a1@<X8>)
{
  sub_26B9973C0();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B9970C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9973C0();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9971A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B9973C0();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B997258(uint64_t a1)
{
  result = sub_26B997280();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B997280()
{
  result = qword_2804271E0;
  if (!qword_2804271E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271E0);
  }

  return result;
}

uint64_t sub_26B9972D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B92C01C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B997328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_26B997370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B9973C0()
{
  result = qword_2804271E8;
  if (!qword_2804271E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271E8);
  }

  return result;
}

unint64_t sub_26B997434(uint64_t a1)
{
  result = sub_26B99745C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B99745C()
{
  result = qword_2804271F0;
  if (!qword_2804271F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271F0);
  }

  return result;
}

uint64_t sub_26B9974B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B997720();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B99758C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B997720();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B997640(uint64_t a1)
{
  result = sub_26B997668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B997668()
{
  result = qword_2804271F8;
  if (!qword_2804271F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271F8);
  }

  return result;
}

uint64_t sub_26B9976BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B99745C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B997720()
{
  result = qword_280427200;
  if (!qword_280427200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427200);
  }

  return result;
}

uint64_t sub_26B99778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[17] = *(a2 + 24);
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v4[18] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B997824, v6, 0);
}

uint64_t sub_26B997824()
{
  v1 = *(v0 + 120);
  static SearchResults.empty(queryID:)(*(v0 + 136), v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 73) = v4;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  v11 = (v1 + *v1);
  v7 = v1[1];
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_26B997954;
  v9 = *(v0 + 128);

  return v11(v0 + 56);
}

uint64_t sub_26B997954()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26B92DC3C, v3, 0);
}

uint64_t sub_26B997ABC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_26B997AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ZKWQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t QueryDataSource.wrapWithFeedback(context:spotlightBrowsingSearchScope:resultHandler:fetchResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[15] = a3;
  v5[16] = a4;
  v7 = sub_26B92A538();
  swift_beginAccess();
  v5[17] = *v7;
  sub_26B9AAAE4();
  v11 = (a5 + *a5);
  v8 = a5[1];
  v9 = swift_task_alloc();
  v5[18] = v9;
  *v9 = v5;
  v9[1] = sub_26B997F30;

  return v11(v5 + 2);
}

uint64_t sub_26B997F30()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B998040, v2, 0);
}

uint64_t sub_26B998040()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v6 = *(v0 + 40);
  *(v0 + 152) = v2;
  *(v0 + 160) = v6;
  v7 = *(v0 + 48);
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 73) = v5;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  v12 = (v1 + *v1);
  v8 = v1[1];
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_26B998168;
  v10 = *(v0 + 128);

  return v12(v0 + 56);
}

uint64_t sub_26B998168()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 136);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_26B9369F4, v4, 0);
}

uint64_t dispatch thunk of QueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_26B8EC52C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of QueryDataSource.stop()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSource.preheat()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSource.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSource.deactivate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EB6C8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSource.reset()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t sub_26B9989B8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_26B99B5A0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_26B9989FC()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 48) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B998A8C, v3, 0);
}

uint64_t sub_26B998A8C()
{
  if (qword_2804326B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280433E08;
  *(v0 + 56) = qword_280433E08;
  v2 = v1[2];
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = **(v0 + 40);
    v4 = *(v3 + 152);
    *(v0 + 72) = v4;
    *(v0 + 80) = (v3 + 152) & 0xFFFFFFFFFFFFLL | 0xCA88000000000000;
    *(v0 + 88) = 0;
    v5 = v1[4];
    *(v0 + 96) = v5;
    v6 = v1[5];
    v7 = *(v5 - 8);
    *(v0 + 104) = v7;
    v8 = *(v7 + 64) + 15;
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    v17 = (v4 + *v4);
    v10 = v4[1];
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = sub_26B998CBC;
    v12 = *(v0 + 80);
    v13 = *(v0 + 40);

    return v17(v9, v5, v5, v6);
  }

  else
  {
    v15 = *(v0 + 48);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26B998CBC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_26B998E28, v5, 0);
}

uint64_t sub_26B998E28()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[11] + 1;

  if (v3 == v2)
  {
    v4 = v0[6];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[10];
    v8 = v0[11] + 1;
    v0[11] = v8;
    v9 = v0[9];
    v10 = v0[7] + 16 * v8;
    v11 = *(v10 + 32);
    v0[12] = v11;
    v12 = *(v10 + 40);
    v13 = *(v11 - 8);
    v0[13] = v13;
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    v0[14] = v15;
    v20 = (v9 + *v9);
    v16 = v9[1];
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_26B998CBC;
    v18 = v0[10];
    v19 = v0[5];

    return v20(v15, v11, v11, v12);
  }
}

uint64_t sub_26B999008()
{
  *(v1 + 104) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 112) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B999098, v3, 0);
}

uint64_t sub_26B999098()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  v3 = *(v2 + 32);
  *(v0 + 152) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 128) = v6;
    *(v0 + 136) = v7;
    sub_26B907F08(*(v2 + 56) + 40 * (__clz(__rbit64(v6)) | (v7 << 6)), v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v11 = *(v10 + 56);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_26B9992B0;

    return v17(v9, v10);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 112);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26B9992B0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 112);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x2822009F8](sub_26B9993C8, v3, 0);
}

void sub_26B9993C8()
{
  v1 = *(v0 + 136);
  v2 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v2)
  {
    v3 = *(v0 + 120);
LABEL_7:
    *(v0 + 128) = v2;
    *(v0 + 136) = v1;
    sub_26B907F08(*(v3 + 56) + 40 * (__clz(__rbit64(v2)) | (v1 << 6)), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v6 + 56);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_26B9992B0;

    v12(v5, v6);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 120);
      if (v4 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 112);

    v11 = *(v0 + 8);

    v11();
  }
}

uint64_t sub_26B9995A8()
{
  *(v1 + 104) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 112) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B999638, v3, 0);
}

uint64_t sub_26B999638()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  v3 = *(v2 + 32);
  *(v0 + 152) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 128) = v6;
    *(v0 + 136) = v7;
    sub_26B907F08(*(v2 + 56) + 40 * (__clz(__rbit64(v6)) | (v7 << 6)), v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v11 = *(v10 + 64);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_26B999850;

    return v17(v9, v10);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 112);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26B999850()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 112);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x2822009F8](sub_26B999968, v3, 0);
}

void sub_26B999968()
{
  v1 = *(v0 + 136);
  v2 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v2)
  {
    v3 = *(v0 + 120);
LABEL_7:
    *(v0 + 128) = v2;
    *(v0 + 136) = v1;
    sub_26B907F08(*(v3 + 56) + 40 * (__clz(__rbit64(v2)) | (v1 << 6)), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v6 + 64);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_26B999850;

    v12(v5, v6);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 120);
      if (v4 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 112);

    v11 = *(v0 + 8);

    v11();
  }
}

uint64_t sub_26B999B48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = (*(a2 + 16))(a1, a2);
  v9 = v8;
  swift_beginAccess();
  v10 = *(v3 + 16);
  if (*(v10 + 16) && (v11 = *(v4 + 16), , v12 = sub_26B9201A8(v7, v9), v14 = v13, , (v14 & 1) != 0))
  {
    sub_26B907F08(*(v10 + 56) + 40 * v12, v17);
  }

  else
  {

    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427208, &unk_26B9B5ED8);
  v15 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a3, v15 ^ 1u, 1, a1);
}

uint64_t sub_26B999C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_26B9ACA34();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = sub_26B92A538();
  swift_beginAccess();
  v10 = *v9;
  v5[21] = v10;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B999D90, v10, 0);
}

uint64_t sub_26B999D90()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  (*(**(v0 + 136) + 144))(*(v0 + 112), v2, *(v0 + 128));
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 160);
  if (v4 == 1)
  {
    v6 = *(v0 + 136);
    v26 = *(v0 + 128);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    (*(*(v0 + 152) + 8))(v5, *(v0 + 144));
    (*(v26 + 24))(v7);
    v9 = (*(v26 + 16))(v7);
    v11 = v10;
    *(v0 + 40) = v7;
    *(v0 + 48) = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v3 + 16))(boxed_opaque_existential_1, v8, v7);
    swift_beginAccess();
    sub_26B99A3D8(v0 + 16, v9, v11);
    swift_endAccess();
    v13 = *(v26 + 48);
    v25 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_26B99A078;
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 104);

    return v25(v17, v16);
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);

    (*(v3 + 32))(v22, v5, v21);
    v23 = *(v0 + 160);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_26B99A078()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v12 = *(*v0 + 128);
  v3 = *v0;

  v4 = *(v12 + 56);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v3;
  v6[1] = sub_26B99A260;
  v7 = v1[16];
  v8 = v1[15];
  v9 = v1[13];

  return v11(v8, v7);
}

uint64_t sub_26B99A260()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B99A370, v2, 0);
}

uint64_t sub_26B99A370()
{
  v1 = v0[21];

  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B99A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26B8ECB70(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_26B99B234(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_26B99BB98(a1);
    sub_26B99AD08(a2, a3, v10);

    return sub_26B99BB98(v10);
  }

  return result;
}

uint64_t sub_26B99A480()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26B99A4B8()
{
  v2 = *(**v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B99A5CC()
{
  v2 = *(**v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B99A6E0()
{
  v2 = *(**v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B99A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

unint64_t sub_26B99A980()
{
  DataSourceManager = type metadata accessor for BaseQueryDataSourceManager();
  v1 = swift_allocObject();
  result = sub_26B99B5A0(MEMORY[0x277D84F90]);
  *(v1 + 16) = result;
  qword_2804326D8 = DataSourceManager;
  unk_2804326E0 = &off_287C610D8;
  qword_2804326C0 = v1;
  return result;
}

uint64_t sub_26B99A9DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804326B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(&qword_2804326C0, a1);
}

uint64_t sub_26B99AA5C(uint64_t *a1)
{
  if (qword_2804326B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_2804326C0, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B99AAEC())()
{
  if (qword_2804326B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Dependencies.dataSourceManager.setter(uint64_t *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for QueryDataSourceManagerKey, &type metadata for QueryDataSourceManagerKey, &off_281FF9CF0);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.dataSourceManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for QueryDataSourceManagerKey, &type metadata for QueryDataSourceManagerKey, &off_281FF9CF0);
  return sub_26B99AC60;
}

void sub_26B99AC60(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for QueryDataSourceManagerKey, &type metadata for QueryDataSourceManagerKey, &off_281FF9CF0);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for QueryDataSourceManagerKey, &type metadata for QueryDataSourceManagerKey, &off_281FF9CF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

double sub_26B99AD08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26B9201A8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26B99B3F8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_26B8ECB70((*(v12 + 56) + 40 * v9), a3);
    sub_26B99B078(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26B99ADB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427210, &qword_26B9B5FB0);
  v36 = a2;
  result = sub_26B9ACD74();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_26B8ECB70(v25, v37);
      }

      else
      {
        sub_26B907F08(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26B8ECB70(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26B99B078(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B9ACB24() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_26B9ACFB4();

      sub_26B9AC574();
      v15 = sub_26B9ACFF4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26B99B234(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9201A8(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26B99B3F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26B99ADB4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26B9201A8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26B9ACF24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_26B8ECB70(a1, v23);
  }

  else
  {
    sub_26B99B388(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26B99B388(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B8ECB70(a4, a5[7] + 40 * a1);
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

void *sub_26B99B3F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427210, &qword_26B9B5FB0);
  v2 = *v0;
  v3 = sub_26B9ACD64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_26B907F08(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26B8ECB70(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_26B99B5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427210, &qword_26B9B5FB0);
    v3 = sub_26B9ACD84();
    v4 = a1 + 32;
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B99BC00(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26B9201A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B8ECB70(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t dispatch thunk of QueryDataSourceManager.heatUp()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSourceManager.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSourceManager.deactivate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of QueryDataSourceManager.dataSource<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_26B8EB6C8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26B99BB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427208, &unk_26B9B5ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B99BC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427218, &qword_26B9B5FB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B99BCC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_26B99BD10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  sub_26B9AAAE4();
}

uint64_t sub_26B99BD70()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  return sub_26B9AAAE4();
}

uint64_t sub_26B99BDA8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

double sub_26B99BDF0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 224))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

__n128 sub_26B99BE4C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 72) = *(a1 + 16);
  *(v3 + 56) = result;
  return result;
}

__n128 sub_26B99BE98@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_26B99BEE0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  return result;
}

uint64_t sub_26B99BF6C(uint64_t a1, uint64_t *a2)
{
  sub_26B9236E8(a1, v5, &qword_2804264B0, &unk_26B9B19C0);
  v3 = *a2;
  return sub_26B99C010(v5);
}

uint64_t sub_26B99C010(uint64_t a1)
{
  swift_beginAccess();
  sub_26B99C14C(a1, v1 + 88);
  v3 = swift_endAccess();
  if ((*(*v1 + 344))(v3))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    sub_26B9236E8(v1 + 88, v9, &qword_2804264B0, &unk_26B9B19C0);
    (*(v5 + 16))(v9, ObjectType, v5);
    swift_unknownObjectRelease();
    sub_26B8EACD8(a1, &qword_2804264B0, &unk_26B9B19C0);
    v7 = v9;
  }

  else
  {
    v7 = a1;
  }

  return sub_26B8EACD8(v7, &qword_2804264B0, &unk_26B9B19C0);
}

uint64_t sub_26B99C14C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264B0, &unk_26B9B19C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B99C208(uint64_t a1, uint64_t *a2)
{
  sub_26B9236E8(a1, v5, &qword_280427220, &qword_26B9B6078);
  v3 = *a2;
  swift_beginAccess();
  sub_26B949F7C(v5, v3 + 128, &qword_280427220, &qword_26B9B6078);
  return swift_endAccess();
}

uint64_t sub_26B99C2E4(uint64_t a1)
{
  swift_beginAccess();
  sub_26B949F7C(a1, v1 + 128, &qword_280427220, &qword_26B9B6078);
  return swift_endAccess();
}

unint64_t sub_26B99C344()
{
  result = qword_280427228;
  if (!qword_280427228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427228);
  }

  return result;
}

uint64_t sub_26B99C3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427230, &unk_26B9B6080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_26B9236E8(a1, &v9 - v6, &qword_280427230, &unk_26B9B6080);
  return (*(**a2 + 304))(v7);
}

uint64_t sub_26B99C4C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_signpostState;
  swift_beginAccess();
  return sub_26B9236E8(v1 + v3, a1, &qword_280427230, &unk_26B9B6080);
}

uint64_t sub_26B99C52C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_signpostState;
  swift_beginAccess();
  sub_26B949F7C(a1, v1 + v3, &qword_280427230, &unk_26B9B6080);
  return swift_endAccess();
}

uint64_t sub_26B99C5FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B99C6A4()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_disallowQueryUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26B99C6E8(char a1)
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_disallowQueryUpdates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26B99C798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26B99C7EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 352);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_26B99C858()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26B99C8A8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26B99C914(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_26B99C9B4;
}

void sub_26B99C9B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t BaseQueryController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  BaseQueryController.init()();
  return v3;
}

uint64_t BaseQueryController.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_26B9AB584();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, (v1 + 16));
  v12 = swift_getKeyPath();
  Dependency.init(_:)(v12, (v1 + 24));
  v13 = swift_getKeyPath();
  Dependency.init(_:)(v13, (v1 + 32));
  v14 = swift_getKeyPath();
  Dependency.init(_:)(v14, (v1 + 40));
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 512;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0;
  v15 = OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_signpostState;
  v16 = sub_26B9A7568();
  (*(v7 + 16))(v10, v16, v6);
  v17 = sub_26B99C344();
  SignpostIntervals.init(with:log:)(0, v10, &type metadata for QuerySignpostInterval, v17, (v1 + v15));
  *(v1 + OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_disallowQueryUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = sub_26B9AC824();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v19 = sub_26B9AC7F4();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v1;
  sub_26B90762C(0, 0, v5, &unk_26B9B6098, v20);

  return v1;
}

uint64_t sub_26B99CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_26B9AC804();
  v4[8] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_26B99CDA4, v6, v5);
}

uint64_t sub_26B99CDA4()
{
  v8 = *(v0[7] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427260, &qword_26B9B6268);
  Dependency.wrappedValue.getter((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26B99CEF4;

  return v7(v1, v2);
}

uint64_t sub_26B99CEF4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_26B9A1B5C, v4, v3);
}

uint64_t sub_26B99D014()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return sub_26B99CD0C(v3, v4, v5, v2);
}

uint64_t sub_26B99D0A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_26B9AC824();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v7 = sub_26B9AC7F4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_26B90762C(0, 0, v5, &unk_26B9B60A8, v8);
}

uint64_t sub_26B99D1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_26B9AC804();
  v4[8] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_26B99D264, v6, v5);
}

uint64_t sub_26B99D264()
{
  v8 = *(v0[7] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427260, &qword_26B9B6268);
  Dependency.wrappedValue.getter((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26B99CEF4;

  return v7(v1, v2);
}

uint64_t sub_26B99D3B4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return sub_26B99D1CC(v3, v4, v5, v2);
}

uint64_t sub_26B99D448()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - v5;
  (*(*v0 + 248))(&v16, v4);
  if (v17)
  {
    sub_26B8ECB70(&v16, v19);
    v15 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427238, &qword_26B9B60C0);
    Dependency.wrappedValue.getter(&v16);
    v7 = v17;
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    LOBYTE(v15) = 2;
    (*(v8 + 8))(v19, &v15, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    sub_26B8EACD8(&v16, &qword_2804264B0, &unk_26B9B19C0);
  }

  v9 = sub_26B9AC824();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v10 = sub_26B9AC7F4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  sub_26B90762C(0, 0, v6, &unk_26B9B60B8, v11);
}

uint64_t sub_26B99D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_26B9AC804();
  v4[8] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_26B99D6E0, v6, v5);
}

uint64_t sub_26B99D6E0()
{
  v8 = *(v0[7] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427260, &qword_26B9B6268);
  Dependency.wrappedValue.getter((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26B99D830;

  return v7(v1, v2);
}

uint64_t sub_26B99D830()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_26B99D950, v4, v3);
}

uint64_t sub_26B99D950()
{
  v1 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26B99D9B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return sub_26B99D648(v3, v4, v5, v2);
}

uint64_t sub_26B99DA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v47 - v13;
  result = (*(*v3 + 320))(v12);
  if ((result & 1) == 0)
  {
    result = (*(*v3 + 344))();
    if (result)
    {
      v17 = v16;
      v54 = result;
      sub_26B99FD54();
      v58 = v3[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427238, &qword_26B9B60C0);
      Dependency.wrappedValue.getter(v64);
      v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = v14;
      v18 = v65;
      v19 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v62 = a2;
      v63 = a3;
      v53 = a3;
      v20 = __swift_allocate_boxed_opaque_existential_1(&v58);
      v52 = v8;
      v21 = *(v8 + 16);
      v21(v20, a1, a2);
      LOBYTE(v57[0]) = 0;
      (*(v19 + 8))(&v58, v57, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      __swift_destroy_boxed_opaque_existential_1(v64);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(&v58, ObjectType, v17);
      v57[0] = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427240, &qword_26B9B60C8);
      Dependency.wrappedValue.getter(v64);
      v23 = v65;
      v24 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v25 = (*(v24 + 16))(v23, v24);
      v51 = v25;
      __swift_destroy_boxed_opaque_existential_1(v64);
      sub_26B926D94(v25);
      v65 = a2;
      v66 = v53;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      v21(boxed_opaque_existential_1, a1, a2);
      sub_26B99C010(v64);
      v27 = v58;
      v28 = v61;
      v29 = v62;
      v30 = 256;
      if (!v60)
      {
        v30 = 0;
      }

      v31 = v30 | v59;
      swift_beginAccess();
      v4[7] = v27;
      v4[8] = v31;
      v4[9] = v28;
      v4[10] = v29;
      v32 = sub_26B9AC824();
      (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
      v21(v55, a1, a2);
      sub_26B9AC804();
      sub_26B9AAAE4();
      v33 = sub_26B9AC7F4();
      v34 = v58;
      v35 = v59;
      v50 = v60;
      v49 = v61;
      v48 = v62;
      v36 = v52;
      v37 = (*(v52 + 80) + 48) & ~*(v52 + 80);
      v38 = (v9 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D85700];
      *(v40 + 2) = v33;
      *(v40 + 3) = v41;
      v42 = v53;
      *(v40 + 4) = a2;
      *(v40 + 5) = v42;
      (*(v36 + 32))(&v40[v37], v55, a2);
      *&v40[v38] = v4;
      *&v40[v39] = v51;
      v43 = &v40[(v39 + 15) & 0xFFFFFFFFFFFFFFF8];
      *v43 = v34;
      v43[8] = v35;
      v43[9] = v50;
      v44 = v48;
      *(v43 + 2) = v49;
      *(v43 + 3) = v44;
      v45 = sub_26B90762C(0, 0, v56, &unk_26B9B60D8, v40);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v46 = v4[6];
      v4[6] = v45;
    }
  }

  return result;
}

uint64_t sub_26B99DF2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, uint64_t a9)
{
  *(v9 + 160) = v22;
  *(v9 + 168) = v23;
  *(v9 + 144) = a9;
  *(v9 + 152) = v21;
  *(v9 + 328) = a8;
  *(v9 + 136) = a1;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 112) = a5;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427230, &unk_26B9B6080) - 8) + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v11 = sub_26B9AC334();
  *(v9 + 184) = v11;
  v12 = *(v11 - 8);
  *(v9 + 192) = v12;
  *(v9 + 200) = *(v12 + 64);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v13 = *(v22 - 8);
  *(v9 + 224) = v13;
  *(v9 + 232) = *(v13 + 64);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  v14 = sub_26B9AB584();
  *(v9 + 256) = v14;
  v15 = *(v14 - 8);
  *(v9 + 264) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  sub_26B9AC804();
  *(v9 + 288) = sub_26B9AC7F4();
  v18 = sub_26B9AC7C4();
  *(v9 + 296) = v18;
  *(v9 + 304) = v17;

  return MEMORY[0x2822009F8](sub_26B99E158, v18, v17);
}

uint64_t sub_26B99E158()
{
  v75 = v0;
  if (sub_26B9AC844())
  {
    v1 = *(v0 + 288);

    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 176);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 280);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 160);
    v17 = *(v0 + 112);
    v67 = sub_26B9A7568();
    v66 = *(v13 + 16);
    v66(v11);
    v68 = *(v15 + 16);
    v68(v14, v17, v16);
    v18 = sub_26B9AB564();
    v19 = sub_26B9AC914();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 280);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    if (v20)
    {
      v25 = *(v0 + 240);
      v72 = *(v0 + 280);
      v26 = *(v0 + 224);
      v27 = *(v0 + 160);
      v69 = *(v0 + 256);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74 = v29;
      *v28 = 136380675;
      v68(v25, v24, v27);
      v30 = sub_26B9AC524();
      v64 = v19;
      v32 = v31;
      (*(v26 + 8))(v24, v27);
      v33 = sub_26B91FC00(v30, v32, &v74);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_26B8E8000, v18, v64, "SearchController: Starting query: %{private}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26D6879F0](v29, -1, -1);
      MEMORY[0x26D6879F0](v28, -1, -1);

      (*(v22 + 8))(v72, v69);
    }

    else
    {
      v34 = *(v0 + 224);
      v35 = *(v0 + 160);

      (*(v34 + 8))(v24, v35);
      (*(v22 + 8))(v21, v23);
    }

    v36 = *(v0 + 272);
    v37 = *(v0 + 256);
    v70 = *(v0 + 240);
    v38 = *(v0 + 216);
    v63 = *(v0 + 224);
    v65 = *(v0 + 232);
    v39 = *(v0 + 208);
    v62 = *(v0 + 200);
    v59 = *(v0 + 192);
    v60 = *(v0 + 184);
    v40 = *(v0 + 176);
    v73 = *(v0 + 168);
    v61 = *(v0 + 160);
    v41 = *(v0 + 144);
    v42 = *(v0 + 328);
    v43 = *(v0 + 136);
    v44 = *(v0 + 120);
    v45 = *(v0 + 128);
    v57 = *(v0 + 152);
    v58 = *(v0 + 112);
    sub_26B9AC324();
    (v66)(v36, v67, v37);
    v46 = sub_26B99C344();
    SignpostIntervals.init(with:log:)(v45, v36, &type metadata for QuerySignpostInterval, v46, v40);
    (*(*v44 + 304))(v40);
    swift_beginAccess();
    v44[7] = v43;
    v44[8] = v42 & 0x1FF;
    v44[9] = v41;
    v44[10] = v57;
    v74 = v44[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427260, &qword_26B9B6268);
    Dependency.wrappedValue.getter(v0 + 16);
    *(v0 + 56) = v43;
    *(v0 + 64) = v42;
    *(v0 + 65) = HIBYTE(v42) & 1;
    *(v0 + 72) = v41;
    *(v0 + 80) = v57;
    (*(v59 + 16))(v39, v38, v60);
    v68(v70, v58, v61);
    v47 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v48 = (v62 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (*(v63 + 80) + v48 + 8) & ~*(v63 + 80);
    v50 = swift_allocObject();
    *(v0 + 312) = v50;
    *(v50 + 16) = v61;
    *(v50 + 24) = v73;
    (*(v59 + 32))(v50 + v47, v39, v60);
    *(v50 + v48) = v44;
    (*(v63 + 32))(v50 + v49, v70, v61);
    v51 = *(v73 + 24);
    sub_26B9AAAE4();
    v71 = (v51 + *v51);
    v52 = v51[1];
    v53 = swift_task_alloc();
    *(v0 + 320) = v53;
    *v53 = v0;
    v53[1] = sub_26B99E74C;
    v54 = *(v0 + 160);
    v55 = *(v0 + 168);
    v56 = *(v0 + 112);

    return v71(v0 + 16, v0 + 56, &unk_26B9B6288, v50, v54, v55);
  }
}

uint64_t sub_26B99E74C()
{
  v1 = *v0;
  v2 = (*v0)[40];
  v3 = (*v0)[39];
  v7 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v4 = v1[38];
  v5 = v1[37];

  return MEMORY[0x2822009F8](sub_26B99E894, v5, v4);
}

uint64_t sub_26B99E894()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];

  (*(v4 + 8))(v2, v3);
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26B99E968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 256) = a5;
  *(v6 + 264) = a6;
  *(v6 + 240) = a3;
  *(v6 + 248) = a4;
  *(v6 + 232) = a2;
  v8 = sub_26B9AC334();
  *(v6 + 272) = v8;
  v9 = *(v8 - 8);
  *(v6 + 280) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v11 = sub_26B9AB584();
  *(v6 + 304) = v11;
  v12 = *(v11 - 8);
  *(v6 + 312) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = *a1;
  *(v6 + 92) = *(a1 + 16);
  *(v6 + 93) = *(a1 + 17);
  *(v6 + 344) = *(a1 + 24);
  *(v6 + 94) = *(a1 + 32);
  sub_26B9AC804();
  *(v6 + 352) = sub_26B9AC7F4();
  v15 = sub_26B9AC7C4();
  *(v6 + 360) = v15;
  *(v6 + 368) = v14;

  return MEMORY[0x2822009F8](sub_26B99EAFC, v15, v14);
}

unint64_t sub_26B99EAFC()
{
  v49 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 232);
  v8 = sub_26B9A7568();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC914();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 296);
  if (v11)
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v15 = *(v0 + 272);
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    sub_26B9AC324();
    v17 = sub_26B9AC314();
    v18 = *(v14 + 8);
    v18(v13, v15);
    result = sub_26B9AC314();
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    v20 = v17 - result;
    v18(*(v0 + 296), *(v0 + 272));
    *(v16 + 4) = v20 / 0xF4240;
    _os_log_impl(&dword_26B8E8000, v9, v10, "SearchController: Finished query: %llums", v16, 0xCu);
    MEMORY[0x26D6879F0](v16, -1, -1);
  }

  else
  {
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
  }

  v21 = *(v0 + 92);
  v23 = *(v0 + 312);
  v22 = *(v0 + 320);
  v24 = *(v0 + 304);
  v25 = *(v0 + 240);

  (*(v23 + 8))(v22, v24);
  *(v0 + 89) = 1;
  v26 = *(*v25 + 312);
  v27 = v26(v0 + 136);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427230, &unk_26B9B6080);
  SignpostIntervals.finish(interval:)(v0 + 89, v28);
  v27(v0 + 136, 0);
  if (v21 == 1)
  {
    v29 = *(v0 + 240);
    *(v0 + 91) = 2;
    v30 = v26(v0 + 200);
    SignpostIntervals.finish(interval:)(v0 + 91, v28);
    v30(v0 + 200, 0);
  }

  if (*(v0 + 93) == 1)
  {
    v31 = *(v0 + 240);
    *(v0 + 90) = 3;
    v32 = v26(v0 + 168);
    SignpostIntervals.finish(interval:)(v0 + 90, v28);
    v32(v0 + 168, 0);
    v33 = *(v0 + 93);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v0 + 94);
  v36 = *(v0 + 336);
  v35 = *(v0 + 344);
  v37 = *(v0 + 92);
  v38 = *(v0 + 328);
  v39 = *(v0 + 248);
  v43 = *(v0 + 256);
  *(v0 + 120) = v43;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, v39);
  v44[0] = v38;
  v44[1] = v36;
  v45 = v37;
  v46 = v33;
  v47 = v35;
  v48 = v34;

  sub_26B928460((v0 + 96), v44, v0 + 16);
  v41 = swift_task_alloc();
  *(v0 + 376) = v41;
  *v41 = v0;
  v41[1] = sub_26B99EEFC;
  v42 = *(v0 + 240);

  return sub_26B9A0A04(v0 + 16);
}

uint64_t sub_26B99EEFC()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v6 = *v0;

  sub_26B9A1914(v1 + 16);
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_26B99F028, v4, v3);
}

uint64_t sub_26B99F028()
{
  v1 = v0[44];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B99F0B0(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = sub_26B9AC824();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v10 = sub_26B9AC7F4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  *(v11 + 40) = v8;
  sub_26B90762C(0, 0, v7, &unk_26B9B60E8, v11);
}

uint64_t sub_26B99F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 296) = a5;
  *(v5 + 248) = a4;
  sub_26B9AC804();
  *(v5 + 256) = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();
  *(v5 + 264) = v7;
  *(v5 + 272) = v6;

  return MEMORY[0x2822009F8](sub_26B99F27C, v7, v6);
}

uint64_t sub_26B99F27C()
{
  v24 = v0;
  v1 = (*(**(v0 + 248) + 224))(&v20);
  v2 = BYTE1(v21);
  if ((v21 & 0xFF00) == 0x200)
  {
    v3 = *(v0 + 256);

LABEL_13:
    v18 = *(v0 + 8);

    return v18();
  }

  v4 = v22;
  v5 = v23;
  v6 = v20;
  (*(**(v0 + 248) + 248))(v1);
  if (!*(v0 + 120))
  {
    v16 = *(v0 + 256);

    sub_26B8EACD8(v0 + 96, &qword_2804264B0, &unk_26B9B19C0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
LABEL_12:
    sub_26B8EACD8(v0 + 56, &qword_280427250, &unk_26B9B6250);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427258, &qword_26B9B6260);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  if (!*(v0 + 80))
  {
LABEL_11:
    v17 = *(v0 + 256);

    goto LABEL_12;
  }

  v7 = *(v0 + 296);
  v8 = *(v0 + 248);
  sub_26B8ECB70((v0 + 56), v0 + 16);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  v20 = *(v8 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427260, &qword_26B9B6268);
  Dependency.wrappedValue.getter(v0 + 136);
  *(v0 + 216) = v6;
  *(v0 + 224) = v7 & 1;
  *(v0 + 225) = v2 & 1;
  *(v0 + 232) = v4;
  *(v0 + 240) = v5;
  sub_26B907F08(v0 + 16, v0 + 176);
  v11 = swift_allocObject();
  *(v0 + 280) = v11;
  *(v11 + 16) = v8;
  sub_26B8ECB70((v0 + 176), v11 + 24);
  v12 = *(v10 + 40);
  sub_26B9AAAE4();
  v19 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 288) = v14;
  *v14 = v0;
  v14[1] = sub_26B99F604;

  return v19(v0 + 136, v0 + 216, &unk_26B9B6278, v11, v9, v10);
}

uint64_t sub_26B99F604()
{
  v1 = *v0;
  v2 = (*v0)[36];
  v3 = (*v0)[35];
  v7 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 17);
  v4 = v1[34];
  v5 = v1[33];

  return MEMORY[0x2822009F8](sub_26B99F74C, v5, v4);
}

uint64_t sub_26B99F74C()
{
  v1 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26B99F7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  *(v3 + 152) = *a1;
  *(v3 + 89) = *(a1 + 16);
  *(v3 + 90) = *(a1 + 17);
  *(v3 + 168) = *(a1 + 24);
  *(v3 + 91) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_26B99F7FC, 0, 0);
}

uint64_t sub_26B99F7FC()
{
  v20 = v0;
  v1 = *(v0 + 91);
  v2 = *(v0 + 90);
  v3 = *(v0 + 89);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = v6[3];
  v9 = v6[4];
  v10 = __swift_project_boxed_opaque_existential_1(v6, v8);
  *(v0 + 120) = v8;
  *(v0 + 128) = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  v15[0] = v7;
  v15[1] = v5;
  v16 = v3;
  v17 = v2;
  v18 = v4;
  v19 = v1;

  sub_26B928460((v0 + 96), v15, v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_26B99F950;
  v13 = *(v0 + 136);

  return sub_26B9A0A04(v0 + 16);
}

uint64_t sub_26B99F950()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v5 = *v0;

  sub_26B9A1914(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26B99FA4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - v5;
  result = (*(*v0 + 320))(v4);
  if ((result & 1) == 0)
  {
    v8 = sub_26B9AC824();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_26B9AC804();
    sub_26B9AAAE4();
    v9 = sub_26B9AC7F4();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v1;
    sub_26B90762C(0, 0, v6, &unk_26B9B60F8, v10);
  }

  return result;
}

uint64_t sub_26B99FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26B9AC804();
  *(v4 + 24) = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B99FC44, v6, v5);
}

uint64_t sub_26B99FC44()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_26B99FD54();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26B99FCA8()
{
  result = (*(*v0 + 320))();
  if ((result & 1) == 0)
  {
    EmptyQuery.init()();
    v2 = *(*v0 + 392);
    v3 = sub_26B903C04();
    v2(&v4, &type metadata for EmptyQuery, v3);
  }

  return result;
}

uint64_t sub_26B99FD54()
{
  v1 = v0;
  v2 = sub_26B9AB584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29[-v10];
  (*(*v0 + 248))(&v31, v9);
  if (!*(&v32 + 1))
  {
    return sub_26B8EACD8(&v31, &qword_2804264B0, &unk_26B9B19C0);
  }

  sub_26B8ECB70(&v31, v34);
  v12 = sub_26B9AC824();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_26B907F08(v34, &v31);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v13 = sub_26B9AC7F4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  sub_26B8ECB70(&v31, (v14 + 4));
  v14[9] = v1;
  sub_26B90762C(0, 0, v11, &unk_26B9B62A0, v14);

  v16 = sub_26B9A7568();
  (*(v3 + 16))(v6, v16, v2);
  sub_26B907F08(v34, &v31);
  v17 = sub_26B9AB564();
  v18 = sub_26B9AC914();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136380675;
    sub_26B907F08(&v31, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
    v21 = sub_26B9AC524();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v31);
    v24 = sub_26B91FC00(v21, v23, &v30);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_26B8E8000, v17, v18, "SearchController: Cancelled current query: %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x26D6879F0](v20, -1, -1);
    MEMORY[0x26D6879F0](v19, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  (*(v3 + 8))(v6, v2);
  v26 = (*(*v1 + 312))(&v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427230, &unk_26B9B6080);
  SignpostIntervals.finishAll()();
  v26(&v31, 0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v27 = sub_26B99C010(&v31);
  if ((*(*v1 + 200))(v27))
  {
    sub_26B9AC834();
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  swift_beginAccess();
  v28 = v1[6];
  v1[6] = 0;
}

uint64_t sub_26B9A01D8()
{
  v2 = *(v0 + 32);
  v18 = *(v0 + 40);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (*(v8 + 9))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_26B8EC52C;

  return sub_26B99DF2C(v9, v14, v15, v16, v0 + v3, v6, v7, v13 | v10, v11);
}

uint64_t sub_26B9A034C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EC52C;

  return sub_26B99F1E0(v4, v5, v6, v2, v3);
}

uint64_t sub_26B9A03E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return sub_26B99FBAC(v3, v4, v5, v2);
}

uint64_t sub_26B9A047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = sub_26B9AB584();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  sub_26B9AC804();
  v5[22] = sub_26B9AC7F4();
  v10 = sub_26B9AC7C4();
  v5[23] = v10;
  v5[24] = v9;

  return MEMORY[0x2822009F8](sub_26B9A0570, v10, v9);
}

uint64_t sub_26B9A0570()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v10 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427260, &qword_26B9B6268);
  Dependency.wrappedValue.getter((v0 + 2));
  v5 = *(v4 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_26B9A06D0;

  return (v9)(v0 + 2, v3, v4);
}

uint64_t sub_26B9A06D0()
{
  v1 = *v0;
  v2 = (*v0)[25];
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v3 = v1[24];
  v4 = v1[23];

  return MEMORY[0x2822009F8](sub_26B9A07FC, v4, v3);
}

uint64_t sub_26B9A07FC()
{
  v25 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];

  v6 = sub_26B9A7568();
  (*(v4 + 16))(v2, v6, v3);
  sub_26B907F08(v5, (v0 + 7));
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC914();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136380675;
    sub_26B907F08((v0 + 7), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
    v14 = sub_26B9AC524();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v17 = sub_26B91FC00(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_26B8E8000, v7, v8, "SearchController: Stopped query: %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D6879F0](v13, -1, -1);
    MEMORY[0x26D6879F0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[19];

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[21];

  v22 = v0[1];

  return v22();
}

uint64_t sub_26B9A0A04(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_26B9AB584();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  sub_26B9AC804();
  v2[20] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9A0AF8, v7, v6);
}

uint64_t sub_26B9A0AF8()
{
  v26 = v0;
  v1 = v0[20];
  v2 = v0[16];

  if ((*(*v2 + 344))(v3))
  {
    v5 = v4;
    (*(*v0[16] + 224))(&v23);
    if (v24 << 8 == 512 || (v6 = v0[15], *(v6 + 48) != v25))
    {
      v10 = v0[18];
      v9 = v0[19];
      v11 = v0[17];
      v12 = sub_26B9A7568();
      (*(v10 + 16))(v9, v12, v11);
      v13 = sub_26B9AB564();
      v14 = sub_26B9AC914();
      v15 = os_log_type_enabled(v13, v14);
      v17 = v0[18];
      v16 = v0[19];
      v18 = v0[17];
      if (v15)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_26B8E8000, v13, v14, "SearchController: Retrieved results for query that is no longer active.", v19, 2u);
        MEMORY[0x26D6879F0](v19, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v7 = v0[16];
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(v6, ObjectType, v5);
      swift_unknownObjectRelease();
      sub_26B92929C(v6, (v0 + 2));
      swift_beginAccess();
      sub_26B949F7C((v0 + 2), v7 + 128, &qword_280427220, &qword_26B9B6078);
      swift_endAccess();
    }
  }

  v20 = v0[19];

  v21 = v0[1];

  return v21();
}

void *BaseQueryController.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  sub_26B8EACD8((v0 + 11), &qword_2804264B0, &unk_26B9B19C0);
  sub_26B8EACD8((v0 + 16), &qword_280427220, &qword_26B9B6078);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_signpostState, &qword_280427230, &unk_26B9B6080);
  sub_26B9A0DF4(v0 + OBJC_IVAR____TtC17SpotlightUIShared19BaseQueryController_delegate);
  return v0;
}

uint64_t BaseQueryController.__deallocating_deinit()
{
  BaseQueryController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*sub_26B9A0F40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 360))();
  return sub_26B9A1B60;
}

uint64_t (*sub_26B9A1030(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 336))();
  return sub_26B9A10C8;
}

void sub_26B9A10CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t type metadata accessor for BaseQueryController()
{
  result = qword_280432708;
  if (!qword_280432708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B9A13D8()
{
  sub_26B9A1810();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26B9A1810()
{
  if (!qword_280427248)
  {
    sub_26B99C344();
    v0 = type metadata accessor for SignpostIntervals();
    if (!v1)
    {
      atomic_store(v0, &qword_280427248);
    }
  }
}

uint64_t sub_26B9A186C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B99F7B4(a1, v4, v1 + 24);
}

uint64_t sub_26B9A1968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(sub_26B9AC334() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80);
  v10 = *(v1 + v8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26B8EC52C;

  return sub_26B99E968(a1, v1 + v7, v10, v1 + v9, v4, v5);
}

uint64_t sub_26B9A1AC4()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return sub_26B9A047C(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_26B9A1B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_26B9A1C38(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26B9A1C68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26B9A1C94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

SpotlightUIShared::QueryDisplayStyle_optional __swiftcall QueryDisplayStyle.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_26B9A1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26B9ACEB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26B9A1F68(uint64_t a1)
{
  v2 = sub_26B9A212C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B9A1FA4(uint64_t a1)
{
  v2 = sub_26B9A212C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t QueryViewOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427268, &qword_26B9B62A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B9A212C();
  sub_26B9AD014();
  v12 = v8;
  sub_26B9A2180();
  sub_26B9ACE44();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B9A212C()
{
  result = qword_280432720[0];
  if (!qword_280432720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280432720);
  }

  return result;
}

unint64_t sub_26B9A2180()
{
  result = qword_280427270;
  if (!qword_280427270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427270);
  }

  return result;
}

uint64_t QueryViewOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427278, &qword_26B9B62B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B9A212C();
  sub_26B9AD004();
  if (!v2)
  {
    sub_26B9A2340();
    sub_26B9ACE04();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26B9A2340()
{
  result = qword_280427280;
  if (!qword_280427280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427280);
  }

  return result;
}

unint64_t sub_26B9A2398()
{
  result = qword_280427288;
  if (!qword_280427288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427288);
  }

  return result;
}

unint64_t sub_26B9A23F0()
{
  result = qword_280427290;
  if (!qword_280427290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427290);
  }

  return result;
}

unint64_t sub_26B9A2448()
{
  result = qword_280427298;
  if (!qword_280427298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427298);
  }

  return result;
}

unint64_t sub_26B9A24A0()
{
  result = qword_2804272A0;
  if (!qword_2804272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804272A0);
  }

  return result;
}

unint64_t sub_26B9A24F8()
{
  result = qword_2804272A8;
  if (!qword_2804272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804272A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryViewOptionsCapabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QueryViewOptionsCapabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_26B9A2610()
{
  result = qword_280432E30[0];
  if (!qword_280432E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280432E30);
  }

  return result;
}

unint64_t sub_26B9A2668()
{
  result = qword_280432F40;
  if (!qword_280432F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280432F40);
  }

  return result;
}

unint64_t sub_26B9A26C0()
{
  result = qword_280432F48[0];
  if (!qword_280432F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280432F48);
  }

  return result;
}

uint64_t sub_26B9A2720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9B0460;
  v1 = *MEMORY[0x277D65A10];
  *(inited + 32) = sub_26B9AC504();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277D65A28];
  *(inited + 48) = sub_26B9AC504();
  *(inited + 56) = v4;
  v5 = *MEMORY[0x277D65A60];
  *(inited + 64) = sub_26B9AC504();
  *(inited + 72) = v6;
  v7 = *MEMORY[0x277D65B20];
  *(inited + 80) = sub_26B9AC504();
  *(inited + 88) = v8;
  v9 = *MEMORY[0x277D65B28];
  *(inited + 96) = sub_26B9AC504();
  *(inited + 104) = v10;
  v11 = sub_26B9A4BA8(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_280433E28 = v11;
  return result;
}

uint64_t sub_26B9A2814()
{
  result = os_variant_has_internal_diagnostics();
  byte_280433E30 = result;
  return result;
}

uint64_t sub_26B9A283C@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_26B9AC4C4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_26B9AC4C4();
    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_26B9ACAD4();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      v7 = sub_26B9AB1B4();
      v8 = swift_dynamicCast();
      return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  sub_26B8EACD8(&v13, &qword_2804265B8, &qword_26B9B1F70);
  v10 = sub_26B9AB1B4();
  return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
}

void sub_26B9A29F8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B9AC4C4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = v2;
    v4 = sub_26B9AC4C4();
    [v3 doubleForKey_];
  }
}

void sub_26B9A2B90(void *a1)
{
  if (qword_280432FD8 != -1)
  {
LABEL_43:
    v29 = a1;
    swift_once();
    a1 = v29;
  }

  if (byte_280433E30 != 1 || *(v1 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_invalidated) == 1 && (*(v1 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_queryID + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_queryID) >= a1[6])
  {
    return;
  }

  v57 = OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_invalidated;
  v58 = a1;
  v2 = a1[5];
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      v30 = a1[5];
    }

    a1 = sub_26B9ACB44();
    v4 = a1;
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = &selRef_setObject_forKey_;
  v59 = v1;
  if (!v4)
  {
    v8 = 0;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v56 = (v2 >> 62);
  v6 = 0;
  v60 = v2 & 0xC000000000000001;
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  v8 = 0x800000026B9BA820;
  while (1)
  {
    if (v60)
    {
      a1 = MEMORY[0x26D686B00](v6, v2);
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_42;
      }

      a1 = *(v2 + 8 * v6 + 32);
    }

    v9 = a1;
    v10 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v11 = [a1 bundleIdentifier];
    if (v11)
    {
      break;
    }

LABEL_10:

    ++v6;
    if (v10 == v4)
    {
      v8 = 0;
      v5 = &selRef_setObject_forKey_;
      goto LABEL_50;
    }
  }

  v12 = v2;
  v13 = v11;
  v14 = sub_26B9AC504();
  v1 = v15;

  if (v14 != 0xD00000000000001BLL || 0x800000026B9BA820 != v1)
  {
    v17 = sub_26B9ACEB4();

    v2 = v12;
    if (v17)
    {
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v2 = v12;
LABEL_27:
  v5 = &selRef_setObject_forKey_;
  v20 = [v9 results];

  v19 = v59;
  if (!v20)
  {
    goto LABEL_49;
  }

  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v3 = sub_26B9AC6F4();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_48:

LABEL_49:
    v8 = 0;
    goto LABEL_50;
  }

  if (!sub_26B9ACB44())
  {
    goto LABEL_48;
  }

LABEL_30:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_111;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_113;
  }

  v21 = *(v3 + 32);
  while (2)
  {
    v22 = v21;

    v8 = v22;
    v23 = [v8 resultBundleId];
    if (v23)
    {
      v24 = v23;
      v20 = sub_26B9AC504();
      v3 = v25;

      if (qword_280432FD0 != -1)
      {
LABEL_113:
        swift_once();
      }

      v26 = sub_26B9179E4(v20, v3, qword_280433E28);

      if (v26)
      {

LABEL_38:
        v28 = *(v19 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command);
        *(v19 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command) = 0;

        return;
      }
    }

    v27 = [v8 isInstantAnswer];

    if (v27)
    {
      goto LABEL_38;
    }

LABEL_50:
    v3 = v56;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v56)
    {
LABEL_24:
      v19 = sub_26B9ACB44();
    }

    else
    {
LABEL_51:
      v19 = *(v18 + 16);
    }

    if (!v19)
    {
      goto LABEL_107;
    }

    v31 = v2 & 0xC000000000000001;
    v32 = v2 & 0xFFFFFFFFFFFFFF8;
    v55 = v2 + 32;
    v56 = v8;
    v8 = &off_279D10000;
    v53 = v2 & 0xC000000000000001;
    v54 = v2;
    v52 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_54:
    v33 = __OFSUB__(v19--, 1);
    if (v33)
    {
      goto LABEL_106;
    }

    if (v31)
    {
      v34 = MEMORY[0x26D686B00](v19, v2);
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v21 = MEMORY[0x26D686B00](0, v3);
        continue;
      }

      if (v19 >= *(v32 + 16))
      {
        goto LABEL_110;
      }

      v34 = *(v55 + 8 * v19);
    }

    break;
  }

  v35 = v34;
  v36 = [v34 v5[131]];
  if (!v36)
  {
    goto LABEL_96;
  }

  v3 = v36;
  v61 = v35;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v37 = sub_26B9AC6F4();

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_66;
    }

LABEL_95:

    v2 = v54;
    v5 = &selRef_setObject_forKey_;
    v32 = v52;
    v31 = v53;
    v35 = v61;
LABEL_96:

    if (!v19)
    {

      goto LABEL_108;
    }

    goto LABEL_54;
  }

  v38 = sub_26B9ACB44();
  if (!v38)
  {
    goto LABEL_95;
  }

LABEL_66:
  while (2)
  {
    v33 = __OFSUB__(v38--, 1);
    if (!v33)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x26D686B00](v38, v37);
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_102;
        }

        if (v38 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v39 = *(v37 + 32 + 8 * v38);
      }

      v40 = v39;
      v41 = [v39 inlineCard];
      if (!v41)
      {
        goto LABEL_81;
      }

      v3 = v41;
      v42 = [v41 cardSections];

      if (!v42)
      {
        goto LABEL_81;
      }

      sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
      v3 = sub_26B9AC6F4();

      if (v3 >> 62)
      {
        if (!sub_26B9ACB44())
        {
          goto LABEL_80;
        }

LABEL_76:
        if ((v3 & 0xC000000000000001) != 0)
        {
          goto LABEL_91;
        }

        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

LABEL_87:
        v45 = *(v3 + 32);
      }

      else
      {
        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

LABEL_80:

LABEL_81:
        v43 = [v40 compactCard];
        if (!v43 || (v3 = v43, v44 = [v43 cardSections], v3, !v44))
        {

          goto LABEL_65;
        }

        sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
        v3 = sub_26B9AC6F4();

        if (!(v3 >> 62))
        {
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

LABEL_93:

LABEL_65:
          if (!v38)
          {
            goto LABEL_95;
          }

          continue;
        }

        if (!sub_26B9ACB44())
        {
          goto LABEL_93;
        }

LABEL_85:
        if ((v3 & 0xC000000000000001) == 0)
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          goto LABEL_87;
        }

LABEL_91:
        v45 = MEMORY[0x26D686B00](0, v3);
      }

      v46 = v45;

      v3 = [v46 command];

      if (v3)
      {
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = v47;

          v49 = v48;
          goto LABEL_99;
        }
      }

      goto LABEL_65;
    }

    break;
  }

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

LABEL_108:
  v49 = 0;
LABEL_99:
  v50 = *(v59 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command);
  *(v59 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command) = v49;

  v51 = v59 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_queryID;
  *v51 = v58[6];
  *(v51 + 8) = 0;
  *(v59 + v57) = 0;
}

void sub_26B9A3334()
{
  if (qword_280432FD8 != -1)
  {
    swift_once();
  }

  if (byte_280433E30 == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notifiedCommand);
    if (v1)
    {
      v5 = v1;
      [v5 setComponentID_];
      v2 = sub_26B9AC4C4();
      [v5 setComponentName_];

      v3 = sub_26B9AC4C4();
      [v5 setComponentVersion_];

      v4 = sub_26B9AC4C4();
      [v5 setProblemTemplate_];

      [objc_opt_self() fileRadarWithCommand_];
    }
  }
}

void sub_26B9A34B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  if (qword_280432FD8 != -1)
  {
    swift_once();
  }

  if (byte_280433E30 == 1 && (v0[OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_invalidated] & 1) == 0)
  {
    v5 = *&v0[OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command];
    if (v5)
    {
      v6 = sub_26B9AC824();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      sub_26B9AC804();
      v7 = v5;
      v8 = v0;
      v9 = sub_26B9AC7F4();
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D85700];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v8;
      v10[5] = v7;
      sub_26B90762C(0, 0, v4, &unk_26B9B6748, v10);
    }
  }
}

uint64_t sub_26B9A364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427350, &unk_26B9B67D0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v7 = sub_26B9AB1B4();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_26B9AC804();
  v5[25] = sub_26B9AC7F4();
  v11 = sub_26B9AC7C4();
  v5[26] = v11;
  v5[27] = v10;

  return MEMORY[0x2822009F8](sub_26B9A3784, v11, v10);
}

uint64_t sub_26B9A3784()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_26B9A283C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26B8EACD8(v0[20], &unk_280427350, &unk_26B9B67D0);
LABEL_7:
    v18 = [objc_opt_self() currentNotificationCenter];
    v0[28] = v18;
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_26B9A3A08;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427360, &qword_26B9B6820);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26B9A3D04;
    v0[13] = &block_descriptor_5;
    v0[14] = v19;
    [v18 requestAuthorizationWithOptions:4 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[18];
  (*(v7 + 32))(v5, v0[20], v6);
  sub_26B9AB194();
  sub_26B9AB174();
  v10 = v9;
  v11 = *(v7 + 8);
  v11(v4, v6);
  v11(v5, v6);
  if (fabs(v10) >= *(v8 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notificationMinInterval))
  {
    goto LABEL_7;
  }

  v12 = v0[25];

  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26B9A3A08()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_26B9A3BD0;
  }

  else
  {
    v6 = sub_26B9A3B38;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26B9A3B38()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);

  v3 = *(v0 + 240);

  if (v3 == 1)
  {
    v4 = *(v0 + 144);
    sub_26B9A3DE4(*(v0 + 152));
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 160);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26B9A3BD0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];

  swift_willThrow();

  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26B9A3C6C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return sub_26B9A364C(v4, v5, v6, v2, v3);
}

uint64_t sub_26B9A3D04(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426530, &unk_26B9B1CA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_26B9A3DE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427350, &unk_26B9B67D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  sub_26B9AAF14();

  v10 = sub_26B9AC4C4();

  [v7 setTitle_];

  v11 = [v8 mainBundle];
  sub_26B9AAF14();

  v12 = sub_26B9AC4C4();

  [v7 setBody_];

  v13 = v7;
  v14 = sub_26B9AC4C4();
  v15 = [objc_opt_self() requestWithIdentifier:v14 content:v13 trigger:0];

  sub_26B9AB194();
  v16 = sub_26B9AB1B4();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  sub_26B9A4D10(v6);
  v17 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notifiedCommand);
  *(v1 + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notifiedCommand) = a1;
  v18 = a1;

  v19 = objc_opt_self();
  v20 = [v19 currentNotificationCenter];
  [v20 setDelegate_];

  v21 = [v19 currentNotificationCenter];
  [v21 addNotificationRequest:v15 withCompletionHandler:0];
}

uint64_t sub_26B9A4124(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26B8EB6C8;

  return (sub_26B9A4EDC)(a2);
}

uint64_t sub_26B9A4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_26B9AC804();
  v4[6] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9A43FC, v6, v5);
}

uint64_t sub_26B9A43FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26B9A44E0;
  v10 = v0[5];
  v11 = v0[3];

  return sub_26B9A4EDC(v11);
}

uint64_t sub_26B9A44E0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

id BaseTTRManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTTRManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26B9A4830()
{
  v0 = type metadata accessor for BaseTTRManager();
  result = [objc_allocWithZone(v0) init];
  qword_280433000 = v0;
  unk_280433008 = &protocol witness table for BaseTTRManager;
  qword_280432FE8 = result;
  return result;
}

uint64_t sub_26B9A487C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280432FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(&qword_280432FE8, a1);
}

uint64_t sub_26B9A48FC(uint64_t *a1)
{
  if (qword_280432FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_280432FE8, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B9A498C())()
{
  if (qword_280432FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Dependencies.ttrManager.setter(uint64_t *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for TTRManagerKey, &type metadata for TTRManagerKey, &off_281FF9F38);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.ttrManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for TTRManagerKey, &type metadata for TTRManagerKey, &off_281FF9F38);
  return sub_26B9A4B00;
}

void sub_26B9A4B00(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for TTRManagerKey, &type metadata for TTRManagerKey, &off_281FF9F38);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for TTRManagerKey, &type metadata for TTRManagerKey, &off_281FF9F38);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t sub_26B9A4BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426340, &qword_26B9B0D08);
    v3 = sub_26B9ACBA4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_26B9ACFB4();

      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_26B9ACEB4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26B9A4D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427350, &unk_26B9B67D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_26B9AC4C4();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    sub_26B9236E8(a1, v5, &unk_280427350, &unk_26B9B67D0);
    v9 = sub_26B9AB1B4();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v11 = sub_26B9AB184();
      (*(v10 + 8))(v5, v9);
    }

    v12 = sub_26B9AC4C4();
    [v8 setObject:v11 forKey:v12];

    swift_unknownObjectRelease();
  }

  return sub_26B8EACD8(a1, &unk_280427350, &unk_26B9B67D0);
}

uint64_t sub_26B9A4EDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_26B9AC804();
  v2[4] = sub_26B9AC7F4();
  v4 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9A4F74, v4, v3);
}

uint64_t sub_26B9A4F74()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = [v2 notification];
  v4 = [v3 request];

  v5 = [v4 identifier];
  v6 = sub_26B9AC504();
  v8 = v7;

  if (v6 == 0xD000000000000024 && 0x800000026B9BA600 == v8)
  {
  }

  else
  {
    v10 = sub_26B9ACEB4();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = [*(v0 + 16) actionIdentifier];
  v12 = sub_26B9AC504();
  v14 = v13;

  v15 = *MEMORY[0x277CE20E8];
  if (v12 == sub_26B9AC504() && v14 == v16)
  {
  }

  else
  {
    v18 = sub_26B9ACEB4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0xF8))(v17);
LABEL_13:
  v19 = *(v0 + 8);

  return v19();
}

uint64_t dispatch thunk of BaseTTRManager.userNotificationCenter(_:didReceive:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x118);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return v10(a1, a2);
}

uint64_t sub_26B9A5418()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26B8EC52C;

  return sub_26B9A4360(v2, v3, v5, v4);
}

id ToolDefinition.spui_image.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AA0, &qword_26B9B3C60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v32 - v2;
  v4 = sub_26B9AC034();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9AB884();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AD0, &qword_26B9B3CD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_26B9ABBB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9AB894();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26B8EACD8(v15, &qword_280426AD0, &qword_26B9B3CD8);
    v21 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    sub_26B9AB8D4();
    v22 = v32;
    v23 = *(v32 + 48);
    if (v23(v3, 1, v4) == 1)
    {
      v24 = v33;
      sub_26B9AB8C4();
      if (v23(v3, 1, v4) != 1)
      {
        sub_26B8EACD8(v3, &qword_280426AA0, &qword_26B9B3C60);
      }
    }

    else
    {
      v24 = v33;
      (*(v22 + 32))(v33, v3, v4);
    }

    sub_26B9AC024();
    (*(v22 + 8))(v24, v4);
    v30 = sub_26B9AC4C4();

    [v21 setBundleIdentifier_];
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v25 = [objc_allocWithZone(MEMORY[0x277D4C620]) init];
    (*(v17 + 16))(v11, v20, v16);
    (*(v8 + 104))(v11, *MEMORY[0x277D721E8], v7);
    v21 = v25;
    v26 = sub_26B9AB874();
    v28 = v27;
    (*(v8 + 8))(v11, v7);
    if (v28 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_26B9AB114();
      sub_26B96C918(v26, v28);
    }

    [v21 setImageData_];

    (*(v17 + 8))(v20, v16);
  }

  return v21;
}

id AddFilterCommand.__allocating_init(searchFilter:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17SpotlightUIShared16AddFilterCommand_searchFilter] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AddFilterCommand.init(searchFilter:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17SpotlightUIShared16AddFilterCommand_searchFilter] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddFilterCommand();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AddFilterCommand.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddFilterCommand.__allocating_init(protobuf:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithProtobuf_];

  return v3;
}

id AddFilterCommand.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddFilterCommand();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Debouncer.__allocating_init(delay:action:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 40) = a3;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  return result;
}

uint64_t Debouncer.init(delay:action:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t sub_26B9A5CF8()
{
  if (*(v0 + 16))
  {
    sub_26B9AAAE4();
    sub_26B9AC354();

    v1 = *(v0 + 16);
  }

  *(v0 + 16) = 0;
}

uint64_t sub_26B9A5D54()
{
  v1 = v0;
  v2 = sub_26B9AC334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = sub_26B9AC2E4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  (*(*v0 + 136))(v12);
  aBlock[4] = sub_26B9A6018;
  v24 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B9061AC;
  aBlock[3] = &block_descriptor_6;
  _Block_copy(aBlock);
  v22[1] = MEMORY[0x277D84F90];
  sub_26B9A6058();
  sub_26B9AAAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426F90, &qword_26B9B6860);
  sub_26B9A60B0();
  sub_26B9ACB04();
  v13 = sub_26B9AC364();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26B9AC344();

  v17 = v0[2];
  v1[2] = v16;
  sub_26B9AAAE4();

  sub_26B9A6114();
  v18 = sub_26B9AC954();
  sub_26B9AC324();
  v19 = v1[5];
  sub_26B9AC374();
  v20 = *(v3 + 8);
  v20(v7, v2);
  sub_26B9AC944();

  return (v20)(v9, v2);
}

uint64_t sub_26B9A6018()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

unint64_t sub_26B9A6058()
{
  result = qword_280426F88;
  if (!qword_280426F88)
  {
    sub_26B9AC2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F88);
  }

  return result;
}

unint64_t sub_26B9A60B0()
{
  result = qword_280426F98;
  if (!qword_280426F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426F90, &qword_26B9B6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F98);
  }

  return result;
}

unint64_t sub_26B9A6114()
{
  result = qword_280426F80;
  if (!qword_280426F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426F80);
  }

  return result;
}

uint64_t Debouncer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Debouncer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t static Dependencies.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26B9A6988(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*static Dependencies.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = a4;
  *v9 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  (*(a4 + 16))(a3, a4);
  return sub_26B9A6474;
}

void sub_26B9A6474(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_26B9A6988(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_26B9A6988((*a1)[6], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static Dependencies.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x277D84308] + 8) - 8) + 16))(a2);
  return v4(&v6, 0);
}

uint64_t sub_26B9A663C(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  sub_26B9AAAE4();
  sub_26B9A6A88(a1, v4);
}

uint64_t static Dependencies.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_26B9A6A88(a1, a2);

  v4 = *(*(*(v3 + *MEMORY[0x277D84308] + 8) - 8) + 8);

  return v4(a1);
}

void (*static Dependencies.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v7 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  static Dependencies.subscript.getter(a2, v10);
  return sub_26B9A6874;
}

void sub_26B9A6874(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_26B9AAAE4();
    sub_26B9A6A88(v3, v7);

    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    v9 = **a1;
    sub_26B9AAAE4();
    sub_26B9A6A88(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_26B9A6988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(a4 + 24))(v10, a3, a4);
}

uint64_t sub_26B9A6A88(uint64_t a1, void *a2)
{
  v2 = *(*(*(*a2 + *MEMORY[0x277D84308] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_26B9A6BBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

SpotlightUIShared::LogCategory_optional __swiftcall LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B9ACDC4();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LogCategory.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6956686372616553;
    v8 = 0x6E6F437972657551;
    v9 = 0x6C6172656E6547;
    if (v1 != 3)
    {
      v9 = 0x57746361746E6F43;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6946686372616553;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x747365476B636F44;
    v3 = 0x697461636F766E49;
    if (v1 != 9)
    {
      v3 = 0x7845776F646E6957;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000019;
    v5 = 0x4D747865746E6F43;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26B9A6E24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = a1;
  if (a1 <= 4u)
  {
    v14 = 0xEA00000000007765;
    v15 = 0x6E6F437972657551;
    v16 = 0xEF72656C6C6F7274;
    v17 = 0xE700000000000000;
    v18 = 0x6C6172656E6547;
    if (a1 != 3)
    {
      v18 = 0x57746361746E6F43;
      v17 = 0xED00007465676469;
    }

    if (a1 != 2)
    {
      v15 = v18;
      v16 = v17;
    }

    v19 = 0x6946686372616553;
    if (a1)
    {
      v14 = 0xEB00000000646C65;
    }

    else
    {
      v19 = 0x6956686372616553;
    }

    if (a1 <= 1u)
    {
      v12 = v19;
    }

    else
    {
      v12 = v15;
    }

    if (v3 <= 1)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0x747365476B636F44;
    v5 = 0xEB00000000657275;
    v6 = 0x697461636F766E49;
    if (a1 == 9)
    {
      v7 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0x7845776F646E6957;
      v7 = 0xEF6E6F69736E6170;
    }

    if (a1 != 8)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x800000026B9BABA0;
    v9 = 0xD000000000000019;
    v10 = 0x4D747865746E6F43;
    v11 = 0xEE00726567616E61;
    if (a1 != 6)
    {
      v10 = 0xD000000000000011;
      v11 = 0x800000026B9BABD0;
    }

    if (a1 != 5)
    {
      v9 = v10;
      v8 = v11;
    }

    if (a1 <= 7u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v4;
    }

    if (v3 <= 7)
    {
      v13 = v8;
    }

    else
    {
      v13 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEF72656C6C6F7274;
        if (v12 != 0x6E6F437972657551)
        {
          goto LABEL_63;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x6C6172656E6547)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v2 = 0xED00007465676469;
        if (v12 != 0x57746361746E6F43)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    if (!a2)
    {
      v2 = 0xEA00000000007765;
      if (v12 != 0x6956686372616553)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    v20 = 0x6946686372616553;
    v21 = 6581349;
LABEL_56:
    v2 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v12 != v20)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v2 = 0x800000026B9BABA0;
      if (v12 != 0xD000000000000019)
      {
        goto LABEL_63;
      }
    }

    else if (a2 == 6)
    {
      v2 = 0xEE00726567616E61;
      if (v12 != 0x4D747865746E6F43)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v2 = 0x800000026B9BABD0;
      if (v12 != 0xD000000000000011)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_61;
  }

  if (a2 == 8)
  {
    v20 = 0x747365476B636F44;
    v21 = 6648437;
    goto LABEL_56;
  }

  if (a2 == 9)
  {
    if (v12 != 0x697461636F766E49)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v2 = 0xEF6E6F69736E6170;
    if (v12 != 0x7845776F646E6957)
    {
LABEL_63:
      v22 = sub_26B9ACEB4();
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v13 != v2)
  {
    goto LABEL_63;
  }

  v22 = 1;
LABEL_64:

  return v22 & 1;
}

uint64_t sub_26B9A7200()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9A7250();
  return sub_26B9ACFF4();
}

uint64_t sub_26B9A7250()
{
  sub_26B9AC574();
}

uint64_t sub_26B9A7430()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9A7250();
  return sub_26B9ACFF4();
}

unint64_t sub_26B9A7480@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B9A7668()
{
  v0 = sub_26B9AB584();
  __swift_allocate_value_buffer(v0, qword_280433138);
  __swift_project_value_buffer(v0, qword_280433138);
  return sub_26B9AB574();
}

uint64_t sub_26B9A775C()
{
  v0 = sub_26B9AB584();
  __swift_allocate_value_buffer(v0, qword_280433178);
  __swift_project_value_buffer(v0, qword_280433178);
  return sub_26B9AB574();
}

uint64_t sub_26B9A78E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26B9AB584();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26B9AB574();
}

uint64_t sub_26B9A795C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26B9AB584();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26B9A79D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26B9AB584();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_26B9A7A70()
{
  result = qword_280427380;
  if (!qword_280427380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SignpostState.init(with:signposter:queryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a3;
  v11 = sub_26B9AB4C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = type metadata accessor for SignpostState();
  *(a6 + *(v19 + 40)) = 0;
  v20 = *(a5 + 24);
  v42 = a1;
  v41 = v20(a4, a5);
  v40 = v21;
  sub_26B9AB4D4();
  v22 = a2;
  v23 = sub_26B9AB4F4();
  v24 = sub_26B9AC984();
  result = sub_26B9ACA24();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = v16;
  v39 = v19;
  v43 = v22;
  v26 = a6;
  if ((v40 & 1) == 0)
  {
    v27 = v41;
    if (v41)
    {
      v28 = v24;
      v29 = v23;
LABEL_9:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_26B9AB4A4();
      v23 = v29;
      _os_signpost_emit_with_name_impl(&dword_26B8E8000, v29, v28, v31, v27, "", v30, 2u);
      MEMORY[0x26D6879F0](v30, -1, -1);
      a6 = v26;
      v22 = v43;
      v16 = v38;
      v19 = v39;
LABEL_10:

      (*(v12 + 16))(v16, v18, v11);
      v32 = sub_26B9AB544();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v35 = sub_26B9AB534();
      v36 = sub_26B9AB504();
      (*(*(v36 - 8) + 8))(v22, v36);
      (*(v12 + 8))(v18, v11);
      *(a6 + *(v19 + 36)) = v35;
      return (*(*(a4 - 8) + 32))(a6, v42, a4);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(v41))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v41 & 0xFFFFF800) != 0xD800)
  {
    if (v41 >> 16 <= 0x10)
    {
      v28 = v24;
      v29 = v23;
      v27 = &v44;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t SignpostState.init(with:signposter:isAnimation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = sub_26B9AB4C4();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v40);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v39 = type metadata accessor for SignpostState();
  v22 = *(v39 + 40);
  v42 = a6;
  v43 = a1;
  *(a6 + v22) = 0;
  v23 = (*(a5 + 24))(a4, a5);
  v25 = v24;
  v41 = a2;
  if (a3)
  {
    sub_26B9AB4B4();
    v26 = sub_26B9AB4F4();
    v16 = sub_26B9AC984();
    result = sub_26B9ACA24();
    if ((result & 1) == 0)
    {
LABEL_10:
      v16 = v21;
      goto LABEL_22;
    }

    if (v25)
    {
      if (HIDWORD(v23))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ((v23 & 0xFFFFF800) == 0xD800)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >> 16 > 0x10)
      {
        goto LABEL_25;
      }

      v23 = &v44;
    }

    else if (!v23)
    {
      __break(1u);
      goto LABEL_6;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_26B9AB4A4();
    _os_signpost_emit_with_name_impl(&dword_26B8E8000, v26, v16, v29, v23, "isAnimation=YES", v28, 2u);
    v16 = v21;
LABEL_21:
    MEMORY[0x26D6879F0](v28, -1, -1);
    goto LABEL_22;
  }

LABEL_6:
  sub_26B9AB4B4();
  v26 = sub_26B9AB4F4();
  v21 = sub_26B9AC984();
  result = sub_26B9ACA24();
  if ((result & 1) == 0)
  {
LABEL_22:
    v31 = v41;

    v32 = v40;
    (*(v12 + 16))(v19, v16, v40);
    v33 = sub_26B9AB544();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_26B9AB534();
    v37 = sub_26B9AB504();
    (*(*(v37 - 8) + 8))(v31, v37);
    (*(v12 + 8))(v16, v32);
    *(v42 + *(v39 + 36)) = v36;
    return (*(*(a4 - 8) + 32))();
  }

  if ((v25 & 1) == 0)
  {
    if (!v23)
    {
      __break(1u);
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_24;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v23 = &v45;
LABEL_20:
      v28 = swift_slowAlloc();
      *v28 = 0;
      v30 = sub_26B9AB4A4();
      _os_signpost_emit_with_name_impl(&dword_26B8E8000, v26, v21, v30, v23, "", v28, 2u);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t SignpostState.finish(with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AB514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9AB4C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 40);
  if ((*(v2 + v15) & 1) == 0)
  {
    v27 = v5;
    v28 = result;
    *(v2 + v15) = 1;
    v16 = (*(*(a2 + 24) + 24))(*(a2 + 16));
    v18 = v17;
    v19 = *(v2 + *(a2 + 36));
    v20 = sub_26B9AB4F4();
    sub_26B9AB524();
    v21 = sub_26B9AC974();
    result = sub_26B9ACA24();
    if ((result & 1) == 0)
    {
LABEL_14:

      return (*(v10 + 8))(v14, v28);
    }

    if ((v18 & 1) == 0)
    {
      if (v16)
      {
LABEL_10:
        sub_26B9AAAE4();
        sub_26B9AB554();

        v22 = v27;
        if ((*(v27 + 88))(v8, v4) == *MEMORY[0x277D85B00])
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 8))(v8, v4);
          v23 = "";
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_26B9AB4A4();
        _os_signpost_emit_with_name_impl(&dword_26B8E8000, v20, v21, v25, v16, v23, v24, 2u);
        MEMORY[0x26D6879F0](v24, -1, -1);
        goto LABEL_14;
      }

      __break(1u);
    }

    if (HIDWORD(v16))
    {
      __break(1u);
    }

    else
    {
      if ((v16 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v16 >> 16 <= 0x10)
      {
        v16 = &v29;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t SignpostIntervals.states.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SignpostIntervals.signposter.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_26B9AB504();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SignpostIntervals.signposter.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_26B9AB504();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*SignpostIntervals.signposter.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SignpostIntervals.init(with:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v55 = a2;
  v64 = a1;
  v70 = a5;
  v63 = sub_26B9AB504();
  v50 = *(v63 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SignpostState();
  v10 = sub_26B9ACA34();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = &v49 - v13;
  v68 = *(a3 - 8);
  v14 = *(v68 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v49 - v18;
  v19 = sub_26B9ACA34();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - v21;
  v58 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v67 = &v49 - v24;
  v57 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = swift_getAssociatedTypeWitness();
  v54 = *(v69 - 8);
  v25 = *(v54 + 64);
  MEMORY[0x28223BE20](v69);
  v27 = &v49 - v26;
  v28 = sub_26B9AB584();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v33 = sub_26B9AC744();
  v34 = *(a4 + 16);
  v66 = v9;
  v60 = v34;
  v35 = sub_26B977AB0(v33, a3, v9, v34);

  v71 = v35;
  v52 = v29;
  v53 = v28;
  (*(v29 + 16))(v32, v55, v28);
  v65 = a4;
  v36 = v51;
  v59 = *(type metadata accessor for SignpostIntervals() + 36);
  sub_26B9AB4E4();
  sub_26B9ACC04();
  sub_26B9AC644();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = v27;
  v58 = AssociatedConformanceWitness;
  sub_26B9ACA44();
  v38 = v68;
  v39 = v68 + 48;
  v40 = *(v68 + 48);
  if (v40(v22, 1, a3) != 1)
  {
    v57 = *(v38 + 16);
    v68 = v38 + 16;
    v41 = (v38 + 32);
    v42 = (v50 + 16);
    AssociatedTypeWitness = v66 - 8;
    do
    {
      v57(v36, v22, a3);
      (*v41)(v17, v22, a3);
      v43 = v39;
      v44 = v62;
      (*v42)(v62, v70 + v59, v63);
      v45 = v36;
      v46 = v17;
      v47 = v61;
      SignpostState.init(with:signposter:queryIdentifier:)(v46, v44, v64, a3, v65, v61);
      (*(*(v66 - 8) + 56))(v47, 0, 1, v66);
      sub_26B9AC424();
      v17 = v46;
      v36 = v45;
      sub_26B9AC444();
      sub_26B9ACA44();
      v39 = v43;
    }

    while (v40(v22, 1, a3) != 1);
  }

  (*(v52 + 8))(v55, v53);
  result = (*(v54 + 8))(v67, v69);
  *v70 = v71;
  return result;
}

uint64_t SignpostIntervals.init(isAnimation:log:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a2;
  v61 = a1;
  v66 = a5;
  v60 = sub_26B9AB504();
  v51 = *(v60 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SignpostState();
  v10 = sub_26B9ACA34();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v58 = &v45 - v13;
  v65 = *(a3 - 8);
  v14 = *(v65 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v45 - v18;
  v19 = sub_26B9ACA34();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v45 - v21;
  v54 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(*(AssociatedTypeWitness - 1) + 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v64 = &v45 - v24;
  v53 = *(swift_getAssociatedConformanceWitness() + 8);
  v46 = swift_getAssociatedTypeWitness();
  v49 = *(v46 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  v27 = &v45 - v26;
  v28 = sub_26B9AB584();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v33 = sub_26B9AC744();
  v34 = *(a4 + 16);
  v63 = v9;
  v56 = v34;
  v35 = sub_26B977AB0(v33, a3, v9, v34);

  v67 = v35;
  v47 = v29;
  v48 = v28;
  (*(v29 + 16))(v32, v50, v28);
  v62 = a4;
  v36 = v46;
  v55 = *(type metadata accessor for SignpostIntervals() + 36);
  sub_26B9AB4E4();
  sub_26B9ACC04();
  sub_26B9AC644();
  swift_getAssociatedConformanceWitness();
  v64 = v27;
  sub_26B9ACA44();
  v37 = v65;
  v38 = *(v65 + 48);
  if (v38(v22, 1, a3) != 1)
  {
    v39 = *(v37 + 16);
    v65 = v37 + 16;
    v53 = (v37 + 32);
    v54 = v39;
    v40 = (v51 + 16);
    v51 = v63 - 8;
    AssociatedTypeWitness = v40;
    do
    {
      v54(v57, v22, a3);
      (*v53)(v17, v22, a3);
      v41 = v59;
      (*AssociatedTypeWitness)(v59, v66 + v55, v60);
      v42 = v17;
      v43 = v58;
      SignpostState.init(with:signposter:isAnimation:)(v42, v41, v61 & 1, a3, v62, v58);
      (*(*(v63 - 8) + 56))(v43, 0, 1, v63);
      sub_26B9AC424();
      v17 = v42;
      sub_26B9AC444();
      sub_26B9ACA44();
    }

    while (v38(v22, 1, a3) != 1);
  }

  (*(v47 + 8))(v50, v48);
  result = (*(v49 + 8))(v64, v36);
  *v66 = v67;
  return result;
}

uint64_t SignpostIntervals.finish(interval:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for SignpostState();
  v11 = *(v9 + 16);
  sub_26B9AC424();
  v12 = sub_26B9AC434();
  if (!(*(*(v10 - 8) + 48))(v13, 1, v10))
  {
    SignpostState.finish(with:)(v2 + *(a2 + 36), v10);
  }

  v12(v15, 0);
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall SignpostIntervals.finishAll()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12[-v9];
  sub_26B9ACC04();
  v13 = v3;
  v14 = v4;
  v15 = v2;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_26B9AC674();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_26B9A9764(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for SignpostIntervals();
  return SignpostIntervals.finish(interval:)(a1, v6);
}

uint64_t sub_26B9A97C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_26B9AB544();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B9A9854(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_26B9A99A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_26B9A9B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for SignpostState();
  v3 = *(v2 + 16);
  result = sub_26B9AC424();
  if (v5 <= 0x3F)
  {
    result = sub_26B9AB504();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t UIResponseProcessingInterval.hashValue.getter()
{
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](0);
  return sub_26B9ACFF4();
}

unint64_t sub_26B9A9CF4()
{
  result = qword_280427388;
  if (!qword_280427388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427388);
  }

  return result;
}

unint64_t sub_26B9A9D5C(uint64_t a1)
{
  *(a1 + 8) = sub_26B9A9D8C();
  result = sub_26B9A9DE0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B9A9D8C()
{
  result = qword_280427390;
  if (!qword_280427390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427390);
  }

  return result;
}

unint64_t sub_26B9A9DE0()
{
  result = qword_280427398;
  if (!qword_280427398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427398);
  }

  return result;
}

unint64_t sub_26B9A9E38()
{
  result = qword_2804273A0;
  if (!qword_2804273A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804273A8, &qword_26B9B6B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273A0);
  }

  return result;
}

unint64_t sub_26B9A9F68()
{
  result = qword_2804273B0;
  if (!qword_2804273B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273B0);
  }

  return result;
}

unint64_t sub_26B9A9FE8()
{
  result = qword_2804273B8;
  if (!qword_2804273B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273B8);
  }

  return result;
}

unint64_t sub_26B9AA03C()
{
  result = qword_2804273C0;
  if (!qword_2804273C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273C0);
  }

  return result;
}

unint64_t sub_26B9AA0C4()
{
  result = qword_2804273D8;
  if (!qword_2804273D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273D8);
  }

  return result;
}

uint64_t sub_26B9AA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B9AA194()
{
  result = qword_2804273E0;
  if (!qword_2804273E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273E0);
  }

  return result;
}

unint64_t sub_26B9AA1E8()
{
  result = qword_2804273E8;
  if (!qword_2804273E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804273E8);
  }

  return result;
}

uint64_t InvokeSignpostInterval.hashValue.getter()
{
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](0);
  return sub_26B9ACFF4();
}

unint64_t sub_26B9AA348()
{
  result = qword_280427400;
  if (!qword_280427400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427400);
  }

  return result;
}

unint64_t sub_26B9AA3B0(uint64_t a1)
{
  *(a1 + 8) = sub_26B9AA3E0();
  result = sub_26B9AA434();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B9AA3E0()
{
  result = qword_280427408;
  if (!qword_280427408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427408);
  }

  return result;
}

unint64_t sub_26B9AA434()
{
  result = qword_280427410;
  if (!qword_280427410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427410);
  }

  return result;
}

unint64_t sub_26B9AA48C()
{
  result = qword_280427418;
  if (!qword_280427418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280427420, &qword_26B9B6E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427418);
  }

  return result;
}
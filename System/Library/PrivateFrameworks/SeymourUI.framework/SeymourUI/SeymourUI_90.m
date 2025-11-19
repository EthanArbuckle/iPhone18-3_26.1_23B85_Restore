uint64_t sub_20BF4B43C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20BF4B738;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];
    v7 = v2[3];
    v2[22] = v2[2];
    v2[23] = v7;

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4B59C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4B59C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v11 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  sub_20C136B34();
  sub_20C136A04();
  v6 = sub_20C135FE4();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  *(v0 + 32) = v6;
  *(v0 + 40) = v8 & 1;
  *(v0 + 41) = 1;
  sub_20BF63324();
  sub_20BF63378();
  sub_20C133C04();
  sub_20C136A24();
  sub_20C133194();
  sub_20C136364();
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20BF4B738()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF4B810(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_20C137404();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_20C1378F4();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4B938, 0, 0);
}

uint64_t sub_20BF4B938()
{
  v75 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_20C136AD4();
  v4 = sub_20C1378D4();
  v69 = *(v3 + 8);
  v69(v1, v2);
  v5 = sub_20C136714();
  sub_20BF631EC(v5, v4, v0 + 96);

  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v71 = *(v0 + 136);
  v11 = sub_20BF61D64(v6, v7, v8, v9, v10, v71, *(v0 + 144));
  if (v11)
  {
    v12 = v11;
    v13 = sub_20BEDEEE0(v11, 0);
    v14 = *(sub_20C137684() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_20BD12744(v6, v7, v8);
    sub_20BD12744(v9, v10, v71);

    sub_20BF62008(v72, v13 + v15, v12);
    v17 = v16;
    v18 = *v73;
    *(v0 + 48) = v72[2];
    *(v0 + 64) = v18;
    *(v0 + 73) = *&v73[9];
    v19 = v72[1];
    *(v0 + 16) = v72[0];
    *(v0 + 32) = v19;
    result = sub_20B520158(v0 + 16, &unk_27C770C50);
    if (v17 != v12)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_20B526EA4(v6, v7, v8);
    sub_20B526EA4(v9, v10, v71);
  }

  else
  {
    sub_20B526EA4(v6, v7, v8);
    sub_20B526EA4(v9, v10, v71);
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  sub_20C136AD4();
  v23 = sub_20C1378E4();
  v69(v21, v22);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_20BEDEEB8(*(v23 + 16), 0);
    v26 = *(sub_20C137774() - 8);
    v27 = sub_20BEE2C5C(v72, (v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80))), v24, v23);
    result = sub_20B583EDC();
    if (v27 == v24)
    {
      goto LABEL_9;
    }

LABEL_97:
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = *(v0 + 176);
  v29 = sub_20C136B64();
  v30 = v29;
  v31 = v29 + 56;
  v32 = -1;
  v33 = -1 << *(v29 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v29 + 56);
  v35 = (63 - v33) >> 6;
  v70 = (v28 + 8);

  v36 = 0;
  v68 = MEMORY[0x277D84F90];
  while (v34)
  {
LABEL_17:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    (*(v28 + 16))(*(v0 + 184), *(v30 + 48) + *(v28 + 72) * (v38 | (v36 << 6)), *(v0 + 168));
    result = sub_20C1373F4();
    v40 = v39;
    v41 = HIBYTE(v39) & 0xF;
    v42 = result & 0xFFFFFFFFFFFFLL;
    if ((v40 & 0x2000000000000000) != 0)
    {
      v43 = v41;
    }

    else
    {
      v43 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      if ((v40 & 0x1000000000000000) != 0)
      {
        v74 = 0;
        v66 = sub_20C0B6C4C(result, v40, 10);
        v45 = v66;
        v63 = (v66 >> 32) & 1;
        goto LABEL_79;
      }

      if ((v40 & 0x2000000000000000) != 0)
      {
        *&v72[0] = result;
        *(&v72[0] + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (!v41)
          {
            goto LABEL_94;
          }

          if (--v41)
          {
            v45 = 0;
            v55 = v72 + 1;
            while (1)
            {
              v56 = *v55 - 48;
              if (v56 > 9)
              {
                break;
              }

              v57 = 10 * v45;
              if ((v57 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v45 = v57 + v56;
              if (__CFADD__(v57, v56))
              {
                break;
              }

              ++v55;
              if (!--v41)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (result == 45)
        {
          if (!v41)
          {
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          if (--v41)
          {
            v45 = 0;
            v49 = v72 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v45;
              if ((v51 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v45 = v51 - v50;
              if (v51 < v50)
              {
                break;
              }

              ++v49;
              if (!--v41)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v41)
        {
          v45 = 0;
          v60 = v72;
          while (1)
          {
            v61 = *v60 - 48;
            if (v61 > 9)
            {
              break;
            }

            v62 = 10 * v45;
            if ((v62 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v45 = v62 + v61;
            if (__CFADD__(v62, v61))
            {
              break;
            }

            ++v60;
            if (!--v41)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if ((result & 0x1000000000000000) != 0)
      {
        result = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_20C13DD04();
      }

      v44 = *result;
      if (v44 == 43)
      {
        if (v42 < 1)
        {
          goto LABEL_95;
        }

        v41 = v42 - 1;
        if (v42 == 1)
        {
          goto LABEL_77;
        }

        v45 = 0;
        if (result)
        {
          v52 = (result + 1);
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              goto LABEL_77;
            }

            v54 = 10 * v45;
            if ((v54 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_77;
            }

            v45 = v54 + v53;
            if (__CFADD__(v54, v53))
            {
              goto LABEL_77;
            }

            ++v52;
            if (!--v41)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v44 == 45)
      {
        if (v42 < 1)
        {
          goto LABEL_93;
        }

        v41 = v42 - 1;
        if (v42 == 1)
        {
          goto LABEL_77;
        }

        v45 = 0;
        if (result)
        {
          v46 = (result + 1);
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v45;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v45 = v48 - v47;
            if (v48 < v47)
            {
              break;
            }

            ++v46;
            if (!--v41)
            {
              goto LABEL_78;
            }
          }

LABEL_77:
          v45 = 0;
          LOBYTE(v41) = 1;
          goto LABEL_78;
        }
      }

      else
      {
        if (!v42)
        {
          goto LABEL_77;
        }

        v45 = 0;
        if (result)
        {
          do
          {
            v58 = *result - 48;
            if (v58 > 9)
            {
              goto LABEL_77;
            }

            v59 = 10 * v45;
            if ((v59 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_77;
            }

            v45 = v59 + v58;
            if (__CFADD__(v59, v58))
            {
              goto LABEL_77;
            }

            ++result;
          }

          while (--v42);
        }
      }

      LOBYTE(v41) = 0;
LABEL_78:
      v74 = v41;
      LOBYTE(v63) = v41;
LABEL_79:
      (*v70)(*(v0 + 184), *(v0 + 168));

      if ((v63 & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_20BC08888(0, *(v68 + 16) + 1, 1, v68);
          v68 = result;
        }

        v65 = *(v68 + 16);
        v64 = *(v68 + 24);
        if (v65 >= v64 >> 1)
        {
          result = sub_20BC08888((v64 > 1), v65 + 1, 1, v68);
          v68 = result;
        }

        *(v68 + 16) = v65 + 1;
        *(v68 + 4 * v65 + 32) = v45;
      }
    }

    else
    {
      (*v70)(*(v0 + 184), *(v0 + 168));
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_92;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_17;
    }
  }

  sub_20B71A0AC(v68);

  sub_20C137694();

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_20BF4C0C4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v2[8] = swift_task_alloc();
  v3 = sub_20C133954();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C38);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4C20C, 0, 0);
}

uint64_t sub_20BF4C20C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_20C136A54();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(*(v0 + 64), &unk_27C76A970);
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 64), *(v0 + 72));
    *(v0 + 16) = sub_20C1338B4();
    *(v0 + 24) = v4 & 1;
    *(v0 + 32) = 0;
    *(v0 + 40) = 1;
    sub_20B6CD3B4();
    sub_20B6CD408();
    if (sub_20C133BF4())
    {
      v5 = *(v0 + 96);
      v6 = *(v0 + 72);
      v7 = *(v0 + 80);
      (*(v7 + 16))(*(v0 + 88), v5, v6);
      sub_20C136EE4();
      (*(v7 + 8))(v5, v6);
      v8 = 0;
      goto LABEL_7;
    }

    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  }

  v8 = 1;
LABEL_7:
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = sub_20C136EF4();
  (*(*(v11 - 8) + 56))(v9, v8, 1, v11);
  sub_20B52F9E8(v9, v10, &qword_27C770C38);
  sub_20C1376B4();
  sub_20B520158(v9, &qword_27C770C38);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_20BF4C474(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C20);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4C594, 0, 0);
}

uint64_t sub_20BF4C594()
{
  v1 = v0[16];
  sub_20BF4CB98(v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 133;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_20C135FB4();
  v0[22] = v4;
  *v3 = v0;
  v3[1] = sub_20BF4C6BC;
  v5 = v0[18];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF630C8, v2, v4);
}

uint64_t sub_20BF4C6BC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_20BF4C944;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4C814;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4C814()
{
  v1 = v0[18];
  v2 = v0[19];
  (*(*(v0[22] - 8) + 56))(v1, 0, 1);
  sub_20BF630E0(v1, v2);
  v3 = v0[19];
  v4 = v0[12];
  sub_20B52F9E8(v3, v0[17], &qword_27C76EAA0);
  v5 = v4;
  sub_20C1378B4();
  sub_20B520158(v3, &qword_27C76EAA0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BF4C944()
{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  swift_getErrorValue();
  v1 = sub_20C1356D4();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_20BF646AC(&unk_27C770C28, MEMORY[0x277D51B70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51B48], v1);
  v3 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v3)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);

    (*(*(v4 - 8) + 56))(v5, 1, 1, v4);
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    sub_20B52F9E8(v6, *(v0 + 136), &qword_27C76EAA0);
    v8 = v7;
    sub_20C1378B4();
    sub_20B520158(v6, &qword_27C76EAA0);
  }

  else
  {
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20BF4CB98@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C135FB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  v15 = sub_20C136C64();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_20B520158(v4, &qword_27C768690);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_20B520158(v7, &qword_27C76EAA0);
    v17 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B48], v17);
    *(swift_allocObject() + 16) = v18;
    return sub_20C137CA4();
  }

  sub_20C136B74();
  (*(v16 + 8))(v4, v15);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v21 = *(v9 + 32);
  v21(v14, v7, v8);
  (*(v9 + 16))(v11, v14, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v21((v23 + v22), v11, v8);
  sub_20C137CA4();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_20BF4CFC0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764380);
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v2[12] = *(v5 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764388);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4D170, 0, 0);
}

uint64_t sub_20BF4D170()
{
  v1 = sub_20C136B04();
  sub_20BF48F44(v1);

  v2 = sub_20C13CCB4();
  v0[18] = v2;

  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_20C13DB34();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v32 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2F5430](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = [v6 uniqueName];
      if (v8)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v9 = v8;
    v10 = sub_20C13C954();
    v29 = v11;

    v30 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_20BC05BA4(0, *(v32 + 2) + 1, 1, v32);
    }

    v13 = *(v32 + 2);
    v12 = *(v32 + 3);
    if (v13 >= v12 >> 1)
    {
      v32 = sub_20BC05BA4((v12 > 1), v13 + 1, 1, v32);
    }

    *(v32 + 2) = v13 + 1;
    v14 = &v32[16 * v13];
    *(v14 + 4) = v30;
    *(v14 + 5) = v29;
  }

  while (v4 != v3);
LABEL_22:
  v31 = v0[17];
  v16 = v0[13];
  v15 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[6] + 136), *(v0[6] + 160));
  sub_20C139714();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BF4DD60;
  *(v20 + 24) = 0;
  (*(v18 + 16))(v16, v15, v19);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v18 + 32))(v23 + v21, v16, v19);
  v24 = (v23 + v22);
  *v24 = sub_20BF62B58;
  v24[1] = v20;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C00);
  sub_20C137C94();
  (*(v18 + 8))(v15, v19);
  v26 = swift_task_alloc();
  v0[19] = v26;
  *(v26 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v26 + 24) = 50;
  *(v26 + 32) = 2;
  *(v26 + 40) = 167;
  *(v26 + 48) = v31;
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_20BF4D5F0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF62C90, v26, v25);
}

uint64_t sub_20BF4D5F0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20BF4DB28;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];
    v2[22] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4D768;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4D768()
{
  v14 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[6];
  sub_20B51C88C(0, &qword_27C764020);
  sub_20B717F18(v1);

  sub_20B718244(v2);

  v5 = sub_20C13D484();

  v0[3] = v5;
  sub_20C13ABB4();
  sub_20C13AB94();
  v6 = objc_allocWithZone(MEMORY[0x277CE8CC0]);
  v7 = sub_20C13C914();

  v8 = [v6 initWithTemplateUniqueName:v7 progressQuantity:0 goalQuantity:0];
  v0[23] = v8;

  sub_20B703DC8(&v13, v8);
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  sub_20C139FD4();
  v9 = swift_task_alloc();
  v0[24] = v9;
  *(v9 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v9 + 24) = 50;
  *(v9 + 32) = 2;
  *(v9 + 40) = 183;
  *(v9 + 48) = v3;
  v10 = swift_task_alloc();
  v0[25] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10);
  *v10 = v0;
  v10[1] = sub_20BF4D9C8;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF630B0, v9, v11);
}

uint64_t sub_20BF4D9C8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_20BF4DCB4;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];
    v2[27] = v2[4];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4DBCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4DB28()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF4DBCC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[3];

  v4 = sub_20BF62CA8(v3, v1);
  swift_bridgeObjectRelease_n();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_20BF4DCB4()
{
  v1 = v0[23];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BF4DD60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20BF49284(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_20BF4DD8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20BF4DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_20C13A4D4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4DEE4, 0, 0);
}

uint64_t sub_20BF4DEE4()
{
  sub_20C13B5D4();
  sub_20BF60DC8("fetchPersonalizationInferenceResponse", 37, 2, &dword_20B517000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_20BF4DFAC;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_20BF4E0C0(v4, v2, v3);
}

uint64_t sub_20BF4DFAC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BF646FC;
  }

  else
  {
    v2 = sub_20BF64700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_20C137AC4();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CC8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4E1D0, 0, 0);
}

uint64_t sub_20BF4E1D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_20BF4E688;

    return sub_20BF4F074();
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 264);

    v6 = sub_20C137AB4();
    if (*(v5 + 16))
    {
      v7 = sub_20B65B5F8(v6);
      if (v8)
      {
        v9 = v0[14];
        v10 = v0[11];
        v11 = v0[12];
        v13 = v0[9];
        v12 = v0[10];
        v0[20] = *(*(v5 + 56) + 8 * v7);

        (*(v11 + 16))(v9, v12, v10);
        v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
        v15 = swift_allocObject();
        v0[21] = v15;
        *(v15 + 16) = v13;
        (*(v11 + 32))(v15 + v14, v9, v10);

        v16 = swift_task_alloc();
        v0[22] = v16;
        *v16 = v0;
        v16[1] = sub_20BF4EBBC;
        v17 = v0[16];

        return MEMORY[0x2821AFC88](v17, &unk_20C185AD0, v15);
      }
    }
  }

  v19 = v0[15];
  v18 = v0[16];
  v20 = sub_20C1377F4();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v18, 1, 1, v20);
  sub_20B52F9E8(v18, v19, &qword_27C770CC8);
  v22 = (*(v21 + 48))(v19, 1, v20);
  v24 = v0[15];
  v23 = v0[16];
  if (v22 == 1)
  {
    sub_20B520158(v0[15], &qword_27C770CC8);
    v25 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51B58], v25);
    swift_willThrow();
    sub_20B520158(v23, &qword_27C770CC8);
  }

  else
  {
    v28 = v0[8];
    sub_20B520158(v0[16], &qword_27C770CC8);
    (*(v21 + 32))(v28, v24, v20);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_20BF4E688()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_20BF4EF5C;
  }

  else
  {

    v2 = sub_20BF4E7A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4E7A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 264);

    v3 = sub_20C137AB4();
    if (*(v2 + 16))
    {
      v4 = sub_20B65B5F8(v3);
      if (v5)
      {
        v6 = v0[14];
        v7 = v0[11];
        v8 = v0[12];
        v10 = v0[9];
        v9 = v0[10];
        v0[20] = *(*(v2 + 56) + 8 * v4);

        (*(v8 + 16))(v6, v9, v7);
        v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
        v12 = swift_allocObject();
        v0[21] = v12;
        *(v12 + 16) = v10;
        (*(v8 + 32))(v12 + v11, v6, v7);

        v13 = swift_task_alloc();
        v0[22] = v13;
        *v13 = v0;
        v13[1] = sub_20BF4EBBC;
        v14 = v0[16];

        return MEMORY[0x2821AFC88](v14, &unk_20C185AD0, v12);
      }
    }
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = sub_20C1377F4();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v15, 1, 1, v17);
  sub_20B52F9E8(v15, v16, &qword_27C770CC8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v21 = v0[15];
  v20 = v0[16];
  if (v19 == 1)
  {
    sub_20B520158(v0[15], &qword_27C770CC8);
    v22 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51B58], v22);
    swift_willThrow();
    sub_20B520158(v20, &qword_27C770CC8);
  }

  else
  {
    v25 = v0[8];
    sub_20B520158(v0[16], &qword_27C770CC8);
    (*(v18 + 32))(v25, v21, v17);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_20BF4EBBC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20BF4EFE4;
  }

  else
  {

    v2 = sub_20BF4ECE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4ECE0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_20C1377F4();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_20B52F9E8(v1, v2, &qword_27C770CC8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[15];
  v6 = v0[16];
  if (v5 == 1)
  {
    sub_20B520158(v0[15], &qword_27C770CC8);
    v8 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51B58], v8);
    swift_willThrow();
    sub_20B520158(v6, &qword_27C770CC8);
  }

  else
  {
    v11 = v0[8];
    sub_20B520158(v0[16], &qword_27C770CC8);
    (*(v4 + 32))(v11, v7, v3);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_20BF4EF5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF4EFE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF4F074()
{
  v1[7] = v0;
  v2 = sub_20C13A4D4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4F134, 0, 0);
}

uint64_t sub_20BF4F134()
{
  sub_20C13B5D4();
  sub_20BF60DC8("syncCatalogIfNeeded", 19, 2, &dword_20B517000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_20BF4F1F4;
  v2 = v0[7];

  return sub_20BF5FC14(v1, v2);
}

uint64_t sub_20BF4F1F4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20BF4F3C8;
  }

  else
  {
    v2 = sub_20BF4F308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF4F308()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF4F3C8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF4F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CD0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CD8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  v3[20] = swift_task_alloc();
  v4 = sub_20C1377F4();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_20C132E94();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_20C137AC4();
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v3[29] = *(v7 + 64);
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A8);
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770BC0);
  v3[34] = swift_task_alloc();
  v9 = sub_20C137794();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF4F814, 0, 0);
}

uint64_t sub_20BF4F814()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[33];
    v2 = v0[30];
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[17];
    v6 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v2, v5, v3);
    v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    (*(v4 + 32))(v8 + v7, v2, v3);
    v9 = swift_allocObject();
    *(v9 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v9 + 24) = 50;
    *(v9 + 32) = 2;
    *(v9 + 40) = 354;
    *(v9 + 48) = &unk_20C185AF8;
    *(v9 + 56) = v8;
    sub_20C137C94();

    v10 = swift_task_alloc();
    v0[38] = v10;
    *(v10 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v10 + 24) = 50;
    *(v10 + 32) = 2;
    *(v10 + 40) = 225;
    *(v10 + 48) = v1;
    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_20BF4FC1C;
    v12 = v0[34];
    v13 = v0[35];

    return MEMORY[0x2822008A0](v12, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF64480, v10, v13);
  }

  else
  {
    v14 = v0[34];
    (*(v0[36] + 56))(v14, 1, 1, v0[35]);
    sub_20B520158(v14, &unk_27C770BC0);
    v15 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51B58], v15);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_20BF4FC1C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_20BF502E4;
  }

  else
  {
    v5 = v2[32];
    v4 = v2[33];
    v6 = v2[31];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF4FDA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF4FDA8()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  (*(v3 + 56))(v5, 0, 1, v4);
  (*(v3 + 32))(v2, v5, v4);
  sub_20BF646AC(&qword_27C770CF0, MEMORY[0x277D53618]);
  v6 = sub_20C137524();
  if (v1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
LABEL_13:

    v39 = v0[1];

    return v39();
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_opt_self();
  v0[41] = v10;
  v11 = sub_20C132C34();
  sub_20B7197A0(v8, v9);
  v0[12] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:v0 + 12];

  v13 = v0[12];
  if (!v12)
  {
    v25 = v0[36];
    v24 = v0[37];
    v26 = v0[35];
    v27 = v13;
    sub_20C132A44();

    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    goto LABEL_13;
  }

  v14 = v13;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = v0[36];
    v28 = v0[37];
    v30 = v0[35];
    v31 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    v33 = v32;
    v34 = MEMORY[0x277D51B20];
LABEL_12:
    (*(*(v31 - 8) + 104))(v33, *v34, v31);
    swift_willThrow();
    (*(v29 + 8))(v28, v30);
    goto LABEL_13;
  }

  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];
  v18 = v0[13];
  v0[42] = v18;
  sub_20C132E64();
  sub_20C132E44();
  v19 = *(v16 + 8);
  v0[43] = v19;
  v0[44] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v15, v17);
  sub_20C13CE84();
  v0[45] = v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[46] = Strong;
  if (!Strong)
  {

    v35 = v0[43];
    v36 = v0[26];
    v37 = v0[24];
    sub_20C132E64();
    sub_20C132E44();
    v35(v36, v37);
    sub_20C13CE84();
    v29 = v0[36];
    v28 = v0[37];
    v30 = v0[35];
    v31 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    v33 = v38;
    v34 = MEMORY[0x277D51B28];
    goto LABEL_12;
  }

  v22 = swift_task_alloc();
  v0[47] = v22;
  *v22 = v0;
  v22[1] = sub_20BF50404;

  return sub_20BF50C80(v18);
}

uint64_t sub_20BF502E4()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF50404(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {

    v5 = sub_20BF50B60;
  }

  else
  {

    *(v4 + 392) = a1;
    v5 = sub_20BF505AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BF505AC()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 344);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  sub_20C132E64();
  sub_20C132E44();
  v3(v4, v5);
  sub_20C13CE84();
  if (!v1 || (v6 = [v1 data]) == 0)
  {
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v18 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51B28], v18);
LABEL_7:
    swift_willThrow();

    (*(v16 + 8))(v15, v17);
    goto LABEL_8;
  }

  v7 = *(v0 + 328);
  v8 = v6;
  sub_20C13C754();

  v9 = sub_20C13C744();

  *(v0 + 112) = 0;
  v10 = [v7 dataWithJSONObject:v9 options:0 error:v0 + 112];

  v11 = *(v0 + 112);
  if (!v10)
  {
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v22 = v11;
    sub_20C132A44();

    goto LABEL_7;
  }

  v12 = sub_20C132C54();
  v14 = v13;

  sub_20B719888(v12, v14);
  sub_20BF646AC(&qword_27C770D00, MEMORY[0x277D536B8]);
  sub_20C137534();
  if (v2)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    sub_20B7197A0(v12, v14);
LABEL_8:

    v20 = *(v0 + 8);
    goto LABEL_9;
  }

  v23 = *(v0 + 288);
  v33 = *(v0 + 280);
  v34 = *(v0 + 296);
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v26 = *(v0 + 160);
  v32 = *(v0 + 168);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v29 = sub_20C132EE4();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770D08);
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  v31 = sub_20C136024();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  sub_20C1377E4();
  sub_20B7197A0(v12, v14);

  sub_20B520158(v27, &qword_27C770CD0);
  sub_20B520158(v28, &qword_27C770CD8);
  sub_20B520158(v26, &unk_27C770CE0);
  (*(v25 + 8))(v24, v32);
  (*(v23 + 8))(v34, v33);

  v20 = *(v0 + 8);
LABEL_9:

  return v20();
}

uint64_t sub_20BF50B60()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF50C80(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_20C13A4D4();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF50D40, 0, 0);
}

uint64_t sub_20BF50D40()
{
  v7 = *(v0 + 104);
  sub_20C13B5D4();
  sub_20BF60DC8("enqueuePersonalizationInferenceRequest", 38, 2, &dword_20B517000, 1, (v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v1[1] = vextq_s8(v7, v7, 8uLL);
  v2 = sub_20C13B3A4();
  v3 = MEMORY[0x277D4F7C0];
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_20C13B394();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = sub_20B51C88C(0, &qword_27C770D10);
  *v4 = v0;
  v4[1] = sub_20BF50EBC;

  return MEMORY[0x2821AEAF8](v0 + 96, &unk_20C185B20, v1, 3, v0 + 56, sub_20BF60CE4, 0, v5);
}

uint64_t sub_20BF50EBC()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  if (v0)
  {
    v3 = sub_20BF510A8;
  }

  else
  {

    v3 = sub_20BF50FE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF50FE0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[12];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_20BF510A8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF511A4(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = sub_20C1361E4();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = sub_20C137684();
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  v6 = sub_20C1378F4();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF513B0, 0, 0);
}

uint64_t sub_20BF513B0()
{
  v42 = v0;
  v41 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  sub_20C136AD4();
  v4 = sub_20C1378D4();
  v5 = (*(v1 + 8))(v2, v3);
  v6 = *(v4 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v34 = &v34;
    v35 = v7;
    v8 = v0[35];
    MEMORY[0x28223BE20](v5);
    v36 = &v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v10 = 0;
    v40 = v4;
    v7 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v4 = (v11 + 63) >> 6;
    v39 = v8 + 16;
    v37 = 0;
    v38 = v8 + 8;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v18 = v0[36];
      v19 = v0[34];
      (*(v8 + 16))(v18, *(v40 + 48) + *(v8 + 72) * v17, v19);
      v20 = sub_20C137664();
      (*(v8 + 8))(v18, v19);
      if ((v20 & 1) == 0)
      {
        *&v36[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_20BC12300(v36, v35, v37, v40);
          goto LABEL_17;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v4)
      {
        goto LABEL_16;
      }

      v16 = *(v7 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = sub_20BF61A7C(v31, v7, v4, sub_20BF51F98, 0, sub_20BEE1B84);

  MEMORY[0x20F2F6A40](v31, -1, -1);
  v22 = v32;
LABEL_17:
  v0[40] = v22;
  if (*(v22 + 16))
  {
    v23 = v0[33];
    v24 = v0[27];
    v25 = sub_20BF495CC(v22);
    __swift_project_boxed_opaque_existential_1((v24 + 176), *(v24 + 200));
    sub_20B527580(v25);

    sub_20C139F64();

    v26 = swift_task_alloc();
    v0[41] = v26;
    *(v26 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v26 + 24) = 50;
    *(v26 + 32) = 2;
    *(v26 + 40) = 268;
    *(v26 + 48) = v23;
    v27 = swift_task_alloc();
    v0[42] = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BE8);
    *v27 = v0;
    v27[1] = sub_20BF518D4;

    return MEMORY[0x2822008A0](v0 + 25, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF64708, v26, v28);
  }

  else
  {

    v29 = v0[1];
    v30 = MEMORY[0x277D84F90];

    return v29(v30);
  }
}

uint64_t sub_20BF518D4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_20BF51EBC;
  }

  else
  {
    v5 = v2[32];
    v4 = v2[33];
    v6 = v2[31];
    v2[44] = v2[25];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF51A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF51A78()
{
  v51 = v0;
  v50[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v47 = v1;
  v49 = MEMORY[0x277D84FA0];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v46 = *(v0 + 232);
  v44 = (v46 + 8);

  v7 = 0;
  v45 = v2;
  while (v5)
  {
LABEL_11:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    (*(v46 + 16))(*(v0 + 240), *(v47 + 48) + *(v46 + 72) * (v13 | (v7 << 6)), *(v0 + 224));
    v14 = sub_20C1361D4();
    v16 = v15;
    *(v0 + 152) = v14;
    *(v0 + 160) = v15;
    v18 = v17 & 1;
    *(v0 + 168) = v17 & 1;
    *(v0 + 89) = 0;
    sub_20B590B28();
    sub_20B590B7C();
    v19 = sub_20C133C04();
    sub_20B583F4C(v14, v16, v18);
    if (v19 & 1) != 0 || (v20 = sub_20C1361D4(), v22 = v21, *(v0 + 176) = v20, *(v0 + 184) = v21, v24 = v23 & 1, *(v0 + 192) = v23 & 1, *(v0 + 90) = 1, v25 = sub_20C133C04(), sub_20B583F4C(v20, v22, v24), (v25))
    {
      v8 = *(v0 + 240);
      v9 = *(v0 + 224);
      v10 = sub_20C1361A4();
      sub_20B527618(v50, v10, v11);

      (*v44)(v8, v9);
    }

    else
    {
      (*v44)(*(v0 + 240), *(v0 + 224));
    }

    v2 = v45;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v7;
    if (v5)
    {
      v7 = v12;
      goto LABEL_11;
    }
  }

  v26 = *(v0 + 320);

  v27 = sub_20BF63D54(v26, v49);

  v28 = sub_20C136714();
  sub_20BF631EC(v28, v27, v0 + 96);

  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v33 = *(v0 + 136);
  v48 = *(v0 + 128);
  v34 = sub_20BF61D64(v29, v30, v31, v32, v48, v33, *(v0 + 144));
  if (v34)
  {
    v35 = v34;
    v36 = *(v0 + 280);
    v37 = sub_20BEDEEE0(v34, 0);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    sub_20BD12744(v29, v30, v31);
    sub_20BD12744(v32, v48, v33);

    sub_20BF62008((v0 + 16), v37 + v38, v35);
    v40 = v39;
    sub_20B520158(v0 + 16, &unk_27C770C50);
    if (v40 == v35)
    {
      sub_20B526EA4(v29, v30, v31);
      sub_20B526EA4(v32, v48, v33);

      v41 = v37;
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  sub_20B526EA4(v29, v30, v31);
  sub_20B526EA4(v32, v48, v33);

  v41 = MEMORY[0x277D84F90];
LABEL_18:

  v42 = *(v0 + 8);

  return v42(v41);
}

uint64_t sub_20BF51EBC()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BF51FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690);
    v13 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D51B88], v13);
    *(swift_allocObject() + 16) = v14;
    sub_20C136724();
    return sub_20C137CA4();
  }

  else
  {
    v22[1] = a1;
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v9, v12, v6);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v17((v20 + v19), v9, v6);
    v21 = swift_allocObject();
    *(v21 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v21 + 24) = 50;
    *(v21 + 32) = 2;
    *(v21 + 40) = 285;
    *(v21 + 48) = &unk_20C185A18;
    *(v21 + 56) = v20;
    sub_20C136724();
    sub_20C137C94();
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_20BF5237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[365] = a3;
  v3[359] = a2;
  v3[353] = a1;
  v4 = sub_20C13BB84();
  v3[371] = v4;
  v3[377] = *(v4 - 8);
  v3[383] = swift_task_alloc();
  v3[389] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C80);
  v3[395] = v5;
  v3[396] = *(v5 - 8);
  v3[397] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C88);
  v3[398] = swift_task_alloc();
  v6 = sub_20C137954();
  v3[399] = v6;
  v3[400] = *(v6 - 8);
  v3[401] = swift_task_alloc();
  v7 = sub_20C1379B4();
  v3[402] = v7;
  v3[403] = *(v7 - 8);
  v3[404] = swift_task_alloc();
  v3[405] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0);
  v3[406] = swift_task_alloc();
  v3[407] = swift_task_alloc();
  v8 = sub_20C136C64();
  v3[408] = v8;
  v9 = *(v8 - 8);
  v3[409] = v9;
  v3[410] = *(v9 + 64);
  v3[411] = swift_task_alloc();
  v3[412] = swift_task_alloc();
  v3[413] = swift_task_alloc();
  v3[414] = swift_task_alloc();
  v10 = sub_20C136374();
  v3[415] = v10;
  v3[416] = *(v10 - 8);
  v3[417] = swift_task_alloc();
  v3[418] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v3[419] = swift_task_alloc();
  v3[420] = swift_task_alloc();
  v11 = sub_20C132E94();
  v3[421] = v11;
  v3[422] = *(v11 - 8);
  v3[423] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v3[424] = swift_task_alloc();
  sub_20C132EE4();
  v3[425] = swift_task_alloc();
  v12 = sub_20C137AC4();
  v3[426] = v12;
  v3[427] = *(v12 - 8);
  v3[428] = swift_task_alloc();
  v3[429] = swift_task_alloc();
  v13 = sub_20C137B04();
  v3[430] = v13;
  v3[431] = *(v13 - 8);
  v3[432] = swift_task_alloc();
  v3[433] = sub_20C1369B4();
  v3[434] = swift_task_alloc();
  v14 = sub_20C135334();
  v3[435] = v14;
  v3[436] = *(v14 - 8);
  v3[437] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  v3[438] = swift_task_alloc();
  v15 = sub_20C136F94();
  v3[439] = v15;
  v3[440] = *(v15 - 8);
  v3[441] = swift_task_alloc();
  v3[442] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF529D4, 0, 0);
}

uint64_t sub_20BF529D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[443] = Strong;
  if (!Strong)
  {
    v17 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51B98], v17);
    swift_willThrow();
LABEL_17:

    v50 = v0[1];

    return v50();
  }

  v2 = Strong;
  v3 = v0[442];
  v4 = v0[441];
  v5 = v0[440];
  v6 = v0[439];
  sub_20C1369E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C1517D0;
  sub_20C136F44();
  sub_20C136F54();
  sub_20C136F74();
  v0[335] = v7;
  sub_20BF646AC(&qword_27C767AF0, MEMORY[0x277D53030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770CA8);
  sub_20B816128(&qword_27C770CB0, &qword_27C770CA8);
  sub_20C13DA94();
  v8 = sub_20C13DA74();
  v9 = *(v5 + 8);
  v9(v4, v6);
  v9(v3, v6);
  v10 = v0[365];
  if ((v8 & 1) == 0)
  {
    v19 = v0[411];
    v20 = v0[409];
    v21 = v0[408];
    sub_20C13B454();
    (*(v20 + 16))(v19, v10, v21);
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[442];
      v25 = v0[411];
      v26 = v0[409];
      v75 = v0[439];
      v76 = v0[408];
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      sub_20C1369E4();
      v28 = sub_20C136F84();
      v9(v24, v75);
      (*(v26 + 8))(v25, v76);
      *(v27 + 4) = v28;
      _os_log_impl(&dword_20B517000, v22, v23, "Connected user does not support personalized workout plans: %lld", v27, 0xCu);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    else
    {
      (*(v0[409] + 8))(v0[411], v0[408]);
    }

    v31 = v0[389];
    v32 = v0[377];
    v33 = v0[371];

    (*(v32 + 8))(v31, v33);
    v34 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    v36 = v35;
    v37 = MEMORY[0x277D51B30];
    goto LABEL_16;
  }

  v11 = v0[438];
  v12 = v0[437];
  v13 = v0[436];
  v14 = v0[435];
  sub_20C136C24();
  sub_20C135314();
  (*(v13 + 8))(v12, v14);
  v15 = sub_20C135D54();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_20B520158(v0[438], &unk_27C762370);
LABEL_15:
    v34 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    v36 = v49;
    v37 = MEMORY[0x277D51B38];
LABEL_16:
    (*(*(v34 - 8) + 104))(v36, *v37, v34);
    swift_willThrow();

    goto LABEL_17;
  }

  sub_20C135D44();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v0[438];
  if (EnumCaseMultiPayload == 1)
  {
    sub_20BBC2094(v0[434]);
    (*(v16 + 8))(v30, v15);
    goto LABEL_15;
  }

  v38 = v0[432];
  v39 = v0[431];
  v40 = v0[430];
  (*(v39 + 32))(v38, v0[434], v40);
  v41 = sub_20C137AF4();
  v43 = v42;
  v0[444] = v41;
  v0[445] = v42;
  (*(v39 + 8))(v38, v40);
  (*(v16 + 8))(v30, v15);
  if (!v43)
  {
    goto LABEL_15;
  }

  v44 = v0[424];
  sub_20C132ED4();
  sub_20C137A74();
  sub_20C136AF4();
  v45 = sub_20C135734();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v48 = v0[424];
  if (v47 == 1)
  {
    sub_20B520158(v0[424], &unk_27C762390);
LABEL_22:
    v56 = v0[420];
    v57 = sub_20C133954();
    (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
    v72 = 0;
    goto LABEL_23;
  }

  v52 = v0[423];
  v53 = v0[422];
  v54 = v0[421];
  sub_20C132E84();
  v55 = sub_20C135704();
  (*(v53 + 8))(v52, v54);
  (*(v46 + 8))(v48, v45);
  if ((v55 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_20C136A54();
  v72 = 1;
LABEL_23:
  v73 = v0[419];
  v74 = v0[420];
  v58 = v0[414];
  v69 = v0[413];
  v71 = v0[412];
  v59 = v0[409];
  v60 = v0[408];
  v61 = *(v59 + 16);
  v77 = v0[365];
  v61(v58);
  v70 = v61;
  v62 = *(v59 + 80);
  v63 = swift_allocObject();
  v0[446] = v63;
  *(v63 + 16) = v2;
  v64 = *(v59 + 32);
  v64(v63 + ((v62 + 24) & ~v62), v58, v60);

  swift_asyncLet_begin();
  (v61)(v69, v77, v60);
  v65 = (v62 + 32) & ~v62;
  v66 = swift_allocObject();
  v0[447] = v66;
  *(v66 + 16) = v72;
  *(v66 + 24) = v2;
  v64(v66 + v65, v69, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BD0);
  swift_asyncLet_begin();
  v67 = swift_allocObject();
  v0[448] = v67;
  *(v67 + 16) = v72;
  *(v67 + 24) = v2;

  swift_asyncLet_begin();
  v70(v71, v77, v60);
  v68 = swift_allocObject();
  v0[449] = v68;
  *(v68 + 16) = v72;
  *(v68 + 24) = v2;
  v64(v68 + v65, v71, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CB8);
  swift_asyncLet_begin();
  sub_20B52F9E8(v74, v73, &unk_27C76A970);

  return MEMORY[0x282200930](v0 + 82, v0 + 341, sub_20BF53618, v0 + 322);
}

uint64_t sub_20BF53618()
{
  v1[450] = v0;
  if (v0)
  {
    sub_20B520158(v1[419], &unk_27C76A970);

    return MEMORY[0x2822009F8](sub_20BF54648, 0, 0);
  }

  else
  {
    v1[451] = v1[341];

    v2 = v1[418];

    return MEMORY[0x282200930](v1 + 2, v2, sub_20BF536EC, v1 + 354);
  }
}

uint64_t sub_20BF536EC()
{
  v1[452] = v0;
  if (v0)
  {
    sub_20B520158(v1[419], &unk_27C76A970);

    return MEMORY[0x2822009F8](sub_20BF547CC, 0, 0);
  }

  else
  {
    (*(v1[416] + 16))(v1[417], v1[418], v1[415]);
    v2 = v1[407];

    return MEMORY[0x282200930](v1 + 162, v2, sub_20BF537E0, v1 + 360);
  }
}

uint64_t sub_20BF537E0()
{
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BF54950, 0, 0);
  }

  else
  {
    sub_20B52F9E8(*(v1 + 3256), *(v1 + 3248), &qword_27C76EAA0);

    return MEMORY[0x282200930](v1 + 1936, v1 + 2776, sub_20BF538A4, v1 + 2928);
  }
}

uint64_t sub_20BF538A4()
{
  v1[453] = v0;
  if (v0)
  {
    v2 = v1[419];
    v3 = v1[417];
    v4 = v1[416];
    v5 = v1[415];
    v6 = v1[406];

    sub_20B520158(v6, &qword_27C76EAA0);
    (*(v4 + 8))(v3, v5);
    sub_20B520158(v2, &unk_27C76A970);
    v7 = sub_20BF549F8;
  }

  else
  {
    v7 = sub_20BF5399C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20BF5399C()
{
  v11 = v0[428];
  v1 = v0[427];
  v12 = v0[426];
  v13 = v0[429];
  v2 = v0[404];
  v3 = v0[403];
  v4 = v0[402];
  v5 = v0[398];
  v14 = v0[397];
  v15 = v0[443];

  sub_20C1379A4();
  (*(v1 + 16))(v11, v13, v12);
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_20C137944();
  __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
  sub_20C139934();
  v6 = swift_task_alloc();
  v0[454] = v6;
  *(v6 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v6 + 24) = 50;
  *(v6 + 32) = 2;
  *(v6 + 40) = 330;
  *(v6 + 48) = v14;
  v7 = swift_task_alloc();
  v0[455] = v7;
  v8 = sub_20C136724();
  *v7 = v0;
  v7[1] = sub_20BF53BEC;
  v9 = v0[353];

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF63A1C, v6, v8);
}

uint64_t sub_20BF53BEC()
{
  v2 = *v1;
  *(*v1 + 3648) = v0;

  if (v0)
  {

    v3 = sub_20BF54128;
  }

  else
  {
    v4 = v2[397];
    v5 = v2[396];
    v6 = v2[395];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF53D48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF53D48()
{
  v1 = v0[404];
  v2 = v0[403];
  v3 = v0[402];
  (*(v0[400] + 8))(v0[401], v0[399]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF53DF4, v0 + 372);
}

uint64_t sub_20BF53EC4()
{
  v1 = v0[429];
  v2 = v0[427];
  v3 = v0[426];
  v4 = v0[420];

  sub_20B520158(v4, &unk_27C76A970);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BF54128()
{
  v1 = v0[404];
  v2 = v0[403];
  v3 = v0[402];
  v4 = v0[401];
  v5 = v0[400];
  v6 = v0[399];
  (*(v0[396] + 8))(v0[397], v0[395]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[456];
  v0[457] = v7;
  sub_20C13B494();
  v8 = v7;
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20B517000, v9, v10, "[Inference] Error creating environment: %@", v11, 0xCu);
    sub_20B520158(v12, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  v15 = v0[383];
  v16 = v0[377];
  v17 = v0[371];

  (*(v16 + 8))(v15, v17);
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF54318, v0 + 330);
}

uint64_t sub_20BF543E8()
{
  v1 = v0[429];
  v2 = v0[427];
  v3 = v0[426];
  v4 = v0[420];

  sub_20B520158(v4, &unk_27C76A970);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BF54648()
{
  v1 = v0[450];
  v0[457] = v1;
  sub_20C13B494();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "[Inference] Error creating environment: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v9 = v0[383];
  v10 = v0[377];
  v11 = v0[371];

  (*(v10 + 8))(v9, v11);
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF54318, v0 + 330);
}

uint64_t sub_20BF547CC()
{
  v1 = v0[452];
  v0[457] = v1;
  sub_20C13B494();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "[Inference] Error creating environment: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v9 = v0[383];
  v10 = v0[377];
  v11 = v0[371];

  (*(v10 + 8))(v9, v11);
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF54318, v0 + 330);
}

uint64_t sub_20BF54950()
{
  v1 = *(v0 + 3248);
  v2 = sub_20C135FB4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  return MEMORY[0x282200930](v0 + 1936, v0 + 2776, sub_20BF538A4, v0 + 2928);
}

uint64_t sub_20BF549F8()
{
  v1 = v0[453];
  v0[457] = v1;
  sub_20C13B494();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20B517000, v3, v4, "[Inference] Error creating environment: %@", v5, 0xCu);
    sub_20B520158(v6, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v6, -1, -1);
    MEMORY[0x20F2F6A40](v5, -1, -1);
  }

  v9 = v0[383];
  v10 = v0[377];
  v11 = v0[371];

  (*(v10 + 8))(v9, v11);
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 242, v0 + 347, sub_20BF54318, v0 + 330);
}

uint64_t sub_20BF54B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BF4AF7C(a1);
}

uint64_t sub_20BF54C18(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20BF54C40, 0, 0);
}

uint64_t sub_20BF54C40()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_20BF54D24;
    v2 = *(v0 + 32);

    return sub_20BF4CFC0(v2);
  }

  else
  {
    **(v0 + 16) = MEMORY[0x277D84F90];
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BF54D24(uint64_t a1)
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
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_20BF646F8, 0, 0);
  }
}

uint64_t sub_20BF54E70(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C20);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF54F40, 0, 0);
}

uint64_t sub_20BF54F40()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 48);
    sub_20BF4CB98(v1);
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v2 + 24) = 50;
    *(v2 + 32) = 2;
    *(v2 + 40) = 317;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    v4 = sub_20C135FB4();
    *(v0 + 72) = v4;
    *v3 = v0;
    v3[1] = sub_20BC9C068;
    v5 = *(v0 + 16);

    return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF6470C, v2, v4);
  }

  else
  {
    v6 = sub_20C135FB4();
    (*(*(v6 - 8) + 56))(*(v0 + 16), 1, 1);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_20BF550F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20BF55120, 0, 0);
}

uint64_t sub_20BF55120()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_20BF55204;
    v2 = *(v0 + 32);

    return sub_20BF511A4(v2);
  }

  else
  {
    **(v0 + 16) = MEMORY[0x277D84F90];
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BF55204(uint64_t a1)
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
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_20BF55350, 0, 0);
  }
}

uint64_t sub_20BF55374@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690);
    v13 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D51B88], v13);
    *(swift_allocObject() + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C78);
    return sub_20C137CA4();
  }

  else
  {
    v22[1] = a1;
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v9, v12, v6);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v17((v20 + v19), v9, v6);
    v21 = swift_allocObject();
    *(v21 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
    *(v21 + 24) = 50;
    *(v21 + 32) = 2;
    *(v21 + 40) = 343;
    *(v21 + 48) = &unk_20C185A08;
    *(v21 + 56) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C78);
    sub_20C137C94();
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_20BF5573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_20C13A4D4();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF55800, 0, 0);
}

uint64_t sub_20BF55800()
{
  sub_20C13B5D4();
  sub_20BF60DC8("fetchPersonalizationAwardProgressReferences", 43, 2, &dword_20B517000, 1, v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_20BF55A60;
    v3 = v0[12];

    return sub_20BF4CFC0(v3);
  }

  else
  {
    v5 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D51B50], v5);
    swift_willThrow();
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_20C13A634();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_20C13A624();
    (*(v8 + 8))(v7, v9);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20BF55A60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_20BF55C78;
  }

  else
  {

    *(v4 + 152) = a1;
    v5 = sub_20BF55B90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BF55B90()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = sub_20B71A120(v0[19]);

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *v4 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BF55C78()
{

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF55D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_20C13A4D4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF55E3C, 0, 0);
}

uint64_t sub_20BF55E3C()
{
  sub_20C13B5D4();
  sub_20BF60DC8("makePersonalizationInferenceRequest", 35, 2, &dword_20B517000, 1, v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_20BF55F04;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_20BF561D0(v4, v2, v3);
}

uint64_t sub_20BF55F04()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BF560D8;
  }

  else
  {
    v2 = sub_20BF56018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF56018()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF560D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A634();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_20C13A624();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BF561D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770BC0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF56270, 0, 0);
}

uint64_t sub_20BF56270()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20BF5646C;
    v4 = v0[7];
    v3 = v0[8];

    return sub_20BF566F4(v3, v4);
  }

  else
  {
    v6 = v0[8];
    v7 = sub_20C137794();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_20B520158(v6, &unk_27C770BC0);
    v8 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51B58], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20BF5646C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_20BF56688;
  }

  else
  {

    v2 = sub_20BF56588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF56588()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_20C137794();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BF56688()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BF566F4(uint64_t a1, uint64_t a2)
{
  v3[589] = v2;
  v3[583] = a2;
  v3[577] = a1;
  sub_20C132EE4();
  v3[595] = swift_task_alloc();
  v4 = sub_20C137A44();
  v3[601] = v4;
  v3[607] = *(v4 - 8);
  v3[613] = swift_task_alloc();
  v3[619] = swift_task_alloc();
  v5 = sub_20C1379D4();
  v3[625] = v5;
  v3[631] = *(v5 - 8);
  v3[637] = swift_task_alloc();
  v3[643] = swift_task_alloc();
  v6 = sub_20C136ED4();
  v3[649] = v6;
  v3[655] = *(v6 - 8);
  v3[661] = swift_task_alloc();
  v3[667] = swift_task_alloc();
  v3[673] = swift_task_alloc();
  v7 = sub_20C1378C4();
  v3[679] = v7;
  v3[685] = *(v7 - 8);
  v3[691] = swift_task_alloc();
  v3[697] = swift_task_alloc();
  v3[703] = swift_task_alloc();
  v8 = sub_20C1376C4();
  v3[709] = v8;
  v3[715] = *(v8 - 8);
  v3[721] = swift_task_alloc();
  v3[727] = swift_task_alloc();
  v3[733] = swift_task_alloc();
  v9 = sub_20C1376A4();
  v3[739] = v9;
  v3[745] = *(v9 - 8);
  v3[751] = swift_task_alloc();
  v3[757] = swift_task_alloc();
  v3[763] = swift_task_alloc();
  v10 = sub_20C136374();
  v3[769] = v10;
  v3[775] = *(v10 - 8);
  v3[781] = swift_task_alloc();
  v3[787] = swift_task_alloc();
  v3[793] = swift_task_alloc();
  v11 = sub_20C135D34();
  v3[799] = v11;
  v3[805] = *(v11 - 8);
  v3[811] = swift_task_alloc();
  v3[817] = swift_task_alloc();
  v3[823] = swift_task_alloc();
  v12 = sub_20C137B04();
  v3[829] = v12;
  v3[835] = *(v12 - 8);
  v3[841] = swift_task_alloc();
  v3[847] = sub_20C1369B4();
  v3[853] = swift_task_alloc();
  v3[859] = swift_task_alloc();
  v13 = sub_20C135334();
  v3[865] = v13;
  v3[871] = *(v13 - 8);
  v3[877] = swift_task_alloc();
  v3[883] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  v3[889] = swift_task_alloc();
  v3[895] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  v3[901] = swift_task_alloc();
  v14 = sub_20C136C64();
  v3[907] = v14;
  v15 = *(v14 - 8);
  v3[913] = v15;
  v3[919] = *(v15 + 64);
  v3[925] = swift_task_alloc();
  v3[931] = swift_task_alloc();
  v3[937] = swift_task_alloc();
  v3[943] = swift_task_alloc();
  v3[949] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF56D24, 0, 0);
}

uint64_t sub_20BF56D24()
{
  v1 = v0[913];
  v2 = v0[907];
  v3 = v0[901];
  __swift_project_boxed_opaque_existential_1((v0[589] + 96), *(v0[589] + 120));
  sub_20C13B174();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20B520158(v0[901], &qword_27C768690);
    v4 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();
LABEL_12:
    sub_20B583ECC(0);
    sub_20B583ECC(0);
    sub_20B583ECC(0);

    v35 = v0[1];

    return v35();
  }

  v6 = v0[895];
  v7 = v0[883];
  v8 = v0[871];
  v9 = v0[865];
  v72 = *(v0[913] + 32);
  v72(v0[949], v0[901], v0[907]);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v0[955] = v10;
  sub_20C136C24();
  sub_20C135314();
  v11 = *(v8 + 8);
  v11(v7, v9);
  v12 = sub_20C135D54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v6, 1, v12) == 1)
  {
    sub_20B520158(v0[895], &unk_27C762370);
LABEL_10:
    v30 = v0[949];
    v31 = v0[913];
    v32 = v0[907];
    v33 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51B18], v33);
    swift_willThrow();

LABEL_11:
    (*(v31 + 8))(v30, v32);
    goto LABEL_12;
  }

  v70 = v11;
  sub_20C135D44();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v0[895];
  if (EnumCaseMultiPayload == 1)
  {
    sub_20BBC2094(v0[859]);
    (*(v13 + 8))(v16, v12);
    goto LABEL_10;
  }

  v69 = v0[895];
  v17 = v0[841];
  v18 = v0[835];
  v71 = v10;
  v19 = v0[829];
  v66 = *(v18 + 32);
  v66(v17, v0[859], v19);
  v20 = sub_20C137AE4();
  v22 = v21;
  v0[567] = v20;
  v0[568] = v21;
  v0[961] = v21;
  v23 = v19;
  v10 = v71;
  v65 = *(v18 + 8);
  v65(v17, v23);
  v24 = *(v13 + 8);
  v24(v69, v12);
  if (!v22)
  {
    goto LABEL_10;
  }

  v25 = v24;
  v26 = v0[889];
  v27 = v0[877];
  v68 = v0[865];
  sub_20C136C24();
  sub_20C135314();
  v70(v27, v68);
  v28 = v14(v26, 1, v12);
  v29 = v0[889];
  if (v28 == 1)
  {

    sub_20B520158(v29, &unk_27C762370);
LABEL_22:
    v30 = v0[949];
    v31 = v0[913];
    v32 = v0[907];
    v61 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D51B38], v61);
    swift_willThrow();

    goto LABEL_11;
  }

  sub_20C135D44();
  v37 = swift_getEnumCaseMultiPayload();
  v38 = v0[889];
  v39 = v0[853];
  if (v37 == 1)
  {

    sub_20BBC2094(v39);
    v25(v38, v12);
    goto LABEL_22;
  }

  v40 = v0[841];
  v41 = v0[829];
  v66(v40, v0[853], v41);
  v42 = sub_20C137AF4();
  v44 = v43;
  v0[569] = v42;
  v0[570] = v43;
  v0[967] = v43;
  v65(v40, v41);
  v25(v38, v12);
  if (!v44)
  {

    goto LABEL_22;
  }

  v45 = v0[949];
  v46 = v0[943];
  v63 = v0[937];
  v64 = v0[931];
  v67 = v0[925];
  v47 = v0[913];
  v48 = v0[907];
  v49 = v0[589];

  swift_asyncLet_begin();
  v50 = *(v47 + 16);
  v50(v46, v45, v48);
  v51 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v0[973] = v52;
  *(v52 + 16) = v49;
  v72(v52 + v51, v46, v48);

  swift_asyncLet_begin();
  v50(v63, v45, v48);
  v53 = swift_allocObject();
  v0[979] = v53;
  *(v53 + 16) = v49;
  v72(v53 + v51, v63, v48);

  swift_asyncLet_begin();
  v50(v64, v45, v48);
  v54 = swift_allocObject();
  v0[985] = v54;
  *(v54 + 16) = v49;
  v72(v54 + v51, v64, v48);

  swift_asyncLet_begin();
  v55 = swift_allocObject();
  v0[991] = v55;
  *(v55 + 16) = v49;
  *(v55 + 24) = v71;

  v56 = v71;
  swift_asyncLet_begin();
  v50(v67, v45, v48);
  v57 = swift_allocObject();
  v0[997] = v57;
  *(v57 + 16) = v49;
  v72(v57 + v51, v67, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BD0);
  swift_asyncLet_begin();
  v58 = swift_allocObject();
  v0[1003] = v58;
  *(v58 + 16) = v49;
  *(v58 + 24) = v56;

  v59 = v56;
  swift_asyncLet_begin();
  v60 = v0[823];

  return MEMORY[0x282200930](v0 + 402, v60, sub_20BF579C0, v0 + 1316);
}

uint64_t sub_20BF579C0()
{
  v1[1009] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BF5942C, 0, 0);
  }

  else
  {
    v2 = v1[823];
    v3 = v1[817];
    v4 = v1[805];
    v5 = v1[799];
    v6 = *(v4 + 16);
    v1[1015] = v6;
    v1[1021] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v2, v5);
    v7 = v1[673];

    return MEMORY[0x282200930](v1 + 2, v7, sub_20BF57AAC, v1 + 620);
  }
}

uint64_t sub_20BF57AAC()
{
  v1[1027] = v0;
  if (v0)
  {
    (*(v1[805] + 8))(v1[817], v1[799]);

    v2 = sub_20BF59918;
  }

  else
  {
    v2 = sub_20BF57B58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BF57B58()
{
  v1 = *(v0 + 5384);
  v2 = *(v0 + 5336);
  v3 = *(v0 + 5240);
  v4 = *(v0 + 5192);
  v5 = *(v3 + 16);
  *(v0 + 8264) = v5;
  *(v0 + 8312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  *(v0 + 9464) = sub_20C137A84();
  *(v0 + 9465) = sub_20C137A94();

  return MEMORY[0x282200930](v0 + 3856, v0 + 4568, sub_20BF57C14, v0 + 5344);
}

uint64_t sub_20BF57C14()
{
  v1[1045] = v0;
  if (v0)
  {
    v2 = v1[817];
    v3 = v1[805];
    v4 = v1[799];
    v5 = v1[667];
    v6 = v1[655];
    v7 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF59E04, 0, 0);
  }

  else
  {
    v1[1051] = v1[571];

    v8 = v1[793];

    return MEMORY[0x282200930](v1 + 82, v8, sub_20BF57D48, v1 + 716);
  }
}

uint64_t sub_20BF57D48()
{
  v1[1057] = v0;
  if (v0)
  {
    v2 = v1[817];
    v3 = v1[805];
    v4 = v1[799];
    v5 = v1[667];
    v6 = v1[655];
    v7 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF5A2F0, 0, 0);
  }

  else
  {
    v8 = v1[793];
    v9 = v1[787];
    v10 = v1[775];
    v11 = v1[769];
    v12 = *(v10 + 16);
    v1[1063] = v12;
    v1[1069] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v9, v8, v11);
    v13 = v1[763];

    return MEMORY[0x282200930](v1 + 162, v13, sub_20BF57EAC, v1 + 764);
  }
}

uint64_t sub_20BF57EAC()
{
  v1[1075] = v0;
  if (v0)
  {
    v2 = v1[805];
    v16 = v1[799];
    v17 = v1[817];
    v3 = v1[787];
    v4 = v1[775];
    v5 = v1[769];
    v6 = v1[667];
    v7 = v1[655];
    v8 = v1[649];

    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);
    (*(v2 + 8))(v17, v16);

    return MEMORY[0x2822009F8](sub_20BF5A7DC, 0, 0);
  }

  else
  {
    v9 = v1[763];
    v10 = v1[757];
    v11 = v1[745];
    v12 = v1[739];
    v13 = *(v11 + 16);
    v1[1081] = v13;
    v1[1087] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v10, v9, v12);
    v14 = v1[733];

    return MEMORY[0x282200930](v1 + 242, v14, sub_20BF58040, v1 + 812);
  }
}

uint64_t sub_20BF58040()
{
  v1[1093] = v0;
  if (v0)
  {
    v2 = v1[805];
    v19 = v1[799];
    v20 = v1[817];
    v3 = v1[775];
    v4 = v1[769];
    v5 = v1[757];
    v6 = v1[745];
    v7 = v1[739];
    v17 = v1[787];
    v18 = v1[667];
    v8 = v1[655];
    v16 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v17, v4);
    (*(v8 + 8))(v18, v16);
    (*(v2 + 8))(v20, v19);

    return MEMORY[0x2822009F8](sub_20BF5ACC8, 0, 0);
  }

  else
  {
    v9 = v1[733];
    v10 = v1[727];
    v11 = v1[715];
    v12 = v1[709];
    v13 = *(v11 + 16);
    v1[1099] = v13;
    v1[1105] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v10, v9, v12);
    v14 = v1[703];

    return MEMORY[0x282200930](v1 + 322, v14, sub_20BF58200, v1 + 860);
  }
}

uint64_t sub_20BF58200()
{
  v1[1111] = v0;
  if (v0)
  {
    v2 = v1[805];
    v17 = v1[799];
    v18 = v1[817];
    v3 = v1[775];
    v15 = v1[769];
    v16 = v1[787];
    v4 = v1[745];
    v11 = v1[739];
    v12 = v1[757];
    v5 = v1[727];
    v6 = v1[715];
    v7 = v1[709];
    v8 = v1[655];
    v13 = v1[649];
    v14 = v1[667];

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v12, v11);
    (*(v3 + 8))(v16, v15);
    (*(v8 + 8))(v14, v13);
    (*(v2 + 8))(v18, v17);
    v9 = sub_20BF5B1B4;
  }

  else
  {
    v9 = sub_20BF5836C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20BF5836C()
{
  v1 = v0[703];
  v2 = v0[697];
  v3 = v0[685];
  v4 = v0[679];
  v5 = *(v3 + 16);
  v0[1117] = v5;
  v0[1123] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_20C1379C4();
  v6 = v0[823];

  return MEMORY[0x282200930](v0 + 402, v6, sub_20BF58480, v0 + 908);
}

uint64_t sub_20BF58480()
{
  *(v1 + 9032) = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BF5B6A0, 0, 0);
  }

  else
  {
    (*(v1 + 8120))(*(v1 + 6488), *(v1 + 6584), *(v1 + 6392));
    v2 = *(v1 + 5384);

    return MEMORY[0x282200930](v1 + 16, v2, sub_20BF58554, v1 + 7648);
  }
}

uint64_t sub_20BF58554()
{
  *(v1 + 9080) = v0;
  if (v0)
  {
    (*(*(v1 + 6440) + 8))(*(v1 + 6488), *(v1 + 6392));

    return MEMORY[0x2822009F8](sub_20BF5BBEC, 0, 0);
  }

  else
  {
    (*(v1 + 8264))(*(v1 + 5288), *(v1 + 5384), *(v1 + 5192));

    return MEMORY[0x282200930](v1 + 3856, v1 + 4568, sub_20BF5864C, v1 + 8032);
  }
}

uint64_t sub_20BF5864C()
{
  v1[1141] = v0;
  if (v0)
  {
    v2 = v1[811];
    v3 = v1[805];
    v4 = v1[799];
    v5 = v1[661];
    v6 = v1[655];
    v7 = v1[649];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF5C138, 0, 0);
  }

  else
  {
    v1[1147] = v1[571];

    v8 = v1[793];

    return MEMORY[0x282200930](v1 + 82, v8, sub_20BF58780, v1 + 1052);
  }
}

uint64_t sub_20BF58780()
{
  *(v1 + 9224) = v0;
  if (v0)
  {
    v2 = *(v1 + 6488);
    v3 = *(v1 + 6440);
    v4 = *(v1 + 6392);
    v5 = *(v1 + 5288);
    v6 = *(v1 + 5240);
    v7 = *(v1 + 5192);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_20BF5C684, 0, 0);
  }

  else
  {
    (*(v1 + 8504))(*(v1 + 6248), *(v1 + 6344), *(v1 + 6152));
    v8 = *(v1 + 6104);

    return MEMORY[0x282200930](v1 + 1296, v8, sub_20BF588CC, v1 + 8800);
  }
}

uint64_t sub_20BF588CC()
{
  *(v1 + 9272) = v0;
  if (v0)
  {
    v2 = *(v1 + 6440);
    v11 = *(v1 + 6392);
    v12 = *(v1 + 6488);
    v3 = *(v1 + 6248);
    v4 = *(v1 + 6200);
    v5 = *(v1 + 6152);
    v6 = *(v1 + 5288);
    v7 = *(v1 + 5240);
    v8 = *(v1 + 5192);

    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);
    (*(v2 + 8))(v12, v11);

    return MEMORY[0x2822009F8](sub_20BF5CBD0, 0, 0);
  }

  else
  {
    (*(v1 + 8648))(*(v1 + 6008), *(v1 + 6104), *(v1 + 5912));
    v9 = *(v1 + 5864);

    return MEMORY[0x282200930](v1 + 1936, v9, sub_20BF58A48, v1 + 9184);
  }
}

uint64_t sub_20BF58A48()
{
  *(v1 + 9320) = v0;
  if (v0)
  {
    v2 = *(v1 + 6440);
    v14 = *(v1 + 6392);
    v15 = *(v1 + 6488);
    v3 = *(v1 + 6200);
    v4 = *(v1 + 6152);
    v5 = *(v1 + 6008);
    v6 = *(v1 + 5960);
    v7 = *(v1 + 5912);
    v12 = *(v1 + 6248);
    v13 = *(v1 + 5288);
    v8 = *(v1 + 5240);
    v11 = *(v1 + 5192);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v12, v4);
    (*(v8 + 8))(v13, v11);
    (*(v2 + 8))(v15, v14);

    return MEMORY[0x2822009F8](sub_20BF5D11C, 0, 0);
  }

  else
  {
    (*(v1 + 8792))(*(v1 + 5768), *(v1 + 5864), *(v1 + 5672));
    v9 = *(v1 + 5624);

    return MEMORY[0x282200930](v1 + 2576, v9, sub_20BF58BF0, v1 + 9568);
  }
}

uint64_t sub_20BF58BF0()
{
  v1[1171] = v0;
  if (v0)
  {
    v2 = v1[805];
    v17 = v1[799];
    v18 = v1[811];
    v3 = v1[775];
    v15 = v1[769];
    v16 = v1[781];
    v4 = v1[745];
    v11 = v1[739];
    v12 = v1[751];
    v5 = v1[721];
    v6 = v1[715];
    v7 = v1[709];
    v8 = v1[655];
    v13 = v1[649];
    v14 = v1[661];

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v12, v11);
    (*(v3 + 8))(v16, v15);
    (*(v8 + 8))(v14, v13);
    (*(v2 + 8))(v18, v17);
    v9 = sub_20BF5D668;
  }

  else
  {
    v9 = sub_20BF58D5C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20BF58D5C()
{
  v1 = *(v0 + 9368);
  (*(v0 + 8936))(*(v0 + 5528), *(v0 + 5624), *(v0 + 5432));
  sub_20C137A34();
  *(v0 + 9416) = v1;
  if (v1)
  {
    (*(*(v0 + 5048) + 8))(*(v0 + 5144), *(v0 + 5000));

    v2 = sub_20BF5DBB4;
    v3 = *(v0 + 5384);
    v4 = v0 + 16;
    v5 = v0 + 9952;
  }

  else
  {
    v6 = *(v0 + 5144);
    v7 = *(v0 + 5096);
    v8 = *(v0 + 5048);
    v9 = *(v0 + 5000);
    v14 = *(v0 + 4952);
    v13 = *(v0 + 4904);
    v10 = *(v0 + 4856);
    v11 = *(v0 + 4808);
    sub_20C132ED4();
    (*(v8 + 16))(v7, v6, v9);
    sub_20C137AB4();
    (*(v10 + 16))(v13, v14, v11);
    sub_20C137AA4();
    sub_20C137784();
    (*(v10 + 8))(v14, v11);
    (*(v8 + 8))(v6, v9);
    v2 = sub_20BF58F98;
    v3 = *(v0 + 5384);
    v4 = v0 + 16;
    v5 = v0 + 10288;
  }

  return MEMORY[0x282200920](v4, v3, v2, v5);
}

uint64_t sub_20BF59138()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF595F0()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF59ADC()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF59FC8()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5A4B4()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5A9A0()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5AE8C()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5B378()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5B6A0()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5B724, v0 + 914);
}

uint64_t sub_20BF5B8C4()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5BBEC()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5BC70, v0 + 962);
}

uint64_t sub_20BF5BE10()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5C138()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5C1BC, v0 + 1010);
}

uint64_t sub_20BF5C35C()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5C684()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5C708, v0 + 1058);
}

uint64_t sub_20BF5C8A8()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5CBD0()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5CC54, v0 + 1106);
}

uint64_t sub_20BF5CDF4()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5D11C()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5D1A0, v0 + 1154);
}

uint64_t sub_20BF5D340()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5D668()
{
  (*(v0[631] + 8))(v0[643], v0[625]);
  v1 = v0[673];

  return MEMORY[0x282200920](v0 + 2, v1, sub_20BF5D6EC, v0 + 1202);
}

uint64_t sub_20BF5D88C()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5DD54()
{
  v1 = *(v0 + 7592);
  v2 = *(v0 + 7304);
  v3 = *(v0 + 7256);

  (*(v2 + 8))(v1, v3);

  sub_20B583ECC(&unk_20C185940);
  sub_20B583ECC(&unk_20C185950);
  sub_20B583ECC(&unk_20C185968);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BF5E07C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_20C13B174();
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    v6 = MEMORY[0x277D84FA0];
  }

  else
  {
    v6 = sub_20C136A14();
    (*(v5 + 8))(v3, v4);
  }

  *(swift_allocObject() + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B98);
  return sub_20C137CA4();
}

uint64_t sub_20BF5E21C@<X0>(int64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v56 = *MEMORY[0x277D85DE8];
  v47 = sub_20C134614();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v48 = a2;
  v52[16] = a2;
  LOBYTE(v9) = *(v10 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = v12;
    v38 = a3;
    v39 = v4;
    v36 = &v36;
    MEMORY[0x28223BE20](v14);
    v40 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v13);
    v41 = 0;
    v12 = 0;
    v49 = v10;
    a3 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v10 + 56);
    v10 = (v15 + 63) >> 6;
    v43 = v8 + 8;
    v44 = v8 + 16;
    v45 = v8;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v50 = (v17 - 1) & v17;
LABEL_12:
      v21 = v18 | (v12 << 6);
      v22 = *(v49 + 48);
      v23 = *(v8 + 72);
      v42 = v21;
      v24 = v46;
      v25 = v47;
      (*(v8 + 16))(v46, v22 + v23 * v21, v47);
      v26 = sub_20C1345C4();
      v13 = v27;
      v53 = v26;
      v54 = v27;
      v4 = v28 & 1;
      v55 = v28 & 1;
      v51 = v48;
      sub_20BF61EF4();
      sub_20BF61F48();
      v29 = sub_20C133C04();
      v30 = v26;
      v8 = v45;
      sub_20B583F4C(v30, v13, v4);
      (*(v8 + 8))(v24, v25);
      v17 = v50;
      if (v29)
      {
        *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_20BC12628(v40, v37, v41, v49);
          a3 = v38;
          goto LABEL_17;
        }
      }
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_16;
      }

      v20 = a3[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v50 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = sub_20BF61A7C(v33, v12, v10, sub_20BF61ED4, v52, sub_20BEE1BC4);
  if (v4)
  {

    result = MEMORY[0x20F2F6A40](v33, -1, -1);
    __break(1u);
  }

  else
  {
    v35 = v34;

    MEMORY[0x20F2F6A40](v33, -1, -1);
    result = v35;
LABEL_17:
    *a3 = result;
  }

  return result;
}

uint64_t sub_20BF5E614()
{
  v0 = sub_20C1345C4();
  v2 = v1;
  v4 = v3 & 1;
  sub_20BF61EF4();
  sub_20BF61F48();
  v5 = sub_20C133C04();
  sub_20B583F4C(v0, v2, v4);
  return v5 & 1;
}

uint64_t sub_20BF5E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v42 = sub_20C135FB4();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B88);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = v34 - v7;
  v8 = sub_20C13B0C4();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - v12;
  v14 = sub_20C135174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v38 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C76BC00);
    v20 = sub_20C1356F4();
    sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D51B88], v20);
    *(swift_allocObject() + 16) = v21;
    return sub_20C137CA4();
  }

  else
  {
    v24 = *(v15 + 32);
    v37 = v19;
    v24(v19, v13, v14);
    v25 = v2[15];
    v34[1] = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v25);
    v26 = *(v3 + 16);
    v35 = v5;
    v36 = v26;
    v27 = v42;
    v26(v10, v45, v42);
    v28 = *MEMORY[0x277D4F658];
    v29 = sub_20C13B254();
    (*(*(v29 - 8) + 104))(v10, v28, v29);
    v30 = v39;
    v31 = v40;
    (*(v39 + 104))(v10, *MEMORY[0x277D4F518], v40);
    sub_20C13B2A4();
    (*(v30 + 8))(v10, v31);
    v32 = v37;
    (*(v15 + 16))(v38, v37, v14);
    v36(v35, v45, v27);
    v33 = v41;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C139A54();
    (*(v43 + 8))(v33, v44);
    return (*(v15 + 8))(v32, v14);
  }
}

uint64_t sub_20BF5EC9C()
{
  v0 = sub_20C1356F4();
  sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20BF5EE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

uint64_t sub_20BF5EE64(uint64_t a1)
{
  v2 = sub_20C137AC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v8 = swift_allocObject();
  *(v8 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v8 + 24) = 50;
  *(v8 + 32) = 2;
  *(v8 + 40) = 220;
  *(v8 + 48) = &unk_20C185AA8;
  *(v8 + 56) = v7;
  sub_20C1377F4();
  return sub_20C137C94();
}

uint64_t sub_20BF5F068(uint64_t a1)
{
  v2 = sub_20C137AC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v8 = swift_allocObject();
  *(v8 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v8 + 24) = 50;
  *(v8 + 32) = 2;
  *(v8 + 40) = 354;
  *(v8 + 48) = &unk_20C1858D0;
  *(v8 + 56) = v7;
  sub_20C137794();
  return sub_20C137C94();
}

uint64_t sub_20BF5F248()
{
  v0 = sub_20C1356F4();
  sub_20BF646AC(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BB8);

  return sub_20C137CA4();
}

uint64_t sub_20BF5F388(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_20BF5E07C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20BF61998;
  *(v10 + 24) = v9;
  (*(v3 + 16))(v5, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v5, v2);
  v13 = (v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_20BF61E64;
  v13[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B98);
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BF5F62C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C70);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF5F6F8, 0, 0);
}

uint64_t sub_20BF5F6F8()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_20C139914();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 418;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C135D34();
  *v3 = v0;
  v3[1] = sub_20BCB293C;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF633CC, v2, v4);
}

uint64_t sub_20BF5F838(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BF4AF7C(a1);
}

uint64_t sub_20BF5F8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF4B810(a1, a3);
}

uint64_t sub_20BF5F974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF4C0C4(a1, a3);
}

uint64_t sub_20BF5FA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF4C474(a1, a3);
}

uint64_t sub_20BF5FAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_20B68BF24;

  return sub_20BF4CFC0(a3);
}

uint64_t sub_20BF5FB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BF49928(a1, a3);
}

uint64_t sub_20BF5FC14(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_20C13B9D4();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = sub_20C135994();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF5FD98, 0, 0);
}

uint64_t sub_20BF5FD98()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1((v0[2] + 176), *(v0[2] + 200));
  sub_20C135E34();
  sub_20C139FB4();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = "SeymourUI/RemoteBrowsingRecommendationClient.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 462;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_20BF5FED4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526AC0, v2, v4);
}

uint64_t sub_20BF5FED4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_20BF60024;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_20BC27AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF60024()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v4 = *(v3 + 104);
  v4(v1, *MEMORY[0x277D51DE8], v2);
  sub_20BF646AC(&qword_27C770D28, MEMORY[0x277D51E08]);
  v5 = sub_20C135D14();
  v6 = *(v3 + 8);
  v6(v1, v2);
  v7 = v0[14];
  if (v5 & 1) != 0 || (v8 = v0[8], v9 = v0[6], v4(v8, *MEMORY[0x277D51DF0], v9), v10 = sub_20C135D14(), v6(v8, v9), v7 = v0[14], (v10) || (v12 = v0[4], v11 = v0[5], v13 = v0[3], (*(v12 + 104))(v11, *MEMORY[0x277D4FB00], v13), sub_20BF646AC(&unk_27C770D30, MEMORY[0x277D4FB10]), v14 = sub_20C135D14(), (*(v12 + 8))(v11, v13), v7 = v0[14], (v14))
  {

    v15 = v0[1];
  }

  else
  {
    swift_willThrow();

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_20BF602A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v26 = a2;
  v29 = sub_20C13C4B4();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = sub_20C13C4C4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  (*(v14 + 104))(v16, *MEMORY[0x277D851B8], v13);
  v25 = sub_20C13D3A4();
  (*(v14 + 8))(v16, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v27, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_20BF6454C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_157;
  v20 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v33 = MEMORY[0x277D84F90];
  sub_20BF646AC(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B816128(&qword_2811005A0, &unk_27C766280);
  v21 = v29;
  sub_20C13DA94();
  v22 = v25;
  MEMORY[0x20F2F4AF0](0, v7, v4, v20);
  _Block_release(v20);

  (*(v32 + 8))(v4, v21);
  (*(v30 + 8))(v7, v31);
}

void sub_20BF60764(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 256);
    swift_unknownObjectRetain();

    v9 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
    v10 = sub_20C13C744();
    v11 = [v9 enqueueData_];

    (*(v4 + 16))(v6, a2, v3);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    (*(v4 + 32))(v13 + v12, v6, v3);
    aBlock[4] = sub_20BF645E8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B98FE2C;
    aBlock[3] = &block_descriptor_340;
    v14 = _Block_copy(aBlock);

    [v11 addFinishBlock_];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_20C1356D4();
    sub_20BF646AC(&qword_27C770BB0, MEMORY[0x277D51B70]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D51B60], v15);
    aBlock[0] = v16;
    sub_20C13CD44();
  }
}

uint64_t sub_20BF60A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20BF60A9C, 0, 0);
}

uint64_t sub_20BF60A9C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_20B51C88C(0, &qword_27C770D10);
  *v2 = v0;
  v2[1] = sub_20BF60BA8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000020C1B8360, sub_20BF64544, v1, v3);
}

uint64_t sub_20BF60BA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20B5D4F40;
  }

  else
  {

    v2 = sub_20BF60CC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

BOOL sub_20BF60CE4()
{
  swift_getErrorValue();
  v0 = sub_20C13E0C4();
  v2 = v1;
  if (v0 == sub_20C13C954() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_20C13DFF4();

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  swift_getErrorValue();
  return sub_20C13E0B4() != 1;
}

uint64_t sub_20BF60DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v49) = a5;
  v47 = a4;
  v55 = a6;
  v53 = sub_20C13BB84();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C132E94();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v45 - v12;
  v13 = sub_20C13BB54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB34();
  MEMORY[0x28223BE20](v17 - 8);
  sub_20C13A3C4();
  swift_allocObject();
  v18 = a2;
  v19 = sub_20C13A394();
  sub_20C13A4C4();

  sub_20C13BB44();
  sub_20C13BB24();
  (*(v14 + 8))(v16, v13);
  sub_20C13A4C4();
  sub_20C13B644();
  swift_allocObject();
  v58 = a1;
  v57 = a3;
  v20 = v48;
  v21 = sub_20C13B614();
  v60 = v19;
  v22 = sub_20C13C9D4();
  v24 = v23;
  sub_20C132E64();
  sub_20C13A3B4();
  v49 = v21;
  sub_20C13B634();
  sub_20C13A4B4();

  v25 = sub_20C13BB74();
  v26 = sub_20C13D1F4();

  v27 = os_log_type_enabled(v25, v26);
  v46 = v18;
  v47 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_20B51E694(v22, v24, &v60);
    *(v28 + 12) = 2082;
    v30 = sub_20C13DCA4();
    v32 = sub_20B51E694(v30, v31, &v60);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_20B517000, v25, v26, "[%{public}s] %{public}s begin", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v28, -1, -1);
  }

  (*(v51 + 8))(v20, v53);
  v33 = v56;
  v34 = v52;
  v35 = v59;
  v36 = v54;
  (*(v56 + 16))(v52, v59, v54);
  v37 = (*(v33 + 80) + 49) & ~*(v33 + 80);
  v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v47;
  *(v39 + 24) = v24;
  v40 = v46;
  *(v39 + 32) = v58;
  *(v39 + 40) = v40;
  *(v39 + 48) = v57;
  (*(v33 + 32))(v39 + v37, v34, v36);
  *(v39 + v38) = v49;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v41 = sub_20C13A4A4();
  v42 = MEMORY[0x277D4DFC0];
  v43 = v55;
  v55[3] = v41;
  v43[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v43);

  sub_20C13A494();
  (*(v33 + 8))(v35, v36);
}

uint64_t sub_20BF61358(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a6;
  v60 = a4;
  v61 = a5;
  v59 = a2;
  v65 = a9;
  v66 = a8;
  v12 = sub_20C132E94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = sub_20C13BB84();
  v63 = *(v22 - 8);
  v64 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  if (a1)
  {
    v28 = a1;
    sub_20C13A4B4();
    (*(v13 + 16))(v15, a7, v12);

    v29 = a1;
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v32 = 136446978;
      *(v32 + 4) = sub_20B51E694(v59, a3, &v67);
      *(v32 + 12) = 2082;
      v33 = sub_20C13DCA4();
      v62 = v31;
      v35 = sub_20B51E694(v33, v34, &v67);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      sub_20C132E64();
      sub_20C132DC4();
      v37 = v36;
      v38 = *(v13 + 8);
      v38(v18, v12);
      v38(v15, v12);
      *(v32 + 24) = v37;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v40 = MEMORY[0x28223BE20](ErrorValue);
      (*(v42 + 16))(&v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      v43 = sub_20C13C9D4();
      v45 = sub_20B51E694(v43, v44, &v67);

      *(v32 + 34) = v45;
      _os_log_impl(&dword_20B517000, v30, v62, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v46 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v46, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    (*(v63 + 8))(v24, v64);
  }

  else
  {
    sub_20C13A4B4();
    (*(v13 + 16))(v21, a7, v12);

    v47 = sub_20C13BB74();
    v48 = sub_20C13D1F4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v49 = 136446722;
      *(v49 + 4) = sub_20B51E694(v59, a3, &v67);
      *(v49 + 12) = 2082;
      v50 = sub_20C13DCA4();
      v52 = sub_20B51E694(v50, v51, &v67);

      *(v49 + 14) = v52;
      *(v49 + 22) = 2048;
      sub_20C132E64();
      sub_20C132DC4();
      v54 = v53;
      v55 = *(v13 + 8);
      v55(v18, v12);
      v55(v21, v12);
      *(v49 + 24) = v54;
      _os_log_impl(&dword_20B517000, v47, v48, "[%{public}s] %{public}s ended in %fs", v49, 0x20u);
      v56 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v56, -1, -1);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    (*(v63 + 8))(v27, v64);
  }

  sub_20C13B624();
  return sub_20C13A3A4();
}

unint64_t *sub_20BF619B4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BF63A34(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_20BF61A7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_20BF61B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_20C13DAA4();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_20BF61C00(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_20BD12744(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BF61D64(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

unint64_t sub_20BF61EF4()
{
  result = qword_27C770BA0;
  if (!qword_27C770BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770BA0);
  }

  return result;
}

unint64_t sub_20BF61F48()
{
  result = qword_27C770BA8;
  if (!qword_27C770BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770BA8);
  }

  return result;
}

void sub_20BF62008(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v47 = sub_20C137684();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v8 = *(v3 + 1);
  v10 = *(v3 + 16);
  v11 = v3[1];
  v12 = v3[2];
  v50 = *v3;
  v51 = v11;
  v52 = v12;
  v53 = *(v3 + 6);
  v49 = v10;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
LABEL_39:
        __break(1u);
      }

      else
      {
        v34 = a1;
        a1 = *(v3 + 3);
        v13 = *(v3 + 40);
        v43 = *(v3 + 8);
        v3 = *(v3 + 6);
        sub_20BD12744(v9, v8, v10 & 1);
        v41 = v44 + 16;
        v42 = v3 + 56;
        v40 = (v44 + 32);
        v36 = v13;
        v14 = v10 | v13;
        v35 = v3 + 4;
        v15 = 1;
        v16 = v9;
        v48 = v8;
        v39 = v10;
        v37 = a1;
        v38 = v9;
        while ((v14 & 1) == 0)
        {
          if (v48 != v43)
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v16 == a1)
          {
            v30 = v49;
            v31 = v51;
            v32 = v34;
            *v34 = v50;
            v32[1] = v31;
            v32[2] = v52;
            *(v32 + 6) = v53;
            *(v32 + 7) = a1;
            *(v32 + 8) = v48;
            *(v32 + 72) = v30;
            return;
          }

          if (v10)
          {
            goto LABEL_41;
          }

          if (v16 < v9)
          {
            goto LABEL_33;
          }

          if (v43 != v8)
          {
            goto LABEL_34;
          }

          if (v16 >= a1)
          {
            goto LABEL_35;
          }

          if (v16 < 0)
          {
            goto LABEL_36;
          }

          v17 = a2;
          v18 = 1 << *(v3 + 32);
          if (v16 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v8;
          v20 = v16 >> 6;
          v21 = *(v42 + 8 * (v16 >> 6));
          if (((v21 >> v16) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v3 + 9) != v43)
          {
            goto LABEL_38;
          }

          v22 = *(v3 + 6);
          v45 = *(v44 + 72);
          (*(v44 + 16))(v46, v22 + v45 * v16, v47);
          if ((v21 & (-2 << (v16 & 0x3F))) != 0)
          {
            v16 = __clz(__rbit64(v21 & (-2 << (v16 & 0x3F)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = v35 + v20;
            while (v24 < (v18 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_20B526EA4(v16, v48, 0);
                v16 = __clz(__rbit64(v26)) + v23;
                goto LABEL_23;
              }
            }

            sub_20B526EA4(v16, v48, 0);
            v16 = v18;
          }

LABEL_23:
          v48 = *(v3 + 9);
          v49 = 0;
          (*v40)(v17, v46, v47);
          if (v15 == a3)
          {
            LOBYTE(v10) = v49;
            v8 = v48;
            v9 = v16;
            a1 = v34;
            goto LABEL_31;
          }

          v8 = v19;
          a2 = v17 + v45;
          v14 = v36;
          v28 = __OFADD__(v15++, 1);
          LOBYTE(v10) = v39;
          a1 = v37;
          v9 = v38;
          if (v28)
          {
            __break(1u);
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
      sub_20BD12744(v9, v8, v10 & 1);
LABEL_31:
      v33 = v51;
      *a1 = v50;
      a1[1] = v33;
      a1[2] = v52;
      *(a1 + 6) = v53;
      *(a1 + 7) = v9;
      *(a1 + 8) = v8;
      *(a1 + 72) = v10;
    }
  }

  else
  {
LABEL_27:
    v29 = v3[1];
    *a1 = *v3;
    a1[1] = v29;
    a1[2] = v3[2];
    *(a1 + 6) = *(v3 + 6);
    *(a1 + 7) = v9;
    *(a1 + 8) = v8;
    *(a1 + 72) = v10;
    sub_20BD12744(v9, v8, v10 & 1);
  }
}

uint64_t sub_20BF623F4(uint64_t a1)
{
  v4 = *(sub_20C137AC4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF55D78(a1, v6, v1 + v5);
}

uint64_t sub_20BF624F0(void *a1)
{
  v3 = *(sub_20C132E94() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BF61358(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20BF625A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BF5F62C(a1, v1);
}

uint64_t sub_20BF62640(uint64_t a1)
{
  sub_20C136C64();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BF5F838(a1);
}

uint64_t sub_20BF62724(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5F8D4(a1, v6, v1 + v5);
}

uint64_t sub_20BF62808(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5F974(a1, v6, v1 + v5);
}

uint64_t sub_20BF628EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF5FA14(a1, v5, v4);
}

uint64_t sub_20BF62998(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5FAC4(a1, v6, v1 + v5);
}

uint64_t sub_20BF62A7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF5FB64(a1, v5, v4);
}

uint64_t sub_20BF62BC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF62CA8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_20C137A24();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v45 = MEMORY[0x277D84F90];
    sub_20BB5EA6C(0, v6 & ~(v6 >> 63), 0);
    v40 = v45;
    if (v39)
    {
      result = sub_20C13DAD4();
    }

    else
    {
      result = sub_20C13DAA4();
      v8 = *(a1 + 36);
    }

    v42 = result;
    v43 = v8;
    v44 = v39 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v34 = v6;
      v35 = v38 + 32;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v32 = a1 + 56;
      v33 = v10;
      v30 = v2;
      v31 = a1 + 64;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v42;
        v14 = v43;
        v15 = v44;
        sub_20BB61924(v42, v43, v44, a1);

        sub_20C137A14();
        v16 = v40;
        v45 = v40;
        v18 = *(v40 + 16);
        v17 = *(v40 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_20BB5EA6C(v17 > 1, v18 + 1, 1);
          v16 = v45;
        }

        *(v16 + 16) = v18 + 1;
        v19 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v40 = v16;
        result = (*(v38 + 32))(v16 + v19 + *(v38 + 72) * v18, v5, v36);
        if (v39)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          if (sub_20C13DAF4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC80);
          v11 = sub_20C13CFE4();
          sub_20C13DB94();
          result = v11(v41, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_20B526EA4(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = 1 << *(a1 + 32);
          if (v13 >= v20)
          {
            goto LABEL_38;
          }

          v21 = v13 >> 6;
          v22 = *(v32 + 8 * (v13 >> 6));
          if (((v22 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_40;
          }

          v23 = v22 & (-2 << (v13 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v31 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_20B526EA4(v13, v14, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_33;
              }
            }

            result = sub_20B526EA4(v13, v14, 0);
          }

LABEL_33:
          v29 = *(a1 + 36);
          v42 = v20;
          v43 = v29;
          v44 = 0;
          v6 = v34;
          if (v9 == v34)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF630E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF63150(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20C13CA94();

    return sub_20C13CBA4();
  }

  return result;
}

uint64_t sub_20BF631EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = sub_20C13DAA4();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_20BF61C00(v6, v7, 0, v4, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    result = sub_20C13DAA4();
    if (v14 == 255)
    {
      v15 = -v8;
    }

    else
    {
      v15 = v9;
    }

    if (v14 == 255)
    {
      v16 = v7;
    }

    else
    {
      v16 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 36);
    if (v17 == v16)
    {
      if (v15 >= result)
      {
        v21[0] = result;
        v21[1] = v17;
        v22 = 0;
        v23 = v15;
        v24 = v16;
        v25 = 0;
        result = sub_20BF61B1C(v21, a2, v19);
        v18 = v19[1];
        *a3 = v19[0];
        *(a3 + 16) = v18;
        *(a3 + 32) = v19[2];
        *(a3 + 48) = v20;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_20BF63324()
{
  result = qword_27C770C60;
  if (!qword_27C770C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770C60);
  }

  return result;
}

unint64_t sub_20BF63378()
{
  result = qword_27C770C68;
  if (!qword_27C770C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770C68);
  }

  return result;
}

uint64_t sub_20BF633E4(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5573C(a1, v6, v1 + v5);
}

uint64_t sub_20BF634E0(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF5237C(a1, v6, v1 + v5);
}

uint64_t sub_20BF635DC(uint64_t a1)
{
  sub_20C136C64();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BF54B7C(a1);
}

uint64_t sub_20BF636C0(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20BF54C18(a1, v6, v7, v1 + v5);
}

uint64_t sub_20BF637B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF54E70(a1, v4, v5);
}

uint64_t objectdestroy_258Tm()
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BF63928(uint64_t a1)
{
  v4 = *(sub_20C136C64() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20BF550F8(a1, v6, v7, v1 + v5);
}

void sub_20BF63A34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_20C137684();
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v20 = a4 + 56;
  v46 = v8;
  v47 = v7;
  v42 = 0;
  v43 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v51 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v12 << 6);
    v25 = *(v49 + 48);
    v26 = *(v46 + 72);
    v48 = v24;
    (*(v46 + 16))(v11, v25 + v26 * v24, v6, v9);
    v50 = sub_20C137674();
    v27 = sub_20C13DFA4();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, sub_20C13E164(), sub_20C13CA64(), v31 = sub_20C13E1B4(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v30 && v35[1] == v29;
        if (v36 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      v18 = v51;
    }

    else
    {
LABEL_22:

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v37 = __OFADD__(v42++, 1);
      v18 = v51;
      if (v37)
      {
        __break(1u);
LABEL_25:
        v38 = v49;

        sub_20BC12300(v41, v40, v42, v38);
        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BF63D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = *MEMORY[0x277D85DE8];
  v6 = sub_20C137684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v10;
    v39 = v3;
    v37 = &v37;
    MEMORY[0x28223BE20](v12);
    v40 = &v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = v7 + 16;
    v44 = v7;
    v11 = a2 + 56;
    v41 = 0;
    v42 = (v7 + 8);
    v45 = v6;
    v46 = a1;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v47 = v21;
      v3 = v49;
      (*(v7 + 16))(v49, v22 + v23 * v21, v6);
      v50 = sub_20C137674();
      v24 = sub_20C13DFA4();
      v26 = v25;
      if (*(a2 + 16) && (v3 = v24, sub_20C13E164(), sub_20C13CA64(), v27 = sub_20C13E1B4(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a2 + 48) + 16 * v29);
          v32 = *v31 == v3 && v31[1] == v26;
          if (v32 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        v7 = v44;
        v16 = v48;
      }

      else
      {
LABEL_23:

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        *&v40[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v41++, 1);
        v7 = v44;
        v16 = v48;
        if (v33)
        {
          __break(1u);
LABEL_26:
          v34 = sub_20BC12300(v40, v38, v41, a1);

          return v34;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();

  v34 = sub_20BF619B4(v36, v10, a1, a2);

  MEMORY[0x20F2F6A40](v36, -1, -1);

  return v34;
}

uint64_t sub_20BF641B8(uint64_t a1)
{
  v4 = *(sub_20C137AC4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF4DE20(a1, v6, v1 + v5);
}

uint64_t sub_20BF642B4(uint64_t a1)
{
  v4 = *(sub_20C137AC4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BF4F4C0(a1, v6, v1 + v5);
}

uint64_t objectdestroy_30Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20BF64498(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BF60A78(a1, v5, v4);
}

void sub_20BF6454C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_20BF60764(v2, v3);
}

uint64_t sub_20BF645E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18);
  return sub_20C13CD34();
}

uint64_t sub_20BF646AC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20BF64714(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_springParameters;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:350.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_switchAnimator] = 0;
  v39.receiver = v4;
  v39.super_class = type metadata accessor for PlaybackArtworkView();
  v12 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  v15 = [v12 layer];
  v16 = *MEMORY[0x277CDA138];
  [v15 setCornerCurve_];

  v17 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView;
  [*&v12[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView] setContentMode_];
  v18 = [*&v12[v17] layer];
  [v18 setCornerRadius_];

  v19 = [*&v12[v17] layer];
  [v19 setCornerCurve_];

  [*&v12[v17] setClipsToBounds_];
  [v12 addSubview_];
  sub_20BF64EE0(0, 0);
  sub_20BF653A8();
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C150050;
  v22 = [v12 heightAnchor];
  v23 = [v12 widthAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [*&v12[v17] leadingAnchor];
  v26 = [v12 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v21 + 40) = v27;
  v28 = [*&v12[v17] trailingAnchor];
  v29 = [v12 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v21 + 48) = v30;
  v31 = [*&v12[v17] topAnchor];
  v32 = [v12 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v21 + 56) = v33;
  v34 = [*&v12[v17] bottomAnchor];
  v35 = [v12 bottomAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v21 + 64) = v36;
  sub_20B5E29D0();
  v37 = sub_20C13CC54();

  [v20 activateConstraints_];

  return v12;
}

void sub_20BF64C30()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PlaybackArtworkView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView] layer];
  v2 = [v0 layer];
  [v2 cornerRadius];
  v4 = v3;

  [v1 setCornerRadius_];
  v5 = [v0 layer];
  [v0 bounds];
  v7 = UIEdgeInsetsInsetRect_0(v6);
  v11 = [objc_opt_self() bezierPathWithRoundedRect:v7 cornerRadius:{v8, v9, v10, 6.0}];
  v12 = [v11 CGPath];

  [v5 setShadowPath_];
}

id sub_20BF64E50(char *a1, uint64_t a2)
{
  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v5 = *&a1[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView];

  return [v5 setImage_];
}

void sub_20BF64EE0(char a1, char a2)
{
  if (a1)
  {
    if (qword_27C760798 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_27C79A7D0;
  }

  else
  {
    if (qword_27C7607A0 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_27C79A828;
  }

  v5 = v4[3];
  v32 = v4[2];
  v33 = v5;
  v34 = v4[4];
  v35 = *(v4 + 10);
  v6 = v4[1];
  v31[0] = *v4;
  v31[1] = v6;
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v25 = v31[0];
  v26 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_springParameters);
  v8 = objc_allocWithZone(MEMORY[0x277D75D40]);
  sub_20BF655A8(v31, v24);
  v9 = [v8 initWithDuration:v7 timingParameters:0.0];
  v10 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator;
  v11 = *(v2 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator);
  *(v2 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator) = v9;

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = v28;
  *(v13 + 56) = v27;
  *(v13 + 72) = v14;
  *(v13 + 88) = v29;
  *(v13 + 104) = v30;
  v15 = v26;
  *(v13 + 24) = v25;
  *(v13 + 40) = v15;
  if (a2)
  {
    v16 = *(v2 + v10);
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = sub_20BF65604;
      *(v17 + 24) = v13;
      aBlock[4] = sub_20B5E4150;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_158;
      v18 = _Block_copy(aBlock);
      sub_20BF655A8(v31, v24);
      v19 = v16;

      [v19 addAnimations_];
      _Block_release(v18);
    }

    else
    {
      sub_20BF655A8(v31, v24);
    }

    v22 = *(v2 + v10);
    [v22 startAnimation];
    sub_20BF65610(v31);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      sub_20BF655A8(v31, v24);

      sub_20BF65270(&v25);

      sub_20BF65610(v31);

      return;
    }
  }
}

void sub_20BF65214(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_20BF65270(a2);
  }
}

id sub_20BF65270(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor_];

  v5 = [v1 layer];
  [v5 setShadowOffset_];

  v6 = [v1 layer];
  LODWORD(v7) = *(a1 + 24);
  [v6 setShadowOpacity_];

  v8 = [v1 layer];
  [v8 setShadowRadius_];

  v9 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v9;
  v11[2] = *(a1 + 72);
  return [v1 setTransform_];
}

void sub_20BF653A8()
{
  v1 = [v0 layer];
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.6 alpha:0.1];
  v3 = [v2 CGColor];

  [v1 setBorderColor_];
  v7 = [v0 layer];
  v4 = [v0 traitCollection];
  [v4 displayScale];
  v6 = v5;

  [v7 setBorderWidth_];
}

id sub_20BF654E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackArtworkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BF65684()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_springParameters;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:350.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_animator) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_switchAnimator) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF657A8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_20BF657DC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_activationState;
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_activationState) & 1) == 0)
  {
    sub_20C13B534();
    v7 = sub_20C13BB74();
    v8 = sub_20C13D1F4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20B517000, v7, v8, "[CatalogEditorialCollectionPageDataProvider] Activating", v9, 2u);
      MEMORY[0x20F2F6A40](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + v6) = 1;
    sub_20BF6607C();
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }
}

uint64_t sub_20BF659E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v44 - v6;
  v7 = sub_20C136D34();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1377C4();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v18 - 8);
  v50 = &v44 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  v51 = *(*(v2 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v23 = *MEMORY[0x277D517C8];
  v24 = sub_20C1352F4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  v26 = *(v25 + 56);
  v52 = v22;
  v27 = v22;
  v28 = v9;
  v26(v27, 0, 1, v24);
  v29 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
  swift_beginAccess();
  v53 = v2;
  v30 = v2 + v29;
  v31 = v49;
  sub_20B52F9E8(v30, v17, &qword_27C764970);
  v32 = *(v31 + 48);
  v33 = v32(v17, 1, v9);
  v45 = v11;
  if (v33)
  {

    sub_20B520158(v17, &qword_27C764970);
    v34 = 1;
    v35 = v50;
  }

  else
  {
    (*(v31 + 16))(v11, v17, v9);

    sub_20B520158(v17, &qword_27C764970);
    v36 = v46;
    sub_20C1377A4();
    (*(v31 + 8))(v11, v28);
    v37 = v50;
    sub_20C136D04();
    (*(v47 + 8))(v36, v48);
    v34 = 0;
    v35 = v37;
  }

  v38 = sub_20C132C14();
  (*(*(v38 - 8) + 56))(v35, v34, 1, v38);
  sub_20B52F9E8(v53 + v29, v15, &qword_27C764970);
  if (v32(v15, 1, v28))
  {
    sub_20B520158(v15, &qword_27C764970);
  }

  else
  {
    v39 = v45;
    (*(v31 + 16))(v45, v15, v28);
    sub_20B520158(v15, &qword_27C764970);
    v40 = v46;
    sub_20C1377A4();
    (*(v31 + 8))(v39, v28);
    sub_20C136D14();
    (*(v47 + 8))(v40, v48);
  }

  v41 = sub_20C135ED4();
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v42 = sub_20C136914();
  (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
  return sub_20C133384();
}

uint64_t sub_20BF6607C()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0);
  v74 = *(v76 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644E8);
  v78 = *(v80 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v63 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v81 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v63 - v16;
  v79 = v17;
  MEMORY[0x28223BE20](v18);
  v83 = &v63 - v19;
  v20 = v0;
  sub_20B5E2E18();

  *v4 = sub_20C13D374();
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v21 = sub_20C13C584();
  result = (*(v2 + 8))(v4, v1);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient), *(v20 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient + 24));
    v23 = v71;
    sub_20C139F04();

    v24 = v74;
    v25 = *(v74 + 16);
    v66 = v74 + 16;
    v67 = v25;
    v68 = v10;
    v26 = v70;
    v27 = v76;
    v25(v70, v23, v76);
    v69 = v13;
    v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v65 = v28;
    v29 = (v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v64 = *(v24 + 32);
    v64(v30 + v28, v26, v27);
    v31 = (v30 + v29);
    *v31 = sub_20BF694D8;
    v31[1] = v20;
    sub_20C1377C4();

    v32 = v72;
    sub_20C137C94();
    v74 = *(v24 + 8);
    (v74)(v23, v27);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_20BF69504;
    *(v33 + 24) = v20;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BF69508;
    *(v34 + 24) = v33;
    v67(v23, v32, v27);
    v35 = swift_allocObject();
    v64(v35 + v65, v23, v27);
    v36 = (v35 + v29);
    *v36 = sub_20BC4F0DC;
    v36[1] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0);
    v37 = v77;
    sub_20C137C94();
    (v74)(v32, v27);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_20BF69564;
    *(v38 + 24) = v20;
    v39 = v20;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20B63EEAC;
    *(v40 + 24) = v38;
    v41 = v78;
    v42 = v75;
    v43 = v80;
    (*(v78 + 16))(v75, v37, v80);
    v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v45 = (v68 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v41 + 32))(v46 + v44, v42, v43);
    v47 = (v46 + v45);
    *v47 = sub_20B8FD788;
    v47[1] = v40;

    v48 = v82;
    sub_20C137C94();
    (*(v41 + 8))(v37, v43);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_20BF69590;
    *(v49 + 24) = v39;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_20B5F67D4;
    *(v50 + 24) = v49;
    v51 = v69;
    v52 = v81;
    v53 = v73;
    (*(v69 + 16))(v81, v48, v73);
    v54 = v51;
    v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v56 = (v79 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v54 + 32))(v57 + v55, v52, v53);
    v58 = (v57 + v56);
    *v58 = sub_20B5DF204;
    v58[1] = v50;

    v59 = v83;
    sub_20C137C94();
    v60 = *(v54 + 8);
    v60(v48, v53);
    v61 = sub_20C137CB4();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v61(sub_20B52347C, v62);

    return (v60)(v59, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF66964()
{
  v1 = v0;
  v2 = sub_20C135E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v9 = sub_20C13D374();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_20C13C584();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = sub_20C1377B4();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies);
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v28 = v16;
      v29 = v14;
      v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      v26[1] = v12;
      v27 = v18;
      v30 = v15;
      v19 = MEMORY[0x277D84F90];
      v16(v5, v17, v2);
      while (1)
      {
        v21 = sub_20BE533E4(v29);
        v23 = v22;
        (*(v15 - 8))(v5, v2);
        if (v21)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_20BC0577C(0, v19[2] + 1, 1, v19);
          }

          v25 = v19[2];
          v24 = v19[3];
          if (v25 >= v24 >> 1)
          {
            v19 = sub_20BC0577C((v24 > 1), v25 + 1, 1, v19);
          }

          v19[2] = v25 + 1;
          v20 = &v19[2 * v25];
          v20[4] = v21;
          v20[5] = v23;
        }

        v17 += v27;
        if (!--v13)
        {
          break;
        }

        v28(v5, v17, v2);
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF66C3C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v36 - v5;
  v6 = sub_20C1377C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = v8;
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_20C13BB84();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C554();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v17 = sub_20C13D374();
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = sub_20C13C584();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v39 = v2;
    sub_20C13B534();
    v20 = *(v7 + 16);
    v40 = a1;
    v20(v11, a1, v6);
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v23 = 141558274;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2080;
      sub_20BC4F048(&qword_27C76C7C8, MEMORY[0x277D53670]);
      v24 = sub_20C13DFA4();
      v38 = v20;
      v26 = v25;
      (*(v7 + 8))(v11, v6);
      v27 = sub_20B51E694(v24, v26, v47);
      v20 = v38;

      *(v23 + 14) = v27;
      _os_log_impl(&dword_20B517000, v21, v22, "[CatalogEditorialCollectionPageDataProvider] Updating with detail %{mask.hash}s", v23, 0x16u);
      v28 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    (*(v41 + 8))(v46, v42);
    v29 = v43;
    v30 = v40;
    v20(v43, v40, v6);
    (*(v7 + 56))(v29, 0, 1, v6);
    v31 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
    v32 = v39;
    swift_beginAccess();
    sub_20BC4EF6C(v29, v32 + v31);
    swift_endAccess();
    v33 = v45;
    v20(v45, v30, v6);
    v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v35 = swift_allocObject();
    (*(v7 + 32))(v35 + v34, v33, v6);
    return sub_20C137CA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BF6718C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v80 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v13 = sub_20C13D374();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_20C13C584();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v16(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    sub_20BB5D394((v17 > 1), v10, 1);
    v43 = v90[0];
    goto LABEL_5;
  }

  sub_20C13B534();
  v18 = a1;
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v79 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v93[0] = v23;
    *v22 = 136446210;
    swift_getErrorValue();
    v24 = MEMORY[0x20F2F5850](v81, v82);
    v26 = sub_20B51E694(v24, v25, v93);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20B517000, v19, v20, "[CatalogEditorialCollectionPageDataProvider] Failed to fetch remote content with %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    v27 = v22;
    v2 = v79;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LoadingErrorShelf();
  swift_allocObject();

  a1 = sub_20BEFE8F4(v28, 0, 0);

  v29 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier + 8);
  v79 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  v30 = *(*(v2 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v78 = v29;

  v77 = v30;
  v76 = sub_20C1380F4();
  sub_20C13C734();
  v31 = sub_20C13C724();
  v6 = v2;
  v2 = type metadata accessor for CatalogPageImpressionTracker();
  v32 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v33 = MEMORY[0x277D221C0];
  v32[2] = sub_20C13C6D4();
  v32[3] = v31;
  v32[4] = v33;
  v94 = v2;
  v15 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v95 = v15;
  v93[0] = v32;
  v9 = type metadata accessor for MetricLocationStore();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F98];
  *(v34 + 16) = MEMORY[0x277D84F90];
  *(v34 + 24) = v36;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v93, v2);
  v80 = v75;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = *v40;
  v92[3] = v2;
  v92[4] = v15;
  v92[0] = v42;
  v91[3] = v9;
  v91[4] = &off_2822B6968;
  v91[0] = v34;
  v90[0] = v35;
  sub_20BB5D394(0, 1, 0);
  v43 = v90[0];
  v7 = *(v90[0] + 16);
  v17 = *(v90[0] + 24);
  v10 = v7 + 1;
  if (v7 >= v17 >> 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  *(v43 + 16) = v10;
  v44 = v43 + 24 * v7;
  *(v44 + 32) = a1;
  *(v44 + 40) = &off_2822F4EF0;
  *(v44 + 48) = 0;
  sub_20B51CC64(v92, v90);
  sub_20B51CC64(v91, v89);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  v75[1] = v75;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v89, v89[3]);
  v51 = MEMORY[0x28223BE20](v50);
  v75[2] = a1;
  v53 = (v75 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v48;
  v56 = *v53;
  v87 = v2;
  v88 = v15;
  v86[0] = v55;
  v84 = v9;
  v85 = &off_2822B6968;
  v83[0] = v56;
  v57 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v75 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (v75 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = sub_20BE3AA74(v79, v78, v43, v76, v77, *v61, *v66, 2, v57);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v69 = *(v6 + 32);
  *(v6 + 32) = v68;

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v70 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for CatalogEditorialCollectionPageDataProvider();
  v95 = &off_2822F9338;
  v93[0] = v6;
  v72 = *(v6 + 32);

  v73 = v72;
  sub_20B76FFF8(v93, v73, ObjectType, v70);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_20BF67AF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_20C13C554();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v8 = sub_20C13D374();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_20C13C584();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_10;
  }

  type metadata accessor for ExpandingTextEditorialSectionShelf();
  v12 = 0;
  v13 = a1 + 48;
  while (1)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      break;
    }

    ++v12;
    v13 += 16;
    if (v11 == v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 >= (v11 - 1))
  {
    goto LABEL_10;
  }

  if (v12 + 1 >= v11)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v14 = result;
  type metadata accessor for PreviewVideoLinkShelf();
  v15 = swift_dynamicCastClass() == 0;
  *(v14 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_displaysSeparatorBelow) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_20BAB9800(0, 1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_10:
  v16 = (a1 + 32);
  v17 = v11 + 1;
  v18 = v16;
  while (--v17)
  {
    v19 = v18 + 1;
    type metadata accessor for EditorialLockupsShelf();
    v20 = swift_dynamicCastClass();
    v18 = v19;
    if (v20)
    {
      v82 = v20;
      v21 = (v20 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle);
      v22 = *(v20 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle);
      v23 = *(v20 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle + 8);
      *v21 = 0;
      v21[1] = 0;
      swift_unknownObjectRetain_n();
      sub_20B8D6184(v22, v23);
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  v82 = 0;
LABEL_15:
  v24 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier + 8);
  v80 = *(v2 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  v81 = v2;
  v25 = *(*(v2 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v79 = v24;

  v78 = v25;
  v77 = sub_20C1380F4();
  sub_20C13C734();
  v26 = sub_20C13C724();
  v27 = type metadata accessor for CatalogPageImpressionTracker();
  v28 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v29 = MEMORY[0x277D221C0];
  v28[2] = sub_20C13C6D4();
  v28[3] = v26;
  v28[4] = v29;
  v95 = v27;
  v30 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v96 = v30;
  v94[0] = v28;
  v31 = type metadata accessor for MetricLocationStore();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F98];
  *(v32 + 16) = MEMORY[0x277D84F90];
  *(v32 + 24) = v34;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v94, v27);
  v76[1] = v76;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = (v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = *v38;
  v93[3] = v27;
  v93[4] = v30;
  v93[0] = v40;
  v92[3] = v31;
  v92[4] = &off_2822B6968;
  v92[0] = v32;
  if (v11)
  {
    v76[0] = v30;
    v91[0] = v33;
    sub_20BB5D394(0, v11, 0);
    v33 = v91[0];
    do
    {
      v41 = *v16;
      v91[0] = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      v83 = v41;
      swift_unknownObjectRetain();
      if (v43 >= v42 >> 1)
      {
        sub_20BB5D394((v42 > 1), v43 + 1, 1);
        v33 = v91[0];
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 24 * v43;
      *(v44 + 32) = v83;
      *(v44 + 48) = 0;
      ++v16;
      --v11;
    }

    while (v11);
    v30 = v76[0];
  }

  sub_20B51CC64(v93, v91);
  sub_20B51CC64(v92, v90);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v91, v91[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v76 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  v51 = MEMORY[0x28223BE20](v50);
  v53 = (v76 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v48;
  v56 = *v53;
  v88 = v27;
  v89 = v30;
  v87[0] = v55;
  v85 = v31;
  v86 = &off_2822B6968;
  v84[0] = v56;
  v57 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v76 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (v76 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = sub_20BE3AA74(v80, v79, v33, v77, v78, *v61, *v66, 2, v57);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v94);
  v69 = v81;
  v70 = *(v81 + 32);
  *(v81 + 32) = v68;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = *(v69 + 24);
    ObjectType = swift_getObjectType();
    v95 = type metadata accessor for CatalogEditorialCollectionPageDataProvider();
    v96 = &off_2822F9338;
    v94[0] = v69;
    v73 = *(v69 + 32);
    v74 = *(v71 + 24);

    v75 = v73;
    v74(v94, v75, 1, ObjectType, v71);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  sub_20BE15410();
}

uint64_t sub_20BF683E8()
{
  sub_20B583E6C(v0 + 16);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail, &qword_27C764970);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_archivedSessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_assetClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_upNextQueueClient);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configuration, &qword_27C761800);
  return v0;
}

uint64_t sub_20BF68564()
{
  sub_20BF683E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogEditorialCollectionPageDataProvider()
{
  result = qword_27C770D68;
  if (!qword_27C770D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF68610()
{
  sub_20BC4D224(319, &qword_27C76C7B8, MEMORY[0x277D53670]);
  if (v0 <= 0x3F)
  {
    sub_20BC4D224(319, &qword_281103BF0, MEMORY[0x277D50560]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BF68778()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[CatalogEditorialCollectionPageDataProvider] archived sessions updated, refreshing page", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BF6607C();
  }

  return result;
}

uint64_t sub_20BF68AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20BF68B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20BF68BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionDetail;
  v10 = sub_20C1377C4();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_bookmarks) = v11;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_playlists) = v11;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_resumableSessions) = v11;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configuration;
  v13 = sub_20C134104();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_activationState) = 0;
  v14 = (v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  *v14 = a1;
  v14[1] = a2;
  v58 = a2;
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_eventHub) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v70, v4 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_upNextQueueClient);
  v57 = sub_20C1380F4();
  v15 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v56 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v16 = sub_20C13C724();
  v17 = type metadata accessor for CatalogPageImpressionTracker();
  v18 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v19 = MEMORY[0x277D221C0];
  v18[2] = sub_20C13C6D4();
  v18[3] = v16;
  v18[4] = v19;
  v71 = v17;
  v20 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v72 = v20;
  *&v70 = v18;
  v21 = type metadata accessor for MetricLocationStore();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D84F98];
  v24 = MEMORY[0x277D84F90];
  *(v22 + 16) = MEMORY[0x277D84F90];
  *(v22 + 24) = v23;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v17);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (&v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *v28;
  v69[3] = v17;
  v69[4] = v20;
  v69[0] = v30;
  v68[3] = v21;
  v68[4] = &off_2822B6968;
  v68[0] = v22;
  sub_20B51CC64(v69, v67);
  sub_20B51CC64(v68, v66);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v66, v66[3]);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = *v34;
  v42 = *v39;
  v64 = v17;
  v65 = v20;
  v62 = &off_2822B6968;
  v63[0] = v41;
  v61 = v21;
  v60[0] = v42;
  v43 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v56 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (&v56 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = sub_20BE3AA74(v59, v58, v24, v57, v56, *v47, *v52, 2, v43);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  *(v4 + 32) = v54;
  return v4;
}

uint64_t sub_20BF69508@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_20BF69594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BF69784()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpNextQueuePopOverBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BF697DC()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_20BF69828(char a1)
{
  v3 = *(v1 + 32);
  v4 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_20BF69884(uint64_t a1, float a2, double a3)
{
  v7 = sub_20C132EE4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_20C1321F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  v16 = *(v3 + 32) + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  if (a3 <= 0.0)
  {
    v18 = 0;
    v20 = LODWORD(a2);
  }

  else
  {
    v27 = a2;
    v25[3] = 0;
    v17 = a1;
    v18 = 1;
    v26 = 1;
    (*(v9 + 16))(v11, v17, v8);
    sub_20C132ED4();
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
    v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20C14F980;
    (*(v13 + 32))(v20 + v19, v15, v12);
  }

  v21 = v16 + *(type metadata accessor for ContainerNodeBuilder() + 32);
  v22 = *v21;
  *v21 = v20;
  v23 = *(v21 + 8);
  *(v21 + 8) = v18;
  sub_20B584060(v22, v23);
  return swift_endAccess();
}

unint64_t sub_20BF69B50()
{
  result = qword_27C770D78;
  if (!qword_27C770D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770D78);
  }

  return result;
}

uint64_t sub_20BF69BB4()
{
  v1 = *(v0 + 40);
  sub_20C13E164();
  if ((v1 & 0x4000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if (v1 < 0)
    {
      MEMORY[0x20F2F58E0](1);
      sub_20B992E10();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
      sub_20B7C71D4();
    }
  }

  sub_20C13D604();
  return sub_20C13E1B4();
}

uint64_t sub_20BF69CE4()
{
  v1 = *(v0 + 40);
  if ((v1 & 0x4000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if (v1 < 0)
    {
      MEMORY[0x20F2F58E0](1);
      sub_20B992E10();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
      sub_20B7C71D4();
    }
  }

  return sub_20C13D604();
}

uint64_t sub_20BF69E0C()
{
  v1 = *(v0 + 40);
  sub_20C13E164();
  if ((v1 & 0x4000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if (v1 < 0)
    {
      MEMORY[0x20F2F58E0](1);
      sub_20B992E10();
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
      sub_20B7C71D4();
    }
  }

  sub_20C13D604();
  return sub_20C13E1B4();
}

uint64_t sub_20BF69F38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_20BF69FDC(v7, v8) & 1;
}

unint64_t sub_20BF69F88()
{
  result = qword_27C770D80;
  if (!qword_27C770D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770D80);
  }

  return result;
}

uint64_t sub_20BF69FDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 40);
  if ((v4 & 0x4000000000000000) != 0)
  {
    if ((*(a2 + 47) & 0x40) != 0)
    {
      sub_20B63C198();
      if (sub_20C13D5F4())
      {
        return sub_20C13D5F4() & 1;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
    if ((v5 & 0x4000000000000000) == 0)
    {
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = *(a1 + 32);
      v10 = a1;
      v12 = *a2;
      v11 = *(a2 + 8);
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = *(a2 + 32);
      if (v4 < 0)
      {
        if ((v5 & 0x8000000000000000) == 0 || v3 != v12)
        {
          return 0;
        }

        if (v8)
        {
          if ((v13 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v13 & 1) != 0 || v2 != v11)
        {
          return 0;
        }

        v19 = sub_20C13C954();
        v21 = v20;
        if (v19 == sub_20C13C954() && v21 == v22)
        {
        }

        else
        {
          v23 = sub_20C13DFF4();

          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }

        if ((v9 & 0x100000000) != 0)
        {
          if ((v15 & 0x100000000) != 0)
          {
LABEL_6:
            sub_20B63C198();
            return sub_20C13D5F4() & 1;
          }
        }

        else if ((v15 & 0x100000000) == 0 && v9 == v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v16 = *(v10 + 48);
        v17 = *(a2 + 48);
        *v24 = v3;
        *&v24[1] = v2;
        v24[2] = v8;
        v25 = v7;
        v26 = BYTE4(v7) & 1;
        v27 = BYTE5(v7);
        v28 = v9;
        v29 = v4 & 1;
        v30 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          *v31 = v12;
          *&v31[1] = v11;
          v31[2] = v13;
          v32 = v14;
          v33 = BYTE4(v14) & 1;
          v34 = BYTE5(v14);
          v35 = v15;
          v36 = v5 & 1;
          v37 = v17;
          if (sub_20B7C7E30(v24, v31))
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return 0;
}

double sub_20BF6A20C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BF6A2A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  if (*a1 == 1)
  {
    v53 = 0uLL;
    LOBYTE(v54) = 1;
    *(&v54 + 1) = 0;
    *&v55 = 0;
    WORD4(v55) = 128;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    LOBYTE(v59) = 0;
    *(&v59 + 1) = MEMORY[0x277D84F90];
    *&v60[0] = MEMORY[0x277D84F90];
    *(v60 + 8) = 0u;
    *(&v60[1] + 8) = 0u;
    *(&v60[2] + 1) = 0;
    v61 = 2;
    nullsub_1(&v53);
    v9 = v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row;
    v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
    v70 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
    v71 = v10;
    v72 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
    v66 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
    v67 = v11;
    v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
    v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
    v69 = v12;
    v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
    v62 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
    v63 = v13;
    v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
    v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
    v65 = v14;
    v15 = v60[2];
    *(v9 + 128) = v60[1];
    *(v9 + 144) = v15;
    *(v9 + 160) = v61;
    v16 = v58;
    *(v9 + 64) = v57;
    *(v9 + 80) = v16;
    v17 = v60[0];
    *(v9 + 96) = v59;
    *(v9 + 112) = v17;
    v18 = v54;
    *v9 = v53;
    *(v9 + 16) = v18;
    v19 = v56;
    *(v9 + 32) = v55;
    *(v9 + 48) = v19;
  }

  else
  {
    v51 = v4;
    v52 = v5;
    v21 = *(a1 + 24);
    v20 = *(a1 + 32);
    v22 = v2;
    v23 = v7;
    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = v8;
    v50 = v8;
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v25;
    v7 = v23;
    v2 = v22;
    v27[4] = v24;
    v27[5] = v21;
    v4 = v51;
    v5 = v52;
    v27[6] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C14F980;
    *(v28 + 32) = v27;
    v53 = 0uLL;
    LOBYTE(v54) = 1;
    *(&v54 + 1) = 0;
    *&v55 = 0;
    WORD4(v55) = 128;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    LOBYTE(v59) = 0;
    *(&v59 + 1) = v28;
    *&v60[0] = MEMORY[0x277D84F90];
    *(v60 + 8) = 0u;
    *(&v60[1] + 8) = 0u;
    *(&v60[2] + 1) = 0;
    v61 = 2;
    nullsub_1(&v53);
    v29 = v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row;
    v30 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
    v70 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
    v71 = v30;
    v72 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
    v31 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
    v66 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
    v67 = v31;
    v32 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
    v68 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
    v69 = v32;
    v33 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
    v62 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
    v63 = v33;
    v34 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
    v64 = *(v22 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
    v65 = v34;
    v35 = v60[2];
    *(v29 + 128) = v60[1];
    *(v29 + 144) = v35;
    *(v29 + 160) = v61;
    v36 = v58;
    *(v29 + 64) = v57;
    *(v29 + 80) = v36;
    v37 = v60[0];
    *(v29 + 96) = v59;
    *(v29 + 112) = v37;
    v38 = v54;
    *v29 = v53;
    *(v29 + 16) = v38;
    v39 = v56;
    *(v29 + 32) = v55;
    *(v29 + 48) = v39;

    v40 = v50;
  }

  sub_20B634408(&v62);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v43 = sub_20B61CFB0(v2, result);
      if (v44)
      {
        v46 = v43;
        v47 = v44;
        v48 = v45;
        sub_20B5E2E18();
        *v7 = sub_20C13D374();
        (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
        v49 = sub_20C13C584();
        result = (*(v5 + 8))(v7, v4);
        if ((v49 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6205C8(v46, v47, v48, v2, 0, v42);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BF6A6A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_storefrontLocalizer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountSettingAvatarRowShelf()
{
  result = qword_27C770DA8;
  if (!qword_27C770DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF6A820()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BF6A8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider), v1);
  (*(v2 + 8))(v6, v1, v2);
  v3 = v6[0];
  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  v5[3] = v6[3];
  v5[4] = v6[4];
  sub_20BF6A2A4(v5);
  sub_20B8FD958(v3);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BB2AACC();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_20BF6AA3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7[0] = v1;
    v7[1] = v2;
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    sub_20B8FD908(v1);
    sub_20BF6A2A4(v7);

    return sub_20B8FD958(v1);
  }

  return result;
}

uint64_t sub_20BF6AAF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BF6AB68@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20BF6AC1C(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountSettingLink();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 57) & 0x78 | a1 & 7)
  {
    sub_20C13B534();

    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = a1;
      v19 = v12;
      *v11 = 136446210;

      v13 = sub_20C13C9D4();
      v15 = sub_20B51E694(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20B517000, v9, v10, "Shelf lockup navigation triggered for item: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x20F2F6A40](v12, -1, -1);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v17 = result;
      swift_storeEnumTagMultiPayload();
      sub_20B64E88C(v8, 2, v17);
      swift_unknownObjectRelease();
      return sub_20BA01E58(v8);
    }
  }

  return result;
}

uint64_t sub_20BF6AE8C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_row;
  sub_20B5D8060(v9);
  v2 = v9[9];
  *(v1 + 128) = v9[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v10;
  v3 = v9[5];
  *(v1 + 64) = v9[4];
  *(v1 + 80) = v3;
  v4 = v9[7];
  *(v1 + 96) = v9[6];
  *(v1 + 112) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 16) = v5;
  v6 = v9[3];
  *(v1 + 32) = v9[2];
  *(v1 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBF0);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_avatarSettingsProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_eventHub) = v8[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + OBJC_IVAR____TtC9SeymourUI28AccountSettingAvatarRowShelf_subscriptionToken) = sub_20C13A914();
  return v0;
}

unint64_t sub_20BF6B030(uint64_t a1)
{
  result = sub_20BF6B058();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20BF6B058()
{
  result = qword_27C764A90;
  if (!qword_27C764A90)
  {
    sub_20C134E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764A90);
  }

  return result;
}

uint64_t WorkoutPlanArtworkViewAppearance.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BF6B140()
{
  result = qword_27C770DB8;
  if (!qword_27C770DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770DB8);
  }

  return result;
}

uint64_t sub_20BF6B1A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A294();
    sub_20B522414(v3);

    v5 = sub_20C137CB4();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v5(sub_20B52347C, v6);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20BF6B33C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v25 = v14;
    *v13 = 136446210;
    sub_20B654574();
    v16 = sub_20C13CF94();
    v18 = sub_20B51E694(v16, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, "[ContentRatingCache] successfully activated with content ratings %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v19 = v15;
    v3 = v23;
    MEMORY[0x20F2F6A40](v19, -1, -1);
    v20 = v13;
    a2 = v24;
    MEMORY[0x20F2F6A40](v20, -1, -1);
  }

  v21 = (*(v7 + 8))(v9, v6);
  MEMORY[0x28223BE20](v21);
  *(&v23 - 4) = v3;
  *(&v23 - 3) = a1;
  *(&v23 - 2) = a2;
  return sub_20C13A294();
}

uint64_t sub_20BF6B574(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v9 = a1;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2F5850](v23, v24);
    v17 = sub_20B51E694(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20B517000, v10, v11, "[ContentRatingCache] failed to activate with error %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    v18 = v13;
    a2 = v22;
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  v19 = (*(v6 + 8))(v8, v5);
  MEMORY[0x28223BE20](v19);
  *(&v21 - 2) = v2;
  *(&v21 - 1) = a2;
  return sub_20C13A294();
}

uint64_t sub_20BF6B7A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  sub_20B522A60(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI18ContentRatingCacheC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_20BF6B830(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - v9;
  v10 = sub_20C13C4B4();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13C4F4();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = &v43 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  sub_20C13A294();
  v19 = aBlock;
  if (v55)
  {
    if (v55 == 1)
    {
      sub_20B5E2E18();
      v20 = sub_20C13D374();
      v21 = swift_allocObject();
      v21[2] = a3;
      v21[3] = sub_20B7E9034;
      v21[4] = v18;
      v58 = sub_20BF6C374;
      v59 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = sub_20B7B548C;
      v57 = &block_descriptor_159;
      v22 = _Block_copy(&aBlock);

      sub_20C13C4D4();
      v53 = MEMORY[0x277D84F90];
      sub_20B7E9080();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
      sub_20B682EA8();
      sub_20C13DA94();
      sub_20C13D2F4();
      _Block_release(v22);

      sub_20B522A60(v19, 1);
      (*(v49 + 8))(v12, v10);
      (*(v47 + 8))(v15, v48);
    }

    else if (aBlock)
    {

      sub_20BF6C2F4();
      v28 = swift_allocError();
      *v29 = 3;
      aBlock = v28;
      LOBYTE(v55) = 1;
      a1(&aBlock);
    }

    else
    {
      v30 = v46;
      sub_20B522414(v46);
      v31 = swift_allocObject();
      *(v31 + 16) = sub_20BF6C348;
      *(v31 + 24) = a3;
      v32 = v43;
      v33 = v44;
      v34 = v45;
      (*(v44 + 16))(v43, v30, v45);
      v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v36 = swift_allocObject();
      (*(v33 + 32))(v36 + v35, v32, v34);
      v37 = (v36 + ((v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v37 = sub_20B7F133C;
      v37[1] = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0);
      v38 = v50;
      sub_20C137C94();
      (*(v33 + 8))(v46, v34);
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20B7E9034;
      *(v39 + 24) = v18;
      v40 = v52;
      v41 = sub_20C137CB4();
      v42 = swift_allocObject();
      *(v42 + 16) = sub_20B5D9BA4;
      *(v42 + 24) = v39;

      v41(sub_20B523484, v42);

      (*(v51 + 8))(v38, v40);
    }
  }

  else
  {
    v23 = v50;
    sub_20BF6BFA4();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_20B7E9034;
    *(v24 + 24) = v18;
    v25 = v52;
    v26 = sub_20C137CB4();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_20BF6C5A4;
    *(v27 + 24) = v24;

    v26(sub_20B52E438, v27);

    sub_20B522A60(v19, 0);
    (*(v51 + 8))(v23, v25);
  }
}

void sub_20BF6BFA4()
{
  sub_20C13A294();
  if (v3)
  {
    sub_20BF6C2F4();
    v0 = swift_allocError();
    *v1 = 0;
    *(swift_allocObject() + 16) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0);
    sub_20C137CA4();
    sub_20B522A60(v2, v3);
  }

  else
  {
    *(swift_allocObject() + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0);
    sub_20C137CA4();
  }
}

uint64_t sub_20BF6C0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_20BF6BFA4();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_20C137CB4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20BF6C5A4;
  *(v11 + 24) = v9;

  v10(sub_20B52E438, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BF6C27C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0);

  return sub_20C137C94();
}

unint64_t sub_20BF6C2F4()
{
  result = qword_27C770DC0;
  if (!qword_27C770DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770DC0);
  }

  return result;
}

id sub_20BF6C380@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = v2;
  v3 = *(v1 + 96);
  *(a1 + 8) = v3;
  return sub_20BF6C3B8(v2, v3);
}

id sub_20BF6C3B8(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_20BF6C438()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = 0;
  v4 = *(v1 + 96);
  *(v1 + 96) = 2;
  sub_20B522A60(v3, v4);
  dispatch_group_leave(v2);
}

void sub_20BF6C480()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 88);
  *(v2 + 88) = v1;
  v5 = *(v2 + 96);
  *(v2 + 96) = 0;

  sub_20B522A60(v4, v5);
  dispatch_group_leave(v3);
}

void sub_20BF6C4E4()
{
  v1 = *(v0 + 88);
  *(v0 + 88) = 1;
  v2 = *(v0 + 96);
  *(v0 + 96) = 2;
  sub_20B522A60(v1, v2);
}

unint64_t sub_20BF6C538()
{
  result = qword_27C770DC8;
  if (!qword_27C770DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770DC8);
  }

  return result;
}

uint64_t static AppWillTerminateOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_20BF6C62C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [a1 setDelegate_];
  [a1 setModalPresentationStyle_];
  v11 = [a1 popoverPresentationController];
  [v11 setPermittedArrowDirections_];

  v12 = [a1 popoverPresentationController];
  if (v12)
  {
    v13 = v12;
    [v12 setDelegate_];
  }

  v14 = [a1 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    if (a6)
    {
      sub_20B5E5C28();
      v16 = sub_20C13CC54();
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v15 setPassthroughViews_];
  }
}

uint64_t sub_20BF6C7F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x28223BE20](v4);
  v109 = (&v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_20C1335F4();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_20C137F24();
  v7 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1344C4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v108 - v13;
  v15 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer + 24);
  v125 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v17 = sub_20C138D34();
  v114 = v18;
  v115 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F980;
  v120 = v2;
  *(v19 + 32) = sub_20BF6D298(a1);
  v156 = v19;
  v119 = a1;
  sub_20C135AA4();
  v20 = sub_20C134494();
  v21 = *(v10 + 8);
  v117 = v10 + 8;
  v118 = v9;
  v21(v14, v9);
  v22 = *(v20 + 16);
  if (v22)
  {
    v112 = v20;
    v113 = v21;
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v129 = *(v23 + 56);
    v130 = v24;
    v128 = (v23 - 8);
    v26 = MEMORY[0x277D84F90];
    v28 = v126;
    v27 = v127;
    v124 = v23;
    do
    {
      v131 = v26;
      v130(v28, v25, v27);
      v29 = sub_20C137EF4();
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        v33 = v125;
        __swift_project_boxed_opaque_existential_1(v125, v125[3]);
        v34 = sub_20C138D34();
        v36 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        v37 = sub_20C138D34();
        v39 = v38;
        v40 = swift_allocObject();
        *(v40 + 16) = v31;
        *(v40 + 24) = v32;
        *(v40 + 32) = v34;
        *(v40 + 40) = v36;
        *(v40 + 48) = v37;
        *(v40 + 56) = v39;
        v28 = v126;
        v27 = v127;
        v41 = sub_20C137F04();
        v43 = v42;
        (*v128)(v28, v27);
        *(v40 + 64) = v41;
        *(v40 + 72) = v43;
        v26 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_20BC05D3C(0, *(v26 + 2) + 1, 1, v26);
        }

        v45 = *(v26 + 2);
        v44 = *(v26 + 3);
        if (v45 >= v44 >> 1)
        {
          v26 = sub_20BC05D3C((v44 > 1), v45 + 1, 1, v26);
        }

        *(v26 + 2) = v45 + 1;
        *&v26[8 * v45 + 32] = v40 | 0x1000000000000002;
      }

      else
      {
        (*v128)(v28, v27);
        v26 = v131;
      }

      v25 += v129;
      --v22;
    }

    while (v22);

    v21 = v113;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_20B8D921C(v26);
  v46 = v116;
  sub_20C135AA4();
  v47 = sub_20C134374();
  v21(v46, v118);
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 56);
  v52 = (v49 + 63) >> 6;
  v130 = (v121 + 16);
  v131 = v47;
  v53 = (v121 + 8);

  v55 = 0;
  v129 = MEMORY[0x277D84F90];
LABEL_16:
  v56 = v122;
  while (v51)
  {
LABEL_23:
    v58 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    (*(v121 + 16))(v56, *(v131 + 48) + *(v121 + 72) * (v58 | (v55 << 6)), v123);
    v59 = sub_20C1335E4();
    v61 = v60;
    *&v145 = v59;
    *(&v145 + 1) = v60;
    v63 = v62 & 1;
    LOBYTE(v146) = v62 & 1;
    LOBYTE(v135) = 1;
    sub_20BE0D244();
    sub_20BE0D298();
    v64 = sub_20C133C04();
    v65 = v63;
    v56 = v122;
    sub_20B583F4C(v59, v61, v65);
    if (v64)
    {
      v66 = sub_20C1335C4();
      if (v67)
      {
        v68 = v125;
        v69 = v125[3];
        v127 = v67;
        v128 = v66;
        __swift_project_boxed_opaque_existential_1(v125, v69);
        v126 = sub_20C138D34();
        v124 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v68[3]);
        v71 = sub_20C138D34();
        v73 = v72;
        v74 = swift_allocObject();
        v75 = v127;
        *(v74 + 16) = v128;
        *(v74 + 24) = v75;
        v76 = v124;
        *(v74 + 32) = v126;
        *(v74 + 40) = v76;
        *(v74 + 48) = v71;
        *(v74 + 56) = v73;
        v77 = v122;
        v78 = sub_20C1335D4();
        v80 = v79;
        (*v53)(v77, v123);
        *(v74 + 64) = v78;
        *(v74 + 72) = v80;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_20BC05D3C(0, *(v129 + 16) + 1, 1, v129);
          v129 = result;
        }

        v82 = *(v129 + 16);
        v81 = *(v129 + 24);
        if (v82 >= v81 >> 1)
        {
          result = sub_20BC05D3C((v81 > 1), v82 + 1, 1, v129);
          v129 = result;
        }

        v83 = v129;
        *(v129 + 16) = v82 + 1;
        *(v83 + 8 * v82 + 32) = v74 | 0x1000000000000002;
        goto LABEL_16;
      }
    }

    result = (*v53)(v56, v123);
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v57 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v57);
    ++v55;
    if (v51)
    {
      v55 = v57;
      goto LABEL_23;
    }
  }

  sub_20B8D921C(v129);
  v135 = 0uLL;
  LOBYTE(v136) = 1;
  *(&v136 + 1) = *v134;
  DWORD1(v136) = *&v134[3];
  *(&v136 + 1) = 0;
  *&v137 = 0;
  WORD4(v137) = 128;
  *(&v137 + 10) = *&v132[7];
  HIWORD(v137) = v133;
  LOBYTE(v141) = 0;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  *(&v141 + 1) = *v132;
  DWORD1(v141) = *&v132[3];
  *(&v141 + 1) = v156;
  v142 = MEMORY[0x277D84F90];
  *&v143 = 0;
  *(&v143 + 1) = v115;
  *v144 = v114;
  *&v144[8] = xmmword_20C150190;
  nullsub_1(&v135);
  v84 = v120;
  v85 = v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row;
  v86 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 144);
  v153 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 128);
  v154 = v86;
  v155 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 160);
  v87 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 80);
  v149 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 64);
  v150 = v87;
  v88 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 112);
  v151 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 96);
  v152 = v88;
  v89 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 16);
  v145 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row);
  v146 = v89;
  v90 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 48);
  v147 = *(v120 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row + 32);
  v148 = v90;
  v91 = v142;
  v92 = *v144;
  *(v85 + 128) = v143;
  *(v85 + 144) = v92;
  *(v85 + 160) = *&v144[16];
  v93 = v140;
  *(v85 + 64) = v139;
  *(v85 + 80) = v93;
  *(v85 + 96) = v141;
  *(v85 + 112) = v91;
  v94 = v136;
  *v85 = v135;
  *(v85 + 16) = v94;
  v95 = v138;
  *(v85 + 32) = v137;
  *(v85 + 48) = v95;
  sub_20B634408(&v145);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v96 = result;
  if (*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    return swift_unknownObjectRelease();
  }

  v97 = sub_20B61D978(v84, result);
  if (!v98)
  {
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  v100 = v97;
  v101 = v98;
  v102 = v99;
  sub_20B5E2E18();
  v103 = sub_20C13D374();
  v105 = v109;
  v104 = v110;
  *v109 = v103;
  v106 = v111;
  (*(v104 + 104))(v105, *MEMORY[0x277D85200], v111);
  v107 = sub_20C13C584();
  result = (*(v104 + 8))(v105, v106);
  if (v107)
  {
    sub_20B620E04(v100, v101, v102, v120, 1, v96);

    return swift_unknownObjectRelease();
  }

LABEL_39:
  __break(1u);
  return result;
}
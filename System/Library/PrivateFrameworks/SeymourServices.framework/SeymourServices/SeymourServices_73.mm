uint64_t sub_2275D88A4(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v42 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v41[0] = *(*(a1 + 48) + v16);
    v41[1] = v17;

    a2(v40, v41);

    v19 = v40[0];
    v18 = v40[1];
    v20 = *v42;
    v22 = sub_226F491D4(v40[0]);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_226FF4564();
      }
    }

    else
    {
      v27 = v42;
      sub_226FEC490(v25, v39 & 1);
      v28 = *v27;
      v29 = sub_226F491D4(v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v42;
    if (v26)
    {
      v12 = v31[7];
      v13 = *(v12 + 8 * v22);
      *(v12 + 8 * v22) = v18;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      *(v31[6] + 8 * v22) = v19;
      *(v31[7] + 8 * v22) = v18;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2275D8AFC(uint64_t a1)
{
  v37 = sub_227663480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_2276633E0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D8E04(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v36[1] = v2;
    v49 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v11, 0);
    v13 = -1 << *(a1 + 32);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v40 = v5 + 8;
    v41 = v5 + 16;
    v38 = v11;
    v39 = v5 + 32;
    v37 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v47 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 36);
      v44 = v15;
      v45 = v18;
      v19 = *(a1 + 48);
      v46 = *(v5 + 72);
      v20 = v42;
      (*(v5 + 16))(v42, v19 + v46 * v14, v4);
      sub_227663470();
      (*(v5 + 8))(v20, v4);
      v21 = v48;
      v49 = v48;
      v22 = a1;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v48 = v24 + 1;
        sub_226F1F568(v23 > 1, v24 + 1, 1);
        v25 = v48;
        v21 = v49;
      }

      *(v21 + 16) = v25;
      v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v48 = v21;
      result = (*(v5 + 32))(v21 + v26 + v24 * v46, v10, v4);
      v16 = 1 << *(v22 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v27 = *(v47 + 8 * v17);
      if ((v27 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v22;
      if (v45 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v14 & 0x3F));
      if (v28)
      {
        v16 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v10;
        v30 = v4;
        v31 = v17 << 6;
        v32 = v17 + 1;
        v33 = (v37 + 8 * v17);
        while (v32 < (v16 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_226EB526C(v14, v45, 0);
            v16 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v14, v45, 0);
LABEL_19:
        v4 = v30;
        v10 = v29;
      }

      v15 = v44 + 1;
      v14 = v16;
      if (v44 + 1 == v38)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D91B0(uint64_t a1)
{
  v3 = sub_227662750();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v37 - v7;
  v49 = sub_227663480();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2276662D0();
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v47);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v37[1] = v1;
    v59 = MEMORY[0x277D84F90];
    sub_226F20848(0, v15, 0);
    v17 = -1 << *(a1 + 32);
    v57 = a1 + 56;
    v58 = v59;
    result = sub_22766CC90();
    v18 = result;
    v19 = 0;
    v45 = v8 + 16;
    v44 = *MEMORY[0x277D52238];
    v42 = v11 + 32;
    v43 = v8 + 8;
    v38 = a1 + 64;
    v39 = v15;
    v40 = v8;
    v41 = a1;
    v46 = v11;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v57 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_22;
      }

      v53 = v19;
      v54 = *(a1 + 36);
      v55 = 1 << v18;
      v22 = v48;
      v23 = v49;
      (*(v8 + 16))(v48, *(a1 + 48) + *(v8 + 72) * v18, v49);
      v56 = sub_2276633E0();
      v24 = sub_2276662B0();
      (*(*(v24 - 8) + 104))(v50, v44, v24);
      swift_storeEnumTagMultiPayload();
      v25 = v14;
      sub_227662740();
      sub_227666270();
      (*(v8 + 8))(v22, v23);
      v26 = v58;
      v59 = v58;
      v28 = *(v58 + 16);
      v27 = *(v58 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F20848(v27 > 1, v28 + 1, 1);
        v26 = v59;
      }

      *(v26 + 16) = v28 + 1;
      v29 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v58 = v26;
      result = (*(v46 + 32))(v26 + v29 + *(v46 + 72) * v28, v25, v47);
      a1 = v41;
      v20 = 1 << *(v41 + 32);
      if (v18 >= v20)
      {
        goto LABEL_23;
      }

      v30 = *(v57 + 8 * v21);
      if ((v30 & v55) == 0)
      {
        goto LABEL_24;
      }

      if (v54 != *(v41 + 36))
      {
        goto LABEL_25;
      }

      v14 = v25;
      v31 = v30 & (-2 << (v18 & 0x3F));
      if (v31)
      {
        v20 = __clz(__rbit64(v31)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v8 = v40;
      }

      else
      {
        v32 = v21 << 6;
        v33 = v21 + 1;
        v34 = (v38 + 8 * v21);
        v8 = v40;
        while (v33 < (v20 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v18, v54, 0);
            v20 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v18, v54, 0);
      }

LABEL_4:
      v19 = v53 + 1;
      v18 = v20;
      if (v53 + 1 == v39)
      {
        return v58;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D96A8(uint64_t a1)
{
  v37 = sub_227663480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_2276633E0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D99B0()
{
  v34 = sub_22766B3B0();
  v37 = *(v34 - 8);
  v0 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22766B3F0();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B3A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22766B410();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v19 + 8))(v22, v18);
  sub_22766B400();
  *v9 = 2;
  (*(v6 + 104))(v9, *MEMORY[0x277D85188], v5);
  MEMORY[0x22AA97740](v15, v9);
  (*(v6 + 8))(v9, v5);
  v23 = *(v11 + 8);
  v23(v15, v10);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v24 = sub_22766C950();
  aBlock[4] = sub_2275DA4D0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_44;
  v25 = _Block_copy(aBlock);

  v26 = v31;
  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9EDA8(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  v27 = v33;
  v28 = v34;
  sub_22766CC80();
  MEMORY[0x22AA98C50](v17, v26, v27, v25);
  _Block_release(v25);

  (*(v37 + 8))(v27, v28);
  (*(v35 + 8))(v26, v36);
  return (v23)(v17, v30);
}

uint64_t sub_2275D9F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - v13;
  v58 = &v51 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v51 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v56 = a1;
  v57 = &v51 - v19;
  v20 = *__swift_project_boxed_opaque_existential_0((a1 + 416), *(a1 + 440));
  sub_22708193C(byte_283A95FC0, v14);
  v53 = v11;
  sub_2275DA4D8(v11);
  v21 = *(v3 + 16);
  v21(v8, v11, v2);
  v59 = v21;
  v60 = v3 + 16;
  v22 = *(v3 + 80);
  v23 = v3;
  v62 = v3;
  v24 = (v22 + 16) & ~v22;
  v25 = v24 + v4;
  v26 = v22;
  v27 = swift_allocObject();
  v28 = *(v23 + 32);
  v28(v27 + v24, v8, v2);
  v29 = v54;
  v21(v54, v58, v2);
  v30 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = v26;
  v31 = swift_allocObject();
  v32 = v24;
  v52 = v24;
  v28(v31 + v24, v29, v2);
  v33 = (v31 + v30);
  *v33 = sub_226EC14C0;
  v33[1] = v27;
  v34 = v55;
  sub_227669270();
  v35 = *(v62 + 8);
  v62 += 8;
  v54 = v35;
  (v35)(v53, v2);
  v36 = v58;
  (v35)(v58, v2);
  v37 = swift_allocObject();
  v37[2] = 0xD000000000000029;
  v37[3] = 0x80000002276A4240;
  v37[4] = 22;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_226F323BC;
  *(v38 + 24) = v37;
  v59(v36, v34, v2);
  v39 = swift_allocObject();
  v28(v39 + v32, v36, v2);
  v40 = (v39 + v30);
  *v40 = sub_226F323DC;
  v40[1] = v38;
  v41 = v61;
  sub_227669270();
  v42 = v54;
  (v54)(v34, v2);
  v43 = swift_allocObject();
  v44 = v56;
  *(v43 + 16) = sub_2275DE8D0;
  *(v43 + 24) = v44;
  v59(v34, v41, v2);
  v45 = swift_allocObject();
  v28(v45 + v52, v34, v2);
  v46 = (v45 + v30);
  *v46 = sub_227086964;
  v46[1] = v43;

  v47 = v57;
  sub_227669270();
  v42(v61, v2);
  v48 = sub_227669290();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_2275DAD5C;
  *(v49 + 24) = 0;
  v48(sub_226E9F7B0, v49);

  return (v42)(v47, v2);
}

uint64_t sub_2275DA4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v6 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v9 = *(v50 - 8);
  v47 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v50);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v45 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(v53 - 8);
  v52 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v53);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = &v45 - v16;
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v18 + 8))(v21, v17);
  v22 = *(v2 + 75);
  v23 = *(v2 + 76);
  __swift_project_boxed_opaque_existential_0(v2 + 72, v22);

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2275DECC4, v2, v22, v24, v23, v8);

  v25 = v46;
  (*(v3 + 16))(v6, v8, v46);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v26, v6, v25);
  v28 = (v27 + ((v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_2275DECE0;
  v28[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  v29 = v45;
  sub_227669270();
  (*(v3 + 8))(v8, v25);
  v30 = v48;
  v31 = v50;
  (*(v9 + 16))(v48, v29, v50);
  v32 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v33 = (v47 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v9 + 32))(v34 + v32, v30, v31);
  v35 = (v34 + v33);
  *v35 = sub_2275DED10;
  v35[1] = v2;

  v36 = v49;
  sub_227669270();
  (*(v9 + 8))(v29, v31);
  v37 = v51;
  v38 = v36;
  v39 = v53;
  (*(v13 + 16))(v51, v36, v53);
  v40 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v41 = (v52 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v13 + 32))(v42 + v40, v37, v39);
  v43 = (v42 + v41);
  *v43 = sub_2275DD6C0;
  v43[1] = 0;
  sub_227669270();
  return (*(v13 + 8))(v38, v39);
}

uint64_t sub_2275DAB04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2275DE8D8, a1, v9, v11, v10, v8);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_22732030C;
  *(v12 + 24) = a1;
  (*(v3 + 16))(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v6, v2);
  v16 = (v15 + v14);
  *v16 = sub_226FBE058;
  v16[1] = v12;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2275DAD5C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "Recovery - Completed", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2275DAE90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v155 = a3;
  v165 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v159 = *(v6 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v143 - v16;
  v18 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (v3)
  {
    goto LABEL_39;
  }

  v153 = v17;
  v156 = v9;
  v157 = v6;
  v148 = v15;
  v149 = a1;
  v150 = v11;
  v151 = v10;
  v158 = 0;
  v20 = v162;
  v21 = v163;
  v22 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  v26 = v22[3];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = v23;
  v32 = v24;

  sub_22766A070();
  *(v30 + 16) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v25;
  *(v30 + 40) = v26;
  swift_getKeyPath();
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v162 = v20;
  v163 = v21;
  v33 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v34 = sub_22766C820();
  sub_226ED25F8(&v162, v160);
  v35 = v161;
  if (v161)
  {
    v36 = __swift_project_boxed_opaque_existential_0(v160, v161);
    v37 = *(v35 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x28223BE20](v36);
    v40 = v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40);
    v41 = sub_22766D170();
    (*(v37 + 8))(v40, v35);
    __swift_destroy_boxed_opaque_existential_0(v160);
  }

  else
  {
    v41 = 0;
  }

  v42 = objc_opt_self();
  v43 = [v42 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v45 = [objc_allocWithZone(v44) initWithLeftExpression:v34 rightExpression:v43 modifier:0 type:4 options:0];

  sub_226EBC888(&v162);
  v46 = qword_2813B2078;
  swift_beginAccess();
  v47 = v45;
  v154 = v46;
  v48 = sub_22766A080();
  v50 = v49;
  MEMORY[0x22AA985C0]();
  if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_22766C3A0();
    (v48)(&v162, 0);
    swift_endAccess();

    swift_getKeyPath();
    v51 = sub_227664570();
    v164 = MEMORY[0x277D83B88];
    v162 = v51;

    v52 = sub_22766C820();
    sub_226ED25F8(&v162, v160);
    v53 = v161;
    if (v161)
    {
      v54 = __swift_project_boxed_opaque_existential_0(v160, v161);
      v152 = v33;
      v147 = v143;
      v55 = v44;
      v56 = v42;
      v57 = *(v53 - 8);
      v58 = *(v57 + 64);
      MEMORY[0x28223BE20](v54);
      v60 = v143 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v57 + 16))(v60);
      v61 = sub_22766D170();
      (*(v57 + 8))(v60, v53);
      v42 = v56;
      v44 = v55;
      __swift_destroy_boxed_opaque_existential_0(v160);
    }

    else
    {
      v61 = 0;
    }

    v62 = [v42 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v63 = [objc_allocWithZone(v44) initWithLeftExpression:v52 rightExpression:v62 modifier:0 type:4 options:0];

    sub_226EBC888(&v162);
    swift_getKeyPath();
    v64 = sub_227664570();
    v164 = MEMORY[0x277D83B88];
    v162 = v64;

    v65 = sub_22766C820();
    sub_226ED25F8(&v162, v160);
    v66 = v161;
    if (v161)
    {
      v67 = __swift_project_boxed_opaque_existential_0(v160, v161);
      v152 = v42;
      v147 = v143;
      v68 = v63;
      v69 = v44;
      v70 = *(v66 - 8);
      v71 = *(v70 + 64);
      MEMORY[0x28223BE20](v67);
      v73 = v143 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v70 + 16))(v73);
      v74 = sub_22766D170();
      (*(v70 + 8))(v73, v66);
      v44 = v69;
      v63 = v68;
      v42 = v152;
      __swift_destroy_boxed_opaque_existential_0(v160);
    }

    else
    {
      v74 = 0;
    }

    v75 = [v42 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v76 = [objc_allocWithZone(v44) initWithLeftExpression:v65 rightExpression:v75 modifier:0 type:4 options:0];

    sub_226EBC888(&v162);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_2276756A0;
    *(v77 + 32) = v63;
    *(v77 + 40) = v76;
    v78 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF20, &qword_2276869F0));
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v79 = v63;
    v80 = v76;
    v81 = sub_22766C2B0();

    v82 = [v78 initWithType:2 subpredicates:v81];

    swift_beginAccess();
    v83 = v82;
    v42 = &v162;
    v84 = sub_22766A080();
    v86 = v85;
    MEMORY[0x22AA985C0]();
    if (*((*v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v138 = *((*v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v84(&v162, 0);
    swift_endAccess();

    v87 = v158;
    v88 = sub_2272328B8(100);
    v158 = v87;
    if (v87)
    {
      swift_setDeallocating();

      v89 = *(v30 + 40);

      v90 = qword_2813B2078;
      v91 = sub_22766A100();
      (*(*(v91 - 8) + 8))(v30 + v90, v91);
      v92 = *(*v30 + 48);
      v93 = *(*v30 + 52);
      result = swift_deallocClassInstance();
      goto LABEL_39;
    }

    v94 = v88;
    swift_setDeallocating();

    v95 = *(v30 + 40);

    v96 = qword_2813B2078;
    v97 = sub_22766A100();
    (*(*(v97 - 8) + 8))(v30 + v96, v97);
    v98 = *(*v30 + 48);
    v99 = *(*v30 + 52);
    swift_deallocClassInstance();
    v100 = v153;
    sub_22766A6C0();

    v101 = sub_22766B380();
    v102 = sub_22766C8B0();

    v103 = os_log_type_enabled(v101, v102);
    v154 = v94;
    if (v103)
    {
      v42 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v162 = v30;
      *v42 = 141558274;
      *(v42 + 4) = 1752392040;
      *(v42 + 6) = 2080;
      sub_226E9EDA8(&unk_2813A5800, MEMORY[0x277D4FF88]);
      v104 = sub_22766C610();
      v106 = sub_226E97AE8(v104, v105, &v162);

      *(v42 + 14) = v106;
      v94 = v154;
      _os_log_impl(&dword_226E8E000, v101, v102, "Recovery - found bundles %{mask.hash}s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v42, -1, -1);
    }

    v145 = *(v150 + 8);
    v145(v100, v151);
    v107 = *(v94 + 32);
    v108 = v107 & 0x3F;
    v33 = 1;
    v109 = ((1 << v107) + 63) >> 6;
    v110 = 8 * v109;

    if (v108 > 0xD)
    {
      break;
    }

LABEL_19:
    v144 = v109;
    v143[1] = v143;
    MEMORY[0x28223BE20](v111);
    v146 = v143 - ((v110 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v146, v110);
    v147 = 0;
    v48 = 0;
    v112 = v94 + 56;
    v113 = 1 << *(v94 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v44 = v114 & *(v94 + 56);
    v47 = ((v113 + 63) >> 6);
    v152 = (v159 + 8);
    v153 = (v159 + 16);
    while (v44)
    {
      v115 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v33 = v115 | (v48 << 6);
      v116 = v156;
      v117 = v154;
LABEL_29:
      v30 = v159;
      v42 = v157;
      (*(v159 + 16))(v116, *(v117 + 48) + *(v159 + 72) * v33, v157);
      v117 = v116;
      v162 = sub_2276633F0();
      LOBYTE(v163) = v120 & 1;
      LOBYTE(v160[0]) = 1;
      sub_226F32810();
      sub_226F32864();
      v121 = sub_227663B30();
      (*(v30 + 8))(v117, v42);
      if (v121)
      {
        *&v146[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        v122 = __OFADD__(v147, 1);
        v147 = (v147 + 1);
        if (v122)
        {
          __break(1u);
LABEL_33:
          v123 = sub_22726AD50(v146, v144, v147, v117);
          goto LABEL_34;
        }
      }
    }

    v118 = v48;
    v116 = v156;
    v117 = v154;
    while (1)
    {
      v48 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        goto LABEL_33;
      }

      v119 = *(v112 + 8 * v48);
      ++v118;
      if (v119)
      {
        v44 = (v119 - 1) & v119;
        v33 = __clz(__rbit64(v119)) | (v48 << 6);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    sub_22766C360();
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    v33 = 1;
    goto LABEL_19;
  }

  v139 = swift_slowAlloc();
  v140 = v158;
  v141 = sub_2275DE554(v139, v109, v94, sub_2275DBF64, 0);
  v158 = v140;
  if (v140)
  {

    result = MEMORY[0x22AA9A450](v139, -1, -1);
    __break(1u);
  }

  else
  {
    v142 = v141;
    v117 = v154;

    MEMORY[0x22AA9A450](v139, -1, -1);
    v123 = v142;
LABEL_34:
    v124 = v158;
    v125 = sub_2275D91B0(v123);

    v126 = v148;
    sub_22766A6C0();

    v127 = sub_22766B380();
    v128 = sub_22766C8B0();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v162 = v130;
      *v129 = 136446210;
      v131 = sub_2276662D0();
      v132 = MEMORY[0x22AA98660](v125, v131);
      v134 = sub_226E97AE8(v132, v133, &v162);

      *(v129 + 4) = v134;
      _os_log_impl(&dword_226E8E000, v127, v128, "Recovery - inserting load failures %{public}s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      v135 = v130;
      v117 = v154;
      MEMORY[0x22AA9A450](v135, -1, -1);
      MEMORY[0x22AA9A450](v129, -1, -1);
    }

    v145(v126, v151);
    v136 = __swift_project_boxed_opaque_existential_0(v149, v149[3]);
    sub_227567CEC(v125, v136[1], *(v136 + 16), v136[3]);

    if (v124)
    {
    }

    else
    {
      *v155 = v117;
    }

LABEL_39:
    v137 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_2275DBF64()
{
  sub_2276633F0();
  sub_226F32810();
  sub_226F32864();
  return sub_227663B30() & 1;
}

uint64_t sub_2275DBFD8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[75];
  v7 = a2[76];
  __swift_project_boxed_opaque_existential_0(a2 + 72, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v5;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  sub_226ECF5D8(sub_2275DEEA0, v8, v6, v9, v7, a3);
}

uint64_t sub_2275DC0B4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  result = sub_2275DF610(a2, a1);
  if (!v3)
  {
    v16 = result;
    v74 = v14;
    v75 = a2;
    v78 = a3;
    v79 = v12;
    v76 = v8;
    v77 = v7;
    v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 16);
    v21 = v17[3];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = v18;
    v27 = v19;

    sub_22766A070();
    *(v25 + 16) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    swift_getKeyPath();
    v84 = v16;
    v28 = sub_2275D96A8(v16);
    v83[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v83[0] = v28;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v29 = sub_22766C820();
    sub_226ED25F8(v83, v81);
    v30 = v82;
    if (v82)
    {
      v31 = __swift_project_boxed_opaque_existential_0(v81, v82);
      v32 = *(v30 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v31);
      v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v35);
      v36 = sub_22766D170();
      (*(v32 + 8))(v35, v30);
      __swift_destroy_boxed_opaque_existential_0(v81);
    }

    else
    {
      v36 = 0;
    }

    v37 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0 qword_227677890))];

    sub_226EBC888(v83);
    swift_beginAccess();
    v38 = sub_22766A080();
    v40 = v39;
    MEMORY[0x22AA985C0]();
    if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v38(v83, 0);
    swift_endAccess();

    v41 = sub_2272FA7E8(0x64);
    v80 = 0;
    v42 = v41;
    swift_setDeallocating();

    v43 = *(v25 + 40);

    v44 = qword_2813B2078;
    v45 = sub_22766A100();
    (*(*(v45 - 8) + 8))(v25 + v44, v45);
    v46 = *(*v25 + 48);
    v47 = *(*v25 + 52);
    swift_deallocClassInstance();
    v48 = v84;
    if (v42[2])
    {
      v49 = v74;
      sub_22766A6C0();

      v50 = sub_22766B380();
      v51 = sub_22766C8B0();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v77;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83[0] = v55;
        *v54 = 136446210;
        sub_2276662D0();
        sub_226E9EDA8(&qword_28139B6A8, MEMORY[0x277D52258]);
        v56 = sub_22766C610();
        v58 = v57;

        v59 = sub_226E97AE8(v56, v58, v83);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_226E8E000, v50, v51, "Recovery - cleared failures for unrecoverable bundles %{public}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AA9A450](v55, -1, -1);
        v48 = v84;
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      else
      {
      }

      v60 = v76;
      (*(v76 + 8))(v49, v53);
    }

    else
    {

      v60 = v76;
      v53 = v77;
    }

    v61 = v79;
    v62 = v75;
    if (*(v48 + 16) <= *(v75 + 16) >> 3)
    {
      v83[0] = v75;

      sub_2270063F0(v48);
      v63 = v83[0];
      if (!*(v48 + 16))
      {
LABEL_20:
        v71 = sub_2275D8E04(v48, 6);

        v72 = sub_2275D8E04(v63, 0);

        v83[0] = v71;
        result = sub_227462AD4(v72);
        *v78 = v83[0];
        return result;
      }
    }

    else
    {

      v63 = sub_22700B6B8(v48, v62);
      if (!*(v48 + 16))
      {
        goto LABEL_20;
      }
    }

    sub_22766A6C0();

    v64 = sub_22766B380();
    v65 = sub_22766C8B0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v83[0] = v67;
      *v66 = 141558274;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2080;
      sub_227663480();
      sub_226E9EDA8(&unk_2813A5800, MEMORY[0x277D4FF88]);
      v68 = sub_22766C610();
      v70 = sub_226E97AE8(v68, v69, v83);

      *(v66 + 14) = v70;
      _os_log_impl(&dword_226E8E000, v64, v65, "Recovery - marking as failed: %{mask.hash}s", v66, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v67);
      v48 = v84;
      MEMORY[0x22AA9A450](v67, -1, -1);
      MEMORY[0x22AA9A450](v66, -1, -1);

      (*(v60 + 8))(v79, v53);
    }

    else
    {

      (*(v60 + 8))(v61, v53);
    }

    goto LABEL_20;
  }

  return result;
}

void sub_2275DC9D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v27 = a3;
    v37 = MEMORY[0x277D84F90];
    v33 = v14;
    sub_226F1F4E8(0, v14, 0);
    v16 = 0;
    v15 = v37;
    v31 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v32 = (v6 + 8);
    v34 = v9;
    v29 = v9 + 32;
    v30 = v6 + 16;
    v17 = v28;
    while (v16 < *(v13 + 16))
    {
      v18 = v31 + *(v6 + 72) * v16;
      v19 = v6;
      v20 = *(v6 + 16);
      v21 = v35;
      v20(v35, v18, v5);
      sub_2275DCD50(v21, v17, v12);
      v22 = v21;
      v23 = v5;
      (*v32)(v22, v5);
      v37 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F4E8(v24 > 1, v25 + 1, 1);
        v17 = v28;
        v15 = v37;
      }

      ++v16;
      *(v15 + 16) = v25 + 1;
      (*(v34 + 32))(v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25, v12, v36);
      v5 = v23;
      v6 = v19;
      if (v33 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    (*v32)(v6, v5);

    __break(1u);
  }

  else
  {
LABEL_7:
    v37 = v15;
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v26 = sub_22766C950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
    sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
    sub_227669240();
  }
}

uint64_t sub_2275DCD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v97 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v89 = *(v4 - 8);
  v90 = v4;
  v5 = *(v89 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v86 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v100 = &v78 - v9;
  v85 = v10;
  MEMORY[0x28223BE20](v8);
  v87 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v15;
  MEMORY[0x28223BE20](v14);
  v92 = &v78 - v16;
  v17 = sub_227663480();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v81 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  v80 = sub_22766B390();
  v79 = *(v80 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v96 = v18;
  v82 = *(v18 + 16);
  v82(v23, a1, v17);
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  v29 = os_log_type_enabled(v27, v28);
  v84 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v78 = a1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v99[0] = v32;
    *v31 = 141558274;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2080;
    sub_226E9EDA8(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v33 = sub_22766D140();
    v34 = v17;
    v36 = v35;
    v96[1](v23, v34);
    v37 = sub_226E97AE8(v33, v36, v99);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_226E8E000, v27, v28, "Recovery - Load - inserting %{mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v38 = v31;
    a1 = v78;
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  else
  {

    v96[1](v23, v17);
  }

  (*(v79 + 8))(v26, v80);
  v39 = __swift_project_boxed_opaque_existential_0((v97 + 56), *(v97 + 80));
  v40 = *v39;
  v41 = *(*v39 + 336);
  v80 = *(*v39 + 344);
  __swift_project_boxed_opaque_existential_0((v40 + 312), v41);
  v42 = v81;
  v43 = v84;
  v82(v81, a1, v84);
  v44 = v96;
  v45 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v46 = (v83 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (v44[4])(v47 + v45, v42, v43);
  *(v47 + v46) = v40;

  v48 = v100;
  sub_226ECF5D8(sub_227320380, v47, v41, v43, v80, v100);

  v49 = v89;
  v50 = *(v89 + 16);
  v83 = v89 + 16;
  v96 = v50;
  v51 = v86;
  v52 = v90;
  (v50)(v86, v48, v90);
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v82 = *(v49 + 80);
  v81 = v53;
  v54 = (v85 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = v54;
  v55 = swift_allocObject();
  v85 = *(v49 + 32);
  v85(v55 + v53, v51, v52);
  v56 = (v55 + v54);
  *v56 = sub_227320190;
  v56[1] = v40;

  v57 = v87;
  sub_227669270();
  v58 = *(v49 + 8);
  v59 = v100;
  v58(v100, v52);
  v60 = *__swift_project_boxed_opaque_existential_0((v97 + 56), *(v97 + 80));
  v99[3] = type metadata accessor for AssetBundleHandler();
  v99[4] = &off_283AC3B48;
  v99[0] = v60;
  sub_226E91B50(v99, v98);
  v61 = swift_allocObject();
  sub_226F19770(v98, v61 + 16);

  __swift_destroy_boxed_opaque_existential_0(v99);
  (v96)(v59, v57, v52);
  v62 = v80;
  v63 = swift_allocObject();
  v64 = v59;
  v65 = v52;
  v85(&v81[v63], v64, v52);
  v66 = (v63 + v62);
  *v66 = sub_2275DED68;
  v66[1] = v61;
  v67 = v92;
  sub_227669270();
  v58(v57, v65);
  v68 = swift_allocObject();
  v68[2] = 0xD000000000000029;
  v68[3] = 0x80000002276A4240;
  v68[4] = 79;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_226F33024;
  *(v69 + 24) = v68;
  v71 = v93;
  v70 = v94;
  v72 = v91;
  (*(v93 + 16))(v91, v67, v94);
  v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v74 = (v88 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v71 + 32))(v75 + v73, v72, v70);
  v76 = (v75 + v74);
  *v76 = sub_226F32FE8;
  v76[1] = v69;
  sub_227669270();
  return (*(v71 + 8))(v67, v70);
}

uint64_t sub_2275DD6C0(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8 = *a1;
    v9 = *a1;
    sub_22766A6C0();
    v10 = v8;
    v11 = sub_22766B380();
    v12 = sub_22766C890();
    sub_226EB4548(v8, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v18[2], v18[3]);
      v17 = sub_226E97AE8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "Recovery - Failed with error %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);

      sub_226EB4548(v8, 1);
    }

    else
    {
      sub_226EB4548(v8, 1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_2275DD8C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v112 = v11;
    v113 = v8;
    v114 = v7;
    v115 = a3;
    v118 = 0;
    v15 = v121;
    v14 = v122;
    v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v16 + 16);
    v20 = v16[3];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    v25 = v17;
    v26 = v18;

    sub_22766A070();
    *(v24 + 16) = v25;
    *(v24 + 24) = v26;
    *(v24 + 32) = v19;
    *(v24 + 40) = v20;
    swift_getKeyPath();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v111 = v15;
    v121 = v15;
    v122 = v14;
    v27 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v117 = v14;

    v124 = v27;
    v28 = sub_22766C820();
    sub_226ED25F8(&v121, v119);
    v29 = v120;
    if (v120)
    {
      v30 = __swift_project_boxed_opaque_existential_0(v119, v120);
      v31 = *(v29 - 8);
      v32 = *(v31 + 64);
      MEMORY[0x28223BE20](v30);
      v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v34);
      v35 = sub_22766D170();
      (*(v31 + 8))(v34, v29);
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      v35 = 0;
    }

    v36 = objc_opt_self();
    v37 = [v36 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v39 = [objc_allocWithZone(v38) initWithLeftExpression:v28 rightExpression:v37 modifier:0 type:4 options:0];

    sub_226EBC888(&v121);
    v40 = qword_2813B2078;
    swift_beginAccess();
    v41 = v39;
    v116 = v40;
    v42 = sub_22766A080();
    v44 = v43;
    MEMORY[0x22AA985C0]();
    if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v107 = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v42(&v121, 0);
    swift_endAccess();

    swift_getKeyPath();
    v45 = sub_227664570();
    v46 = MEMORY[0x277D83B88];
    v123 = MEMORY[0x277D83B88];
    v121 = v45;

    v47 = sub_22766C820();
    sub_226ED25F8(&v121, v119);
    v48 = v120;
    if (v120)
    {
      v49 = __swift_project_boxed_opaque_existential_0(v119, v120);
      v110 = &v109;
      v50 = v38;
      v51 = v36;
      v52 = *(v48 - 8);
      v53 = *(v52 + 64);
      MEMORY[0x28223BE20](v49);
      v55 = &v109 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v55);
      v56 = sub_22766D170();
      (*(v52 + 8))(v55, v48);
      v36 = v51;
      v38 = v50;
      v46 = MEMORY[0x277D83B88];
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      v56 = 0;
    }

    v57 = [v36 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v58 = [objc_allocWithZone(v38) initWithLeftExpression:v47 rightExpression:v57 modifier:0 type:4 options:0];

    sub_226EBC888(&v121);
    swift_getKeyPath();
    v59 = sub_227664570();
    v123 = v46;
    v121 = v59;

    v60 = sub_22766C820();
    sub_226ED25F8(&v121, v119);
    v61 = v120;
    if (v120)
    {
      v62 = __swift_project_boxed_opaque_existential_0(v119, v120);
      v124 = v36;
      v110 = &v109;
      v63 = v58;
      v64 = v38;
      v65 = *(v61 - 8);
      v66 = *(v65 + 64);
      MEMORY[0x28223BE20](v62);
      v68 = &v109 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v68);
      v69 = sub_22766D170();
      (*(v65 + 8))(v68, v61);
      v38 = v64;
      v58 = v63;
      v36 = v124;
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      v69 = 0;
    }

    v70 = [v36 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v71 = [objc_allocWithZone(v38) initWithLeftExpression:v60 rightExpression:v70 modifier:0 type:4 options:0];

    sub_226EBC888(&v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2276756A0;
    *(v72 + 32) = v58;
    *(v72 + 40) = v71;
    v73 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF20, &qword_2276869F0));
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v74 = v58;
    v75 = v71;
    v76 = sub_22766C2B0();

    v77 = [v73 initWithType:2 subpredicates:v76];

    swift_beginAccess();
    v78 = v77;
    v79 = sub_22766A080();
    v81 = v80;
    MEMORY[0x22AA985C0]();
    if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v108 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v79(&v121, 0);
    swift_endAccess();

    v82 = v118;
    v83 = sub_2272328B8(100);
    if (v82)
    {

      swift_setDeallocating();

      v84 = *(v24 + 40);

      v85 = qword_2813B2078;
      v86 = sub_22766A100();
      (*(*(v86 - 8) + 8))(v24 + v85, v86);
      v87 = *(*v24 + 48);
      v88 = *(*v24 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v89 = v83;
      swift_setDeallocating();

      v90 = *(v24 + 40);

      v91 = qword_2813B2078;
      v92 = sub_22766A100();
      (*(*(v92 - 8) + 8))(v24 + v91, v92);
      v93 = *(*v24 + 48);
      v94 = *(*v24 + 52);
      swift_deallocClassInstance();
      v95 = v112;
      sub_22766A6C0();

      v96 = sub_22766B380();
      v97 = sub_22766C8B0();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v121 = v99;
        *v98 = 141558274;
        *(v98 + 4) = 1752392040;
        *(v98 + 12) = 2080;
        sub_227663480();
        sub_226E9EDA8(&unk_2813A5800, MEMORY[0x277D4FF88]);
        v100 = sub_22766C610();
        v102 = sub_226E97AE8(v100, v101, &v121);

        *(v98 + 14) = v102;
        _os_log_impl(&dword_226E8E000, v96, v97, "Recovery - Cancellation - found bundles %{mask.hash}s", v98, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x22AA9A450](v99, -1, -1);
        MEMORY[0x22AA9A450](v98, -1, -1);
      }

      (*(v113 + 8))(v95, v114);
      v103 = v115;
      v104 = v117;

      v105 = sub_2275DE91C(v89, v111, v104);

      swift_bridgeObjectRelease_n();
      v106 = sub_226F40934(v105);

      *v103 = v106;
    }
  }

  return result;
}

unint64_t *sub_2275DE4B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2275DEEBC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2275DE554(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_2272C55BC(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t *sub_2275DE5E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2275DE7BC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2275DE65C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2275DE7BC(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_2275DE5E4(v9, v4, v2);
  result = MEMORY[0x22AA9A450](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2275DE7BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 10)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_227329E14(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_227329E14(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275DE91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v37 = v3;
    v51 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v41 = v6 + 8;
    v42 = v6 + 16;
    v39 = v12;
    v40 = v6 + 32;
    v38 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v49 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v19 = *(a1 + 36);
      v46 = v16;
      v47 = v19;
      v20 = *(a1 + 48);
      v48 = *(v6 + 72);
      v21 = v43;
      (*(v6 + 16))(v43, v20 + v48 * v15, v5);
      sub_227663470();
      (*(v6 + 8))(v21, v5);
      v22 = v50;
      v51 = v50;
      v23 = a1;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v50 = v25 + 1;
        sub_226F1F568(v24 > 1, v25 + 1, 1);
        v26 = v50;
        v22 = v51;
      }

      *(v22 + 16) = v26;
      v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v50 = v22;
      result = (*(v6 + 32))(v22 + v27 + v25 * v48, v11, v5);
      v17 = 1 << *(v23 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v28 = *(v49 + 8 * v18);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v23;
      if (v47 != *(v23 + 36))
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v17 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v11;
        v31 = v5;
        v32 = v18 << 6;
        v33 = v18 + 1;
        v34 = (v38 + 8 * v18);
        while (v33 < (v17 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v5 = v31;
        v11 = v30;
      }

      v16 = v46 + 1;
      v15 = v17;
      if (v46 + 1 == v39)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275DEDD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275DEEBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_227663480();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
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
  v42 = 0;
  v43 = v9 + 16;
  v50 = a4 + 56;
  v44 = v9;
  v45 = (v9 + 8);
  v46 = v11;
  v47 = result;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v49 + 48);
    v25 = *(v44 + 72);
    v48 = v23;
    (*(v44 + 16))(v11, v24 + v25 * v23, v6);
    v26 = sub_2276633E0();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, v30 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v31 = sub_22766D3F0(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v29 && v35[1] == v28;
        if (v36 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_26:
        v38 = v49;

        return sub_22726AD50(v41, v40, v42, v38);
      }
    }

    else
    {
LABEL_5:

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275DF1C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x28223BE20](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_2276633E0();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_22766D370();
      sub_22766C100();
      v31 = sub_22766D3F0();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_22726AD50(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_2275DE4B8(v41, v11, a1, v42);

  MEMORY[0x22AA9A450](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_2275DF610(uint64_t a1, void *a2)
{
  v131 = sub_2276662D0();
  v128 = *(v131 - 8);
  v5 = *(v128 + 64);
  MEMORY[0x28223BE20](v131);
  v127 = v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276662B0();
  v133 = *(v7 - 8);
  v134 = v7;
  v8 = *(v133 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121[1] = a1;
  v11 = sub_2275D8AFC(a1);
  v139 = v2;
  v12 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v23 = sub_227073F2C(v11);

  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v137[0] = v23;
  v24 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v132 = v24;
  v25 = sub_22766C820();
  sub_226ED25F8(v137, v135);
  v26 = v136;
  if (v136)
  {
    v27 = __swift_project_boxed_opaque_existential_0(v135, v136);
    v28 = *(v26 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31);
    v32 = sub_22766D170();
    (*(v28 + 8))(v31, v26);
    __swift_destroy_boxed_opaque_existential_0(v135);
  }

  else
  {
    v32 = 0;
  }

  v130 = objc_opt_self();
  v33 = [v130 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0, qword_227677890);
  [objc_allocWithZone(v129) initWithLeftExpression:v25 rightExpression:v33 modifier:0 type:10 options:0];

  sub_226EBC888(v137);
  swift_beginAccess();
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    sub_22766C3A0();
    (v34)(v137, 0);
    swift_endAccess();

    swift_getKeyPath();
    v38 = v133;
    v37 = v134;
    (*(v133 + 104))(v10, *MEMORY[0x277D52238], v134);
    v39 = sub_2276662A0();
    v41 = v40;
    (*(v38 + 8))(v10, v37);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v137[0] = v39;
    v137[1] = v41;

    v42 = sub_22766C820();
    sub_226ED25F8(v137, v135);
    v43 = v136;
    if (v136)
    {
      v44 = __swift_project_boxed_opaque_existential_0(v135, v136);
      v45 = *(v43 - 8);
      v46 = *(v45 + 64);
      MEMORY[0x28223BE20](v44);
      v48 = v121 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v48);
      v49 = sub_22766D170();
      (*(v45 + 8))(v48, v43);
      __swift_destroy_boxed_opaque_existential_0(v135);
    }

    else
    {
      v49 = 0;
    }

    v50 = v139;
    v51 = [v130 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v52 = [objc_allocWithZone(v129) initWithLeftExpression:v42 rightExpression:v51 modifier:0 type:4 options:0];

    sub_226EBC888(v137);
    swift_beginAccess();
    v53 = v52;
    v54 = sub_22766A080();
    v56 = v55;
    MEMORY[0x22AA985C0]();
    if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v120 = *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v54(v137, 0);
    swift_endAccess();

    v57 = sub_22723A0F8(100);
    if (v50)
    {
      break;
    }

    v63 = v57;
    v121[0] = 0;
    swift_setDeallocating();

    v64 = *(v20 + 40);

    v65 = qword_2813B2078;
    v66 = sub_22766A100();
    (*(*(v66 - 8) + 8))(v20 + v65, v66);
    v67 = *(*v20 + 48);
    v68 = *(*v20 + 52);
    swift_deallocClassInstance();
    v69 = sub_2271481B8(MEMORY[0x277D84F90]);
    v34 = (v63 + 56);
    v70 = 1 << v63[32];
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v72 = v71 & *(v63 + 7);
    v10 = ((v70 + 63) >> 6);
    v126 = v128 + 16;
    v122 = (v128 + 8);

    v73 = 0;
    v74 = v127;
    v124 = (v63 + 56);
    v125 = v63;
    v123 = v10;
LABEL_17:
    v75 = v69;
    if (!v72)
    {
      while (1)
      {
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v76 >= v10)
        {

          v116 = sub_2275DE65C(v69);

          v117 = sub_226F34540(v116);

          v59 = sub_2275DF1C0(v118, v117);

          return v59;
        }

        v72 = *(v34 + 8 * v76);
        ++v73;
        if (v72)
        {
          goto LABEL_22;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v76 = v73;
LABEL_22:
    v132 = v72;
    v130 = v76;
    (*(v128 + 16))(v74, *(v63 + 6) + *(v128 + 72) * (__clz(__rbit64(v72)) | (v76 << 6)), v131);
    v77 = sub_227666280();
    if (v69[2])
    {
      v79 = sub_226E92000(v77, v78);
      v81 = v80;

      if (v81)
      {
        v82 = *(v69[7] + 8 * v79);
        goto LABEL_27;
      }
    }

    else
    {
    }

    v82 = 0;
LABEL_27:
    v83 = sub_227666280();
    v85 = __OFADD__(v82, 1);
    v86 = v82 + 1;
    if (v85)
    {
      goto LABEL_58;
    }

    v20 = v83;
    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v88 = sub_22766D010();

    v89 = sub_226E92000(v20, v87);
    v91 = v90;

    if (v91)
    {
      goto LABEL_59;
    }

    v92 = v88 + 64;
    *(v88 + 64 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
    v93 = (*(v88 + 48) + 16 * v89);
    *v93 = v20;
    v93[1] = v87;
    *(*(v88 + 56) + 8 * v89) = v86;
    v94 = *(v88 + 16);
    v85 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    if (!v85)
    {
      v132 &= v132 - 1;
      *(v88 + 16) = v95;
      v69 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137[0] = v75;
      v97 = -1 << *(v88 + 32);
      if (-v97 < 64)
      {
        v98 = ~(-1 << -v97);
      }

      else
      {
        v98 = -1;
      }

      v99 = v98 & *(v88 + 64);
      v129 = (-1 << *(v88 + 32));
      v10 = ((63 - v97) >> 6);
      v133 = v88;

      v100 = 0;
      while (v99)
      {
        LODWORD(v139) = isUniquelyReferenced_nonNull_native;
        v101 = v100;
LABEL_43:
        v103 = __clz(__rbit64(v99)) | (v101 << 6);
        v104 = (*(v133 + 48) + 16 * v103);
        v105 = *v104;
        v20 = v104[1];
        v134 = *(*(v133 + 56) + 8 * v103);

        v107 = sub_226E92000(v105, v20);
        v108 = v69[2];
        v109 = (v106 & 1) == 0;
        v110 = v108 + v109;
        if (__OFADD__(v108, v109))
        {
          goto LABEL_56;
        }

        v34 = v106;
        if (v69[3] >= v110)
        {
          if ((v139 & 1) == 0)
          {
            sub_226FF016C();
          }
        }

        else
        {
          sub_226FE2228(v110, v139 & 1);
          v111 = sub_226E92000(v105, v20);
          if ((v34 & 1) != (v112 & 1))
          {
            result = sub_22766D220();
            __break(1u);
            return result;
          }

          v107 = v111;
        }

        v99 &= v99 - 1;
        v69 = v137[0];
        if (v34)
        {

          *(v69[7] + 8 * v107) = v134;
        }

        else
        {
          *(v137[0] + 8 * (v107 >> 6) + 64) |= 1 << v107;
          v113 = (v69[6] + 16 * v107);
          *v113 = v105;
          v113[1] = v20;
          *(v69[7] + 8 * v107) = v134;
          v114 = v69[2];
          v85 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v85)
          {
            goto LABEL_57;
          }

          v69[2] = v115;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v100 = v101;
      }

      v102 = v100;
      while (1)
      {
        v101 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          break;
        }

        if (v101 >= v10)
        {
          sub_226EBB21C();

          v74 = v127;
          (*v122)(v127, v131);
          v73 = v130;
          v34 = v124;
          v63 = v125;
          v10 = v123;
          v72 = v132;
          goto LABEL_17;
        }

        v99 = *(v92 + 8 * v101);
        ++v102;
        if (v99)
        {
          LODWORD(v139) = isUniquelyReferenced_nonNull_native;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    sub_22766C360();
  }

  swift_setDeallocating();

  v58 = *(v20 + 40);

  v59 = qword_2813B2078;
  v60 = sub_22766A100();
  (*(*(v60 - 8) + 8))(v20 + v59, v60);
  v61 = *(*v20 + 48);
  v62 = *(*v20 + 52);
  swift_deallocClassInstance();
  return v59;
}

unint64_t sub_2275E02D4()
{
  result = qword_27D7BF6A0;
  if (!qword_27D7BF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF6A0);
  }

  return result;
}

uint64_t sub_2275E0328(char a1)
{
  result = 65;
  switch(a1)
  {
    case 1:
      result = 66;
      break;
    case 2:
      result = 67;
      break;
    case 3:
      result = 68;
      break;
    case 4:
      result = 69;
      break;
    case 5:
      result = 70;
      break;
    case 6:
      result = 71;
      break;
    case 7:
      result = 72;
      break;
    case 8:
      result = 73;
      break;
    case 9:
      result = 74;
      break;
    case 10:
      result = 75;
      break;
    case 11:
      result = 76;
      break;
    case 12:
      result = 77;
      break;
    case 13:
      result = 78;
      break;
    case 14:
      result = 79;
      break;
    case 15:
      result = 80;
      break;
    case 16:
      result = 81;
      break;
    case 17:
      result = 82;
      break;
    case 18:
      result = 83;
      break;
    case 19:
      result = 84;
      break;
    case 20:
      result = 85;
      break;
    case 21:
      result = 86;
      break;
    case 22:
      result = 87;
      break;
    case 23:
      result = 88;
      break;
    case 24:
      result = 89;
      break;
    case 25:
      result = 12377;
      break;
    case 26:
      result = 12633;
      break;
    case 27:
      result = 12889;
      break;
    case 28:
      result = 90;
      break;
    case 29:
      result = 16705;
      break;
    case 30:
      result = 16961;
      break;
    case 31:
      result = 3228225;
      break;
    case 32:
      result = 17217;
      break;
    case 33:
      result = 17473;
      break;
    case 34:
      result = 17729;
      break;
    case 35:
      result = 17985;
      break;
    case 36:
      result = 18241;
      break;
    case 37:
      result = 18497;
      break;
    case 38:
      result = 18753;
      break;
    case 39:
      result = 19009;
      break;
    case 40:
      result = 19265;
      break;
    case 41:
      result = 19521;
      break;
    case 42:
      result = 19777;
      break;
    case 43:
      result = 20033;
      break;
    case 44:
      result = 20289;
      break;
    case 45:
      result = 20545;
      break;
    case 46:
      result = 20801;
      break;
    case 47:
      result = 21057;
      break;
    case 48:
      result = 21313;
      break;
    case 49:
      result = 21569;
      break;
    case 50:
      result = 21825;
      break;
    case 51:
      result = 22081;
      break;
    case 52:
      result = 22337;
      break;
    case 53:
      result = 22593;
      break;
    case 54:
      result = 22849;
      break;
    case 55:
      result = 23105;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2275E058C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2275E0328(*a1);
  v5 = v4;
  if (v3 == sub_2275E0328(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_2275E0614()
{
  v1 = *v0;
  sub_22766D370();
  sub_2275E0328(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2275E0678()
{
  sub_2275E0328(*v0);
  sub_22766C100();
}

uint64_t sub_2275E06CC()
{
  v1 = *v0;
  sub_22766D370();
  sub_2275E0328(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2275E072C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2275E0994();
  *a2 = result;
  return result;
}

uint64_t sub_2275E075C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2275E0328(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2275E0808(char a1, char a2)
{
  v3 = sub_2275E0328(a1);
  v5 = v4;
  v6 = 0;
  while (sub_2275E0328(byte_283A917A0[v6 + 32]) != v3 || v7 != v5)
  {
    v9 = sub_22766D190();

    if (v9)
    {
      goto LABEL_10;
    }

    if (++v6 == 56)
    {
LABEL_17:
      sub_22766CFB0();
      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_10:
  v10 = sub_2275E0328(a2);
  v12 = v11;
  v9 = 0;
  while (sub_2275E0328(byte_283A917A0[v9 + 32]) != v10 || v13 != v12)
  {
    v15 = sub_22766D190();

    if (v15)
    {
      return v6 < v9;
    }

    if (++v9 == 56)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v6 < v9;
}

uint64_t sub_2275E0994()
{
  v0 = sub_22766D1E0();

  if (v0 >= 0x38)
  {
    return 56;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2275E09E8(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1 - 3;
  if ((a1 - 3) >= 0x1C)
  {
    sub_22766A770();
    v8 = sub_22766B380();
    v9 = sub_22766C890();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_226E8E000, v8, v9, "Invalid Legacy Version: %ld.", v10, 0xCu);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 56;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistenceDataVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC9)
  {
    goto LABEL_17;
  }

  if (a2 + 55 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 55) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 55;
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

      return (*a1 | (v4 << 8)) - 55;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 55;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x38;
  v8 = v6 - 56;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceDataVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 55 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 55) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC9)
  {
    v4 = 0;
  }

  if (a2 > 0xC8)
  {
    v5 = ((a2 - 201) >> 8) + 1;
    *result = a2 + 55;
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
    *result = a2 + 55;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2275E0CAC()
{
  result = qword_27D7BF6A8;
  if (!qword_27D7BF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF6B0, qword_22768D198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF6A8);
  }

  return result;
}

void sub_2275E0D14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6D0, &qword_22768D328);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = v41 - v6;
  v7 = sub_227665010();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = v41 - v11;
  v12 = sub_227662750();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v41 - v21;
  v23 = [a1 build];
  if (!v23)
  {
    goto LABEL_10;
  }

  v41[4] = a2;
  v42 = v7;
  v24 = v23;
  v41[3] = sub_22766C000();
  v26 = v25;

  v27 = [a1 date];
  if (!v27)
  {

    goto LABEL_10;
  }

  v28 = v27;
  v43 = v26;
  sub_227662710();

  (*(v13 + 32))(v22, v20, v12);
  v29 = [a1 token];
  if (!v29)
  {
LABEL_9:

    (*(v13 + 8))(v22, v12);
    goto LABEL_10;
  }

  v30 = v29;
  v31 = sub_22766C000();
  v33 = v32;

  v34 = [a1 status];
  if (!v34)
  {

    goto LABEL_9;
  }

  v41[1] = v31;
  v41[2] = v33;
  v35 = v34;
  sub_22766C000();

  v36 = v45;
  sub_227664FF0();
  v37 = v46;
  v38 = v42;
  if ((*(v46 + 48))(v36, 1, v42) == 1)
  {
    (*(v13 + 8))(v22, v12);

    sub_226E97D1C(v36, &qword_27D7BF6D0, &qword_22768D328);
LABEL_10:
    v39 = sub_227664DD0();
    sub_2275E1B04(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
    swift_willThrow();

    return;
  }

  (*(v37 + 32))(v47, v36, v38);
  (*(v13 + 16))(v17, v22, v12);
  (*(v37 + 16))(v44, v47, v38);
  sub_227664FB0();

  (*(v37 + 8))(v47, v38);
  (*(v13 + 8))(v22, v12);
}

size_t static CatalogSyncAnchor.representativeSamples()()
{
  v44 = sub_227665010();
  v32 = *(v44 - 8);
  v0 = *(v32 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_227662750();
  v33 = *(v42 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6B8, &qword_22768D2D0);
  v4 = *(v40 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v31 - v6;
  v39 = sub_227665030();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766C090();
  v13 = sub_227662630();
  v14 = sub_227664FE0();
  v15 = sub_22766C090();
  v56 = v13;
  v57[0] = v12;
  v57[1] = v57;
  v57[2] = &v56;
  v54 = v15;
  v55 = v14;
  v57[3] = &v55;
  v57[4] = &v54;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v50 = v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6C0, &qword_22768D2D8);
  v53 = v16;
  v17 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v46 = v17;
  v47 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v48 = sub_226F5BF60(&qword_27D7BF6C8, &qword_27D7BF6C0, &qword_22768D2D8);
  v49 = v17;
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v45 = MEMORY[0x277D84F90];
    result = sub_226F20168(0, v19, 0);
    v21 = 0;
    v22 = v45;
    v34 = v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 += 16;
    v32 += 16;
    v31 = v8 + 32;
    v38 = v4;
    v37 = v8;
    v36 = v18;
    v35 = v19;
    while (v21 < *(v18 + 16))
    {
      sub_2275E17E8(v34 + *(v4 + 72) * v21, v7);
      v24 = *v7;
      v23 = *(v7 + 1);
      v25 = v40[16];
      v26 = &v7[v40[20]];
      v27 = *v26;
      v28 = *(v26 + 1);
      (*v33)(v41, &v7[v40[12]], v42);
      (*v32)(v43, &v7[v25], v44);

      sub_227664FB0();
      sub_226E97D1C(v7, &qword_27D7BF6B8, &qword_22768D2D0);
      v45 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F20168(v29 > 1, v30 + 1, 1);
        v22 = v45;
      }

      ++v21;
      *(v22 + 16) = v30 + 1;
      result = (*(v37 + 32))(v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, v11, v39);
      v4 = v38;
      v18 = v36;
      if (v35 == v21)
      {

        return v22;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275E17E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6B8, &qword_22768D2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275E1858(uint64_t a1)
{
  result = sub_2275E1B04(&qword_28139B870, MEMORY[0x277D512F0]);
  *(a1 + 8) = result;
  return result;
}

void sub_2275E18B0(void *a1)
{
  v16 = sub_227665010();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664FC0();
  v11 = sub_22766BFD0();

  [a1 setBuild_];

  sub_227664FA0();
  v12 = sub_2276626A0();
  (*(v7 + 8))(v10, v6);
  [a1 setDate_];

  sub_227665020();
  sub_227665000();
  (*(v2 + 8))(v5, v16);
  v13 = sub_22766BFD0();

  [a1 setStatus_];

  sub_227664FD0();
  v14 = sub_22766BFD0();

  [a1 setToken_];
}

uint64_t sub_2275E1B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275E1B4C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v33[1] = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v40 = v12;
  v14 = *MEMORY[0x277D4E8C0];
  v15 = v3[13];
  v33[2] = v3 + 13;
  v15(v6, v14, v2);
  v36 = v15;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();

  v35 = ObjectType;
  sub_227669EF0();

  v37 = v3[1];
  v39 = v2;
  v37(v6, v2);
  v38 = v3 + 1;

  swift_unknownObjectRelease();
  v40 = v12;
  v15(v6, *MEMORY[0x277D4EAD8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);
  sub_2275E354C();
  sub_2275E35C8();
  sub_227669E80();

  v16 = v39;
  v17 = v37;
  v37(v6, v39);
  swift_unknownObjectRelease();
  v40 = v12;
  v18 = v36;
  v36(v6, *MEMORY[0x277D4E4E8], v16);
  swift_allocObject();
  v34 = v1;
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v19 = v39;
  v17(v6, v39);

  swift_unknownObjectRelease();
  v40 = v12;
  v18(v6, *MEMORY[0x277D4E388], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v20 = v39;
  v17(v6, v39);
  swift_unknownObjectRelease();
  v40 = v12;
  v21 = v36;
  v36(v6, *MEMORY[0x277D4E738], v20);
  swift_allocObject();
  swift_weakInit();

  sub_227669EF0();

  v22 = v39;
  v23 = v37;
  v37(v6, v39);

  swift_unknownObjectRelease();
  v40 = v12;
  v21(v6, *MEMORY[0x277D4E7D8], v22);
  swift_allocObject();
  v24 = v34;
  swift_weakInit();
  sub_2276637B0();
  sub_227669EC0();

  v23(v6, v22);
  swift_unknownObjectRelease();
  v25 = v24;
  v26 = __swift_project_boxed_opaque_existential_0((v24 + 80), *(v24 + 104));
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *v26;
  sub_227225CCC(24, sub_226EA9754, v27);

  v29 = __swift_project_boxed_opaque_existential_0((v25 + 80), *(v25 + 104));
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *v29;
  sub_22712A454(51, sub_2275E391C, v30);
}

uint64_t sub_2275E22E8()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_226FAA0A0;

    return sub_2275F6E78();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2275E23F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v5 = MEMORY[0x22AA95F40](v3);
    if (v5 == 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = off_283ACB4F0;
    type metadata accessor for AdminSystem();
    v7(v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6D8, &qword_22768D3A8);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6D8, &qword_22768D3A8);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_2275E256C(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_22766B390();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275E262C, 0, 0);
}

uint64_t sub_2275E262C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    sub_226E91B50(Strong + 40, (v0 + 2));

    v6 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = v6[25];
    v8 = v6[26];
    __swift_project_boxed_opaque_existential_0(v6 + 22, v7);
    v9 = *(v8 + 8);
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_2275E2848;

    return v15(v7, v8);
  }

  else
  {
    v13 = v0[13];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2275E2848()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2275E29C8;
  }

  else
  {
    v3 = sub_2275E295C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275E295C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2275E29C8()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_2275E2A38(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  *(v3 + 128) = *a2;
  return MEMORY[0x2822009F8](sub_2275E2A60, 0, 0);
}

uint64_t sub_2275E2A60()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 128);
    sub_226E91B50(Strong + 40, v0 + 16);

    v4 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_2275E2B88;

    return sub_227644D74(v3);
  }

  else
  {
    v7 = *(v0 + 80);
    *v7 = 0;
    v7[1] = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2275E2B88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_226F618C8;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_2275E2CBC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275E2CBC()
{
  v1 = v0[14];
  v2 = v0[10];
  *v2 = v0[15];
  v2[1] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275E2D4C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_227127A18;

    return sub_227645684();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2275E2E58(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v5 = sub_22766B390();
  *(v3 + 96) = v5;
  v6 = *(v5 - 8);
  *(v3 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 136) = *a2;

  return MEMORY[0x2822009F8](sub_2275E2F24, 0, 0);
}

uint64_t sub_2275E2F24()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    sub_226E91B50(Strong + 40, v0 + 16);

    v7 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v4, v6);
    v8 = v7[20];
    v9 = v7[21];
    __swift_project_boxed_opaque_existential_0(v7 + 17, v8);
    v10 = *(v9 + 8);
    v19 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_2275E319C;
    v13 = *(v0 + 80);

    return v19(v13, v3, v8, v9);
  }

  else
  {
    v15 = *(v0 + 80);
    v16 = sub_2276637B0();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v17 = *(v0 + 112);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2275E319C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_226FAC630;
  }

  else
  {
    v3 = sub_2275E32B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275E32B0()
{
  v1 = v0[10];
  v2 = sub_2276637B0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2275E3360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v9);

    v5 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_227644400(v3, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_2275E34B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275E22C8(v0);
}

unint64_t sub_2275E354C()
{
  result = qword_281399098;
  if (!qword_281399098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA180, &qword_227678460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399098);
  }

  return result;
}

unint64_t sub_2275E35C8()
{
  result = qword_281399090;
  if (!qword_281399090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA180, &qword_227678460);
    sub_2275E364C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399090);
  }

  return result;
}

unint64_t sub_2275E364C()
{
  result = qword_28139B830;
  if (!qword_28139B830)
  {
    sub_227665530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B830);
  }

  return result;
}

uint64_t sub_2275E36A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275E256C(v0);
}

uint64_t sub_2275E3734(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275E2A38(a1, a2, v2);
}

uint64_t sub_2275E37E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275E2D2C(v0);
}

uint64_t sub_2275E3870(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2275E2E58(a1, a2, v2);
}

uint64_t sub_2275E3924@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = sub_227664E50();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227450838(v3, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      *a2 = *v9;
    }

    else
    {
      v11 = sub_227140CF0(a1, *v9);

      *a2 = v11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_2274508FC(a1, *v9);

      *a2 = v12;
      sub_227665690();
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2275E3AE0(v9, a2, MEMORY[0x277D52890]);
    }

    else
    {
      sub_2275E3AE0(v9, a2, MEMORY[0x277D52FB8]);
    }
  }

  sub_227665690();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2275E3AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2275E3B6C(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = [a1 firstWeekdayOfStreakEnd];
  if (v13)
  {
    v14 = v13;
    sub_227662710();

    (*(v3 + 32))(v12, v10, v2);
    [a1 length];
    (*(v3 + 16))(v7, v12, v2);
    sub_227666790();

    (*(v3 + 8))(v12, v2);
  }

  else
  {
    v15 = sub_227664DD0();
    sub_2275E4318(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();
  }
}

size_t static AchievementWeeklyStreak.representativeSamples()()
{
  v31 = sub_227662750();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6E0, &qword_22768D410);
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = v24 - v5;
  v28 = sub_2276667B0();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  v11 = sub_22766CFA0();
  v37 = sub_227662630();
  v38[0] = v11;
  v38[1] = v38;
  v38[2] = &v37;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v33 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v34 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v26 = v10;
    v32 = MEMORY[0x277D84F90];
    result = sub_226F20868(0, v13, 0);
    v15 = v0;
    v16 = 0;
    v17 = v32;
    v27 = v3;
    v25 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = (v15 + 16);
    v24[1] = v7 + 32;
    while (v16 < *(v12 + 16))
    {
      v19 = v12;
      sub_2275E41E8(v25 + *(v27 + 72) * v16, v6);
      v20 = *v6;
      (*v18)(v30, &v6[*(v29 + 48)], v31);
      v21 = v26;
      sub_227666790();
      sub_2275E4258(v6);
      v32 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F20868(v22 > 1, v23 + 1, 1);
        v17 = v32;
      }

      ++v16;
      *(v17 + 16) = v23 + 1;
      result = (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v21, v28);
      v12 = v19;
      if (v13 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275E41E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6E0, &qword_22768D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275E4258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6E0, &qword_22768D410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275E42C0(uint64_t a1)
{
  result = sub_2275E4318(&qword_27D7BF6E8, MEMORY[0x277D526A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275E4318(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2275E4360(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276667A0();
  v8 = 0x7FFFFFFFLL;
  if (v7 < 0x7FFFFFFF)
  {
    v8 = v7;
  }

  if (v8 <= 0xFFFFFFFF80000000)
  {
    v9 = 0xFFFFFFFF80000000;
  }

  else
  {
    v9 = v8;
  }

  [a1 setLength_];
  sub_227666770();
  v10 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setFirstWeekdayOfStreakEnd_];
}

uint64_t StreamingKeyNonce.init(seed:workoutIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t StreamingKeyNonce.seed.getter()
{
  v1 = *v0;
  sub_226F5E0B4(*v0, *(v0 + 8));
  return v1;
}

uint64_t StreamingKeyNonce.workoutIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_2275E44F4()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 1684366707;
  }

  *v0;
  return result;
}

uint64_t sub_2275E452C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684366707 && a2 == 0xE400000000000000;
  if (v5 || (sub_22766D190() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022769F700 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22766D190();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2275E4610(uint64_t a1)
{
  v2 = sub_2275E4828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2275E464C(uint64_t a1)
{
  v2 = sub_2275E4828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StreamingKeyNonce.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6F0, &qword_22768D460);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v13[1] = v1[3];
  v13[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_226F5E0B4(v8, v9);
  sub_2275E4828();
  sub_22766D480();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_2273A486C();
  sub_22766D120();
  sub_226EDC420(v15, v16);
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_22766D0F0();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_2275E4828()
{
  result = qword_27D7BF6F8;
  if (!qword_27D7BF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF6F8);
  }

  return result;
}

uint64_t StreamingKeyNonce.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF700, &qword_22768D468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275E4828();
  sub_22766D460();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  sub_2273A4818();
  sub_22766D0B0();
  v11 = v19;
  v18 = v20;
  LOBYTE(v19) = 1;
  v12 = sub_22766D080();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  *a2 = v11;
  a2[1] = v15;
  a2[2] = v12;
  a2[3] = v14;
  sub_226F5E0B4(v11, v15);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_226EDC420(v11, v15);
}

uint64_t static StreamingKeyNonce.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_227130B5C(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22766D190();
}

uint64_t StreamingKeyNonce.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2276625A0();

  return sub_22766C100();
}

uint64_t StreamingKeyNonce.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_2276625A0();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2275E4C20()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_2276625A0();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2275E4C88()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2276625A0();

  return sub_22766C100();
}

uint64_t sub_2275E4CD8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_2276625A0();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2275E4D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_227130B5C(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22766D190();
}

unint64_t sub_2275E4DD0()
{
  result = qword_27D7BF708;
  if (!qword_27D7BF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF708);
  }

  return result;
}

uint64_t sub_2275E4E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2275E4E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2275E4ED0()
{
  result = qword_27D7BF710;
  if (!qword_27D7BF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF710);
  }

  return result;
}

unint64_t sub_2275E4F28()
{
  result = qword_27D7BF718;
  if (!qword_27D7BF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF718);
  }

  return result;
}

unint64_t sub_2275E4F80()
{
  result = qword_27D7BF720;
  if (!qword_27D7BF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF720);
  }

  return result;
}

void sub_2275E4FD4(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_227668D10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = [a1 behavior];
  if (!v16)
  {
    goto LABEL_6;
  }

  v32 = v9;
  v17 = a2;
  v18 = v16;
  v29 = sub_22766C000();
  v20 = v19;

  v21 = [a1 modalityConstraint];
  if (!v21)
  {

    goto LABEL_6;
  }

  v22 = v21;
  v26[1] = v17;
  v27 = v20;
  v28 = a1;
  sub_22766C000();

  sub_227668CF0();
  v23 = v32;
  if ((*(v32 + 48))(v7, 1, v8) == 1)
  {

    sub_226E97D1C(v7, &qword_27D7B9BA0, &qword_2276754B8);
    a1 = v28;
LABEL_6:
    v24 = sub_227664DD0();
    sub_2275E596C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
    swift_willThrow();

    return;
  }

  (*(v23 + 32))(v15, v7, v8);
  v30 = v29;
  v31 = v27;
  sub_227125D40();
  sub_227663AE0();
  (*(v23 + 16))(v13, v15, v8);
  sub_227667150();

  (*(v23 + 8))(v15, v8);
}

size_t static MetricsDisplayPreference.representativeSamples()()
{
  v0 = sub_227668D10();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF728, &qword_22768D6F8);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v31 - v7;
  v36 = sub_227667170();
  v40 = *(v36 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2275E5810();
  sub_227125D40();
  v11 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA0, &qword_227685940);
  v12 = *(v1 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2276728D0;
  v15 = v14 + v13;
  v16 = v2;
  v17 = *(v2 + 104);
  (v17)(v15, *MEMORY[0x277D53870], v0);
  v18 = (v15 + v12);
  *v18 = 0x6E776F6E6B6E75;
  v18[1] = 0xE700000000000000;
  v19 = *MEMORY[0x277D53878];
  v39 = v0;
  v17();
  v46 = v14;
  v47[0] = v11;
  v47[1] = v47;
  v47[2] = &v46;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF738, &qword_22768D700);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBB0, &qword_227685950);
  v42 = sub_226F5BF60(&qword_27D7BF740, &qword_27D7BF738, &qword_22768D700);
  v43 = sub_226F5BF60(&qword_27D7BDBC0, &qword_27D7BDBB0, &qword_227685950);
  v20 = sub_2276638E0();

  v21 = *(v20 + 16);
  if (v21)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F20328(0, v21, 0);
    v23 = 0;
    v33 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = v20;
    v24 = v41;
    v31 = v40 + 32;
    v32 = (v16 + 16);
    v25 = v35;
    while (v23 < *(v20 + 16))
    {
      sub_2275E58A4(v33 + *(v5 + 72) * v23, v8);
      v27 = *v8;
      v26 = *(v8 + 1);
      v28 = v8[16];
      (*v32)(v38, &v8[*(v37 + 48)], v39);
      sub_226EB396C(v27, v26, v28);
      sub_227667150();
      sub_226E97D1C(v8, &qword_27D7BF728, &qword_22768D6F8);
      v41 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F20328(v29 > 1, v30 + 1, 1);
        v24 = v41;
      }

      ++v23;
      *(v24 + 16) = v30 + 1;
      result = (*(v40 + 32))(v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v25, v36);
      v20 = v34;
      if (v21 == v23)
      {

        return v24;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2275E5810()
{
  result = qword_27D7BF730;
  if (!qword_27D7BF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF730);
  }

  return result;
}

uint64_t sub_2275E58A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF728, &qword_22768D6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275E5914(uint64_t a1)
{
  result = sub_2275E596C(&qword_2813A5620, MEMORY[0x277D52C10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275E596C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2275E59B4(void *a1)
{
  v14[0] = a1;
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227667160();
  v8 = v7;
  v14[3] = v6;
  v14[4] = v7;
  v10 = v9 & 1;
  v15 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB10, &qword_22768B7C0);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  sub_226EB2DFC(v6, v8, v10);

  v12 = v14[0];
  [v14[0] setBehavior_];

  sub_227667140();
  sub_227668D00();
  (*(v2 + 8))(v5, v1);
  v13 = sub_22766BFD0();

  [v12 setModalityConstraint_];
}

unint64_t sub_2275E5B74()
{
  result = qword_27D7BF748;
  if (!qword_27D7BF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF748);
  }

  return result;
}

void *NSPersistentStoreDescription.makeSQLiteDatabaseHandle()()
{
  v1 = sub_22766B3C0();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SQLiteDatabase();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = [v0 URL];
  if (v18)
  {
    v19 = v18;
    sub_227662430();

    (*(v10 + 32))(v17, v13, v9);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350) + 48);
    (*(v10 + 16))(v8, v17, v9);
    v8[v20] = sub_22706FA40();
    swift_storeEnumTagMultiPayload();
    sub_226EA1CF4();
    v22 = v28;
    v21 = v29;
    (*(v28 + 104))(v4, *MEMORY[0x277D851C8], v29);
    v23 = sub_22766C980();
    (*(v22 + 8))(v4, v21);
    v0 = v8;
    v24 = v30;
    v25 = SQLiteDatabase.makeHandle(queue:)(v23);
    if (!v24)
    {
      v0 = v25;
    }

    sub_226FFF374(v8);
    (*(v10 + 8))(v17, v9);
  }

  else
  {
    sub_22706F95C();
    swift_allocError();
    *v26 = xmmword_22767A620;
    *(v26 + 16) = 2;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_2275E5F10()
{
  v0 = sub_227669A90();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  (*(v4 + 104))(&v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D4F000], v2);
  v6[15] = 1;
  return sub_227669760();
}

uint64_t sub_2275E6000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for EfficientQuery();
  *(a4 + *(result + 28)) = a2;
  *(a4 + *(result + 32)) = a3;
  return result;
}

void sub_2275E60A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  sub_227669730();
  if (v12 == 1)
  {
    sub_2275E68B4(a1, a2, a3, a4, a5);
  }

  else
  {
    sub_2275E6340(a1, a2, a3, a4, a5, a6);
  }
}

void sub_2275E6160(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 28));
  if ([v4 fetchOffset] < 1 || objc_msgSend(v4, sel_fetchLimit))
  {
    v5 = *(v1 + *(a1 + 32));
    v6 = *(a1 + 16);
    sub_22766C9D0();
  }

  else
  {
    [v4 copy];
    sub_22766CC20();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
    if (swift_dynamicCast())
    {
      [v14 setFetchLimit_];
      [v14 setFetchOffset_];
      v7 = *(v1 + *(a1 + 32));
      v8 = *(a1 + 16);
      v9 = sub_22766C9D0();
      if (v2)
      {
      }

      else
      {
        v12 = v9;
        v13 = [v4 fetchOffset];

        if (__OFSUB__(v12, v13))
        {
          __break(1u);
        }
      }
    }

    else
    {
      v10 = sub_227664DD0();
      sub_226FC4F70();
      swift_allocError();
      (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50FF0], v10);
      swift_willThrow();
    }
  }
}

void sub_2275E6340(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = MEMORY[0x22AA99A00]();
  sub_2275E63E4(v6, a1, a2, a3, *(a4 + 16), a5, &v14, a6);
  objc_autoreleasePoolPop(v13);
}

uint64_t sub_2275E63E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EfficientQuery();
  v18 = *(a1 + *(v17 + 32));
  v19 = *(a1 + *(v17 + 28));
  result = sub_22766C9E0();
  if (!v8)
  {
    v21 = result;
    v37 = v13;
    v38 = v16;
    v22 = v42;
    v39 = v18;
    v36 = 0;
    if ([v19 fetchBatchSize] > 0)
    {
      v23 = [v19 fetchBatchSize];
      result = sub_22766C3B0();
      v24 = v39;
      if (!v23)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (result != 0x8000000000000000 || v23 != -1)
      {
LABEL_11:
        v26 = v22;
        v27 = result / v23;
        v28 = result / v23 * v23;
        if ((result / v23 * v23) >> 64 == v28 >> 63)
        {
          v29 = v28 != result;
          v30 = __OFADD__(v27, v29);
          v31 = v27 + v29;
          if (!v30)
          {
            if ((v31 & 0x8000000000000000) == 0)
            {
              v32 = v24;
              v43 = 0;
              v44 = v31;
              v33 = (*(v37 + 16))(v38, v26, a6);
              MEMORY[0x28223BE20](v33);
              *(&v35 - 8) = a5;
              *(&v35 - 7) = a6;
              *(&v35 - 6) = v23;
              *(&v35 - 5) = v21;
              v34 = v41;
              *(&v35 - 4) = v40;
              *(&v35 - 3) = v34;
              *(&v35 - 2) = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF750, &qword_22768D818);
              sub_2275E6EB0();
              v8 = v36;
              sub_22766C260();

              if (!v8)
              {
                return [v32 reset];
              }

              goto LABEL_15;
            }

LABEL_21:
            __break(1u);
            return result;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      __break(1u);
    }

    result = sub_22766C3B0();
    v23 = 100;
    v24 = v39;
    goto LABEL_11;
  }

LABEL_15:
  *v45 = v8;
  return result;
}

uint64_t sub_2275E6680(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a2 * a3;
  if ((*a2 * a3) >> 64 != v10 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + a3;
  if (__OFADD__(v10, a3))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v16 = result;
  result = sub_22766C3B0();
  if (v11 >= result)
  {
    v17 = result;
  }

  else
  {
    v17 = v11;
  }

  if (v17 < v10)
  {
    goto LABEL_12;
  }

  v26 = a7;
  v18 = sub_22766C3F0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = MEMORY[0x22AA99A00]();
  sub_2275E67D4(a5, a6, v16, v18, v20, v22, v24, a8, a9, &v27);
  objc_autoreleasePoolPop(v25);
  if (!v9)
  {
    [*(v26 + *(type metadata accessor for EfficientQuery() + 32)) reset];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2275E67D4(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22766CC40();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  v13 = sub_22766C3E0();
  a1(a3, v13);

  if (v10)
  {
    *a10 = v10;
  }

  return result;
}

void sub_2275E68B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + *(a4 + 28));
  v12 = [v11 fetchBatchSize];
  v13 = [v11 fetchOffset];
  sub_2275E6160(a4);
  if (!v6)
  {
    if (v12)
    {
      v15 = v14;
      if (v14 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_12;
      }

      v16 = v14 / v12;
      v17 = v14 / v12 * v12;
      if ((v14 / v12 * v12) >> 64 == v17 >> 63)
      {
        v21 = a2;
        v18 = v17 != v14;
        v19 = v16 + v18;
        if (!__OFADD__(v16, v18))
        {
          v20 = MEMORY[0x22AA99A00]();
          sub_2275E6A0C(v19, a1, v5, v15, v12, v13, v21, a3, *(a4 + 16), a5, &v23);
          objc_autoreleasePoolPop(v20);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_2275E6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v38 = a3;
  v13 = *(*(a10 - 8) + 64);
  v22 = MEMORY[0x28223BE20](a1);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = 0;
    v37 = a1;
    v24 = *(v20 + 16);
    v33 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v11;
    v32[2] = v19;
    v25 = v18;
    v26 = v17;
    v27 = v16;
    v28 = v15;
    v29 = v14;
    v30 = v24(v33, v22);
    v35 = v32;
    MEMORY[0x28223BE20](v30);
    v32[1] = a9;
    v32[-10] = a9;
    v32[-9] = a10;
    v32[-8] = v38;
    v32[-7] = a1;
    v32[-6] = v29;
    v32[-5] = v28;
    v32[-4] = v27;
    v32[-3] = v26;
    v32[-2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF750, &qword_22768D818);
    sub_2275E6EB0();
    v31 = v34;
    sub_22766C260();
    if (v31)
    {
      *a11 = v31;
    }

    else
    {
      [*(v38 + *(type metadata accessor for EfficientQuery() + 32)) reset];
    }
  }
}

void sub_2275E6BE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v13 = *a2;
  v14 = type metadata accessor for EfficientQuery();
  [*(a3 + *(v14 + 28)) copy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  [v29 setReturnsObjectsAsFaults_];
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v13 != a4 - 1)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v15 = a4 * a6;
  if ((a4 * a6) >> 64 != (a4 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v16 = __OFSUB__(a5, v15);
  v17 = a5 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    v18 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D50FF0], v18);
    swift_willThrow();
    return;
  }

LABEL_10:
  v20 = a6 + v17;
  if (__OFADD__(a6, v17))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v29 setFetchBatchSize_];
  [v29 setFetchLimit_];
  v21 = v13 * a6;
  if ((v13 * a6) >> 64 != (v13 * a6) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(a7, v21))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v29 setFetchOffset_];
  v22 = *(a3 + *(v14 + 32));
  v23 = sub_22766C9E0();
  if (!v28)
  {
    v24 = v23;
    v25 = MEMORY[0x22AA99A00]();
    a8(a1, v24);
    objc_autoreleasePoolPop(v25);

    [v22 reset];
  }
}

void sub_2275E6E74(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v3 = *(v2 + 80);
  sub_2275E6BE8(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
}

unint64_t sub_2275E6EB0()
{
  result = qword_281398B98;
  if (!qword_281398B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF750, &qword_22768D818);
    sub_2275E6F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398B98);
  }

  return result;
}

unint64_t sub_2275E6F3C()
{
  result = qword_281399198;
  if (!qword_281399198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399198);
  }

  return result;
}

void sub_2275E6FE4()
{
  sub_226F57660();
  if (v0 <= 0x3F)
  {
    sub_226E99364(319, &qword_281398B08, 0x277CBE428);
    if (v1 <= 0x3F)
    {
      sub_226E99364(319, &qword_281398A90, 0x277CBE440);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2275E70C8(uint64_t a1)
{
  v57 = sub_2276694E0();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v57);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_227665A20();
  v6 = *(*(v65 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v65);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v49 - v12;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v66 = MEMORY[0x277D84F98];
  v60 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v58 = v11 + 16;
  v63 = v11;
  v64 = v11 + 32;
  v52 = v2 + 32;
  v53 = v2;
  v51 = (v2 + 8);
  v50 = xmmword_227670CD0;
  v56 = v5;
  v54 = v21;
  while (v20)
  {
LABEL_9:
    v23 = v59;
    v24 = *(v60 + 48);
    v25 = v63;
    v61 = *(v63 + 72);
    v26 = v65;
    (*(v63 + 16))(v59, v24 + v61 * (__clz(__rbit64(v20)) | (v13 << 6)), v65);
    v27 = *(v25 + 32);
    v27(v62, v23, v26);
    sub_2276659F0();
    v29 = sub_226F39E30(v5);
    v30 = v14[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_23;
    }

    v33 = v28;
    if (v14[3] < v32)
    {
      sub_226FE9DAC(v32, 1);
      v14 = v66;
      v34 = sub_226F39E30(v5);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_25;
      }

      v29 = v34;
    }

    v20 &= v20 - 1;
    if (v33)
    {
      (*v51)(v5, v57);
      v36 = v14[7];
      v27(v55, v62, v65);
      v37 = *(v36 + 8 * v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v29) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_2273A6798(0, *(v37 + 2) + 1, 1, v37);
        *(v36 + 8 * v29) = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v49 = v40 + 1;
        v47 = sub_2273A6798(v39 > 1, v40 + 1, 1, v37);
        v41 = v49;
        v37 = v47;
        *(v36 + 8 * v29) = v47;
      }

      *(v37 + 2) = v41;
      v27(&v37[((*(v63 + 80) + 32) & ~*(v63 + 80)) + v40 * v61], v55, v65);
      v5 = v56;
      v21 = v54;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAD58, &qword_2276797C0);
      v42 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v50;
      v5 = v56;
      v27((v43 + v42), v62, v65);
      v14[(v29 >> 6) + 8] |= 1 << v29;
      (*(v53 + 32))(v14[6] + *(v53 + 72) * v29, v5, v57);
      *(v14[7] + 8 * v29) = v43;
      v44 = v14[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_24;
      }

      v14[2] = v46;
      v21 = v54;
    }
  }

  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return v14;
    }

    v20 = *(v16 + 8 * v22);
    ++v13;
    if (v20)
    {
      v13 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2275E75A4(uint64_t a1)
{
  v57 = sub_2276694E0();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v57);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_227664140();
  v6 = *(*(v65 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v65);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v49 - v12;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v66 = MEMORY[0x277D84F98];
  v60 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v58 = v11 + 16;
  v63 = v11;
  v64 = v11 + 32;
  v52 = v2 + 32;
  v53 = v2;
  v51 = (v2 + 8);
  v50 = xmmword_227670CD0;
  v56 = v5;
  v54 = v21;
  while (v20)
  {
LABEL_9:
    v23 = v59;
    v24 = *(v60 + 48);
    v25 = v63;
    v61 = *(v63 + 72);
    v26 = v65;
    (*(v63 + 16))(v59, v24 + v61 * (__clz(__rbit64(v20)) | (v13 << 6)), v65);
    v27 = *(v25 + 32);
    v27(v62, v23, v26);
    sub_2276640D0();
    v29 = sub_226F39E30(v5);
    v30 = v14[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_23;
    }

    v33 = v28;
    if (v14[3] < v32)
    {
      sub_226FEFAF8(v32, 1);
      v14 = v66;
      v34 = sub_226F39E30(v5);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_25;
      }

      v29 = v34;
    }

    v20 &= v20 - 1;
    if (v33)
    {
      (*v51)(v5, v57);
      v36 = v14[7];
      v27(v55, v62, v65);
      v37 = *(v36 + 8 * v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v29) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_2273A7368(0, *(v37 + 2) + 1, 1, v37);
        *(v36 + 8 * v29) = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v49 = v40 + 1;
        v47 = sub_2273A7368(v39 > 1, v40 + 1, 1, v37);
        v41 = v49;
        v37 = v47;
        *(v36 + 8 * v29) = v47;
      }

      *(v37 + 2) = v41;
      v27(&v37[((*(v63 + 80) + 32) & ~*(v63 + 80)) + v40 * v61], v55, v65);
      v5 = v56;
      v21 = v54;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFA8, &qword_227679A68);
      v42 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v50;
      v5 = v56;
      v27((v43 + v42), v62, v65);
      v14[(v29 >> 6) + 8] |= 1 << v29;
      (*(v53 + 32))(v14[6] + *(v53 + 72) * v29, v5, v57);
      *(v14[7] + 8 * v29) = v43;
      v44 = v14[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_24;
      }

      v14[2] = v46;
      v21 = v54;
    }
  }

  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return v14;
    }

    v20 = *(v16 + 8 * v22);
    ++v13;
    if (v20)
    {
      v13 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2275E7A80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[14];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v3 = v0[32];

  return swift_deallocClassInstance();
}

uint64_t sub_2275E7B14(uint64_t a1, void *a2)
{
  v3 = v2;
  v41 = a2;
  v49 = sub_227664140();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276694E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_2276640D0();
  swift_beginAccess();
  v18 = *(v3 + 256);
  if (*(v18 + 16))
  {
    v19 = *(v3 + 256);

    v20 = sub_226F39E30(v17);
    if (v21)
    {
      sub_226E91B50(*(v18 + 56) + 40 * v20, v45);
      (*(v14 + 8))(v17, v13);

      sub_226E92AB8(v45, v46);
      v22 = v47;
      v23 = v48;
      __swift_project_boxed_opaque_existential_0(v46, v47);
      if ((*(v23 + 24))(v22, v23))
      {
        v24 = __swift_project_boxed_opaque_existential_0(v41, v41[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFA8, &qword_227679A68);
        v25 = *(v5 + 72);
        v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_227670CD0;
        (*(v5 + 16))(v27 + v26, v44, v49);
        sub_22755FCC8(v27, v24[1], *(v24 + 16), v24[3]);
      }

      return __swift_destroy_boxed_opaque_existential_0(v46);
    }
  }

  (*(v14 + 8))(v17, v13);
  sub_22766A6B0();
  v29 = v49;
  (*(v5 + 16))(v8, v44, v49);
  v30 = sub_22766B380();
  v31 = sub_22766C890();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46[0] = v33;
    *v32 = 136446210;
    sub_2275ED304(&qword_27D7BF760, MEMORY[0x277D506C0]);
    v34 = sub_22766D140();
    v35 = v29;
    v37 = v36;
    (*(v5 + 8))(v8, v35);
    v38 = sub_226E97AE8(v34, v37, v46);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_226E8E000, v30, v31, "No registered zone for sync operation: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v29);
  }

  (*(v42 + 8))(v12, v43);
  sub_226F1893C();
  swift_allocError();
  *v39 = 11;
  return swift_willThrow();
}

uint64_t sub_2275E8000()
{
  v1[14] = v0;
  v2 = sub_227669A70();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA288, &qword_22768D8D0);
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = sub_2276655F0();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v1[23] = *(v9 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v10 = sub_227665230();
  v1[27] = v10;
  v11 = *(v10 - 8);
  v1[28] = v11;
  v12 = *(v11 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v1[31] = v13;
  v14 = *(v13 - 8);
  v1[32] = v14;
  v15 = *(v14 + 64) + 15;
  v1[33] = swift_task_alloc();
  v16 = sub_22766B390();
  v1[34] = v16;
  v17 = *(v16 - 8);
  v1[35] = v17;
  v18 = *(v17 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275E8300, 0, 0);
}

uint64_t sub_2275E8300()
{
  v1 = v0[40];
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Launching Paired Device.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[40];
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[33];
  v9 = v0[14];

  (*(v7 + 8))(v5, v6);
  v10 = v9[6];
  __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
  sub_22766AD70();
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_22766AD10();
  v12 = swift_task_alloc();
  v0[41] = v12;
  *(v12 + 16) = "SeymourServices/PairedSyncCoordinator.swift";
  *(v12 + 24) = 43;
  *(v12 + 32) = 2;
  *(v12 + 40) = 82;
  *(v12 + 48) = v8;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[42] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB390, &unk_22767A8A0);
  *v14 = v0;
  v14[1] = sub_2275E8528;

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275ED19C, v12, v15);
}

uint64_t sub_2275E8528()
{
  v2 = *v1;
  v3 = (*v1)[42];
  v4 = (*v1)[32];
  v12 = *v1;
  (*v1)[43] = v0;

  if (v0)
  {
    v5 = v2[41];

    v6 = sub_2275E8B14;
  }

  else
  {
    v7 = v2[41];
    v8 = v2[33];
    v9 = v2[31];
    v10 = v2[7];
    swift_unknownObjectRelease();

    (*(v4 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v6 = sub_2275E86A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2275E86A4()
{
  v1 = v0[14];
  swift_beginAccess();
  v0[44] = *(v1 + 256);

  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_2275E875C;
  v3 = v0[14];

  return sub_2275EA5C0();
}

uint64_t sub_2275E875C(char a1)
{
  v2 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 500) = a1;

  return MEMORY[0x2822009F8](sub_2275E885C, 0, 0);
}

uint64_t sub_2275E885C()
{
  v1 = *(v0 + 500);
  v2 = *(v0 + 352);
  v3 = *(v0 + 112);
  v4 = v3[20];
  v5 = v3[21];
  __swift_project_boxed_opaque_existential_0(v3 + 17, v4);
  v6 = swift_allocObject();
  *(v0 + 368) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = *(v5 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF758, qword_22768D8E0);
  *v9 = v0;
  v9[1] = sub_2275E89F8;

  return (v12)(v0 + 104, sub_2275ED1B4, v6, v10, v4, v5);
}

uint64_t sub_2275E89F8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_2275E919C;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_2275E8C44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275E8B14()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[25];
  v10 = v0[26];
  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[43];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2275E8C44()
{
  v72 = v0;
  v1 = v0[30];
  v2 = v0[13];
  sub_227665210();
  v3 = *(sub_227665220() + 16);

  if (v3)
  {
    v4 = v0[38];
    v6 = v0[29];
    v5 = v0[30];
    v7 = v0[27];
    v8 = v0[28];
    sub_22766A6B0();
    (*(v8 + 16))(v6, v5, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[38];
    v13 = v0[34];
    v14 = v0[35];
    v16 = v0[28];
    v15 = v0[29];
    v17 = v0[27];
    if (v11)
    {
      v66 = v10;
      v18 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v71 = v64;
      *v18 = 136315138;
      sub_227665220();
      sub_227665A20();
      v68 = v12;
      sub_2275ED304(&unk_28139B780, MEMORY[0x277D51AF0]);
      v19 = sub_22766C610();
      v63 = v13;
      v21 = v20;

      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = sub_226E97AE8(v19, v21, &v71);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_226E8E000, v9, v66, "Offering sync data with %s operations.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x22AA9A450](v64, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);

      v24 = *(v14 + 8);
      v24(v68, v63);
    }

    else
    {

      v22 = *(v16 + 8);
      v22(v15, v17);
      v24 = *(v14 + 8);
      v24(v12, v13);
    }

    v0[49] = v24;
    v0[50] = v22;
    v70 = v0[30];
    v48 = v0[27];
    v49 = v0[20];
    v50 = v0[21];
    v52 = v0[16];
    v51 = v0[17];
    v53 = v0[14];
    v54 = v0[15];
    v56 = *(v53 + 112);
    v55 = *(v53 + 120);
    swift_getObjectType();
    (*(v52 + 104))(v51, *MEMORY[0x277D4E540], v54);
    v57 = v49;
    sub_227669610();
    (*(v52 + 8))(v51, v54);
    v58 = swift_task_alloc();
    v0[51] = v58;
    *(v58 + 16) = "SeymourServices/PairedSyncCoordinator.swift";
    *(v58 + 24) = 43;
    *(v58 + 32) = 2;
    *(v58 + 40) = 91;
    *(v58 + 48) = v57;
    v59 = *(MEMORY[0x277D85A40] + 4);
    v60 = swift_task_alloc();
    v0[52] = v60;
    *v60 = v0;
    v60[1] = sub_2275E92B4;
    v61 = v0[26];
    v62 = v0[21];

    return MEMORY[0x2822008A0](v61, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275ED1D4, v58, v62);
  }

  else
  {
    v25 = v0[39];
    sub_22766A6B0();
    v26 = sub_22766B380();
    v27 = sub_22766C8B0();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[39];
    v30 = v0[34];
    v31 = v0[35];
    v32 = v0[30];
    v33 = v0[27];
    v34 = v0[28];
    if (v28)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_226E8E000, v26, v27, "No operations found in the paired sync request.", v35, 2u);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    (*(v31 + 8))(v29, v30);
    (*(v34 + 8))(v32, v33);
    v37 = v0[39];
    v36 = v0[40];
    v39 = v0[37];
    v38 = v0[38];
    v40 = v0[36];
    v41 = v0[33];
    v43 = v0[29];
    v42 = v0[30];
    v45 = v0[25];
    v44 = v0[26];
    v65 = v0[24];
    v67 = v0[20];
    v69 = v0[17];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_2275E919C()
{
  v1 = v0[46];

  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[25];
  v11 = v0[26];
  v14 = v0[24];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[48];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2275E92B4()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 408);
  v7 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v5 = sub_2275E9A60;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v5 = sub_2275E9404;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275E9404()
{
  v77 = v0;
  v1 = *(v0 + 296);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  sub_22766A6B0();
  v66 = *(v5 + 16);
  v66(v3, v2, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 392);
  v10 = *(v0 + 296);
  v11 = *(v0 + 272);
  v72 = *(v0 + 280);
  v12 = *(v0 + 200);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  if (v8)
  {
    v64 = *(v0 + 272);
    v15 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76 = v60;
    *v15 = 136315138;
    sub_2276655E0();
    sub_227667580();
    v62 = v9;
    sub_2275ED304(&qword_27D7B8930, MEMORY[0x277D52E68]);
    v16 = sub_22766C610();
    v59 = v10;
    v18 = v17;

    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_226E97AE8(v16, v18, &v76);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v7, "Got sync acknowledgement with %s operations completed.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x22AA9A450](v60, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v62(v59, v64);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
    v9(v10, v11);
  }

  *(v0 + 432) = v19;
  v21 = *(v0 + 208);
  v22 = *(sub_2276655E0() + 16);

  if (v22)
  {
    v63 = *(v0 + 208);
    v23 = *(v0 + 192);
    v73 = *(v0 + 184);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v26 = *(v0 + 112);
    v27 = v26[31];
    __swift_project_boxed_opaque_existential_0(v26 + 27, v26[30]);
    *(v0 + 496) = 9;
    *(v0 + 440) = sub_226F19410();
    *(v0 + 448) = sub_226F19464();
    sub_22766A130();
    v28 = v26[21];
    __swift_project_boxed_opaque_existential_0(v26 + 17, v26[20]);
    v66(v23, v63, v24);
    v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v30 = swift_allocObject();
    *(v0 + 456) = v30;
    (*(v25 + 32))(v30 + v29, v23, v24);
    *(v30 + ((v73 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v31 = *(v28 + 24);

    v69 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 464) = v33;
    *v33 = v0;
    v33[1] = sub_2275E9BAC;

    return v69();
  }

  else
  {
    v35 = *(v0 + 288);
    sub_22766A6B0();
    v36 = sub_22766B380();
    v37 = sub_22766C890();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 280);
    v40 = *(v0 + 288);
    v41 = *(v0 + 272);
    v70 = *(v0 + 240);
    v74 = *(v0 + 400);
    v42 = *(v0 + 224);
    v65 = *(v0 + 392);
    v67 = *(v0 + 216);
    v43 = *(v0 + 208);
    v45 = *(v0 + 168);
    v44 = *(v0 + 176);
    if (v38)
    {
      v61 = v19;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_226E8E000, v36, v37, "Got an empty confirmation.", v46, 2u);
      v47 = v46;
      v19 = v61;
      MEMORY[0x22AA9A450](v47, -1, -1);
    }

    v65(v40, v41);
    v19(v43, v45);
    v74(v70, v67);
    v49 = *(v0 + 312);
    v48 = *(v0 + 320);
    v51 = *(v0 + 296);
    v50 = *(v0 + 304);
    v52 = *(v0 + 288);
    v53 = *(v0 + 264);
    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v57 = *(v0 + 200);
    v56 = *(v0 + 208);
    v68 = *(v0 + 192);
    v71 = *(v0 + 160);
    v75 = *(v0 + 136);

    v58 = *(v0 + 8);

    return v58();
  }
}

uint64_t sub_2275E9A60()
{
  v1 = v0[50];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1(v2, v3);
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[25];
  v14 = v0[26];
  v17 = v0[24];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[53];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2275E9BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v7 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_2275EA048;
  }

  else
  {
    v5 = *(v2 + 456);

    v4 = sub_2275E9CC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275E9CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_2275E9D58;
  v2 = *(v0 + 112);

  return sub_2275E8000();
}

uint64_t sub_2275E9D58()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_2275EA234;
  }

  else
  {
    v3 = sub_2275E9E6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275E9E6C()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v24 = *(v0 + 240);
  v26 = *(v0 + 400);
  v3 = *(v0 + 224);
  v21 = *(v0 + 432);
  v22 = *(v0 + 216);
  v4 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 112);
  v8 = v7[31];
  __swift_project_boxed_opaque_existential_0(v7 + 27, v7[30]);
  *(v0 + 499) = 9;
  sub_22766A120();
  v21(v4, v6);
  v26(v24, v22);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v23 = *(v0 + 192);
  v25 = *(v0 + 160);
  v27 = *(v0 + 136);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2275EA048()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v26 = *(v0 + 240);
  v28 = *(v0 + 400);
  v21 = *(v0 + 224);
  v22 = *(v0 + 432);
  v24 = *(v0 + 216);
  v4 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 112);

  v8 = v7[31];
  __swift_project_boxed_opaque_existential_0(v7 + 27, v7[30]);
  *(v0 + 497) = 9;
  sub_22766A120();
  v22(v4, v6);
  v28(v26, v24);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v23 = *(v0 + 192);
  v25 = *(v0 + 160);
  v27 = *(v0 + 136);
  v29 = *(v0 + 472);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2275EA234()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v25 = *(v0 + 240);
  v27 = *(v0 + 400);
  v3 = *(v0 + 224);
  v21 = *(v0 + 432);
  v23 = *(v0 + 216);
  v4 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 112);
  v8 = v7[31];
  __swift_project_boxed_opaque_existential_0(v7 + 27, v7[30]);
  *(v0 + 498) = 9;
  sub_22766A120();
  v21(v4, v6);
  v27(v25, v23);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v22 = *(v0 + 192);
  v24 = *(v0 + 160);
  v26 = *(v0 + 136);
  v28 = *(v0 + 488);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2275EA414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2276655E0();
  v7[2] = a3;
  v7[3] = a1;
  sub_2275CE534(sub_2275ED294, v7, v5);
}

uint64_t sub_2275EA490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_project_boxed_opaque_existential_0((a2 + 56), *(a2 + 80));
  v11 = sub_227667550();
  v13 = v12;
  sub_227667570();
  v14 = *v10;
  sub_22712CDF8(v11, v13, v9, a3);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2275EA5C0()
{
  v1[33] = v0;
  v2 = sub_22766B390();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[38] = v5;
  v6 = *(v5 - 8);
  v1[39] = v6;
  v1[40] = *(v6 + 64);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[43] = v7;
  v8 = *(v7 - 8);
  v1[44] = v8;
  v9 = *(v8 + 64) + 15;
  v1[45] = swift_task_alloc();
  v10 = sub_227665AD0();
  v1[46] = v10;
  v11 = *(v10 - 8);
  v1[47] = v11;
  v12 = *(v11 + 64) + 15;
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275EA7CC, 0, 0);
}

uint64_t sub_2275EA7CC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 264) + 176), *(*(v0 + 264) + 200));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 16);
  v3 = *(v0 + 336);
  if (*(v0 + 40))
  {
    sub_226E92AB8((v0 + 16), v0 + 56);
    sub_226E91B50(v0 + 56, v0 + 96);
    v4 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_226F099DC();
    v5 = swift_allocError();
    *v6 = 0;
    *(swift_allocObject() + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v13 = *(v0 + 304);
  (*(v12 + 16))(v10, v9, v13);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v14, v10, v13);
  v17 = (v16 + v15);
  *v17 = sub_2275ED080;
  v17[1] = 0;
  sub_227669270();
  (*(v12 + 8))(v9, v13);
  v18 = swift_task_alloc();
  *(v0 + 392) = v18;
  *(v18 + 16) = "SeymourServices/PairedSyncCoordinator.swift";
  *(v18 + 24) = 43;
  *(v18 + 32) = 2;
  *(v18 + 40) = 189;
  *(v18 + 48) = v8;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_226F0F658;
  v21 = *(v0 + 384);
  v22 = *(v0 + 368);

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275ED2D4, v18, v22);
}

uint64_t sub_2275EAB0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v70 = a3;
  v65 = a2;
  v61 = a4;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v66 = a1;
  v11 = __swift_project_boxed_opaque_existential_0(a1, v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v12;
  v21 = v13;

  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  swift_getKeyPath();
  v22 = sub_2276633C0();
  v69[3] = MEMORY[0x277D849A8];
  LODWORD(v69[0]) = v22;
  sub_226F06498();

  v23 = sub_22766C820();
  sub_226ED25F8(v69, v67);
  v24 = v68;
  if (v68)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330 qword_227681240))];

  sub_226EBC888(v69);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v60[1] = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v69, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v37 = sub_2272316B8(100);
  if (v5)
  {
    swift_setDeallocating();

    v38 = *(v19 + 40);

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v19 + v39, v40);
    v41 = *(*v19 + 48);
    v42 = *(*v19 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v44 = v37;
    swift_setDeallocating();

    v45 = *(v19 + 40);

    v46 = qword_2813B2078;
    v47 = sub_22766A100();
    (*(*(v47 - 8) + 8))(v19 + v46, v47);
    v48 = *(*v19 + 48);
    v49 = *(*v19 + 52);
    swift_deallocClassInstance();
    v50 = v62;
    sub_22766A6B0();

    v51 = sub_22766B380();
    v52 = sub_22766C8B0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136446210;
      sub_227664140();
      sub_2275ED304(&unk_28139B9C0, MEMORY[0x277D506C0]);
      v55 = sub_22766C610();
      v57 = sub_226E97AE8(v55, v56, v69);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_226E8E000, v51, v52, "Found paired sync operations: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AA9A450](v54, -1, -1);
      MEMORY[0x22AA9A450](v53, -1, -1);
    }

    (*(v63 + 8))(v50, v64);
    v58 = sub_2275E75A4(v44);
    MEMORY[0x28223BE20](v58);
    v60[-4] = v65;
    LOBYTE(v60[-3]) = v70;
    v60[-2] = v66;
    v59 = sub_2271C35AC(sub_2275ED2B0, &v60[-6], v58);

    result = sub_226F36400(v59);
    *v61 = result;
  }

  return result;
}

uint64_t sub_2275EB214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = a4;
  LODWORD(v40) = a3;
  v33 = a5;
  v7 = sub_227664140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276694E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    return result;
  }

  (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
  sub_2276640D0();
  (*(v8 + 8))(v11, v7);
  if (!*(a2 + 16) || (v19 = sub_226F39E30(v17), (v20 & 1) == 0))
  {
    sub_226F1893C();
    swift_allocError();
    *v30 = 11;
    swift_willThrow();
    return (*(v13 + 8))(v17, v12);
  }

  sub_226E91B50(*(a2 + 56) + 40 * v19, v36);
  sub_226E92AB8(v36, v37);
  v21 = v38;
  v22 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  if (((*(v22 + 32))(v40, v21, v22) & 1) == 0)
  {
    sub_226F1893C();
    swift_allocError();
    *v31 = 19;
    swift_willThrow();
    goto LABEL_9;
  }

  v23 = v38;
  v24 = v39;
  v32 = __swift_project_boxed_opaque_existential_0(v37, v38);
  *&v36[0] = v18;
  v40 = *(v24 + 48);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE710, &qword_22768D920);
  v26 = sub_226E9CFD0(&qword_281399110, &qword_27D7BE710, &qword_22768D920);
  v27 = v35;
  v28 = v40(v36, v34, v25, v26, v23, v24);
  if (v27)
  {
LABEL_9:
    (*(v13 + 8))(v17, v12);
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  v29 = v28;
  (*(v13 + 8))(v17, v12);
  *v33 = v29;
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_2275EB590(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2276655F0();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_227665230();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = sub_22766B390();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275EB724, 0, 0);
}

uint64_t sub_2275EB724()
{
  v45 = v0;
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[7];
  sub_22766A6B0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  if (v8)
  {
    v42 = v7;
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v15 = 136315138;
    sub_227665220();
    sub_227665A20();
    v43 = v9;
    sub_2275ED304(&unk_28139B780, MEMORY[0x277D51AF0]);
    v16 = sub_22766C610();
    v40 = v10;
    v18 = v17;

    (*(v13 + 8))(v12, v14);
    v19 = sub_226E97AE8(v16, v18, &v44);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v6, v42, "Got sync data with %s operations.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v41, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v20 = *(v11 + 8);
    v20(v43, v40);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v20 = *(v11 + 8);
    v20(v9, v10);
  }

  v0[20] = v20;
  v21 = v0[18];
  v23 = v0[7];
  v22 = v0[8];
  swift_beginAccess();
  v24 = *(v22 + 256);

  v25 = sub_227665220();
  v26 = sub_2275E70C8(v25);
  v0[21] = v26;
  sub_22766A6B0();

  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = *(v26 + 16);

    _os_log_impl(&dword_226E8E000, v27, v28, "Saving %{public}ld zones from payload.", v29, 0xCu);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  else
  {
  }

  v30 = v0[18];
  v31 = v0[15];
  v0[22] = (v0[16] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v30, v31);
  v0[5] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = v24;
  v33 = swift_allocObject();
  v0[23] = v33;
  *(v33 + 16) = &unk_22768D938;
  *(v33 + 24) = v32;
  v34 = *(MEMORY[0x277D4FA38] + 4);
  v35 = swift_task_alloc();
  v0[24] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF768, &qword_22768D950);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF770, &qword_22768D958);
  v38 = sub_226E9CFD0(&qword_27D7BF778, &qword_27D7BF768, &qword_22768D950);
  *v35 = v0;
  v35[1] = sub_2275EBB98;

  return MEMORY[0x2821AFB18](5, &unk_22768D948, v33, v36, v37, v38);
}

uint64_t sub_2275EBB98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  v7 = v4[23];
  if (v1)
  {

    v8 = sub_2275EBF78;
  }

  else
  {
    v9 = v4[21];

    v4[26] = a1;
    v8 = sub_2275EBCDC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275EBCDC()
{
  v32 = v0;
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  sub_226F34B1C(v0[26]);
  sub_2276655D0();
  sub_22766A6B0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[15];
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  if (v8)
  {
    v30 = v0[17];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v16 = 136315138;
    sub_2276655E0();
    sub_227667580();
    sub_2275ED304(&qword_27D7B8930, MEMORY[0x277D52E68]);
    v17 = sub_22766C610();
    v28 = v10;
    v19 = v18;

    (*(v14 + 8))(v13, v15);
    v20 = sub_226E97AE8(v17, v19, &v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v7, "Successfully saved %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v28(v30, v12);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    v10(v11, v12);
  }

  v22 = v0[18];
  v21 = v0[19];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[11];

  v26 = v0[1];

  return v26();
}

uint64_t sub_2275EBF78()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t sub_2275EC024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = sub_227665A20();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = sub_227667580();
  v3[32] = v7;
  v8 = *(v7 - 8);
  v3[33] = v8;
  v9 = *(v8 + 64) + 15;
  v3[34] = swift_task_alloc();
  v10 = sub_2276694E0();
  v3[35] = v10;
  v11 = *(v10 - 8);
  v3[36] = v11;
  v12 = *(v11 + 64) + 15;
  v3[37] = swift_task_alloc();
  v13 = sub_22766B390();
  v3[38] = v13;
  v14 = *(v13 - 8);
  v3[39] = v14;
  v15 = *(v14 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275EC208, 0, 0);
}

uint64_t sub_2275EC208()
{
  if (*(*(v0 + 224) + 16) && (v1 = sub_226F39E30(*(v0 + 208)), (v2 & 1) != 0))
  {
    sub_226E91B50(*(*(v0 + 224) + 56) + 40 * v1, v0 + 56);
    sub_226E92AB8((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
    v5 = *(v4 + 16);
    v15 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    *v7 = v0;
    v7[1] = sub_2275EC3E0;

    return v15(v3, v4);
  }

  else
  {
    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 272);
    v13 = *(v0 + 248);

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_2275EC3E0(char a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_2275EC4E0, 0, 0);
}

uint64_t sub_2275EC4E0()
{
  if (*(v0 + 368) == 1)
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v2);

    v5 = sub_226F47124(v4);
    *(v0 + 344) = v5;

    v6 = *(v3 + 40);
    v16 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_2275EC6B8;

    return v16(v5, v2, v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v11 = *(v0 + 320);
    v10 = *(v0 + 328);
    v12 = *(v0 + 296);
    v13 = *(v0 + 272);
    v14 = *(v0 + 248);

    v15 = *(v0 + 8);

    return v15(0);
  }
}

uint64_t sub_2275EC6B8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_2275ECB70;
  }

  else
  {
    v5 = *(v2 + 344);

    v4 = sub_2275EC7D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275EC7D4()
{
  v47 = v0;
  v1 = v0[41];
  sub_22766A6B0();
  sub_226E91B50((v0 + 2), (v0 + 17));
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  if (v4)
  {
    v8 = v0[36];
    v9 = v0[37];
    v40 = v0[35];
    v10 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v10 = 136446210;
    v45 = v6;
    v46 = v41;
    v11 = v0[20];
    v12 = v0[21];
    __swift_project_boxed_opaque_existential_0(v0 + 17, v11);
    v43 = v5;
    (*(v12 + 8))(v11, v12);
    v13 = sub_2276694C0();
    v15 = v14;
    (*(v8 + 8))(v9, v40);
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v16 = sub_226E97AE8(v13, v15, &v46);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v2, v3, "Saved zone %{public}s successfully.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v41, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v7 + 8))(v43, v45);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  }

  v17 = v0[27];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = v0[33];
    v21 = v0[30];
    v46 = MEMORY[0x277D84F90];
    sub_226F20888(0, v18, 0);
    v19 = v46;
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = v17 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v42 = *(v21 + 56);
    v44 = v22;
    v24 = (v21 - 8);
    do
    {
      v25 = v0[37];
      v26 = v0[34];
      v27 = v0[31];
      v28 = v0[29];
      v44(v27, v23, v28);
      sub_2276659F0();
      sub_2276659E0();
      sub_227667560();
      (*v24)(v27, v28);
      v46 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F20888(v29 > 1, v30 + 1, 1);
        v19 = v46;
      }

      v31 = v0[34];
      v32 = v0[32];
      *(v19 + 16) = v30 + 1;
      (*(v20 + 32))(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v30, v31, v32);
      v23 += v42;
      --v18;
    }

    while (v18);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v34 = v0[40];
  v33 = v0[41];
  v35 = v0[37];
  v36 = v0[34];
  v37 = v0[31];

  v38 = v0[1];

  return v38(v19);
}

uint64_t sub_2275ECB70()
{
  v37 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);

  sub_22766A6B0();
  sub_226E91B50(v0 + 16, v0 + 96);
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v32 = *(v0 + 360);
    v33 = *(v0 + 312);
    v7 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = *(v0 + 320);
    v8 = *(v0 + 288);
    v31 = *(v0 + 280);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136446466;
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_0((v0 + 96), v11);
    (*(v12 + 8))(v11, v12);
    v13 = sub_2276694C0();
    v15 = v14;
    (*(v8 + 8))(v7, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v16 = sub_226E97AE8(v13, v15, &v36);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 176);
    v18 = MEMORY[0x22AA995D0](*(v0 + 184), *(v0 + 192));
    v20 = sub_226E97AE8(v18, v19, &v36);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v5, v6, "Couldn't save zone %{public}s with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 304);

    (*(v22 + 8))(v21, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v25 = *(v0 + 320);
  v24 = *(v0 + 328);
  v26 = *(v0 + 296);
  v27 = *(v0 + 272);
  v28 = *(v0 + 248);

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_2275ECE48(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF780, &qword_22768D960) + 48));
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_2275ECF6C;

  return v10(a2, v6);
}

uint64_t sub_2275ECF6C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2275ED080(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2275ED1EC(uint64_t a1)
{
  v3 = *(sub_2276655F0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2275EA414(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2275ED304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275ED34C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2274F664C;

  return sub_2275EC024(a1, a2, v6);
}

uint64_t sub_2275ED3F8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226E92F34;

  return sub_2275ECE48(a1, a2, v7);
}

void sub_2275ED4C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v181 = sub_227662190();
  v176 = *(v181 - 8);
  v3 = *(v176 + 8);
  MEMORY[0x28223BE20](v181);
  v183 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD8, &unk_2276795D0);
  v5 = *(v192 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v192);
  v180 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v191 = &v154 - v10;
  MEMORY[0x28223BE20](v9);
  v190 = &v154 - v11;
  v193 = sub_227665440();
  v182 = *(v193 - 8);
  v12 = *(v182 + 64);
  v13 = MEMORY[0x28223BE20](v193);
  v185 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = &v154 - v15;
  v16 = sub_227663540();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v175 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2276622D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_2276627D0();
  v24 = *(v186 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v186);
  v173 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v177 = &v154 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v179 = &v154 - v31;
  MEMORY[0x28223BE20](v30);
  v189 = &v154 - v32;
  v33 = sub_227662750();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v184 = &v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v154 - v38;
  v40 = [a1 dateCreated];
  if (!v40)
  {
    goto LABEL_20;
  }

  v188 = v39;
  v41 = v40;
  sub_227662710();

  v42 = [a1 identifier];
  if (!v42)
  {
LABEL_19:
    (*(v34 + 8))(v188, v33);
LABEL_20:
    v52 = sub_227664DD0();
    sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D51028], v52);
    swift_willThrow();

    return;
  }

  v43 = v42;
  sub_2276627B0();

  v44 = [a1 startDate];
  if (!v44)
  {
LABEL_18:
    (*(v24 + 8))(v189, v186);
    goto LABEL_19;
  }

  v45 = v44;
  v163 = sub_22766C000();
  v169 = v46;

  v47 = [a1 schedule];
  if (!v47)
  {
LABEL_17:

    goto LABEL_18;
  }

  v48 = v47;
  v49 = [a1 templateIdentifier];
  if (!v49)
  {

    goto LABEL_17;
  }

  v172 = v34;
  v159 = a1;
  v50 = v49;
  sub_2276627B0();

  v51 = MEMORY[0x277D84F90];
  v198 = MEMORY[0x277D84F90];
  v158 = v48;
  sub_22766CA80();
  sub_2275F0364(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  v171 = v33;
  if (v197)
  {
    v167 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        sub_226F04970(&v196, &v194);
        type metadata accessor for ManagedWorkoutPlanItemIndex();
        if ((swift_dynamicCast() & 1) == 0 || !v195)
        {
          break;
        }

        MEMORY[0x22AA985C0]();
        if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v170 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v167 = v198;
        sub_22766CBB0();
        v33 = v171;
        if (!v197)
        {
          goto LABEL_22;
        }
      }

      sub_22766CBB0();
    }

    while (v197);
    v33 = v171;
  }

  else
  {
    v167 = v51;
  }

LABEL_22:
  (*(v20 + 8))(v23, v19);
  v54 = v167;
  v166 = v24;
  v165 = v5;
  if (v167 >> 62)
  {
    goto LABEL_51;
  }

  v55 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v172;
  v57 = v189;
  v59 = v183;
  for (i = v184; v55; i = v184)
  {
    *&v196 = MEMORY[0x277D84F90];
    sub_226F1F2A8(0, v55 & ~(v55 >> 63), 0);
    if (v55 < 0)
    {
      goto LABEL_78;
    }

    v60 = 0;
    v170 = v196;
    v164 = v54 & 0xC000000000000001;
    v160 = v54 & 0xFFFFFFFFFFFFFF8;
    v162 = (v176 + 8);
    v61 = v188;
    v161 = v55;
    while (!__OFADD__(v60, 1))
    {
      v168 = v60 + 1;
      if (v164)
      {
        v62 = MEMORY[0x22AA991A0](v60, v54);
      }

      else
      {
        if (v60 >= *(v160 + 16))
        {
          goto LABEL_77;
        }

        v62 = *(v54 + 8 * v60 + 32);
      }

      v63 = v62;
      v64 = [v62 offset];
      if (!v64)
      {
        goto LABEL_45;
      }

      v65 = v64;
      sub_22766C000();

      v176 = [v63 item];
      if (!v176)
      {

        v56 = v172;
        v61 = v188;
LABEL_45:

        v89 = sub_227664DD0();
        sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v89 - 8) + 104))(v90, *MEMORY[0x277D51028], v89);
        swift_willThrow();

        v91 = *(v24 + 8);
        v92 = v186;
        v91(v179, v186);
        v91(v189, v92);
        (*(v56 + 8))(v61, v33);
LABEL_48:

        return;
      }

      v66 = v187;
      sub_2276620C0();
      v67 = v59;
      if (v66)
      {

        goto LABEL_47;
      }

      v187 = 0;
      sub_227662120();
      if (v68 & 1) != 0 || (sub_227662130(), (v69) || (sub_227662160(), (v70) || (sub_227662170(), (v71))
      {

        v87 = sub_227664470();
        sub_2275F0364(&qword_27D7BA250, MEMORY[0x277D50940]);
        swift_allocError();
        (*(*(v87 - 8) + 104))(v88, *MEMORY[0x277D50908], v87);
        swift_willThrow();

        (*v162)(v59, v181);
        v33 = v171;
LABEL_47:
        v93 = v189;
        v94 = *(v24 + 8);
        v95 = v186;
        v94(v179, v186);
        v94(v93, v95);
        (*(v172 + 8))(v188, v33);
        goto LABEL_48;
      }

      v72 = v192;
      v73 = *(v192 + 48);
      v74 = v180;
      sub_2276653F0();
      (*v162)(v67, v181);
      v75 = v63;
      *(v74 + v73) = [v63 index];
      v76 = v176;
      v77 = [v176 workout];
      if (!v77)
      {

        v96 = sub_227664DD0();
        sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v96 - 8) + 104))(v97, *MEMORY[0x277D51028], v96);
        swift_willThrow();

        v98 = *(v166 + 8);
        v99 = v186;
        v98(v179, v186);
        v98(v189, v99);
        (*(v172 + 8))(v188, v171);
        (*(v182 + 8))(v74, v193);
        goto LABEL_48;
      }

      v78 = v77;
      v79 = (v74 + *(v72 + 64));
      v80 = sub_22766C000();
      v82 = v81;

      *v79 = v80;
      v79[1] = v82;
      v83 = v170;
      *&v196 = v170;
      v85 = v170[2];
      v84 = v170[3];
      v33 = v171;
      if (v85 >= v84 >> 1)
      {
        sub_226F1F2A8(v84 > 1, v85 + 1, 1);
        v83 = v196;
      }

      v83[2] = v85 + 1;
      v86 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v170 = v83;
      sub_2275F03AC(v74, v83 + v86 + *(v165 + 72) * v85);
      ++v60;
      v24 = v166;
      v56 = v172;
      v61 = v188;
      v57 = v189;
      v59 = v183;
      v54 = v167;
      if (v168 == v161)
      {

        i = v184;
        v100 = v170;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_51:
    v55 = sub_22766CD20();
    v56 = v172;
    v57 = v189;
    v59 = v183;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_53:
  v101 = v187;
  v102 = sub_2275F041C(v100);
  v155 = v101;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
  v103 = sub_22766CFF0();
  v170 = v103;
  v104 = 0;
  v105 = *(v102 + 64);
  v157 = v102 + 64;
  v168 = v102;
  v106 = 1 << *(v102 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & v105;
  v156 = (v106 + 63) >> 6;
  v161 = v182 + 16;
  v187 = v182 + 32;
  v109 = (v182 + 8);
  v160 = v103 + 64;
  v110 = v188;
  if (v108)
  {
    while (1)
    {
      v176 = ((v108 - 1) & v108);
      v180 = v104;
      v111 = __clz(__rbit64(v108)) | (v104 << 6);
LABEL_62:
      v115 = v168;
      v116 = *(v168 + 48);
      v117 = v182;
      v118 = *(v182 + 16);
      v181 = *(v182 + 72) * v111;
      v119 = v178;
      v120 = v193;
      v118(v178, v116 + v181, v193);
      v121 = *(v115 + 56);
      v183 = v111;
      v122 = *(v121 + 8 * v111);
      v123 = *(v117 + 32);
      v123(v185, v119, v120);
      *&v196 = v122;
      swift_getKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7E8, &qword_22768DA00);
      sub_226E9CFD0(&qword_27D7BF7F0, &qword_27D7BF7E8, &qword_22768DA00);
      v124 = sub_22766C220();

      v125 = *(v124 + 16);
      if (v125)
      {
        v164 = v122;
        v167 = v123;
        *&v196 = MEMORY[0x277D84F90];
        sub_226F1F2C8(0, v125, 0);
        v126 = v196;
        v127 = (*(v165 + 80) + 32) & ~*(v165 + 80);
        v162 = v124;
        v128 = v124 + v127;
        v129 = *(v165 + 72);
        v130 = v192;
        do
        {
          v131 = v190;
          sub_226E93170(v128, v190, &qword_27D7BABD8, &unk_2276795D0);
          v132 = v191;
          sub_2275F03AC(v131, v191);
          v133 = (v132 + *(v130 + 64));
          v135 = *v133;
          v134 = v133[1];
          (*v109)(v132, v193);
          *&v196 = v126;
          v137 = *(v126 + 16);
          v136 = *(v126 + 24);
          if (v137 >= v136 >> 1)
          {
            sub_226F1F2C8((v136 > 1), v137 + 1, 1);
            v126 = v196;
          }

          *(v126 + 16) = v137 + 1;
          v138 = v126 + 16 * v137;
          *(v138 + 32) = v135;
          *(v138 + 40) = v134;
          v128 += v129;
          --v125;
          v130 = v192;
        }

        while (v125);

        v24 = v166;
        v33 = v171;
        v57 = v189;
        v123 = v167;
      }

      else
      {

        v126 = MEMORY[0x277D84F90];
        v57 = v189;
      }

      v139 = v183;
      *(v160 + ((v183 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v183;
      v140 = v170;
      v123((v170[6] + v181), v185, v193);
      *(v140[7] + 8 * v139) = v126;
      v141 = v140[2];
      v142 = __OFADD__(v141, 1);
      v143 = v141 + 1;
      v56 = v172;
      i = v184;
      if (v142)
      {
        break;
      }

      v140[2] = v143;
      v110 = v188;
      v104 = v180;
      v108 = v176;
      if (!v176)
      {
        goto LABEL_57;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

LABEL_57:
  v112 = v104;
  while (1)
  {
    v113 = (v112 + 1);
    if (__OFADD__(v112, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v113 >= v156)
    {
      break;
    }

    v114 = *(v157 + 8 * v113);
    ++v112;
    if (v114)
    {
      v176 = ((v114 - 1) & v114);
      v180 = v113;
      v111 = __clz(__rbit64(v114)) | (v113 << 6);
      goto LABEL_62;
    }
  }

  (*(v56 + 16))(i, v110, v33);
  v144 = v24;
  v145 = *(v24 + 16);
  v146 = v186;
  v145(v177, v57, v186);
  v147 = v155;
  sub_227663490();
  v187 = v147;
  if (v147)
  {

    v148 = *(v144 + 8);
    v148(v177, v146);
    v149 = *(v56 + 8);
    v149(v184, v33);
    v148(v179, v146);
    v148(v57, v146);
    v149(v188, v33);
  }

  else
  {
    v150 = v56;
    v151 = v159;
    *&v194 = [v159 state];
    sub_226FAF774();
    sub_227663AE0();
    v193 = v196;
    LODWORD(v192) = BYTE8(v196);
    v152 = v179;
    v145(v173, v179, v146);
    v198 = [v151 variation];
    sub_2272F1AC4();
    sub_227663AE0();
    sub_2276637F0();

    v153 = *(v144 + 8);
    v153(v152, v146);
    v153(v189, v146);
    (*(v150 + 8))(v188, v33);
  }
}

id sub_2275EEB10(void *a1, uint64_t a2)
{
  v39 = a1;
  v5 = sub_227663540();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276627D0();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662750();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v17 = sub_227663840();
  v43 = a2;
  v18 = sub_2275F0914(v17, sub_2275F08F8, v42);

  if (!v3)
  {
    v35 = v18;
    v36 = v5;
    sub_2276637E0();
    v20 = sub_2276626A0();
    (*(v13 + 8))(v16, v12);
    v21 = v39;
    [v39 setDateCreated_];

    sub_2276637C0();
    v22 = sub_227662790();
    v23 = *(v37 + 8);
    v23(v11, v8);
    [v21 setIdentifier_];

    sub_227663820();
    v24 = sub_227662790();
    v23(v11, v8);
    [v21 setTemplateIdentifier_];

    v25 = v38;
    sub_2276638B0();
    sub_2276634A0();
    (*(v40 + 8))(v25, v36);
    v26 = sub_22766BFD0();

    [v21 setStartDate_];

    v44 = sub_227663850();
    v45 = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC408, &qword_22767DA98);
    sub_227663AD0();
    v28 = v46;
    if (v46 >= 0x7FFFFFFF)
    {
      v28 = 0x7FFFFFFFLL;
    }

    if (v28 <= 0xFFFFFFFF80000000)
    {
      v29 = 0xFFFFFFFF80000000;
    }

    else
    {
      v29 = v28;
    }

    [v21 setState_];
    sub_227073BD4(v35);

    v30 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v31 = sub_22766C2B0();

    v32 = [v30 initWithArray_];

    [v21 setSchedule_];
    v44 = sub_2276638C0();
    v45 = v33 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    result = sub_227663AD0();
    if (v46 < -32768)
    {
      __break(1u);
    }

    else if (v46 < 0x8000)
    {
      return [v21 setVariation_];
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2275EEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v9 = 0;
    for (i = (a2 + 40); ; i += 2)
    {
      v12 = *(i - 1);
      v11 = *i;

      sub_2275EF0EC(v9, v12, v11, a3);
      if (v4)
      {
        break;
      }

      ++v9;

      sub_22766CF00();
      v13 = *(v14 + 16);
      sub_22766CF40();
      sub_22766CF50();
      sub_22766CF10();
      if (v5 == v9)
      {
        return v14;
      }
    }
  }

  return result;
}

void sub_2275EF0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedWorkoutPlanItemIndex();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v8 = objc_opt_self();
  v9 = sub_22766BFD0();
  v10 = [v8 insertNewObjectForEntityForName:v9 inManagedObjectContext:a4];

  type metadata accessor for ManagedWorkoutPlanItem();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    v15 = sub_227664DD0();
    sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51000], v15);
    swift_willThrow();
    goto LABEL_7;
  }

  v12 = v11;
  v13 = sub_22766BFD0();
  [v12 setWorkout_];

  [v7 setItem_];
  sub_22730F2B4();
  if (v4)
  {
LABEL_7:

    return;
  }

  v14 = sub_22766BFD0();

  [v7 setOffset_];

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    [v7 setIndex_];
    return;
  }

  __break(1u);
}

size_t static WorkoutPlan.representativeSamples()()
{
  v90 = sub_2276627D0();
  v74 = *(v90 - 8);
  v0 = *(v74 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v88 = &v72 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF788, &qword_22768D968);
  v4 = *(v87 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - v6;
  v85 = sub_2276638D0();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662940();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_227662750();
  v73 = *(v83 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v83);
  v93 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_227663540();
  v76 = *(v92 - 8);
  v81 = (v92 - 8);
  v75 = v76;
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_227662630();
  v77 = sub_227662780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF790, &qword_22768D970);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_227675BD0;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAD98, &qword_227679800);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808) - 8);
  v18 = *v17;
  v96 = *(*v17 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v98 = xmmword_227670CD0;
  *(v20 + 16) = xmmword_227670CD0;
  v21 = v17[14];
  sub_2276653F0();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABC8, &qword_2276795C0);
  v22 = swift_allocObject();
  *(v22 + 16) = v98;
  *(v22 + 32) = sub_22766C0A0();
  *(v22 + 40) = v23;
  *(v20 + v19 + v21) = v22;
  v24 = sub_22714BF00(v20);
  swift_setDeallocating();
  sub_226E97D1C(v20 + v19, &qword_27D7BADA0, &qword_227679808);
  swift_deallocClassInstance();
  v25 = v94;
  *(v94 + 32) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v98;
  v27 = v17[14];
  sub_2276653F0();
  v28 = swift_allocObject();
  *(v28 + 16) = v98;
  *(v28 + 32) = sub_22766C0A0();
  *(v28 + 40) = v29;
  *(v26 + v19 + v27) = v28;
  v30 = sub_22714BF00(v26);
  swift_setDeallocating();
  sub_226E97D1C(v26 + v19, &qword_27D7BADA0, &qword_227679808);
  swift_deallocClassInstance();
  *(v25 + 40) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v98;
  v32 = v31 + v19;
  v33 = v17[14];
  sub_2276653F0();
  v34 = swift_allocObject();
  *(v34 + 16) = v98;
  *(v34 + 32) = sub_22766C0A0();
  *(v34 + 40) = v35;
  *(v32 + v33) = v34;
  v36 = sub_22714BF00(v31);
  swift_setDeallocating();
  sub_226E97D1C(v32, &qword_27D7BADA0, &qword_227679808);
  swift_deallocClassInstance();
  *(v25 + 48) = v36;
  sub_227662640();
  sub_227662890();
  v37 = v91;
  sub_2276634E0();
  v38 = v92;
  v39 = sub_22766C380();
  *(v39 + 16) = 3;
  v40 = v39 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
  v41 = v75;
  v42 = (v75 + 16);
  v43 = *(v75 + 16);
  v44 = v37;
  v43(v40, v37, v38);
  v45 = *(v76 + 72);
  v82 = v42;
  v81 = v43;
  v43(v40 + v45, v44, v38);
  (*(v41 + 32))(v40 + 2 * v45, v44, v38);
  sub_2275F0264();
  sub_226FAF774();
  v46 = sub_227663B50();
  v47 = sub_227662780();
  sub_2275F02B8();
  sub_2272F1AC4();
  v48 = sub_227663B50();
  v119 = v77;
  v120[0] = v78;
  v120[1] = v120;
  v120[2] = &v119;
  v117 = v39;
  v118 = v94;
  v120[3] = &v118;
  v120[4] = &v117;
  v115 = v47;
  v116 = v46;
  v120[5] = &v116;
  v120[6] = &v115;
  v114 = v48;
  v120[7] = &v114;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v108 = v49;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7A8, &qword_22768D978);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7B0, &qword_22768D980);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7B8, &qword_22768D988);
  v112 = v49;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7C0, &qword_22768D990);
  v100 = sub_226E9CFD0(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v50 = sub_226E9CFD0(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v101 = v50;
  v102 = sub_226E9CFD0(&qword_27D7BF7C8, &qword_27D7BF7A8, &qword_22768D978);
  v103 = sub_226E9CFD0(&qword_27D7BF7D0, &qword_27D7BF7B0, &qword_22768D980);
  v104 = sub_226E9CFD0(&qword_27D7BF7D8, &qword_27D7BF7B8, &qword_22768D988);
  v105 = v50;
  v106 = sub_226E9CFD0(&qword_27D7BF7E0, &qword_27D7BF7C0, &qword_22768D990);
  v51 = sub_2276638E0();

  v52 = *(v51 + 16);
  if (v52)
  {
    v99 = MEMORY[0x277D84F90];
    result = sub_226F1F5A8(0, v52, 0);
    v54 = 0;
    v55 = v99;
    v76 = v51 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v75 = v73 + 16;
    v74 += 16;
    v73 = v7 + 32;
    v80 = v4;
    v79 = v7;
    v78 = v51;
    v77 = v52;
    v56 = v74;
    v57 = v88;
    while (v54 < *(v51 + 16))
    {
      v58 = v86;
      sub_226E93170(v76 + *(v4 + 72) * v54, v86, &qword_27D7BF788, &qword_22768D968);
      v59 = *(v58 + v87[16]);
      v60 = v87[12];
      v61 = v87[20];
      v62 = v58 + v87[24];
      v97 = *v62;
      LODWORD(v96) = *(v62 + 8);
      v63 = v87[28];
      v64 = v58 + v87[32];
      v95 = *v64;
      LODWORD(v94) = *(v64 + 8);
      v65 = *v75;
      *&v98 = v55;
      v65(v93, v58, v83);
      v66 = *v56;
      v67 = v58 + v60;
      v68 = v90;
      (*v56)(v57, v67, v90);
      v81(v91, v58 + v61, v92);
      v66(v89, v58 + v63, v68);

      v69 = v84;
      v55 = v98;
      sub_2276637F0();
      sub_226E97D1C(v58, &qword_27D7BF788, &qword_22768D968);
      v99 = v55;
      v71 = *(v55 + 16);
      v70 = *(v55 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_226F1F5A8(v70 > 1, v71 + 1, 1);
        v55 = v99;
      }

      ++v54;
      *(v55 + 16) = v71 + 1;
      result = (*(v79 + 32))(v55 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v71, v69, v85);
      v4 = v80;
      v51 = v78;
      if (v77 == v54)
      {

        return v55;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void (*sub_2275F00EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA991A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2275F016C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2275F0174(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA991A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2275F0DA8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2275F01F4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_2275F025C;
  }

  __break(1u);
  return result;
}

unint64_t sub_2275F0264()
{
  result = qword_27D7BF798;
  if (!qword_27D7BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF798);
  }

  return result;
}

unint64_t sub_2275F02B8()
{
  result = qword_27D7BF7A0;
  if (!qword_27D7BF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF7A0);
  }

  return result;
}

uint64_t sub_2275F030C(uint64_t a1)
{
  result = sub_2275F0364(&qword_2813A57E0, MEMORY[0x277D50180]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275F0364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275F03AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD8, &unk_2276795D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275F041C(uint64_t a1)
{
  v72 = sub_227665440();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v72);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD8, &unk_2276795D0);
  v6 = *(*(v66 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v66);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v55 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v55 - v14;
  v74 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (v15)
  {
    v58 = *(v13 + 80);
    v16 = *(v13 + 72);
    v17 = a1 + ((v58 + 32) & ~v58);
    v68 = (v2 + 32);
    v61 = (v58 + 32) & ~v58;
    v62 = (v2 + 16);
    v73 = MEMORY[0x277D84F98];
    v59 = v2;
    v57 = (v2 + 8);
    v56 = xmmword_227670CD0;
    v60 = v16;
    while (1)
    {
      v69 = v17;
      v70 = v15;
      v22 = v71;
      sub_226E93170(v17, v71, &qword_27D7BABD8, &unk_2276795D0);
      v23 = v22;
      v24 = v64;
      sub_226E93170(v23, v64, &qword_27D7BABD8, &unk_2276795D0);
      v25 = v65;
      v26 = *(v66 + 48);
      v27 = *(v24 + v26);
      v28 = *(v66 + 64);
      v29 = *(v24 + v28);
      v30 = *(v24 + v28 + 8);
      v31 = v5;
      v32 = &v65[v28];
      v33 = v24;
      v34 = v72;
      v67 = *v68;
      v67(v65, v33, v72);
      *(v25 + v26) = v27;
      *v32 = v29;
      *(v32 + 1) = v30;
      v5 = v31;
      (*v62)(v31, v25, v34);
      sub_226E97D1C(v25, &qword_27D7BABD8, &unk_2276795D0);
      v35 = v73;
      v37 = sub_226F39F04(v31);
      v38 = v35[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        break;
      }

      v41 = v36;
      if (v35[3] < v40)
      {
        sub_226FE1E4C(v40, 1);
        v35 = v74;
        v42 = sub_226F39F04(v31);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_20;
        }

        v37 = v42;
      }

      v73 = v35;
      if (v41)
      {
        (*v57)(v31, v72);
        v44 = v35[7];
        sub_2275F03AC(v71, v63);
        v45 = *(v44 + 8 * v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 8 * v37) = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = sub_2273A4E80(0, v45[2] + 1, 1, v45);
          *(v44 + 8 * v37) = v45;
        }

        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          v45 = sub_2273A4E80(v47 > 1, v48 + 1, 1, v45);
          *(v44 + 8 * v37) = v45;
        }

        v18 = v69;
        v19 = v70;
        v45[2] = v48 + 1;
        v20 = v45 + v61;
        v21 = v60;
        sub_2275F03AC(v63, &v20[v48 * v60]);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD0, &qword_2276795C8);
        v21 = v60;
        v49 = v61;
        v50 = swift_allocObject();
        *(v50 + 16) = v56;
        sub_2275F03AC(v71, v50 + v49);
        v35[(v37 >> 6) + 8] |= 1 << v37;
        v67((v35[6] + *(v59 + 72) * v37), v31, v72);
        *(v35[7] + 8 * v37) = v50;
        v51 = v35[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_19;
        }

        v35[2] = v53;
        v18 = v69;
        v19 = v70;
      }

      v17 = v18 + v21;
      v15 = v19 - 1;
      if (!v15)
      {
        return v73;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_22766D220();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2275F0914(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v59 = a2;
  v60 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  v6 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v8 = &v49 - v7;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v55 = v13;
  v56 = a1 + 64;
  v50 = a1;
  v57 = v8;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v13)
        {
          goto LABEL_42;
        }

        v12 = *(v9 + 8 * v17);
        ++v15;
        if (v12)
        {
          v15 = v17;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

LABEL_10:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = *(a1 + 48);
    v20 = sub_227665440();
    (*(*(v20 - 8) + 16))(v8, v19 + *(*(v20 - 8) + 72) * v18, v20);
    v21 = *(*(a1 + 56) + 8 * v18);
    *&v8[*(v58 + 48)] = v21;

    v22 = v59(v8, v21);
    if (v4)
    {
      goto LABEL_41;
    }

    v23 = v22;
    sub_226E97D1C(v8, &qword_27D7B9DE0, &qword_227676640);
    v24 = v23 >> 62;
    v25 = v23 >> 62 ? sub_22766CD20() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v23;
    v26 = a1;
    v27 = v16 >> 62;
    if (v16 >> 62)
    {
      break;
    }

    v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v28 + v25;
    if (__OFADD__(v28, v25))
    {
      goto LABEL_40;
    }

LABEL_15:
    v62 = v25;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v27)
      {
LABEL_22:
        sub_22766CD20();
      }

      else
      {
        v31 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v32 = *(v31 + 16);
      }

      result = sub_22766CE90();
      v30 = result;
      v31 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v27)
    {
      goto LABEL_22;
    }

    v30 = v16;
    v31 = v16 & 0xFFFFFFFFFFFFFF8;
    if (v29 > *(v31 + 24) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v33 = *(v31 + 16);
    v34 = *(v31 + 24);
    v61 = v30;
    if (v24)
    {
      result = sub_22766CD20();
      v35 = result;
    }

    else
    {
      v35 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 &= v12 - 1;
    if (v35)
    {
      if (((v34 >> 1) - v33) < v62)
      {
        goto LABEL_45;
      }

      v52 = v15;
      v53 = v12;
      v54 = 0;
      v36 = v31 + 8 * v33 + 32;
      v51 = v31;
      if (v24)
      {
        if (v35 < 1)
        {
          goto LABEL_47;
        }

        sub_226E9CFD0(&qword_27D7BF800, &qword_27D7BF7F8, &qword_22768DA08);
        v37 = 0;
        v38 = v64;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7F8, &qword_22768DA08);
          v39 = v35;
          v40 = v36;
          v41 = sub_2275F00EC(v63, v37, v38);
          v43 = *v42;
          (v41)(v63, 0);
          v36 = v40;
          v35 = v39;
          *(v36 + 8 * v37++) = v43;
        }

        while (v39 != v37);
      }

      else
      {
        type metadata accessor for ManagedWorkoutPlanItemIndex();
        swift_arrayInitWithCopy();
      }

      v16 = v61;
      v4 = v54;
      v13 = v55;
      a1 = v50;
      v9 = v56;
      v8 = v57;
      v15 = v52;
      v12 = v53;
      if (v62 >= 1)
      {
        v44 = *(v51 + 16);
        v45 = __OFADD__(v44, v62);
        v46 = v44 + v62;
        if (v45)
        {
          goto LABEL_46;
        }

        *(v51 + 16) = v46;
      }
    }

    else
    {

      v16 = v61;
      v9 = v56;
      v8 = v57;
      v13 = v55;
      a1 = v26;
      if (v62 > 0)
      {
        goto LABEL_44;
      }
    }
  }

  v47 = v25;
  v48 = sub_22766CD20();
  v25 = v47;
  v45 = __OFADD__(v48, v47);
  v29 = v48 + v47;
  if (!v45)
  {
    goto LABEL_15;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  sub_226E97D1C(v8, &qword_27D7B9DE0, &qword_227676640);

LABEL_42:

  return v16;
}

uint64_t sub_2275F0DAC(char a1)
{
  v3 = sub_227669A90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v4 + 104);
  v8(v7, *MEMORY[0x277D4EE40], v3);
  v11[15] = 0;
  sub_227669760();
  v8(v7, *MEMORY[0x277D4EE78], v3);
  v11[14] = 0;
  sub_227669760();
  v8(v7, *MEMORY[0x277D4EF30], v3);
  v11[13] = 1;
  sub_227669760();
  *(v1 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_platform) = a1;
  v9 = v1 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  return v1;
}

void sub_2275F0F8C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_platform);
  if (sub_2276693B0())
  {
    v10 = v5[2];
    v10(v8, v2 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeSubscribed, v4);
    sub_227669730();
    v11 = v5[1];
    v11(v8, v4);
    if (v18[15] == 1)
    {
      v12 = type metadata accessor for ServiceSubscriptionFakingProvider();
      swift_allocObject();
      v13 = 1;
LABEL_7:
      v16 = sub_22730F9A4(v13);
      v17 = &off_283AAF8E0;
      goto LABEL_8;
    }

    v10(v8, v2 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeUnsubscribed, v4);
    sub_227669730();
    v11(v8, v4);
    if (v18[14] == 1)
    {
      v12 = type metadata accessor for ServiceSubscriptionFakingProvider();
      swift_allocObject();
      v13 = 0;
      goto LABEL_7;
    }
  }

  v14 = sub_2276693D0();
  v15 = [objc_opt_self() sharedInstance];
  v12 = type metadata accessor for ServiceSubscriptionProvider();
  swift_allocObject();
  v16 = sub_2273BE1F8(v14, v15);

  v17 = &off_283AB6790;
LABEL_8:
  a1[3] = v12;
  a1[4] = v17;
  *a1 = v16;
}

uint64_t sub_2275F11F8()
{
  v1 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeSubscribed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeUnsubscribed, v2);
  v3(v0 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeSubscribedSimulator, v2);
  sub_2275F1408(v0 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServiceSubscriptionProviderBroker()
{
  result = qword_28139DB00;
  if (!qword_28139DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275F1350()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2275F1438(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for SyncSubmissionChangeset();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v21 = MEMORY[0x277D84F90];
    sub_226F1F0B0(0, v11, 0);
    v12 = v21;
    for (i = a3 + 32; ; i += 40)
    {
      v18(i, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1F0B0(v14 > 1, v15 + 1, 1);
        v12 = v21;
      }

      *(v12 + 16) = v15 + 1;
      sub_2275F6C68(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for SyncSubmissionChangeset);
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_2275F15DC(void (*a1)(uint64_t *__return_ptr, char *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v36 = a2;
  v6 = sub_227664140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v34 = v10;
    v43 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v13 = -1 << *(a3 + 32);
    v39 = a3 + 56;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v40 = *(a3 + 36);
    v32 = v7 + 16;
    v33 = (v7 + 8);
    v29 = a3 + 64;
    v30 = v6;
    v31 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a3 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v39 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v40 != *(a3 + 36))
      {
        goto LABEL_24;
      }

      v38 = v15;
      v19 = v34;
      (*(v7 + 16))(v34, *(a3 + 48) + *(v7 + 72) * v14, v6);
      v35(&v42, v19, &v41);
      if (v4)
      {
        (*v33)(v19, v6);
      }

      v37 = 0;
      (*v33)(v19, v6);
      sub_22766CF00();
      v20 = a3;
      v21 = *(v43 + 16);
      sub_22766CF40();
      a3 = v20;
      sub_22766CF50();
      result = sub_22766CF10();
      v16 = 1 << *(v20 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v22 = *(v39 + 8 * v18);
      if ((v22 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v40 != *(v20 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v14 & 0x3F));
      if (v23)
      {
        v16 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v31;
      }

      else
      {
        v24 = v18 << 6;
        v25 = v18 + 1;
        v26 = (v29 + 8 * v18);
        v17 = v31;
        while (v25 < (v16 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v14, v40, 0);
            v16 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v14, v40, 0);
      }

LABEL_4:
      v4 = v37;
      v15 = v38 + 1;
      v14 = v16;
      v6 = v30;
      if (v38 + 1 == v17)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}
id sub_21D67B67C(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 96);
  if (*(v4 + 16) <= (a1 & 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 8 * (a1 & 1) + 32);
    if (v5)
    {
      return [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_21D67B700()
{
  byte_280D16BC0 = 0;
  qword_280D16BC8 = 0;
  unk_280D16BD0 = MEMORY[0x277D84F90];
  qword_280D16BD8 = MEMORY[0x277D84FA0];
}

uint64_t sub_21D67B728(void *a1)
{
  v2 = v1;
  if (qword_280D16BB8 != -1)
  {
    swift_once();
  }

  v4 = qword_280D16BC8;
  v5 = unk_280D16BD0;
  v6 = qword_280D16BD8;
  *(v2 + 16) = byte_280D16BC0;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F7E8);
  v7 = sub_21DBFA69C();
  v7[2] = 2;
  v7[4] = 0;
  v7[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F7F0);
  v8 = sub_21DBFA69C();
  v8[2] = 2;
  v8[4] = 0;
  v8[5] = 0;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 40))(v9, v10);
  if (v7[2])
  {
    v12 = v7[4];
    v7[4] = result;

    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    result = (*(v14 + 56))(v13, v14);
    if (v7[2] >= 2uLL)
    {
      v15 = v7[5];
      v7[5] = result;

      sub_21D0D32E4(a1, v2 + 48);
      *(v2 + 88) = v7;
      *(v2 + 96) = v8;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D67B8F8(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = a1 & 1;
  if (*(v4 + 16) <= v5)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 8 * v5 + 32);
    v7 = v6;
    if (v6)
    {
LABEL_5:
      v10 = v6;
      return v7;
    }

    v8 = *(v1 + 88);
    if (*(v8 + 16) > v5)
    {
      v7 = *(v8 + 8 * v5 + 32);
      v9 = v7;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D67B98C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_21D67BA00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[9];
  v5 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v4);
  (*(v5 + 216))(&aBlock, v4, v5);
  v6 = v46;
  if (v46)
  {
    v7 = v47;
    __swift_project_boxed_opaque_existential_1(&aBlock, v46);
    v8 = (*(v7 + 1))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v42 = v8;
    aBlock = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148);
    sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148);
    v41 = sub_21DBFA42C();
    v9 = sub_21D67B8F8(0);
    v10 = MEMORY[0x277D84FA0];
    if (v9)
    {
      v11 = v9;
      v12 = [v9 string];
      v13 = sub_21DBFA16C();
      v15 = v14;

      v16 = MEMORY[0x223D42B30](v13, v15);

      v17 = swift_allocObject();
      *(v17 + 16) = v10;
      v18 = (v17 + 16);
      v47 = sub_21D47BA94;
      v48 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_21D472974;
      v46 = &block_descriptor_53_2;
      v19 = _Block_copy(&aBlock);

      [v11 rem:0 enumerateHashtagInRange:v16 options:0x100000 usingBlock:v19];

      _Block_release(v19);
      swift_beginAccess();
      v10 = *v18;
      sub_21DBF8E0C();
    }

    v20 = sub_21D67B8F8(1);
    v21 = MEMORY[0x277D84FA0];
    if (v20)
    {
      v22 = v20;
      v23 = [v20 string];
      v24 = sub_21DBFA16C();
      v26 = v25;

      v27 = MEMORY[0x223D42B30](v24, v26);

      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      v29 = (v28 + 16);
      v47 = sub_21D24B444;
      v48 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_21D472974;
      v46 = &block_descriptor_48_2;
      v30 = _Block_copy(&aBlock);

      [v22 rem:0 enumerateHashtagInRange:v27 options:0x100000 usingBlock:v30];

      _Block_release(v30);
      swift_beginAccess();
      v21 = *v29;
      sub_21DBF8E0C();
    }

    v31 = sub_21D996B68(v21, v10);
    v32 = v31;
    if (*(v41 + 16) <= *(v31 + 16) >> 3)
    {
      v49 = v31;
      sub_21DBF8E0C();
      sub_21D9F86E8(v41);
      v33 = v49;
    }

    else
    {
      sub_21DBF8E0C();
      v33 = sub_21D9F8D40(v41, v32);
    }

    if (*(v32 + 16) <= *(v41 + 16) >> 3)
    {
      v49 = v41;
      sub_21D9F86E8(v32);

      v38 = v49;
    }

    else
    {
      v38 = sub_21D9F8D40(v32, v41);
    }

    sub_21DBF8E0C();
    v39 = sub_21D67CFC0(v42, v38);

    v49 = v39;
    v40 = sub_21DBF780C();

    *a1 = 1;
    *(a1 + 8) = v33;
    *(a1 + 16) = v40;
    *(a1 + 24) = v38;
  }

  else
  {
    sub_21D0CF7E0(&aBlock, &qword_27CE5A140);
    if (qword_280D16BB8 != -1)
    {
      swift_once();
    }

    v34 = qword_280D16BC8;
    v35 = unk_280D16BD0;
    v36 = qword_280D16BD8;
    *a1 = byte_280D16BC0;
    *(a1 + 8) = v34;
    *(a1 + 16) = v35;
    *(a1 + 24) = v36;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D67BF78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 type] == 1)
  {
    v4 = [v3 objectIdentifier];
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_21D67C008(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_21DBFA16C();

  return v2;
}

void sub_21D67C084(int a1)
{
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v38 = a1;
  v37 = v7;
  v8 = sub_21D67B8F8(a1 & 1);
  if (!v8)
  {
    return;
  }

  v43 = v8;
  v9 = [v8 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v27 = v43;

    return;
  }

  v14 = [v43 string];
  if (!v14)
  {
    sub_21DBFA16C();
    v14 = sub_21DBFA12C();
  }

  v15 = sub_21DBFA16C();
  v17 = v16;
  if (qword_280D0C410 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v18 = MEMORY[0x277D84F90];
    if (qword_280D0C418)
    {
      v19 = v15;
      aBlock = v15;
      v45 = v17;
      v20 = qword_280D0C418;
      sub_21DBF4C5C();
      sub_21D176F0C();
      v21 = sub_21DBFBB3C();
      v23 = v22;
      v24 = *(v4 + 8);
      v4 += 8;
      v24(v6, v3);

      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = [v20 matchesInString:v14 options:0 range:{0, MEMORY[0x223D42B30](v19, v17)}];

        sub_21D0D8CF0(0, &qword_280D0C278);
        v3 = sub_21DBFA5EC();

        goto LABEL_18;
      }
    }

    v3 = MEMORY[0x277D84F90];
LABEL_18:

    v48 = v18;
    if (v3 >> 62)
    {
      break;
    }

    v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_35;
    }

LABEL_20:
    v6 = 0;
    v41 = v3 & 0xFFFFFFFFFFFFFF8;
    v42 = v3 & 0xC000000000000001;
    v40 = v46;
    v39 = v28;
    while (1)
    {
      if (v42)
      {
        v15 = MEMORY[0x223D44740](v6, v3);
      }

      else
      {
        if (v6 >= *(v41 + 16))
        {
          goto LABEL_32;
        }

        v15 = *(v3 + 8 * v6 + 32);
      }

      v29 = v15;
      v17 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v30 = [v15 range];
      v32 = v31;
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      v46[2] = sub_21D67D5D4;
      v47 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46[0] = sub_21D472974;
      v46[1] = &block_descriptor_42_3;
      v33 = _Block_copy(&aBlock);
      v14 = v47;

      [v43 rem:v30 enumerateHashtagInRange:v32 options:0x100000 usingBlock:v33];
      _Block_release(v33);
      swift_beginAccess();
      LOBYTE(v30) = *(v4 + 16);

      if (v30)
      {
      }

      else
      {
        sub_21DBFBFEC();
        v4 = v48[2];
        sub_21DBFC03C();
        sub_21DBFC04C();
        v15 = sub_21DBFBFFC();
      }

      ++v6;
      if (v17 == v39)
      {
        v34 = v48;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v35 = v15;
    swift_once();
    v15 = v35;
  }

  v15 = sub_21DBFBD7C();
  v28 = v15;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_35:
  v34 = MEMORY[0x277D84F90];
LABEL_36:

  if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
  {
    if (!sub_21DBFBD7C())
    {
      goto LABEL_41;
    }

LABEL_39:

    v36._rawValue = v34;
    sub_21D67D460((v38 & 1), v37, v36);
  }

  else
  {
    if (*(v34 + 16))
    {
      goto LABEL_39;
    }

LABEL_41:
  }
}

unint64_t sub_21D67C5E8()
{
  result = qword_27CE5F7C8;
  if (!qword_27CE5F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F7C8);
  }

  return result;
}

unint64_t sub_21D67C640()
{
  result = qword_27CE5F7D0;
  if (!qword_27CE5F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F7D0);
  }

  return result;
}

unint64_t sub_21D67C698()
{
  result = qword_27CE5F7D8;
  if (!qword_27CE5F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F7D8);
  }

  return result;
}

unint64_t sub_21D67C6F0()
{
  result = qword_27CE5F7E0;
  if (!qword_27CE5F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F7E0);
  }

  return result;
}

uint64_t destroy for TTRReminderViewModelComputedProperties(id *a1)
{
}

uint64_t initializeWithCopy for TTRReminderViewModelComputedProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = v3;
  v7 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderViewModelComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderViewModelComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t *sub_21D67C90C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_21DBF8E0C();
    sub_21D67C9A8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_21D67C9A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    if ([v15 type])
    {
      v30 = v14;
      v32 = v9;
      v16 = [v15 objectIdentifier];
      v17 = sub_21DBFA16C();
      v19 = v18;

      if (*(a4 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();
        v20 = sub_21DBFC82C();
        v21 = -1 << *(a4 + 32);
        v22 = v20 & ~v21;
        if ((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a4 + 48) + 16 * v22);
            v25 = *v24 == v17 && v24[1] == v19;
            if (v25 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v9 = v32;
          v14 = v30;
          goto LABEL_25;
        }
      }

LABEL_5:

      v9 = v32;
    }

    else
    {

LABEL_25:
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_31;
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

    if (v5 >= v10)
    {

      sub_21D7BFC3C(a1, v27, v29, a3);
      return;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t *sub_21D67CC10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = sub_21DBF8E0C();
  v42 = a2;
  if (v7 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v35[1] = v3;
    v35[2] = v35;
    v36 = v8;
    MEMORY[0x28223BE20](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v41 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      if ([v20 type])
      {
        v40 = v19;
        v9 = [v20 objectIdentifier];
        v3 = sub_21DBFA16C();
        v22 = v21;

        if (*(v42 + 16))
        {
          sub_21DBFC7DC();
          sub_21DBFA27C();
          v23 = sub_21DBFC82C();
          v24 = v42;
          v25 = -1 << *(v42 + 32);
          v9 = v23 & ~v25;
          if ((*(v41 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
          {
            v26 = ~v25;
            while (1)
            {
              v27 = (*(v24 + 48) + 16 * v9);
              v28 = *v27 == v3 && v27[1] == v22;
              if (v28 || (sub_21DBFC64C() & 1) != 0)
              {
                break;
              }

              v9 = (v9 + 1) & v26;
              v24 = v42;
              if (((*(v41 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v5 = v39;
            v19 = v40;
            goto LABEL_26;
          }
        }

LABEL_6:

        v5 = v39;
      }

      else
      {

LABEL_26:
        *&v37[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_33;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        v30 = sub_21D7BFC3C(v37, v36, v38, v5);

        return v30;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      a2 = v42;
      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  v33 = v42;
  sub_21DBF8E0C();
  v34 = sub_21D67C90C(v32, v8, v5, v33);

  MEMORY[0x223D46520](v32, -1, -1);

  return v34;
}

uint64_t sub_21D67CFC0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21D67CC10(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  sub_21DBF8E0C();
  sub_21DBFBD1C();
  if (sub_21DBFBDBC())
  {
    sub_21D0D8CF0(0, &qword_280D0C348);
    v4 = a2 + 56;
    while (1)
    {
      swift_dynamicCast();
      if (![v26 type])
      {
        goto LABEL_18;
      }

      v5 = [v26 objectIdentifier];
      v6 = sub_21DBFA16C();
      v8 = v7;

      if (*(a2 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();
        v9 = sub_21DBFC82C();
        v10 = -1 << *(a2 + 32);
        v11 = v9 & ~v10;
        if ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }
      }

LABEL_4:

LABEL_5:
      if (!sub_21DBFBDBC())
      {
        goto LABEL_31;
      }
    }

    v12 = ~v10;
    while (1)
    {
      v13 = (*(a2 + 48) + 16 * v11);
      v14 = *v13 == v6 && v13[1] == v8;
      if (v14 || (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_18:
    v15 = *(v3 + 16);
    if (*(v3 + 24) <= v15)
    {
      sub_21D8AD2CC(v15 + 1);
    }

    v3 = v27;
    result = sub_21DBFB62C();
    v17 = v27 + 56;
    v18 = -1 << *(v27 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
    {
      v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      do
      {
        if (++v20 == v23 && (v22 & 1) != 0)
        {
          __break(1u);
          return result;
        }

        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v17 + 8 * v20);
      }

      while (v25 == -1);
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
    }

    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v27 + 48) + 8 * v21) = v26;
    ++*(v27 + 16);
    goto LABEL_5;
  }

LABEL_31:

  return v3;
}

void sub_21D67D2C0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a2 + 96);
  v11 = a1 & 1;
  if (*(v10 + 16) <= v11)
  {
    __break(1u);
LABEL_12:
    v19 = sub_21D256E60();
    *(a2 + 96) = v19;
    goto LABEL_8;
  }

  v12 = v10 + 8 * v11;
  v13 = *(v12 + 32);
  if (v13)
  {
    a1 = *(v12 + 32);
  }

  else
  {
    v14 = *(a2 + 88);
    if (*(v14 + 16) <= v11)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v15 = *(v14 + 8 * v11 + 32);
    if (!v15)
    {
      return;
    }

    a1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v13 = 0;
  }

  v16 = objc_opt_self();
  v17 = v13;
  v18 = [v16 attributeFromHashtag_];
  [a1 rem:v18 addHashtag:a4 range:a5];

  swift_beginAccess();
  v19 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v19 + 16) <= v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v19 + 8 * v11;
  v22 = *(v21 + 32);
  *(v21 + 32) = a1;
  *(a2 + 96) = v19;
  swift_endAccess();
}

void sub_21D67D460(id a1, uint64_t a2, Swift::OpaquePointer a3)
{
  swift_beginAccess();
  v6 = *(a2 + 96);
  v7 = a1 & 1;
  if (*(v6 + 16) <= v7)
  {
    __break(1u);
LABEL_12:
    v13 = sub_21D256E60();
    *(a2 + 96) = v13;
    goto LABEL_8;
  }

  v8 = *(v6 + 8 * v7 + 32);
  if (v8)
  {
    a1 = v8;
  }

  else
  {
    v9 = *(a2 + 88);
    if (*(v9 + 16) <= v7)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v10 = *(v9 + 8 * v7 + 32);
    if (!v10)
    {
      return;
    }

    a1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v8 = 0;
  }

  v11 = v8;
  v12 = sub_21D11274C(MEMORY[0x277D84F90]);
  NSMutableAttributedString.formatDetectedLinksAndPhoneNumbers(_:adding:)(a3, v12);

  swift_beginAccess();
  v13 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v13 + 16) <= v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v13 + 8 * v7;
  v16 = *(v15 + 32);
  *(v15 + 32) = a1;
  *(a2 + 96) = v13;
  swift_endAccess();
}

RemindersUICore::TTRLocationQuickPickItem_optional __swiftcall TTRLocationQuickPickItem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRLocationQuickPickItem.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E6572727563;
  v3 = 0x49676E6974746567;
  v4 = 0x4F676E6974746567;
  if (v1 != 4)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701670760;
  if (v1 != 1)
  {
    v5 = 1802661751;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21D67D710()
{
  result = qword_27CE5F7F8;
  if (!qword_27CE5F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F7F8);
  }

  return result;
}

uint64_t sub_21D67D76C()
{
  sub_21DBFA27C();
}

void sub_21D67D870(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E6572727563;
  v5 = 0xEC0000007261436ELL;
  v6 = 0x49676E6974746567;
  v7 = 0xEF726143664F7475;
  v8 = 0x4F676E6974746567;
  if (v2 != 4)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1701670760;
  if (v2 != 1)
  {
    v9 = 1802661751;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ItemID.NamedID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ItemID.NamedID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration.init(showsMenuTitle:showsNoneOption:showsIcons:menuStateByPostponeType:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration.init(availableQuickPickItems:selectedQuickPickItem:handleSelection:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.init(assigneeCandidates:viewScale:isRTL:showsMenuTitle:showsNoneOption:itemCountByAssigneeID:updateAssigneeCandidateAvatarImages:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 17) = a3;
  *(a9 + 18) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a11;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration.init(showsScanTextOption:handleSelection:handleScanText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_21D67DAF4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_21D683B60, v4);
}

void sub_21D67DB88(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_27CE5DE90);
  v3 = sub_21DBFA5DC();
  (*(a2 + 16))(a2, v3);
}

uint64_t TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_21D67DC54(unsigned __int8 *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v7 = a3;
  v73 = a3 & 0x10000;
  v10 = sub_21DBF5A2C();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v62 - v14;
  v15 = sub_21DBF563C();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v20 = sub_21DBF509C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  if (*(a4 + 16) && (v25 = sub_21D17E11C(*a1), (v26 & 1) != 0))
  {
    v70 = *(*(a4 + 56) + 8 * v25);
    if (!v73)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v70 = 0;
    if (!v73)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    v27 = a2;
LABEL_13:
    v39 = 0;
    v40 = 0;
    goto LABEL_14;
  }

  v74 = v24;
  TTRRemindersListPostponeType.dateChangeType.getter(v19);
  v28 = type metadata accessor for TTRDateChangeType();
  if ((*(*(v28 - 8) + 48))(v19, 1, v28) == 1 || swift_getEnumCaseMultiPayload() >= 2)
  {
LABEL_12:
    a2 = 0;
    goto LABEL_13;
  }

  v29 = v21;
  (*(v21 + 32))(v23, v19, v20);
  v30 = sub_21DBF4F0C();
  v32 = sub_21D933D08(v30, v31 & 1);
  v33 = objc_opt_self();
  v63 = v32;
  v34 = v32;
  v35 = [v33 currentCalendar];
  sub_21DBF596C();

  v36 = v65;
  sub_21DBF597C();
  (*(v66 + 8))(v12, v67);
  (*(v29 + 8))(v23, v20);
  v38 = v68;
  v37 = v69;
  if ((*(v68 + 48))(v36, 1, v69) == 1)
  {
    sub_21D46CB6C(v36);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v57 = v64;
    (*(v38 + 32))(v64, v36, v37);
    if (qword_280D171B8 != -1)
    {
      swift_once();
    }

    v58 = qword_280D171C0;
    v59 = sub_21DBF55BC();
    v60 = [v58 stringFromDate_];

    v39 = sub_21DBFA16C();
    v40 = v61;

    (*(v38 + 8))(v57, v37);
  }

  a2 = v63;
LABEL_14:
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  v78 = v24;
  TTRRemindersListPostponeType.localizedDescription.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v7 & 1;
  *(v41 + 17) = HIBYTE(v7) & 1;
  *(v41 + 18) = BYTE2(v73);
  v42 = v71;
  v43 = v72;
  *(v41 + 24) = a4;
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  *(v41 + 48) = v24;
  sub_21DBF8E0C();

  v44 = sub_21DBFB77C();
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_21DC08D20;
    v77 = v24;
    *(v45 + 32) = TTRRemindersListPostponeType.localizedDescription.getter();
    *(v45 + 40) = v46;
    *(v45 + 48) = v39;
    *(v45 + 56) = v40;
    v76 = v45;
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    sub_21DBFA07C();

    v47 = v44;
    v48 = sub_21DBFA12C();

    [v47 setAccessibilityLabel_];

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_21DC08D00;
    v75 = v24;
    *(v49 + 32) = TTRRemindersListPostponeType.localizedDescription.getter();
    *(v49 + 40) = v50;
    v51 = sub_21DBFA5DC();

    [v47 setAccessibilityUserInputLabels_];
  }

  if (v24 > 4)
  {
  }

  else
  {
    v52 = sub_21DBFC64C();

    if ((v52 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v53 = qword_27CE57488;
  v54 = v44;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = sub_21DBFA12C();
  [v54 setAccessibilityHint_];

LABEL_25:
  return v44;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.fetchAllHashtagLabels.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.handleCustomTags.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.handleTagSelection.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.handleClearTags.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

__n128 TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.init(showsMenuTitle:itemCount:customTagsOption:itemCountByHashtagLabel:fetchAllHashtagLabels:handleCustomTags:handleTagSelection:handleClearTags:)@<Q0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  v13 = *a3;
  a9->n128_u8[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u8[0] = v13;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.createHashtagsContextMenu(configuration:)(__int128 *a1)
{
  v2 = a1[3];
  v58 = a1[2];
  v59 = v2;
  v3 = a1[5];
  v60 = a1[4];
  v61 = v3;
  v4 = a1[1];
  v56 = *a1;
  v57 = v4;
  v55 = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  v6 = a1[3];
  v5[3] = a1[2];
  v5[4] = v6;
  v7 = a1[5];
  v5[5] = a1[4];
  v5[6] = v7;
  v8 = a1[1];
  v5[1] = *a1;
  v5[2] = v8;
  aBlock[4] = sub_21D682B6C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D67DAF4;
  aBlock[3] = &block_descriptor_72;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();
  sub_21D682B74(&v56, v53);
  v11 = [v10 elementWithProvider_];
  _Block_release(v9);

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC09CF0;
  *(v12 + 32) = v11;
  v13 = v11;
  v14 = sub_21DBFB58C();
  MEMORY[0x223D42D80](v14);
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_41:
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  v15 = 0;
  v16 = v55;
  v17 = 1 << *(*(&v57 + 1) + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(*(&v57 + 1) + 64);
  v20 = (v17 + 63) >> 6;
  do
  {
    if (!v19)
    {
      while (1)
      {
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v21 >= v20)
        {
          goto LABEL_18;
        }

        v19 = *(*(&v57 + 1) + 64 + 8 * v21);
        ++v15;
        if (v19)
        {
          v15 = v21;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v21 = v15;
LABEL_12:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
  }

  while (*(*(*(&v57 + 1) + 56) + ((v21 << 9) | (8 * v22))) < 1);
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v23 = swift_allocObject();
  v24 = v59;
  v23[3] = v58;
  v23[4] = v24;
  v25 = v61;
  v23[5] = v60;
  v23[6] = v25;
  v26 = v57;
  v23[1] = v56;
  v23[2] = v26;
  sub_21D682B74(&v56, v53);
  v27 = sub_21DBFB77C();
  MEMORY[0x223D42D80](v27, v28, v29, v30, v31);
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();

  v16 = v55;
LABEL_18:
  if (v57 != 2)
  {
    if (v57 == 3)
    {
      sub_21D0D8CF0(0, &qword_280D0C1D0);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v32 = sub_21DBFA12C();
      v33 = [objc_opt_self() _systemImageNamed_];

      v34 = swift_allocObject();
      v35 = v59;
      v34[3] = v58;
      v34[4] = v35;
      v36 = v61;
      v34[5] = v60;
      v34[6] = v36;
      v37 = v57;
      v34[1] = v56;
      v34[2] = v37;
      sub_21D682B74(&v56, v53);
      v38 = sub_21DBFB77C();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_21DC09CF0;
      *(v39 + 32) = v38;
      v40 = v38;
      v41 = sub_21DBFB58C();
      MEMORY[0x223D42D80](v41, v42, v43, v44, v45);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    else
    {
      if (*(&v56 + 1) == 1 && (v57 & 1) != 0)
      {
        if (qword_280D1BAA8 != -1)
        {
          goto LABEL_44;
        }
      }

      else if (qword_280D1BAA8 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        sub_21DBF516C();
        sub_21D0D8CF0(0, &qword_280D0C1D0);
        v46 = swift_allocObject();
        v47 = v59;
        v46[3] = v58;
        v46[4] = v47;
        v48 = v61;
        v46[5] = v60;
        v46[6] = v48;
        v49 = v57;
        v46[1] = v56;
        v46[2] = v49;
        sub_21D682B74(&v56, v53);
        v40 = sub_21DBFB77C();
        if (!(v16 >> 62) || (sub_21DBFBD7C() & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

      sub_21DBD1730(0, 0, v40);
    }
  }

  if (v56)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
  }

  if (qword_27CE567C0 != -1)
  {
    swift_once();
  }

  v50 = qword_27CE5C4E8;
  v51 = sub_21DBFB58C();

  return v51;
}

uint64_t sub_21D67EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v7 = swift_allocObject();
  v8 = *(a3 + 48);
  *(v7 + 48) = *(a3 + 32);
  *(v7 + 64) = v8;
  v9 = *(a3 + 80);
  *(v7 + 80) = *(a3 + 64);
  *(v7 + 96) = v9;
  v10 = *(a3 + 16);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v10;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  sub_21D682B74(a3, &v12);

  v6(sub_21D683B68, v7);
}

uint64_t sub_21D67F040(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v29 = a3;
  v7 = sub_21DBF78CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v14 = sub_21DBFB12C();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = sub_21DBF9DAC();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = v8;
  v16 = *(a2 + 24);
  v32 = v16;
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_5:
    v21 = sub_21DBF784C();
    MEMORY[0x28223BE20](v21);
    *(&v24 - 2) = v10;
    *(&v24 - 1) = a2;
    v22 = sub_21D1742D4(sub_21D683B74, (&v24 - 4), a1);
    if (!(v22 >> 62))
    {
      sub_21DBF8E0C();
      sub_21DBFC65C();
      sub_21D0D8CF0(0, &qword_27CE5DE90);
      v23 = v22;
LABEL_7:

      v29(v23);

      return (*(v28 + 8))(v10, v7);
    }

LABEL_9:
    sub_21D0D8CF0(0, &qword_27CE5DE90);
    v23 = sub_21DBFC33C();
    goto LABEL_7;
  }

  v25 = a2;
  v26 = a1;
  v27 = a4;
  v18 = sub_21D9D6344(v17, 0);
  v19 = sub_21D9D5774(&v31, v18 + 4, v17, v16);
  sub_21D0D3954(&v32, v30, &qword_27CE5F808);
  result = sub_21D0CFAF8();
  if (v19 == v17)
  {
    a1 = v26;
    a2 = v25;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D67F3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = sub_21DBF781C();
  if (v8)
  {
    v9 = *(a2 + 24);
    if (*(v9 + 16))
    {
      v10 = sub_21D0CEF70(v7, v8);
      v12 = v11;

      if (v12)
      {
        v13 = *(*(v9 + 56) + 8 * v10);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_7:
  v20[0] = sub_21DBFA23C();
  v20[1] = v14;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v6, v5);

  if (v13)
  {
    if (*(a2 + 8) == v13)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  sub_21D0D8CF0(0, &qword_280D0C1D0);
  v15 = swift_allocObject();
  v16 = *(a2 + 48);
  *(v15 + 48) = *(a2 + 32);
  *(v15 + 64) = v16;
  v17 = *(a2 + 80);
  *(v15 + 80) = *(a2 + 64);
  *(v15 + 96) = v17;
  v18 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v18;
  *(v15 + 112) = v6;
  *(v15 + 120) = v5;
  *(v15 + 128) = v13;
  sub_21D682B74(a2, v20);
  sub_21DBF8E0C();
  result = sub_21DBFB77C();
  *a3 = result;
  return result;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.updateAssigneeCandidateAvatarImages.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21D67F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A300);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  *(v10 + 32) = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  v13 = *a3;
  v19 = vdupq_n_s64(0x4044000000000000uLL);
  v20 = v10;
  v21 = v11 & 1;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a3 + 16);
  *(v14 + 32) = *a3;
  *(v14 + 48) = v15;
  v16 = *(a3 + 48);
  *(v14 + 64) = *(a3 + 32);
  *(v14 + 80) = v16;
  *(v14 + 96) = a1;
  *(v14 + 104) = a2;
  sub_21DBF8E0C();
  sub_21D683D4C(a3, &v18);

  v12(v13, &v19, sub_21D683DCC, v14);
}

uint64_t sub_21D67F71C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void (*a5)(uint64_t))
{
  v5 = a5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_26;
  }

  v34 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  v11 = (a1 + 32);
  do
  {
    v22 = v11[4];
    v23 = v11[5];
    v24 = v11[2];
    v38 = v11[3];
    v39 = v22;
    v25 = v11[6];
    v40 = v23;
    v41 = v25;
    v26 = v11[1];
    v35 = *v11;
    v36 = v26;
    v37 = v24;
    if (*(a2 + 16))
    {
      v27 = v35;
      sub_21D1D9C94(&v35, v33);
      sub_21D17EB08(v27);
      if (v28)
      {
        if (v41)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_21D1D9C94(&v35, v33);
    }

    if (v41)
    {
LABEL_12:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      goto LABEL_5;
    }

LABEL_3:
    v42[2] = v38;
    v42[3] = v39;
    v42[4] = v40;
    v42[0] = v36;
    v42[1] = v37;
    if (*(&v37 + 1))
    {
      goto LABEL_4;
    }

    if (*(&v42[0] + 1))
    {
      sub_21DBF8E0C();
LABEL_4:
      sub_21DBF8E0C();
      goto LABEL_5;
    }

    v43 = v39;
    if (*(&v39 + 1))
    {
      v29 = &v43;
LABEL_21:
      sub_21D0D3954(v29, v33, &qword_27CE588A0);
      goto LABEL_5;
    }

    v44 = v40;
    if (*(&v40 + 1))
    {
      v29 = &v44;
      goto LABEL_21;
    }

    sub_21D1D9B34(v42, v33);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21D1D9B90(v42);
LABEL_5:
    v12 = *(&v41 + 1);
    v13 = swift_allocObject();
    v14 = a4[1];
    v13[1] = *a4;
    v13[2] = v14;
    v15 = a4[3];
    v13[3] = a4[2];
    v13[4] = v15;
    v16 = v38;
    v17 = v40;
    v18 = v41;
    v13[9] = v39;
    v13[10] = v17;
    v13[11] = v18;
    v19 = v36;
    v20 = v37;
    v13[5] = v35;
    v13[6] = v19;
    v13[7] = v20;
    v13[8] = v16;
    v21 = v12;
    sub_21D683D4C(a4, v33);
    sub_21DBFB77C();
    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
    v11 += 7;
    --v6;
  }

  while (v6);
  v7 = v34;
  v5 = a5;
LABEL_26:
  if (v7 >> 62)
  {
    sub_21D0D8CF0(0, &qword_27CE5DE90);
    sub_21DBF8E0C();
    v30 = sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_27CE5DE90);
    v30 = v7;
  }

  v5(v30);
}

uint64_t sub_21D67FBD4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[5];
  v12 = a3[4];
  v13 = v3;
  v14 = a3[6];
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  v5 = a3[3];
  v10 = a3[2];
  v11 = v5;
  v6 = *(a2 + 48);
  sub_21D1D9C94(a3, v15);
  v6(&v8);
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  return sub_21D1D9AE0(v15);
}

uint64_t TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration.init(flaggedState:shouldUseFilledIcon:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeFlagContextMenuAction(configuration:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  if (v1 == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v9 = 0x800000021DC665F0;
    sub_21DBF516C();
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v9 = 0x800000021DC665D0;
    sub_21DBF516C();
  }

  v5 = sub_21DBFA12C();

  v6 = [objc_opt_self() _systemImageNamed_];

  sub_21D0D8CF0(0, &qword_280D0C1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 17) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;

  return sub_21DBFB77C();
}

uint64_t TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration.handleScanText.getter()
{
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration.init(alreadySetPriorityLevels:handleSelection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makePriorityContextMenu(configuration:)(__int128 *a1)
{
  v42 = *a1;
  v1 = *(a1 + 2);
  v44[0] = 0;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v44[1] = sub_21DBF516C();
  v44[2] = v2;
  v44[3] = 1;
  v44[4] = sub_21DBF516C();
  v44[5] = v3;
  v44[6] = 2;
  v44[7] = sub_21DBF516C();
  v44[8] = v4;
  v44[9] = 3;
  v44[10] = sub_21DBF516C();
  v44[11] = v5;
  if (*(v42 + 16) <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v41 = v6;
  v43 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  v7 = sub_21D0D8CF0(0, &qword_280D0C1D0);
  v8 = 0;
  v9 = v42 + 56;
  do
  {
    v12 = v44[3 * v8];
    if (*(v42 + 16) && (sub_21DBFC7DC(), MEMORY[0x223D44FA0](v12), v13 = sub_21DBFC82C(), v14 = -1 << *(v42 + 32), v15 = v13 & ~v14, ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      while (*(*(v42 + 48) + 8 * v15) != v12)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v10 = v41;
    }

    else
    {
LABEL_7:
      v10 = 0;
    }

    ++v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v42;
    *(v11 + 32) = v1;
    *(v11 + 40) = v12;
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    v37 = 0;
    v39 = sub_21D682C28;
    v40 = v11;
    v38 = v10;
    sub_21DBFB77C();
    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v8 != 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F800);
  swift_arrayDestroy();
  v17 = v43 < 0 || (v43 & 0x4000000000000000) != 0;
  if (!v17)
  {
    v18 = *(v43 + 16);
    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

  result = sub_21DBFBD7C();
  if (result < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  v18 = result;
  result = sub_21DBFBD7C();
  if (result < 1)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  if (sub_21DBFBD7C() >= v18)
  {
LABEL_21:
    if ((v43 & 0xC000000000000001) != 0)
    {
      sub_21DBF8E0C();
      if (v18 != 1)
      {
        v19 = 1;
        do
        {
          v20 = v19 + 1;
          sub_21DBFBF6C();
          v19 = v20;
        }

        while (v18 != v20);
      }

      if (v17)
      {
LABEL_26:

        v22 = sub_21DBFC3BC();
        v24 = v23;
        v26 = v25;
        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_21DBF8E0C();
      if (v17)
      {
        goto LABEL_26;
      }
    }

    v21 = v43 + 32;
    v24 = 1;
    v26 = (2 * v18) | 1;
    v22 = v43;
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_31:
    v29 = v21;
    sub_21DBFC66C();
    swift_unknownObjectRetain_n();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      swift_unknownObjectRelease();
      v30 = MEMORY[0x277D84F90];
    }

    v31 = *(v30 + 16);

    if (__OFSUB__(v26 >> 1, v24))
    {
      goto LABEL_53;
    }

    if (v31 != (v26 >> 1) - v24)
    {
      goto LABEL_54;
    }

    i = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (i)
    {
      goto LABEL_38;
    }

    for (i = MEMORY[0x277D84F90]; ; i = v27)
    {
      swift_unknownObjectRelease();
LABEL_38:
      if (i < 0 || (i & 0x4000000000000000) != 0)
      {
        sub_21D0D8CF0(0, &qword_27CE5DE90);
        sub_21DBF8E0C();
        sub_21DBFC33C();
      }

      else
      {
        sub_21DBF8E0C();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_27CE5DE90);
      }

      v24 = sub_21D0D8CF0(0, &qword_280D0C1F0);
      v1 = sub_21DBFB58C();
      v22 = sub_21DBF516C();
      v26 = v32;
      v33 = sub_21DBFA12C();
      v29 = [objc_opt_self() _systemImageNamed_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21DC0AA00;
      if ((v43 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v43 + 16))
      {
        v34 = *(v43 + 32);
        goto LABEL_44;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_unknownObjectRelease();
      v21 = v29;
LABEL_30:
      sub_21D1989FC(v22, v21, v24, v26);
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v34 = MEMORY[0x223D44740](0, v43);
LABEL_44:
  v35 = v34;

  *(v7 + 32) = v35;
  *(v7 + 40) = v1;
  return sub_21DBFB58C();
}

uint64_t TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration.handleSelection.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration.init(numberOfTasksOutdented:numberOfTopLevelRemindersIndented:isForGroceries:handleSelection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeIndentOutdentContextMenuAction(configuration:)(__int128 *a1)
{
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  v13 = a1[2];
  v3 = BYTE9(v2);
  if (!(BYTE8(v11) & 1 | (v11 < 1)))
  {
    _s15RemindersUICore21TTRLocalizableStringsO0A4ListO07outdentA4Text9withCount14isForGroceriesSSSi_SbtFZ_0(v11, SBYTE9(v12));
    if (qword_27CE56838 != -1)
    {
      swift_once();
    }

    v4 = v12;
    v5 = qword_27CE5C560;
    v6 = 0;
    if ((BYTE8(v12) & 1) != 0 || v12 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((BYTE8(v12) & 1) == 0)
  {
    v4 = v12;
    if (v12 >= 1)
    {
      v5 = 0;
LABEL_9:

      _s15RemindersUICore21TTRLocalizableStringsO0A4ListO06indentA4Text9withCount14isForGroceriesSSSi_SbtFZ_0(v4, v3);
      if (qword_27CE56830 != -1)
      {
        swift_once();
      }

      qword_27CE5C558;

      v6 = 1;
LABEL_12:
      sub_21D0D8CF0(0, &qword_280D0C1D0);
      v7 = swift_allocObject();
      v8 = a1[1];
      *(v7 + 16) = *a1;
      *(v7 + 32) = v8;
      *(v7 + 48) = a1[2];
      *(v7 + 64) = v6;
      sub_21D682C84(&v11, v10);
      return sub_21DBFB77C();
    }
  }

  return 0;
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeDeleteContextMenuAction(shouldUseFilledIcon:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v5 = sub_21DBFA12C();

  v6 = [objc_opt_self() _systemImageNamed_];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeDetailsContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeCutContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makeCopyContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t static TTRIRemindersListContextualMenuAssembly.makePasteContextMenuAction(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return sub_21DBFB77C();
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO018makeDueDateContextF013configurationSo6UIMenuCAC0ijkF13ConfigurationV_tFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = sub_21DBFA12C();
  v8 = objc_opt_self();
  [v8 _systemImageNamed_];

  v9 = sub_21DBFA12C();
  v21 = [v8 _systemImageNamed_];

  if (v2)
  {
    LOBYTE(v22) = 0;
    if (v3)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }

    v20 = sub_21D67DC54(&v22, 0, v10 | v1 | 0x100u, v4, v5, v6);
    v11 = 256;
  }

  else
  {
    v11 = 0;
    v20 = 0;
    if (v3)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }
  }

  v23 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  LOBYTE(v22) = byte_282EA6388;
  v12 = v1 | v11;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  LOBYTE(v22) = byte_282EA6389;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  LOBYTE(v22) = byte_282EA638A;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  LOBYTE(v22) = byte_282EA638B;
  sub_21D67DC54(&v22, 0, v1 | v11 | v10, v4, v5, v6);
  sub_21DBFBFEC();
  sub_21DBFC03C();
  sub_21DBFC04C();
  sub_21DBFBFFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  LOBYTE(v22) = 5;
  *(inited + 32) = sub_21D67DC54(&v22, v21, v12 | v10, v4, v5, v6);
  sub_21D5621D8(inited);
  if (v23 >> 62)
  {
    sub_21D0D8CF0(0, &qword_27CE5DE90);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_27CE5DE90);
  }

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  v14 = sub_21DBFB58C();
  if (v1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59720);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DC08D20;
  *(v15 + 32) = v20;
  *(v15 + 40) = v14;
  v22 = v15;
  v16 = v20;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59728);
  sub_21D0D8CF0(0, &qword_27CE5DE90);
  sub_21D0D0F1C(&qword_27CE59730, &qword_27CE59728);
  sub_21DBFA41C();

  v18 = sub_21DBFB58C();

  return v18;
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO019makeLocationContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v36 = a1[2];
  v37 = a1[3];
  v3 = *(*a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21D0D8CF0(0, &qword_280D0C1D0);
    v5 = 32;
    v38 = v2;
    while (1)
    {
      v9 = *(v1 + v5);
      v40 = TTRLocationQuickPickItem.titleAndImageForMenuItem()();
      isa = v40.image.value.super.isa;
      if (v2 == 6)
      {
        break;
      }

      if (v9 == 6)
      {
        goto LABEL_12;
      }

      if (v2 > 2)
      {
        if (v2 == 3)
        {
          v16 = 0x49676E6974746567;
          v17 = 0xEC0000007261436ELL;
        }

        else
        {
          if (v2 == 4)
          {
            v16 = 0x4F676E6974746567;
          }

          else
          {
            v16 = 0x6D6F74737563;
          }

          if (v2 == 4)
          {
            v17 = 0xEF726143664F7475;
          }

          else
          {
            v17 = 0xE600000000000000;
          }
        }
      }

      else if (v2)
      {
        if (v2 == 1)
        {
          v16 = 1701670760;
        }

        else
        {
          v16 = 1802661751;
        }

        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE700000000000000;
        v16 = 0x746E6572727563;
      }

      v19 = 0x4F676E6974746567;
      if (v9 != 4)
      {
        v19 = 0x6D6F74737563;
      }

      v20 = 0xEF726143664F7475;
      if (v9 != 4)
      {
        v20 = 0xE600000000000000;
      }

      if (v9 == 3)
      {
        v19 = 0x49676E6974746567;
        v20 = 0xEC0000007261436ELL;
      }

      v21 = 1802661751;
      if (v9 == 1)
      {
        v21 = 1701670760;
      }

      v22 = 0xE400000000000000;
      if (!v9)
      {
        v21 = 0x746E6572727563;
        v22 = 0xE700000000000000;
      }

      if (v9 <= 2)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v9 <= 2)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v16 == v23 && v17 == v24)
      {
        v25 = isa;
        sub_21DBF8E0C();

        v12 = 1;
        LOBYTE(v2) = v38;
      }

      else
      {
        v26 = sub_21DBFC64C();
        v27 = isa;
        sub_21DBF8E0C();

        LOBYTE(v2) = v38;
        if ((v26 & 1) == 0)
        {
          goto LABEL_13;
        }

        v12 = 1;
      }

LABEL_14:
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      *(v14 + 24) = v2;
      *(v14 + 32) = v36;
      *(v14 + 40) = v37;
      *(v14 + 48) = v9;
      sub_21DBF8E0C();

      v35 = v14;
      v15 = sub_21DBFB77C();
      if (v9 > 4)
      {

LABEL_4:
        v6 = qword_27CE57490;
        v7 = v15;
        if (v6 != -1)
        {
          swift_once();
        }

        v8 = sub_21DBFA12C();
        [v7 setAccessibilityHint_];

        goto LABEL_7;
      }

      v18 = sub_21DBFC64C();

      if (v18)
      {
        goto LABEL_4;
      }

LABEL_7:

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      ++v5;
      --v3;
      v2 = v38;
      if (!v3)
      {
        v4 = v39;
        goto LABEL_55;
      }
    }

    if (v9 == 6)
    {
      v11 = v40.image.value.super.isa;
      sub_21DBF8E0C();
      v12 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v13 = v40.image.value.super.isa;
    sub_21DBF8E0C();
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_55:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D0D8CF0(0, &qword_280D0C1D0);
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  *(v28 + 24) = v2;
  *(v28 + 32) = v36;
  *(v28 + 40) = v37;
  sub_21DBF8E0C();

  v29 = sub_21DBFB77C();
  sub_21D0D8CF0(0, &qword_280D0C1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC09CF0;
  *(v30 + 32) = v29;
  v31 = v29;
  v32 = sub_21DBFB58C();
  if (v4 >> 62 && (result = sub_21DBFBD7C(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_21DBD1730(0, 0, v32);
    v33 = sub_21DBFB58C();

    return v33;
  }

  return result;
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO017makeAssignContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(__int128 *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = *a1;
  v38 = a1[1];
  v39 = v1;
  v40 = v2;
  v37 = v3;
  v4 = *(&v38 + 1);
  v5 = *(*(&v38 + 1) + 16);
  v36 = MEMORY[0x277D84F90];
  if (BYTE2(v38))
  {
    sub_21DBF8E0C();
    if (v5)
    {
      sub_21D17EB08(0);
    }

    sub_21D0D8CF0(0, &qword_280D0C1D0);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v7 = swift_allocObject();
    v8 = a1[1];
    v7[1] = *a1;
    v7[2] = v8;
    v9 = a1[3];
    v7[3] = a1[2];
    v7[4] = v9;
    sub_21D683D4C(&v37, v34);
    v10 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v10, v11, v12, v13, v14);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  else
  {
    sub_21DBF8E0C();
  }

  v15 = swift_allocObject();
  v16 = v38;
  v17 = v39;
  *(v15 + 16) = v37;
  *(v15 + 32) = v16;
  v18 = v40;
  *(v15 + 48) = v17;
  *(v15 + 64) = v18;
  *(v15 + 80) = v4;
  *(v15 + 88) = v5 > 1;
  aBlock[4] = sub_21D683D3C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D67DAF4;
  aBlock[3] = &block_descriptor_65_1;
  v19 = _Block_copy(aBlock);
  v20 = objc_opt_self();
  sub_21D683D4C(&v37, v34);
  v21 = [v20 elementWithProvider_];
  _Block_release(v19);

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC09CF0;
  *(v22 + 32) = v21;
  v23 = v21;
  v33 = v22;
  v24 = sub_21DBFB58C();
  MEMORY[0x223D42D80](v24, v25, v26, v27, v28);
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  if (BYTE1(v38))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v33 = 0x800000021DC666E0;
    sub_21DBF516C();
  }

  v29 = sub_21DBFA12C();
  v30 = [objc_opt_self() _systemImageNamed_];

  v31 = sub_21DBFB58C();
  return v31;
}

uint64_t _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO014makeAttachmentF013configurationSo6UIMenuCAC0iF13ConfigurationV_tFZ_0(__int128 *a1)
{
  v1 = a1[1];
  v33 = *a1;
  v34 = v1;
  v35 = *(a1 + 4);
  v32 = MEMORY[0x277D84F90];
  if (v33)
  {
    sub_21D0D8CF0(0, &qword_280D0C1D0);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    v5 = swift_allocObject();
    v6 = a1[1];
    *(v5 + 16) = *a1;
    *(v5 + 32) = v6;
    *(v5 + 48) = *(a1 + 4);
    sub_21D683C80(&v33, v31);
    v7 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v7, v8, v9, v10, v11);
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  v12 = _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0();
  v13 = 0;
  v14 = v12 + 56;
  do
  {
    if (!*(v12 + 16))
    {
      goto LABEL_12;
    }

    v25 = byte_282EA6EA0[v13 + 32];
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v25);
    v26 = sub_21DBFC82C();
    v27 = -1 << *(v12 + 32);
    v28 = v26 & ~v27;
    if (((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_12;
    }

    v29 = ~v27;
    while (*(*(v12 + 48) + v28) != v25)
    {
      v28 = (v28 + 1) & v29;
      if (((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (v25)
    {
      if (v25 != 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_9;
        }

LABEL_24:
        swift_once();
        goto LABEL_9;
      }

      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_24;
      }
    }

    else if (qword_280D1BAA8 != -1)
    {
      goto LABEL_24;
    }

LABEL_9:
    sub_21DBF516C();
    v15 = sub_21DBFA12C();
    v16 = [objc_opt_self() _systemImageNamed_];

    sub_21D0D8CF0(0, &qword_280D0C1D0);
    v17 = swift_allocObject();
    v18 = v34;
    *(v17 + 16) = v33;
    *(v17 + 32) = v18;
    *(v17 + 48) = v35;
    *(v17 + 56) = v25;
    sub_21D683C80(&v33, v31);
    v19 = v16;
    v20 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v20, v21, v22, v23, v24);
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

LABEL_12:
    ++v13;
  }

  while (v13 != 3);

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  return sub_21DBFB58C();
}

uint64_t sub_21D682C84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v3;
  v4 = a1[2];
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 25) = *(a1 + 25);
  v6 = a1[4];
  v5 = a1[5];
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;

  return a2;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);

  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;

  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.Separator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration()
{
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t sub_21D683598(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *v6;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.AttachmentMenuConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v6;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return a1;
}

uint64_t destroy for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration()
{
}

uint64_t sub_21D6838B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21DBF8E0C();

  return a1;
}

void *assignWithCopy for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t initializeWithCopy for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  v4 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListContextualMenuAssembly.IndentOutdentContextMenuActionConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t objectdestroy_49Tm(void (*a1)(void))
{

  a1(*(v1 + 120));

  return swift_deallocObject();
}

uint64_t sub_21D683C40(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 56);
  return v2(&v4, a1);
}

uint64_t objectdestroy_55Tm()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21D683D0C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_21D683D84()
{
  v1 = *(v0 + 64);
  memset(v3, 0, sizeof(v3));
  return v1(v3);
}

uint64_t sub_21D683DEC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 48);
  return v2(&v4, a1);
}

uint64_t objectdestroy_76Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D683E7C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = 6;
  return v2(&v4, a1);
}

unint64_t REMRemindersListDataView.SortingStyle.ChangeReason.rawValue.getter()
{
  v1 = 0x6E65746E49707061;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x724F6C61756E616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t REMRemindersListDataView.SortingStyle.ChangeReason.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21D683FD0()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D6840A8()
{
  sub_21DBFA27C();
}

uint64_t sub_21D68416C()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D68424C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E65746E49707061;
  v4 = 0xD000000000000017;
  v5 = 0x800000021DC43930;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001BLL;
    v5 = 0x800000021DC43950;
  }

  if (*v1)
  {
    v3 = 0x724F6C61756E616DLL;
    v2 = 0xEE00676E69726564;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_21D0FACE0(a1, &v18);
  if (v19)
  {
    sub_21D0D0FD0(&v18, v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = (*(v14 + 64))(v13, v14);
    sub_21DBFAF7C();

    (*(v7 + 104))(v9, *MEMORY[0x277D45420], v6);
    LOBYTE(v15) = MEMORY[0x223D3F870](v12, v9);
    v16 = *(v7 + 8);
    v16(v9, v6);
    if (v15)
    {
      v16(v12, v6);
      (*(v7 + 16))(a3, a2, v6);
    }

    else
    {
      (*(v7 + 32))(a3, v12, v6);
    }

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_21D45C980(&v18);
    return (*(v7 + 16))(a3, a2, v6);
  }
}

unint64_t sub_21D684504()
{
  result = qword_27CE5F810;
  if (!qword_27CE5F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F810);
  }

  return result;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.__allocating_init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v8 + v11, a2, v12);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v8;
}

double TTRShowScheduledSectionHeaderTitleFormatter.title(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(a1, *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), v8);
  v4 = v8[1];
  v5 = v10;
  v6 = v9;
  *a2 = v8[0];
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 64;
  *(a2 + 68) = 3;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 255;
  return result;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v4;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)@<X0>(void (*a1)(void, void, void)@<X0>, int a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a4;
  v190 = a3;
  LODWORD(v200) = a2;
  v201 = a1;
  v183 = sub_21DBF732C();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_21DBF731C();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v202 = v8;
  v203 = v9;
  MEMORY[0x28223BE20](v8);
  v176 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v193 = &v174 - v12;
  MEMORY[0x28223BE20](v13);
  v175 = &v174 - v14;
  MEMORY[0x28223BE20](v15);
  v184 = &v174 - v16;
  MEMORY[0x28223BE20](v17);
  v195 = &v174 - v18;
  MEMORY[0x28223BE20](v19);
  v191 = &v174 - v20;
  MEMORY[0x28223BE20](v21);
  v194 = &v174 - v22;
  v23 = sub_21DBF75BC();
  v198 = *(v23 - 8);
  v199 = v23;
  MEMORY[0x28223BE20](v23);
  v178 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v177 = &v174 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v174 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v174 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v174 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v36 - 8);
  v180 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v192 = &v174 - v39;
  MEMORY[0x28223BE20](v40);
  v179 = &v174 - v41;
  MEMORY[0x28223BE20](v42);
  v188 = &v174 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v174 - v45;
  MEMORY[0x28223BE20](v47);
  v196 = &v174 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v174 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v174 - v53;
  v55 = sub_21DBF75CC();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = (&v174 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v59, v201, v55, v57);
  v60 = (*(v56 + 88))(v59, v55);
  if (v60 == *MEMORY[0x277D455D0])
  {
    (*(v56 + 96))(v59, v55);
    v61 = *v59;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v62 = sub_21DBF516C();
    v201 = v63;
    v65 = v202;
    v64 = v203;
    if (*(v61 + 16))
    {
      v66 = v198;
      v67 = v199;
      (*(v198 + 16))(v35, v61 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v199);

      MEMORY[0x223D3FD50](v68);
      (*(v66 + 8))(v35, v67);
      v69 = 0;
      v70 = 0;
    }

    else
    {

      v70 = 2;
      v69 = 1;
    }

    (*(v64 + 56))(v54, v69, 1, v65);
    if (v200)
    {
      v93 = 2;
    }

    else
    {
      v93 = 3;
    }

    sub_21D46CAFC(v54, v51);
    if ((*(v64 + 48))(v51, 1, v65) == 1)
    {
      sub_21D46CB6C(v51);
      v94 = v201;
      *a5 = v62;
      *(a5 + 8) = v94;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = -64;
      v95 = 1;
    }

    else
    {
      v96 = v194;
      (*(v64 + 32))(v194, v51, v65);
      TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v96, 0, &v204);
      v200 = v204;
      v97 = v64;
      v98 = v205;
      v99 = v206;
      v100 = v207;
      (*(v97 + 8))(v96, v65);
      v95 = 0;
      v101 = v201;
      *a5 = v62;
      *(a5 + 8) = v101;
      *(a5 + 16) = v200;
      *(a5 + 32) = v98;
      *(a5 + 40) = v99;
      *(a5 + 48) = v100;
      *(a5 + 56) = 0;
      *(a5 + 64) = 0x80;
    }

    *(a5 + 66) = v70;
    *(a5 + 65) = 0;
    *(a5 + 67) = 0;
    *(a5 + 68) = v93;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = -1;
    *(a5 + 121) = v95;
    v102 = v54;
    return sub_21D46CB6C(v102);
  }

  if (v60 == *MEMORY[0x277D455B0])
  {
    (*(v56 + 96))(v59, v55);
    v71 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F818) + 48));
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v72 = sub_21DBF516C();
    v201 = v73;
    if (*(v71 + 16))
    {
      v75 = v198;
      v74 = v199;
      (*(v198 + 16))(v32, v71 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v199);

      v77 = v196;
      MEMORY[0x223D3FD50](v76);
      (*(v75 + 8))(v32, v74);
      v78 = 0;
      v79 = 0;
    }

    else
    {

      v79 = 2;
      v78 = 1;
      v77 = v196;
    }

    v120 = v202;
    v119 = v203;
    (*(v203 + 56))(v77, v78, 1, v202);
    if (v200)
    {
      v121 = 2;
    }

    else
    {
      v121 = 3;
    }

    sub_21D46CAFC(v77, v46);
    if ((*(v119 + 48))(v46, 1, v120) == 1)
    {
      sub_21D46CB6C(v46);
      v122 = v201;
      *a5 = v72;
      *(a5 + 8) = v122;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = -64;
      v123 = 1;
    }

    else
    {
      v124 = v191;
      (*(v119 + 32))(v191, v46, v120);
      TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v124, 0, &v204);
      v200 = v204;
      v125 = v205;
      v126 = v206;
      v127 = v207;
      v128 = v124;
      v77 = v196;
      (*(v203 + 8))(v128, v120);
      v123 = 0;
      v129 = v201;
      *a5 = v72;
      *(a5 + 8) = v129;
      *(a5 + 16) = v200;
      *(a5 + 32) = v125;
      *(a5 + 40) = v126;
      *(a5 + 48) = v127;
      *(a5 + 56) = 0;
      v119 = v203;
      *(a5 + 64) = 0x80;
    }

    *(a5 + 66) = v79;
    *(a5 + 65) = 0;
    *(a5 + 67) = 0;
    *(a5 + 68) = v121;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = -1;
    *(a5 + 121) = v123;
    sub_21D46CB6C(v77);
    return (*(v119 + 8))(v59, v120);
  }

  else
  {
    if (v60 != *MEMORY[0x277D455B8])
    {
      v104 = v198;
      v103 = v199;
      v105 = v195;
      if (v60 == *MEMORY[0x277D455C8])
      {
        (*(v56 + 96))(v59, v55);
        v106 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F818) + 48));
        v107 = v203;
        v108 = *(v203 + 32);
        v109 = v184;
        v110 = v59;
        v111 = v202;
        v108(v184, v110, v202);
        if (*(v106 + 16))
        {
          v112 = *(v104 + 16);
          v113 = v106 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
          v201 = v108;
          v114 = v177;
          v112(v177, v113, v103);

          v116 = v188;
          MEMORY[0x223D3FD50](v115);
          v117 = v114;
          v108 = v201;
          (*(v104 + 8))(v117, v103);
          v118 = 0;
        }

        else
        {

          v118 = 1;
          v116 = v188;
        }

        (*(v107 + 56))(v116, v118, 1, v111);
        v144 = v109;
        v197 = TTRDateBucketSectionHeaderTitleFormatterBase.monthHeaderTitleString(for:)(v109);
        v198 = v145;
        v146 = v116;
        v147 = *(v107 + 48);
        LODWORD(v199) = 2 * (v147(v146, 1, v111) == 1);
        if (v200)
        {
          v148 = 2;
        }

        else
        {
          v148 = 3;
        }

        LODWORD(v201) = v148;
        v149 = v146;
        v150 = v179;
        sub_21D46CAFC(v149, v179);
        if (v147(v150, 1, v111) == 1)
        {
          (*(v107 + 8))(v144, v111);
          sub_21D46CB6C(v150);
          v151 = v198;
          *a5 = v197;
          *(a5 + 8) = v151;
          *(a5 + 16) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *(a5 + 64) = -64;
          v152 = 1;
        }

        else
        {
          v153 = v150;
          v154 = v175;
          v108(v175, v153, v111);
          TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v154, 0, &v204);
          v200 = v204;
          v155 = v205;
          v156 = v206;
          v157 = v207;
          v158 = *(v107 + 8);
          v158(v154, v111);
          v158(v144, v111);
          v152 = 0;
          v159 = v198;
          *a5 = v197;
          *(a5 + 8) = v159;
          *(a5 + 16) = v200;
          *(a5 + 32) = v155;
          *(a5 + 40) = v156;
          *(a5 + 48) = v157;
          *(a5 + 56) = 0;
          *(a5 + 64) = 0x80;
        }

        *(a5 + 66) = v199;
        *(a5 + 65) = 0;
        *(a5 + 67) = 0;
        *(a5 + 68) = v201;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0;
        *(a5 + 112) = 0;
        *(a5 + 120) = -1;
        *(a5 + 121) = v152;
        v102 = v188;
      }

      else
      {
        v134 = v203;
        if (v60 != *MEMORY[0x277D455C0])
        {
          result = sub_21DBFC63C();
          __break(1u);
          return result;
        }

        (*(v56 + 96))(v59, v55);
        v135 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F818) + 48));
        v136 = v193;
        v137 = v59;
        v138 = v202;
        v196 = *(v134 + 32);
        (v196)(v193, v137, v202);
        (*(v134 + 16))(v105, v136, v138);
        (*(v182 + 104))(v181, *MEMORY[0x277D454D8], v183);
        v139 = v185;
        sub_21DBF730C();
        v140 = v192;
        if (*(v135 + 16))
        {
          v141 = v178;
          (*(v104 + 16))(v178, v135 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v103);

          MEMORY[0x223D3FD50](v142);
          (*(v104 + 8))(v141, v103);
          v143 = 0;
        }

        else
        {

          v143 = 1;
        }

        v160 = v180;
        (*(v134 + 56))(v140, v143, 1, v138);
        v161 = v139;
        v197 = TTRDateBucketSectionHeaderTitleFormatterBase.yearHeaderTitleString(for:)();
        v198 = v162;
        v163 = v140;
        v164 = *(v134 + 48);
        LODWORD(v199) = 2 * (v164(v163, 1, v138) == 1);
        if (v200)
        {
          v165 = 2;
        }

        else
        {
          v165 = 3;
        }

        LODWORD(v201) = v165;
        sub_21D46CAFC(v163, v160);
        if (v164(v160, 1, v138) == 1)
        {
          (*(v186 + 8))(v161, v187);
          (*(v134 + 8))(v193, v138);
          sub_21D46CB6C(v160);
          v166 = v198;
          *a5 = v197;
          *(a5 + 8) = v166;
          *(a5 + 16) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *(a5 + 64) = -64;
          v167 = 1;
        }

        else
        {
          v168 = v176;
          (v196)(v176, v160, v138);
          TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v168, 0, &v204);
          v200 = v204;
          v169 = v205;
          v170 = v206;
          v171 = v207;
          v172 = *(v134 + 8);
          v172(v168, v138);
          (*(v186 + 8))(v161, v187);
          v172(v193, v138);
          v167 = 0;
          v173 = v198;
          *a5 = v197;
          *(a5 + 8) = v173;
          *(a5 + 16) = v200;
          *(a5 + 32) = v169;
          *(a5 + 40) = v170;
          *(a5 + 48) = v171;
          *(a5 + 56) = 0;
          *(a5 + 64) = 0x80;
        }

        *(a5 + 66) = v199;
        *(a5 + 65) = 0;
        *(a5 + 67) = 0;
        *(a5 + 68) = v201;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0;
        *(a5 + 112) = 0;
        *(a5 + 120) = -1;
        *(a5 + 121) = v167;
        v102 = v192;
      }

      return sub_21D46CB6C(v102);
    }

    (*(v56 + 96))(v59, v55);
    v80 = v198;
    v81 = (*(v198 + 32))(v29, v59, v199);
    v82 = v195;
    MEMORY[0x223D3FD50](v81);
    TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v82, *(v197 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), &v204);
    v196 = v204;
    v193 = v205;
    v194 = *(&v204 + 1);
    v192 = v206;
    v201 = v207;
    v83 = v202;
    v84 = *(v203 + 8);
    v84(v82, v202);
    sub_21DBF75AC();
    LODWORD(v203) = v190();

    MEMORY[0x223D3FD50](v85);
    v86 = sub_21DBF589C();
    v87 = (v84)(v82, v83);
    if (v86)
    {
      result = (*(v80 + 8))(v29, v199);
      v89 = 0;
      v90 = 0;
      v91 = 0;
      if (v200)
      {
        v92 = 2;
      }

      else
      {
        v92 = 3;
      }
    }

    else
    {
      MEMORY[0x223D3FD50](v87);
      v130 = sub_21DBF590C();
      v84(v82, v83);
      result = (*(v80 + 8))(v29, v199);
      v90 = 1;
      if (v203)
      {
        v91 = 1;
      }

      else
      {
        v91 = 2;
      }

      v89 = v203 ^ 1;
      v92 = (v203 ^ 1) & 1;
      if (v130)
      {
        v92 = 3;
      }
    }

    v132 = v193;
    v131 = v194;
    *a5 = v196;
    *(a5 + 8) = v131;
    v133 = v192;
    *(a5 + 16) = v132;
    *(a5 + 24) = v133;
    *(a5 + 32) = v201;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 64;
    *(a5 + 66) = v91;
    *(a5 + 65) = v90;
    *(a5 + 67) = 0;
    *(a5 + 68) = v92;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 120) = -1;
    *(a5 + 121) = v89 & 1;
  }

  return result;
}

double TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a2;
  v17 = a1;
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3FD50](v7);
  TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v9, *(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), &v18);
  v15 = v18;
  v11 = v19;
  v10 = v20;
  v12 = v21;
  (*(v6 + 8))(v9, v5);
  sub_21DBF75AC();
  v13 = v17();

  *a3 = v15;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 65856;
  *(a3 + 68) = (v13 & 1) == 0;
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 255;
  return result;
}

uint64_t TTRShowScheduledSectionHeaderTitleFormatter.__deallocating_deinit()
{
  TTRDateBucketSectionHeaderTitleFormatterBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter()
{
  result = qword_280D0E688;
  if (!qword_280D0E688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s15RemindersUICore17TTRAttachmentInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_21DBF54CC();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for TTRAttachmentInfo();
  MEMORY[0x28223BE20](v8);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v43 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v43 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5F830);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v43 - v24;
  v27 = (&v43 + *(v26 + 56) - v24);
  sub_21D686BFC(a1, &v43 - v24);
  sub_21D686BFC(v46, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D686BFC(v25, v16);
      v37 = *v16;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21D686BFC(v25, v13);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v30 = v43;
          v29 = v44;
          v31 = v45;
          (*(v44 + 32))(v43, v27, v45);
          v32 = sub_21DBF544C();
          v33 = *(v29 + 8);
          v33(v30, v31);
          v34 = v13;
LABEL_15:
          v33(v34, v31);
          goto LABEL_20;
        }

        (*(v44 + 8))(v13, v45);
        goto LABEL_18;
      }

      sub_21D686BFC(v25, v10);
      v37 = *v10;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_12:

        goto LABEL_18;
      }
    }

    v38 = *v27;
    sub_21D1B2ABC();
    v32 = sub_21DBFB63C();

LABEL_20:
    sub_21D686858(v25);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D686BFC(v25, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v44;
      v31 = v45;
      (*(v44 + 32))(v7, v27, v45);
      v32 = sub_21DBF544C();
      v33 = *(v39 + 8);
      v33(v7, v31);
      v34 = v19;
      goto LABEL_15;
    }

    (*(v44 + 8))(v19, v45);
  }

  else
  {
    sub_21D686BFC(v25, v22);
    v35 = *v22;
    v36 = v22[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = *v27;
      v40 = v27[1];
      v32 = sub_21D89346C(v35, v36, v41, v40);
      sub_21D17B8A8(v41, v40);
      sub_21D17B8A8(v35, v36);
      goto LABEL_20;
    }

    sub_21D17B8A8(v35, v36);
  }

LABEL_18:
  sub_21D686C60(v25);
  v32 = 0;
  return v32 & 1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAttachmentInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_9:
        v12 = sub_21DBF54CC();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        goto LABEL_10;
      }

      v9 = *a2;
      v8 = a2[1];
      sub_21D1BAF70(v9, v8);
      *a1 = v9;
      a1[1] = v8;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_9;
      }

      v10 = *a2;
      *a1 = *a2;
      v11 = v10;
    }

LABEL_10:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = (v7 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRAttachmentInfo(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v3 = *a1;

      return;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        return;
      }

      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return;
    }

LABEL_10:
    v4 = sub_21DBF54CC();
    v5 = *(*(v4 - 8) + 8);

    v5(a1, v4);
    return;
  }

  v6 = *a1;
  v7 = *(a1 + 8);

  sub_21D17B8A8(v6, v7);
}

uint64_t *initializeWithCopy for TTRAttachmentInfo(uint64_t *a1, uint64_t *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_7:
      v9 = sub_21DBF54CC();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_8;
    }

    v6 = *a2;
    v5 = a2[1];
    sub_21D1BAF70(v6, v5);
    *a1 = v6;
    a1[1] = v5;
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_7;
    }

    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *assignWithCopy for TTRAttachmentInfo(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_21D686858(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_8:
        v9 = sub_21DBF54CC();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_9;
      }

      v6 = *a2;
      v5 = a2[1];
      sub_21D1BAF70(v6, v5);
      *a1 = v6;
      a1[1] = v5;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_8;
      }

      v7 = *a2;
      *a1 = *a2;
      v8 = v7;
    }

LABEL_9:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D686858(uint64_t a1)
{
  v2 = type metadata accessor for TTRAttachmentInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TTRAttachmentInfo()
{
  result = qword_27CE5F820;
  if (!qword_27CE5F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *initializeWithTake for TTRAttachmentInfo(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

void *assignWithTake for TTRAttachmentInfo(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D686858(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_21D686B58()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D686BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAttachmentInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D686C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5F830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static UIColor.transformOptionalValue(_:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = [objc_opt_self() magentaColor];
  }

  v3 = a1;
  return v2;
}

id sub_21D686D90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() magentaColor];
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

uint64_t TTRValueBasedMenuItem.SelectionState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D686EA0()
{
  sub_21DBFC7DC();
  TTRValueBasedMenuItem.SelectionState.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t TTRValueBasedMenuItem.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRValueBasedMenuItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *TTRValueBasedMenuItem.image.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRValueBasedMenuItem.init(title:image:state:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v10;
  v11 = type metadata accessor for TTRValueBasedMenuItem();
  v12 = *(*(a6 - 8) + 32);
  v13 = a7 + *(v11 + 44);

  return v12(v13, a5, a6);
}

uint64_t static TTRValueBasedMenuItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D5B4B18();
    v7 = v6;
    v8 = v5;
    v9 = sub_21DBFB63C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    type metadata accessor for TTRValueBasedMenuItem();
    return sub_21DBFA10C() & 1;
  }

  return 0;
}

uint64_t static TTRValueBasedMenuElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for TTRValueBasedMenuItem();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29[0] = v29 - v9;
  v29[1] = a3;
  v29[2] = a4;
  v10 = type metadata accessor for TTRValueBasedMenuElement();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v29 - v16;
  v19 = *(v18 + 48);
  v30 = v11;
  v20 = *(v11 + 16);
  v20(v29 - v16, v31, v10, v15);
  (v20)(&v17[v19], a2, v10);
  v31 = v8;
  v21 = *(v8 + 48);
  if (v21(v17, 1, v7) == 1)
  {
    v22 = 1;
    if (v21(&v17[v19], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v20)(v32, v17, v10);
    if (v21(&v17[v19], 1, v7) != 1)
    {
      v23 = v31;
      v24 = &v17[v19];
      v25 = v29[0];
      (*(v31 + 32))(v29[0], v24, v7);
      v26 = v32;
      v22 = static TTRValueBasedMenuItem.== infix(_:_:)(v32, v25);
      v27 = *(v23 + 8);
      v27(v25, v7);
      v27(v26, v7);
LABEL_8:
      v14 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, v7);
  }

  v22 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v22 & 1;
}

uint64_t TTRValueBasedMenu.selectedItem.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for TTRValueBasedMenuItem();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = type metadata accessor for TTRValueBasedMenuElement();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v23 - v12;
  v13 = *v1;
  sub_21DBF8E0C();
  if (sub_21DBFA6DC())
  {
    v23 = v9;
    v24 = v4;
    v25 = a1;
    v14 = 0;
    v30 = (v8 + 32);
    v31 = (v8 + 16);
    v15 = (v4 + 48);
    v26 = (v4 + 8);
    v27 = (v8 + 8);
    v28 = (v4 + 32);
    v16 = v29;
    while (1)
    {
      v17 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v17)
      {
        (*(v8 + 16))(v16, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v7);
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v23 != 8)
        {
          __break(1u);
          return result;
        }

        v32 = result;
        (*v31)(v16, &v32, v7);
        swift_unknownObjectRelease();
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          v22 = 1;
          v4 = v24;
          a1 = v25;
          return (*(v4 + 56))(a1, v22, 1, v3);
        }
      }

      (*v30)(v10, v16, v7);
      if ((*v15)(v10, 1, v3) == 1)
      {
        (*v27)(v10, v7);
      }

      else
      {
        v19 = v6;
        v20 = *v28;
        (*v28)(v19, v10, v3);
        if (!v19[24])
        {

          a1 = v25;
          v20(v25, v19, v3);
          v22 = 0;
          v4 = v24;
          return (*(v4 + 56))(a1, v22, 1, v3);
        }

        (*v26)(v19, v3);
        v6 = v19;
        v16 = v29;
      }

      ++v14;
      if (v18 == sub_21DBFA6DC())
      {
        goto LABEL_14;
      }
    }
  }

  v22 = 1;
  return (*(v4 + 56))(a1, v22, 1, v3);
}

uint64_t static TTRValueBasedMenu.== infix(_:_:)()
{
  type metadata accessor for TTRValueBasedMenuElement();
  swift_getWitnessTable();

  return sub_21DBFA75C();
}

uint64_t sub_21D687A3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D687AEC(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-26 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    v14 = v11 + v6 + 9;
    v15 = v12 + v6 + 9;
    v16 = *(v5 + 16);
    sub_21DBF8E0C();
    v17 = v13;
    v16(v14 & ~v6, v15 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_21D687C1C(uint64_t a1, uint64_t a2)
{

  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);

  return v6(v7);
}

void *sub_21D687CA0(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v8 = *(a3 + 16);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(*(v8 - 8) + 80);
  v11 = v10 + 9 + v5;
  v12 = v10 + 9 + v6;
  sub_21DBF8E0C();
  v13 = v7;
  v9(v11 & ~v10, v12 & ~v10, v8);
  return a1;
}

void *sub_21D687D54(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v6 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *v6;
  *v6 = *v7;
  v10 = v8;

  *(v6 + 8) = *(v7 + 8);
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((*(v11 + 80) + 9 + v6) & ~*(v11 + 80), (*(v11 + 80) + 9 + v7) & ~*(v11 + 80));
  return a1;
}

_OWORD *sub_21D687E20(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((*(v6 + 80) + 9 + v4) & ~*(v6 + 80), (*(v6 + 80) + 9 + v5) & ~*(v6 + 80));
  return a1;
}

void *sub_21D687EB0(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v7;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 9 + v7) & ~*(v10 + 80), (*(v10 + 80) + 9 + v8) & ~*(v10 + 80));
  return a1;
}

uint64_t sub_21D687F60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21D6880EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 25) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_21D68835C()
{
  result = type metadata accessor for TTRValueBasedMenuItem();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_21D6883D8(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 25) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ~v6;
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = a2[1];
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & v11, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    v16 = a2[1];
    *__dst = *a2;
    __dst[1] = v16;
    v17 = (__dst + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v20 = v18 + v6;
    v21 = v17 + v6 + 9;
    v22 = v20 + 9;
    v23 = *(v5 + 16);
    sub_21DBF8E0C();
    v24 = v19;
    v23(v21 & v11, v22 & v11, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

uint64_t sub_21D688590(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v11 = v4;
  if ((*(v4 + 84) & 0x80000000) != 0)
  {
    result = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & v6);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (v7 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

    v10 = *(v11 + 8);

    return v10((v9 + v5 + 9) & v6, v3);
  }

  return result;
}

void *sub_21D6886A0(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v14 = a2[1];
    *a1 = *a2;
    a1[1] = v14;
    v15 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    v18 = v15 + v5 + 9;
    v19 = v16 + v5 + 9;
    v20 = *(v4 + 16);
    v21 = a1;
    sub_21DBF8E0C();
    v22 = v17;
    v20(v18 & v7, v19 & v7, v3);
    return v21;
  }

  v10 = a1;
  v11 = a2;
  v12 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & v7, *(v4 + 84), v3);
  a2 = v11;
  v13 = v12;
  a1 = v10;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 25) & ~v5) + v6);
}

void *sub_21D688828(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = (v8 + 25) & ~v8;
  v30 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v15 = *(v6 + 48);
    v29 = v15((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8, v7, v5);
    v10 = (v8 + 25) & ~v8;
    v13 = v15((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8, v7, v5);
    if (!v29)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v13)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    a1[1] = a2[1];
    v17 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v20 = v17 + v8 + 9;
    v21 = v18 + v8 + 9;
    v22 = *(v6 + 16);
    sub_21DBF8E0C();
    v23 = v19;
    v22(v20 & v30, v21 & v30, v5);
    return a1;
  }

  v11 = a1[1];
  v12 = a2[1];
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  v13 = v12 + 1;
  if (v11 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v13)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    sub_21DBF8E0C();

    v24 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v27 = *v24;
    *v24 = *v25;
    v28 = v26;

    *(v24 + 8) = *(v25 + 8);
    (*(v6 + 24))((v24 + v8 + 9) & v30, (v25 + v8 + 9) & v30, v5);
    return a1;
  }

  v14 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v14 + v8 + 9) & v30, v5);
LABEL_9:

  return memcpy(a1, a2, v10 + v9);
}

_OWORD *sub_21D688AEC(_OWORD *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v14 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    v16 = v14 + v5 + 9;
    v17 = v15 + v5 + 9;
    v18 = a1;
    (*(v4 + 32))(v16 & v7, v17 & v7, v3);
    return v18;
  }

  v10 = a1;
  v11 = a2;
  v12 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & v7, *(v4 + 84), v3);
  a2 = v11;
  v13 = v12;
  a1 = v10;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 25) & ~v5) + v6);
}

void *sub_21D688C68(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = (v8 + 25) & ~v8;
  v25 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v16 = *(v6 + 48);
    v17 = v16((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & v9, v7, v5);
    v14 = v16((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & v9, v7, v5);
    v11 = (v8 + 25) & ~v8;
    if (!v17)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v14)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    v19 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    (*(v6 + 32))((v19 + v8 + 9) & v25, (v20 + v8 + 9) & v25, v5);
    return a1;
  }

  v12 = a1[1];
  v13 = a2[1];
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 + 1;
  if (v12 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v14)
  {
    v21 = a2[1];
    *a1 = *a2;
    a1[1] = v21;

    v22 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v22;
    *v22 = *v23;

    *(v22 + 8) = *(v23 + 8);
    (*(v6 + 40))((v22 + v8 + 9) & v25, (v23 + v8 + 9) & v25, v5);
    return a1;
  }

  v15 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v15 + v8 + 9) & v25, v5);
LABEL_9:

  return memcpy(a1, a2, v11 + v10);
}

uint64_t sub_21D688EF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      v17 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
    }

    else
    {
      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      v17 = v16 + 1;
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}

void sub_21D6890A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 25) & ~v10) + *(*(*(a4 + 16) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;
        v20 = a2 + 1;

        v18(v19, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *a1 = a2 - 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

uint64_t sub_21D689310(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if ((*(v2 + 84) & 0x80000000) != 0)
  {
    return (*(v2 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v2 + 80) + 9) & ~*(v2 + 80));
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

void sub_21D689384(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  if (v4 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v3 + 84);
  }

  v6 = *(v3 + 80);
  v7 = ~v6;
  if (v5 >= a2)
  {
    if (a2)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v13 = *(v3 + 56);
        v14 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & v7;

        v13(v14);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }
    }
  }

  else
  {
    v8 = ((v6 + 25) & v7) + *(v3 + 64);
    if (v8 <= 3)
    {
      v9 = ~(-1 << (8 * v8));
    }

    else
    {
      v9 = -1;
    }

    if (v8)
    {
      v10 = v9 & (~v5 + a2);
      if (v8 <= 3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 4;
      }

      bzero(a1, v8);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          *a1 = v10;
          a1[2] = BYTE2(v10);
        }

        else
        {
          *a1 = v10;
        }
      }

      else if (v11 == 1)
      {
        *a1 = v10;
      }

      else
      {
        *a1 = v10;
      }
    }
  }
}

uint64_t TTRTipTimeZoneOverride.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipTimeZoneOverride.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipTimeZoneOverride.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

unint64_t sub_21D689974()
{
  result = qword_27CE5F9D0;
  if (!qword_27CE5F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F9D0);
  }

  return result;
}

uint64_t sub_21D6899CC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D689AA4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D689B98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D689E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21D44DA88();
  result = MEMORY[0x223D41550](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *TTRReminderLocationOptionsProvider.__allocating_init(store:meCardProvider:geoService:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = sub_21D68C0AC(a1, v9, v12, v3, v7, v10, v8, v11);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

uint64_t TTRReminderLocationOptionsProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderLocationOptionsProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRReminderLocationOptionsProvider.homeLocation.getter()
{

  sub_21DBF909C();

  return v1;
}

uint64_t TTRReminderLocationOptionsProvider.workLocation.getter()
{

  sub_21DBF909C();

  return v2;
}

uint64_t TTRReminderLocationOptionsProvider.canUseVehicleEvent.getter()
{

  sub_21DBF909C();

  return v3;
}

uint64_t TTRReminderLocationOptionsProvider.locationOptionsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9D8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760);
  sub_21D0D0F1C(&unk_280D0C440, &qword_27CE5E760);
  sub_21DBF921C();

  sub_21D0D0F1C(&qword_280D0C650, &qword_27CE5F9D8);
  v5 = sub_21DBF920C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

_BYTE *sub_21D68A324@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result[17])
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = result[16];
    v5 = *result;
    v3 = *(result + 1);
    v6 = v3;
    result = v5;
  }

  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

void *TTRReminderLocationOptionsProvider.init(store:meCardProvider:geoService:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = *(a3 + 24);
  v16 = *(a3 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_21D68BF44(a1, v13, v20, v4, v9, v15, v8, v16);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v22;
}

uint64_t sub_21D68A53C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9E0);
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  MEMORY[0x28223BE20](v1);
  v31 = v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9E8);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v32 = v30 - v6;
  v7 = sub_21DBF63EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D32E4(v0 + 72, &v38);
  v11 = swift_allocObject();
  sub_21D0D0FD0(&v38, v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9F0);
  swift_allocObject();
  *&v38 = sub_21DBF911C();
  sub_21D0D0F1C(&qword_280D17950, &qword_27CE5F9F0);
  v12 = sub_21DBF920C();

  *&v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9F8);
  sub_21D0D0F1C(&qword_280D17970, &qword_27CE5F9F8);
  v13 = sub_21DBF92EC();

  *&v38 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA00);
  sub_21D0D0F1C(&qword_280D179E0, &qword_27CE5FA00);
  v14 = sub_21DBF920C();

  v15 = *(v8 + 104);
  v15(v10, *MEMORY[0x277D44FD8], v7);
  v16 = v30[1];
  v17 = sub_21D68AB74(v10, v14);
  v18 = *(v8 + 8);
  v18(v10, v7);
  v15(v10, *MEMORY[0x277D44FE0], v7);
  v19 = v16;
  v20 = sub_21D68AB74(v10, v14);
  v18(v10, v7);

  sub_21DBF909C();

  v21 = *(&v38 + 1);
  LOBYTE(v8) = v39;

  v37 = v20;
  *&v38 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA08);
  sub_21D0D0F1C(&qword_280D17978, &qword_27CE5FA08);
  v22 = v31;
  sub_21DBF8F8C();
  v23 = swift_allocObject();
  *(v23 + 16) = v8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21D68C2B8;
  *(v24 + 24) = v23;
  sub_21D0D0F1C(&qword_280D179E8, &qword_27CE5F9E0);
  v26 = v32;
  v25 = v33;
  sub_21DBF927C();

  (*(v34 + 8))(v22, v25);
  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D17A00, &qword_27CE5F9E8);
  v27 = v35;
  v28 = sub_21DBF93CC();

  (*(v36 + 8))(v26, v27);
  *(v19 + 120) = v28;
}

uint64_t sub_21D68AB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF63EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA10);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v19 = v18 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA18);
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = v18 - v8;
  v24 = a2;
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v18[1] = sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA28);
  sub_21D0D0F1C(&qword_280D17970, &qword_27CE5F9F8);
  sub_21D0D0F1C(&qword_280D17980, &qword_27CE5FA28);
  v13 = v19;
  sub_21DBF934C();

  v24 = 0;
  sub_21D0D0F1C(&qword_280D179C8, &qword_27CE5FA10);
  v14 = v21;
  sub_21DBF922C();
  (*(v23 + 8))(v13, v14);
  sub_21D0D0F1C(&qword_280D17A18, &qword_27CE5FA18);
  v15 = v20;
  v16 = sub_21DBF920C();
  (*(v22 + 8))(v9, v15);
  return v16;
}

void sub_21D68AF98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v2;

    v4 = v1;
    sub_21DBF908C();
  }
}

void sub_21D68B040(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21DBF633C();

  sub_21DBF631C();
  sub_21DBF6A6C();

  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D22D130;
  *(v7 + 24) = v6;

  v8 = sub_21DBF816C();
  sub_21DBF820C();

  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D22D130;
  *(v9 + 24) = v6;
  v10 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21D68B1D4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v39 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA30);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA38);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA48);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = *a1;
  v20 = sub_21DBFB9FC();
  if (*(v20 + 16) && (v21 = sub_21D17EDE0(a2), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v40 = sub_21D68B78C(v23, a2, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20);
      sub_21D0D0F1C(&qword_27CE5FA68, &qword_27CE5FA60);
      v24 = v35;
      sub_21DBF927C();

      sub_21D0D0F1C(&qword_27CE5FA70, &qword_27CE5FA30);
      v25 = v37;
      v26 = sub_21DBF920C();

      result = (*(v36 + 8))(v24, v25);
    }

    else
    {
      v28 = objc_opt_self();
      v29 = sub_21DBFA12C();
      v30 = [v28 internalErrorWithDebugDescription_];

      v40 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
      sub_21DBF90CC();
      sub_21D0D0F1C(&qword_27CE5FA58, &qword_27CE5FA38);
      v31 = v34;
      v26 = sub_21DBF920C();

      result = (*(v33 + 8))(v10, v31);
    }
  }

  else
  {

    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA20);
    sub_21DBF90EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    sub_21DBF90DC();
    (*(v12 + 8))(v14, v11);
    sub_21D0D0F1C(&qword_27CE5FA50, &qword_27CE5FA48);
    v26 = sub_21DBF920C();
    result = (*(v16 + 8))(v18, v15);
  }

  *v39 = v26;
  return result;
}

uint64_t sub_21D68B78C(void *a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v26 = a2;
  v5 = sub_21DBF63EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA78);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v11;
  v13 = v3[7];
  v12 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v13);
  v31 = a1;
  v32 = 0;
  v33 = 0;
  v14 = *(v12 + 56);
  v15 = a1;
  v16 = v14(&v31, v13, v12);
  sub_21D181CB8(v31, v32, v33);
  v31 = v16;
  (*(v6 + 16))(v8, v26, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v8, v5);
  v20 = v28;
  *(v19 + v18) = v28;
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA80);
  sub_21D68C488();
  sub_21D0D0F1C(&qword_27CE5FA88, &qword_27CE5FA80);
  v22 = v27;
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE5FA90, &qword_27CE5FA78);
  v23 = v29;
  v24 = sub_21DBF920C();
  (*(v30 + 8))(v22, v23);
  return v24;
}

id sub_21D68BAA0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_21D68BAAC@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ([*a1 location])
  {
    sub_21DBF63DC();
    if (v5)
    {
      v6 = sub_21DBFA12C();
    }

    else
    {
      v6 = 0;
    }

    v10 = [objc_opt_self() ttr:v6 localizedAddressTitleForLabel:a2 contact:?];

    sub_21DBFA16C();
    sub_21D68C488();
    result = sub_21DBFB3FC();
    *a3 = result;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = sub_21DBFA12C();
    [v7 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  return result;
}

uint64_t TTRReminderLocationOptionsProvider.deinit()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  return v0;
}

uint64_t TTRReminderLocationOptionsProvider.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_21D68BC90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9D8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760);
  sub_21D0D0F1C(&unk_280D0C440, &qword_27CE5E760);
  sub_21DBF921C();

  sub_21D0D0F1C(&qword_280D0C650, &qword_27CE5F9D8);
  v5 = sub_21DBF920C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_21D68BE4C()
{

  sub_21DBF909C();

  return v1;
}

uint64_t sub_21D68BE9C()
{

  sub_21DBF909C();

  return v2;
}

uint64_t sub_21D68BEEC()
{

  sub_21DBF909C();

  return v3;
}

void *sub_21D68BF44(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[3] = a5;
  v19[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a2, a5);
  v18[3] = a6;
  v18[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[15] = 0;
  sub_21D0D32E4(v18, (a4 + 4));
  sub_21D0D32E4(v19, (a4 + 9));
  [a1 everConnectedToCar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760);
  swift_allocObject();
  a4[14] = sub_21DBF90AC();
  sub_21D68A53C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return a4;
}

void *sub_21D68C0AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a2, a5);
  (*(v13 + 16))(v15, a3, a6);
  return sub_21D68BF44(a1, v20, v15, v21, a5, a6, v23, v24);
}

id sub_21D68C2B8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v4;
  v5 = a2;

  return a1;
}

uint64_t sub_21D68C334@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF63EC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D68B1D4(a1, v2 + v6, v7, a2);
}

unint64_t sub_21D68C488()
{
  result = qword_280D17760;
  if (!qword_280D17760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17760);
  }

  return result;
}

double TTRReminderTextChangeDetailCapturer.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

Swift::Void __swiftcall TTRReminderTextChangeDetailCapturer.capture(_:)(RemindersUICore::TTRReminderTextChangeDetail *a1)
{
  if (*(v1 + 16))
  {
    if (qword_27CE56B70 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE5FA98);
    oslog = sub_21DBF84AC();
    v3 = sub_21DBFAEAC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v3, "TTRReminderTextChangeDetailCapturer: ignoring new detail", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }
  }

  else
  {
    countAndFlagsBits = a1->replacementText.value._countAndFlagsBits;
    object = a1->replacementText.value._object;
    isa = a1->originalText.super.isa;
    *(v1 + 16) = a1->originalText.super.isa;
    *(v1 + 24) = a1->originalRangeReplaced;
    *(v1 + 40) = countAndFlagsBits;
    *(v1 + 48) = object;
    sub_21DBF8E0C();
    v8 = isa;

    sub_21D300F14(0);
  }
}

void __swiftcall TTRReminderTextChangeDetailCapturer.consume(editedText:textViewHasMarkedText:)(RemindersUICore::TTRReminderTextChangeDetail_optional *__return_ptr retstr, Swift::String editedText, Swift::Bool textViewHasMarkedText)
{
  v4 = v3;
  if (textViewHasMarkedText)
  {
    if (qword_27CE56B70 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5FA98);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "TTRReminderTextChangeDetailCapturer: disallow detail consumption because textViewHasMarkedText == true", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    retstr->value.replacementText.value._object = 0;
    *&retstr->value.originalText.super.isa = 0u;
    *&retstr->value.originalRangeReplaced.length = 0u;
  }

  else
  {
    object = editedText._object;
    countAndFlagsBits = editedText._countAndFlagsBits;
    v12 = v4[2];
    v13 = v4[3];
    v14 = v4[4];
    v15 = v4[5];
    v16 = v4[6];
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    v4[6] = 0;
    sub_21D300ED0(v12);
    sub_21D300F14(v12);
    v17[0] = v12;
    v17[1] = v13;
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = v16;
    sub_21D68C9B8(v17, countAndFlagsBits, object, retstr);

    sub_21D300F14(v12);
  }
}

uint64_t sub_21D68C8C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FA98);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FA98);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRReminderTextChangeDetailCapturer.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void __swiftcall TTRReminderTextChangeDetailCapturer.peek()(RemindersUICore::TTRReminderTextChangeDetail_optional *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  retstr->value.originalText.super.isa = v2;
  retstr->value.originalRangeReplaced.location = v3;
  retstr->value.originalRangeReplaced.length = v4;
  retstr->value.replacementText.value._countAndFlagsBits = v5;
  retstr->value.replacementText.value._object = v6;
  sub_21D300ED0(v2);
}

void sub_21D68C9B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (*a1)
  {
    v33 = a4;
    sub_21D300ED0(v4);
    sub_21DBF8E0C();
    v11 = [v4 string];
    v12 = sub_21DBFA16C();
    v14 = v13;

    v15 = sub_21D5E2268(a2, a3, v12, v14, v5, v6, v7, v8);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if (v21)
    {
      v22 = v4;
      sub_21D300F14(v4);
      v23 = qword_27CE56B70;
      sub_21DBF8E0C();
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_21DBF84BC();
      __swift_project_value_buffer(v24, qword_27CE5FA98);
      sub_21DBF8E0C();
      v25 = sub_21DBF84AC();
      v26 = sub_21DBFAEAC();

      if (os_log_type_enabled(v25, v26))
      {
        v32 = v17;
        v27 = v19;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 136315138;
        v34 = v29;
        sub_21DBFBEEC();

        v30 = sub_21DBFB9BC();
        MEMORY[0x223D42AA0](v30);

        MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC62EE0);
        MEMORY[0x223D42AA0](v27, v21);
        MEMORY[0x223D42AA0](32034, 0xE200000000000000);

        v31 = sub_21D0CDFB4(0xD000000000000018, 0x800000021DC62EC0, &v34);

        *(v28 + 4) = v31;
        _os_log_impl(&dword_21D0C9000, v25, v26, "TTRReminderTextChangeDetailCapturer: change detail needs adjustment {adjustment:%s}", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x223D46520](v29, -1, -1);
        MEMORY[0x223D46520](v28, -1, -1);

        v5 = v15;
        v6 = v32;
        v7 = v27;
      }

      else
      {

        v5 = v15;
        v6 = v17;
        v7 = v19;
      }

      v8 = v21;
    }

    a4 = v33;
  }

  *a4 = v4;
  a4[1] = v5;
  a4[2] = v6;
  a4[3] = v7;
  a4[4] = v8;
}

uint64_t TTRReminderTextChangeDetailCapturer.__deallocating_deinit()
{
  sub_21D300F14(*(v0 + 16));

  return swift_deallocClassInstance();
}

id static UIScreen.ttr_main.getter()
{
  v0 = [swift_getObjCClassFromMetadata() mainScreen];

  return v0;
}

double TTRIRemindersListReminderCell.viewModel.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v3, &v8, &unk_27CE5FAD0);
  *&v7[10] = *&v9[10];
  v6 = v8;
  *v7 = *v9;
  if (v9[25])
  {
    if (v9[25] == 1)
    {
      result = *&v8;
      v5 = *v9;
      *a1 = v8;
      *(a1 + 16) = v5;
      *(a1 + 32) = *&v9[16];
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    sub_21D0D0FD0(&v6, a1);
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell.titleModule.setter(uint64_t a1)
{
  v3 = &v1[qword_280D132A8];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5F240);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v4);
    (*(v4 + 48))(*&v7[qword_280D13278], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5F240);
}

uint64_t TTRIRemindersListReminderCell.viewModel.setter(uint64_t a1)
{
  sub_21D0D3954(a1, &v13, &unk_27CE5FAE0);
  if (v14)
  {
    sub_21D0D0FD0(&v13, aBlock);
    v3 = &v1[qword_280D13268];
    swift_beginAccess();
    sub_21D0CF7E0(v3, &unk_27CE5FAD0);
    sub_21D0D32E4(aBlock, v3);
    *(v3 + 40) = 1;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    goto LABEL_3;
  }

  sub_21D0CF7E0(&v13, &unk_27CE5FAE0);
  v10 = &v1[qword_280D13268];
  swift_beginAccess();
  sub_21D0D3954(v10, aBlock, &unk_27CE5FAD0);
  if (!BYTE1(v12))
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    goto LABEL_9;
  }

  if (BYTE1(v12) != 1)
  {
LABEL_9:
    swift_endAccess();
    return sub_21D0CF7E0(a1, &unk_27CE5FAE0);
  }

  sub_21D0CF7E0(v10, &unk_27CE5FAD0);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 25) = 0u;
  *(v10 + 41) = 2;
  sub_21D0CF7E0(aBlock, &unk_27CE5FAD0);
  swift_endAccess();
LABEL_3:
  v4 = *&v1[qword_280D13DD0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D696C3C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  v12 = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_73;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  [v4 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    sub_21D695350();

    return sub_21D0CF7E0(a1, &unk_27CE5FAE0);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.beginEditingTitle(withInput:)(RemindersUICore::TTREditingStateOption::InputType withInput)
{
  if (*withInput == 1)
  {
    [*(v1 + qword_280D13278) set:3 textInputSource:?];
  }

  v2 = *(v1 + qword_280D13278);
  v3 = [v2 window];
  [v3 makeKeyWindow];

  [v2 becomeFirstResponder];
  v4 = [v2 selectedTextRange];
  if (!v4)
  {
    v5 = [v2 endOfDocument];
    v6 = [v2 endOfDocument];
    v7 = [v2 textRangeFromPosition:v5 toPosition:v6];

    [v2 setSelectedTextRange_];
    v4 = v7;
  }
}

void *sub_21D68D3D0(unint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_27CE56B90 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5FD40);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "cachedView called outside of performSubviewUpdates", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

LABEL_6:
    v8 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
    swift_beginAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v9 = *(v2 + v8);
    if (*(v9 + 16) > a1)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }

  v10 = *(v9 + 32 * a1 + 32);
  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

NSAttributedString_optional __swiftcall NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(Swift::OpaquePointer placeholderToSymbolNames)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v51 - v5;
  if (*(placeholderToSymbolNames._rawValue + 2) && ([v1 mutableCopy], sub_21DBFBC1C(), swift_unknownObjectRelease(), sub_21D0D8CF0(0, &qword_27CE5FAF0), (swift_dynamicCast() & 1) != 0))
  {
    v52 = v6;
    v55 = v61;
    v57 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D769D0] scale:1];
    v7 = placeholderToSymbolNames._rawValue + 64;
    v8 = 1 << *(placeholderToSymbolNames._rawValue + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(placeholderToSymbolNames._rawValue + 8);
    v11 = (v8 + 63) >> 6;
    v12 = sub_21DBF8E0C();
    v14 = 0;
    v58 = v11;
    rawValue = placeholderToSymbolNames._rawValue;
    while (v10)
    {
      v15 = v14;
LABEL_13:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(placeholderToSymbolNames._rawValue + 7);
      v19 = (*(placeholderToSymbolNames._rawValue + 6) + 16 * v17);
      v20 = v19[1];
      v59 = *v19;
      v21 = v18 + 24 * v17;
      v22 = *(v21 + 8);
      v23 = *(v21 + 16);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v24 = v23;
      v25 = sub_21DBFA12C();
      v26 = [objc_opt_self() _systemImageNamed_];

      if (v26)
      {
        v60 = v22;
        v27 = [v26 imageWithSymbolConfiguration_];

        if (v27 && (v28 = [v27 imageWithTintColor_], v27, v29 = v20, v28))
        {
          v30 = v28;
          v31 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
          [v31 setImage_];
          v32 = objc_opt_self();
          v54 = v31;
          v53 = [v32 attributedStringWithAttachment_];
          v33 = [v55 string];
          v34 = sub_21DBFA16C();
          v36 = v35;

          v63 = v34;
          v64 = v36;
          v61 = v59;
          v62 = v29;
          v37 = sub_21DBF582C();
          v38 = v52;
          (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
          v59 = sub_21D176F0C();
          v39 = sub_21DBFBBAC();
          v51 = v40;
          v42 = v41;
          sub_21D0CF7E0(v38, &unk_27CE65010);

          if (v42)
          {
          }

          else
          {
            v63 = v39;
            v64 = v51;
            v43 = v55;
            v44 = [v55 string];
            v45 = sub_21DBFA16C();
            v47 = v46;

            v61 = v45;
            v62 = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00);
            sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00);
            v48 = sub_21DBFB9DC();
            v49 = v53;
            [v43 replaceCharactersInRange:v48 withAttributedString:{v50, v53}];
          }

          v14 = v15;
          placeholderToSymbolNames._rawValue = rawValue;
          v11 = v58;
        }

        else
        {

          v14 = v15;
          placeholderToSymbolNames._rawValue = rawValue;
          v11 = v58;
        }
      }

      else
      {

        v14 = v15;
        v11 = v58;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        v12 = v55;
        goto LABEL_23;
      }

      v10 = *&v7[8 * v15];
      ++v14;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v1;
  }

LABEL_23:
  result.value.super.isa = v12;
  result.is_nil = v13;
  return result;
}

uint64_t sub_21D68DAB0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FAB0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FAB0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIRemindersListReminderCellViewModel.style.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D15938 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_280D15940);
  v3 = byte_280D15942;
  v5 = qword_280D15948;
  v4 = qword_280D15950;
  v6 = word_280D15958;
  v7 = HIBYTE(word_280D15958);
  *a1 = word_280D15940;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

id TTRIRemindersListReminderCellGrid.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListReminderCellGrid.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  v10 = type metadata accessor for TTRIRemindersListReminderCellGrid();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRIRemindersListReminderCellGrid.__allocating_init(arrangedSubviewRows:)(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviewRows_];

  return v3;
}

id TTRIRemindersListReminderCellGrid.init(arrangedSubviewRows:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  *v2 = 0;
  *(v2 + 1) = 0;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  v4 = objc_msgSendSuper2(&v6, sel_initWithArrangedSubviewRows_, v3);

  return v4;
}

id TTRIRemindersListReminderCellGrid.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  v4 = type metadata accessor for TTRIRemindersListReminderCellGrid();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id TTRIRemindersListReminderCellGrid.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*TTRIRemindersListReminderCell.delegate.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = qword_280D131E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6A4448;
}

void (*TTRIRemindersListReminderCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = v1;
  v5 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v5, v4, &unk_27CE5FAD0);
  *(v4 + 74) = *(v4 + 26);
  v6 = *(v4 + 16);
  *(v4 + 48) = *v4;
  *(v4 + 64) = v6;
  if (*(v4 + 89))
  {
    if (*(v4 + 89) == 1)
    {
      v7 = *(v4 + 16);
      *(v4 + 96) = *v4;
      *(v4 + 112) = v7;
      *(v4 + 128) = *(v4 + 32);
    }

    else
    {
      *(v4 + 128) = 0;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
    }
  }

  else
  {
    sub_21D0D0FD0((v4 + 48), v4 + 96);
  }

  return sub_21D68E2FC;
}

void sub_21D68E2FC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21D0D3954(v2 + 96, v2, &unk_27CE5FAE0);
    TTRIRemindersListReminderCell.viewModel.setter(v2);
    sub_21D0CF7E0(v2 + 96, &unk_27CE5FAE0);
  }

  else
  {
    TTRIRemindersListReminderCell.viewModel.setter(v2 + 96);
  }

  free(v2);
}

uint64_t TTRIRemindersListReminderCell.treeCellViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280D132B8;
  swift_beginAccess();
  return sub_21D0D3954(v1 + v3, a1, &unk_27CE5FB20);
}

void (*TTRIRemindersListReminderCell.treeCellViewDelegate.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = qword_280D132C8[0];
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1E55F4;
}

uint64_t TTRIRemindersListReminderCell.setTreeCellViewModel(_:animator:)(uint64_t a1)
{
  v3 = qword_280D132B8;
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v3, &unk_27CE5FB20);
  swift_endAccess();
  return sub_21D68E520(1);
}

uint64_t sub_21D68E520(char a1)
{
  [*&v1[qword_280D13260] effectiveLayoutSizeFittingSize_];
  v4 = v3 + 12.0;
  [v1 directionalLayoutMargins];
  v6 = v4 + v5;
  v7 = qword_280D132B8;
  swift_beginAccess();
  sub_21D0D3954(&v1[v7], &v41, &unk_27CE5FB20);
  if (*&v42[24])
  {
    v44[0] = v41;
    v44[1] = *v42;
    v44[2] = *&v42[16];
    v45 = v43;
    v8 = v41;
    v9 = qword_280D13268;
    swift_beginAccess();
    sub_21D0D3954(&v1[v9], &v41, &unk_27CE5FAD0);
    *&v37[10] = *&v42[10];
    v36 = v41;
    *v37 = *v42;
    if (v42[25])
    {
      if (v42[25] == 1)
      {
        v38 = v41;
        v39 = *v42;
        v40 = *&v42[16];
        v10 = *&v42[8];
        if (!*&v42[8])
        {
          goto LABEL_20;
        }

LABEL_9:
        v13 = v40;
        v14 = __swift_project_boxed_opaque_existential_1(&v38, v10);
        v15 = *(v10 - 8);
        v16 = MEMORY[0x28223BE20](v14);
        v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
        (*(v15 + 16))(v18, v16);
        sub_21D0CF7E0(&v38, &unk_27CE5FAE0);
        (*(v13 + 328))(&v41, v10, v13);
        (*(v15 + 8))(v18, v10);
        v19 = v8 - v41;
        if (__OFSUB__(v8, v41))
        {
          __break(1u);
          goto LABEL_22;
        }

LABEL_10:
        if (v19 >= 1)
        {
          if (a1)
          {
            v20 = qword_280D13250;
            swift_beginAccess();
            if (!*&v1[v20])
            {
              v21 = objc_allocWithZone(MEMORY[0x277D75D18]);
              v22 = [v21 init];
              LODWORD(v23) = 1148846080;
              [v22 setLayoutSize:1.0 withContentPriority:{1.0, v23}];
              v24 = *&v1[qword_280D13DD0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_21DC09CF0;
              *(v25 + 32) = v22;
              sub_21D0D8CF0(0, &qword_280D176A0);
              v26 = v22;
              v27 = sub_21DBFA5DC();

              v28 = [v24 insertColumnAtIndex:0 withArrangedSubviews:v27];

              *&v1[v20] = v28;
              swift_unknownObjectRelease();
            }
          }

          v29 = qword_280D13250;
          swift_beginAccess();
          v30 = *&v1[v29];
          if (v30)
          {
            [swift_unknownObjectRetain() setLength_];
            [v30 setHidden_];
            swift_unknownObjectRelease();
            sub_21D6A4324(v44);
            v6 = v4 + v6;
            goto LABEL_23;
          }

LABEL_18:
          sub_21D6A4324(v44);
          goto LABEL_23;
        }

        v31 = qword_280D13250;
        swift_beginAccess();
        v32 = *&v1[v31];
        if (v32)
        {
          swift_endAccess();
          [v32 setHidden_];
          goto LABEL_18;
        }

LABEL_22:
        sub_21D6A4324(v44);
        swift_endAccess();
        goto LABEL_23;
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
    }

    else
    {
      sub_21D0D0FD0(&v36, &v38);
      v10 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        goto LABEL_9;
      }
    }

LABEL_20:
    sub_21D0CF7E0(&v38, &unk_27CE5FAE0);
    v19 = v8;
    goto LABEL_10;
  }

  sub_21D0CF7E0(&v41, &unk_27CE5FB20);
  v11 = qword_280D13250;
  swift_beginAccess();
  v12 = *&v1[v11];
  if (v12)
  {
    [v12 setHidden_];
  }

LABEL_23:
  v33 = *&v1[qword_280D13228];
  *&v1[qword_280D13228] = v6;
  if (v6 != v33)
  {
    v34 = qword_280D131F8;
    swift_beginAccess();
    if (v1[v34] != 1 && (v1[qword_280D131F0] & 1) == 0)
    {
      [v1 setSeparatorInset_];
    }
  }

  return sub_21D6961EC();
}

void (*TTRIRemindersListReminderCell.titleModule.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = qword_280D132A8;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D68EB28;
}

void sub_21D68EB28(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    if (*v5)
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();
      v9 = v4;
      v8(v4, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v6);
      (*(v6 + 48))(*&v9[qword_280D13278], ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_21D68EC28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_21D0D3954(v3 + v6, a3, a2);
}

uint64_t TTRIRemindersListReminderCell.notesModule.setter(uint64_t a1)
{
  v3 = &v1[qword_280D132B0];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE62920);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE62920);
}

void (*TTRIRemindersListReminderCell.notesModule.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = qword_280D132B0;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D68EE10;
}

void sub_21D68EE10(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    if (*v5)
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v9 = v4;
      v8(v4, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t TTRIRemindersListReminderCell.hashtagModule.setter(uint64_t a1)
{
  v3 = &v1[qword_280D13290];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5EB40);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 144);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5EB40);
}

void (*TTRIRemindersListReminderCell.hashtagModule.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = qword_280D13290;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D68F060;
}

void sub_21D68F060(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    if (*v5)
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 144);
      swift_unknownObjectRetain();
      v9 = v4;
      v8(v4, &protocol witness table for TTRIRemindersListReminderCell, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id TTRIRemindersListReminderCell.attributedTitle.getter()
{
  v1 = [*(v0 + qword_280D13278) attributedText];

  return v1;
}

id TTRIRemindersListReminderCell.isSwiped.getter()
{
  if ([v0 isEditing] && (objc_msgSend(v0, sel_currentStateMask) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [v0 isEditing];
  }
}

uint64_t TTRIRemindersListReminderCell.isViewModelValid.getter()
{
  v1 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v0 + v1, &v5, &unk_27CE5FAD0);
  *&v4[10] = *&v6[10];
  v3 = v5;
  *v4 = *v6;
  if (v6[25])
  {
    if (v6[25] == 1)
    {
      sub_21D0CF7E0(&v3, &unk_27CE5FAD0);
    }

    return 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v3);
    return 1;
  }
}

uint64_t TTRIRemindersListReminderCell.viewForAnchoringPopover.getter()
{
  v1 = *(v0 + qword_280D13248);
  v2 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v4 = v1;

  sub_21D442E44(2u, v3, v4);

  v5 = *&v1[v2];
  result = swift_beginAccess();
  v7 = *(v5 + 40);
  if (*(v7 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D3954(v7 + 160, v10, &unk_27CE5F120);
    v8 = v10[0];
    if (v10[0])
    {
      v9 = v10[0];
    }

    sub_21D0CF7E0(v10, &unk_27CE5F120);
    return v8;
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.getter()
{
  v1 = qword_280D131F8;
  swift_beginAccess();
  return *(v0 + v1);
}

id TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.setter(char a1)
{
  v3 = qword_280D131F8;
  swift_beginAccess();
  v1[v3] = a1;
  if ((a1 & 1) != 0 || v1[qword_280D131F0] == 1)
  {
    return [v1 setSeparatorInset_];
  }

  else
  {
    return [v1 setSeparatorInset_];
  }
}

void (*TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = qword_280D131F8;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D68F4EC;
}

void sub_21D68F4EC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (v4[v3[4]] & 1) != 0 || (v4[qword_280D131F0])
    {
      v5 = 999999.0;
    }

    else
    {
      v5 = *&v4[qword_280D13228];
    }

    [v4 setSeparatorInset_];
  }

  free(v3);
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.createAndStartEditingNewHashtag()()
{
  v1 = v0;
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v2, &v9, &unk_27CE5FAD0);
  *&v8[10] = *&v10[10];
  v7 = v9;
  *v8 = *v10;
  if (!v10[25])
  {
    sub_21D0D0FD0(&v7, &v11);
    if (*(&v12 + 1))
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_21D0CF7E0(&v11, &unk_27CE5FAE0);
    return;
  }

  if (v10[25] != 1)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_10;
  }

  v11 = v9;
  v12 = *v10;
  v13 = *&v10[16];
  if (!*&v10[8])
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_21D0D0FD0(&v11, &v9);
  v3 = *&v10[8];
  v4 = *&v10[16];
  __swift_project_boxed_opaque_existential_1(&v9, *&v10[8]);
  (*(v4 + 272))(&v7, v3, v4);
  LODWORD(v3) = v7;

  if (v3 == 1)
  {
    MEMORY[0x28223BE20](v5);
    v6[2] = v1;
    v6[3] = &v9;
    sub_21D6A444C(sub_21D6A2B70, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(&v9);
}

uint64_t sub_21D68F74C(uint64_t a1, unint64_t a2)
{
  sub_21D68F7F8(a2, 1, 1);
  v3 = (a1 + qword_280D13290);
  result = swift_beginAccess();
  if (*v3)
  {
    v5 = v3[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 168);
    swift_unknownObjectRetain();
    v7(ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D68F7F8(unint64_t a1, int a2, int a3)
{
  v385 = a3;
  v369 = a2;
  v402 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v365 = *(v402 - 8);
  MEMORY[0x28223BE20](v402);
  v401 = (&v363 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v374 = sub_21DBF54CC();
  v383 = *(v374 - 8);
  MEMORY[0x28223BE20](v374 - 8);
  v373 = &v363 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v367);
  v368 = &v363 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v364 = &v363 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v363 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v363 - v14;
  v382 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v371 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v372 = &v363 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v388 = (&v363 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v363 - v20);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(v23 + 64))(v22, v23);
  v24 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v25 = (*(*(v24 - 8) + 48))(v21, 1, v24);
  v370 = v12;
  if (v25 == 1)
  {
    sub_21D0CF7E0(v21, &unk_27CE5F2B0);
    v380 = 0;
    v391 = 0;
  }

  else
  {
    v26 = v21[1];
    v380 = *v21;
    v391 = v26;
    sub_21DBF8E0C();
    sub_21D6A429C(v21, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v27);
  *&v392 = (*(v28 + 88))(v27, v28);
  v30 = v29;
  v31 = *(a1 + 24);
  v32 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v381 = (*(v32 + 80))(v31, v32);
  v390 = v33;
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v34);
  (*(v35 + 232))(&v438, v34, v35);
  v37 = *(&v438 + 1);
  v36 = v438;
  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v38);
  (*(v39 + 232))(&v438, v38, v39);
  v398 = v3;
  if (!*(&v438 + 1))
  {
    goto LABEL_9;
  }

  v40 = v439;
  if (!v37)
  {
    v36 = 0;
  }

  if (v40)
  {
    v394 = v37;
  }

  else
  {
LABEL_9:

    v36 = 0;
    v394 = 0;
  }

  v41 = *(a1 + 24);
  v42 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v41);
  (*(v42 + 176))(&v438, v41, v42);
  v43 = &unk_21DC08000;
  v379 = v36;
  if (v438 == 2 || (v438 & 1) != 0 || (v44 = *(a1 + 24), v45 = *(a1 + 32), __swift_project_boxed_opaque_existential_1(a1, v44), v46 = (*(v45 + 160))(v44, v45), (v47 & 1) != 0))
  {
    v377 = 0;
    v387 = 0;
    if (v30)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v50 = v46;
  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_300;
  }

  while (1)
  {
    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D83B88];
    *(v51 + 16) = *(v43 + 208);
    v53 = MEMORY[0x277D83C10];
    *(v51 + 56) = v52;
    *(v51 + 64) = v53;
    *(v51 + 32) = v50;
    v377 = sub_21DBFA13C();
    v387 = v54;

    if (v30)
    {
LABEL_14:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v48 = swift_allocObject();
      *(v48 + 16) = *(v43 + 208);
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = sub_21D17A884();
      *(v48 + 32) = v392;
      *(v48 + 40) = v30;
      sub_21DBFA17C();

      SpaceToNon = String.replaceFirstSpaceToNonBreaking()();
      *&v392 = SpaceToNon.value._countAndFlagsBits;
      object = SpaceToNon.value._object;
    }

    else
    {
LABEL_19:
      object = 0;
    }

    v55 = *(a1 + 24);
    v56 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(a1, v55);
    (*(v56 + 264))(&v421, v55, v56);
    v436[12] = v433;
    v436[13] = v434;
    v436[8] = v429;
    v436[9] = v430;
    v436[11] = v432;
    v436[10] = v431;
    v436[4] = v425;
    v436[5] = v426;
    v436[7] = v428;
    v436[6] = v427;
    v436[0] = v421;
    v436[1] = v422;
    v436[3] = v424;
    v436[2] = v423;
    v450 = v433;
    v451 = v434;
    v446 = v429;
    v447 = v430;
    v449 = v432;
    v448 = v431;
    v442 = v425;
    v443 = v426;
    v445 = v428;
    v444 = v427;
    v438 = v421;
    v439 = v422;
    v437 = v435;
    v452 = v435;
    v441 = v424;
    v440 = v423;
    v57 = sub_21D4B9498(&v438);
    v366 = v15;
    if (v57 == 1)
    {
      goto LABEL_24;
    }

    if ((v452 & 2) == 0 || (v416 = v448, v417 = v449, v418 = v450, v419 = v451, v412 = v444, v413 = v445, v414 = v446, v415 = v447, v411[2] = v440, v411[3] = v441, v411[4] = v442, v411[5] = v443, v411[0] = v438, v411[1] = v439, sub_21D157494(v411) == 1))
    {
      sub_21D0CF7E0(v436, &unk_27CE5FB50);
LABEL_24:
      v378 = 0;
      v397 = 0;
      goto LABEL_25;
    }

    v410[3] = v417;
    v410[4] = v418;
    v410[5] = v419;
    v409 = v413;
    v410[0] = v414;
    v410[1] = v415;
    v410[2] = v416;
    v115 = v413;
    if (v413)
    {
      v405 = v416;
      v406 = v417;
      v407 = v418;
      v403 = v414;
      v404 = v415;
      sub_21D1D9B34(v410, v408);
      v116 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
      countAndFlagsBits = v116._countAndFlagsBits;
      v118 = v116._object;
      v408[2] = v405;
      v408[3] = v406;
      v408[4] = v407;
      v408[0] = v403;
      v408[1] = v404;
      sub_21D1D9B90(v408);
      v115 = v419;
    }

    else
    {
      countAndFlagsBits = 0;
      v118 = 0;
    }

    v378 = sub_21DACF058(v412, v115 & 1, countAndFlagsBits, v118);
    v397 = v119;

    sub_21D0CF7E0(v436, &unk_27CE5FB50);
LABEL_25:
    v58 = *(a1 + 24);
    v59 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(a1, v58);
    v60 = (*(v59 + 72))(v58, v59);
    v61 = objc_opt_self();
    v62 = &selRef_ttr_systemRedColor;
    if ((v60 & 1) == 0)
    {
      v62 = &selRef_secondaryLabelColor;
    }

    v400 = [v61 *v62];
    if (UIAccessibilityIsBoldTextEnabled())
    {
      v63 = 9;
    }

    else
    {
      v63 = 6;
    }

    v64 = a1;
    if (qword_280D176B8 != -1)
    {
      v120 = v63;
      swift_once();
      v63 = v120;
    }

    v65 = sub_21D900614(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_21DC08D20;
    v67 = *MEMORY[0x277D740C0];
    *(v66 + 32) = *MEMORY[0x277D740C0];
    v68 = objc_opt_self();
    v69 = v67;
    v386 = v68;
    v70 = [v68 secondaryLabelColor];
    v71 = sub_21D0D8CF0(0, &qword_280D1B8F0);
    *(v66 + 40) = v70;
    v72 = *MEMORY[0x277D740A8];
    *(v66 + 64) = v71;
    *(v66 + 72) = v72;
    *(v66 + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
    *(v66 + 80) = v65;
    v73 = v72;
    v384 = v65;
    v74 = sub_21D11274C(v66);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v75 = swift_allocObject();
    v389 = xmmword_21DC08D00;
    *(v75 + 16) = xmmword_21DC08D00;
    v375 = v71;
    v376 = v69;
    *(v75 + 32) = v69;
    *(v75 + 64) = v71;
    v76 = v400;
    *(v75 + 40) = v400;
    v395 = v76;
    sub_21D11274C(v75);
    swift_setDeallocating();
    sub_21D0CF7E0(v75 + 32, &unk_27CE5F2C0);
    swift_deallocClassInstance();
    type metadata accessor for Key(0);
    v78 = v77;
    v79 = sub_21D6A417C(&qword_280D17790, type metadata accessor for Key);
    *(&v396 + 1) = v74;
    v400 = v79;
    v80 = sub_21DBF9ECC();

    v81 = v64[3];
    v82 = v64[4];
    v399 = v64;
    __swift_project_boxed_opaque_existential_1(v64, v81);
    v83 = (*(v82 + 72))(v81, v82);
    v84 = 0;
    v85 = 0;
    if (v83)
    {
      ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
      v85 = 0x800000021DC64260;
      v84 = ShouldDifferentiateWithoutColor ? 0xD000000000000026 : 0;
      if (!ShouldDifferentiateWithoutColor)
      {
        v85 = 0;
      }
    }

    *&v396 = v85;
    v50 = MEMORY[0x277D84F90];
    *&v411[0] = MEMORY[0x277D84F90];
    v88 = v390;
    v87 = v391;
    if (v394)
    {
      v89 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v90 = sub_21DBFA12C();
      v91 = sub_21DBF9E5C();
      v92 = [v89 initWithString:v90 attributes:v91];

      swift_beginAccess();
      v93 = v92;
      MEMORY[0x223D42D80]();
      if (*((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        v87 = v391;
      }

      sub_21DBFA6CC();
      v50 = *&v411[0];
      swift_endAccess();
    }

    v94 = v396;
    if (v87)
    {
      v95 = objc_allocWithZone(MEMORY[0x277CCA898]);
      swift_bridgeObjectRetain_n();
      v96 = sub_21DBFA12C();
      v97 = sub_21DBF9E5C();
      v98 = [v95 initWithString:v96 attributes:v97];

      v99 = sub_21DB0D414(v98, v84, v94);
      swift_beginAccess();
      v100 = v99;
      MEMORY[0x223D42D80]();
      if (*((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        v87 = v391;
      }

      sub_21DBFA6CC();
      v50 = *&v411[0];
      swift_endAccess();

      swift_bridgeObjectRelease_n();
    }

    a1 = object;
    if (!object)
    {

      v15 = v398;
      v43 = &selRef_keyboardType;
      if (!v88)
      {
        goto LABEL_55;
      }

LABEL_52:
      v105 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v106 = sub_21DBFA12C();
      v107 = sub_21DBF9E5C();
      v108 = [v105 initWithString:v106 attributes:v107];

      swift_beginAccess();
      v80 = v108;
      MEMORY[0x223D42D80]();
      if (*((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        v87 = v391;
      }

      sub_21DBFA6CC();
      v50 = *&v411[0];
      swift_endAccess();

      goto LABEL_55;
    }

    v101 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v102 = sub_21DBFA12C();
    v103 = sub_21DBF9E5C();

    v43 = &selRef_keyboardType;
    v104 = [v101 initWithString:v102 attributes:v103];

    swift_beginAccess();
    v80 = v104;
    MEMORY[0x223D42D80]();
    v15 = v398;
    if (*((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
      v87 = v391;
    }

    sub_21DBFA6CC();
    v50 = *&v411[0];
    swift_endAccess();

    a1 = object;
    if (v88)
    {
      goto LABEL_52;
    }

LABEL_55:
    if (v397)
    {
      v109 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v110 = sub_21DBFA12C();
      v111 = sub_21DBF9E5C();
      v112 = [v109 initWithString:v110 attributes:v111];

      swift_beginAccess();
      v80 = v112;
      MEMORY[0x223D42D80]();
      if (*((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v411[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        v87 = v391;
      }

      sub_21DBFA6CC();
      v50 = *&v411[0];
      swift_endAccess();
    }

    *&v392 = v78;
    if (!(v50 >> 62))
    {
      v113 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v113)
      {
        break;
      }

      if (v113 == 1)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (!sub_21DBFBD7C())
    {
      break;
    }

    if (sub_21DBFBD7C() == 1)
    {
LABEL_62:
      if ((v50 & 0xC000000000000001) != 0)
      {
        goto LABEL_289;
      }

      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v43 = v15;
        v114 = *(v50 + 32);
        goto LABEL_65;
      }

      goto LABEL_292;
    }

LABEL_72:
    v87 = "r Auto-Categorize failure";
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    a1 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v121 = sub_21DBFA12C();

    v80 = sub_21DBF9E5C();
    v43 = [a1 initWithString:v121 attributes:v80];

    v15 = v396;
    if ((v50 & 0xC000000000000001) != 0)
    {
      v122 = MEMORY[0x223D44740](0, v50);
    }

    else
    {
      if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_293;
      }

      v122 = *(v50 + 32);
    }

    v123 = v122;
    v87 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

    if (v50 >> 62)
    {
      v124 = sub_21DBFBD7C();
      if (v124 < 0)
      {
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        swift_once();
LABEL_138:
        v206 = sub_21DBF84BC();
        __swift_project_value_buffer(v206, qword_280D0F148);
        v207 = sub_21DBF84AC();
        v208 = sub_21DBFAECC();
        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          *v209 = 0;
          _os_log_impl(&dword_21D0C9000, v207, v208, "makeVisible called outside of performSubviewUpdates", v209, 2u);
          MEMORY[0x223D46520](v209, -1, -1);
        }

        goto LABEL_141;
      }
    }

    else
    {
      v124 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_21DB0D920(v124 != 0, v50);
    sub_21DB0D920(v124, v50);
    v114 = v87;
    a1 = sub_21DB0D98C(v124 != 0, v124, v50);
    v30 = ((v127 >> 1) - v126);
    if (v127 >> 1 == v126)
    {
      goto LABEL_86;
    }

    if ((v127 >> 1) > v126)
    {
      v128 = (v125 + 8 * v126);
      do
      {
        v129 = *v128++;
        v130 = v129;
        [v114 appendAttributedString_];
        [v114 appendAttributedString_];

        v30 = (v30 - 1);
      }

      while (v30);
LABEL_86:

      swift_unknownObjectRelease();

      v43 = v398;
      v88 = v390;
      a1 = object;
      goto LABEL_87;
    }

LABEL_299:
    __break(1u);
LABEL_300:
    swift_once();
  }

  v114 = 0;
  v43 = v15;
  while (1)
  {
    v15 = v396;
LABEL_87:

    if (!a1)
    {
      goto LABEL_90;
    }

    if (v114)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB80);
      v131 = swift_allocObject();
      *(v131 + 16) = v389;
      *(v131 + 32) = 0xD000000000000022;
      *(v131 + 40) = 0x800000021DC4B700;
      *(v131 + 48) = 0x746165706572;
      v132 = v395;
      *(v131 + 56) = 0xE600000000000000;
      *(v131 + 64) = v132;
      v133 = v132;
      v134 = v114;
      v135 = sub_21D17922C(v131);
      swift_setDeallocating();
      sub_21D0CF7E0(v131 + 32, &qword_27CE5FB88);
      swift_deallocClassInstance();
      v136 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v135);

      v114 = v136;
LABEL_90:
      if (v15)
      {

        if (v114)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB80);
          v137 = swift_allocObject();
          *(v137 + 16) = v389;
          *(v137 + 32) = 0xD000000000000026;
          *(v137 + 40) = 0x800000021DC64260;
          *(v137 + 48) = 0xD00000000000001ELL;
          v138 = v395;
          *(v137 + 56) = 0x800000021DC5DB10;
          *(v137 + 64) = v138;
          v139 = v138;
          v140 = v114;
          v141 = sub_21D17922C(v137);
          swift_setDeallocating();
          sub_21D0CF7E0(v137 + 32, &qword_27CE5FB88);
          swift_deallocClassInstance();
          v142 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v141);

          v114 = v142;
          v143 = v399;
          if (!v88)
          {
            goto LABEL_93;
          }

          goto LABEL_97;
        }
      }

LABEL_96:
      v143 = v399;
      if (!v88)
      {
        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (v15)
    {

      v114 = 0;
      goto LABEL_96;
    }

    v114 = 0;
    v143 = v399;
    if (!v88)
    {
LABEL_93:
      v144 = v114;
      goto LABEL_100;
    }

LABEL_97:

    if (v114)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB80);
      v145 = swift_allocObject();
      *(v145 + 16) = v389;
      *(v145 + 32) = 0xD00000000000001ELL;
      *(v145 + 40) = 0x800000021DC4B7B0;
      *(v145 + 48) = 0x6D72616C61;
      v146 = v395;
      *(v145 + 56) = 0xE500000000000000;
      *(v145 + 64) = v146;
      v147 = v146;
      v148 = v114;
      v149 = sub_21D17922C(v145);
      swift_setDeallocating();
      sub_21D0CF7E0(v145 + 32, &qword_27CE5FB88);
      swift_deallocClassInstance();
      v144 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v149);
    }

    else
    {
      v144 = 0;
    }

LABEL_100:
    v150 = v143[3];
    v151 = v143[4];
    __swift_project_boxed_opaque_existential_1(v143, v150);
    if (((*(v151 + 96))(v150, v151) & 1) == 0)
    {
      v80 = v144;
      goto LABEL_114;
    }

    v80 = v144;
    if (!v144)
    {
      goto LABEL_114;
    }

    v152 = v144;
    a1 = &selRef_setAttributedText_;
    v153 = [v152 string];
    if (!v153)
    {
      goto LABEL_302;
    }

    v154 = v153;
    v155 = sub_21DBFA12C();
    v156 = [v154 rangeOfString_];

    if (("_DO_NOT_LOCALIZE" & 0x2F00000000000000) == 0x2000000000000000)
    {
    }

    else
    {
      v157 = sub_21DBF4B4C();

      if (v156 != v157)
      {
        v158 = sub_21D62238C(&qword_27CE5FB30, 1);
        sub_21D0D8CF0(0, &qword_27CE5FAF0);
        v159 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
        v397 = *MEMORY[0x277D74078];
        [*&v158[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_font] descender];
        v160 = sub_21DBF5DDC();
        v161 = [v159 string];
        v162 = sub_21DBFA16C();
        v164 = v163;

        v43 = v398;
        v165 = MEMORY[0x223D42B30](v162, v164);

        v166 = v165;
        a1 = &selRef_setAttributedText_;
        [v159 addAttribute:v397 value:v160 range:{0, v166}];

        v167 = v159;
        v80 = sub_21D47BA90(v152, 0xD00000000000001FLL, 0x800000021DC4B760, v167);

        v152 = v80;
        goto LABEL_109;
      }
    }

    v80 = v144;
LABEL_109:
    v168 = v152;
    v169 = [v168 string];
    if (!v169)
    {
      goto LABEL_303;
    }

    v170 = v169;
    v171 = sub_21DBFA12C();
    v172 = [v170 rangeOfString_];

    if (("_SYMBOL_PLUSONE_DO_NOT_LOCALIZE" & 0x2F00000000000000) == 0x2000000000000000)
    {
    }

    else
    {
      v173 = sub_21DBF4B4C();

      if (v172 != v173)
      {
        v174 = sub_21D62238C(&qword_27CE5FB38, 0);
        sub_21D0D8CF0(0, &qword_27CE5FAF0);
        v175 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
        v176 = *MEMORY[0x277D74078];
        [*&v174[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_font] descender];
        v177 = sub_21DBF5DDC();
        v178 = [v175 string];
        v179 = sub_21DBFA16C();
        a1 = v180;

        v181 = v179;
        v43 = v398;
        v182 = MEMORY[0x223D42B30](v181, a1);

        [v175 addAttribute:v176 value:v177 range:{0, v182}];

        v183 = v175;
        v80 = sub_21D47BA90(v168, 0xD000000000000020, 0x800000021DC4B780, v183);
      }
    }

LABEL_114:
    v184 = [v386 tintColor];
    v397 = v80;
    if (v387)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v185 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v186 = sub_21DBFA12C();

      v187 = *(&v396 + 1);
      a1 = v392;
      v188 = sub_21DBF9E5C();
      *&v396 = [v185 initWithString:v186 attributes:v188];

      *(&v422 + 1) = v375;
      *&v421 = v184;
      sub_21D0CF2E8(&v421, v411);
      v394 = v184;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v409 = v187;
      sub_21D476CE0(v411, v376, isUniquelyReferenced_nonNull_native);
      v190 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v191 = sub_21DBFA12C();

      v192 = sub_21DBF9E5C();

      *(&v396 + 1) = [v190 initWithString:v191 attributes:v192];

      v43 = v398;
      v15 = v399;
      v80 = v397;
    }

    else
    {

      v396 = 0uLL;
      v394 = 0;
      v15 = v399;
    }

    v88 = *(v43 + qword_280D132A0);
    v193 = sub_21D62A934(2);
    v400 = v88;
    object = v193;
    if (v193 && (v194 = v193, v195 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView, swift_beginAccess(), (v196 = *(v194 + v195)) != 0) && ([v196 isEditing] & 1) != 0 || v80)
    {
LABEL_123:
      v421 = v396;
      *&v422 = v394;
      v197 = v385;
      sub_21D6973B8(v80, &v421, v385 & 1);
      goto LABEL_133;
    }

    v198 = *(v15 + 24);
    v199 = *(v15 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v198);
    (*(v199 + 272))(&v421, v198, v199);
    if (v421 == 1)
    {
      if (v422 >> 62)
      {
        v200 = sub_21DBFBD7C();
        v88 = v400;
      }

      else
      {
        v200 = *((v422 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v200 || v396)
      {
        goto LABEL_123;
      }
    }

    else
    {

      if (v396)
      {
        goto LABEL_123;
      }
    }

    if (v369)
    {
      goto LABEL_123;
    }

    sub_21D6A46B0(2u);
    v197 = v385;
LABEL_133:
    sub_21D6988D0(v15, v197 & 1);
    v201 = *(v15 + 24);
    v202 = *(v15 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v201);
    (*(v202 + 48))(v201, v202);
    if (v203)
    {
      v204 = sub_21D62A970(4);
      if (!v204)
      {
        v204 = sub_21D62D088();
      }

      v87 = v204;
      v205 = sub_21DBFA12C();

      [v87 setText_];

      v392 = *(v43 + qword_280D13298);
      if ((*(v88 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          goto LABEL_294;
        }

        goto LABEL_138;
      }

LABEL_141:
      v88 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      v210 = v400;
      swift_beginAccess();
      v211 = *(v210 + v88);
      v50 = v87;
      v212 = swift_isUniquelyReferenced_nonNull_native();
      *(v210 + v88) = v211;
      if ((v212 & 1) == 0)
      {
        v211 = sub_21D256D30(v211);
        *&v400[v88] = v211;
      }

      if (*(v211 + 2) >= 5uLL)
      {
        v213 = *(v211 + 20);
        a1 = *(v211 + 23);
        *(v211 + 20) = v50;
        *(v211 + 21) = 0;
        *(v211 + 11) = v392;
        v214 = v400;
        *&v400[v88] = v211;
        v88 = v214;
        swift_endAccess();
        v80 = v397;
        sub_21D157878(v213);

        goto LABEL_146;
      }

      __break(1u);
LABEL_283:
      v210 = sub_21D256D30(v210);
      *(v88 + v15) = v210;
LABEL_161:
      if (v210[2] >= 6uLL)
      {
        v230 = v210[24];
        v386 = v43;
        a1 = v210[27];
        v210[24] = v50;
        *(v210 + 25) = xmmword_21DC1F9C0;
        v210[27] = 0x402E000000000000;
        *(v88 + v15) = v210;
        swift_endAccess();
        sub_21D157878(v230);

        sub_21D4B94BC(v392, v389, v391, v87);
        v15 = v399;
        v80 = v397;
        goto LABEL_163;
      }

      __break(1u);
LABEL_285:
      v210 = sub_21D256D30(v210);
      *&v400[v88] = v210;
LABEL_173:
      if (v210[2] >= 7uLL)
      {
        *&v392 = a1;
        a1 = v80;
        v241 = v210[28];
        v210[28] = v50;
        *(v210 + 29) = xmmword_21DC1F9C0;
        v210[31] = 0x402E000000000000;
        v242 = v400;
        *&v400[v88] = v210;
        v243 = v242;
        swift_endAccess();
        v244 = v241;
        v80 = v397;
        v15 = v399;
        sub_21D157878(v244);

        sub_21D1576C8(a1, v87, v392);
        goto LABEL_176;
      }

      __break(1u);
LABEL_287:
      v50 = sub_21D256D30(v50);
      *&v400[v88] = v50;
      goto LABEL_224;
    }

    sub_21D6A46B0(4u);
LABEL_146:
    v215 = *(v15 + 24);
    v216 = *(v15 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v215);
    (*(v216 + 104))(&v421, v215, v216);
    v87 = *(&v422 + 1);
    if (*(&v422 + 1))
    {
      *&v389 = *(&v421 + 1);
      v391 = v422;
      *&v392 = v421;
      v43 = *(&v423 + 1);
      v390 = v423;
      v217 = v424;
      v218 = sub_21D62AAE8(5);
      if (!v218)
      {
        type metadata accessor for TTRIRemindersListCellLocationView();
        v218 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v211 = v218;
      v219 = objc_opt_self();
      a1 = v392;
      v220 = v392;
      v80 = [v219 configurationWithPointSize_];
      if (a1)
      {
        v221 = [v220 imageWithConfiguration_];
      }

      else
      {
        v221 = 0;
      }

      v222 = *&v211[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView];
      if (!v222)
      {
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
        return;
      }

      [v222 setImage_];
      [v211 setNeedsLayout];

      v223 = *&v211[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor];
      v224 = v389;
      *&v211[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor] = v389;
      v225 = v224;

      sub_21D6B1DD0();
      sub_21D6B1C78(v391, v87, v390, v43, v217 & 1);
      if ((*(v88 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          swift_once();
        }

        v226 = sub_21DBF84BC();
        __swift_project_value_buffer(v226, qword_280D0F148);
        v227 = sub_21DBF84AC();
        v228 = sub_21DBFAECC();
        if (os_log_type_enabled(v227, v228))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_21D0C9000, v227, v228, "makeVisible called outside of performSubviewUpdates", v80, 2u);
          MEMORY[0x223D46520](v80, -1, -1);
        }
      }

      LODWORD(v387) = v217;
      v15 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      swift_beginAccess();
      v210 = *(v88 + v15);
      v50 = v211;
      v229 = swift_isUniquelyReferenced_nonNull_native();
      *(v88 + v15) = v210;
      if (v229)
      {
        goto LABEL_161;
      }

      goto LABEL_283;
    }

    sub_21D6A46B0(5u);
LABEL_163:
    v231 = *(v15 + 24);
    v232 = *(v15 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v231);
    (*(v232 + 248))(&v421, v231, v232);
    v87 = *(&v421 + 1);
    if (*(&v421 + 1))
    {
      v80 = v421;
      a1 = v422;
      v233 = v400;
      v234 = sub_21D62AB00(6);
      if (!v234)
      {
        type metadata accessor for TTRIRemindersListCellPersonView();
        v234 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v43 = v234;
      v235 = a1;
      sub_21D6D40C4(a1);
      sub_21DBF8E0C();
      sub_21D6D41B4(v80, v87);
      if ((v233[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          swift_once();
        }

        v236 = sub_21DBF84BC();
        __swift_project_value_buffer(v236, qword_280D0F148);
        v237 = sub_21DBF84AC();
        v238 = sub_21DBFAECC();
        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          *v239 = 0;
          _os_log_impl(&dword_21D0C9000, v237, v238, "makeVisible called outside of performSubviewUpdates", v239, 2u);
          MEMORY[0x223D46520](v239, -1, -1);
        }
      }

      v88 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      v211 = v400;
      swift_beginAccess();
      v210 = *&v211[v88];
      v50 = v43;
      v240 = swift_isUniquelyReferenced_nonNull_native();
      *&v211[v88] = v210;
      if (v240)
      {
        goto LABEL_173;
      }

      goto LABEL_285;
    }

    v243 = v400;
    sub_21D6A46B0(6u);
LABEL_176:
    v43 = v398;
    v245 = [v398 traitCollection];
    *&v392 = [v245 horizontalSizeClass];

    v246 = *(v15 + 24);
    v247 = *(v15 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v246);
    v248 = (*(v247 + 120))(v246, v247);
    if (!v248)
    {
      goto LABEL_186;
    }

    if (!*(v248 + 16))
    {
      break;
    }

    v249 = v372;
    sub_21D6A4234(v248 + ((*(v371 + 80) + 32) & ~*(v371 + 80)), v372, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);

    v250 = v388;
    sub_21D6A41CC(v249, v388, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
    v251 = *(v15 + 24);
    v252 = *(v15 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v251);
    v253 = (*(v252 + 144))(v251, v252);
    v254 = v382;
    if (v253 & 1) != 0 && (sub_21DBF53CC())
    {
      v255 = 0;
      v256 = 1;
    }

    else
    {
      v256 = 0;
      v255 = 1;
    }

    v257 = sub_21D62AB18(8);
    LODWORD(v391) = v256;
    if (!v257)
    {
      v263 = v383;
      v264 = *(v383 + 16);
      goto LABEL_204;
    }

    v390 = v255;
    v258 = v257;
    v259 = [v258 URL];
    if (v259)
    {
      v260 = v366;
      v261 = v259;
      sub_21DBF546C();

      v262 = 0;
    }

    else
    {
      v262 = 1;
      v260 = v366;
    }

    v265 = v383;
    v266 = *(v383 + 56);
    v267 = v374;
    v266(v260, v262, 1, v374);
    v268 = *(v254 + 20);
    v269 = *(v265 + 16);
    v386 = ((v265 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v387 = v269;
    v270 = v370;
    v269(v370, v250 + v268, v267);
    v266(v270, 0, 1, v267);
    v271 = v368;
    v272 = *(v367 + 48);
    sub_21D0D3954(v260, v368, &qword_27CE5EA20);
    *&v389 = v272;
    sub_21D0D3954(v270, v271 + v272, &qword_27CE5EA20);
    v273 = *(v265 + 48);
    if (v273(v271, 1, v267) == 1)
    {
      sub_21D0CF7E0(v270, &qword_27CE5EA20);
      sub_21D0CF7E0(v260, &qword_27CE5EA20);
      v345 = v273(v271 + v389, 1, v267) == 1;
      v274 = v271;
      v250 = v388;
      v254 = v382;
      if (!v345)
      {
        goto LABEL_195;
      }

      sub_21D0CF7E0(v274, &qword_27CE5EA20);
      v255 = v390;
      goto LABEL_199;
    }

    v275 = v364;
    sub_21D0D3954(v271, v364, &qword_27CE5EA20);
    v276 = v389;
    if (v273(v271 + v389, 1, v267) == 1)
    {
      sub_21D0CF7E0(v370, &qword_27CE5EA20);
      sub_21D0CF7E0(v260, &qword_27CE5EA20);
      (*(v383 + 8))(v275, v267);
      v274 = v271;
      v250 = v388;
      v254 = v382;
LABEL_195:
      sub_21D0CF7E0(v274, &unk_27CE5F2A0);
      v255 = v390;
LABEL_202:

LABEL_203:
      v263 = v383;
      v264 = v387;
LABEL_204:
      v286 = v373;
      v285 = v374;
      v264(v373, v250 + *(v254 + 20), v374);
      v287 = *v250;
      v288 = type metadata accessor for TTRIRemindersListReminderCellLinkView();
      v289 = objc_allocWithZone(v288);
      v289[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] = 0;
      *&v289[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID] = v287;
      v290 = v287;
      v291 = sub_21DBF53FC();
      v420.receiver = v289;
      v420.super_class = v288;
      v292 = objc_msgSendSuper2(&v420, sel_initWithURL_, v291);

      (*(v263 + 8))(v286, v285);
      v258 = v292;
      [v258 _setApplyCornerRadius_];
      [v258 _setForceFlexibleWidth_];
      v293 = [v258 layer];
      [v293 setCornerRadius_];

      v294 = [v258 layer];
      [v294 setMaskedCorners_];

      [v258 _setDisableAnimations_];
      [v258 _setPreferredSizeClass_];

      goto LABEL_205;
    }

    v277 = v383;
    v278 = v271 + v276;
    v279 = v373;
    (*(v383 + 32))(v373, v278, v267);
    sub_21D6A417C(&qword_280D171D0, MEMORY[0x277CC9260]);
    v280 = sub_21DBFA10C();
    v281 = *(v277 + 8);
    v281(v279, v267);
    sub_21D0CF7E0(v370, &qword_27CE5EA20);
    sub_21D0CF7E0(v260, &qword_27CE5EA20);
    v281(v364, v267);
    sub_21D0CF7E0(v271, &qword_27CE5EA20);
    v250 = v388;
    v254 = v382;
    v255 = v390;
    if ((v280 & 1) == 0)
    {
      goto LABEL_202;
    }

LABEL_199:
    sub_21D0D8CF0(0, &qword_280D17680);
    v282 = *&v258[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
    v283 = sub_21DBFB63C();

    if ((v283 & 1) == 0)
    {
      goto LABEL_202;
    }

    v284 = [v258 _preferredSizeClass];

    if (v284 != v255)
    {
      goto LABEL_203;
    }

LABEL_205:
    v15 = v399;
    v295 = v400;
    if (*(v250 + *(v254 + 24)))
    {
      v296 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata;
      if ((v258[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] & 1) == 0)
      {
        [v258 setMetadata_];
        v258[v296] = 1;
      }
    }

    v297 = *MEMORY[0x277CEC618];
    if (v392 == 1)
    {
      a1 = v391;
    }

    else
    {
      v297 = 304.0;
      a1 = 0;
    }

    if (v391)
    {
      v298 = v297;
    }

    else
    {
      v298 = *MEMORY[0x277CEC620];
    }

    if (v391)
    {
      v299 = 200.0;
    }

    else
    {
      v299 = *(MEMORY[0x277CEC620] + 8);
    }

    v211 = v258;
    [v211 setMaximumLayoutSize_];
    v43 = v398;
    if ((v295[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] & 1) == 0)
    {
      if (qword_280D0F140 != -1)
      {
        swift_once();
      }

      v300 = sub_21DBF84BC();
      __swift_project_value_buffer(v300, qword_280D0F148);
      v301 = sub_21DBF84AC();
      v302 = sub_21DBFAECC();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        *v303 = 0;
        _os_log_impl(&dword_21D0C9000, v301, v302, "makeVisible called outside of performSubviewUpdates", v303, 2u);
        MEMORY[0x223D46520](v303, -1, -1);
      }
    }

    v88 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    v304 = v400;
    swift_beginAccess();
    v50 = *&v304[v88];
    v305 = swift_isUniquelyReferenced_nonNull_native();
    *&v304[v88] = v50;
    if ((v305 & 1) == 0)
    {
      goto LABEL_287;
    }

LABEL_224:
    if (*(v50 + 16) >= 9uLL)
    {
      v306 = a1 ^ 1;
      v307 = *(v50 + 288);
      a1 = *(v50 + 312);
      *(v50 + 288) = v211;
      *(v50 + 296) = v306;
      *(v50 + 304) = xmmword_21DC1F9D0;
      v308 = v400;
      *&v400[v88] = v50;
      v243 = v308;
      swift_endAccess();
      sub_21D157878(v307);

      sub_21D6A429C(v388, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v80 = v397;
      goto LABEL_226;
    }

    __break(1u);
LABEL_289:
    v114 = MEMORY[0x223D44740](0, v50);
    v43 = v15;
LABEL_65:
  }

LABEL_186:
  sub_21D6A46B0(8u);
LABEL_226:
  v309 = *(v15 + 24);
  v310 = *(v15 + 32);
  __swift_project_boxed_opaque_existential_1(v15, v309);
  v311 = (*(v310 + 128))(v309, v310);
  v312 = object;
  if (!v311)
  {
    goto LABEL_237;
  }

  v313 = v311;
  if (!*(v311 + 16))
  {

LABEL_237:
    sub_21D6A46B0(9u);
    goto LABEL_281;
  }

  v314 = *(v15 + 24);
  v315 = *(v15 + 32);
  __swift_project_boxed_opaque_existential_1(v15, v314);
  if (((*(v315 + 144))(v314, v315) & 1) == 0)
  {
    v329 = sub_21D62AB48(9);
    if (v329)
    {
      v30 = v329;
      a1 = *(v313 + 16);
      if (a1)
      {
LABEL_240:
        *&v392 = v30;
        *&v421 = MEMORY[0x277D84F90];
        sub_21D18F304(0, a1, 0);
        v330 = v421;
        v331 = v313 + ((*(v365 + 80) + 32) & ~*(v365 + 80));
        v332 = *(v365 + 72);
        do
        {
          v333 = v401;
          sub_21D6A4234(v331, v401, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          v334 = *(v333 + *(v402 + 24));
          v335 = *v333;
          v336 = v334;
          v337 = v335;
          sub_21D6A429C(v333, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          *&v421 = v330;
          v339 = *(v330 + 16);
          v338 = *(v330 + 24);
          if (v339 >= v338 >> 1)
          {
            sub_21D18F304((v338 > 1), v339 + 1, 1);
            v330 = v421;
          }

          *(v330 + 16) = v339 + 1;
          v340 = v330 + 16 * v339;
          *(v340 + 32) = v334;
          *(v340 + 40) = v337;
          v331 += v332;
          --a1;
        }

        while (a1);

        v43 = v398;
        v243 = v400;
        v30 = v392;
LABEL_269:
        v353 = *(v30 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels);
        *(v30 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels) = v330;
        v354 = sub_21DBF8E0C();
        sub_21D1D881C(v354, v353);
        v356 = v355;

        if ((v356 & 1) == 0)
        {
          sub_21D6C00A4();
        }

        if ((v243[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] & 1) == 0)
        {
          if (qword_280D0F140 != -1)
          {
            swift_once();
          }

          v357 = sub_21DBF84BC();
          __swift_project_value_buffer(v357, qword_280D0F148);
          v358 = sub_21DBF84AC();
          v359 = sub_21DBFAECC();
          if (os_log_type_enabled(v358, v359))
          {
            v360 = swift_slowAlloc();
            *v360 = 0;
            _os_log_impl(&dword_21D0C9000, v358, v359, "makeVisible called outside of performSubviewUpdates", v360, 2u);
            MEMORY[0x223D46520](v360, -1, -1);
          }
        }

        v15 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        swift_beginAccess();
        v313 = *&v243[v15];
        v50 = v30;
        v361 = swift_isUniquelyReferenced_nonNull_native();
        *&v243[v15] = v313;
        if ((v361 & 1) == 0)
        {
          goto LABEL_297;
        }

        goto LABEL_278;
      }
    }

    else
    {
      v30 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListSmallImageAttachmentsView()) init];
      *(v30 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_attachmentsDelegate + 8) = &off_282ECC130;
      swift_unknownObjectWeakAssign();
      a1 = *(v313 + 16);
      if (a1)
      {
        goto LABEL_240;
      }
    }

    v330 = MEMORY[0x277D84F90];
    goto LABEL_269;
  }

  v316 = sub_21D62AB30(9);
  if (!v316)
  {
    v317 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListLargeImageAttachmentsView()) initWithFrame_];
    v341 = &v317[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate];
    swift_beginAccess();
    *(v341 + 1) = &protocol witness table for TTRIRemindersListReminderCell;
    swift_unknownObjectWeakAssign();
    v318 = *(v313 + 16);
    if (v318)
    {
      goto LABEL_231;
    }

LABEL_246:

    v319 = MEMORY[0x277D84F90];
    goto LABEL_247;
  }

  v317 = v316;
  v318 = *(v313 + 16);
  if (!v318)
  {
    goto LABEL_246;
  }

LABEL_231:
  v391 = v317;
  *&v411[0] = MEMORY[0x277D84F90];
  sub_21D18F33C(0, v318, 0);
  v319 = *&v411[0];
  v320 = v313 + ((*(v365 + 80) + 32) & ~*(v365 + 80));
  v321 = *(v365 + 72);
  do
  {
    v322 = v401;
    sub_21D6A4234(v320, v401, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
    v323 = *(v322 + *(v402 + 24));
    v324 = *v322;
    v325 = v323;
    v326 = v324;
    sub_21D6A429C(v322, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
    *&v411[0] = v319;
    a1 = *(v319 + 16);
    v327 = *(v319 + 24);
    if (a1 >= v327 >> 1)
    {
      sub_21D18F33C((v327 > 1), a1 + 1, 1);
      v319 = *&v411[0];
    }

    *(v319 + 16) = a1 + 1;
    v328 = v319 + 16 * a1;
    *(v328 + 32) = v323;
    *(v328 + 40) = v326;
    v320 += v321;
    --v318;
  }

  while (v318);

  v243 = v400;
  v317 = v391;
LABEL_247:
  TTRIRemindersListLargeImageAttachmentsView.viewModels.setter(v319);
  v342 = &v317[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
  swift_beginAccess();
  v343 = *v342;
  v344 = *(v342 + 8);
  v345 = v392 == 1;
  v346 = v392 == 1;
  v347 = 0x4073000000000000;
  if (v392 == 1)
  {
    v347 = 0;
  }

  *v342 = v347;
  *(v342 + 8) = v346;
  if (v345)
  {
    if (!v344)
    {
      goto LABEL_256;
    }
  }

  else
  {
    if (v343 != 304.0)
    {
      LOBYTE(v344) = 1;
    }

    if (v344)
    {
LABEL_256:
      [v317 invalidateIntrinsicContentSize];
    }
  }

  v15 = v392 != 1;
  if ((v243[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] & 1) == 0)
  {
    if (qword_280D0F140 != -1)
    {
      swift_once();
    }

    v348 = sub_21DBF84BC();
    __swift_project_value_buffer(v348, qword_280D0F148);
    v349 = sub_21DBF84AC();
    v350 = sub_21DBFAECC();
    if (os_log_type_enabled(v349, v350))
    {
      v313 = swift_slowAlloc();
      *v313 = 0;
      _os_log_impl(&dword_21D0C9000, v349, v350, "makeVisible called outside of performSubviewUpdates", v313, 2u);
      MEMORY[0x223D46520](v313, -1, -1);
    }
  }

  v43 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  swift_beginAccess();
  v30 = *(v43 + v243);
  v50 = v317;
  v351 = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + v243) = v30;
  if ((v351 & 1) == 0)
  {
    v30 = sub_21D256D30(v30);
    *(v43 + v243) = v30;
  }

  if (v30[2] >= 0xAuLL)
  {
    v352 = v30[40];
    v30[40] = v50;
    v30[41] = v15;
    *(v30 + 21) = xmmword_21DC1F9D0;
    *(v43 + v243) = v30;
    swift_endAccess();
    sub_21D157878(v352);

    goto LABEL_280;
  }

  __break(1u);
LABEL_297:
  v313 = sub_21D256D30(v313);
  *&v243[v15] = v313;
LABEL_278:
  if (*(v313 + 16) < 0xAuLL)
  {
    __break(1u);
    goto LABEL_299;
  }

  v362 = *(v313 + 320);
  *(v313 + 320) = v50;
  *(v313 + 328) = xmmword_21DC1F9C0;
  *(v313 + 344) = 0x402E000000000000;
  *&v243[v15] = v313;
  swift_endAccess();
  sub_21D157878(v362);

LABEL_280:
  v15 = v399;
  v80 = v397;
  v312 = object;
LABEL_281:
  sub_21D69A180(v15);

  sub_21D6396C0(v396, *(&v396 + 1), v394);
}
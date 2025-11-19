void MLS.TreeKEMPublicKey.isParentHashValid.getter()
{
  v2 = *(v0 + 4);
  v3 = v2 - 1;
  if (!v2)
  {
    goto LABEL_26;
  }

  if (v3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 1);
    v6 = *(v0 + 3);
    v32 = *(v0 + 4);
    MLS.NodeIndex.init(forRoot:)(&v32, __dst);
    if (!v1)
    {
      v7 = __clz(__rbit32(~__dst[0]));
      if (v7)
      {
        v8 = 2 * v3;
        v22 = v7 + 1;
        v9 = v6 + 32;
        v10 = 1;
        v25 = 2 * v3;
        v26 = v4;
        v24 = v5;
        while (1)
        {
          if (v10 == 31)
          {
            goto LABEL_28;
          }

          v23 = v10;
          v11 = 2 << v10;
          v12 = (v11 >> 1) - 1;
          if (v12 <= v8)
          {
            break;
          }

LABEL_7:
          v10 = v23 + 1;
          if (v23 + 1 == v22)
          {
            return;
          }
        }

        v31 = v11;
        while (1)
        {
          while (*(v6 + 16) <= v12)
          {
LABEL_12:
            v13 = __CFADD__(v12, v11);
            v12 += v11;
            if (v13)
            {
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

            if (v12 > v8)
            {
              goto LABEL_7;
            }
          }

          memmove(__dst, (v9 + 136 * v12), 0x88uLL);
          if (sub_26BE58C10(__dst) == 1)
          {
            LODWORD(v11) = v31;
            goto LABEL_12;
          }

          v14 = v2;
          v39 = v12;
          MLS.NodeIndex.left.getter(&v32);
          if (v33)
          {
            goto LABEL_30;
          }

          v15 = v32;
          v39 = v12;
          MLS.NodeIndex.right.getter(&v32);
          if (v33)
          {
            goto LABEL_29;
          }

          v16 = v32;
          LOWORD(v32) = v4;
          v34 = v5;
          v35 = v14;
          v36 = v6;
          v38 = v16;
          v39 = v12;
          v30 = v16;
          v17 = sub_26BE4EB68(&v39, &v38);
          v19 = v18;
          LOWORD(v32) = v4;
          v34 = v5;
          v35 = v14;
          v36 = v6;
          v38 = v15;
          v39 = v12;
          v28 = sub_26BE4EB68(&v39, &v38);
          v29 = v20;
          LOWORD(v32) = v4;
          v34 = v5;
          v35 = v14;
          v36 = v6;
          v39 = v15;
          v27 = sub_26BE4F210(&v39, v17, v19);
          LOWORD(v32) = v4;
          v34 = v5;
          v35 = v14;
          v36 = v6;
          v39 = v30;
          v21 = sub_26BE4F210(&v39, v28, v29);
          sub_26BE00258(v28, v29);
          sub_26BE00258(v17, v19);
          if (((v27 | v21) & 1) == 0)
          {
            return;
          }

          LODWORD(v11) = v31;
          v13 = __CFADD__(v12, v31);
          v12 += v31;
          if (v13)
          {
            goto LABEL_25;
          }

          v2 = v14;
          v8 = v25;
          v5 = v24;
          v9 = v6 + 32;
          v4 = v26;
          if (v12 > v25)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }
}

_DWORD *MLS.TreeKEMPublicKey.hasLeaf(index:)(_DWORD *result)
{
  v2 = *(v1 + 3);
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 4);
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 2 * *result;
    return ((MLS.TreeKEMPublicKey.blankAt(index:)(&v6) & 1) == 0);
  }

  return result;
}

uint64_t sub_26BE5000C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v5;
  v20 = *(a1 + 128);
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v7 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v9 = *(v2 + 24);
  v21 = xmmword_26C00BBD0;
  v22 = 0;
  sub_26BE7DD28(v19);
  v10 = v21;
  if (v3)
  {
    return sub_26BE00258(v21, *(&v21 + 1));
  }

  v12 = *(&v21 + 1) >> 62;
  if ((*(&v21 + 1) >> 62) <= 1)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = v21 >> 32;
LABEL_9:
    if (v13 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v12 == 2)
  {
    v13 = *(v21 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v14 = sub_26C00909C();
  v16 = v15;
  sub_26BE00258(v10, *(&v10 + 1));
  *&v19[0] = v9;

  v17 = MLS.RatchetTree.hasLeaf(leafData:)(&v21, v14, v16);

  result = sub_26BE00258(v14, v16);
  v18 = v21;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  *a2 = v18;
  *(a2 + 4) = (v17 & 1) == 0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.TreeKEMPublicKey.truncate()()
{
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v0;
    v4 = v2 - 1;
    if (v2 == 1)
    {
LABEL_13:
      v10 = *(v0 + 8);
      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      *__dst = *v0;
      v20 = v10;
      v21 = v11;
      v22 = v12;
      v23 = 2 * v4;

      v13 = MLS.TreeKEMPublicKey.blankAt(index:)(&v23);

      if (!v1)
      {
        if (v13)
        {
          v14 = *(v3 + 24);

          *(v3 + 24) = MEMORY[0x277D84F90];
          *(v3 + 16) = 0;
        }

        else
        {
          v16 = v11 >> 1;
          if (v4 < v11 >> 1)
          {
            do
            {
              v17 = v16;
              v18 = sub_26BE55FBC(*(v12 + 16) - (*(v12 + 16) >> 1), v12);
              v12 = v18;
              v16 = v17 >> 1;
            }

            while (v4 < v17 >> 1);
            *(v3 + 16) = v17;
            *(v3 + 24) = v18;
          }
        }
      }
    }

    else
    {
      v5 = 2 * v2 - 2;
      while ((v4 & 0x80000000) == 0)
      {
        v6 = *(v0 + 16);
        v7 = v6 != 0;
        v8 = v6 - 1;
        if (!v7)
        {
          goto LABEL_22;
        }

        if (v8 < 0)
        {
          goto LABEL_23;
        }

        if (v5 > 2 * v8)
        {
          sub_26BE01654();
          swift_allocError();
          *v15 = 30;
          *(v15 + 8) = 0u;
          *(v15 + 24) = 0u;
          *(v15 + 40) = 0u;
          *(v15 + 56) = 0u;
          *(v15 + 72) = 0u;
          *(v15 + 88) = 0u;
          *(v15 + 104) = 0;
          *(v15 + 112) = 23;
          swift_willThrow();
          return;
        }

        v9 = *(v0 + 24);
        if (*(v9 + 16) <= v5 || (memmove(__dst, (v9 + 136 * v5 + 32), 0x88uLL), sub_26BE58C10(__dst) == 1))
        {
          *__dst = v4;
          sub_26BE476A8(__dst);
          if (v1)
          {
            return;
          }

          v5 -= 2;
          if (--v4)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }
  }
}

uint64_t sub_26BE50384(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_22:
    v38 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = 0;
  v7 = *(result + 24);
  v8 = v4 - 1;
  v9 = 2 * (v4 - 1);
  v10 = v7 + 32;
  v11 = 2 * v4;
  v39 = v9;
  v40 = v4 - 1;
  v41 = v7 + 32;
  v45 = 2 * v4;
  while (1)
  {
    if (v6 == 0x100000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (v8 < 0)
    {
      goto LABEL_25;
    }

    if (v6 > v9)
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v37 = 30;
LABEL_21:
      *v36 = v37;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
      *(v36 + 40) = 0u;
      *(v36 + 56) = 0u;
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 112) = 23;
      result = swift_willThrow();
      goto LABEL_22;
    }

    if (*(v7 + 16) > v6)
    {
      break;
    }

LABEL_5:
    v6 += 2;
    if (v11 == v6)
    {
      goto LABEL_22;
    }
  }

  v12 = (v10 + 136 * v6);
  memmove(__dst, v12, 0x88uLL);
  result = sub_26BE58C10(__dst);
  if (result == 1)
  {
LABEL_4:
    v11 = v45;
    goto LABEL_5;
  }

  v50[0] = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  v50[3] = v12[3];
  v50[4] = v15;
  v50[1] = v13;
  v50[2] = v14;
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  v51 = *(v12 + 16);
  v50[6] = v17;
  v50[7] = v18;
  v50[5] = v16;
  memmove(v52, v12, 0x88uLL);
  if (sub_26BE58C10(v52) == 1)
  {
    goto LABEL_20;
  }

  v48[6] = v52[6];
  v48[7] = v52[7];
  v49 = v53;
  v48[2] = v52[2];
  v48[3] = v52[3];
  v48[4] = v52[4];
  v48[5] = v52[5];
  v48[0] = v52[0];
  v48[1] = v52[1];
  v19 = sub_26BE592C4(v48);
  v20 = sub_26BE13A3C(v48);
  if (v19 == 1)
  {
    sub_26BE01654();
    swift_allocError();
    v37 = 28;
    goto LABEL_21;
  }

  v44 = v3;
  v21 = *(v20 + 64);
  v22 = *a2;
  v46 = v21;
  v23 = *(v22 + 32);
  MEMORY[0x28223BE20](v20);
  *(&v39 - 2) = &v46;
  *(&v39 - 1) = v22;
  v25 = (v24 + 63) >> 6;
  v26 = 8 * v25;
  v42 = v25;
  v43 = v27;
  if (v28 > 0xD)
  {
    sub_26BE2E1F0(v50, v47, &qword_28045E4C8, &unk_26C0112A0);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = swift_slowAlloc();
      v34 = v44;
      v35 = sub_26BEBE818(v30, v42, sub_26BE5B278);
      v3 = v34;
      if (v34)
      {
        goto LABEL_27;
      }

      v33 = v35;

      MEMORY[0x26D69A4E0](v30, -1, -1);
      goto LABEL_3;
    }
  }

  else
  {
    isStackAllocationSafe = sub_26BE2E1F0(v50, v47, &qword_28045E4C8, &unk_26C0112A0);
  }

  v30 = &v39;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v39 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0), v26);
  v31 = v44;
  v32 = sub_26BEBD9CC((&v39 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0)), v42, v21, v22);
  v3 = v31;
  if (!v31)
  {
    v33 = v32;

LABEL_3:
    v10 = v41;
    *a2 = v33;
    result = sub_26BE2E258(v50, &qword_28045E4C8, &unk_26C0112A0);
    v9 = v39;
    v8 = v40;
    goto LABEL_4;
  }

  swift_willThrow();

  __break(1u);
LABEL_27:

  result = MEMORY[0x26D69A4E0](v30, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_26BE50778(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_22:
    v38 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = 0;
  v7 = *(result + 24);
  v8 = v4 - 1;
  v9 = 2 * (v4 - 1);
  v10 = v7 + 32;
  v11 = 2 * v4;
  v39 = v9;
  v40 = v4 - 1;
  v41 = v7 + 32;
  v45 = 2 * v4;
  while (1)
  {
    if (v6 == 0x100000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (v8 < 0)
    {
      goto LABEL_25;
    }

    if (v6 > v9)
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v37 = 30;
LABEL_21:
      *v36 = v37;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
      *(v36 + 40) = 0u;
      *(v36 + 56) = 0u;
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 112) = 23;
      result = swift_willThrow();
      goto LABEL_22;
    }

    if (*(v7 + 16) > v6)
    {
      break;
    }

LABEL_5:
    v6 += 2;
    if (v11 == v6)
    {
      goto LABEL_22;
    }
  }

  v12 = (v10 + 136 * v6);
  memmove(__dst, v12, 0x88uLL);
  result = sub_26BE58C10(__dst);
  if (result == 1)
  {
LABEL_4:
    v11 = v45;
    goto LABEL_5;
  }

  v50[0] = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  v50[3] = v12[3];
  v50[4] = v15;
  v50[1] = v13;
  v50[2] = v14;
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  v51 = *(v12 + 16);
  v50[6] = v17;
  v50[7] = v18;
  v50[5] = v16;
  memmove(v52, v12, 0x88uLL);
  if (sub_26BE58C10(v52) == 1)
  {
    goto LABEL_20;
  }

  v48[6] = v52[6];
  v48[7] = v52[7];
  v49 = v53;
  v48[2] = v52[2];
  v48[3] = v52[3];
  v48[4] = v52[4];
  v48[5] = v52[5];
  v48[0] = v52[0];
  v48[1] = v52[1];
  v19 = sub_26BE592C4(v48);
  v20 = sub_26BE13A3C(v48);
  if (v19 == 1)
  {
    sub_26BE01654();
    swift_allocError();
    v37 = 28;
    goto LABEL_21;
  }

  v44 = v3;
  v21 = *(v20 + 72);
  v22 = *a2;
  v46 = v21;
  v23 = *(v22 + 32);
  MEMORY[0x28223BE20](v20);
  *(&v39 - 2) = &v46;
  *(&v39 - 1) = v22;
  v25 = (v24 + 63) >> 6;
  v26 = 8 * v25;
  v42 = v25;
  v43 = v27;
  if (v28 > 0xD)
  {
    sub_26BE2E1F0(v50, v47, &qword_28045E4C8, &unk_26C0112A0);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = swift_slowAlloc();
      v34 = v44;
      v35 = sub_26BEBE818(v30, v42, sub_26BE5B24C);
      v3 = v34;
      if (v34)
      {
        goto LABEL_27;
      }

      v33 = v35;

      MEMORY[0x26D69A4E0](v30, -1, -1);
      goto LABEL_3;
    }
  }

  else
  {
    isStackAllocationSafe = sub_26BE2E1F0(v50, v47, &qword_28045E4C8, &unk_26C0112A0);
  }

  v30 = &v39;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v39 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0), v26);
  v31 = v44;
  v32 = sub_26BEBD9F4((&v39 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0)), v42, v21, v22);
  v3 = v31;
  if (!v31)
  {
    v33 = v32;

LABEL_3:
    v10 = v41;
    *a2 = v33;
    result = sub_26BE2E258(v50, &qword_28045E4C8, &unk_26C0112A0);
    v9 = v39;
    v8 = v40;
    goto LABEL_4;
  }

  swift_willThrow();

  __break(1u);
LABEL_27:

  result = MEMORY[0x26D69A4E0](v30, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_26BE50B6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(result + 24);
    v6 = v3 - 1;
    v7 = (2 * (v3 - 1));
    v8 = v5 + 32;
    v9 = 2 * v3;
    v31 = v3 - 1;
    while (v4 != 0x100000000)
    {
      if (v6 < 0)
      {
        goto LABEL_17;
      }

      if (v4 > v7)
      {
LABEL_12:
        sub_26BE01654();
        swift_allocError();
        v29 = 30;
LABEL_13:
        *v28 = v29;
        *(v28 + 8) = 0u;
        *(v28 + 24) = 0u;
        *(v28 + 40) = 0u;
        *(v28 + 56) = 0u;
        *(v28 + 72) = 0u;
        *(v28 + 88) = 0u;
        *(v28 + 104) = 0;
        *(v28 + 112) = 23;
        return swift_willThrow();
      }

      if (*(v5 + 16) > v4)
      {
        v10 = (v8 + 136 * v4);
        memmove(__dst, v10, 0x88uLL);
        result = sub_26BE58C10(__dst);
        if (result != 1)
        {
          v36[0] = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v36[3] = v10[3];
          v36[4] = v13;
          v36[1] = v11;
          v36[2] = v12;
          v14 = v10[5];
          v15 = v10[6];
          v16 = v10[7];
          v37 = *(v10 + 16);
          v36[6] = v15;
          v36[7] = v16;
          v36[5] = v14;
          memmove(v38, v10, 0x88uLL);
          if (sub_26BE58C10(v38) == 1)
          {
            goto LABEL_12;
          }

          v34[6] = v38[6];
          v34[7] = v38[7];
          v35 = v39;
          v34[2] = v38[2];
          v34[3] = v38[3];
          v34[4] = v38[4];
          v34[5] = v38[5];
          v34[0] = v38[0];
          v34[1] = v38[1];
          v17 = sub_26BE592C4(v34);
          v18 = sub_26BE13A3C(v34);
          if (v17 == 1)
          {
            sub_26BE01654();
            swift_allocError();
            v29 = 28;
            goto LABEL_13;
          }

          v19 = v5;
          v20 = v7;
          v21 = v8;
          v22 = *v18;
          v23 = v18[1];
          v24 = v18[2];
          v25 = v18[3];
          sub_26BE2E1F0(v36, &v32, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE00608(v22, v23);
          sub_26BE00608(v24, v25);
          sub_26BF7532C(&v32, v24, v25);
          sub_26BE00258(v32, v33);
          v26 = v22;
          v8 = v21;
          v7 = v20;
          v5 = v19;
          v6 = v31;
          v27 = v23;
          v9 = v30;
          sub_26BF7532C(&v32, v26, v27);
          sub_26BE00258(v32, v33);
          result = sub_26BE2E258(v36, &qword_28045E4C8, &unk_26C0112A0);
        }
      }

      v4 += 2;
      if (v9 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BE50E20(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_22:
    v38 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = 0;
  v7 = *(result + 24);
  v8 = v4 - 1;
  v9 = 2 * (v4 - 1);
  v10 = v7 + 32;
  v11 = 2 * v4;
  v39 = v9;
  v40 = v4 - 1;
  v41 = v7 + 32;
  v45 = 2 * v4;
  while (1)
  {
    if (v6 == 0x100000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (v8 < 0)
    {
      goto LABEL_25;
    }

    if (v6 > v9)
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v37 = 30;
LABEL_21:
      *v36 = v37;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
      *(v36 + 40) = 0u;
      *(v36 + 56) = 0u;
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 112) = 23;
      result = swift_willThrow();
      goto LABEL_22;
    }

    if (*(v7 + 16) > v6)
    {
      break;
    }

LABEL_5:
    v6 += 2;
    if (v11 == v6)
    {
      goto LABEL_22;
    }
  }

  v12 = (v10 + 136 * v6);
  memmove(__dst, v12, 0x88uLL);
  result = sub_26BE58C10(__dst);
  if (result == 1)
  {
LABEL_4:
    v11 = v45;
    goto LABEL_5;
  }

  v50[0] = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  v50[3] = v12[3];
  v50[4] = v15;
  v50[1] = v13;
  v50[2] = v14;
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  v51 = *(v12 + 16);
  v50[6] = v17;
  v50[7] = v18;
  v50[5] = v16;
  memmove(v52, v12, 0x88uLL);
  if (sub_26BE58C10(v52) == 1)
  {
    goto LABEL_20;
  }

  v48[6] = v52[6];
  v48[7] = v52[7];
  v49 = v53;
  v48[2] = v52[2];
  v48[3] = v52[3];
  v48[4] = v52[4];
  v48[5] = v52[5];
  v48[0] = v52[0];
  v48[1] = v52[1];
  v19 = sub_26BE592C4(v48);
  v20 = sub_26BE13A3C(v48);
  if (v19 == 1)
  {
    sub_26BE01654();
    swift_allocError();
    v37 = 28;
    goto LABEL_21;
  }

  v44 = v3;
  v21 = *(v20 + 80);
  v22 = *a2;
  v46 = v21;
  v23 = *(v22 + 32);
  MEMORY[0x28223BE20](v20);
  *(&v39 - 2) = &v46;
  *(&v39 - 1) = v22;
  v25 = (v24 + 63) >> 6;
  v26 = 8 * v25;
  v42 = v25;
  v43 = v27;
  if (v28 > 0xD)
  {
    sub_26BE2E1F0(v50, v47, &qword_28045E4C8, &unk_26C0112A0);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = swift_slowAlloc();
      v34 = v44;
      v35 = sub_26BEBE818(v30, v42, sub_26BE5B220);
      v3 = v34;
      if (v34)
      {
        goto LABEL_27;
      }

      v33 = v35;

      MEMORY[0x26D69A4E0](v30, -1, -1);
      goto LABEL_3;
    }
  }

  else
  {
    isStackAllocationSafe = sub_26BE2E1F0(v50, v47, &qword_28045E4C8, &unk_26C0112A0);
  }

  v30 = &v39;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v39 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0), v26);
  v31 = v44;
  v32 = sub_26BEBDB74((&v39 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0)), v42, v21, v22);
  v3 = v31;
  if (!v31)
  {
    v33 = v32;

LABEL_3:
    v10 = v41;
    *a2 = v33;
    result = sub_26BE2E258(v50, &qword_28045E4C8, &unk_26C0112A0);
    v9 = v39;
    v8 = v40;
    goto LABEL_4;
  }

  swift_willThrow();

  __break(1u);
LABEL_27:

  result = MEMORY[0x26D69A4E0](v30, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_26BE51214(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
  }

  v5 = 0;
  v6 = *(result + 24);
  v7 = (v4 - 1);
  v8 = (2 * v7);
  v27 = v6 + 32;
  v9 = a2 + 56;
  v33 = a2;
  while (v5 != 0x80000000)
  {
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    v10 = (2 * v5);
    if (v10 > v8)
    {
      sub_26BE01654();
      swift_allocError();
      *v23 = 30;
      *(v23 + 8) = 0u;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0u;
      *(v23 + 56) = 0u;
      *(v23 + 72) = 0u;
      *(v23 + 88) = 0u;
      *(v23 + 104) = 0;
      v24 = 23;
      goto LABEL_23;
    }

    if (*(v6 + 16) > v10)
    {
      v11 = (v27 + 136 * v10);
      memmove(__dst, v11, 0x88uLL);
      result = sub_26BE58C10(__dst);
      if (result != 1)
      {
        memmove(v30, v11, 0x88uLL);
        if (sub_26BE58C10(v30) == 1)
        {
          sub_26BE01654();
          swift_allocError();
          v26 = 30;
LABEL_27:
          *v25 = v26;
          *(v25 + 8) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0;
          *(v25 + 112) = 23;
          swift_willThrow();
        }

        v28[6] = v30[6];
        v28[7] = v30[7];
        v29 = v31;
        v28[2] = v30[2];
        v28[3] = v30[3];
        v28[4] = v30[4];
        v28[5] = v30[5];
        v28[0] = v30[0];
        v28[1] = v30[1];
        v12 = sub_26BE592C4(v28);
        v13 = sub_26BE13A3C(v28);
        if (v12 == 1)
        {
          sub_26BE01654();
          swift_allocError();
          v26 = 28;
          goto LABEL_27;
        }

        v14 = v7;
        v15 = v6;
        v16 = v8;
        v17 = v3;
        if ((*(v13 + 47) & 0x20) != 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        if (!*(v33 + 16) || (v19 = *(v33 + 40), sub_26C00B05C(), sub_26C00B08C(), result = sub_26C00B0CC(), v20 = -1 << *(v33 + 32), v21 = result & ~v20, ((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
        {
LABEL_21:
          sub_26BE01654();
          swift_allocError();
          *v23 = 3;
          v24 = 8;
LABEL_23:
          *(v23 + 112) = v24;
          swift_willThrow();
        }

        v22 = ~v20;
        while (*(*(v33 + 48) + 2 * v21) != v18)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v3 = v17;
        v8 = v16;
        v6 = v15;
        v7 = v14;
      }
    }

    if (++v5 == v4)
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t MLS.TreeKEMPublicKey.eachLeaf(_:)(uint64_t result)
{
  v22 = result;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(v1 + 24);
    while (v4 != 0x80000000)
    {
      if (v2 - 1 < 0)
      {
        goto LABEL_19;
      }

      if (v3 > 2 * (v2 - 1))
      {
LABEL_13:
        sub_26BE01654();
        v19 = swift_allocError();
        v21 = 30;
LABEL_14:
        *v20 = v21;
        *(v20 + 8) = 0u;
        *(v20 + 24) = 0u;
        *(v20 + 40) = 0u;
        *(v20 + 56) = 0u;
        *(v20 + 72) = 0u;
        *(v20 + 88) = 0u;
        *(v20 + 104) = 0;
        *(v20 + 112) = 23;
        v43 = v19;
        return swift_willThrow();
      }

      if (*(v5 + 16) > v3)
      {
        v6 = (v5 + 32 + 136 * v3);
        memmove(__dst, v6, 0x88uLL);
        result = sub_26BE58C10(__dst);
        if (result != 1)
        {
          v31 = *v6;
          v7 = v6[1];
          v8 = v6[2];
          v9 = v6[4];
          v34 = v6[3];
          v35 = v9;
          v32 = v7;
          v33 = v8;
          v10 = v6[5];
          v11 = v6[6];
          v12 = v6[7];
          v39 = *(v6 + 16);
          v37 = v11;
          v38 = v12;
          v36 = v10;
          memmove(v40, v6, 0x88uLL);
          if (sub_26BE58C10(v40) == 1)
          {
            goto LABEL_13;
          }

          v29[6] = v40[6];
          v29[7] = v40[7];
          v30 = v41;
          v29[2] = v40[2];
          v29[3] = v40[3];
          v29[4] = v40[4];
          v29[5] = v40[5];
          v29[0] = v40[0];
          v29[1] = v40[1];
          if (sub_26BE592C4(v29) == 1)
          {
            sub_26BE13A3C(v29);
            sub_26BE01654();
            v19 = swift_allocError();
            v21 = 28;
            goto LABEL_14;
          }

          v13 = sub_26BE13A3C(v29);
          v26 = v4;
          v14 = *(v13 + 112);
          v24[6] = *(v13 + 96);
          v24[7] = v14;
          v25 = *(v13 + 128);
          v15 = *(v13 + 48);
          v24[2] = *(v13 + 32);
          v24[3] = v15;
          v16 = *(v13 + 80);
          v24[4] = *(v13 + 64);
          v24[5] = v16;
          v17 = *(v13 + 16);
          v24[0] = *v13;
          v24[1] = v17;
          v27[2] = v33;
          v27[3] = v34;
          v27[0] = v31;
          v27[1] = v32;
          v28 = v39;
          v27[6] = v37;
          v27[7] = v38;
          v27[4] = v35;
          v27[5] = v36;
          sub_26BE59BD8(v27, v23);
          v18 = v43;
          v22(&v26, v24);
          v43 = v18;
          if (v18)
          {
            return sub_26BE2E258(&v31, &qword_28045E4C8, &unk_26C0112A0);
          }

          result = sub_26BE2E258(&v31, &qword_28045E4C8, &unk_26C0112A0);
        }
      }

      ++v4;
      v3 += 2;
      if (v2 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_26BE51800(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = 0;
    v24 = *v1;
    v23 = *(v1 + 1);
    v4 = *(v1 + 3);
    while (1)
    {
      if (v3 == 0x100000000)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      if (v2 - 1 < 0)
      {
        goto LABEL_17;
      }

      if (v3 > 2 * (v2 - 1))
      {
        sub_26BE01654();
        swift_allocError();
        *v11 = 30;
        *(v11 + 8) = 0u;
        *(v11 + 24) = 0u;
        *(v11 + 40) = 0u;
        *(v11 + 56) = 0u;
        *(v11 + 72) = 0u;
        *(v11 + 88) = 0u;
        *(v11 + 104) = 0;
        *(v11 + 112) = 23;
        swift_willThrow();
        return;
      }

      if (*(v4 + 16) > v3)
      {
        memmove(__dst, (v4 + 32 + 136 * v3), 0x88uLL);
        if (sub_26BE58C10(__dst) != 1)
        {
          break;
        }
      }

      v3 += 2;
      if (2 * v2 == v3)
      {
        goto LABEL_12;
      }
    }

    v40 = v24;
    v41 = v23;
    v42 = v2;
    v43 = v4;
    v39 = v3;
    v5 = v55;
    MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v39, &v44);
    if (!v5)
    {
      v35[6] = v50;
      v35[7] = v51;
      v35[2] = v46;
      v35[3] = v47;
      v35[4] = v48;
      v35[5] = v49;
      v35[0] = v44;
      v35[1] = v45;
      v37[6] = v50;
      v37[7] = v51;
      v37[2] = v46;
      v37[3] = v47;
      v37[4] = v48;
      v37[5] = v49;
      v36 = v52;
      v38 = v52;
      v37[0] = v44;
      v37[1] = v45;
      if (sub_26BE592C4(v37) == 1)
      {
        sub_26BE13A3C(v37);
        sub_26BE01654();
        swift_allocError();
        *v6 = 28;
        *(v6 + 8) = 0u;
        *(v6 + 24) = 0u;
        *(v6 + 40) = 0u;
        *(v6 + 56) = 0u;
        *(v6 + 72) = 0u;
        *(v6 + 88) = 0u;
        *(v6 + 104) = 0;
        *(v6 + 112) = 23;
        swift_willThrow();
        sub_26BE13854(v35);
      }

      else
      {
        v12 = sub_26BE13A3C(v37);
        v26 = *v12;
        v13 = *(v12 + 64);
        v15 = *(v12 + 16);
        v14 = *(v12 + 32);
        v29 = *(v12 + 48);
        v30 = v13;
        v27 = v15;
        v28 = v14;
        v17 = *(v12 + 96);
        v16 = *(v12 + 112);
        v18 = *(v12 + 80);
        v34 = *(v12 + 128);
        v32 = v17;
        v33 = v16;
        v31 = v18;
        nullsub_1(&v26);
        v19 = v33;
        *(a1 + 96) = v32;
        *(a1 + 112) = v19;
        *(a1 + 128) = v34;
        v20 = v29;
        *(a1 + 32) = v28;
        *(a1 + 48) = v20;
        v21 = v31;
        *(a1 + 64) = v30;
        *(a1 + 80) = v21;
        v22 = v27;
        *a1 = v26;
        *(a1 + 16) = v22;
      }
    }
  }

  else
  {
LABEL_12:
    sub_26BE59DB4(__dst);
    v7 = __dst[7];
    *(a1 + 96) = __dst[6];
    *(a1 + 112) = v7;
    *(a1 + 128) = v54;
    v8 = __dst[3];
    *(a1 + 32) = __dst[2];
    *(a1 + 48) = v8;
    v9 = __dst[5];
    *(a1 + 64) = __dst[4];
    *(a1 + 80) = v9;
    v10 = __dst[1];
    *a1 = __dst[0];
    *(a1 + 16) = v10;
  }
}

uint64_t MLS.TreeKEMPublicKey.rawRepresentation.getter()
{
  v4 = *(v0 + 24);
  sub_26BE7D80C(&v4);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t MLS.TreeKEMPrivateKey.privateKeyCache.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.TreeKEMPrivateKey.updateSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.TreeKEMPrivateKey() + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.TreeKEMPrivateKey.updateSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.TreeKEMPrivateKey() + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t MLS.TreeKEMPrivateKey.init(ciphersuiteID:index:)@<X0>(_WORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *a3 = *a1;
  *(a3 + 4) = v4;
  v5 = a3 + *(type metadata accessor for MLS.TreeKEMPrivateKey() + 32);
  sub_26C009C5C();
  v6 = MEMORY[0x277D84F90];
  *(a3 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
  result = sub_26C004BCC(v6);
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_26BE51E2C@<X0>(unsigned __int16 *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v94 = a4;
  v110 = sub_26C009F3C();
  v97 = *(v110 - 8);
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_26C009EDC();
  v99 = *(v108 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_26C009EEC();
  v100 = *(v106 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_26C009EAC();
  v96 = *(v104 - 8);
  v17 = *(v96 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v18) = *a2;
  v112 = *a1;
  *a6 = v112;
  *(a6 + 4) = v18;
  v19 = *(type metadata accessor for MLS.TreeKEMPrivateKey() + 32);
  v20 = sub_26C009C8C();
  v90 = *(v20 - 8);
  v21 = *(v90 + 16);
  v92 = a5;
  v91 = v20;
  v21(a6 + v19, a5);
  v22 = MEMORY[0x277D84F90];
  *(a6 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
  v23 = 0;
  *(a6 + 16) = sub_26C004BCC(v22);
  v113 = a3;
  v24 = a3 + 64;
  v25 = 1 << *(a3 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a3 + 64);
  v28 = (v25 + 63) >> 6;
  v111 = a6;
  v102 = v24;
  v101 = v28;
LABEL_6:
  if (v27)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      v54 = 0;
      v55 = v94 + 64;
      v56 = 1 << *(v94 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v94 + 64);
      v59 = (v56 + 63) >> 6;
      v93 = *MEMORY[0x277CC5450];
      v101 = (v100 + 104);
      LODWORD(v100) = *MEMORY[0x277CC5438];
      v99 += 104;
      v98 = *MEMORY[0x277CC5460];
      v97 += 104;
      v96 += 32;
      LODWORD(v102) = *MEMORY[0x277CC5458];
      v95 = v94 + 64;
LABEL_27:
      if (!v58)
      {
        if (v59 <= v54 + 1)
        {
          v62 = v54 + 1;
        }

        else
        {
          v62 = v59;
        }

        v63 = v62 - 1;
        while (1)
        {
          v61 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v61 >= v59)
          {
            v58 = 0;
            v116 = 0u;
            v117 = 0u;
            v54 = v63;
            v115 = 0u;
            goto LABEL_38;
          }

          v58 = *(v55 + 8 * v61);
          ++v54;
          if (v58)
          {
            v54 = v61;
            goto LABEL_37;
          }
        }

        __break(1u);
        break;
      }

      v61 = v54;
LABEL_37:
      v64 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v65 = v64 | (v61 << 6);
      v66 = *(*(v94 + 48) + 4 * v65);
      sub_26BE038A8(*(v94 + 56) + 40 * v65, v114);
      LODWORD(v115) = v66;
      sub_26BE03890(v114, &v115 + 8);
LABEL_38:
      v118[1] = v116;
      v118[2] = v117;
      v118[0] = v115;
      if (!v117)
      {
        (*(v90 + 8))(v92, v91);
      }

      v67 = a6;
      LODWORD(v113) = v118[0];
      sub_26BE03890((v118 + 8), &v115);
      v68 = v102;
      if (v112 != 1)
      {
        if (v112 != 2)
        {
          goto LABEL_61;
        }

        v68 = v93;
      }

      (*v101)(v105, v68, v106);
      (*v99)(v107, v100, v108);
      (*v97)(v109, v98, v110);
      v69 = v103;
      sub_26C009E7C();
      v70 = type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      v73 = swift_allocObject();
      (*v96)(v73 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v69, v104);
      *(v73 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
      sub_26BE038A8(&v115, v114);
      v74 = *(v67 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = *(v67 + 16);
      v76 = v119;
      v77 = v113;
      v79 = sub_26BEBB414(v113);
      v80 = v76[2];
      v81 = (v78 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_57;
      }

      v83 = v78;
      if (v76[3] >= v82)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v86 = v119;
          if ((v78 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_26BE6DD70();
          v86 = v119;
          if ((v83 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_26BE69F98(v82, isUniquelyReferenced_nonNull_native);
        v84 = sub_26BEBB414(v77);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_62;
        }

        v79 = v84;
        v86 = v119;
        if ((v83 & 1) == 0)
        {
LABEL_49:
          v86[(v79 >> 6) + 8] |= 1 << v79;
          *(v86[6] + 4 * v79) = v77;
          sub_26BE03890(v114, v86[7] + 40 * v79);

          __swift_destroy_boxed_opaque_existential_1(&v115);
          v87 = v86[2];
          v52 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v52)
          {
            goto LABEL_58;
          }

          v86[2] = v88;
          goto LABEL_26;
        }
      }

      v60 = (v86[7] + 40 * v79);
      __swift_destroy_boxed_opaque_existential_1(v60);
      sub_26BE03890(v114, v60);

      __swift_destroy_boxed_opaque_existential_1(&v115);
LABEL_26:
      a6 = v111;
      *(v111 + 16) = v86;
      v55 = v95;
      goto LABEL_27;
    }

    v27 = *(v24 + 8 * v32);
    ++v23;
    if (v27)
    {
      v23 = v32;
LABEL_11:
      v33 = __clz(__rbit64(v27)) | (v23 << 6);
      v34 = *(*(v113 + 48) + 4 * v33);
      v35 = (*(v113 + 56) + 16 * v33);
      v37 = *v35;
      v36 = v35[1];
      sub_26BE00608(*v35, v36);
      sub_26BE00608(v37, v36);
      v38 = *(a6 + 8);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v118[0] = *(a6 + 8);
      v40 = *&v118[0];
      v42 = sub_26BEBB414(v34);
      v43 = *(v40 + 16);
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_59;
      }

      v46 = v41;
      if (*(v40 + 24) >= v45)
      {
        if (v39)
        {
          v49 = *&v118[0];
          if ((v41 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_4;
        }

        sub_26BE6DC08();
        v49 = *&v118[0];
        if (v46)
        {
          goto LABEL_4;
        }

LABEL_18:
        v49[(v42 >> 6) + 8] |= 1 << v42;
        *(v49[6] + 4 * v42) = v34;
        v50 = (v49[7] + 16 * v42);
        *v50 = v37;
        v50[1] = v36;
        sub_26BE00258(v37, v36);
        v51 = v49[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (!v52)
        {
          v49[2] = v53;
          goto LABEL_5;
        }

        goto LABEL_60;
      }

      sub_26BE69D04(v45, v39);
      v47 = sub_26BEBB414(v34);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_62;
      }

      v42 = v47;
      v49 = *&v118[0];
      if ((v46 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_4:
      v29 = (v49[7] + 16 * v42);
      v30 = *v29;
      v31 = v29[1];
      *v29 = v37;
      v29[1] = v36;
      sub_26BE00258(v30, v31);
      sub_26BE00258(v37, v36);
LABEL_5:
      v27 &= v27 - 1;
      a6 = v111;
      *(v111 + 8) = v49;
      v24 = v102;
      v28 = v101;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

unint64_t MLS.TreeKEMPrivateKey.pathSecretsInsert(index:secret:)(int *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  sub_26BE00608(a2, a3);
  v7 = *(v3 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 8);
  result = sub_26BE56E54(a2, a3, v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 8) = v10;
  return result;
}

int *MLS.TreeKEMPrivateKey.privateKeyCacheInsert(index:key:)(int *result, uint64_t a2)
{
  v3 = *v2;
  if ((v3 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    v7 = v3 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v7, v6);
    sub_26BE038A8(a2, v6);
    sub_26BE4D0C0(v6, v5);
  }

  return result;
}

uint64_t sub_26BE528E8(__int16 *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v79 = sub_26C009C8C();
  v68 = *(v79 - 8);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x28223BE20](v79);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v72 = &v65 - v15;
  result = MEMORY[0x28223BE20](v14);
  v78 = &v65 - v19;
  v20 = *v6;
  if ((v20 - 3) < 0xFFFFFFFE)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  *&v80 = a3;
  *(&v80 + 1) = a4;
  v66 = v18;
  v67 = v17;
  v21 = *a1;
  v22 = *(a1 + 1);
  v23 = *(a1 + 4);
  v24 = *(a1 + 3);
  v25 = *a2;
  LOBYTE(v82) = v20 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v82, &v83);
  v26 = v83;
  v74 = v84;
  v75 = *(&v83 + 1);
  v27 = v85;
  v73 = *(&v84 + 1);
  LOWORD(v83) = v21;
  *(&v83 + 1) = v22;
  LODWORD(v84) = v23;
  *(&v84 + 1) = v24;
  v87 = v25;
  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v87, &v82);
  if (v5)
  {
  }

  v77 = 0;
  v71 = v27;
  v28 = v82;
  sub_26BF92810(v25, &v83);
  sub_26BE2E258(&v83, &qword_28045E6A8, &qword_26C0112B0);
  v29 = *(&v80 + 1);
  v30 = v80;
  sub_26BE00608(v80, *(&v80 + 1));
  v31 = *(v6 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v83 = *(v6 + 1);
  sub_26BE56E54(v30, v29, v25, isUniquelyReferenced_nonNull_native);
  *(v6 + 1) = v83;
  v70 = v28;
  v33 = *(v28 + 16);
  sub_26BE00608(v30, v29);
  v69 = v33;
  if (v33)
  {
    v81 = 0;
    v76 = (v68 + 8);
    v34 = 32;
    v36 = v71;
    v35 = v72;
    v38 = v73;
    v37 = v74;
    v86 = v26;
    while (1)
    {
      LOBYTE(v83) = v26;
      *(&v83 + 1) = v75;
      *&v84 = v37;
      *(&v84 + 1) = v38;
      v85 = v36;
      v41 = *(&v80 + 1);
      v42 = v80;
      v82 = v80;
      sub_26BE00608(v80, *(&v80 + 1));
      sub_26C009C5C();
      v43 = v77;
      MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v35, 1752457584, 0xE400000000000000, v78);
      if (v43)
      {
        (*v76)(v35, v79);
        sub_26BE00258(v42, v41);
      }

      v44 = *v76;
      (*v76)(v35, v79);
      sub_26C009C3C();
      result = sub_26BE00258(v42, v41);
      if (v81 >= *(v70 + 16))
      {
        break;
      }

      v77 = 0;
      v45 = v83;
      v46 = *(v70 + v34);
      sub_26BE00608(v83, *(&v83 + 1));
      v47 = *(v6 + 1);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v83 = *(v6 + 1);
      v80 = v45;
      sub_26BE56E54(v45, *(&v45 + 1), v46, v48);
      *(v6 + 1) = v83;
      v49 = *(v6 + 2);
      v50 = sub_26BEBB414(v46);
      if (v51)
      {
        v52 = v50;
        v53 = *(v6 + 2);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v55 = *(v6 + 2);
        *&v82 = v55;
        LOBYTE(v26) = v86;
        v38 = v73;
        if (!v54)
        {
          sub_26BE6DD70();
          v55 = v82;
        }

        sub_26BE03890((*(v55 + 56) + 40 * v52), &v83);
        sub_26C000A2C(v52, v55);
        v44(v78, v79);
        *(v6 + 2) = v55;
      }

      else
      {
        v44(v78, v79);
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        LOBYTE(v26) = v86;
        v38 = v73;
      }

      v39 = v81 + 1;
      sub_26BE2E258(&v83, &qword_28045E6A8, &qword_26C0112B0);
      v34 += 16;
      v81 = v39;
      v40 = v69 == v39;
      v36 = v71;
      v35 = v72;
      v37 = v74;
      if (v40)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v36 = v71;
  v38 = v73;
  v37 = v74;
LABEL_15:

  LOBYTE(v83) = v26;
  *(&v83 + 1) = v75;
  *&v84 = v37;
  *(&v84 + 1) = v38;
  v85 = v36;
  v56 = *(&v80 + 1);
  v57 = v80;
  v82 = v80;
  sub_26BE00608(v80, *(&v80 + 1));
  v58 = v66;
  sub_26C009C5C();
  v59 = v67;
  v60 = v77;
  MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v58, 1752457584, 0xE400000000000000, v67);
  if (v60)
  {
    (*(v68 + 8))(v58, v79);
    sub_26BE00258(v57, v56);
  }

  else
  {
    v61 = v68;
    v62 = v58;
    v63 = v79;
    (*(v68 + 8))(v62, v79);
    sub_26BE00258(v57, v56);

    v64 = type metadata accessor for MLS.TreeKEMPrivateKey();
    return (*(v61 + 40))(v6 + *(v64 + 32), v59, v63);
  }
}

uint64_t MLS.TreeKEMPrivateKey.sharedPathSecret(to:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 4);
  v20[0] = *a1;
  v20[1] = v5;
  result = sub_26BE7BE10(v20, &v21);
  if (!v3)
  {
    v7 = 0;
    v8 = v21;
    v9 = *(v2 + 8);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = v7;
LABEL_11:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v14 << 6);
      if (*(*(v9 + 48) + 4 * v16) == v21)
      {
        v17 = (*(v9 + 56) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];

        sub_26BE00608(v19, v18);

        *a2 = v8;
        *(a2 + 8) = v19;
        *(a2 + 16) = v18;
        *(a2 + 24) = 1;
        return result;
      }
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        *a2 = v21;
        *(a2 + 8) = xmmword_26C00BBD0;
        *(a2 + 24) = 0;
        return result;
      }

      v12 = *(v9 + 64 + 8 * v14);
      ++v7;
      if (v12)
      {
        v7 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26BE5305C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    if (*(v4 + 16))
    {
      v5 = sub_26BEBB414(2 * v3);
      if (v6)
      {
        sub_26BE038A8(*(v4 + 56) + 40 * v5, a1);
      }

      else
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }
}

void MLS.TreeKEMPrivateKey.decap(from:pubKey:context:path:exceptLeaves:)(int *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
LABEL_41:
    v53 = a2;
    v61 = v12;
    v62 = v6;
    v19 = a1;
    __swift_destroy_boxed_opaque_existential_1(&v65);
    LOWORD(v65) = v13;
    v66 = v14;
    v67 = v9;
    v68 = v10;
    v74 = v73;
    a6 = v53;
    sub_26BE528E8(&v65, &v74, v19, v53);
    if (v11 || (LOWORD(v65) = v13, v66 = v14, v67 = v9, v68 = v10, (MLS.TreeKEMPrivateKey.consistent(_:)(&v65) & 1) != 0))
    {
      sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
      sub_26BE00258(v19, v53);
      sub_26BE00258(v61, v63);
      sub_26BE00258(v64, v6);
      return;
    }

    goto LABEL_46;
  }

  v64 = a3;
  v13 = *a2;
  v14 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v18 = *(a5 + 136);
  LOWORD(v70) = *a2;
  *(&v70 + 1) = v14;
  LODWORD(v71) = v9;
  *(&v71 + 1) = v10;
  v74 = 2 * v15;
  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v74, &v65);
  if (v8)
  {
    return;
  }

  v62 = a4;
  v19 = *(v65 + 16);
  if (v19 != *(v18 + 16))
  {
    goto LABEL_15;
  }

  v20 = *(v7 + 4);
  if (v20 < 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    sub_26BE01654();
    swift_allocError();
    *v54 = 21;
    v54[112] = 0;
    swift_willThrow();
    sub_26BE00258(v19, a6);
    sub_26BE00258(v61, v63);
    sub_26BE00258(v64, v62);
    sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
    return;
  }

  v60 = v7;
  v63 = v65;
  v21 = 0;
  if (!v19)
  {
    v73 = 0;
    goto LABEL_14;
  }

  v22 = 2 * v20;
  v23 = (v65 + 40);
  while (1)
  {
    v24 = *(v23 - 2);
    v25 = __clz(__rbit32(~v24));
    v26 = v25 > 0x1E;
    LOBYTE(v25) = v25 + 1;
    v73 = v24;
    v27 = v24 >> v25;
    v28 = v22 >> v25;
    if (v26 || v28 == v27)
    {
      break;
    }

    ++v21;
    v23 += 2;
    if (v19 == v21)
    {
      goto LABEL_14;
    }
  }

  v30 = *v23;

  if (v21 == v19)
  {
    goto LABEL_14;
  }

  a6 = sub_26BE5A08C(v30, a6);

  if (v21 < *(v18 + 16))
  {
    v32 = *(a6 + 16);
    v33 = v18 + 24 * v21;
    v35 = *(v33 + 48);
    v34 = v33 + 48;
    if (v32 == *(v35 + 16))
    {
      if (!v32)
      {
LABEL_35:

        sub_26BE01654();
        swift_allocError();
        *v43 = 23;
        *(v43 + 8) = 0u;
        *(v43 + 24) = 0u;
        *(v43 + 40) = 0u;
        *(v43 + 56) = 0u;
        *(v43 + 72) = 0u;
        *(v43 + 88) = 0u;
        *(v43 + 104) = 0;
        *(v43 + 112) = 23;
        goto LABEL_16;
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v60 + 8);
      v61 = *(v60 + 16);
      v58 = a6;
      v59 = a6 + 32;
      v55 = v34;
      v56 = v38;
      v57 = *(a6 + 16);
      while (v37 < *(a6 + 16))
      {
        v19 = *(v59 + v36);
        if (*(v38 + 16))
        {
          sub_26BEBB414(*(v59 + v36));
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        if (*(v61 + 16))
        {
          v41 = sub_26BEBB414(v19);
          if (v42)
          {
            sub_26BE038A8(*(v61 + 56) + 40 * v41, &v70);
            sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
LABEL_34:
            if (v57 == v37)
            {
              goto LABEL_35;
            }

            if (v37 >= *(v58 + 16))
            {
              goto LABEL_48;
            }

            v44 = *(v59 + v36);

            LODWORD(v65) = v44;
            MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&v65, &v70);
            if (v37 >= *(*v55 + 16))
            {
              goto LABEL_49;
            }

            v45 = (*v55 + 8 * v36);
            v47 = v45[6];
            v46 = v45[7];
            v48 = v45[4];
            v49 = v45[5];
            sub_26BE2E1F0(&v70, &v65, &qword_28045E6A8, &qword_26C0112B0);
            if (v68)
            {
              sub_26BE00608(v47, v46);
              sub_26BE00608(v48, v49);

              v63 = v49;
              v12 = v48;
              v51 = v68;
              v50 = v69;
              __swift_project_boxed_opaque_existential_1(&v65, v68);
              v52 = v64;
              v64 = v47;
              a1 = (*(v50 + 24))(0x6150657461647055, 0xEE0065646F4E6874, v52, v62, v47, v46, v12, v63, v51, v50);
              v6 = v46;
              v11 = 0;
              goto LABEL_41;
            }

            goto LABEL_50;
          }
        }

        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        sub_26BE2E258(&v70, &qword_28045E6A8, &qword_26C0112B0);
        if (v40)
        {
          goto LABEL_34;
        }

        ++v37;
        v36 += 4;
        a6 = v58;
        v38 = v56;
        if (v57 == v37)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_45;
    }

LABEL_14:

LABEL_15:

    sub_26BE01654();
    swift_allocError();
    *v31 = 25;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0u;
    *(v31 + 88) = 0u;
    *(v31 + 104) = 0;
    *(v31 + 112) = 23;
LABEL_16:
    swift_willThrow();
    return;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t MLS.TreeKEMPrivateKey.consistent(_:)(unsigned __int16 *a1)
{
  if (*a1 != *v1)
  {
    v15 = 0;
    return v15 & 1;
  }

  v101 = v2;
  v3 = *(v1 + 2);
  v4 = v3 + 64;
  v5 = *(a1 + 3);
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = *(a1 + 4);
  v10 = (v6 + 63) >> 6;
  v11 = v9 != 0;
  v12 = v9 - 1;
  v13 = !v11;
  v137 = v12;
  v138 = v13;
  v106 = 2 * v12;
  v105 = v5 + 32;

  v14 = 0;
  v102 = v3 + 64;
  v103 = v3;
  v104 = v5;
  while (1)
  {
    if (!v8)
    {
      if (v10 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = v10;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v18 >= v10)
        {
          v8 = 0;
          v131 = 0u;
          v132 = 0u;
          v14 = v20;
          v130 = 0u;
          goto LABEL_24;
        }

        v8 = *(v4 + 8 * v18);
        ++v14;
        if (v8)
        {
          v14 = v18;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_93:

      goto LABEL_94;
    }

    v18 = v14;
LABEL_23:
    v21 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v22 = v21 | (v18 << 6);
    v23 = *(*(v3 + 48) + 4 * v22);
    sub_26BE038A8(*(v3 + 56) + 40 * v22, &v121);
    LODWORD(v130) = v23;
    sub_26BE03890(&v121, &v130 + 8);
LABEL_24:
    v136[1] = v131;
    v136[2] = v132;
    v136[0] = v130;
    if (!v132)
    {

      v15 = 1;
      return v15 & 1;
    }

    v24 = LODWORD(v136[0]);
    result = sub_26BE03890((v136 + 8), v133);
    if (v138)
    {
      break;
    }

    if (v137 < 0)
    {
      goto LABEL_97;
    }

    if (v24 > v106)
    {
LABEL_88:
      sub_26BE01654();
      swift_allocError();
      *v89 = 30;
      *(v89 + 8) = 0u;
      *(v89 + 24) = 0u;
      *(v89 + 40) = 0u;
      *(v89 + 56) = 0u;
      *(v89 + 72) = 0u;
      *(v89 + 88) = 0u;
      *(v89 + 104) = 0;
      *(v89 + 112) = 23;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v133);
      return v15 & 1;
    }

    if (*(v5 + 16) <= v24)
    {
      goto LABEL_12;
    }

    v26 = (v105 + 136 * v24);
    memmove(&v130, v26, 0x88uLL);
    if (sub_26BE58C10(&v130) == 1)
    {
      goto LABEL_12;
    }

    v119[0] = *v26;
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[4];
    v119[3] = v26[3];
    v119[4] = v29;
    v119[1] = v27;
    v119[2] = v28;
    v30 = v26[5];
    v31 = v26[6];
    v32 = v26[7];
    v120 = *(v26 + 16);
    v119[6] = v31;
    v119[7] = v32;
    v119[5] = v30;
    memmove(&v121, v26, 0x88uLL);
    if (sub_26BE58C10(&v121) == 1)
    {
      goto LABEL_88;
    }

    v117[6] = v127;
    v117[7] = v128;
    v118 = v129;
    v117[2] = v123;
    v117[3] = v124;
    v117[4] = v125;
    v117[5] = v126;
    v117[0] = v121;
    v117[1] = v122;
    if (sub_26BE592C4(v117) == 1)
    {
      v33 = sub_26BE13A3C(v117);
      v34 = *v33;
      v99 = v33[1];
      v100 = v34;
      v114 = v127;
      v115 = v128;
      v116 = v129;
      v110 = v123;
      v111 = v124;
      v112 = v125;
      v113 = v126;
      v108 = v121;
      v109 = v122;
      v35 = sub_26BE13A3C(&v108);
      v36 = *v35;
      v93 = v35[1];
      v37 = v35[2];
      v95 = v35[3];
      v96 = v37;
      v97 = v35[4];
      v38 = v134;
      v39 = v135;
      v94 = __swift_project_boxed_opaque_existential_1(v133, v134);
      v40 = *(v39 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v90 = &v90;
      v98 = *(AssociatedTypeWitness - 8);
      v41 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v43 = &v90 - v42;
      v91 = *(v40 + 32);
      sub_26BE00608(v36, v93);
      sub_26BE00608(v96, v95);

      v91(v38, v40);
      v44 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v46 = (*(AssociatedConformanceWitness + 16))(v44, AssociatedConformanceWitness);
      v48 = v47;
      result = (*(v98 + 8))(v43, v44);
      v49 = v99 >> 62;
      v50 = v48 >> 62;
      if (v99 >> 62 == 3)
      {
        v51 = 0;
        v4 = v102;
        v5 = v104;
        v52 = v100;
        if (!v100 && v99 == 0xC000000000000000 && v48 >> 62 == 3)
        {
          v51 = 0;
          if (!v46 && v48 == 0xC000000000000000)
          {
            v16 = 0;
            v17 = 0xC000000000000000;
            goto LABEL_11;
          }
        }

LABEL_57:
        if (v50 <= 1)
        {
LABEL_58:
          if (v50)
          {
            LODWORD(v74) = HIDWORD(v46) - v46;
            if (__OFSUB__(HIDWORD(v46), v46))
            {
              goto LABEL_100;
            }

            v74 = v74;
          }

          else
          {
            v74 = BYTE6(v48);
          }

          goto LABEL_67;
        }
      }

      else
      {
        v52 = v100;
        v4 = v102;
        if (v49 == 2)
        {
          v72 = *(v100 + 16);
          v71 = *(v100 + 24);
          v73 = __OFSUB__(v71, v72);
          v51 = v71 - v72;
          v5 = v104;
          if (v73)
          {
            goto LABEL_102;
          }

          goto LABEL_57;
        }

        v5 = v104;
        if (v49 == 1)
        {
          LODWORD(v51) = HIDWORD(v100) - v100;
          if (__OFSUB__(HIDWORD(v100), v100))
          {
            goto LABEL_104;
          }

          v51 = v51;
          if (v50 <= 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v51 = BYTE6(v99);
          if (v50 <= 1)
          {
            goto LABEL_58;
          }
        }
      }

      if (v50 != 2)
      {
        if (v51)
        {
          goto LABEL_90;
        }

LABEL_10:
        v16 = v46;
        v17 = v48;
LABEL_11:
        sub_26BE00258(v16, v17);
        sub_26BE2E258(v119, &qword_28045E4C8, &unk_26C0112A0);
        v3 = v103;
        goto LABEL_12;
      }

      v76 = *(v46 + 16);
      v75 = *(v46 + 24);
      v73 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v73)
      {
        goto LABEL_99;
      }

LABEL_67:
      if (v51 == v74)
      {
        if (v51 < 1)
        {
          goto LABEL_10;
        }

        v77 = v99;
        sub_26BE00608(v46, v48);
        v78 = v101;
        LOBYTE(v77) = sub_26BECB6A4(v52, v77, v46, v48);
        v101 = v78;
        sub_26BE2E258(v119, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE00258(v46, v48);
        if ((v77 & 1) == 0)
        {
          goto LABEL_93;
        }

        v3 = v103;
        v5 = v104;
        goto LABEL_12;
      }

LABEL_90:

      sub_26BE00258(v46, v48);
      sub_26BE2E258(v119, &qword_28045E4C8, &unk_26C0112A0);
LABEL_94:
      __swift_destroy_boxed_opaque_existential_1(v133);
      v15 = 0;
      return v15 & 1;
    }

    v53 = sub_26BE13A3C(v117);
    v114 = v127;
    v115 = v128;
    v116 = v129;
    v110 = v123;
    v111 = v124;
    v112 = v125;
    v113 = v126;
    v108 = v121;
    v109 = v122;
    v97 = sub_26BE13A3C(&v108);
    v54 = *v53;
    v99 = v53[1];
    v100 = v54;
    v56 = v134;
    v55 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    v57 = *(v55 + 8);
    v96 = swift_getAssociatedTypeWitness();
    v94 = &v90;
    v98 = *(v96 - 8);
    v58 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v96);
    v60 = &v90 - v59;
    v95 = *(v57 + 32);
    sub_26BE00758(v97, &v107);
    v95(v56, v57);
    v61 = v96;
    v62 = swift_getAssociatedConformanceWitness();
    v63 = (*(v62 + 16))(v61, v62);
    v65 = v64;
    result = (*(v98 + 8))(v60, v61);
    v66 = v99 >> 62;
    v67 = v65 >> 62;
    if (v99 >> 62 == 3)
    {
      v68 = 0;
      v5 = v104;
      if (v100)
      {
        goto LABEL_63;
      }

      v3 = v103;
      if (v99 == 0xC000000000000000 && v65 >> 62 == 3)
      {
        v68 = 0;
        if (!v63 && v65 == 0xC000000000000000)
        {
          v69 = 0;
          v70 = 0xC000000000000000;
          goto LABEL_87;
        }
      }
    }

    else
    {
      v5 = v104;
      if (!v66)
      {
        v68 = BYTE6(v99);
LABEL_63:
        v3 = v103;
        goto LABEL_72;
      }

      if (v66 == 1)
      {
        LODWORD(v68) = HIDWORD(v100) - v100;
        v3 = v103;
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          goto LABEL_105;
        }

        v68 = v68;
      }

      else
      {
        v80 = *(v100 + 16);
        v79 = *(v100 + 24);
        v73 = __OFSUB__(v79, v80);
        v68 = v79 - v80;
        v3 = v103;
        if (v73)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_72:
    if (v67 > 1)
    {
      if (v67 != 2)
      {
        if (v68)
        {
LABEL_91:

          sub_26BE00258(v63, v65);
          sub_26BE2E258(v119, &qword_28045E4C8, &unk_26C0112A0);
          goto LABEL_94;
        }

LABEL_86:
        v69 = v63;
        v70 = v65;
LABEL_87:
        sub_26BE00258(v69, v70);
        sub_26BE2E258(v119, &qword_28045E4C8, &unk_26C0112A0);
        v4 = v102;
        goto LABEL_12;
      }

      v83 = *(v63 + 16);
      v82 = *(v63 + 24);
      v73 = __OFSUB__(v82, v83);
      v81 = v82 - v83;
      if (v73)
      {
        goto LABEL_101;
      }
    }

    else if (v67)
    {
      LODWORD(v81) = HIDWORD(v63) - v63;
      if (__OFSUB__(HIDWORD(v63), v63))
      {
        goto LABEL_98;
      }

      v81 = v81;
    }

    else
    {
      v81 = BYTE6(v65);
    }

    if (v68 != v81)
    {
      goto LABEL_91;
    }

    if (v68 < 1)
    {
      goto LABEL_86;
    }

    v84 = v65;
    v85 = v63;
    v86 = v63;
    v87 = v99;
    sub_26BE00608(v86, v84);
    v88 = v101;
    LOBYTE(v87) = sub_26BECB6A4(v100, v87, v85, v84);
    v101 = v88;
    sub_26BE2E258(v119, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE00258(v85, v84);
    if ((v87 & 1) == 0)
    {
      goto LABEL_93;
    }

    v4 = v102;
    v5 = v104;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v133);
  }

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
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_26BE541FC(uint64_t result)
{
  v2 = *result - 1;
  if (!*result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v2 < 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = 2 * v2;
  v5 = *(v1 + 8);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(v1 + 8);

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = *(*(v5 + 48) + ((v11 << 8) | (4 * v13)));
      if (v4 < v14)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEBFB0(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v37 = v17 + 1;
      v19 = v12;
      v20 = *(v12 + 16);
      result = sub_26BEEBFB0((v16 > 1), v17 + 1, 1, v19);
      v18 = v37;
      v17 = v20;
      v12 = result;
    }

    *(v12 + 16) = v18;
    *(v12 + 4 * v17 + 32) = v14;
  }

  while (v8);
  while (1)
  {
LABEL_8:
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v15 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v15);
    ++v11;
    if (v8)
    {
      v11 = v15;
      goto LABEL_6;
    }
  }

  v21 = *(v12 + 16);
  if (v21)
  {
    v22 = 32;
    do
    {
      v23 = *(v12 + v22);
      v24 = sub_26BEBB414(v23);
      if (v25)
      {
        v26 = v24;
        v27 = *(v3 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v3 + 8);
        *&v38[0] = v29;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26BE6DC08();
          v29 = *&v38[0];
        }

        sub_26BE00258(*(*(v29 + 56) + 16 * v26), *(*(v29 + 56) + 16 * v26 + 8));
        sub_26C000898(v26, v29);
        *(v3 + 8) = v29;
      }

      v30 = *(v3 + 16);
      v31 = sub_26BEBB414(v23);
      if (v32)
      {
        v33 = v31;
        v34 = *(v3 + 16);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v3 + 16);
        v40 = v36;
        if (!v35)
        {
          sub_26BE6DD70();
          v36 = v40;
        }

        sub_26BE03890((*(v36 + 56) + 40 * v33), v38);
        sub_26C000A2C(v33, v36);
        *(v3 + 16) = v36;
      }

      else
      {
        v39 = 0;
        memset(v38, 0, sizeof(v38));
      }

      sub_26BE2E258(v38, &qword_28045E6A8, &qword_26C0112B0);
      v22 += 4;
      --v21;
    }

    while (v21);
  }
}

uint64_t sub_26BE54498@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v63 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_8;
  }

  v39 = v5;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v7, v6);
  sub_26BF30764(v3, &v51);
  if (v2)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
    swift_willThrow();
    goto LABEL_4;
  }

  if (BYTE8(v51))
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v9 = v6;
    v10 = v7;
    v3[2] = v8;
LABEL_7:
    sub_26BE00258(v10, v9);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    goto LABEL_9;
  }

  v38 = v8;
  v14 = v51;
  sub_26BE00258(v7, v6);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    v8 = v38;
    goto LABEL_4;
  }

  v16 = sub_26BF2A44C(v14);
  if (v17 >> 60 == 15)
  {
    v10 = *v3;
    v9 = v3[1];
    v8 = v38;
    goto LABEL_7;
  }

  v60 = v16;
  v61 = v17;
  v62 = v18;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = *(v16 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else if (v20)
    {
      v21 = v16 >> 32;
    }

    else
    {
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v18);
    v23 = v21 - v18;
    if (v22)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    if (v23 < 1)
    {
      break;
    }

    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_55;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v16 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_32:
      if (v25 < v24)
      {
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v20 == 2)
    {
      v25 = *(v16 + 24);
      goto LABEL_32;
    }

    if (v24 > 0)
    {
LABEL_45:
      sub_26BE01600();
      swift_allocError();
      *v36 = 1;
      goto LABEL_53;
    }

LABEL_35:
    *&v42 = v16;
    *(&v42 + 1) = v17;
    if (v24 < v18)
    {
      goto LABEL_56;
    }

    *&v40[0] = v18;
    *(&v40[0] + 1) = v18 + 1;
    sub_26BE00608(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v42, *(&v42 + 1));
    v62 = v24;
    sub_26BE2E2B8(&v42);
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v51 = v42;
    v52 = v43;
    sub_26BE2E1F0(&v42, v40, &qword_28045E4C8, &unk_26C0112A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26BEEB900(0, v19[2] + 1, 1, v19);
    }

    v27 = v19[2];
    v26 = v19[3];
    if (v27 >= v26 >> 1)
    {
      v19 = sub_26BEEB900((v26 > 1), v27 + 1, 1, v19);
    }

    v40[6] = v57;
    v40[7] = v58;
    v41 = v59;
    v40[2] = v53;
    v40[3] = v54;
    v40[4] = v55;
    v40[5] = v56;
    v40[0] = v51;
    v40[1] = v52;
    sub_26BE2E258(v40, &qword_28045E4C8, &unk_26C0112A0);
    v19[2] = v27 + 1;
    v28 = &v19[17 * v27];
    *(v28 + 2) = v42;
    v29 = v46;
    v31 = v43;
    v30 = v44;
    *(v28 + 5) = v45;
    *(v28 + 6) = v29;
    *(v28 + 3) = v31;
    *(v28 + 4) = v30;
    v33 = v48;
    v32 = v49;
    v34 = v47;
    v28[20] = v50;
    *(v28 + 8) = v33;
    *(v28 + 9) = v32;
    *(v28 + 7) = v34;
    v16 = v60;
    v17 = v61;
    v18 = v62;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v35 = *(v16 + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else if (v20)
  {
    v35 = v16 >> 32;
  }

  else
  {
    v35 = BYTE6(v17);
  }

  if (__OFSUB__(v35, v18))
  {
    goto LABEL_57;
  }

  if (v35 == v18)
  {
    sub_26BE00258(v16, v17);
    sub_26BE00258(v7, v6);
    LOWORD(v42) = v39;
    *&v51 = v19;
    result = MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v42, &v51, a1);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v37 = 0;
    v37[112] = 1;
LABEL_53:
    swift_willThrow();

    sub_26BE00258(v60, v61);
    v8 = v38;
LABEL_4:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
LABEL_9:
    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE54A40(unsigned __int16 *a1)
{
  v106 = *MEMORY[0x277D85DE8];
  LOWORD(v99) = bswap32(*a1) >> 16;
  v3 = MEMORY[0x277D838B0];
  v4 = MEMORY[0x277CC9C18];
  v104 = MEMORY[0x277D838B0];
  v105 = MEMORY[0x277CC9C18];
  v102 = &v99;
  v103 = &v99 + 2;
  v5 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x277D838B0]);
  v7 = *v5;
  v6 = v5[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v102);
  LODWORD(v99) = bswap32(*(a1 + 1));
  v104 = v3;
  v105 = v4;
  v102 = &v99;
  v103 = &v99 + 4;
  v8 = a1;
  v9 = __swift_project_boxed_opaque_existential_1(&v102, v3);
  v11 = *v9;
  v10 = v9[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v102);
  v12 = a1 + *(type metadata accessor for MLS.TreeKEMPrivateKey() + 32);
  sub_26C009C3C();
  v13 = v102;
  v14 = v103;
  v15 = v103 >> 62;
  if ((v103 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v18 = *(v102 + 2);
    v17 = *(v102 + 3);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v103);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v13), v13))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  v16 = HIDWORD(v13) - v13;
LABEL_10:
  v19 = sub_26BF30414(v16);
  if (v1)
  {
    v20 = v13;
    v21 = v14;
    goto LABEL_12;
  }

  v24 = v19;
  sub_26BE11228(v13, v14);
  sub_26BE00258(v13, v14);
  v25 = v24 + v16;
  if (__OFADD__(v24, v16))
  {
    goto LABEL_90;
  }

  v26 = v25 + 6;
  if (__OFADD__(v25, 6))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = *(v8 + 1);
  *&v99 = bswap64(*(v27 + 16));
  v28 = MEMORY[0x277D838B0];
  v104 = MEMORY[0x277D838B0];
  v105 = MEMORY[0x277CC9C18];
  v102 = &v99;
  v103 = &v99 + 8;
  v29 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x277D838B0]);
  v31 = *v29;
  v30 = v29[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v102);
  v32 = *(v27 + 16);
  v94 = v27;
  v90 = v26;
  if (v32)
  {
    v33 = sub_26BE3277C(v32, 0);
    v95 = sub_26BE34100(&v102, v33 + 32, v32, v27);

    sub_26BE2DA4C();
    if (v95 != v32)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v102 = v33;
  sub_26BE5667C(&v102);
  v34 = v102;
  v93 = *(v102 + 2);
  if (!v93)
  {

    v36 = 8;
LABEL_58:
    if (__OFADD__(v90, v36))
    {
      goto LABEL_92;
    }

    v97 = v90 + v36;
    v68 = *(v8 + 2);
    *&v99 = bswap64(*(v68 + 16));
    v104 = v28;
    v105 = MEMORY[0x277CC9C18];
    v102 = &v99;
    v103 = &v99 + 8;
    v69 = __swift_project_boxed_opaque_existential_1(&v102, v28);
    v71 = *v69;
    v70 = v69[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v102);
    v72 = *(v68 + 16);
    if (v72)
    {
      v73 = sub_26BE3277C(*(v68 + 16), 0);
      v74 = sub_26BE34100(&v102, v73 + 32, v72, v68);

      sub_26BE2DA4C();
      if (v74 == v72)
      {
        goto LABEL_63;
      }

      __break(1u);
    }

    v73 = MEMORY[0x277D84F90];
LABEL_63:
    v102 = v73;
    sub_26BE5667C(&v102);
    v75 = 0;
    v76 = v102;
    v77 = *(v102 + 2);
    v78 = 8;
    while (v77 != v75)
    {
      if (v75 >= *(v76 + 2))
      {
        goto LABEL_80;
      }

      if (!*(v68 + 16))
      {
        goto LABEL_81;
      }

      v79 = *&v76[4 * v75 + 32];
      v80 = sub_26BEBB414(v79);
      if ((v81 & 1) == 0)
      {
        goto LABEL_82;
      }

      sub_26BE038A8(*(v68 + 56) + 40 * v80, &v102);
      v98 = bswap32(v79);
      v100 = MEMORY[0x277D838B0];
      v101 = MEMORY[0x277CC9C18];
      *&v99 = &v98;
      *(&v99 + 1) = &v99;
      v82 = __swift_project_boxed_opaque_existential_1(&v99, MEMORY[0x277D838B0]);
      v84 = *v82;
      v83 = v82[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v85 = sub_26BE10BE4(&v102);
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v86 = v85 + 4;
      if (__OFADD__(v85, 4))
      {
        goto LABEL_83;
      }

      ++v75;
      v87 = __OFADD__(v78, v86);
      v78 += v86;
      if (v87)
      {
        __break(1u);
        break;
      }
    }

    result = v97 + v78;
    if (__OFADD__(v97, v78))
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  v89 = v8;
  v35 = 0;
  v36 = 8;
  v92 = v102;
  while (1)
  {
    if (v35 >= *(v34 + 2))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (!*(v27 + 16))
    {
      goto LABEL_77;
    }

    v37 = *&v34[4 * v35 + 32];
    v38 = sub_26BEBB414(v37);
    if ((v39 & 1) == 0)
    {
      goto LABEL_78;
    }

    v96 = v36;
    v40 = (*(v27 + 56) + 16 * v38);
    v42 = *v40;
    v41 = v40[1];
    LODWORD(v99) = bswap32(v37);
    v104 = v28;
    v105 = MEMORY[0x277CC9C18];
    v102 = &v99;
    v103 = &v99 + 4;
    v43 = __swift_project_boxed_opaque_existential_1(&v102, v28);
    v44 = *v43;
    v45 = v43[1];
    sub_26BE00608(v42, v41);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v102);
    v46 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v46 != 2)
      {
        v47 = 0;
LABEL_39:
        LOBYTE(v99) = v47;
        v104 = v28;
        v105 = MEMORY[0x277CC9C18];
        v102 = &v99;
        v103 = &v99 + 1;
        v55 = __swift_project_boxed_opaque_existential_1(&v102, v28);
        v57 = *v55;
        v56 = v55[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v102);
        v54 = 5;
        goto LABEL_41;
      }

      v49 = *(v42 + 16);
      v48 = *(v42 + 24);
      v47 = v48 - v49;
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_84;
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_34;
    }

    if (!v46)
    {
      v47 = BYTE6(v41);
      goto LABEL_34;
    }

    v50 = HIDWORD(v42) - v42;
    if (__OFSUB__(HIDWORD(v42), v42))
    {
      goto LABEL_85;
    }

    v47 = v50;
    if ((v50 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_34:
    if (v47 <= 0x3F)
    {
      goto LABEL_39;
    }

    if (v47 >> 14)
    {
      if (v47 >> 30)
      {
        break;
      }

      LODWORD(v99) = bswap32(v47 | 0x80000000);
      v104 = v28;
      v105 = MEMORY[0x277CC9C18];
      v102 = &v99;
      v103 = &v99 + 4;
      v51 = __swift_project_boxed_opaque_existential_1(&v102, v28);
      v53 = *v51;
      v52 = v51[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v54 = 8;
    }

    else
    {
      LOWORD(v99) = bswap32(v47 | 0x4000) >> 16;
      v104 = v28;
      v105 = MEMORY[0x277CC9C18];
      v102 = &v99;
      v103 = &v99 + 2;
      v58 = __swift_project_boxed_opaque_existential_1(&v102, v28);
      v60 = *v58;
      v59 = v58[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v54 = 6;
    }

LABEL_41:
    v104 = MEMORY[0x277CC9318];
    v105 = MEMORY[0x277CC9300];
    v102 = v42;
    v103 = v41;
    v61 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x277CC9318]);
    v62 = *v61;
    v63 = v61[1];
    v64 = v63 >> 62;
    if ((v63 >> 62) > 1)
    {
      if (v64 != 2)
      {
        *(&v99 + 6) = 0;
        *&v99 = 0;
        sub_26BE00608(v42, v41);
        sub_26C00908C();
        goto LABEL_54;
      }

      v91 = v54;
      v66 = *(v62 + 16);
      v65 = *(v62 + 24);
      sub_26BE00608(v42, v41);
      if (sub_26C008E9C() && __OFSUB__(v66, sub_26C008ECC()))
      {
        goto LABEL_88;
      }

      if (__OFSUB__(v65, v66))
      {
        goto LABEL_87;
      }

      goto LABEL_52;
    }

    if (v64)
    {
      v67 = v62;
      if (v62 >> 32 < v62)
      {
        goto LABEL_86;
      }

      v91 = v54;
      sub_26BE00608(v42, v41);
      if (sub_26C008E9C() && __OFSUB__(v67, sub_26C008ECC()))
      {
        goto LABEL_89;
      }

LABEL_52:
      sub_26C008EBC();
      sub_26C00908C();
      v28 = MEMORY[0x277D838B0];
      v54 = v91;
      goto LABEL_54;
    }

    *&v99 = *v61;
    WORD4(v99) = v63;
    BYTE10(v99) = BYTE2(v63);
    BYTE11(v99) = BYTE3(v63);
    BYTE12(v99) = BYTE4(v63);
    BYTE13(v99) = BYTE5(v63);
    sub_26BE00608(v42, v41);
    sub_26C00908C();
LABEL_54:
    __swift_destroy_boxed_opaque_existential_1(&v102);
    sub_26BE00258(v42, v41);
    v36 = v96 + v54 + v47;
    if (__OFADD__(v96, v54 + v47))
    {
      goto LABEL_79;
    }

    ++v35;
    v27 = v94;
    v34 = v92;
    if (v93 == v35)
    {

      v8 = v89;
      goto LABEL_58;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v88 = 3;
  swift_willThrow();

  v20 = v42;
  v21 = v41;
LABEL_12:
  result = sub_26BE00258(v20, v21);
LABEL_13:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE553F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_26BF2EA50(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_26BF2EB08(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_26BF2EB84(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_26BE554BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v124 = *MEMORY[0x277D85DE8];
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v110 - v11;
  v13 = sub_26BEE6180();
  if ((v13 & 0x10000) != 0 || (v118 = v13, v14 = sub_26BEE6028(), (v14 & 0x100000000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v20 = 1;
    result = swift_willThrow();
    goto LABEL_7;
  }

  v114 = v6;
  v115 = v5;
  v113 = v14;
  result = sub_26BF2F7B0();
  if (v2)
  {
    goto LABEL_7;
  }

  v122 = result;
  v123 = v16;
  sub_26C009C5C();
  v17 = sub_26BEEE594();
  if (v18)
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    goto LABEL_85;
  }

  v22 = v17;
  v23 = sub_26C004AC0(MEMORY[0x277D84F90]);
  v110 = v12;
  v112 = a1;
  v111 = v10;
  if (v22)
  {
    while (1)
    {
      LODWORD(v119[0]) = 0;
      v30 = v3[2];
      v31 = v30 + 4;
      if (__OFADD__(v30, 4))
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
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
      }

      v32 = *v3;
      v33 = v3[1];
      v34 = v33 >> 62;
      if ((v33 >> 62) <= 1)
      {
        break;
      }

      if (v34 == 2)
      {
        v35 = *(v32 + 24);
        goto LABEL_20;
      }

      if (v31 > 0)
      {
LABEL_81:
        sub_26BE01600();
        swift_allocError();
        *v105 = 1;
        goto LABEL_84;
      }

LABEL_23:
      v116 = v22;
      v117 = v23;
      v122 = v32;
      v123 = v33;
      if (v31 < v30)
      {
        goto LABEL_92;
      }

      *&v121 = v30;
      *(&v121 + 1) = v30 + 4;
      sub_26BE00608(v32, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v122, v123);
      v36 = v119[0];
      v3[2] = v31;
      v38 = *v3;
      v37 = v3[1];
      sub_26BE00608(*v3, v37);
      sub_26BE00608(v38, v37);
      sub_26BF30764(v3, &v122);
      if (v123)
      {
        sub_26BE00258(*v3, v3[1]);
        *v3 = v38;
        v3[1] = v37;
        v44 = v37;
        v43 = v38;
        v3[2] = v31;
LABEL_83:
        sub_26BE00258(v43, v44);
        *v3 = v38;
        v3[1] = v37;
        v3[2] = v31;
        sub_26BE01600();
        swift_allocError();
        *v106 = 1;
LABEL_84:
        swift_willThrow();

LABEL_85:
        result = (*(v114 + 8))(v12, v115);
        goto LABEL_7;
      }

      v39 = v122;
      sub_26BE00258(v38, v37);
      v40 = v3[2];
      v41 = __OFADD__(v40, v39);
      v42 = v40 + v39;
      if (v41)
      {
        goto LABEL_93;
      }

      v43 = *v3;
      v44 = v3[1];
      v45 = v44 >> 62;
      if ((v44 >> 62) <= 1)
      {
        if (v45)
        {
          v46 = v43 >> 32;
        }

        else
        {
          v46 = BYTE6(v44);
        }

LABEL_32:
        if (v46 < v42)
        {
          goto LABEL_83;
        }

        goto LABEL_35;
      }

      if (v45 == 2)
      {
        v46 = *(v43 + 24);
        goto LABEL_32;
      }

      if (v42 > 0)
      {
        goto LABEL_83;
      }

LABEL_35:
      if (v42 < v40)
      {
        goto LABEL_94;
      }

      v47 = sub_26C00909C();
      v48 = v47;
      v50 = v49;
      v3[2] = v42;
      v51 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v51 != 2)
        {
          goto LABEL_43;
        }

        v47 = *(v47 + 16);
        v52 = *(v48 + 24);
      }

      else
      {
        if (!v51)
        {
          goto LABEL_43;
        }

        v47 = v47;
        v52 = v48 >> 32;
      }

      if (v52 < v47)
      {
        goto LABEL_95;
      }

LABEL_43:
      v53 = bswap32(v36);
      v54 = sub_26C00909C();
      v56 = v55;
      sub_26BE00258(v48, v50);
      sub_26BE00258(v38, v37);
      sub_26BE00608(v54, v56);
      v57 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v57;
      v59 = sub_26BEBB414(v53);
      v61 = *(v57 + 16);
      v62 = (v60 & 1) == 0;
      v41 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v41)
      {
        goto LABEL_96;
      }

      v64 = v60;
      v12 = v110;
      if (*(v57 + 24) >= v63)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = v59;
          sub_26BE6DC08();
          v59 = v69;
        }
      }

      else
      {
        sub_26BE69D04(v63, isUniquelyReferenced_nonNull_native);
        v59 = sub_26BEBB414(v53);
        if ((v64 & 1) != (v65 & 1))
        {
LABEL_103:
          result = sub_26C00AF8C();
          __break(1u);
          return result;
        }
      }

      a1 = v112;
      v23 = v122;
      if (v64)
      {
        v27 = (v122[7] + 16 * v59);
        v28 = *v27;
        v29 = v27[1];
        *v27 = v54;
        v27[1] = v56;
        sub_26BE00258(v28, v29);
        sub_26BE00258(v54, v56);
      }

      else
      {
        v122[(v59 >> 6) + 8] |= 1 << v59;
        *(v23[6] + 4 * v59) = v53;
        v66 = (v23[7] + 16 * v59);
        *v66 = v54;
        v66[1] = v56;
        sub_26BE00258(v54, v56);
        v67 = v23[2];
        v41 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v41)
        {
          goto LABEL_97;
        }

        v23[2] = v68;
      }

      v10 = v111;
      v22 = v116 - 1;
      if (v116 == 1)
      {
        goto LABEL_9;
      }
    }

    if (v34)
    {
      v35 = v32 >> 32;
    }

    else
    {
      v35 = BYTE6(v33);
    }

LABEL_20:
    if (v35 < v31)
    {
      goto LABEL_81;
    }

    goto LABEL_23;
  }

LABEL_9:
  v117 = v23;
  v24 = sub_26BEEE594();
  if (v25)
  {
    sub_26BE01600();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    goto LABEL_90;
  }

  v70 = v24;
  v71 = sub_26C004BCC(MEMORY[0x277D84F90]);
  if (!v70)
  {
    v72 = v118;
    v73 = v113;
LABEL_54:
    LOWORD(v121) = v72;
    LODWORD(v122) = v73;
    v75 = v114;
    v74 = v115;
    v76 = v110;
    (*(v114 + 16))(v10, v110, v115);
    sub_26BE51E2C(&v121, &v122, v117, v71, v10, a1);
    result = (*(v75 + 8))(v76, v74);
    goto LABEL_7;
  }

  while (1)
  {
    v120 = 0;
    v78 = v3[2];
    v79 = v78 + 4;
    if (__OFADD__(v78, 4))
    {
      goto LABEL_98;
    }

    v80 = *v3;
    v81 = v3[1];
    v82 = v81 >> 62;
    if ((v81 >> 62) <= 1)
    {
      if (v82)
      {
        v83 = v80 >> 32;
      }

      else
      {
        v83 = BYTE6(v81);
      }

LABEL_64:
      if (v83 < v79)
      {
        goto LABEL_86;
      }

      goto LABEL_67;
    }

    if (v82 == 2)
    {
      v83 = *(v80 + 24);
      goto LABEL_64;
    }

    if (v79 > 0)
    {
LABEL_86:
      sub_26BE01600();
      swift_allocError();
      *v107 = 1;
      swift_willThrow();

      v12 = v110;
      goto LABEL_90;
    }

LABEL_67:
    v116 = v70;
    *&v121 = v80;
    *(&v121 + 1) = v81;
    if (v79 < v78)
    {
      goto LABEL_99;
    }

    v119[0] = v78;
    v119[1] = v78 + 4;
    sub_26BE00608(v80, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v121, *(&v121 + 1));
    v84 = v120;
    v3[2] = v79;
    v85 = sub_26BEE6180();
    if ((v85 & 0x10000) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v108 = 1;
      goto LABEL_89;
    }

    v86 = v85;
    v87 = sub_26BEE62D4();
    if ((v87 & 0x1FE) != 0)
    {
      break;
    }

    v88 = v87;
    v89 = sub_26BF2F7B0();
    if (v86 - 3 < 0xFFFFFFFE)
    {
      goto LABEL_101;
    }

    v91 = v89;
    v92 = v90;
    LOBYTE(v119[0]) = v86 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v119, &v121);
    MLS.Cryptography.Ciphersuite.importDecryptionPrivateKey(_:deviceConstrained:)(v91, v92, v88 == 1, &v122);
    v93 = bswap32(v84);
    sub_26BE00258(v91, v92);

    sub_26BE038A8(&v122, &v121);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v119[0] = v71;
    v95 = sub_26BEBB414(v93);
    v97 = v71[2];
    v98 = (v96 & 1) == 0;
    v41 = __OFADD__(v97, v98);
    v99 = v97 + v98;
    if (v41)
    {
      goto LABEL_100;
    }

    v100 = v96;
    a1 = v112;
    v10 = v111;
    if (v71[3] < v99)
    {
      sub_26BE69F98(v99, v94);
      v95 = sub_26BEBB414(v93);
      if ((v100 & 1) != (v101 & 1))
      {
        goto LABEL_103;
      }

LABEL_76:
      v71 = v119[0];
      if (v100)
      {
        goto LABEL_55;
      }

      goto LABEL_77;
    }

    if (v94)
    {
      goto LABEL_76;
    }

    v104 = v95;
    sub_26BE6DD70();
    v95 = v104;
    v71 = v119[0];
    if (v100)
    {
LABEL_55:
      v77 = (v71[7] + 40 * v95);
      __swift_destroy_boxed_opaque_existential_1(v77);
      sub_26BE03890(&v121, v77);
      __swift_destroy_boxed_opaque_existential_1(&v122);
      goto LABEL_56;
    }

LABEL_77:
    v71[(v95 >> 6) + 8] |= 1 << v95;
    *(v71[6] + 4 * v95) = v93;
    sub_26BE03890(&v121, v71[7] + 40 * v95);
    __swift_destroy_boxed_opaque_existential_1(&v122);
    v102 = v71[2];
    v41 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (v41)
    {
      goto LABEL_102;
    }

    v71[2] = v103;
LABEL_56:
    v72 = v118;
    v73 = v113;
    v70 = v116 - 1;
    if (v116 == 1)
    {
      goto LABEL_54;
    }
  }

  sub_26BE01654();
  swift_allocError();
  *v109 = 5;
  v109[112] = 1;
LABEL_89:
  swift_willThrow();

  v12 = v110;
LABEL_90:
  (*(v114 + 8))(v12, v115);

LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE55FBC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 32;
        v8 = MEMORY[0x277D84F90];
        v58 = MEMORY[0x277D84F90];
        v56 = a2 + 32;
        while (1)
        {
          v57 = v6;
          v9 = (v7 + 136 * v5);
          v10 = v5;
          while (1)
          {
            if (v10 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_31;
            }

            v11 = v9[3];
            v72 = v9[2];
            v73 = v11;
            v78 = *(v9 + 16);
            v12 = v9[7];
            v76 = v9[6];
            v77 = v12;
            v13 = v9[5];
            v74 = v9[4];
            v75 = v13;
            v14 = v9[1];
            v70 = *v9;
            v71 = v14;
            v5 = v10 + 1;
            v15 = v8[2];
            if (v15 >= v3)
            {
              break;
            }

            sub_26BE2E1F0(&v70, &v61, &qword_28045E4C8, &unk_26C0112A0);
            result = swift_isUniquelyReferenced_nonNull_native();
            v79 = v8;
            if ((result & 1) == 0)
            {
              result = sub_26BECB854(0, v15 + 1, 1);
              v8 = v79;
            }

            v17 = v8[2];
            v16 = v8[3];
            if (v17 >= v16 >> 1)
            {
              result = sub_26BECB854((v16 > 1), v17 + 1, 1);
              v8 = v79;
            }

            v8[2] = v17 + 1;
            v18 = &v8[17 * v17];
            *(v18 + 2) = v70;
            v19 = v71;
            v20 = v72;
            v21 = v74;
            *(v18 + 5) = v73;
            *(v18 + 6) = v21;
            *(v18 + 3) = v19;
            *(v18 + 4) = v20;
            v22 = v75;
            v23 = v76;
            v24 = v77;
            v18[20] = v78;
            *(v18 + 8) = v23;
            *(v18 + 9) = v24;
            *(v18 + 7) = v22;
            v9 = (v9 + 136);
            v10 = v5;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v57 >= v15)
          {
            goto LABEL_32;
          }

          v25 = &v8[17 * v57];
          v61 = *(v25 + 2);
          v26 = *(v25 + 3);
          v27 = *(v25 + 4);
          v28 = *(v25 + 6);
          v64 = *(v25 + 5);
          v65 = v28;
          v62 = v26;
          v63 = v27;
          v29 = *(v25 + 7);
          v30 = *(v25 + 8);
          v31 = *(v25 + 9);
          v69 = v25[20];
          v67 = v30;
          v68 = v31;
          v66 = v29;
          sub_26BE2E1F0(&v70, v59, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE2E1F0(&v61, v59, &qword_28045E4C8, &unk_26C0112A0);
          v32 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26BECB854(0, *(v58 + 16) + 1, 1);
            v32 = v80;
          }

          v35 = *(v32 + 16);
          v34 = *(v32 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_26BECB854((v34 > 1), v35 + 1, 1);
            v32 = v80;
          }

          *(v32 + 16) = v35 + 1;
          v58 = v32;
          v36 = v32 + 136 * v35;
          *(v36 + 32) = v61;
          v37 = v62;
          v38 = v63;
          v39 = v65;
          *(v36 + 80) = v64;
          *(v36 + 96) = v39;
          *(v36 + 48) = v37;
          *(v36 + 64) = v38;
          v40 = v66;
          v41 = v67;
          v42 = v68;
          *(v36 + 160) = v69;
          *(v36 + 128) = v41;
          *(v36 + 144) = v42;
          *(v36 + 112) = v40;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26BFD983C(v8);
            v8 = result;
          }

          if (v57 >= v8[2])
          {
            goto LABEL_33;
          }

          v43 = &v8[17 * v57];
          v59[0] = *(v43 + 2);
          v44 = *(v43 + 3);
          v45 = *(v43 + 4);
          v46 = *(v43 + 6);
          v59[3] = *(v43 + 5);
          v59[4] = v46;
          v59[1] = v44;
          v59[2] = v45;
          v47 = *(v43 + 7);
          v48 = *(v43 + 8);
          v49 = *(v43 + 9);
          v60 = v43[20];
          v59[6] = v48;
          v59[7] = v49;
          v59[5] = v47;
          *(v43 + 2) = v70;
          v50 = v71;
          v51 = v72;
          v52 = v74;
          *(v43 + 5) = v73;
          *(v43 + 6) = v52;
          *(v43 + 3) = v50;
          *(v43 + 4) = v51;
          v53 = v75;
          v54 = v76;
          v55 = v77;
          v43[20] = v78;
          *(v43 + 8) = v54;
          *(v43 + 9) = v55;
          *(v43 + 7) = v53;
          result = sub_26BE2E258(v59, &qword_28045E4C8, &unk_26C0112A0);
          if ((v57 + 1) < v3)
          {
            v6 = v57 + 1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v56;
          if (v4 - 1 == v10)
          {
            goto LABEL_28;
          }
        }
      }

      v58 = MEMORY[0x277D84F90];
LABEL_28:

      return v58;
    }

    return v2;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_26BE56358(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_26BEEBFC4(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE58A48(v7, a2, 1, a3, _s25RelativeDistinguishedNameVMa, _s25RelativeDistinguishedNameVMa, &qword_28045E6E8, &unk_26C022D90);
  *v3 = v5;
  return result;
}

unint64_t sub_26BE56464(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_26BEEBFEC(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE58A48(v7, a2, 1, a3, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa, &qword_28045E6E0, &unk_26C011340);
  *v3 = v5;
  return result;
}

unint64_t sub_26BE56570(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_26BEEC014(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE58A48(v7, a2, 1, a3, _s11GeneralNameOMa, _s11GeneralNameOMa, &qword_28045E6F0, &unk_26C011350);
  *v3 = v5;
  return result;
}

uint64_t sub_26BE5667C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD978C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C00AEEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
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
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      v7 = sub_26C00A74C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BE580E0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BE567B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26C008E9C();
    if (v10)
    {
      v11 = sub_26C008ECC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26C008EBC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26C008E9C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26C008ECC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26C008EBC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26BE569E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a1;
  v9 = sub_26C00928C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_26BEBB390(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_26BE6D5C0();
      goto LABEL_9;
    }

    sub_26BE691E4(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_26BEBB390(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    v29 = v27[1];
    *v27 = v32;
    v27[1] = a2;

    return sub_26BE00258(v28, v29);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_26BF747D0(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_26BE56BBC(_OWORD *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBE840(a2, a3);
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
      sub_26BE6D84C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE695CC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26BEBE840(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 80 * v11;

    return sub_26BE5B15C(a1, v23);
  }

  else
  {
    sub_26BF74890(v11, a2, a3, a1, v22);

    return sub_26BE00608(a2, a3);
  }
}

uint64_t sub_26BE56D08(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBE840(a2, a3);
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
      sub_26BE6DA08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE698BC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26BEBE840(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 184 * v11;

    return sub_26BE5B100(a1, v23);
  }

  else
  {
    sub_26BF748F4(v11, a2, a3, a1, v22);

    return sub_26BE00608(a2, a3);
  }
}

unint64_t sub_26BE56E54(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBB414(a3);
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
      sub_26BE6DC08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE69D04(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26BEBB414(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = *v23;
    v25 = v23[1];
    *v23 = a1;
    v23[1] = a2;

    return sub_26BE00258(v24, v25);
  }

  else
  {

    return sub_26BF74978(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_26BE56F8C(__int128 *a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26BEBB414(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_26BE6DD70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26BE69F98(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_26BEBB414(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_26BE03890(a1, v21);
  }

  else
  {

    return sub_26BF749C0(v9, a2, a1, v20);
  }
}

uint64_t sub_26BE570BC(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26BEBB598(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26BE6DEF4();
      goto LABEL_7;
    }

    sub_26BE6A238(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_26BEBB598(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_26C00921C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:

  return sub_26BF74A2C(v12, a2, a3, a1, v18);
}

uint64_t sub_26BE57234(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_26BEBB618(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_26BE6E178();
      result = v21;
      goto LABEL_8;
    }

    sub_26BE6A5B8(v18, a5 & 1);
    v22 = *v6;
    result = sub_26BEBB618(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  else
  {
    sub_26BF74AE0(result, a3, a4, a1, a2, v24);
  }

  return result;
}

uint64_t sub_26BE57374(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26BEBE840(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_26BE6E2F0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_26BE6A878(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_26BEBE840(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_26BE00258(v26, v27);
  }

  else
  {
    sub_26BF74B34(v13, a3, a4, a1, a2, v24);

    return sub_26BE00608(a3, a4);
  }
}

uint64_t sub_26BE574C8(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26BEBB414(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_26BE6E7A8();
      goto LABEL_7;
    }

    sub_26BE6B0E8(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_26BEBB414(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_26C009C8C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_26BF74B84(v10, a2, a1, v16);
}

uint64_t sub_26BE57630(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26BEBB480(a2 & 0xFFFFFFFF00000001);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = _s11HashRatchetVMa(0);
      return sub_26BE5B1B8(a1, v17 + *(*(v18 - 8) + 72) * v10, _s11HashRatchetVMa);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_26BE6EA10();
    goto LABEL_7;
  }

  sub_26BE6B44C(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_26BEBB480(a2 & 0xFFFFFFFF00000001);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_26BF74C30(v10, a2 & 0xFFFFFFFF00000001, a1, v16);
}

_OWORD *sub_26BE57784(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BEBB618(a2, a3);
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
      sub_26BE6EC68();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26BE6B7CC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26BEBB618(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_26BE5B0F0(a1, v23);
  }

  else
  {
    sub_26BF74CE8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26BE578D4(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_26BEBB208(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for MLS.KeyAndNonce(0);
      return sub_26BE5B1B8(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for MLS.KeyAndNonce);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_26BE6EE0C();
    goto LABEL_7;
  }

  sub_26BE6BA84(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_26BEBB208(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_26C00AF8C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_26BF74D54(v10, a2, a1, v16);
}

uint64_t sub_26BE57B28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_26BEBB618(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_26BEBB618(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_26BE57CD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_26BEBB618(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_26BEBB618(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_26BE57E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26BEBB618(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_26BE6F748();
      v13 = v21;
      goto LABEL_8;
    }

    sub_26BE6CAA8(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_26BEBB618(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_26BF74B34(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_26BE57F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26BEBB618(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_26BE6F8C0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_26BE6CD68(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_26BEBB618(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_26C00AF8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_26BE00258(v26, v27);
  }

  else
  {
    sub_26BF74B34(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_26BE580E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_26BFD9590(v8);
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
        sub_26BE5862C((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
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
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
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

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
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
      result = sub_26BEEC164(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26BEEC164((v29 > 1), v5 + 1, 1, v8);
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
        sub_26BE5862C((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
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
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
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

uint64_t sub_26BE5862C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
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

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

unint64_t sub_26BE58910(unint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 4 * a2);
      if (result != v12 || result >= v12 + 4 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 4 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
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
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_26BE58A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_26BE2E258(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_26BE2E258(a4, v31, v32);
  }

  result = sub_26BE5B088(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_26BE2E258(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26BE58C10(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x10 | (32 * (*(a1 + 104) >> 2));
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE58C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_65:
    v44 = *MEMORY[0x277D85DE8];
    return v4 & 1;
  }

  v5 = 0;
  v6 = *(a1 + 24);
  v7 = v4 - 1;
  v8 = 2 * (v4 - 1);
  v9 = v6 + 32;
  v10 = 2 * v4;
  v52 = v8;
  v51 = 2 * v4;
  while (1)
  {
    if (v5 == 0x100000000)
    {
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
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    if (v7 < 0)
    {
      goto LABEL_68;
    }

    if (v5 > v8)
    {
LABEL_62:
      sub_26BE01654();
      swift_allocError();
      v43 = 30;
LABEL_63:
      *v42 = v43;
      *(v42 + 8) = 0u;
      *(v42 + 24) = 0u;
      *(v42 + 40) = 0u;
      *(v42 + 56) = 0u;
      *(v42 + 72) = 0u;
      *(v42 + 88) = 0u;
      *(v42 + 104) = 0;
      *(v42 + 112) = 23;
      swift_willThrow();
      goto LABEL_65;
    }

    if (*(v6 + 16) <= v5)
    {
      goto LABEL_5;
    }

    v11 = (v9 + 136 * v5);
    memmove(__dst, v11, 0x88uLL);
    if (sub_26BE58C10(__dst) == 1)
    {
      goto LABEL_5;
    }

    v58[0] = *v11;
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[4];
    v58[3] = v11[3];
    v58[4] = v14;
    v58[1] = v12;
    v58[2] = v13;
    v15 = v11[5];
    v16 = v11[6];
    v17 = v11[7];
    v59 = *(v11 + 16);
    v58[6] = v16;
    v58[7] = v17;
    v58[5] = v15;
    memmove(v60, v11, 0x88uLL);
    if (sub_26BE58C10(v60) == 1)
    {
      goto LABEL_62;
    }

    v56[6] = v60[6];
    v56[7] = v60[7];
    v57 = v61;
    v56[2] = v60[2];
    v56[3] = v60[3];
    v56[4] = v60[4];
    v56[5] = v60[5];
    v56[0] = v60[0];
    v56[1] = v60[1];
    v18 = sub_26BE592C4(v56);
    v19 = sub_26BE13A3C(v56);
    if (v18 == 1)
    {
      sub_26BE01654();
      swift_allocError();
      v43 = 28;
      goto LABEL_63;
    }

    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = v21 >> 62;
    v25 = v22 >> 62;
    if (v21 >> 62 == 3)
    {
      v26 = 0;
      if (!v20 && v21 == 0xC000000000000000 && v22 >> 62 == 3)
      {
        v26 = 0;
        if (!v23 && v22 == 0xC000000000000000)
        {
LABEL_61:
          LOBYTE(v4) = 1;
          goto LABEL_65;
        }
      }

LABEL_30:
      if (v25 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        v26 = BYTE6(v21);
        if (v25 <= 1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      LODWORD(v26) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_72;
      }

      v26 = v26;
      goto LABEL_30;
    }

    if (v24 == 2)
    {
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_71;
      }

      goto LABEL_30;
    }

    v26 = 0;
    if (v25 <= 1)
    {
LABEL_31:
      if (v25)
      {
        LODWORD(v30) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_70;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(v22);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v25 != 2)
    {
      if (!v26)
      {
        goto LABEL_61;
      }

      goto LABEL_4;
    }

    v32 = *(v23 + 16);
    v31 = *(v23 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_69;
    }

LABEL_38:
    if (v26 == v30)
    {
      break;
    }

LABEL_4:
    v8 = v52;
    v10 = v51;
    v9 = v6 + 32;
LABEL_5:
    v5 += 2;
    if (v10 == v5)
    {
      LOBYTE(v4) = 0;
      goto LABEL_65;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_61;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      memset(v54, 0, 14);
      sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
      sub_26BE00608(v23, v22);
      sub_26BE567B0(v54, v23, v22, v55);
      if (v3)
      {
        goto LABEL_77;
      }

LABEL_60:
      v3 = 0;
      sub_26BE00258(v23, v22);
      sub_26BE2E258(v58, &qword_28045E4C8, &unk_26C0112A0);
      if (v55[0])
      {
        goto LABEL_61;
      }

      goto LABEL_4;
    }

    v49 = *(v20 + 16);
    v50 = v3;
    v47 = *(v20 + 24);
    sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE00608(v23, v22);
    v33 = sub_26C008E9C();
    if (v33)
    {
      v34 = v33;
      v35 = sub_26C008ECC();
      v36 = v49;
      if (__OFSUB__(v49, v35))
      {
        goto LABEL_75;
      }

      v46 = v49 - v35 + v34;
    }

    else
    {
      v46 = 0;
      v36 = v49;
    }

    if (__OFSUB__(v47, v36))
    {
      goto LABEL_74;
    }

    sub_26C008EBC();
    v41 = v46;
  }

  else
  {
    if (!v24)
    {
      v54[0] = *(v19 + 16);
      LOWORD(v54[1]) = v21;
      BYTE2(v54[1]) = BYTE2(v21);
      BYTE3(v54[1]) = BYTE3(v21);
      BYTE4(v54[1]) = BYTE4(v21);
      BYTE5(v54[1]) = BYTE5(v21);
      sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
      sub_26BE00608(v23, v22);
      sub_26BE567B0(v54, v23, v22, v55);
      if (v3)
      {
        goto LABEL_77;
      }

      goto LABEL_60;
    }

    v50 = v3;
    v37 = v20;
    if (v20 >> 32 < v20)
    {
      goto LABEL_73;
    }

    sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE00608(v23, v22);
    v38 = sub_26C008E9C();
    if (v38)
    {
      v48 = v38;
      v39 = sub_26C008ECC();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_76;
      }

      v40 = v37 - v39 + v48;
    }

    else
    {
      v40 = 0;
    }

    sub_26C008EBC();
    v41 = v40;
  }

  sub_26BE567B0(v41, v23, v22, v55);
  if (!v50)
  {
    goto LABEL_60;
  }

LABEL_77:
  result = sub_26BE00258(v23, v22);
  __break(1u);
  return result;
}

_DWORD *sub_26BE592D0()
{
  v2 = v0;
  v3 = *(v0 + 8);
  v10 = *(v2 + 16);
  result = MLS.NodeIndex.init(forRoot:)(&v10, &v11);
  if (!v1)
  {
    if (*(v3 + 16) && (v5 = sub_26BEBB414(v11), (v6 & 1) != 0))
    {
      v7 = (*(v3 + 56) + 16 * v5);
      result = *v7;
      v8 = v7[1];
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v9 = 29;
      *(v9 + 8) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0;
      *(v9 + 112) = 23;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_26BE5939C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 4 * a3;
  v12 = (v7 + 32 + 4 * a2);
  if (result != v12 || result >= v12 + 4 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 4 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 4 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

unint64_t sub_26BE59490(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v6;
    }

    v5 = sub_26BEEBFB0(isUniquelyReferenced_nonNull_native, v16, 1, v5);
    *v3 = v5;
  }

  result = sub_26BE5939C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_26BE59564(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v63 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_65:
    v44 = *MEMORY[0x277D85DE8];
    return v4 & 1;
  }

  v5 = 0;
  v6 = *(a1 + 24);
  v7 = v4 - 1;
  v8 = 2 * (v4 - 1);
  v9 = v6 + 32;
  v10 = 2 * v4;
  v52 = v8;
  v51 = 2 * v4;
  while (1)
  {
    if (v5 == 0x100000000)
    {
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
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    if (v7 < 0)
    {
      goto LABEL_68;
    }

    if (v5 > v8)
    {
LABEL_62:
      sub_26BE01654();
      swift_allocError();
      v43 = 30;
LABEL_63:
      *v42 = v43;
      *(v42 + 8) = 0u;
      *(v42 + 24) = 0u;
      *(v42 + 40) = 0u;
      *(v42 + 56) = 0u;
      *(v42 + 72) = 0u;
      *(v42 + 88) = 0u;
      *(v42 + 104) = 0;
      *(v42 + 112) = 23;
      swift_willThrow();
      goto LABEL_65;
    }

    if (*(v6 + 16) <= v5)
    {
      goto LABEL_5;
    }

    v11 = (v9 + 136 * v5);
    memmove(__dst, v11, 0x88uLL);
    if (sub_26BE58C10(__dst) == 1)
    {
      goto LABEL_5;
    }

    v58[0] = *v11;
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[4];
    v58[3] = v11[3];
    v58[4] = v14;
    v58[1] = v12;
    v58[2] = v13;
    v15 = v11[5];
    v16 = v11[6];
    v17 = v11[7];
    v59 = *(v11 + 16);
    v58[6] = v16;
    v58[7] = v17;
    v58[5] = v15;
    memmove(v60, v11, 0x88uLL);
    if (sub_26BE58C10(v60) == 1)
    {
      goto LABEL_62;
    }

    v56[6] = v60[6];
    v56[7] = v60[7];
    v57 = v61;
    v56[2] = v60[2];
    v56[3] = v60[3];
    v56[4] = v60[4];
    v56[5] = v60[5];
    v56[0] = v60[0];
    v56[1] = v60[1];
    v18 = sub_26BE592C4(v56);
    v19 = sub_26BE13A3C(v56);
    if (v18 == 1)
    {
      sub_26BE01654();
      swift_allocError();
      v43 = 28;
      goto LABEL_63;
    }

    v20 = *v19;
    v21 = v19[1];
    v23 = *a2;
    v22 = a2[1];
    v24 = v21 >> 62;
    v25 = v22 >> 62;
    if (v21 >> 62 == 3)
    {
      v26 = 0;
      if (!v20 && v21 == 0xC000000000000000 && v22 >> 62 == 3)
      {
        v26 = 0;
        if (!v23 && v22 == 0xC000000000000000)
        {
LABEL_61:
          LOBYTE(v4) = 1;
          goto LABEL_65;
        }
      }

LABEL_30:
      if (v25 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        v26 = BYTE6(v21);
        if (v25 <= 1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      LODWORD(v26) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_72;
      }

      v26 = v26;
      goto LABEL_30;
    }

    if (v24 == 2)
    {
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_71;
      }

      goto LABEL_30;
    }

    v26 = 0;
    if (v25 <= 1)
    {
LABEL_31:
      if (v25)
      {
        LODWORD(v30) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_70;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(v22);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v25 != 2)
    {
      if (!v26)
      {
        goto LABEL_61;
      }

      goto LABEL_4;
    }

    v32 = *(v23 + 16);
    v31 = *(v23 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_69;
    }

LABEL_38:
    if (v26 == v30)
    {
      break;
    }

LABEL_4:
    v8 = v52;
    v10 = v51;
    v9 = v6 + 32;
LABEL_5:
    v5 += 2;
    if (v10 == v5)
    {
      LOBYTE(v4) = 0;
      goto LABEL_65;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_61;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      memset(v54, 0, 14);
      sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
      sub_26BE00608(v23, v22);
      sub_26BE567B0(v54, v23, v22, v55);
      if (v3)
      {
        goto LABEL_77;
      }

LABEL_60:
      v3 = 0;
      sub_26BE00258(v23, v22);
      sub_26BE2E258(v58, &qword_28045E4C8, &unk_26C0112A0);
      if (v55[0])
      {
        goto LABEL_61;
      }

      goto LABEL_4;
    }

    v49 = *(v20 + 16);
    v50 = v3;
    v47 = *(v20 + 24);
    sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE00608(v23, v22);
    v33 = sub_26C008E9C();
    if (v33)
    {
      v34 = v33;
      v35 = sub_26C008ECC();
      v36 = v49;
      if (__OFSUB__(v49, v35))
      {
        goto LABEL_75;
      }

      v46 = v49 - v35 + v34;
    }

    else
    {
      v46 = 0;
      v36 = v49;
    }

    if (__OFSUB__(v47, v36))
    {
      goto LABEL_74;
    }

    sub_26C008EBC();
    v41 = v46;
  }

  else
  {
    if (!v24)
    {
      v54[0] = *v19;
      LOWORD(v54[1]) = v21;
      BYTE2(v54[1]) = BYTE2(v21);
      BYTE3(v54[1]) = BYTE3(v21);
      BYTE4(v54[1]) = BYTE4(v21);
      BYTE5(v54[1]) = BYTE5(v21);
      sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
      sub_26BE00608(v23, v22);
      sub_26BE567B0(v54, v23, v22, v55);
      if (v3)
      {
        goto LABEL_77;
      }

      goto LABEL_60;
    }

    v50 = v3;
    v37 = v20;
    if (v20 >> 32 < v20)
    {
      goto LABEL_73;
    }

    sub_26BE2E1F0(v58, v55, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE00608(v23, v22);
    v38 = sub_26C008E9C();
    if (v38)
    {
      v48 = v38;
      v39 = sub_26C008ECC();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_76;
      }

      v40 = v37 - v39 + v48;
    }

    else
    {
      v40 = 0;
    }

    sub_26C008EBC();
    v41 = v40;
  }

  sub_26BE567B0(v41, v23, v22, v55);
  if (!v50)
  {
    goto LABEL_60;
  }

LABEL_77:
  result = sub_26BE00258(v23, v22);
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLS.TreeKEMPrivateKey()
{
  result = qword_28045E6B0;
  if (!qword_28045E6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE59C80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BE59C98(uint64_t a1)
{
  v2 = type metadata accessor for MLS.TreeKEMPrivateKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE59D48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_26BE59DB4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_26BE59DD0(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E718, &qword_26C011380);
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
      result = v12 + 16 * a3;
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
    *(v12 + 8) = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_26BE59EC8(unint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_26BEEC6D8(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_26BE59DD0(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_26BE59FA4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
    result = sub_26BE00608(a4, a5);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_26BE5A08C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
  }

  v3 = a2 + 32;

  v5 = 0;
  while (2)
  {
    v6 = *(v3 + 4 * v5);
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      ++v5;
      v8 = 2 * v6;
      v9 = *(v14 + 16);
      v10 = v14 + 32;
      while (v9 != v7)
      {
        v11 = *(v10 + 4 * v7++);
        if (v11 == v8)
        {
          v12 = 0;
          do
          {
            if (*(v10 + 4 * v12) == v8)
            {
              result = sub_26BFA7388(v12, &v13);
              goto LABEL_4;
            }

            ++v12;
          }

          while (v9 != v12);
          __break(1u);
          return v14;
        }
      }

LABEL_4:
      if (v5 != v2)
      {
        continue;
      }

      return v14;
    }

    return result;
  }
}

uint64_t sub_26BE5A15C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_26BE00608(a1, a2);
  }

  return a1;
}

uint64_t sub_26BE5A170(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_26BE00258(a1, a2);
  }

  return a1;
}

uint64_t sub_26BE5A294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BE5A2DC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_26BE00258(result, a2);
    sub_26BE00258(a3, a4);
  }

  return result;
}

uint64_t sub_26BE5A414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C009C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BE5A4D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26C009C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BE5A578()
{
  sub_26BE5A62C();
  if (v0 <= 0x3F)
  {
    sub_26BE5A6E4();
    if (v1 <= 0x3F)
    {
      sub_26C009C8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BE5A62C()
{
  if (!qword_28045E6C0)
  {
    sub_26BE5A690();
    v0 = sub_26C00A39C();
    if (!v1)
    {
      atomic_store(v0, &qword_28045E6C0);
    }
  }
}

unint64_t sub_26BE5A690()
{
  result = qword_28045E6C8;
  if (!qword_28045E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E6C8);
  }

  return result;
}

void sub_26BE5A6E4()
{
  if (!qword_28045E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E6D8, &qword_26C011338);
    sub_26BE5A690();
    v0 = sub_26C00A39C();
    if (!v1)
    {
      atomic_store(v0, &qword_28045E6D0);
    }
  }
}

uint64_t sub_26BE5A75C(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = a2;
  v5 = *(result + 16);
  if (!v5)
  {
  }

  v6 = a3;
  v7 = 0;
  v8 = 0;
  v9 = *(result + 24);
  while (v8 != 0x80000000)
  {
    if (v5 - 1 < 0)
    {
      goto LABEL_26;
    }

    if (v7 > 2 * (v5 - 1))
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v28 = 30;
LABEL_21:
      *v27 = v28;
      *(v27 + 8) = 0u;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 104) = 0;
      *(v27 + 112) = 23;
      swift_willThrow();
    }

    if (*(v9 + 16) > v7)
    {
      v10 = (v9 + 32 + 136 * v7);
      memmove(__dst, v10, 0x88uLL);
      result = sub_26BE58C10(__dst);
      if (result != 1)
      {
        v48 = *v10;
        v11 = v10[1];
        v12 = v10[2];
        v13 = v10[4];
        v51 = v10[3];
        v52 = v13;
        v49 = v11;
        v50 = v12;
        v14 = v10[5];
        v15 = v10[6];
        v16 = v10[7];
        v56 = *(v10 + 16);
        v54 = v15;
        v55 = v16;
        v53 = v14;
        memmove(v57, v10, 0x88uLL);
        if (sub_26BE58C10(v57) == 1)
        {
          goto LABEL_20;
        }

        v46[6] = v57[6];
        v46[7] = v57[7];
        v47 = v58;
        v46[2] = v57[2];
        v46[3] = v57[3];
        v46[4] = v57[4];
        v46[5] = v57[5];
        v46[0] = v57[0];
        v46[1] = v57[1];
        if (sub_26BE592C4(v46) == 1)
        {
          sub_26BE13A3C(v46);
          sub_26BE01654();
          swift_allocError();
          v28 = 28;
          goto LABEL_21;
        }

        v17 = sub_26BE13A3C(v46);
        v18 = *(v17 + 112);
        v40 = *(v17 + 96);
        v41 = v18;
        v42 = *(v17 + 128);
        v19 = *(v17 + 48);
        v36 = *(v17 + 32);
        v37 = v19;
        v20 = *(v17 + 80);
        v38 = *(v17 + 64);
        v39 = v20;
        v21 = *(v17 + 16);
        v34 = *v17;
        v35 = v21;
        v60 = *(v4 + 72);
        v44[2] = v50;
        v44[3] = v51;
        v44[0] = v48;
        v44[1] = v49;
        v45 = v56;
        v44[6] = v54;
        v44[7] = v55;
        v44[4] = v52;
        v44[5] = v53;
        sub_26BE59BD8(v44, v33);
        sub_26BF34320(&v60, v43);
        if (v32)
        {
          sub_26BE2E258(&v48, &qword_28045E4C8, &unk_26C0112A0);
        }

        if (sub_26BF33464(v43, v6))
        {
          v22 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_26BEECEB4(0, *(v22 + 2) + 1, 1, v22);
            *a4 = v22;
          }

          v25 = *(v22 + 2);
          v24 = *(v22 + 3);
          if (v25 >= v24 >> 1)
          {
            *a4 = sub_26BEECEB4((v24 > 1), v25 + 1, 1, v22);
          }

          sub_26BE2DBC4(v43);
          v26 = *a4;
          *(v26 + 2) = v25 + 1;
          *&v26[4 * v25 + 32] = v8;
          v6 = a3;
          v4 = a2;
        }

        else
        {
          sub_26BE2DBC4(v43);
        }

        result = sub_26BE2E258(&v48, &qword_28045E4C8, &unk_26C0112A0);
      }
    }

    ++v8;
    v7 += 2;
    if (v5 == v8)
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26BE5AB10(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(result + 24);
    v46 = v8 + 32;
    while (v7 != 0x80000000)
    {
      if (v5 - 1 < 0)
      {
        goto LABEL_19;
      }

      if (v6 > 2 * (v5 - 1))
      {
LABEL_13:
        sub_26BE01654();
        swift_allocError();
        v22 = 30;
LABEL_14:
        *v21 = v22;
        *(v21 + 8) = 0u;
        *(v21 + 24) = 0u;
        *(v21 + 40) = 0u;
        *(v21 + 56) = 0u;
        *(v21 + 72) = 0u;
        *(v21 + 88) = 0u;
        *(v21 + 104) = 0;
        *(v21 + 112) = 23;
        swift_willThrow();
        goto LABEL_15;
      }

      if (*(v8 + 16) > v6)
      {
        v9 = (v46 + 136 * v6);
        memmove(__dst, v9, 0x88uLL);
        result = sub_26BE58C10(__dst);
        if (result != 1)
        {
          v34 = *v9;
          v10 = v9[1];
          v11 = v9[2];
          v12 = v9[4];
          v37 = v9[3];
          v38 = v12;
          v35 = v10;
          v36 = v11;
          v13 = v9[5];
          v14 = v9[6];
          v15 = v9[7];
          v42 = *(v9 + 16);
          v40 = v14;
          v41 = v15;
          v39 = v13;
          memmove(v43, v9, 0x88uLL);
          if (sub_26BE58C10(v43) == 1)
          {
            goto LABEL_13;
          }

          v32[6] = v43[6];
          v32[7] = v43[7];
          v33 = v44;
          v32[2] = v43[2];
          v32[3] = v43[3];
          v32[4] = v43[4];
          v32[5] = v43[5];
          v32[0] = v43[0];
          v32[1] = v43[1];
          if (sub_26BE592C4(v32) == 1)
          {
            sub_26BE13A3C(v32);
            sub_26BE01654();
            swift_allocError();
            v22 = 28;
            goto LABEL_14;
          }

          v16 = sub_26BE13A3C(v32);
          v29 = v7;
          v17 = *(v16 + 112);
          v27[6] = *(v16 + 96);
          v27[7] = v17;
          v28 = *(v16 + 128);
          v18 = *(v16 + 48);
          v27[2] = *(v16 + 32);
          v27[3] = v18;
          v19 = *(v16 + 80);
          v27[4] = *(v16 + 64);
          v27[5] = v19;
          v20 = *(v16 + 16);
          v27[0] = *v16;
          v27[1] = v20;
          v30[2] = v36;
          v30[3] = v37;
          v30[0] = v34;
          v30[1] = v35;
          v31 = v42;
          v30[6] = v40;
          v30[7] = v41;
          v30[4] = v38;
          v30[5] = v39;
          sub_26BE59BD8(v30, v26);
          sub_26C0081F4(&v29, v27, a2, a3, a4);
          if (v4)
          {
            sub_26BE2E258(&v34, &qword_28045E4C8, &unk_26C0112A0);
            goto LABEL_15;
          }

          result = sub_26BE2E258(&v34, &qword_28045E4C8, &unk_26C0112A0);
        }
      }

      ++v7;
      v6 += 2;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_26BE0489C(a2, a3);
  }

  return result;
}

unint64_t sub_26BE5AE38(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_26BE5AF10(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_26BE5AF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26BE5B088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_26BE5B0F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26BE5B1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE5B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_26BE5B2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MLS.LeafNode.MemberBinding.init(groupID:leafIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static MLS.LeafNode.MemberBinding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t MLS.LeafNode.MemberBinding.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_26C00911C();
  return sub_26C00B09C();
}

uint64_t MLS.LeafNode.MemberBinding.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_26C00B05C();
  sub_26C00911C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE5B4C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_26BE5B504()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_26C00B05C();
  sub_26C00911C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE5B568()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_26C00911C();
  return sub_26C00B09C();
}

uint64_t sub_26BE5B5A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_26C00B05C();
  sub_26C00911C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE5B600(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 112);
  v35 = *(v1 + 96);
  v36 = v4;
  v5 = *(v1 + 16);
  v6 = *(v1 + 48);
  v31 = *(v1 + 32);
  v32 = v6;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v33 = *(v1 + 64);
  v34 = v8;
  v9 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v9;
  v10 = *(v1 + 80);
  v11 = *(v1 + 112);
  v38[6] = *(v1 + 96);
  v38[7] = v11;
  v13 = *v1;
  v12 = *(v1 + 16);
  v14 = *(v1 + 48);
  v38[2] = *(v1 + 32);
  v38[3] = v14;
  v38[4] = *(v1 + 64);
  v38[5] = v10;
  v38[0] = *v1;
  v38[1] = v12;
  v28 = xmmword_26C00BBD0;
  v15 = *(v1 + 112);
  v26[6] = v35;
  v26[7] = v15;
  v26[2] = v31;
  v26[3] = v7;
  v26[4] = v33;
  v26[5] = v3;
  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v37 = *(v1 + 128);
  v39 = *(v1 + 128);
  v40 = v17;
  v41 = v16;
  v42 = v18;
  v29 = 0;
  v27 = *(v1 + 128);
  v26[0] = v13;
  v26[1] = v5;
  v24[0] = v17;
  v24[1] = v16;
  v25 = v18;
  sub_26BE00758(v30, v23);
  sub_26BE2BAE8(v17, v16);
  sub_26BE5BCCC(v38, v23);
  sub_26BFF6CA4(v26, v24);
  if (!v2)
  {
    sub_26BE132D4(v17, v16);
    sub_26BE00854(v30);
    v19 = v28;
    v20 = *(&v28 + 1) >> 62;
    if ((*(&v28 + 1) >> 62) > 1)
    {
      if (v20 != 2)
      {
LABEL_11:
        v16 = sub_26C00909C();
        sub_26BE5BD3C(v38);
        sub_26BE00258(v19, *(&v19 + 1));
        return v16;
      }

      v21 = *(v28 + 24);
    }

    else
    {
      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = v28 >> 32;
    }

    if (v21 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BE5BD3C(v38);
  sub_26BE132D4(v17, v16);
  sub_26BE00854(v30);
  sub_26BE00258(v28, *(&v28 + 1));
  return v16;
}

unint64_t sub_26BE5B7E0(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  *v23 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 80);
  v27 = *(v2 + 64);
  v28 = v8;
  v29 = *(v2 + 96);
  v9 = *(v2 + 48);
  v25 = *(v2 + 32);
  v26 = v9;
  v10 = *(v2 + 112);
  v11 = *(v2 + 120);
  v12 = *(v2 + 128);
  *&v23[16] = v6;
  v24 = v7;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  *v20 = *a2;
  *&v20[16] = v5;
  result = sub_26BE5B600(v20);
  if (!v3)
  {
    if ((v4 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      v16 = v14;
      v20[0] = v4 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v20, v23);
      v20[0] = v23[0];
      *&v20[8] = *&v23[8];
      v21 = v24;
      v22 = v25;
      MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v6, v7, v23);
      v17 = v24;
      v18 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      if ((MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0x65646F4E6661654CLL, 0xEB00000000534254, v15, v16, v11, v12, v17, v18) & 1) == 0)
      {
        sub_26BE01654();
        swift_allocError();
        *v19 = 8;
        *(v19 + 8) = 0u;
        *(v19 + 24) = 0u;
        *(v19 + 40) = 0u;
        *(v19 + 56) = 0u;
        *(v19 + 72) = 0u;
        *(v19 + 88) = 0u;
        *(v19 + 104) = 0;
        *(v19 + 112) = 23;
        swift_willThrow();
      }

      sub_26BE00258(v15, v16);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  return result;
}

uint64_t MLS.LeafNode.sign(signaturePrivateKey:binding:)(void *a1, __int128 *a2)
{
  v4 = v2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 112);
  v50 = *(v2 + 96);
  v51 = v7;
  v8 = *(v2 + 16);
  v9 = *(v2 + 48);
  v46 = *(v2 + 32);
  v47 = v9;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v48 = *(v2 + 64);
  v49 = v11;
  v12 = *(v2 + 16);
  v45[0] = *v2;
  v45[1] = v12;
  v13 = *(v2 + 112);
  v42 = v50;
  v43 = v13;
  v38 = v46;
  v39 = v10;
  v40 = v48;
  v41 = v6;
  v14 = *(a2 + 4);
  v52 = *(v2 + 128);
  v44 = *(v2 + 128);
  v36 = v45[0];
  v37 = v8;
  v34 = *a2;
  v35 = v14;
  sub_26BE00758(v45, &v25);
  v15 = sub_26BE5B600(&v34);
  if (v3)
  {
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v25 = v36;
    v26 = v37;
    return sub_26BE00854(&v25);
  }

  else
  {
    v18 = v15;
    v19 = v16;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v25 = v36;
    v26 = v37;
    sub_26BE00854(&v25);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v22 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v18, v19, v20, v21);
    v24 = v23;
    sub_26BE00258(v18, v19);
    result = sub_26BE00258(*(v4 + 120), *(v4 + 128));
    *(v4 + 120) = v22;
    *(v4 + 128) = v24;
  }

  return result;
}

unint64_t sub_26BE5BBB0()
{
  result = qword_28045E720;
  if (!qword_28045E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E720);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BE5BC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 20))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE5BC6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BE5BCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E728, &qword_26C011520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE5BD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E728, &qword_26C011520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_26BE5BDA4(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  LOWORD(v13) = 7;
  sub_26BE5BF2C(a1, &v13);
  if (!v2)
  {

    LOWORD(v13) = 2;
    sub_26BE5BF2C(v4, &v13);

    v5 = type metadata accessor for MLS.GroupState();
    v6 = (v1 + *(v5 + 64));
    sub_26BE5CCE0(v3 + *(v5 + 64));
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    v6[8] = 0u;
    v6[9] = 0u;
    v6[10] = 0u;
    LOWORD(v13) = 3;
    sub_26BE5BF2C(v4, &v13);

    LOWORD(v13) = 1;
    v4 = sub_26BE5BF2C(v4, &v13);
    MLS.TreeKEMPublicKey.truncate()();
    if (v7)
    {
    }

    else
    {
      v13 = *(v3 + 48);
      v8 = v3 + *(v5 + 32);
      sub_26BE541FC(&v13);
      v12 = *(v3 + 48);
      MLS.NodeIndex.init(forRoot:)(&v12, &v13);
      sub_26BE4BE9C(&v13);
      sub_26BE00258(v10, v11);
    }
  }

  return v4;
}

char *sub_26BE5BF2C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  v8 = *a2;
  do
  {
    v9 = (v6 + 200 * v5);
    v10 = v5;
    while (1)
    {
      if (v10 >= v4)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:

        goto LABEL_92;
      }

      v12 = v9[8];
      v164 = v9[9];
      v13 = v9[11];
      v165 = v9[10];
      v166 = v13;
      v14 = v9[4];
      v160 = v9[5];
      v15 = v9[7];
      v161 = v9[6];
      v162 = v15;
      v163 = v12;
      v16 = *v9;
      v156 = v9[1];
      v17 = v9[3];
      v157 = v9[2];
      v158 = v17;
      v159 = v14;
      v167 = *(v9 + 192);
      v155 = v16;
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_99;
      }

      v18 = v9[9];
      v176 = v9[8];
      v177 = v18;
      v178 = v9[10];
      v19 = v9[5];
      v172 = v9[4];
      v173 = v19;
      v20 = v9[7];
      v174 = v9[6];
      v175 = v20;
      v21 = v9[1];
      v168 = *v9;
      v169 = v21;
      v22 = v9[3];
      v170 = v9[2];
      v179 = *(v9 + 22);
      v171 = v22;
      v23 = sub_26BE5CD48(&v168);
      if (v23 <= 4)
      {
        break;
      }

      if (v23 > 7)
      {
        if (v23 == 8)
        {
          sub_26BE5CDC8(&v168);
          v11 = 61444;
        }

        else if (v23 == 9)
        {
          sub_26BE5CDC8(&v168);
          v11 = 61443;
        }

        else
        {
          v11 = 0xFFFF;
        }

LABEL_5:
        if (v8 == v11)
        {
          goto LABEL_38;
        }

LABEL_6:
        sub_26BE5CD74(&v155);
        goto LABEL_7;
      }

      if (v23 != 5)
      {
        if (v23 == 6)
        {
          sub_26BE5CDC8(&v168);
          if (v8 == 7)
          {
            goto LABEL_37;
          }

          goto LABEL_7;
        }

        sub_26BE5CDC8(&v168);
        v11 = 61442;
        goto LABEL_5;
      }

      sub_26BE5CDC8(&v168);
      if (v8 == 6)
      {
        goto LABEL_37;
      }

LABEL_7:
      ++v10;
      v9 = (v9 + 200);
      if (v5 == v4)
      {
        goto LABEL_45;
      }
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        sub_26BE5CDC8(&v168);
        if (v8 == 3)
        {
          goto LABEL_38;
        }

        goto LABEL_6;
      }

      if (v23 == 3)
      {
        sub_26BE5CDC8(&v168);
        if (v8 == 4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_26BE5CDC8(&v168);
        if (v8 == 5)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_7;
    }

    if (!v23)
    {
      sub_26BE5CDC8(&v168);
      if (v8 == 1)
      {
        goto LABEL_37;
      }

      goto LABEL_7;
    }

    sub_26BE5CDC8(&v168);
    if (v8 != 2)
    {
      goto LABEL_7;
    }

LABEL_37:
    sub_26BE5CDE4(&v155, &v146);
LABEL_38:
    *&__dst = v7;
    v105 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26BECBA94(0, *(v7 + 16) + 1, 1);
      v7 = __dst;
    }

    v25 = *(v7 + 16);
    v24 = *(v7 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_26BECBA94((v24 > 1), v25 + 1, 1);
      v7 = __dst;
    }

    *(v7 + 16) = v25 + 1;
    v26 = v7 + 200 * v25;
    *(v26 + 32) = v155;
    v27 = v156;
    v28 = v157;
    v29 = v159;
    *(v26 + 80) = v158;
    *(v26 + 96) = v29;
    *(v26 + 48) = v27;
    *(v26 + 64) = v28;
    v30 = v160;
    v31 = v161;
    v32 = v163;
    *(v26 + 144) = v162;
    *(v26 + 160) = v32;
    *(v26 + 112) = v30;
    *(v26 + 128) = v31;
    v33 = v164;
    v34 = v165;
    v35 = v166;
    *(v26 + 224) = v167;
    *(v26 + 192) = v34;
    *(v26 + 208) = v35;
    *(v26 + 176) = v33;
    v6 = v105;
  }

  while (v5 != v4);
LABEL_45:
  v36 = *(v7 + 16);
  if (!v36)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_89:

    return v38;
  }

  v37 = 0;
  v106 = *(v7 + 16);
  v103 = v36 - 1;
  v38 = MEMORY[0x277D84F90];
  v39 = v180;
LABEL_47:
  v104 = v38;
  v40 = 200 * v37 + 32;
  v41 = v37;
  v42 = v106;
  while (2)
  {
    if (v41 >= *(v7 + 16))
    {
      goto LABEL_100;
    }

    v155 = *(v7 + v40);
    v43 = *(v7 + v40 + 16);
    v44 = *(v7 + v40 + 32);
    v45 = *(v7 + v40 + 48);
    v159 = *(v7 + v40 + 64);
    v158 = v45;
    v157 = v44;
    v156 = v43;
    v46 = *(v7 + v40 + 80);
    v47 = *(v7 + v40 + 96);
    v48 = *(v7 + v40 + 112);
    v163 = *(v7 + v40 + 128);
    v162 = v48;
    v161 = v47;
    v160 = v46;
    v49 = *(v7 + v40 + 144);
    v50 = *(v7 + v40 + 160);
    v51 = *(v7 + v40 + 176);
    v167 = *(v7 + v40 + 192);
    v166 = v51;
    v165 = v50;
    v164 = v49;
    v52 = *(v7 + v40);
    v53 = *(v7 + v40 + 16);
    v54 = *(v7 + v40 + 32);
    v171 = *(v7 + v40 + 48);
    v170 = v54;
    v169 = v53;
    v168 = v52;
    v55 = *(v7 + v40 + 64);
    v56 = *(v7 + v40 + 80);
    v57 = *(v7 + v40 + 96);
    v175 = *(v7 + v40 + 112);
    v174 = v57;
    v173 = v56;
    v172 = v55;
    v58 = *(v7 + v40 + 128);
    v59 = *(v7 + v40 + 144);
    v60 = *(v7 + v40 + 160);
    v179 = *(v7 + v40 + 176);
    v178 = v60;
    v177 = v59;
    v176 = v58;
    v61 = sub_26BE5CD48(&v168);
    if (v61 <= 1)
    {
      if (v61 == 1)
      {
        v65 = sub_26BE5CDC8(&v168);
        if ((BYTE12(v166) & 1) == 0)
        {
          v66 = v65;
          v180 = v39;
          v67 = DWORD2(v166);
          v68 = type metadata accessor for MLS.GroupState();
          v69 = *(v68 + 52);
          if (v67 == *(v3 + v69))
          {
            v70 = v68;
            sub_26BE5CE40(v3 + *(v68 + 64), &v132);
            if (*(&v133 + 1))
            {
              v144 = v134[7];
              v145 = v134[8];
              v139 = v134[2];
              v140 = v134[3];
              v142 = v134[5];
              v143 = v134[6];
              v141 = v134[4];
              __dst = v132;
              v136 = v133;
              v137 = v134[0];
              v138 = v134[1];
              v126[6] = *(&v134[6] + 8);
              v126[7] = *(&v134[7] + 8);
              v127 = *(&v134[8] + 1);
              v126[2] = *(&v134[2] + 8);
              v126[3] = *(&v134[3] + 8);
              v126[4] = *(&v134[4] + 8);
              v126[5] = *(&v134[5] + 8);
              v126[0] = *(v134 + 8);
              v126[1] = *(&v134[1] + 8);
              v71 = *(v66 + 112);
              v123 = *(v66 + 96);
              v124 = v71;
              v125 = *(v66 + 128);
              v72 = *(v66 + 48);
              v119 = *(v66 + 32);
              v120 = v72;
              v73 = *(v66 + 80);
              v121 = *(v66 + 64);
              v122 = v73;
              v74 = *(v66 + 16);
              v117 = *v66;
              v118 = v74;
              v114 = *(&v134[6] + 8);
              v115 = *(&v134[7] + 8);
              v116 = *(&v134[8] + 1);
              v110 = *(&v134[2] + 8);
              v111 = *(&v134[3] + 8);
              v112 = *(&v134[4] + 8);
              v113 = *(&v134[5] + 8);
              v108 = *(v134 + 8);
              v109 = *(&v134[1] + 8);
              sub_26BE5CDE4(&v155, &v146);
              sub_26BE5CDE4(&v155, &v146);
              sub_26BE5CDE4(&v155, &v146);
              sub_26BE5CEB0(v126, &v146);
              v75 = _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(&v117, &v108);
              v128[6] = v114;
              v128[7] = v115;
              v129 = v116;
              v128[2] = v110;
              v128[3] = v111;
              v128[4] = v112;
              v128[5] = v113;
              v128[0] = v108;
              v128[1] = v109;
              sub_26BE00854(v128);
              v130[6] = v123;
              v130[7] = v124;
              v131 = v125;
              v130[2] = v119;
              v130[3] = v120;
              v130[4] = v121;
              v130[5] = v122;
              v130[0] = v117;
              v130[1] = v118;
              sub_26BE00854(v130);
              if (v75)
              {
                v107 = *(v3 + v69);
                v76 = *(v66 + 112);
                v123 = *(v66 + 96);
                v124 = v76;
                v125 = *(v66 + 128);
                v77 = *(v66 + 48);
                v119 = *(v66 + 32);
                v120 = v77;
                v78 = *(v66 + 80);
                v121 = *(v66 + 64);
                v122 = v78;
                v79 = *(v66 + 16);
                v117 = *v66;
                v118 = v79;
                sub_26BE5CDE4(&v155, &v146);
                v80 = v180;
                MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(&v107, &v117);
                v39 = v80;
                if (v80)
                {

                  sub_26BE5CD74(&v155);
                  sub_26BE5CD74(&v155);
                  v151 = v122;
                  v152 = v123;
                  v153 = v124;
                  v147 = v118;
                  v148 = v119;
                  v149 = v120;
                  v150 = v121;
                  v154 = v125;
                  v146 = v117;
                  sub_26BE00854(&v146);
                  sub_26BE5CF0C(&__dst);
                  goto LABEL_96;
                }

                v151 = v122;
                v152 = v123;
                v153 = v124;
                v147 = v118;
                v148 = v119;
                v149 = v120;
                v150 = v121;
                v154 = v125;
                v146 = v117;
                result = sub_26BE00854(&v146);
                v82 = *(v3 + *(v70 + 32) + 4);
                if (v82 < 0)
                {
                  goto LABEL_105;
                }

                v83 = 2 * v82;
                sub_26BE038A8(&__dst, &v108);
                sub_26BE4D0C0(&v108, v83);
                sub_26BE5CD74(&v155);
                sub_26BE5CD74(&v155);
                sub_26BE5CF0C(&__dst);
LABEL_48:
                v42 = v106;
LABEL_49:
                ++v41;
                v40 += 200;
                if (v42 == v41)
                {
                  v38 = v104;
                  goto LABEL_89;
                }

                continue;
              }

              sub_26BE5CF0C(&__dst);
            }

            else
            {
              sub_26BE5CDE4(&v155, &v146);
              sub_26BE5CDE4(&v155, &v146);

              sub_26BE5CCE0(&v132);
            }

            sub_26BE01654();
            swift_allocError();
            *v102 = 19;
            v102[112] = 0;
            swift_willThrow();
            sub_26BE5CD74(&v155);
            sub_26BE5CD74(&v155);
            goto LABEL_96;
          }

          LODWORD(v132) = v67;
          v140 = *(v66 + 80);
          v141 = *(v66 + 96);
          v142 = *(v66 + 112);
          *&v143 = *(v66 + 128);
          v136 = *(v66 + 16);
          v137 = *(v66 + 32);
          v138 = *(v66 + 48);
          v139 = *(v66 + 64);
          __dst = *v66;
          sub_26BE5CDE4(&v155, &v146);
          sub_26BE5CDE4(&v155, &v146);
          sub_26BE5CDE4(&v155, &v146);
          v89 = v180;
          MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(&v132, &__dst);
          v39 = v89;
          if (!v89)
          {
            sub_26BE5CD74(&v155);
            sub_26BE5CD74(&v155);
            v151 = v140;
            v152 = v141;
            v153 = v142;
            v147 = v136;
            v148 = v137;
            v149 = v138;
            v150 = v139;
            v154 = v143;
            v146 = __dst;
            sub_26BE00854(&v146);
            goto LABEL_48;
          }

          sub_26BE5CD74(&v155);
LABEL_92:
          sub_26BE5CD74(&v155);
          v151 = v140;
          v152 = v141;
          v153 = v142;
          v147 = v136;
          v148 = v137;
          v149 = v138;
          v150 = v139;
          v154 = v143;
          v146 = __dst;
          sub_26BE00854(&v146);
          goto LABEL_96;
        }

        sub_26BE5CDE4(&v155, &v146);
        sub_26BE5CDE4(&v155, &v146);
        sub_26BE5CDE4(&v155, &v146);
        v38 = v104;

        sub_26BE01654();
        swift_allocError();
        *v101 = 7;
        v101[112] = 0;
        swift_willThrow();
        sub_26BE5CD74(&v155);
      }

      else
      {
        if (!v61)
        {
          v90 = sub_26BE5CDC8(&v168);
          v91 = *(v90 + 120);
          v140 = *(v90 + 104);
          v141 = v91;
          v142 = *(v90 + 136);
          *&v143 = *(v90 + 152);
          v92 = *(v90 + 56);
          v136 = *(v90 + 40);
          v137 = v92;
          v93 = *(v90 + 88);
          v138 = *(v90 + 72);
          v139 = v93;
          __dst = *(v90 + 24);
          sub_26BE5CDE4(&v155, &v146);
          sub_26BE00758(v90 + 24, &v146);
          MLS.TreeKEMPublicKey.addLeaf(_:)(&__dst, &v132);
          if (v39)
          {
            goto LABEL_101;
          }

          v151 = v140;
          v152 = v141;
          v153 = v142;
          v147 = v136;
          v148 = v137;
          v149 = v138;
          v150 = v139;
          v154 = v143;
          v146 = __dst;
          sub_26BE00854(&v146);
          v94 = v132;
          v38 = v104;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v180) = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = sub_26BEECEB4(0, *(v104 + 2) + 1, 1, v104);
          }

          v97 = *(v38 + 2);
          v96 = *(v38 + 3);
          if (v97 >= v96 >> 1)
          {
            v38 = sub_26BEECEB4((v96 > 1), v97 + 1, 1, v38);
          }

          v37 = v41 + 1;
          sub_26BE5CD74(&v155);
          *(v38 + 2) = v97 + 1;
          *&v38[4 * v97 + 32] = v180;
          if (v103 == v41)
          {
            goto LABEL_89;
          }

          goto LABEL_47;
        }

LABEL_84:
        sub_26BE5CDE4(&v155, &v146);
        sub_26BE5CDE4(&v155, &v146);
        v38 = v104;

        sub_26BE01654();
        swift_allocError();
        *v100 = 15;
        v100[112] = 3;
        swift_willThrow();
      }

      sub_26BE5CD74(&v155);
      sub_26BE5CD74(&v155);
      return v38;
    }

    break;
  }

  if (v61 != 2)
  {
    if (v61 != 6)
    {
      goto LABEL_84;
    }

    v62 = *sub_26BE5CDC8(&v168);
    v63 = *(type metadata accessor for MLS.GroupState() + 40);
    v64 = *(v3 + v63);
    sub_26BE5CDE4(&v155, &v146);

    *(v3 + v63) = v62;
    goto LABEL_48;
  }

  result = sub_26BE5CDC8(&v168);
  v84 = *result;
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return result;
  }

  v85 = *(v3 + 48);
  v86 = v85 - 1;
  if (!v85)
  {
    goto LABEL_103;
  }

  if (v86 < 0)
  {
    goto LABEL_104;
  }

  v87 = (2 * v84);
  if (v87 <= 2 * v86)
  {
    v88 = *(v3 + 56);
    if (*(v88 + 16) <= v87 || (memmove(&__dst, (v88 + 136 * v87 + 32), 0x88uLL), sub_26BE58C10(&__dst) == 1))
    {
      sub_26BE5CDE4(&v155, &v146);

      sub_26BE01654();
      swift_allocError();
      *v98 = 13;
      v99 = 3;
      goto LABEL_88;
    }

    LODWORD(v132) = v84;
    sub_26BE5CDE4(&v155, &v146);
    MLS.TreeKEMPublicKey.blankPath(index:)(&v132);
    if (v39)
    {
      v38 = v104;

      goto LABEL_89;
    }

    goto LABEL_49;
  }

  sub_26BE5CDE4(&v155, &v146);

  sub_26BE01654();
  swift_allocError();
  *v98 = 30;
  *(v98 + 8) = 0u;
  *(v98 + 24) = 0u;
  *(v98 + 40) = 0u;
  *(v98 + 56) = 0u;
  *(v98 + 72) = 0u;
  *(v98 + 88) = 0u;
  *(v98 + 104) = 0;
  v99 = 23;
LABEL_88:
  *(v98 + 112) = v99;
  swift_willThrow();
LABEL_96:
  v38 = v104;

  return v38;
}
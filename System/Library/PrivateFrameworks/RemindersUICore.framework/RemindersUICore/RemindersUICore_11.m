uint64_t sub_21D1D6B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF648C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_21D1D9970();
    v22 = sub_21DBFA10C();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1D6D84(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v97 = v2;
  v98 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v9 = v5[5];
    v80 = v5[4];
    v81 = v9;
    v10 = v5[5];
    v82 = v5[6];
    v11 = v5[1];
    v77[0] = *v5;
    v77[1] = v11;
    v12 = v5[3];
    v14 = *v5;
    v13 = v5[1];
    v78 = v5[2];
    v79 = v12;
    v15 = v6[1];
    v83[0] = *v6;
    v83[1] = v15;
    v16 = v6[5];
    v88 = v6[6];
    v17 = v6[3];
    v18 = v6[5];
    v86 = v6[4];
    v87 = v18;
    v19 = v6[3];
    v20 = *v6;
    v21 = v6[1];
    v84 = v6[2];
    v85 = v19;
    v22 = v5[1];
    v89[0] = *v5;
    v89[1] = v22;
    v23 = v5[6];
    v24 = v5[4];
    v89[5] = v5[5];
    v89[6] = v23;
    v89[4] = v24;
    v25 = v5[3];
    v89[2] = v5[2];
    v89[3] = v25;
    v89[7] = v20;
    v89[8] = v21;
    v26 = v6[6];
    v89[12] = v16;
    v89[13] = v26;
    v89[10] = v17;
    v89[11] = v86;
    v89[9] = v84;
    v90 = v14;
    v91 = v13;
    v27 = v5[6];
    v95 = v10;
    v96 = v27;
    v93 = v8;
    v94 = v80;
    v92 = v78;
    if (!v14)
    {
      break;
    }

    v28 = v6[5];
    v74 = v6[4];
    v75 = v28;
    v76 = v6[6];
    v29 = v6[1];
    v70 = *v6;
    v71 = v29;
    v30 = v6[3];
    v72 = v6[2];
    v73 = v30;
    if (!v70)
    {
      v43 = v5[5];
      v67 = v5[4];
      v68 = v43;
      v69 = v5[6];
      v44 = v5[1];
      v63 = *v5;
      v64 = v44;
      v45 = v5[3];
      v65 = v5[2];
      v66 = v45;
      v46 = &v63;
      v47 = v62;
      goto LABEL_30;
    }

    sub_21D0D8CF0(0, &qword_280D17680);
    sub_21D1D9A84(v83, &v63);
    sub_21D1D9A84(v77, &v63);
    sub_21D1D9A84(v83, &v63);
    sub_21D1D9A84(v77, &v63);
    sub_21D1D9A84(v83, &v63);
    sub_21D1D9A84(v77, &v63);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_26;
    }

    v31 = *(&v90 + 1);
    v32 = *(&v70 + 1);
    if (*(&v90 + 1))
    {
      if (!*(&v70 + 1) || (sub_21D0D8CF0(0, &qword_280D0C1A0), v33 = v32, v34 = v31, v35 = sub_21DBFB63C(), v33, v34, (v35 & 1) == 0))
      {
LABEL_26:
        sub_21D0CF7E0(v89, &qword_27CE593A0);
        sub_21D1D9AE0(v83);
        sub_21D1D9AE0(v77);
        sub_21D1D9AE0(v83);
        sub_21D1D9AE0(v77);
        return 0;
      }
    }

    else if (*(&v70 + 1))
    {
      goto LABEL_26;
    }

    v59 = v93;
    v60 = v94;
    v61 = v95;
    v57 = v91;
    v58 = v92;
    v54 = v73;
    v55 = v74;
    v56 = v75;
    v52 = v71;
    v53 = v72;
    v36 = _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(&v57, &v52);
    v62[2] = v54;
    v62[3] = v55;
    v62[4] = v56;
    v62[0] = v52;
    v62[1] = v53;
    sub_21D1D9B34(&v91, v51);
    sub_21D1D9B34(&v71, v51);
    sub_21D1D9B90(v62);
    v65 = v59;
    v66 = v60;
    v67 = v61;
    v63 = v57;
    v64 = v58;
    sub_21D1D9B90(&v63);
    if ((v36 & 1) == 0 || v96 != v76)
    {
      goto LABEL_26;
    }

    v37 = *(&v96 + 1);
    v38 = *(&v76 + 1);
    if (*(&v96 + 1))
    {
      if (!*(&v76 + 1))
      {
        goto LABEL_26;
      }

      sub_21D0D8CF0(0, &qword_280D17688);
      v39 = v38;
      v40 = v37;
      v41 = sub_21DBFB63C();

      sub_21D0CF7E0(v89, &qword_27CE593A0);
      sub_21D1D9AE0(v83);
      sub_21D1D9AE0(v77);
      sub_21D1D9AE0(v83);
      sub_21D1D9AE0(v77);
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_21D0CF7E0(v89, &qword_27CE593A0);
      sub_21D1D9AE0(v83);
      sub_21D1D9AE0(v77);
      sub_21D1D9AE0(v83);
      sub_21D1D9AE0(v77);
      if (v38)
      {
        return 0;
      }
    }

LABEL_22:
    if (!i)
    {
      return 1;
    }

    v6 += 7;
    v5 += 7;
  }

  if (!*&v83[0])
  {
    sub_21D0CF7E0(v89, &qword_27CE593A0);
    goto LABEL_22;
  }

  v48 = v6[5];
  v74 = v6[4];
  v75 = v48;
  v76 = v6[6];
  v49 = v6[1];
  v70 = *v6;
  v71 = v49;
  v50 = v6[3];
  v72 = v6[2];
  v73 = v50;
  v46 = &v70;
  v47 = &v63;
LABEL_30:
  sub_21D1D9C94(v46, v47);
  sub_21D0CF7E0(v89, &qword_27CE593A0);
  return 0;
}

void sub_21D1D7218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 1);
      v7 = *(v4 - 3);
      v8 = *(v4 - 1);
      v25 = *v3;
      v26 = *v4;
      v23 = v7;
      v24 = v5;
      v21 = *(v4 - 2);
      v22 = *(v3 - 2);
      if (v5)
      {
        if (!v7)
        {
          return;
        }

        sub_21D0D8CF0(0, &qword_280D17688);
        v9 = v5;
        v10 = v6;
        sub_21DBF8E0C();
        v11 = v25;
        v12 = v7;
        v13 = v8;
        sub_21DBF8E0C();
        v14 = v26;
        v15 = v12;
        v16 = v9;
        v17 = sub_21DBFB63C();

        if ((v17 & 1) == 0)
        {

          goto LABEL_18;
        }
      }

      else
      {
        if (v7)
        {
          return;
        }

        v10 = *(v3 - 1);
        sub_21DBF8E0C();
        v18 = v25;
        v13 = v8;
        sub_21DBF8E0C();
        v19 = v26;
      }

      if ((v22 != v21 || v10 != v13) && (sub_21DBFC64C() & 1) == 0)
      {
        break;
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      v20 = sub_21DBFB63C();

      if (v20)
      {
        v3 += 4;
        v4 += 4;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }

    v15 = v24;
LABEL_18:
  }
}

uint64_t sub_21D1D7464(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v28 = v5[2];
    v29 = v8;
    v30 = v5[4];
    v9 = v5[1];
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[4];
    v32 = v6[3];
    v33 = v13;
    v31[1] = v11;
    v31[2] = v12;
    v31[0] = v10;
    v19 = v12;
    v20 = v32;
    v21 = v13;
    v17 = v10;
    v18 = v11;
    v14 = _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(&v22, &v17);
    v34[2] = v19;
    v34[3] = v20;
    v34[4] = v21;
    v34[0] = v17;
    v34[1] = v18;
    sub_21D1D9B34(v27, v16);
    sub_21D1D9B34(v31, v16);
    sub_21D1D9B90(v34);
    v35[2] = v24;
    v35[3] = v25;
    v35[4] = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_21D1D9B90(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_21D1D75BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_21D1D7644(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_21D1D76BC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1D7718(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); *(i - 2) == *(v3 - 2); i += 24)
    {
      result = 0;
      if (*(i - 1) != *(v3 - 1) || ((*i ^ *v3) & 1) != 0)
      {
        return result;
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21D1D7798(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_21DBFC64C();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21D1D7854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x6E756F4669726973;
      if (v6 != 5)
      {
        v8 = 0x6574656C706D6F63;
      }

      v9 = 0xEF737070416E4964;
      if (v6 != 5)
      {
        v9 = 0xE900000000000064;
      }

      if (v6 == 3)
      {
        v10 = 0x64656767616C66;
      }

      else
      {
        v10 = 0x64656E6769737361;
      }

      v11 = 0xE700000000000000;
      if (v6 != 3)
      {
        v11 = 0xE800000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0x656C756465686373;
      if (v6 != 1)
      {
        v12 = 7105633;
      }

      v13 = 0xE300000000000000;
      if (v6 == 1)
      {
        v13 = 0xE900000000000064;
      }

      if (!*v3)
      {
        v12 = 0x7961646F74;
        v13 = 0xE500000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (!*v4)
        {
          v16 = 0xE500000000000000;
          v17 = 0x7961646F74;
          goto LABEL_44;
        }

        if (v7 != 1)
        {
          v16 = 0xE300000000000000;
          v17 = 7105633;
          goto LABEL_44;
        }

        v17 = 0x656C756465686373;
      }

      else
      {
        if (*v4 <= 4u)
        {
          if (v7 == 3)
          {
            v16 = 0xE700000000000000;
            v17 = 0x64656767616C66;
          }

          else
          {
            v16 = 0xE800000000000000;
            v17 = 0x64656E6769737361;
          }

          goto LABEL_44;
        }

        if (v7 == 5)
        {
          v17 = 0x6E756F4669726973;
          v16 = 0xEF737070416E4964;
          goto LABEL_44;
        }

        v17 = 0x6574656C706D6F63;
      }

      v16 = 0xE900000000000064;
LABEL_44:
      if (v14 == v17 && v15 == v16)
      {
      }

      else
      {
        v5 = sub_21DBFC64C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21D1D7AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v8 = sub_21D114F28(v5, v7, &qword_280D176A0);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21D1D7BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_21DBFC64C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21D1D7C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_21D1221E8(v20, v17, a4);
        sub_21D1221E8(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_21D1222E8(v13, a6);
        sub_21D1222E8(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_21D1D7E38(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1D7E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 88)
    {
      sub_21D1D9CF0(v3, v23);
      sub_21D1D9CF0(i, v16);
      if ((MEMORY[0x223D445C0](v23, v16) & 1) == 0)
      {
        break;
      }

      v5 = v24;
      v6 = v17;
      if (v24)
      {
        if (!v17)
        {
          break;
        }

        sub_21D0D8CF0(0, &qword_280D17688);
        v7 = v6;
        v8 = v5;
        v9 = sub_21DBFB63C();

        if ((v9 & 1) == 0)
        {
          break;
        }
      }

      else if (v17)
      {
        break;
      }

      v10 = v25;
      v11 = v18;
      if (v25)
      {
        if (!v18)
        {
          break;
        }

        sub_21D0D8CF0(0, &qword_280D1B8F0);
        v12 = v11;
        v13 = v10;
        v14 = sub_21DBFB63C();

        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }

      if ((v26 != v19 || v27 != v20) && (sub_21DBFC64C() & 1) == 0 || (v28 != v21 || v29 != v22) && (sub_21DBFC64C() & 1) == 0)
      {
        break;
      }

      sub_21D1D9D4C(v16);
      sub_21D1D9D4C(v23);
      v3 += 88;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_21D1D9D4C(v16);
    sub_21D1D9D4C(v23);
  }

  return 0;
}

uint64_t sub_21D1D8080(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v42 = v2;
  v43 = v3;
  v5 = v4 - 1;
  v6 = (a2 + 48);
  for (i = a1 + 73; ; i += 64)
  {
    v8 = *(i - 25);
    v37 = *(i - 41);
    v38 = v8;
    v9 = *(i + 7);
    v39 = *(i - 9);
    v40 = v9;
    v10 = *v6;
    v41[0] = *(v6 - 1);
    v41[1] = v10;
    v11 = v6[2];
    v41[2] = v6[1];
    v41[3] = v11;
    v12 = v37;
    v13 = *(&v38 + 1);
    v14 = v38;
    v15 = v39;
    v16 = BYTE8(v39);
    v36[0] = *i;
    *(v36 + 15) = *(i + 15);
    if (*(&v37 + 1))
    {
      if (!*(&v41[0] + 1))
      {
        goto LABEL_17;
      }

      v22 = *(&v37 + 1);
      v30 = v41[0];
      v17 = v6[1];
      *v31 = *v6;
      *&v31[16] = v17;
      *&v31[32] = v6[2];
      sub_21D0D3954(&v37, &v23, &qword_27CE58670);
      sub_21D0D3954(v41, &v23, &qword_27CE58670);
      sub_21D0D3954(&v37, &v23, &qword_27CE58670);
      sub_21D0D3954(v41, &v23, &qword_27CE58670);
      sub_21D0CF7E0(&v30, &qword_27CE58670);
      if (__PAIR128__(v15, v13) != *&v31[8] || ((v31[24] ^ v16) & 1) != 0)
      {
        v23 = v12;
        v24 = v22;
        v25 = v14;
        v26 = v13;
        v27 = v15;
        v28 = v16;
        *v29 = v36[0];
        *&v29[15] = *(v36 + 15);
        sub_21D0CF7E0(&v23, &qword_27CE58670);
        sub_21D0CF7E0(v41, &qword_27CE58670);
        v19 = &v37;
        v20 = &qword_27CE58670;
LABEL_18:
        sub_21D0CF7E0(v19, v20);
        return 0;
      }

      v23 = v12;
      v24 = v22;
      v25 = v14;
      v26 = v13;
      v27 = v15;
      v28 = v16;
      *v29 = v36[0];
      *&v29[15] = *(v36 + 15);
      sub_21D0CF7E0(&v23, &qword_27CE58670);
      sub_21D0CF7E0(v41, &qword_27CE58670);
      sub_21D0CF7E0(&v37, &qword_27CE58670);
      if (!v5)
      {
        return 1;
      }

      goto LABEL_13;
    }

    if (*(&v41[0] + 1))
    {
LABEL_17:
      v30 = v37;
      *v31 = v38;
      *&v31[16] = v39;
      v31[24] = BYTE8(v39);
      *&v31[25] = *i;
      *&v31[40] = *(i + 15);
      v32 = v41[0];
      v21 = v6[1];
      v33 = *v6;
      v34 = v21;
      v35 = v6[2];
      sub_21D0D3954(&v37, &v23, &qword_27CE58670);
      sub_21D0D3954(v41, &v23, &qword_27CE58670);
      v20 = &unk_27CE59380;
      v19 = &v30;
      goto LABEL_18;
    }

    v30 = v37;
    *v31 = v38;
    *&v31[16] = v39;
    v31[24] = BYTE8(v39);
    *&v31[25] = *i;
    *&v31[40] = *(i + 15);
    sub_21D0D3954(&v37, &v23, &qword_27CE58670);
    sub_21D0D3954(v41, &v23, &qword_27CE58670);
    sub_21D0CF7E0(&v30, &qword_27CE58670);
    if (!v5)
    {
      break;
    }

LABEL_13:
    --v5;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_21D1D83E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a2 + 72;
  v4 = (a1 + 40);
  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v8 = v4[1];
    v7 = v4[2];
    v9 = *(v3 - 32);
    v23 = *(v3 - 24);
    v21 = *(v3 - 16);
    v22 = *(v3 - 40);
    if (*v4)
    {
      break;
    }

    if (v9)
    {
LABEL_13:
      v14 = *(v4 - 1);
      v15 = *(v3 - 32);
      sub_21D1D99C8(v14, v6, v8);
      sub_21D1D99C8(v22, v15, v23);
      sub_21D1D9A20(v14, v6, v8);
      v16 = v22;
      v17 = v15;
      v18 = v23;
      goto LABEL_15;
    }

    sub_21D1D99C8(v5, 0, v8);
    sub_21D1D99C8(v22, 0, v23);
    v11 = v5;
    v12 = 0;
LABEL_5:
    v4 += 6;
    sub_21D1D9A20(v11, v12, v8);
    v3 += 48;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v19 = v2;
  v10 = *(v3 - 32);
  v20 = v4[1];
  sub_21D1D99C8(v5, v6, v8);
  sub_21D1D99C8(v22, v10, v23);
  sub_21D1D99C8(v5, v6, v8);
  sub_21D1D99C8(v22, v10, v23);
  sub_21D1D9A20(v22, v10, v23);
  sub_21D1D9A20(v5, v6, v20);
  sub_21D1D9A20(v22, v10, v23);
  if (((v21 ^ v7) & 1) == 0)
  {
    v11 = v5;
    v8 = v20;
    v12 = v6;
    v2 = v19;
    goto LABEL_5;
  }

  v16 = v5;
  v17 = v6;
  v18 = v20;
LABEL_15:
  sub_21D1D9A20(v16, v17, v18);
  return 0;
}

void sub_21D1D86BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v6)
      {
        if (!v7)
        {
          return;
        }

        sub_21D0D8CF0(0, &qword_280D17688);
        v9 = v6;
        v10 = v5;
        v11 = v7;
        v12 = v8;
        v13 = v11;
        v14 = v9;
        v15 = sub_21DBFB63C();

        if ((v15 & 1) == 0)
        {

          return;
        }
      }

      else
      {
        if (v7)
        {
          return;
        }

        v16 = v5;
        v17 = v8;
        v14 = 0;
        v13 = 0;
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      v18 = sub_21DBFB63C();

      if (v18)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_21D1D881C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v6)
      {
        if (!v7)
        {
          return;
        }

        sub_21D0D8CF0(0, &qword_280D17688);
        v9 = v7;
        v10 = v6;
        v11 = v9;
        v12 = v10;
        v13 = v5;
        v14 = v8;
        v15 = sub_21DBFB63C();

        if ((v15 & 1) == 0)
        {

          return;
        }
      }

      else
      {
        if (v7)
        {
          return;
        }

        v16 = v5;
        v17 = v8;
        v12 = 0;
        v11 = 0;
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      v18 = sub_21DBFB63C();

      if (v18)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_21D1D8980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0) - 8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_21D1221E8(v19, v16, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D1221E8(v20, v12, type metadata accessor for TTRRemindersListViewModel.Item);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
        v22 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
        sub_21D1222E8(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D1222E8(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D1222E8(v12, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D1222E8(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_21D1D8BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a2 + 72;
  v4 = (a1 + 40);
  while (1)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = v4[1];
    v8 = *(v3 - 32);
    v9 = *(v3 - 24);
    v21 = *(v3 - 16);
    if (*v4)
    {
      break;
    }

    v23 = *(v3 - 40);
    if (v8)
    {
      goto LABEL_14;
    }

    sub_21D1D99C8(v6, 0, v7);
    sub_21D1D99C8(v23, 0, v9);
    v11 = 0;
LABEL_5:
    v4 += 6;
    sub_21D1D9A20(v6, v11, v7);
    v3 += 48;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v8)
  {
    v23 = *(v3 - 40);
LABEL_14:
    v13 = *(v3 - 32);
    v19 = v8;
    v14 = *v4;
    sub_21D1D99C8(v6, v5, v7);
    sub_21D1D99C8(v23, v13, v9);
    sub_21D1D9A20(v6, v14, v7);
    v15 = v23;
    v16 = v19;
    v17 = v9;
    goto LABEL_16;
  }

  v18 = v2;
  v20 = v4[2];
  v10 = *(v3 - 40);
  v22 = *v4;
  sub_21D1D99C8(v6, v5, v7);
  sub_21D1D99C8(v10, v8, v9);
  sub_21D1D99C8(v6, v22, v7);
  sub_21D1D99C8(v10, v8, v9);
  sub_21D1D9A20(v10, v8, v9);
  sub_21D1D9A20(v6, v22, v7);
  if (v20 == v21)
  {
    sub_21D1D9A20(v10, v8, v9);
    v11 = v22;
    v2 = v18;
    goto LABEL_5;
  }

  sub_21D1D9A20(v10, v8, v9);
  v17 = v7;
  v15 = v6;
  v16 = v22;
LABEL_16:
  sub_21D1D9A20(v15, v16, v17);
  return 0;
}

uint64_t sub_21D1D8EB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v120 = v2;
  v121 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v105 = *(v5 + 96);
    v106 = v8;
    v10 = *(v5 + 112);
    v107 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v101 = *(v5 + 32);
    v102 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v103 = *(v5 + 64);
    v104 = v14;
    v15 = *(v5 + 16);
    v100[0] = *v5;
    v100[1] = v15;
    v16 = *(v6 + 112);
    v17 = *(v6 + 80);
    v114 = *(v6 + 96);
    v115 = v16;
    v18 = *(v6 + 112);
    v116 = *(v6 + 128);
    v19 = *(v6 + 48);
    v20 = *(v6 + 16);
    v110 = *(v6 + 32);
    v111 = v19;
    v21 = *(v6 + 48);
    v22 = *(v6 + 80);
    v112 = *(v6 + 64);
    v113 = v22;
    v23 = *(v6 + 16);
    v109[0] = *v6;
    v109[1] = v23;
    v24 = *(v5 + 112);
    __src[6] = *(v5 + 96);
    __src[7] = v24;
    __src[8] = *(v5 + 128);
    v25 = *(v5 + 48);
    __src[2] = *(v5 + 32);
    __src[3] = v25;
    v26 = *(v5 + 80);
    __src[4] = *(v5 + 64);
    __src[5] = v26;
    v27 = *(v5 + 16);
    __src[0] = *v5;
    __src[1] = v27;
    *(&__src[15] + 8) = v114;
    *(&__src[16] + 8) = v18;
    *(&__src[17] + 8) = *(v6 + 128);
    *(&__src[11] + 8) = v110;
    *(&__src[12] + 8) = v21;
    *(&__src[13] + 8) = v112;
    *(&__src[14] + 8) = v17;
    *(&__src[9] + 8) = v109[0];
    *(&__src[10] + 8) = v20;
    v118[6] = v105;
    v118[7] = v10;
    v118[8] = *(v5 + 128);
    v118[2] = v101;
    v118[3] = v13;
    v118[4] = v103;
    v118[5] = v9;
    v108 = *(v5 + 144);
    v117 = *(v6 + 144);
    *&__src[9] = *(v5 + 144);
    *(&__src[18] + 1) = *(v6 + 144);
    v119 = *(v5 + 144);
    v118[0] = v100[0];
    v118[1] = v12;
    if (sub_21D1D9A6C(v118) != 1)
    {
      break;
    }

    __dst[6] = *(&__src[15] + 8);
    __dst[7] = *(&__src[16] + 8);
    __dst[8] = *(&__src[17] + 8);
    *&__dst[9] = *(&__src[18] + 1);
    __dst[2] = *(&__src[11] + 8);
    __dst[3] = *(&__src[12] + 8);
    __dst[4] = *(&__src[13] + 8);
    __dst[5] = *(&__src[14] + 8);
    __dst[0] = *(&__src[9] + 8);
    __dst[1] = *(&__src[10] + 8);
    if (sub_21D1D9A6C(__dst) != 1)
    {
      goto LABEL_32;
    }

    v95 = __src[6];
    v96 = __src[7];
    v97 = __src[8];
    v98 = *&__src[9];
    v91 = __src[2];
    v92 = __src[3];
    v93 = __src[4];
    v94 = __src[5];
    v89 = __src[0];
    v90 = __src[1];
    sub_21D0D3954(v100, &v78, &qword_27CE59390);
    sub_21D0D3954(v109, &v78, &qword_27CE59390);
    v28 = &v89;
LABEL_27:
    sub_21D0CF7E0(v28, &qword_27CE59390);
    if (!i)
    {
      return 1;
    }

    v6 += 152;
    v5 += 152;
  }

  v95 = *(&__src[15] + 8);
  v96 = *(&__src[16] + 8);
  v97 = *(&__src[17] + 8);
  v98 = *(&__src[18] + 1);
  v91 = *(&__src[11] + 8);
  v92 = *(&__src[12] + 8);
  v93 = *(&__src[13] + 8);
  v94 = *(&__src[14] + 8);
  v89 = *(&__src[9] + 8);
  v90 = *(&__src[10] + 8);
  if (sub_21D1D9A6C(&v89) == 1)
  {
LABEL_32:
    memcpy(__dst, __src, sizeof(__dst));
    sub_21D0D3954(v100, &v89, &qword_27CE59390);
    sub_21D0D3954(v109, &v89, &qword_27CE59390);
    v41 = &unk_27CE59398;
    v42 = __dst;
    goto LABEL_39;
  }

  v73[6] = *(&__src[15] + 8);
  v73[7] = *(&__src[16] + 8);
  v73[8] = *(&__src[17] + 8);
  v73[2] = *(&__src[11] + 8);
  v73[3] = *(&__src[12] + 8);
  v73[4] = *(&__src[13] + 8);
  v73[5] = *(&__src[14] + 8);
  v73[0] = *(&__src[9] + 8);
  v73[1] = *(&__src[10] + 8);
  v76[5] = *(&__src[15] + 8);
  v76[6] = *(&__src[16] + 8);
  v76[7] = *(&__src[17] + 8);
  v76[1] = *(&__src[11] + 8);
  v76[2] = *(&__src[12] + 8);
  v74 = *(&__src[18] + 1);
  v77 = *(&__src[18] + 1);
  v76[3] = *(&__src[13] + 8);
  v76[4] = *(&__src[14] + 8);
  v75 = *(&__src[9] + 8);
  v76[0] = *(&__src[10] + 8);
  v79[6] = __src[7];
  v79[7] = __src[8];
  v80 = *&__src[9];
  v79[1] = __src[2];
  v79[2] = __src[3];
  v79[3] = __src[4];
  v79[4] = __src[5];
  v79[5] = __src[6];
  v78 = __src[0];
  v79[0] = __src[1];
  __dst[4] = *(&__src[5] + 8);
  __dst[5] = *(&__src[6] + 8);
  __dst[6] = *(&__src[7] + 8);
  __dst[0] = *(&__src[1] + 8);
  __dst[1] = *(&__src[2] + 8);
  __dst[3] = *(&__src[4] + 8);
  __dst[2] = *(&__src[3] + 8);
  __dst[7] = __src[11];
  __dst[8] = __src[12];
  __dst[12] = __src[16];
  __dst[13] = __src[17];
  __dst[10] = __src[14];
  __dst[11] = __src[15];
  __dst[9] = __src[13];
  v82 = *(&__src[2] + 8);
  v81 = *(&__src[1] + 8);
  v87 = *(&__src[7] + 8);
  v86 = *(&__src[6] + 8);
  v85 = *(&__src[5] + 8);
  v83 = *(&__src[3] + 8);
  v84 = *(&__src[4] + 8);
  if (*(&__src[1] + 1))
  {
    v70 = __src[15];
    v71 = __src[16];
    v72 = __src[17];
    v66 = __src[11];
    v67 = __src[12];
    v68 = __src[13];
    v69 = __src[14];
    if (!*&__src[11])
    {
      sub_21D0D3954(v100, &v56, &qword_27CE59390);
      sub_21D0D3954(v109, &v56, &qword_27CE59390);
      sub_21D0D3954(v100, &v56, &qword_27CE59390);
      sub_21D0D3954(v109, &v56, &qword_27CE59390);
      v43 = &v78;
      goto LABEL_36;
    }

    sub_21D0D8CF0(0, &qword_280D17680);
    sub_21D0D3954(v100, &v56, &qword_27CE59390);
    sub_21D0D3954(v109, &v56, &qword_27CE59390);
    sub_21D1D9A84(v76 + 8, &v56);
    sub_21D1D9A84(v79 + 8, &v56);
    sub_21D0D3954(v100, &v56, &qword_27CE59390);
    sub_21D0D3954(v109, &v56, &qword_27CE59390);
    sub_21D1D9A84(v76 + 8, &v56);
    sub_21D1D9A84(v79 + 8, &v56);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_31;
    }

    v29 = *(&v81 + 1);
    v30 = *(&v66 + 1);
    if (*(&v81 + 1))
    {
      if (!*(&v66 + 1) || (sub_21D0D8CF0(0, &qword_280D0C1A0), v31 = v30, v32 = v29, v33 = sub_21DBFB63C(), v31, v32, (v33 & 1) == 0))
      {
LABEL_31:
        sub_21D0CF7E0(__dst, &qword_27CE593A0);
        sub_21D1D9AE0(v76 + 8);
        sub_21D1D9AE0(v79 + 8);
        goto LABEL_37;
      }
    }

    else if (*(&v66 + 1))
    {
      goto LABEL_31;
    }

    v52 = v84;
    v53 = v85;
    v54 = v86;
    v50 = v82;
    v51 = v83;
    v47 = v69;
    v48 = v70;
    v49 = v71;
    v45 = v67;
    v46 = v68;
    v34 = _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(&v50, &v45);
    v55[2] = v47;
    v55[3] = v48;
    v55[4] = v49;
    v55[0] = v45;
    v55[1] = v46;
    sub_21D1D9B34(&v82, v44);
    sub_21D1D9B34(&v67, v44);
    sub_21D1D9B90(v55);
    v58 = v52;
    v59 = v53;
    v60 = v54;
    v56 = v50;
    v57 = v51;
    sub_21D1D9B90(&v56);
    if ((v34 & 1) == 0 || v87 != v72)
    {
      goto LABEL_31;
    }

    v35 = *(&v87 + 1);
    v36 = *(&v72 + 1);
    if (*(&v87 + 1))
    {
      if (!*(&v72 + 1))
      {
        goto LABEL_31;
      }

      sub_21D0D8CF0(0, &qword_280D17688);
      v37 = v36;
      v38 = v35;
      v39 = sub_21DBFB63C();

      sub_21D0CF7E0(__dst, &qword_27CE593A0);
      sub_21D1D9AE0(v76 + 8);
      sub_21D1D9AE0(v79 + 8);
      sub_21D0CF7E0(v73, &qword_27CE59390);
      if ((v39 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_21D0CF7E0(__dst, &qword_27CE593A0);
      sub_21D1D9AE0(v76 + 8);
      sub_21D1D9AE0(v79 + 8);
      sub_21D0CF7E0(v73, &qword_27CE59390);
      if (v36)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_26;
  }

  if (!*(&v76[0] + 1))
  {
    sub_21D0D3954(v100, &v56, &qword_27CE59390);
    sub_21D0D3954(v109, &v56, &qword_27CE59390);
    sub_21D0D3954(v100, &v56, &qword_27CE59390);
    sub_21D0D3954(v109, &v56, &qword_27CE59390);
    sub_21D0CF7E0(__dst, &qword_27CE593A0);
    sub_21D0CF7E0(v73, &qword_27CE59390);
LABEL_26:
    v62 = __src[6];
    v63 = __src[7];
    v64 = __src[8];
    v65 = *&__src[9];
    v58 = __src[2];
    v59 = __src[3];
    v60 = __src[4];
    v61 = __src[5];
    v56 = __src[0];
    v57 = __src[1];
    sub_21D0CF7E0(&v56, &qword_27CE59390);
    sub_21D0CF7E0(v109, &qword_27CE59390);
    v28 = v100;
    goto LABEL_27;
  }

  sub_21D0D3954(v100, &v56, &qword_27CE59390);
  sub_21D0D3954(v109, &v56, &qword_27CE59390);
  sub_21D0D3954(v100, &v56, &qword_27CE59390);
  sub_21D0D3954(v109, &v56, &qword_27CE59390);
  v43 = &v75;
LABEL_36:
  sub_21D1D9A84(v43 + 24, &v56);
  sub_21D0CF7E0(__dst, &qword_27CE593A0);
LABEL_37:
  sub_21D0CF7E0(v73, &qword_27CE59390);
LABEL_38:
  v62 = __src[6];
  v63 = __src[7];
  v64 = __src[8];
  v65 = *&__src[9];
  v58 = __src[2];
  v59 = __src[3];
  v60 = __src[4];
  v61 = __src[5];
  v56 = __src[0];
  v57 = __src[1];
  sub_21D0CF7E0(&v56, &qword_27CE59390);
  sub_21D0CF7E0(v109, &qword_27CE59390);
  v42 = v100;
  v41 = &qword_27CE59390;
LABEL_39:
  sub_21D0CF7E0(v42, v41);
  return 0;
}

unint64_t sub_21D1D9970()
{
  result = qword_27CE59388;
  if (!qword_27CE59388)
  {
    sub_21DBF648C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59388);
  }

  return result;
}

void sub_21D1D99C8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    v3 = a3;
  }
}

uint64_t sub_21D1D9A20(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21D1D9A6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Array.remove(at:)()
{
  result = sub_21DBF5ABC();
  if ((v1 & 1) == 0)
  {
    v2 = result;
    result = sub_21DBFA6DC();
    if (v2 < result)
    {
      v3 = v2 + 1;
      v4 = sub_21DBF5A7C();
      if (v5)
      {
        v4 = sub_21DBFA6DC();
      }

      v6 = v4;
      if (v3 == sub_21DBFA6DC())
      {
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE593B8);
        swift_getWitnessTable();
        sub_21D0D0F1C(qword_27CE593C0, &qword_27CE593B8);
        return sub_21DBFAD4C();
      }

      else
      {
        while (1)
        {
          if (v3 == v6)
          {
            result = sub_21DBF5A7C();
            if (v7)
            {
              result = sub_21DBFA6DC();
            }

            v6 = result;
          }

          else
          {
            swift_getWitnessTable();
            result = sub_21DBFA0CC();
            if (__OFADD__(v2++, 1))
            {
              goto LABEL_16;
            }
          }

          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          ++v3;
          if (v9 == sub_21DBFA6DC())
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t Array.indicesForInsertion.getter()
{
  result = sub_21DBFA6DC();
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t TTRNormalizedItemLocation.init(sectionID:parentItemID:childIndex:itemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for TTRNormalizedItemLocation();
  v15 = v14[13];
  v16 = *(a6 - 8);
  (*(v16 + 56))(a7 + v15, 1, 1, a6);
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v17 = sub_21DBFBA8C();
  (*(*(v17 - 8) + 40))(a7 + v15, a2, v17);
  *(a7 + v14[14]) = a3;
  return (*(v16 + 32))(a7 + v14[15], a4, a6);
}

uint64_t TTRNormalizedItemLocation.description.getter()
{
  sub_21DBFBEEC();
  sub_21DBFC5EC();
  MEMORY[0x223D42AA0](0x5B20746120, 0xE500000000000000);
  sub_21DBFC5EC();
  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  sub_21DBFBA8C();
  v0 = sub_21DBFBA5C();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v1 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](93, 0xE100000000000000);
  return 0;
}

uint64_t static TTRNormalizedItemLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFBA8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v32 - v17;
  if ((sub_21DBFA10C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v37 = a6;
  v19 = type metadata accessor for TTRNormalizedItemLocation();
  v20 = *(v19 + 52);
  v21 = *(TupleTypeMetadata2 + 48);
  v36 = v14;
  v22 = a1;
  v23 = *(v14 + 16);
  v33 = v19;
  v34 = v22;
  v23(v18, v22 + v20, v13);
  v35 = a2;
  v23(&v18[v21], a2 + v20, v13);
  v24 = *(v41 + 48);
  if (v24(v18, 1, a4) == 1)
  {
    if (v24(&v18[v21], 1, a4) == 1)
    {
      (*(v36 + 8))(v18, v13);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v25 = v40;
  v23(v40, v18, v13);
  if (v24(&v18[v21], 1, a4) == 1)
  {
    (*(v41 + 8))(v25, a4);
LABEL_7:
    (*(v39 + 8))(v18, TupleTypeMetadata2);
LABEL_11:
    v30 = 0;
    return v30 & 1;
  }

  v26 = v41;
  v27 = v38;
  (*(v41 + 32))(v38, &v18[v21], a4);
  v28 = sub_21DBFA10C();
  v29 = *(v26 + 8);
  v29(v27, a4);
  v29(v25, a4);
  (*(v36 + 8))(v18, v13);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(v34 + *(v33 + 56)) != *(v35 + *(v33 + 56)))
  {
    goto LABEL_11;
  }

  v30 = sub_21DBFA10C();
  return v30 & 1;
}

uint64_t _s15RemindersUICore25TTRNormalizedItemLocationV06parentD2IDq_Sgvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_21DBFBA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _s15RemindersUICore25TTRNormalizedItemLocationV06parentD2IDq_Sgvs_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_21DBFBA8C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TTRNormalizedItemLocationForInsertAt.init(sectionID:parentItemID:unadjustedChildIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v13 = *(v12 + 52);
  (*(*(a5 - 8) + 56))(a6 + v13, 1, 1, a5);
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v14 = sub_21DBFBA8C();
  result = (*(*(v14 - 8) + 40))(a6 + v13, a2, v14);
  *(a6 + *(v12 + 56)) = a3;
  return result;
}

uint64_t TTRNormalizedItemLocationForInsertAt.description.getter()
{
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](91, 0xE100000000000000);
  sub_21DBFC5EC();
  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  sub_21DBFBA8C();
  v0 = sub_21DBFBA5C();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v1 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](0x5D296A64616E7528, 0xE800000000000000);
  return 0;
}

BOOL static TTRNormalizedItemLocationForInsertAt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFBA8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = v31 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v31 - v17;
  if ((sub_21DBFA10C() & 1) == 0)
  {
    return 0;
  }

  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v31[1] = a6;
  v19 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v20 = a1;
  v32 = v19;
  v33 = a1;
  v21 = *(v19 + 52);
  v22 = *(TupleTypeMetadata2 + 48);
  v35 = v14;
  v23 = *(v14 + 16);
  v23(v18, v20 + v21, v13);
  v34 = a2;
  v23(&v18[v22], a2 + v21, v13);
  v24 = *(v39 + 48);
  if (v24(v18, 1, a4) == 1)
  {
    if (v24(&v18[v22], 1, a4) == 1)
    {
      (*(v35 + 8))(v18, v13);
      return *(v33 + *(v32 + 56)) == *(v34 + *(v32 + 56));
    }

    goto LABEL_7;
  }

  v25 = v38;
  v23(v38, v18, v13);
  if (v24(&v18[v22], 1, a4) == 1)
  {
    (*(v39 + 8))(v25, a4);
LABEL_7:
    (*(v37 + 8))(v18, TupleTypeMetadata2);
    return 0;
  }

  v27 = v39;
  v28 = v36;
  (*(v39 + 32))(v36, &v18[v22], a4);
  v29 = sub_21DBFA10C();
  v30 = *(v27 + 8);
  v30(v28, a4);
  v30(v25, a4);
  (*(v35 + 8))(v18, v13);
  if (v29)
  {
    return *(v33 + *(v32 + 56)) == *(v34 + *(v32 + 56));
  }

  return 0;
}

uint64_t sub_21D1DAF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 52), v6, v8);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v11 + 16))(a2, v2, v5);
  result = (v12)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_21D1DB140()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_21DBFBA8C();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_21D1DB260(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v9;
  v11 = v5 + v9;
  v12 = (v5 + v10) & ~v10;
  v13 = *(v7 + 64);
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = (v14 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v9 | *(v4 + 80) & 0xF8;
  v17 = (*(v4 + 80) | v9) & 0x100000;
  v18 = ((-9 - v10 - v15) | v10) - v13;
  if (v16 <= 7 && v17 == 0 && v18 >= 0xFFFFFFFFFFFFFFE7)
  {
    v22 = ~v10;
    (*(v4 + 16))(a1);
    v24 = (v3 + v11) & v22;
    v25 = ((a2 + v11) & v22);
    if ((*(v8 + 48))(v25, 1, v6))
    {
      memcpy(((v3 + v11) & v22), v25, v14);
      v26 = *(v8 + 16);
    }

    else
    {
      v26 = *(v8 + 16);
      v26(v24, v25, v6);
      (*(v8 + 56))(v24, 0, 1, v6);
    }

    v27 = ((v24 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v26((v27 + 1), v28 + 1, v6);
  }

  else
  {
    v21 = *a2;
    *v3 = *a2;
    v3 = (v21 + (((v16 | 7) + 16) & ~(v16 | 7)));
  }

  return v3;
}

uint64_t sub_21D1DB48C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + v8) & ~v8;
  v10 = (*(v7 + 48))(v9, 1, v6);
  v11 = *(v7 + 8);
  if (!v10)
  {
    v14 = *(v7 + 8);
    v11(v9, v6);
    v11 = v14;
  }

  v12 = v9 + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v12;
  }

  return v11((v8 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6);
}

uint64_t sub_21D1DB5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v12, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = *(v8 + 16);
    v16(v11, v12, v7);
    v18 = *(v8 + 56);
    v17 = v8 + 56;
    v18(v11, 0, 1, v7);
    v13 = *(v17 + 28);
    v14 = *(v17 + 8);
  }

  if (v13)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 + 1;
  }

  v20 = ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v16(((v20 + v9 + 8) & ~v9), ((v21 + v9 + 8) & ~v9), v7);
  return a1;
}

uint64_t sub_21D1DB77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  v21 = *(v8 + 24);
  v20 = v8 + 24;
  v19 = v21;
  if (*(v20 + 60))
  {
    v22 = *(v20 + 40);
  }

  else
  {
    v22 = *(v20 + 40) + 1;
  }

  v23 = ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v19((v23 + v9 + 8) & ~v9, (v24 + v9 + 8) & ~v9, v7);
  return a1;
}

uint64_t sub_21D1DB990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v12, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
    v16 = *(v8 + 32);
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v11, v12, v7);
    v18 = *(v8 + 56);
    v17 = v8 + 56;
    v18(v11, 0, 1, v7);
    v13 = *(v17 + 28);
    v14 = *(v17 + 8);
  }

  if (v13)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 + 1;
  }

  v20 = ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v16(((v20 + v9 + 8) & ~v9), ((v21 + v9 + 8) & ~v9), v7);
  return a1;
}

uint64_t sub_21D1DBB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  v21 = *(v8 + 40);
  v20 = v8 + 40;
  v19 = v21;
  if (*(v20 + 44))
  {
    v22 = *(v20 + 24);
  }

  else
  {
    v22 = *(v20 + 24) + 1;
  }

  v23 = ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v19((v23 + v9 + 8) & ~v9, (v24 + v9 + 8) & ~v9, v7);
  return a1;
}

uint64_t sub_21D1DBD5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = v9 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v9 > v13)
  {
    v13 = *(v8 + 84);
  }

  if (v9)
  {
    v14 = *(v8 + 64);
  }

  else
  {
    v14 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v5 - 8) + 64) + v10;
  v16 = v14 + 7;
  v17 = v10 + 8;
  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_36;
  }

  v19 = ((v17 + ((v16 + (v15 & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & ~v10) + v11;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v22 < 2)
    {
LABEL_35:
      if (v13)
      {
LABEL_36:
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26();
        }

        else
        {
          v28 = (a1 + v15) & ~v10;
          if (v12 == v13)
          {
            v29 = (*(v8 + 48))(v28);
            if (v29 >= 2)
            {
              return v29 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v30 = *(v8 + 48);
            v31 = (v17 + ((v16 + v28) & 0xFFFFFFFFFFFFFFF8)) & ~v10;

            return v30(v31);
          }
        }
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

char *sub_21D1DBFC4(char *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  v13 = v9 - 1;
  if (!v9)
  {
    v13 = 0;
  }

  if (v13 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v9 > v14)
  {
    v14 = *(v8 + 84);
  }

  v15 = v10 + v11;
  v16 = (v10 + v11) & ~v11;
  if (v9)
  {
    v17 = *(v8 + 64);
  }

  else
  {
    v17 = v12 + 1;
  }

  v18 = v17 + 7;
  v19 = ((v11 + 8 + ((v18 + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + v12;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 == 0 || !v20)
  {
LABEL_23:
    if (v14 < a2)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (v19 > 3)
  {
    v5 = 1;
    if (v14 < a2)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v5 = v23;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_23;
  }

  v5 = 4;
  if (v14 < a2)
  {
LABEL_24:
    v24 = ~v14 + a2;
    if (v19 < 4)
    {
      v26 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v24 & ~(-1 << (8 * v19));
        v28 = result;
        bzero(result, v19);
        result = v28;
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v28 = v27;
            if (v5 > 1)
            {
LABEL_57:
              if (v5 == 2)
              {
                *&result[v19] = v26;
              }

              else
              {
                *&result[v19] = v26;
              }

              return result;
            }
          }

          else
          {
            *v28 = v24;
            if (v5 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v5 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v25 = result;
      bzero(result, v19);
      result = v25;
      *v25 = v24;
      v26 = 1;
      if (v5 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v5)
    {
      result[v19] = v26;
    }

    return result;
  }

LABEL_33:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v19] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v19] = 0;
  }

  else if (v5)
  {
    result[v19] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v7 == v14)
  {
    v29 = *(v6 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v15] & ~v11;
    v31 = *(v8 + 56);
    if (v13 == v14)
    {
      a2 = (a2 + 1);
    }

    else
    {
      v30 = (v11 + 8 + ((v18 + v30) & 0xFFFFFFFFFFFFFFF8)) & ~v11;
    }

    return v31(v30, a2);
  }
}

uint64_t sub_21D1DC2D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_21DBFBA8C();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D1DC3B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v9;
  v11 = v5 + v9;
  v12 = (v5 + v10) & ~v10;
  if (*(v7 + 84))
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = *(v7 + 64) + 1;
  }

  v14 = ((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v9 | *(v4 + 80) & 0xF8;
  v16 = (*(v4 + 80) | v9) & 0x100000;
  if (v15 > 7 || v16 != 0 || v14 > 0x18)
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  else
  {
    v20 = ~v10;
    (*(v4 + 16))(a1);
    v22 = ((a2 + v11) & v20);
    if ((*(v8 + 48))(v22, 1, v6))
    {
      memcpy(((v3 + v11) & v20), v22, v13);
    }

    else
    {
      (*(v8 + 16))((v3 + v11) & v20, v22, v6);
      (*(v8 + 56))((v3 + v11) & v20, 0, 1, v6);
    }

    *((((v3 + v11) & v20) + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_21D1DC5B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + a1 + v8;
  v12 = v7;
  result = (*(v7 + 48))(v9 & ~v8, 1, v6);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(v9 & ~v8, v6);
  }

  return result;
}

uint64_t sub_21D1DC6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = ((v11 + a1) & ~v10);
  v13 = ((v11 + a2) & ~v10);
  if ((*(v9 + 48))(v13, 1, v8))
  {
    v14 = *(v9 + 84);
    v15 = *(v9 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v9 + 16))(v12, v13, v8);
    v18 = *(v9 + 56);
    v17 = v9 + 56;
    v18(v12, 0, 1, v8);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  *((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D1DC810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  *((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D1DC9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = ((v11 + a1) & ~v10);
  v13 = ((v11 + a2) & ~v10);
  if ((*(v9 + 48))(v13, 1, v8))
  {
    v14 = *(v9 + 84);
    v15 = *(v9 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v9 + 32))(v12, v13, v8);
    v18 = *(v9 + 56);
    v17 = v9 + 56;
    v18(v12, 0, 1, v8);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  *((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D1DCB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  *((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D1DCD34(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(a3 + 24);
  v7 = *(v5 + 84);
  v8 = *(v6 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v6 - 8) + 64);
  if (v10)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(*(a3 + 16) - 8) + 64) + v13;
  if (v12 < a2)
  {
    v17 = ((v15 + v14 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v18 = a2 - v12;
    v19 = v17 & 0xFFFFFFF8;
    v20 = (v17 & 0xFFFFFFF8) != 0 ? 2 : v18 + 1;
    LODWORD(v14) = v20 >= 0x10000 ? 4 : 2;
    v14 = v20 < 0x100 ? 1 : v14;
    v21 = v20 >= 2 ? v14 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v17);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v19)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v27 = *(v5 + 48);

    return v27();
  }

  else
  {
    v25 = (*(v9 + 48))((a1 + v16) & ~v13, v10, v6, v5, v14);
    if (v25 >= 2)
    {
      return v25 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21D1DCF18(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = ((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 < a3)
  {
    v18 = a3 - v13;
    if (((v16 + v15 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v13;
    }

    if (v17)
    {
      v22 = ~v13 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v17) = 0;
  }

  else if (v5)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v7 >= v12)
  {
    v28 = *(v6 + 56);

    v28();
  }

  else
  {
    v24 = (a1 + v14) & ~v11;
    if (v12 >= a2)
    {
      v29 = *(v8 + 56);
      v30 = a2 + 1;
      v31 = (a1 + v14) & ~v11;

      v29(v31, v30);
    }

    else
    {
      if (v16 <= 3)
      {
        v25 = ~(-1 << (8 * v16));
      }

      else
      {
        v25 = -1;
      }

      if (v16)
      {
        v26 = v25 & (~v12 + a2);
        if (v16 <= 3)
        {
          v27 = v16;
        }

        else
        {
          v27 = 4;
        }

        bzero(((a1 + v14) & ~v11), v16);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            *(v24 + 2) = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }
  }
}

uint64_t sub_21D1DD1FC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_21D0CE468();
    v3 = v0;
    v4 = sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE594E8);
    swift_allocObject();
    v1 = sub_21D1DD804(sub_21D1DD61C, v2, v4);
    *(v3 + 24) = v1;
  }

  return v1;
}

uint64_t sub_21D1DD2D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21DBF906C();
  }

  return result;
}

uint64_t sub_21D1DD348()
{

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeferredUpdateContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DeferredUpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21D1DD47C()
{
  result = qword_27CE594C8;
  if (!qword_27CE594C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE594C8);
  }

  return result;
}

unint64_t sub_21D1DD4D4()
{
  result = qword_27CE594D0;
  if (!qword_27CE594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE594D0);
  }

  return result;
}

unint64_t sub_21D1DD52C()
{
  result = qword_27CE594D8;
  if (!qword_27CE594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE594D8);
  }

  return result;
}

unint64_t sub_21D1DD584()
{
  result = qword_27CE594E0;
  if (!qword_27CE594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE594E0);
  }

  return result;
}

uint64_t sub_21D1DD5F0(void *a1)
{
  *v1 |= *a1;
  *(v1 + 8) = 0;
  return 1;
}

char *sub_21D1DD624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v7);
  v8 = *(*v3 + 120);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE594F0);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  type metadata accessor for TTRDeferredAction();
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v12 = sub_21DBF5EEC();
  v10[6] = v11;
  v13 = MEMORY[0x277D84F98];
  v10[4] = a3;
  v10[5] = v12;
  *(v3 + 5) = v13;
  *(v3 + 6) = v13;
  *(v3 + 2) = v10;
  *(v3 + 3) = a1;
  *(v3 + 4) = a2;
  swift_beginAccess();
  v10[3] = &protocol witness table for TTRBatchProcessor<A>;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_21D1DD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v7);
  v8 = *(*v3 + 120);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE594F0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  type metadata accessor for TTRDeferredAction();
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v10[5] = sub_21DBF5EEC();
  v10[6] = v11;
  v10[4] = a3;
  *(v3 + 48) = 1;
  *(v3 + 16) = v10;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  swift_beginAccess();
  v10[3] = &protocol witness table for TTRBatchProcessor<A>;
  swift_unknownObjectWeakAssign();
  return v3;
}

char *sub_21D1DD9E0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v7);
  v8 = *(*v3 + 120);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE594F0);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  type metadata accessor for TTRDeferredAction();
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  v12 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v10[5] = sub_21DBF5EEC();
  v10[6] = v11;
  v10[4] = v12;
  v13 = MEMORY[0x277D84FA0];
  *(v3 + 2) = v10;
  *(v3 + 3) = a1;
  *(v3 + 4) = a2;
  *(v3 + 5) = v13;
  swift_beginAccess();
  v10[3] = &protocol witness table for TTRBatchProcessor<A>;
  swift_unknownObjectWeakAssign();
  return v3;
}

id static RemindersUICoreBundleLookupObject.bundle.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

id RemindersUICoreBundleLookupObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarLocationViewController()
{
  result = qword_27CE594F8;
  if (!qword_27CE594F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D1DDD04(uint64_t a1)
{
  result = sub_21D1DDD2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D1DDD2C()
{
  result = qword_27CE59508;
  if (!qword_27CE59508)
  {
    type metadata accessor for TTRIReminderCellQuickBarLocationViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59508);
  }

  return result;
}

void *sub_21D1DDD84(void *a1, void *a2)
{
  v41[0] = sub_21DBFB7EC();
  v4 = *(v41[0] - 1);
  MEMORY[0x28223BE20](v41[0]);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = off_282EAC5D0;

  v14 = sub_21DBFA12C();
  v15 = [objc_opt_self() systemImageNamed_];

  if (qword_280D166B0 != -1)
  {
    swift_once();
  }

  v41[2] = unk_280D166C0;
  v41[3] = qword_280D166B8;
  if (qword_280D16748 != -1)
  {
    swift_once();
  }

  v41[4] = unk_280D16758;
  v41[5] = qword_280D16750;
  v16 = MEMORY[0x277D85000];
  v17 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v17 = a1;
  v17[1] = v13;
  *(a2 + *((*v16 & *a2) + 0x70)) = 1132068864;
  v18 = (a2 + *((*v16 & *a2) + 0x60));
  *v18 = 0;
  v18[1] = 0;

  sub_21DBFB8EC();
  v19 = [objc_opt_self() quaternarySystemFillColor];
  v41[1] = a1;
  v20 = sub_21DBFB79C();
  sub_21DBF883C();
  v20(v45, 0);
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v41[0]);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v21 = sub_21D900614(7);
  v22 = [objc_opt_self() configurationWithFont:v21 scale:2];

  sub_21DBFB78C();
  v41[0] = v15;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v23 = v42;
  (*(v42 + 16))(v9, v12, v43);
  v24 = sub_21DBFB96C();
  v25 = MEMORY[0x277D85000];
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE59518);
  v44.receiver = a2;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, sel_init);
  v28 = *((*v25 & *v27) + 0x78);
  v29 = *(v27 + v28);
  v30 = v27;
  v31 = v29;
  sub_21D5D8F60();

  [*(v27 + v28) setShowsMenuAsPrimaryAction_];
  v32 = *(v27 + v28);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v32;

  v35 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D1AA09C, v33);

  [v34 setMenu_];

  [*(v27 + v28) setPreferredMenuElementOrder_];
  v36 = *(v27 + v28);
  v37 = sub_21DBFA12C();
  [v36 setAccessibilityLabel_];

  v38 = *(v27 + v28);
  v39 = sub_21DBFA12C();
  [v38 setAccessibilityHint_];

  (*(v23 + 8))(v12, v43);
  return v30;
}

void *sub_21D1DE37C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRIReminderCellQuickBarLocationInteractor();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIReminderCellQuickBarLocationRouter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[3] = v4;
  v18[4] = &off_282EAC5D8;
  v18[0] = v5;
  type metadata accessor for TTRIReminderCellQuickBarLocationPresenter();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v6[13] = v4;
  v6[14] = &off_282EAC5D8;
  v6[10] = v12;
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[5] = 0;
  swift_unknownObjectWeakInit();
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = v3;
  v6[9] = &off_282EAC588;

  __swift_destroy_boxed_opaque_existential_0(v18);
  v13 = objc_allocWithZone(type metadata accessor for TTRIReminderCellQuickBarLocationViewController());

  v15 = sub_21D1DDD84(v14, v13);

  *(v3 + 24) = &off_282EAC5B0;
  swift_unknownObjectWeakAssign();

  v6[3] = sub_21D1DE5A8();
  swift_unknownObjectWeakAssign();
  v6[5] = a2;
  swift_unknownObjectWeakAssign();
  return v15;
}

unint64_t sub_21D1DE5A8()
{
  result = qword_27CE59510;
  if (!qword_27CE59510)
  {
    type metadata accessor for TTRIReminderCellQuickBarLocationViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59510);
  }

  return result;
}

uint64_t sub_21D1DE624()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = (*(*(v1 + 8) + 40))(ObjectType);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v9 = v3;
      v10 = 0u;
      v11 = 0u;
      v12 = 1;
      v13 = 0;
      v14 = 1;
      v6 = v3;
      v7 = sub_21D1DE894(&v9, v5);

      swift_unknownObjectRelease();
      sub_21D1A9430(&v9);
      if (v7)
      {
        return v7;
      }
    }

    else
    {
    }
  }

  sub_21D1DE990();
  return sub_21DBFB58C();
}

uint64_t sub_21D1DE740(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = v2[3];
    ObjectType = swift_getObjectType();
    v7 = v2[6];
    v6 = v2[7];
    v8 = *(v4 + 8);
    v9 = *(v8 + 32);
    sub_21DBF8E0C();
    v10 = v9(v12, ObjectType, v8);
    *v11 = v7;
    v11[1] = v6;

    v10(v12, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D1DE814()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_21D1DE894(_OWORD *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
  swift_beginAccess();
  v4 = v3[3];
  if (!v4)
  {
    return 0;
  }

  v5 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *v5;
  v7 = *v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = a1[1];
    v13[0] = *a1;
    v13[1] = v11;
    v14[0] = a1[2];
    *(v14 + 9) = *(a1 + 41);
    v12 = (*(v9 + 96))(v6, v13, ObjectType, v9);
    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

unint64_t sub_21D1DE990()
{
  result = qword_280D0C1F0;
  if (!qword_280D0C1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C1F0);
  }

  return result;
}

uint64_t sub_21D1DEA74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21DBFC7DC();
  a4(v6);
  return sub_21DBFC82C();
}

uint64_t TTRAlertSpecification.Action.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertSpecification.Action.init(title:style:macOSStyle:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for TTRAlertSpecification.Action();
  v11 = *(*(a5 - 8) + 32);
  v12 = a6 + *(v10 + 32);

  return v11(v12, a4, a5);
}

uint64_t TTRAlertSpecification.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertSpecification.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRAlertSpecification.message.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertSpecification.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TTRAlertSpecification.actions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TTRAlertSpecification.init(title:message:macOSAlertStyle:actions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 40) = v7;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_21D1DEDBC()
{
}

uint64_t sub_21D1DEE00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D1DEE60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21D1DEF04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_21D1DEF64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21D1DEFAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D1DF040()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D1DF0E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-18 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = a2 + v6 + 17;
    v12 = *(v5 + 16);
    sub_21DBF8E0C();
    v12((a1 + v6 + 17) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t sub_21D1DF1F8(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t sub_21D1DF26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = v7 + 17 + a2;
  sub_21DBF8E0C();
  v6((v7 + 17 + a1) & ~v7, v8 & ~v7, v5);
  return a1;
}

uint64_t sub_21D1DF304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((*(v6 + 80) + 17 + a1) & ~*(v6 + 80), (*(v6 + 80) + 17 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t sub_21D1DF3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_21D1DF41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v7 + 80) + 17 + a1) & ~*(v7 + 80), (*(v7 + 80) + 17 + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D1DF4AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
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

void sub_21D1DF630(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 17] & ~v9;

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

uint64_t dispatch thunk of TTRAlertSpecificationPresenting.presentAlert<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D1B795C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_21D1DF9EC()
{
  v0 = sub_21DBF5C4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_21DBF509C();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  (*(v1 + 56))(v9, 1, 1, v0, v13);
  v16 = sub_21DBF55BC();
  sub_21D1E07E8(v9, v6);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    v18 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v17(v6, 1, v0) != 1)
    {
      sub_21D1E0858(v6);
    }
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
  }

  v19 = objc_opt_self();
  v20 = sub_21DBF5C0C();
  (*(v1 + 8))(v3, v0);
  v21 = [v19 rem:v16 dateComponentsWithDate:v20 timeZone:0 isAllDay:?];

  v22 = v37;
  sub_21DBF4EFC();

  sub_21D1E0858(v9);
  v23 = v38;
  v24 = v22;
  v25 = v39;
  (*(v38 + 32))(v15, v24, v39);
  v26 = sub_21DBF4F5C();
  if (v27 & 1) != 0 || (v28 = v26, result = sub_21DBF4FCC(), (v30))
  {
    v31 = &unk_282EA64A8;
LABEL_14:
    (*(v23 + 8))(v15, v25);
    return v31;
  }

  v32 = v28 % 24;
  if ((v28 % 24) > 0xFFFFFFFFFFFFFFE7)
  {
    v32 = v28 % 24 + 24;
  }

  v33 = 60 * v32;
  v34 = __OFADD__(v33, result);
  v35 = v33 + result;
  if (!v34)
  {
    if ((v35 - 300) >= 0x3A2)
    {
      v31 = &unk_282EA6480;
    }

    else
    {
      v31 = &unk_282EA6458;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1DFDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v61 = a1;
  if (v8)
  {
    sub_21D17E33C(0);
  }

  v9 = sub_21D0D8CF0(0, &qword_280D0C1D0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v59 = 0x800000021DC46170;
  v57 = 0xEB00000000656C62;
  v58 = qword_280D1BAB0;
  sub_21DBF516C();
  v10 = sub_21DBFA12C();
  v56 = objc_opt_self();
  v11 = [v56 _systemImageNamed_];

  v12 = swift_allocObject();
  v13 = v63;
  v14 = v64;
  *(v12 + 16) = v61;
  *(v12 + 24) = v13;
  *(v12 + 32) = v14;
  *(v12 + 40) = 0;
  sub_21DBF8E0C();

  v15 = sub_21DBFB77C();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v16 = sub_21D1DF9EC();
  (*(v5 + 8))(v7, v4);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  v62 = v9;
  v55 = v15;
  v60 = v16;
  if (v17)
  {
    v65 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v19 = (v16 + 32);
    v20 = v61;
    do
    {
      v25 = *v19++;
      v24 = v25;
      if (*(v20 + 16))
      {
        sub_21D17E33C(v24);
      }

      sub_21D84F6C4(v24);
      sub_21D84F9BC(v24);
      v21 = swift_allocObject();
      v22 = v63;
      v23 = v64;
      *(v21 + 16) = v20;
      *(v21 + 24) = v22;
      *(v21 + 32) = v23;
      *(v21 + 40) = v24;
      sub_21DBF8E0C();

      sub_21DBFB77C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v17;
    }

    while (v17);
    v18 = v65;
    v15 = v55;
  }

  else
  {
    v20 = v61;
  }

  v26 = sub_21D195518(v20);
  if (v26 > 2u)
  {
    if (v26 != 3 && v26 != 4)
    {
      goto LABEL_62;
    }
  }

  else if (!v26)
  {
    v27 = 0xE400000000000000;
LABEL_59:

    v60 = v27;
    goto LABEL_62;
  }

  v28 = sub_21DBFC64C();

  if ((v28 & 1) == 0)
  {
    v54 = v18;
    v29 = *(v60 + 16);
    v30 = (v60 + 32);
    v31 = v26;
    do
    {
      if (!v29)
      {
        v20 = v61;
        v18 = v54;
        v15 = v55;
        goto LABEL_62;
      }

      v33 = *v30;
      if (v33 <= 1)
      {
        v34 = 1701736302;
        if (*v30)
        {
          v35 = 0x72756F487478656ELL;
        }

        else
        {
          v35 = 1701736302;
        }

        if (*v30)
        {
          v36 = 0xE800000000000000;
        }

        else
        {
          v36 = 0xE400000000000000;
        }
      }

      else
      {
        v34 = 1701736302;
        if (v33 == 2)
        {
          v36 = 0xE700000000000000;
          v35 = 0x746867696E6F74;
        }

        else
        {
          if (v33 == 3)
          {
            v35 = 0x776F72726F6D6F74;
          }

          else
          {
            v35 = 0x54646E4165746164;
          }

          if (v33 == 3)
          {
            v36 = 0xEF676E696E726F4DLL;
          }

          else
          {
            v36 = 0xEB00000000656D69;
          }
        }
      }

      if (v31 == 3)
      {
        v37 = 0x776F72726F6D6F74;
      }

      else
      {
        v37 = 0x54646E4165746164;
      }

      if (v31 == 3)
      {
        v38 = 0xEF676E696E726F4DLL;
      }

      else
      {
        v38 = 0xEB00000000656D69;
      }

      if (v31 == 2)
      {
        v37 = 0x746867696E6F74;
        v38 = 0xE700000000000000;
      }

      if (v31)
      {
        v34 = 0x72756F487478656ELL;
        v39 = 0xE800000000000000;
      }

      else
      {
        v39 = 0xE400000000000000;
      }

      if (v31 <= 1)
      {
        v40 = v34;
      }

      else
      {
        v40 = v37;
      }

      if (v31 <= 1)
      {
        v27 = v39;
      }

      else
      {
        v27 = v38;
      }

      if (v35 == v40 && v36 == v27)
      {

        v20 = v61;
        v18 = v54;
        v15 = v55;
        goto LABEL_59;
      }

      v32 = sub_21DBFC64C();

      ++v30;
      --v29;
    }

    while ((v32 & 1) == 0);
    v20 = v61;
    v18 = v54;
    v15 = v55;
  }

LABEL_62:

  if (*(v20 + 16))
  {
    sub_21D17E33C(4u);
  }

  sub_21DBF516C();
  v41 = sub_21DBFA12C();
  v42 = [v56 _systemImageNamed_];

  v43 = swift_allocObject();
  v44 = v63;
  v45 = v64;
  *(v43 + 16) = v20;
  *(v43 + 24) = v44;
  *(v43 + 32) = v45;
  *(v43 + 40) = 4;
  sub_21DBF8E0C();

  v46 = sub_21DBFB77C();
  if (v18 >> 62)
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
  v47 = sub_21DBFB58C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59720);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_21DC08D10;
  *(v48 + 32) = v15;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  v65 = v48;
  v49 = v15;
  v50 = v47;
  v51 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59728);
  sub_21D0D8CF0(0, &qword_27CE5DE90);
  sub_21D1E0784();
  sub_21DBFA41C();

  v52 = sub_21DBFB58C();

  return v52;
}

unint64_t sub_21D1E0784()
{
  result = qword_27CE59730;
  if (!qword_27CE59730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE59728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59730);
  }

  return result;
}

uint64_t sub_21D1E07E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1E0858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1E08C4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE59738);
  v1 = __swift_project_value_buffer(v0, qword_27CE59738);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRPinnedListBackgroundView.fillColor.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView) + OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor);
  v2 = v1;
  return v1;
}

void sub_21D1E09C8(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView);
  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor);
  *(v3 + OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor) = *a1;
  v4 = v2;
  sub_21D114994(v5);
}

void (*TTRPinnedListBackgroundView.fillColor.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView);
  v5 = OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor;
  v3[7] = v4;
  v3[8] = v5;
  v6 = *(v4 + v5);
  v3[6] = v6;
  v7 = v6;
  return sub_21D1E0AC8;
}

void sub_21D1E0AC8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (!v3)
    {
      if (!v7)
      {
LABEL_20:
        v3 = *v4;
        goto LABEL_24;
      }

      v14 = 0;
      goto LABEL_18;
    }

    if (v7)
    {
      sub_21D114D24();
      v8 = v3;
      v9 = v7;
      v10 = sub_21DBFB63C();

      if (v10)
      {

        v3 = v8;
LABEL_19:

        goto LABEL_20;
      }

      v14 = *(*(v2 + 56) + *(v2 + 64));
      if (!v14)
      {
LABEL_18:
        [*(v2 + 56) setBackgroundColor_];

        goto LABEL_19;
      }
    }

    else
    {
      v14 = v3;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = objc_allocWithZone(MEMORY[0x277D75348]);
    *(v2 + 32) = sub_21D1E1A68;
    *(v2 + 40) = v16;
    *v2 = MEMORY[0x277D85DD0];
    *(v2 + 8) = 1107296256;
    *(v2 + 16) = sub_21D114B20;
    *(v2 + 24) = &block_descriptor_7;
    v18 = _Block_copy(v2);
    v19 = v14;
    v14 = [v17 initWithDynamicProvider_];
    _Block_release(v18);

    goto LABEL_18;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    v15 = 0;
    goto LABEL_23;
  }

  if (!v7)
  {
    v15 = v3;
    goto LABEL_22;
  }

  sub_21D114D24();
  v11 = v3;
  v12 = v7;
  v13 = sub_21DBFB63C();

  if ((v13 & 1) == 0)
  {
    v15 = *(*(v2 + 56) + *(v2 + 64));
    if (!v15)
    {
LABEL_23:
      [*(v2 + 56) setBackgroundColor_];

      goto LABEL_24;
    }

LABEL_22:
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v21 = objc_allocWithZone(MEMORY[0x277D75348]);
    *(v2 + 32) = sub_21D1E1A68;
    *(v2 + 40) = v20;
    *v2 = MEMORY[0x277D85DD0];
    *(v2 + 8) = 1107296256;
    *(v2 + 16) = sub_21D114B20;
    *(v2 + 24) = &block_descriptor_14;
    v22 = _Block_copy(v2);
    v23 = v15;
    v15 = [v21 initWithDynamicProvider_];
    _Block_release(v22);

    goto LABEL_23;
  }

  v3 = v11;
LABEL_24:

LABEL_25:

  free(v2);
}

double TTRPinnedListBackgroundView.fillViewCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillViewCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TTRPinnedListBackgroundView.fillViewCornerRadius.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillViewCornerRadius;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D1E0E9C;
}

id (*TTRPinnedListBackgroundView.glowBlurRadius.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView);
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_glowLayer;
  a1[1] = v3;
  a1[2] = v4;
  [*(v3 + v4) shadowRadius];
  *a1 = v5;
  return sub_21D1E0F2C;
}

double TTRPinnedListBackgroundView.selectionBorderWidth.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_selectionBorderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D1E0F8C(double *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8.i64[0] = *&v6[v7];
  *&v6[v7] = v5;
  v9.n128_u64[0] = 0x3E50000000000000;
  result = sub_21D110D14(v8, v9, v5, v10);
  if ((result & 1) == 0)
  {
    v6[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] = 1;
    return [v6 setNeedsLayout];
  }

  return result;
}

uint64_t (*TTRPinnedListBackgroundView.selectionBorderWidth.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_selectionBorderWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D1E1A64;
}

void sub_21D1E10B0(uint64_t a1, int8x16_t a2, __n128 a3, double a4, int8x16_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  a2.i64[0] = *(v8 + v7);
  *(v8 + v7) = v6;
  a3.n128_u64[0] = 0x3E50000000000000;
  if ((sub_21D110D14(a2, a3, v6, a5) & 1) == 0)
  {
    v9 = v5[4];
    v9[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] = 1;
    [v9 setNeedsLayout];
  }

  free(v5);
}

uint64_t TTRPinnedListBackgroundView.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*TTRPinnedListBackgroundView.isSelected.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D1E1200;
}

void sub_21D1E1200(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    TTRPinnedListBackgroundView.isSelected.setter(*(*a1 + 40));
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = *(v2 + 32);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = *(v2 + 24);
      v8 = *(v7 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView);
      if (v3)
      {
        if (v8)
        {
          v9 = *(v7 + OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView);
        }

        else
        {
          v9 = sub_21D1E1408(*(v2 + 24));
          v8 = 0;
        }

        v10 = v8;
        [v9 setHidden_];
      }

      else if (v8)
      {
        [v8 setHidden_];
      }
    }
  }

  free(v2);
}

id TTRPinnedListBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall TTRPinnedListBackgroundView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_21D11D604();
}

id sub_21D1E1408(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BorderView()) init];
  [v2 setClipsToBounds_];
  [a1 insertSubview:v2 atIndex:0];
  a1[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] = 1;
  [a1 setNeedsLayout];
  v3 = *&a1[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
  *&a1[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView] = v2;
  v4 = v2;

  return v4;
}

id sub_21D1E1504()
{
  v0 = sub_21DBFB24C();
  v1 = [objc_opt_self() systemFillColor];
  v2 = [v1 resolvedColorWithTraitCollection_];

  return v2;
}

void sub_21D1E172C()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 >= 3)
  {
    if (qword_27CE56588 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE59738);
    v6 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v6);
    sub_21DAEAB00("unknown userInterfaceStyle", 26, 2);
    __break(1u);
  }

  else
  {
    v3 = qword_27832DA08[v2];
    v4 = [v0 layer];
    [v4 setCompositingFilter_];
  }
}

double keypath_get_17Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t sub_21D1E1A6C(uint64_t a1)
{
  v1 = a1;
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    result = sub_21DBFC20C();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  result = sub_21DBFBCCC();
  v5 = *(v1 + 36);
  v24 = result;
  v25 = v5;
  v26 = 0;
LABEL_7:
  v6 = 0;
  v21 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v24;
    v14 = v25;
    v15 = v26;
    sub_21D226B34(v24, v25, v26, v1);
    v17 = v16;
    v18 = [v16 list];
    v19 = v1;

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    result = sub_21DBFBFFC();
    if (v22)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_21DBFC24C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589F0);
      v20 = sub_21DBF9EEC();
      sub_21DBFC30C();
      result = v20(v23, 0);
    }

    else
    {
      v7 = sub_21DB84AE0(v13, v14, v15, v1);
      v9 = v8;
      v11 = v10;
      result = sub_21D15746C(v13, v14, v15);
      v24 = v7;
      v25 = v9;
      v26 = v11 & 1;
      v1 = v19;
      v2 = v21;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_21D15746C(v24, v25, v26);
      return v27;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21D1E1CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21DBFC7DC();
  sub_21DBFA27C();
  v6 = sub_21DBFC82C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21DBFC64C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21D1E1DE0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 1953720684, sub_21DBFC7DC(), (a1 & 1) == 0) ? (v5 = 0xE400000000000000) : (v4 = 0x736E6D756C6F63, v5 = 0xE700000000000000), sub_21DBFA27C(), , v6 = sub_21DBFC82C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 0x736E6D756C6F63 : 1953720684;
      v11 = *(*(a2 + 48) + v8) ? 0xE700000000000000 : 0xE400000000000000;
      if (v10 == v4 && v11 == v5)
      {
        break;
      }

      v13 = sub_21DBFC64C();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_21D1E1F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(), v8 = sub_21DBFC82C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    v12 = *(v5 + 72);
    do
    {
      sub_21D107480(*(a2 + 48) + v12 * v10, v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v13 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v7, a1);
      sub_21D22C2F4(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_21D1E20E4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_21DBFBDFC(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_21D181CE0(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x223D445C0](v10, a1);
      sub_21D181D3C(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21D1E21D0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_21DBFBDCC();
  }

  else if (*(a2 + 16) && (sub_21DBF634C(), v5 = sub_21DBFB62C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_21DBFB63C();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21D1E22EC(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_21DBFBDCC();
  }

  else if (*(a2 + 16) && (sub_21D0D8CF0(0, a3), v6 = sub_21DBFB62C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_21DBFB63C();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21D1E23FC(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_21DBFC7DC();
  if (a1)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  v5 = sub_21DBFC82C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      if (v9)
      {
        if (a1)
        {
          sub_21D0D8CF0(0, &qword_280D17680);
          v10 = v9;
          v11 = a1;
          v12 = sub_21DBFB63C();

          if (v12)
          {
            return 1;
          }
        }
      }

      else if (!a1)
      {
        return 1;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return 0;
}

uint64_t sub_21D1E255C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_21DBFA16C(), sub_21DBFC7DC(), sub_21DBFA27C(), v3 = sub_21DBFC82C(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_21DBFA16C();
      v9 = v8;
      if (v7 == sub_21DBFA16C() && v9 == v10)
      {
        break;
      }

      v12 = sub_21DBFC64C();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_21D1E26B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21D621F3C(a1), sub_21DBFA27C(), , v4 = sub_21DBFC82C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v25 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 > 5)
      {
        if (*(*(a2 + 48) + v6) > 8u)
        {
          if (v7 == 9)
          {
            v8 = 0xD00000000000001DLL;
            v9 = 0x800000021DC43890;
          }

          else if (v7 == 10)
          {
            v8 = 0xD000000000000017;
            v9 = 0x800000021DC438B0;
          }

          else
          {
            v8 = 0x726F737365636361;
            v9 = 0xEB00000000736569;
          }
        }

        else if (v7 == 6)
        {
          v8 = 0xD000000000000017;
          v9 = 0x800000021DC43840;
        }

        else if (v7 == 7)
        {
          v8 = 0xD000000000000013;
          v9 = 0x800000021DC43860;
        }

        else
        {
          v8 = 0x53746E65746E6F63;
          v9 = 0xEC0000006B636174;
        }
      }

      else if (*(*(a2 + 48) + v6) > 2u)
      {
        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
          v8 = 0x656C746974;
        }

        else if (v7 == 4)
        {
          v8 = 0x6F6E6E4177656976;
          v9 = 0xEE006E6F69746174;
        }

        else
        {
          v8 = 0x65646E496C6C6563;
          v9 = 0xEF6E6F697461746ELL;
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v7 == 1)
        {
          v8 = 0x6574656C706D6F63;
        }

        else
        {
          v8 = 0x797469726F697270;
        }

        if (v7 == 1)
        {
          v9 = 0xEF6E6F7474754264;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        v8 = 0x656E6961746E6F63;
        v9 = 0xED00007765695672;
      }

      v10 = a1;
      v11 = 0xD00000000000001DLL;
      v12 = 0x726F737365636361;
      if (a1 == 10)
      {
        v12 = 0xD000000000000017;
      }

      v13 = 0xEB00000000736569;
      if (a1 == 10)
      {
        v13 = 0x800000021DC438B0;
      }

      if (a1 == 9)
      {
        v14 = 0x800000021DC43890;
      }

      else
      {
        v11 = v12;
        v14 = v13;
      }

      v15 = 0xD000000000000013;
      if (a1 != 7)
      {
        v15 = 0x53746E65746E6F63;
      }

      v16 = 0xEC0000006B636174;
      if (a1 == 7)
      {
        v16 = 0x800000021DC43860;
      }

      if (a1 == 6)
      {
        v15 = 0xD000000000000017;
        v16 = 0x800000021DC43840;
      }

      if (a1 <= 8u)
      {
        v11 = v15;
        v14 = v16;
      }

      v17 = 0x6F6E6E4177656976;
      if (a1 != 4)
      {
        v17 = 0x65646E496C6C6563;
      }

      v18 = 0xEF6E6F697461746ELL;
      if (a1 == 4)
      {
        v18 = 0xEE006E6F69746174;
      }

      if (a1 == 3)
      {
        v17 = 0x656C746974;
        v18 = 0xE500000000000000;
      }

      v19 = 0x797469726F697270;
      if (a1 == 1)
      {
        v19 = 0x6574656C706D6F63;
      }

      v20 = 0xEF6E6F7474754264;
      if (a1 != 1)
      {
        v20 = 0xE800000000000000;
      }

      if (!a1)
      {
        v19 = 0x656E6961746E6F63;
        v20 = 0xED00007765695672;
      }

      if (a1 <= 2u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = a1 <= 5u ? v17 : v11;
      v22 = a1 <= 5u ? v18 : v14;
      if (v8 == v21 && v9 == v22)
      {
        break;
      }

      v23 = sub_21DBFC64C();

      if ((v23 & 1) == 0)
      {
        v6 = (v6 + 1) & v25;
        a1 = v10;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

BOOL sub_21D1E2B40(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v3);
  v4 = sub_21DBFC82C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_21D1E2C0C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), , v4 = sub_21DBFC82C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v10 = 0xE700000000000000;
          v9 = 0x646E656B656577;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x57664F7472617473;
          }

          else
          {
            v9 = 0x6D6F74737563;
          }

          if (v8 == 4)
          {
            v10 = 0xEE007961646B6565;
          }

          else
          {
            v10 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v8 == 1)
        {
          v9 = 0x7961646F74;
        }

        else
        {
          v9 = 0x776F72726F6D6F74;
        }

        if (v8 == 1)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE800000000000000;
        }
      }

      else
      {
        v10 = 0xE400000000000000;
        v9 = 1701736302;
      }

      v11 = 0x57664F7472617473;
      if (a1 != 4)
      {
        v11 = 0x6D6F74737563;
      }

      v12 = 0xEE007961646B6565;
      if (a1 != 4)
      {
        v12 = 0xE600000000000000;
      }

      if (a1 == 3)
      {
        v11 = 0x646E656B656577;
        v12 = 0xE700000000000000;
      }

      v13 = 0x776F72726F6D6F74;
      if (a1 == 1)
      {
        v13 = 0x7961646F74;
      }

      v14 = 0xE500000000000000;
      if (a1 != 1)
      {
        v14 = 0xE800000000000000;
      }

      if (!a1)
      {
        v13 = 1701736302;
        v14 = 0xE400000000000000;
      }

      v15 = a1 <= 2u ? v13 : v11;
      v16 = a1 <= 2u ? v14 : v12;
      if (v9 == v15 && v10 == v16)
      {
        break;
      }

      v17 = sub_21DBFC64C();

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21D1E2F40(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF686C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21D0F1C20(&unk_280D0C7E8, MEMORY[0x277D45298]), v7 = sub_21DBF9FFC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21D0F1C20(&qword_280D0C7E0, MEMORY[0x277D45298]);
      v15 = sub_21DBFA10C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21D1E3158(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF7F4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21D0F1C20(&qword_27CE59AE8, MEMORY[0x277D458D0]), v7 = sub_21DBF9FFC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21D0F1C20(&qword_27CE59AF0, MEMORY[0x277D458D0]);
      v15 = sub_21DBFA10C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21D1E3370(void *a1, uint64_t a2)
{
  v51 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v48);
  v4 = &v39 - v3;
  v5 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v54 = a2;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v50 = v8;
  sub_21DBFC7DC();
  v17 = v51;
  v53 = *v51;
  sub_21DBFB64C();
  v46 = *(v5 + 20);
  v47 = v5;
  sub_21D0D3954(v17 + v46, v16, &qword_27CE5EA20);
  v44 = *(v10 + 48);
  v45 = v10 + 48;
  if (v44(v16, 1, v9) == 1)
  {
    v18 = v9;
    sub_21DBFC7FC();
  }

  else
  {
    v19 = v40;
    (*(v10 + 32))(v40, v16, v9);
    sub_21DBFC7FC();
    sub_21D0F1C20(&qword_280D171E0, MEMORY[0x277CC9260]);
    sub_21DBFA00C();
    v18 = v9;
    (*(v10 + 8))(v19, v9);
  }

  v20 = sub_21DBFC82C();
  v21 = v54 + 56;
  v22 = -1 << *(v54 + 32);
  v23 = v20 & ~v22;
  v24 = v50;
  if (((*(v54 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    return 0;
  }

  v25 = ~v22;
  v26 = sub_21D0D8CF0(0, &qword_280D17680);
  v39 = (v10 + 32);
  v52 = *(v6 + 72);
  v41 = (v10 + 8);
  v27 = &unk_21DC0D4A0;
  v42 = v26;
  v43 = v25;
  while (1)
  {
    sub_21D107480(*(v54 + 48) + v52 * v23, v24, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_9;
    }

    v29 = v27;
    v30 = *(v48 + 48);
    sub_21D0D3954(v24 + *(v47 + 20), v4, &qword_27CE5EA20);
    v31 = v29;
    sub_21D0D3954(v51 + v46, &v4[v30], &qword_27CE5EA20);
    v32 = v44;
    if (v44(v4, 1, v18) == 1)
    {
      break;
    }

    v33 = v49;
    sub_21D0D3954(v4, v49, &qword_27CE5EA20);
    if (v32(&v4[v30], 1, v18) == 1)
    {
      (*v41)(v33, v18);
      v25 = v43;
      v24 = v50;
      goto LABEL_8;
    }

    v34 = &v4[v30];
    v35 = v40;
    (*v39)(v40, v34, v18);
    sub_21D0F1C20(&qword_280D171D0, MEMORY[0x277CC9260]);
    v36 = sub_21DBFA10C();
    v37 = *v41;
    (*v41)(v35, v18);
    v37(v49, v18);
    v27 = v31;
    sub_21D0CF7E0(v4, &qword_27CE5EA20);
    v25 = v43;
    v24 = v50;
    if (v36)
    {
      goto LABEL_19;
    }

LABEL_9:
    sub_21D22C2F4(v24, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    v23 = (v23 + 1) & v25;
    if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v32(&v4[v30], 1, v18);
  v25 = v43;
  v24 = v50;
  if (v28 != 1)
  {
LABEL_8:
    sub_21D0CF7E0(v4, &unk_27CE5F2A0);
    v27 = &unk_21DC0D4A0;
    goto LABEL_9;
  }

  sub_21D0CF7E0(v4, &qword_27CE5EA20);
LABEL_19:
  sub_21D22C2F4(v24, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  return 1;
}

uint64_t sub_21D1E3A00(unint64_t a1, uint64_t *a2)
{
  v19 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v5 = 0;
    v16 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v5, a1);
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(a1 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        v12 = v8;
        v7 = sub_21DBFC2CC();

        if (v7)
        {
          sub_21D0D8CF0(0, &qword_280D17860);
          swift_dynamicCast();
          v7 = v18;
        }
      }

      else if (*(v11 + 16) && (v13 = sub_21D17E07C(v8), (v14 & 1) != 0))
      {
        v7 = *(*(v11 + 56) + 8 * v13);
        v15 = v7;
      }

      else
      {

        v7 = 0;
      }

      ++v5;
      if (v7)
      {
        MEMORY[0x223D42D80]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v16 = v19;
        v5 = v10;
        if (i == v10)
        {
          return v16;
        }
      }

      else if (i == v5)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return v16;
}

uint64_t sub_21D1E3C08(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    sub_21D19F2B8(&qword_27CE59990, &unk_280D0C1E0);
    result = sub_21DBFAB5C();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    result = sub_21DBF8E0C();
    v5 = 0;
  }

  v19 = v4;
  v10 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_21D0CFAF8();
      return v10;
    }

    while (1)
    {
      v16 = [v15 integerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21D21330C(0, *(v10 + 16) + 1, 1, v10, &qword_27CE59D98);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_21D21330C((v17 > 1), v18 + 1, 1, v10, &qword_27CE59D98);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21DBFBDBC())
      {
        sub_21D0D8CF0(0, &unk_280D0C1E0);
        swift_dynamicCast();
        v15 = v25;
        v13 = v5;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21D1E3EEC(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = sub_21DBFBD7C();
    if (v25)
    {
      v26 = v25;
      v5 = v22(v25, 0);
      v23(v5 + 32, v26, v24);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v5 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v6 = *(v5 + 16);
        v7 = v6 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_21DBFBD7C();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v6 = a1;
    v7 = a1 / 2;
LABEL_6:
    if (v6 + 1 < 3)
    {
      return v5;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v6 - (v10 - 3);
      if (__OFSUB__(v6, v10 - 3))
      {
        break;
      }

      a1 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x223D44740]();
          v15 = MEMORY[0x223D44740](v6 - (v10 - 3), v5);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v12)
          {
            goto LABEL_32;
          }

          if (v11 >= v12)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v11 + 32);
          v14 = *(v5 + 8 * v10);
          v15 = v13;
        }

        v16 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = a4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          a1 = a4(v5);
          v5 = a1;
          v18 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_34;
        }

        v20 = v18 + 8 * v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_21D1E4118()
{
  v0 = sub_21DBFC11C();

  v2 = *(v0 + 16);
  if (v2 < 2)
  {
    return v0;
  }

  v3 = v2 >> 1;
  v4 = v2 + 1;
  for (i = 2; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v0 + 16);
    if (i - 2 >= v6)
    {
      break;
    }

    if (v4 - 2 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v0 + 16 * v4);
    v8 = *(v0 + 16 * i);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21D256B8C(v0);
      v0 = result;
    }

    *(v0 + 16 * i) = v7;
    *(v0 + 16 * v4) = v8;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_21D1E41E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v21 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  v10 = v7 - 1;
  v11 = &unk_21DC0CFD0;
  v21 = v7 >> 1;
  while (1)
  {
    if (v8 == v10)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v8 >= v12)
    {
      break;
    }

    v13 = v4;
    v14 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v15 = *(v22 + 72);
    v23 = v15 * v8;
    v16 = v11;
    sub_21D0D3954(a1 + v14 + v15 * v8, v24, &qword_27CE59D08);
    if (v10 >= v12)
    {
      goto LABEL_14;
    }

    v17 = v15 * v10;
    v18 = a1 + v14 + v15 * v10;
    v4 = v13;
    v19 = v13;
    v20 = v16;
    sub_21D0D3954(v18, v19, &qword_27CE59D08);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_21D256C68(a1);
    }

    sub_21D22C284(v4, a1 + v14 + v23);
    if (v10 >= a1[2])
    {
      goto LABEL_15;
    }

    sub_21D22C284(v24, a1 + v14 + v17);
    v9 = v21;
    v11 = v20;
LABEL_5:
    ++v8;
    --v10;
    if (v9 == v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_21D1E43F4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = *(v7 - 3);
      v13 = v9;
      v14 = v10;
      v15 = v11;
      sub_21D22CFA4(v12, v9, v10, v11);
      a1(&v12);
      sub_21D22CFF4(v12, v13, v14, v15);
      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 32;
    }

    while (v8);
  }
}

void sub_21D1E44CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v10[2] = a2;
  sub_21D173940(a3, v10, a1);
  v4 = objc_allocWithZone(MEMORY[0x277D446F8]);
  sub_21D0D8CF0(0, &qword_27CE599A8);
  v5 = sub_21DBFA5DC();

  v6 = [v4 initWithMemberships_];

  v7 = [v3 unsavedMembershipsOfRemindersInSections];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mergingWith:v6 mergePolicy:0];
    [v3 setUnsavedMembershipsOfRemindersInSections_];

    v6 = v9;
  }

  else
  {
    [v3 setUnsavedMembershipsOfRemindersInSections_];
  }
}

uint64_t sub_21D1E45F0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F228);
  v1 = __swift_project_value_buffer(v0, qword_280D0F228);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *TTRRemindersListReminderInsertionPosition.init(relativePosition:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3 >= 2)
  {
    v2 = *result != 0;
    LOBYTE(v3) = 4;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_21D1E46EC()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      sub_21DBF8E0C();
      return;
    }

    if (v1 >> 62)
    {
      v2 = sub_21DBFBD7C();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2)
    {
      v19 = MEMORY[0x277D84F90];
      sub_21D18E9C0(0, v2 & ~(v2 >> 63), 0);
      if ((v2 & 0x8000000000000000) == 0)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v3 = 0;
          do
          {
            v4 = MEMORY[0x223D44740](v3, v1);
            v6 = *(v19 + 16);
            v5 = *(v19 + 24);
            if (v6 >= v5 >> 1)
            {
              v8 = v4;
              sub_21D18E9C0((v5 > 1), v6 + 1, 1);
              v4 = v8;
            }

            ++v3;
            *(v19 + 16) = v6 + 1;
            v7 = (v19 + 24 * v6);
            v7[4] = v4;
            v7[5] = 0;
            v7[6] = 0xE000000000000000;
          }

          while (v2 != v3);
        }

        else
        {
          v12 = (v1 + 32);
          do
          {
            v13 = *(v19 + 16);
            v14 = *(v19 + 24);
            v15 = *v12;
            if (v13 >= v14 >> 1)
            {
              v17 = v14 > 1;
              v18 = v15;
              sub_21D18E9C0(v17, v13 + 1, 1);
              v15 = v18;
            }

            *(v19 + 16) = v13 + 1;
            v16 = (v19 + 24 * v13);
            v16[4] = v15;
            v16[5] = 0;
            v16[6] = 0xE000000000000000;
            ++v12;
            --v2;
          }

          while (v2);
        }

        return;
      }

LABEL_27:
      __break(1u);
    }
  }

  else
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58980);
      v9 = sub_21DBFA69C();
      *(v9 + 16) = v1;
      v10 = 32;
      do
      {
        v11 = (v9 + v10);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0xE000000000000000;
        v10 += 24;
        --v1;
      }

      while (v1);
    }
  }
}

uint64_t TTRRemindersListDefaultListType.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 7958113;
  }

  if (v1 == 1)
  {
    return 0x74694B64756F6C63;
  }

  sub_21DBFBEEC();

  v3 = [v1 description];
  v4 = sub_21DBFA16C();
  v6 = v5;

  MEMORY[0x223D42AA0](v4, v6);

  return 0xD00000000000001ALL;
}

uint64_t TTRRemindersListListType.localizedOptionString.getter()
{
  if (!*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_9;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_21DBF516C();
}

RemindersUICore::TTRRemindersListListType_optional __swiftcall TTRRemindersListListType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    sub_21DBFBEEC();

    v13 = 0xD000000000000010;
    v2 = [v1 objectID];
    v3 = [v2 description];
    v4 = sub_21DBFA16C();
    v6 = v5;

    MEMORY[0x223D42AA0](v4, v6);
  }

  else
  {
    v13 = 0;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC464C0);
    v7 = [v1 objectID];
    v8 = [v7 description];
    v9 = sub_21DBFA16C();
    v11 = v10;

    MEMORY[0x223D42AA0](v9, v11);

    MEMORY[0x223D42AA0](0x203A65707974202CLL, 0xE800000000000000);
    v2 = [v1 smartListType];
    type metadata accessor for REMSmartListType(0);
    sub_21DBFC14C();
  }

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v13;
}

id TTRRemindersListREMManualOrderingSaveTarget.store.getter()
{
  v1 = [*v0 store];

  return v1;
}

id TTRReminderSectionPerformMoveTarget.targetList.getter()
{
  v1 = *v0;
  if (*(v0 + 32) < 0)
  {

    return v1;
  }

  else
  {
    v2 = [v1 list];

    return v2;
  }
}

unint64_t TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  v16 = *a5;
  v17 = *(a5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58978);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D00;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  v35 = v18;
  v36 = 2;
  v29[0] = v13;
  v29[1] = v14;
  v30 = v15;
  v33 = v16;
  v34 = v17;
  v19 = *(a8 + 168);
  v20 = a1;
  sub_21DBF8E0C();
  v19(v37, &v35, v29, &v33, a6, a7, a8);
  sub_21D226D88(v35, v36);
  sub_21D0D3954(v37, v29, &qword_27CE597A8);
  v21 = v31;
  if (!v31)
  {
    sub_21D0CF7E0(v37, &qword_27CE597A8);
    sub_21D0CF7E0(v29, &qword_27CE597A8);
    return 0;
  }

  v22 = v32;
  __swift_project_boxed_opaque_existential_1(v29, v31);
  result = (*(v22 + 8))(v21, v22);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    v25 = 0;
    goto LABEL_11;
  }

  v26 = result;
  v27 = sub_21DBFBD7C();
  result = v26;
  if (!v27)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223D44740](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(result + 32);
LABEL_7:
    v25 = v24;

LABEL_11:
    sub_21D0CF7E0(v37, &qword_27CE597A8);
    __swift_destroy_boxed_opaque_existential_0(v29);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractorType.move(reminders:to:position:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  return (*(a5 + 296))(a1, a2, &v7, 0, a4);
}

uint64_t TTRRemindersListInteractorType.move(reminders:to:position:initialUncompletedRemindersInTargetList:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 8);
  v8 = *a3;
  v9 = v6;
  return (*(a6 + 304))(a1, a2, &v8, 0, a4, a5);
}

void *TTRRemindersListInteractorType.save(_:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v22 = a5;
    v23 = sub_21DBFBD7C();
    a5 = v22;
    v6 = v23;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = a5;
    v24 = MEMORY[0x277D84F90];
    result = sub_21D18E9E0(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = MEMORY[0x223D44740](v10, a1);
        v25 = v7;
        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          v15 = v11;
          sub_21D18E9E0((v12 > 1), v13 + 1, 1);
          v11 = v15;
          v7 = v25;
        }

        ++v10;
        *(v7 + 16) = v13 + 1;
        v14 = v7 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = 0;
      }

      while (v6 != v10);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v26 = v7;
        v17 = *(v7 + 16);
        v18 = *(v7 + 24);
        v19 = *v16;
        if (v17 >= v18 >> 1)
        {
          v21 = v19;
          sub_21D18E9E0((v18 > 1), v17 + 1, 1);
          v19 = v21;
          v7 = v26;
        }

        *(v7 + 16) = v17 + 1;
        v20 = v7 + 16 * v17;
        *(v20 + 32) = v19;
        *(v20 + 40) = 0;
        ++v16;
        --v6;
      }

      while (v6);
    }

    a5 = v8;
  }

  (*(a5 + 200))(v7);
}

void (*TTRRemindersListInteractor.delegate.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D22D5BC;
}

uint64_t sub_21D1E54EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRRemindersListInteractor.optimisticUpdatesDelegate.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_optimisticUpdatesDelegate;
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

uint64_t TTRRemindersListInteractor.sectionsCapability.getter()
{
  sub_21D0D32E4(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v3);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v3, v1 + 32);
  swift_beginAccess();
  *(v1 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  return v1;
}

id TTRRemindersListInteractor.__allocating_init(store:canChangeSortingStyle:defaultListType:committer:undoContext:)(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = *a3;
  *&v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_optimisticUpdatesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_removeTemplateCapability;
  type metadata accessor for TTRRemoveTemplateLowLevelInteractorCapability();
  *&v12[v14] = swift_allocObject();
  *&v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store] = a1;
  v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle] = a2;
  *&v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_defaultListType] = v13;
  sub_21D0D32E4(a4, &v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer]);
  sub_21D0D3954(a5, &v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_fixedUndoContext], &qword_27CE59370);
  v17.receiver = v12;
  v17.super_class = v6;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_21D0CF7E0(a5, &qword_27CE59370);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v15;
}

id TTRRemindersListInteractor.init(store:canChangeSortingStyle:defaultListType:committer:undoContext:)(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = *a3;
  *&v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_optimisticUpdatesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_removeTemplateCapability;
  type metadata accessor for TTRRemoveTemplateLowLevelInteractorCapability();
  *&v6[v14] = swift_allocObject();
  *&v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store] = a1;
  v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle] = a2;
  *&v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_defaultListType] = v13;
  sub_21D0D32E4(a4, &v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer]);
  sub_21D0D3954(a5, &v6[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_fixedUndoContext], &qword_27CE59370);
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_21D0CF7E0(a5, &qword_27CE59370);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v15;
}

void *TTRRemindersListInteractor.attributeEditor(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *&v2[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
  TTRRemindersListInteractor.undoContext.getter(v13);
  v6 = type metadata accessor for TTRRemindersListOneShotAttributeEditorProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = v5;
  *(v7 + 40) = a1;
  v8 = v13[1];
  *(v7 + 48) = v13[0];
  *(v7 + 64) = v8;
  *(v7 + 80) = v14;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v7 + 16) = sub_21D226DA0;
  *(v7 + 24) = v9;
  sub_21DBF8E0C();
  v10 = v2;
  sub_21D0D0E88(0);
  v11 = type metadata accessor for TTRRemindersListAttributeEditor();
  result = swift_allocObject();
  result[5] = v6;
  result[6] = &off_282EDDDB8;
  result[2] = v7;
  a2[3] = v11;
  a2[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a2 = result;
  return result;
}

uint64_t TTRRemindersListInteractor.undoContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_fixedUndoContext, &v18 - v7, &qword_27CE59370);
  v9 = type metadata accessor for TTRRemindersListUndoContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    *(&v20 + 1) = v9;
    v21 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
    sub_21D1073B0(v8, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
    return sub_21D0D0FD0(&v19, a1);
  }

  sub_21D0CF7E0(v8, &qword_27CE59370);
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v12 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v10 + 56))(v5, 1, 1, v9);
LABEL_8:
    result = sub_21D0CF7E0(v5, &qword_27CE59370);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    if (!*(&v20 + 1))
    {
      return result;
    }

    return sub_21D0CF7E0(&v19, &unk_27CE60D80);
  }

  v13 = *(v12 + 8);
  ObjectType = swift_getObjectType();
  (*(v13 + 8))(v1, &protocol witness table for TTRRemindersListInteractor, ObjectType, v13);
  swift_unknownObjectRelease();
  if (v11(v5, 1, v9) == 1)
  {
    goto LABEL_8;
  }

  *(a1 + 24) = v9;
  *(a1 + 32) = &protocol witness table for TTRRemindersListUndoContext;
  v15 = __swift_allocate_boxed_opaque_existential_0(a1);
  result = sub_21D1073B0(v5, v15, type metadata accessor for TTRRemindersListUndoContext);
  if (*(&v20 + 1))
  {
    return sub_21D0CF7E0(&v19, &unk_27CE60D80);
  }

  return result;
}

uint64_t sub_21D1E5D18(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_optimisticUpdatesDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    if (a1 >> 62)
    {
      v7 = sub_21DBFBD7C();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v17 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = v6;
      v16 = v2;
      v9 = 0;
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223D44740](v9, a1);
        }

        else
        {
          v11 = *(a1 + 8 * v9 + 32);
        }

        v12 = v11;
        ++v9;
        v13 = [v10 refreshReminder_];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v7 != v9);
      v2 = v16;
      v8 = v17;
      v6 = v15;
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, &protocol witness table for TTRRemindersListInteractor, v8, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRRemindersListInteractor.attributeEditor(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  TTRRemindersListInteractor.undoContext.getter(v10);
  v4 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = a1;
  v6 = v10[1];
  *(v5 + 40) = v10[0];
  *(v5 + 56) = v6;
  *(v5 + 72) = v11;
  v7 = type metadata accessor for TTRRemindersListAttributeEditor();
  v8 = swift_allocObject();
  v8[5] = v4;
  v8[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
  v8[2] = v5;
  a2[3] = v7;
  a2[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a2 = v8;

  return sub_21DBF8E0C();
}

Swift::Void __swiftcall TTRRemindersListInteractor.delete(sections:andReminders:)(Swift::OpaquePointer sections, Swift::OpaquePointer andReminders)
{
  v3 = v2;
  rawValue = sections._rawValue;
  v59 = sub_21DBF9D2C();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21DBF9D5C();
  v7 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_21DBF9D8C();
  MEMORY[0x28223BE20](v61);
  v60 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v5;
  v49 = v7;
  v52 = v10;
  if (andReminders._rawValue >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((andReminders._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {
      goto LABEL_11;
    }

    *&aBlock = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v14 = *&v3[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
    do
    {
      if ((andReminders._rawValue & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v13, andReminders._rawValue);
      }

      else
      {
        v15 = *(andReminders._rawValue + v13 + 4);
      }

      v16 = v15;
      ++v13;
      v17 = [v14 refreshReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (i != v13);
    v12 = aBlock;
LABEL_11:
    if (v12 >> 62)
    {
      v18 = sub_21DBFBD7C();
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v12;
    v55 = v12 >> 62;
    if (v18)
    {
      *&aBlock = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v18 < 0)
      {
        goto LABEL_41;
      }

      v19 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x223D44740](v19, v12);
        }

        else
        {
          v20 = *(v12 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        v22 = [v20 list];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v18 != v19);
      v23._rawValue = aBlock;
    }

    else
    {
      v23._rawValue = MEMORY[0x277D84F90];
    }

    v24 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v23, 1);
    [v24 setNotifyChangeDelegate_];

    v25 = rawValue[2];
    if (v25)
    {
      v26 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer;
      v27 = &rawValue[2 * v25 + 3];
      do
      {
        --v25;
        v28 = *(v27 - 1);
        v29 = *v27;
        v27 -= 16;
        sub_21D0D32E4(&v3[v26], &aBlock);
        type metadata accessor for TTRRemindersListInteractorSectionsCapability();
        v30 = swift_allocObject();
        *(v30 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_21D0D0FD0(&aBlock, v30 + 32);
        swift_beginAccess();
        *(v30 + 24) = &protocol witness table for TTRRemindersListInteractor;
        swift_unknownObjectWeakAssign();
        *&aBlock = v28;
        BYTE8(aBlock) = v29;
        v67 = v24;
        v31 = v28;
        v32 = v24;
        TTRRemindersListInteractorSectionsCapability.delete(_:option:)(&aBlock, &v67);

        v33 = v67;
      }

      while (v25);
    }

    TTRRemindersListInteractor.undoContext.getter(&aBlock);
    v34 = v63;
    _s15RemindersUICore13TTRListEditorC6remove9reminders11saveRequest11undoContext7Combine6FutureCyyts5Error_pGSaySo11REMReminderCG_So07REMSaveH0CAA07TTRUndoJ0_pSgtFZ_0(v63, v24, &aBlock);

    sub_21D0CF7E0(&aBlock, &unk_27CE60D80);
    sub_21DBF60DC();
    v62 = sub_21DBF60CC();
    if (v55)
    {
      v35 = sub_21DBFBD7C();
      if (!v35)
      {
LABEL_36:

        return;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_36;
      }
    }

    if (v35 < 1)
    {
      goto LABEL_42;
    }

    v36 = 0;
    v55 = v63 & 0xC000000000000001;
    v54 = *MEMORY[0x277D851F0];
    v53 = (v52 + 13);
    ++v52;
    v51 = v66;
    ++v50;
    ++v49;
    v37 = v56;
    while (1)
    {
      v38 = v55 ? MEMORY[0x223D44740](v36, v63) : *(v63 + 8 * v36 + 32);
      v39 = v38;
      v41 = v60;
      v40 = v61;
      v42 = v62;
      *v60 = v62;
      (*v53)(v41, v54, v40);
      v42;
      andReminders._rawValue = sub_21DBF9DAC();
      (*v52)(v41, v40);
      if ((andReminders._rawValue & 1) == 0)
      {
        break;
      }

      ++v36;
      v43 = swift_allocObject();
      *(v43 + 16) = v39;
      v66[2] = sub_21D226DA8;
      v66[3] = v43;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v66[0] = sub_21D0D74FC;
      v66[1] = &block_descriptor_5;
      v44 = _Block_copy(&aBlock);
      rawValue = v39;
      sub_21DBF9D4C();
      v67 = MEMORY[0x277D84F90];
      sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
      v3 = v58;
      v45 = v35;
      v46 = v59;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v37, v3, v44);
      _Block_release(v44);

      v47 = v46;
      v35 = v45;
      (*v50)(v3, v47);
      (*v49)(v37, v57);

      if (v45 == v36)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_38:
    ;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

Swift::Void __swiftcall TTRRemindersListInteractor.recover(_:)(Swift::OpaquePointer a1)
{
  Fallback = TTRRemindersListInteractor.fetchDefaultListOrCreateFallbackList()();
  if (Fallback)
  {
    v4 = Fallback;
    v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    TTRRemindersListInteractor.undoContext.getter(v10);
    _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(a1._rawValue, v4, v5, v10);

    sub_21D0CF7E0(v10, &unk_27CE60D80);
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F228);
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v7, "Failed to fetch default list for reminder recovery", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }
  }
}

id TTRRemindersListInteractor.fetchDefaultListOrCreateFallbackList()()
{
  result = sub_21D1FF5E0();
  if (!result)
  {

    return TTRRemindersListInteractor.createFallbackListForReminderCreationWhenDefaultListIsMissing()();
  }

  return result;
}

uint64_t TTRRemindersListInteractor.recover(_:to:)(unint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  TTRRemindersListInteractor.undoContext.getter(v7);
  _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(a1, a2, v5, v7);

  return sub_21D0CF7E0(v7, &unk_27CE60D80);
}

void TTRRemindersListInteractor.permanentlyHide(_:account:)(unint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  if (a1 >> 62)
  {
LABEL_25:
    v4 = sub_21DBFBD7C();
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = 0;
  v6 = 0;
  do
  {
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (![v7 isSubtask])
      {
        break;
      }

      v10 = [v25 updateReminder_];
      [v10 removeFromParentReminder];

      v5 = 1;
      v6 = v9;
      if (v9 == v4)
      {
        goto LABEL_15;
      }
    }

    ++v6;
  }

  while (v9 != v4);
  if ((v5 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v26[0] = 0;
  if ([v25 saveSynchronouslyWithError_])
  {
    v11 = v26[0];
  }

  else
  {
    v12 = v26[0];
    v13 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F228);
    v15 = v13;
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_21DBFC75C();
      v22 = sub_21D0CDFB4(v20, v21, v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Failed to remove from ParentReminder before permanently hiding subtask(s). {error: %s}", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    else
    {
    }
  }

LABEL_22:
  v23 = [a2 objectID];
  sub_21DBFB72C();
}

void sub_21D1E6FBC(void *a1, char a2)
{
  if (a2)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F228);
    v4 = a1;
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = sub_21D0CDFB4(v8, v9, &v12);

      *(v6 + 4) = v10;
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

void TTRRemindersListInteractor.permanentlyHideAllInRecentlyDeletedList(in:)(void *a1)
{
  v74[1] = *MEMORY[0x277D85DE8];
  v68 = sub_21DBF6D7C();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21DBF773C();
  v69 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF734C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0);
  v65 = *(v10 - 8);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v62 - v12;
  v63 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v15 = a1;
  v16 = [a1 objectID];
  (*(v7 + 104))(v9, *MEMORY[0x277D45500], v6);
  sub_21DBF748C();
  v67 = 0;
  v26 = v68;
  v62 = v14;
  v70 = v15;
  (*(v7 + 8))(v9, v6);

  v27 = v66;
  sub_21DBF76DC();
  (*(v65 + 8))(v13, v10);
  v28 = sub_21DBF718C();
  (*(v69 + 8))(v27, v71);
  v29 = *(v28 + 16);
  if (v29)
  {
    v74[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v30 = v26;
    v71 = *(v64 + 16);
    v31 = *(v64 + 80);
    v69 = v28;
    v32 = v28 + ((v31 + 32) & ~v31);
    v33 = *(v64 + 72);
    v34 = (v64 + 8);
    do
    {
      v71(v4, v32, v30);
      sub_21DBF6D5C();
      (*v34)(v4, v30);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v32 += v33;
      --v29;
    }

    while (v29);

    v35 = v74[0];
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v36 = v62;
  if (v35 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D17880);
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v37 = sub_21DBFA5DC();

  v38 = [objc_opt_self() fetchOptionsIncludingConcealed];
  v74[0] = 0;
  v39 = [v36 fetchRemindersWithObjectIDs:v37 fetchOptions:v38 error:v74];

  v40 = v74[0];
  if (!v39)
  {
    v46 = v74[0];

    v47 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_3;
  }

  v41 = sub_21D0D8CF0(0, &qword_280D17860);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v68 = v41;
  v42 = sub_21DBF9E6C();
  v43 = v40;

  v74[0] = MEMORY[0x277D84F90];
  v44 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    v45 = sub_21DBFBD7C();
  }

  else
  {
    v45 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v70;
  v49 = 0;
  v47 = v35;
  v50 = v35 & 0xC000000000000001;
  v51 = v42;
  v52 = v42 & 0xC000000000000001;
  v53 = v51 & 0xFFFFFFFFFFFFFF8;
  v69 = v51;
  if (v51 < 0)
  {
    v53 = v51;
  }

  v71 = v53;
  v66 = MEMORY[0x277D84F90];
  if (!v45)
  {
LABEL_21:

    TTRRemindersListInteractor.permanentlyHide(_:account:)(v66, v48);

    return;
  }

  while (v50)
  {
    v54 = MEMORY[0x223D44740](v49, v47);
    v55 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_42;
    }

LABEL_28:
    if (v52)
    {
      v56 = v54;
      v57 = sub_21DBFC2CC();

      if (v57)
      {
        v72 = v57;
        swift_dynamicCast();
        v57 = v73;
      }
    }

    else
    {
      v58 = v69;
      if (!*(v69 + 16))
      {

        ++v49;
        goto LABEL_24;
      }

      v59 = v54;
      v60 = sub_21D17E07C(v59);
      if (v61)
      {
        v57 = *(*(v58 + 56) + 8 * v60);
      }

      else
      {

        v57 = 0;
      }
    }

    v48 = v70;
    ++v49;
    if (v57)
    {
      MEMORY[0x223D42D80]();
      if (*((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v66 = v74[0];
      v49 = v55;
      v48 = v70;
      if (v45 == v55)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_24:
      if (v45 == v49)
      {
        goto LABEL_21;
      }
    }
  }

  if (v49 >= *(v44 + 16))
  {
    goto LABEL_43;
  }

  v54 = v47[v49 + 4];
  v55 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_28;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_3:
  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_280D0F228);
  v18 = v47;
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v74[0] = v22;
    *v21 = 136315138;
    swift_getErrorValue();
    v23 = sub_21DBFC74C();
    v25 = sub_21D0CDFB4(v23, v24, v74);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to fetch reminders in recently deleted list for permanently hide {error: %s}", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRRemindersListInteractor.fetchCompletedRemindersToBeDeleted(in:completedBefore:)(uint64_t a1)
{
  sub_21DBF809C();
  v3 = sub_21DBF805C();
  if (!v1)
  {
    v5 = v4;
    v15 = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_21DBFBD7C();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    do
    {
      v9 = v8;
      if (v7 == v8)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D44740](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v12 = [v10 capabilities];
      v13 = [v12 supportsRecentlyDeletedList];

      v8 = v9 + 1;
    }

    while ((v13 & 1) != 0);

    if ((v15 & 0xC000000000000001) != 0)
    {
      a1 = sub_21DBFBD7C();
    }

    else
    {
      a1 = *(v15 + 16);
    }
  }

  return a1;
}

uint64_t TTRRemindersListInteractor.deleteCompletedReminders(in:completedBefore:callbackQueue:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v38 = a1;
  v39 = a2;
  v46 = sub_21DBF9D2C();
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v36 - v12;
  v14 = sub_21DBF806C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21DBF60DC();
  v40 = sub_21DBF60BC();
  (*(v15 + 16))(v17, v38, v14);
  sub_21D0D3954(v39, v13, &qword_27CE58D68);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v18, v17, v14);
  sub_21D0D523C(v13, v22 + v19, &qword_27CE58D68);
  v23 = v37;
  *(v22 + v20) = v37;
  v25 = v42;
  v24 = v43;
  *(v22 + v21) = v42;
  v26 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v44;
  *v26 = v24;
  v26[1] = v27;
  aBlock[4] = sub_21D226DB0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_9;
  v28 = _Block_copy(aBlock);
  v29 = v23;
  v30 = v25;

  v31 = v41;
  sub_21DBF9D4C();
  v50 = MEMORY[0x277D84F90];
  sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  v33 = v45;
  v32 = v46;
  sub_21DBFBCBC();
  v34 = v40;
  MEMORY[0x223D438F0](0, v31, v33, v28);
  _Block_release(v28);

  (*(v49 + 8))(v33, v32);
  (*(v47 + 8))(v31, v48);
}

uint64_t sub_21D1E8168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v8 = sub_21DBF9D2C();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF809C();
  v14 = sub_21DBF808C();
  v16 = v15;
  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBFBD7C();
  }

  else
  {
    v17 = *(v14 + 16);
  }

  if (v16 >> 62)
  {
    sub_21D0D8CF0(0, &qword_27CE5DDD0);
    sub_21DBF8E0C();
    v18 = sub_21DBFC33C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_27CE5DDD0);

    v18 = v16;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  *(v19 + 48) = 0;
  aBlock[4] = sub_21D22D1C0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_440;
  v20 = _Block_copy(aBlock);

  sub_21D22D1F4(v17, v18, 0);
  sub_21DBF9D4C();
  v29 = MEMORY[0x277D84F90];
  sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  v21 = v28;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v13, v10, v20);
  _Block_release(v20);
  sub_21D22D1B0(v17, v18, 0);
  (*(v27 + 8))(v10, v21);
  (*(v24 + 8))(v13, v25);
}

void TTRRemindersListInteractor.makeSubtask(_:paramsForREMManualOrdering:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v4 = a1;
  v93 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v89 = *a2;
  v6 = a2[2];
  v7 = a2[3];
  v90 = v5;
  v91 = v6;
  v92 = v7;
  v8 = MEMORY[0x277D84F90];
  *&v88[0] = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  in._rawValue = MEMORY[0x277D84F90];
  if (v9)
  {
    v10 = (a1 + 32);
    v11 = *(a1 + 16);
    do
    {
      v12 = *v10;
      MEMORY[0x223D42D80]();
      if (*((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 += 2;
      --v11;
    }

    while (v11);
    v13 = *&v88[0];
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = sub_21D19ED08(v13);

  *&v88[0] = v8;
  if (v9)
  {
    v15 = v4;
    v16 = (v4 + 40);
    v17 = v9;
    do
    {
      v18 = *v16;
      MEMORY[0x223D42D80]();
      if (*((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v16 += 2;
      --v17;
    }

    while (v17);
    v8 = *&v88[0];
    v4 = v15;
  }

  v19 = sub_21D198698(v14);

  *&v88[0] = v19;
  sub_21D562328(v8);
  v20 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880);
  v21 = sub_21DBFA5DC();

  *&v88[0] = 0;
  v22 = [v20 fetchRemindersIncludingUnsupportedWithObjectIDs:v21 error:v88];

  v23 = *&v88[0];
  if (v22)
  {
    v82 = v20;
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
    v24 = sub_21DBF9E6C();
    v25 = v23;

    *&v88[0] = MEMORY[0x277D84F90];
    v84 = v3;
    v86 = v24;
    if (!v9)
    {
      goto LABEL_38;
    }

    v26 = 0;
    v27 = (v24 & 0xC000000000000001);
    v28 = v4 + 40;
    in._rawValue = MEMORY[0x277D84F90];
    v80 = v4;
LABEL_17:
    v29 = (v28 + 16 * v26);
    v30 = v26;
    while (1)
    {
      if (v30 >= v9)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_71;
      }

      v31 = *(v29 - 1);
      v32 = *v29;
      if (v27)
      {
        v33 = v31;
        v34 = v32;
        if (!sub_21DBFC2CC())
        {
          goto LABEL_18;
        }

        swift_dynamicCast();
        v35 = v87;
        if (!v87)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v36 = *(v86 + 16);
        v37 = v31;
        v38 = v32;
        if (!v36 || (v39 = sub_21D17E07C(v37), (v40 & 1) == 0) || (v35 = *(*(v86 + 56) + 8 * v39)) == 0)
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      v41 = [v35 list];

      if (v41)
      {
        MEMORY[0x223D42D80]();
        if (*((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        in._rawValue = *&v88[0];
        v3 = v84;
        v4 = v80;
        if (v26 != v9)
        {
          goto LABEL_17;
        }

LABEL_38:
        v52 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
        REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(in, 1);
        [v52 setNotifyChangeDelegate_];

        if (v9)
        {
          v53 = 0;
          v54 = v86 & 0xC000000000000001;
          v55 = v4 + 40;
          v83 = MEMORY[0x277D84F90];
          v81 = v4 + 40;
          while (2)
          {
            v27 = (v55 + 16 * v53);
            v56 = v53;
LABEL_44:
            if (v56 >= v9)
            {
              goto LABEL_72;
            }

            v53 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_73;
            }

            v58 = *(v27 - 1);
            v57 = *v27;
            if (v54)
            {
              v59 = v58;
              v60 = v57;
              if (sub_21DBFC2CC())
              {
                swift_dynamicCast();
                v61 = *&v88[0];
                if (*&v88[0])
                {
                  v62 = v60;
                  v63 = sub_21DBFC2CC();

                  if (v63)
                  {
                    swift_dynamicCast();
                    v64 = *&v88[0];
                    v54 = v86 & 0xC000000000000001;
                    if (*&v88[0])
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_42;
                  }

LABEL_41:
                  v54 = v86 & 0xC000000000000001;
                  goto LABEL_42;
                }
              }
            }

            else
            {
              v65 = *(v86 + 16);
              v66 = v58;
              v67 = v57;
              if (v65)
              {
                v68 = v67;
                v69 = sub_21D17E07C(v66);
                if ((v70 & 1) != 0 && (v71 = *(*(v86 + 56) + 8 * v69), v72 = v71, v71))
                {
                  v61 = v72;
                  if (!*(v86 + 16))
                  {
                    goto LABEL_41;
                  }

                  v73 = sub_21D17E07C(v68);
                  if ((v74 & 1) == 0)
                  {
                    goto LABEL_41;
                  }

                  v64 = *(*(v86 + 56) + 8 * v73);
                  v54 = v86 & 0xC000000000000001;
                  if (v64)
                  {
LABEL_60:
                    v75 = v64;
                    v76 = [v52 updateReminder_];

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v83 = sub_21D211328(0, v83[2] + 1, 1, v83);
                    }

                    v78 = v83[2];
                    v77 = v83[3];
                    if (v78 >= v77 >> 1)
                    {
                      v83 = sub_21D211328((v77 > 1), v78 + 1, 1, v83);
                    }

                    v83[2] = v78 + 1;
                    v79 = &v83[2 * v78];
                    v79[4] = v61;
                    v79[5] = v76;
                    v54 = v86 & 0xC000000000000001;
                    v55 = v81;
                    if (v53 != v9)
                    {
                      continue;
                    }

                    goto LABEL_68;
                  }

LABEL_42:

                  v57 = v58;
                  v58 = v61;
                }

                else
                {
                  v54 = v86 & 0xC000000000000001;
                }
              }
            }

            break;
          }

          ++v56;
          v27 += 2;
          if (v53 == v9)
          {
            goto LABEL_68;
          }

          goto LABEL_44;
        }

        v83 = MEMORY[0x277D84F90];
LABEL_68:

        v88[0] = v89;
        v88[1] = v90;
        v88[2] = v91;
        v88[3] = v92;
        sub_21D1E8E68(v83, v52, 1, v88);

        return;
      }

LABEL_19:
      ++v30;
      v29 += 2;
      if (v26 == v9)
      {
        v3 = v84;
        v4 = v80;
        goto LABEL_38;
      }
    }
  }

  v42 = *&v88[0];
  v27 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17ED0 != -1)
  {
LABEL_74:
    swift_once();
  }

  v43 = sub_21DBF84BC();
  __swift_project_value_buffer(v43, qword_280D0F228);
  v44 = v27;
  v45 = sub_21DBF84AC();
  v46 = sub_21DBFAEBC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v88[0] = v48;
    *v47 = 136315138;
    swift_getErrorValue();
    v49 = sub_21DBFC75C();
    v51 = sub_21D0CDFB4(v49, v50, v88);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_21D0C9000, v45, v46, "makeSubtask error: Failed to fetch reminders {error: %s}", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D46520](v48, -1, -1);
    MEMORY[0x223D46520](v47, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D1E8E68(uint64_t a1, void *a2, int a3, __int128 *a4)
{
  v76 = a3;
  v78 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589A0);
  v77 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v8 = (&v65 - v7);
  v9 = a4[1];
  v91 = *a4;
  v92 = v9;
  v10 = a4[3];
  v93 = a4[2];
  v94 = v10;
  v11 = v91;
  if (v91)
  {
    v74 = a1;
    v75 = v4;
    v12 = *(&v91 + 1);
    v13 = v92;
    v14 = BYTE8(v92);
    v15 = v93;
    v73 = WORD4(v93);
    v16 = *(&v94 + 1);
    v72 = v94;
    v17 = *(a1 + 16);
    if (v17)
    {
      v69 = BYTE8(v92);
      *&v81 = MEMORY[0x277D84F90];
      v70 = v91;
      sub_21DBF8E0C();
      v68 = v12;
      sub_21DBF8E0C();
      v71 = v13;
      v18 = v13;
      v66 = v15;
      v19 = v15;
      v67 = v16;
      sub_21DBF8E0C();
      sub_21D18EA00(0, v17, 0);
      v20 = v81;
      v21 = (a1 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v80 = v79[12];
        v24 = v22;
        v25 = v23;
        v26 = [v24 objectID];
        v27 = [v25 objectID];
        sub_21DBFADFC();

        [v25 isCompleted];
        sub_21DBF6D4C();

        *v8 = v26;
        *&v81 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_21D18EA00(v28 > 1, v29 + 1, 1);
          v20 = v81;
        }

        *(v20 + 16) = v29 + 1;
        sub_21D0D523C(v8, v20 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v29, &qword_27CE589A0);
        v21 += 2;
        --v17;
      }

      while (v17);
      v11 = v70;
      v13 = v71;
      v14 = v69;
      v31 = v67;
      v30 = v68;
      v32 = v66;
    }

    else
    {
      v33 = v92;
      v34 = v15;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v32 = v15;
      v20 = MEMORY[0x277D84F90];
      v30 = v12;
      v31 = v16;
    }

    sub_21D0D8CF0(0, &qword_27CE59830);
    v35 = v32;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v36 = sub_21D39A58C(v35, v73, v72, v31, v11, v30, v20);
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    sub_21D0D3954(&v81, &v88, &unk_27CE60D80);
    v37 = v78;
    v38 = v13;
    if (v14)
    {
      v39 = [v37 updateTemplate_];
      sub_21D0CF7E0(&v81, &unk_27CE60D80);
      type metadata accessor for TTRTemplateEditor();
      inited = swift_initStackObject();
      *(inited + 16) = v39;
      v41 = v90;
      v42 = v89;
      *(inited + 24) = v88;
      *(inited + 40) = v42;
      *(inited + 56) = v41;
      *(inited + 64) = 0;
      v87[0] = 4;
      sub_21D866814(v36);
      v43 = *MEMORY[0x277D44BF0];
      v87[0] = 1;
      sub_21D863CB4(v43);
    }

    else
    {
      v44 = [v37 updateSmartList_];
      sub_21D0CF7E0(&v81, &unk_27CE60D80);
      type metadata accessor for TTRSmartListEditor();
      inited = swift_initStackObject();
      *(inited + 16) = v44;
      v45 = v90;
      v46 = v89;
      *(inited + 24) = v88;
      *(inited + 40) = v46;
      *(inited + 56) = v45;
      *(inited + 64) = 0;
      v87[0] = 4;
      sub_21D6532B4(v36);
      v47 = *MEMORY[0x277D44BF0];
      v87[0] = 1;
      sub_21D64F7E4(v47);
    }

    swift_setDeallocating();

    sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
    sub_21D0CF7E0(&v91, &qword_27CE59DD8);

    a1 = v74;
  }

  TTRRemindersListInteractor.undoContext.getter(&v88);
  v48 = *(a1 + 16);
  if (v48)
  {
    v80 = v48 - 1;
    for (i = (a1 + 40); ; i += 2)
    {
      v50 = *(i - 1);
      v51 = *i;
      sub_21D0D3954(&v88, &v81, &unk_27CE60D80);
      sub_21D0D3954(&v81, v87, &unk_27CE60D80);
      v52 = v50;
      v53 = v51;
      v54 = [v78 updateReminder_];
      sub_21D0D3954(v87, v86, &unk_27CE60D80);
      v85[6] = 0;
      sub_21D0D3954(v86, v85, &unk_27CE60D80);
      v55 = [v54 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v86, &unk_27CE60D80);
      sub_21D0CF7E0(v87, &unk_27CE60D80);
      sub_21D0CF7E0(&v81, &unk_27CE60D80);
      v56 = [v54 subtaskContext];
      if (v56)
      {
        v57 = v56;
        v79 = v55;
        v58 = [v54 listChangeItem];
        if (v58)
        {
          v59 = v58;
          v60 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v53, v58, v57, 0);
        }

        else
        {
          v60 = v53;
        }

        [v57 insertReminderChangeItem:v60 afterReminderChangeItem:0];

        sub_21D0CF7E0(v85, &unk_27CE60D80);
        v61 = v80;
        if (!v80)
        {
          break;
        }
      }

      else
      {

        sub_21D0CF7E0(v85, &unk_27CE60D80);
        v61 = v80;
        if (!v80)
        {
          break;
        }
      }

      v80 = v61 - 1;
    }
  }

  if (v76)
  {
    sub_21D0D8CF0(0, &qword_280D1B900);
    v62 = sub_21DBFB12C();
    v83 = sub_21D9C89C0;
    v84 = 0;
    *&v81 = MEMORY[0x277D85DD0];
    *(&v81 + 1) = 1107296256;
    *&v82 = sub_21D11E5E4;
    *(&v82 + 1) = &block_descriptor_434;
    v63 = _Block_copy(&v81);
    [v78 saveWithQueue:v62 completion:v63];
    _Block_release(v63);
  }

  return sub_21D0CF7E0(&v88, &unk_27CE60D80);
}
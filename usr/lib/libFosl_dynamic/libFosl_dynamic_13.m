uint64_t sub_2978D74F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978A7C00(*a1);
  v6 = sub_2978BE260(v5);

  return sub_297828D2C(v6, a2, a3);
}

uint64_t sub_2978D7538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v19[0] = a3;
  v19[1] = a4;
  sub_29780B1B8(v20);
  v6 = sub_2977FB720(v19);
  v7 = sub_2978130B8(v19);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v10 = sub_2978D7810(v9);
      v18[0] = sub_2978D85B8(a1, v10, v11);
      sub_2978040A4(v20, v18);
    }

    while (v6 != v8);
  }

  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2978CD694(v18, v20);
  v14 = sub_2978BC8AC(v12, v13, a2, v18[0], v18[1], *(a1 + 8));
  v15 = sub_2978D8574(a1, v14);
  sub_2977FD134(v20);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t sub_2978D7644(unsigned __int8 *a1, uint64_t a2)
{
  if (sub_2978B78A0(a1, a2))
  {
    sub_297804560(&v9);
  }

  else if (sub_29783E2B8(a1))
  {
    v4 = j_j_nullsub_1(a1, v3);
    sub_29784CE50(&v9, v4);
  }

  else
  {
    v5 = sub_29788AA04(a1, v3);
    v6 = sub_2977FB720(v5);
    v7 = sub_2977FB7B8(v5);
    sub_2978A1858(&v9, v6, v7);
  }

  return v9;
}

uint64_t sub_2978D76E4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_2978D6940(&v3, a2))
  {
    return sub_29781BF50(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D7720(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v14 = sub_2978D85B8(a1, a5, a6);

  return sub_2978D6A54(a1, a2, a3, a4, v14, a7, a8);
}

uint64_t sub_2978D779C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = sub_2978D85B8(a1, a2, a3);
  v11 = sub_2978D85B8(a1, a4, a5);

  return sub_2978D8608(a1, v10, v11, a6);
}

uint64_t sub_2978D7810(uint64_t a1)
{
  v1 = sub_2977FB720(a1);

  return sub_29788709C(v1);
}

BOOL sub_2978D7838(uint64_t a1, int a2, int a3)
{
  v40 = *MEMORY[0x29EDCA608];
  v6 = sub_2977FB720(a1 + 456);
  v7 = sub_2978D65BC(v6);
  sub_2978D65C4(v37, v7);
  *(a1 + 628) = a2;
  *(a1 + 632) = a3;
  if (*(a1 + 624) & 1) != 0 || (v8 = sub_2978A7C00(v7), v9 = sub_2977FD5B0(v8), (sub_29786E230(v9)))
  {
    v10 = 0;
  }

  else
  {
    sub_297829180(&v36);
    sub_2978C1AD4(v35);
    sub_2978C84CC(v35, 2);
    v11 = sub_2978037C8(a1 + 576);
    sub_2977FB7B4(v38, v11);
    v12 = sub_2978D74F0(v37, v38[0], v38[1]);
    sub_2978C77C4(v39, v35, v12, v36);
    sub_2978B65DC(v34, v7, 9);
    v13 = sub_2978BA2D0(v7, v39);
    v14 = sub_29781BF50(v13);
    *(a1 + 8) = v14;
    sub_2978D7B64(v14);
    if (*(a1 + 552) == 1)
    {
      sub_2978D7B70(*(a1 + 8));
    }

    sub_2978D7B7C(*(a1 + 8), *(a1 + 560));
    sub_2978D7B84(*(a1 + 8), *(a1 + 568));
    sub_29786EC00(v38);
    if (!*(a1 + 628))
    {
      sub_2977FB7B4(v31, "_dc");
      sub_2977FB7B4(&v32, "p0");
      v15 = sub_2978D779C(v37, v31[0], v31[1], v32, v33, 4);
      v31[0] = sub_2978BFCE4(v7, v15);
      sub_2978040A4(v38, v31);
    }

    sub_29788E120(v31);
    v10 = sub_2978D6FC4(a1, *a1, v38, v31);
    if (v10)
    {
      v16 = sub_2978D7810(*a1);
      v18 = sub_2978D69B8(v37, v16, v17);
      v32 = sub_29788C514(v18);
      v19 = sub_2977FB720(&v32);
      v20 = sub_2978876EC(v19);
      v21 = sub_2977FB7B8(v20);
      if (sub_2978B5A90(v21))
      {
        sub_2978D7B8C(*(a1 + 8), 0);
        v22 = "ci_outColorF";
      }

      else
      {
        sub_2978B5AB4(v21);
        sub_2978D7B8C(*(a1 + 8), 1);
        v22 = "ci_outColorH";
      }

      sub_2977FB7B4(&v32, v22);
      v23 = sub_2978D7810(*a1);
      v25 = sub_2978D779C(v37, v32, v33, v23, v24, 4);
      v32 = sub_2978BFCE4(v7, v25);
      sub_2978040A4(v38, &v32);
      v26 = *(a1 + 8);
      v27 = v36;
      sub_29780B1E8(&v32, v38);
      v28 = sub_2978BFDC8(v7, v27, v27, v32, v33);
      sub_2978BA364(v7, v26, v28);
    }

    else
    {
      sub_2977FD800(v38);
      sub_2978BF928(v7, *(a1 + 8));
      sub_2978B6D78(v7);
    }

    sub_29787B7C8(v31);
    sub_2977FD134(v38);
    sub_2978B6620(v34);
    if (v10)
    {
      sub_2978BF928(v7, *(a1 + 8));
      sub_2978B6D78(v7);
    }

    sub_2978C80D0(v39);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sub_2978D7B94(void *a1)
{
  v2 = sub_29781F06C();

  return sub_2978D7BD0(a1, v2);
}

uint64_t sub_2978D7BD0(void *a1, uint64_t a2)
{
  sub_297801F64(a2, "Filter DAG:\n");
  sub_2978D7C68(a1, v3, v7);
  sub_2978D7C6C(v6);
  if (sub_2978D7C70(v7, v6))
  {
    do
    {
      v4 = sub_2978D7C8C(v7);
      sub_2978D7C90(v4);
      sub_2978D7CCC(v7);
    }

    while ((sub_2978D7C70(v7, v6) & 1) != 0);
  }

  sub_2978D7CF4(v6);
  return sub_2978D7CF4(v7);
}

uint64_t sub_2978D7C90(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978D7EC0(a1, v2);
}

void **sub_2978D7CF8(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978D7D34(a1, v2);
}

void **sub_2978D7D34(uint64_t a1, void **a2)
{
  v3 = sub_2978D7D74(a1, 0);

  return sub_29780BB74(a2, v3);
}

uint64_t sub_2978D7D74(uint64_t a1, int a2)
{
  sub_297803300(a1 + 600);
  std::string::reserve((a1 + 600), 0x400uLL);
  sub_29783E51C(v22, a1 + 600);
  v4 = sub_2977FB720(a1 + 456);
  v5 = sub_2978EE93C(v4);
  if (sub_29786E230(v5))
  {
    sub_297801F64(v22, "// An error occurred, see stderr for the error message");
  }

  else
  {
    v7 = *(a1 + 628);
    switch(v7)
    {
      case 2:
        v16 = sub_2977FB720(a1 + 456);
        v17 = sub_2977FB7B8(v16);
        v20 = sub_2978D7E90(v17);
        v21 = v18;
        v19 = sub_2977FB720(&v20);
        sub_2978A812C(*v19, v22);
        break;
      case 1:
        v12 = sub_2977FB720(a1 + 456);
        v13 = sub_2977FB7B8(v12);
        v20 = sub_2978D7E90(v13);
        v21 = v14;
        v15 = sub_2977FB720(&v20);
        sub_2978AB644(*v15, v22, a2);
        break;
      case 0:
        v8 = sub_2977FB720(a1 + 456);
        v9 = sub_2977FB7B8(v8);
        v20 = sub_2978D7E90(v9);
        v21 = v10;
        v11 = sub_2977FB720(&v20);
        sub_2978A4A80(*v11, v22);
        break;
    }
  }

  sub_29781F160(v22);
  return a1 + 600;
}

uint64_t sub_2978D7EC0(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v61);
  v4 = sub_297801F64(a2, "Node: ");
  v5 = sub_2978D74AC(a1);
  v6 = sub_297801FA0(v4, v5);
  sub_297801F64(v6, "\n");
  v7 = sub_2978D6674(a1);
  if (v7)
  {
    v9 = v7;
    if (sub_2978D66EC(v7))
    {
      sub_297801F64(a2, "  <coordinate transform>\n");
    }

    if (sub_2978D6914(v9))
    {
      sub_297801F64(a2, "  <sample with transform>\n");
    }

    v10 = sub_297801F64(a2, "  original source: ");
    v11 = sub_297805510(v9);
    v12 = sub_297801F64(v10, v11);
    sub_297801F64(v12, "\n");
    if (sub_29783CFFC(v9))
    {
      sub_297801F64(a2, "  printed AST: ");
      v13 = sub_29783CFFC(v9);
      sub_297885CA4(v13, a2);
    }

    sub_297801F64(a2, "  children:");
    sub_2978D8314(v9, v60);
    sub_2978D836C(v9, v59);
    while (sub_2978D6840(v60, v59))
    {
      v14 = sub_2978D83F0(v60);
      v15 = sub_297801F64(a2, " ");
      v16 = sub_2978D74AC(v14);
      sub_297801FA0(v15, v16);
      sub_2978D8434(v60, v17);
    }

    v18 = "\n";
    goto LABEL_11;
  }

  v20 = sub_2978D6BB8(a1, v8);
  if (v20)
  {
    v22 = v20;
    v23 = sub_297801F64(a2, "  sampler: ");
    v24 = sub_2978D6A30(v22);
LABEL_16:
    v26 = sub_297801FA0(v23, v24);
    sub_297801F64(v26, "\n");
    sub_297801F64(a2, "  printed: ");
    v27 = sub_2977FB720(v22);
    sub_297885CA4(v27, a2);
    v19 = a2;
LABEL_17:
    v18 = "\n";
    goto LABEL_18;
  }

  v25 = sub_2978D6C00(a1, v21);
  if (v25)
  {
    v22 = v25;
    v23 = sub_297801F64(a2, "  image: ");
    v24 = sub_2978D6A30(v22);
    goto LABEL_16;
  }

  v34 = sub_2978D69F4(a1);
  if (v34)
  {
    v36 = v34;
    v37 = sub_297801F64(a2, "  constant: ");
    v38 = sub_2978D6A30(v36);
    v39 = sub_297801FA0(v37, v38);
    sub_297801F64(v39, "\n");
    v40 = sub_297801F64(a2, "  value: ");
    v41 = sub_29780C788(v36);
    v19 = sub_297801FA8(v40, v41, v42);
    goto LABEL_17;
  }

  v43 = sub_2978D6AB4(a1, v35);
  if (v43)
  {
    v45 = v43;
    if (sub_2978D66EC(v43))
    {
      sub_297801F64(a2, "  <transform>\n");
    }

    v46 = sub_297801F64(a2, "  uniform: ");
    v47 = sub_2978D6A30(v45);
    v19 = sub_297801FA0(v46, v47);
    v18 = "\n";
    goto LABEL_18;
  }

  v48 = sub_2978D76E4(a1, v44);
  if (!v48)
  {
    v60[0] = a1;
    sub_2978D76E0(v60, v49);
    v18 = "  position use <_dc>\n";
LABEL_11:
    v19 = a2;
LABEL_18:
    sub_297801F64(v19, v18);
    goto LABEL_19;
  }

  v50 = v48;
  v51 = sub_297801F64(a2, "  new position: ");
  v52 = sub_2977FD5B0(v50);
  v53 = sub_2978D74AC(v52);
  v54 = sub_297801FA0(v51, v53);
  sub_297801F64(v54, "\n");
  v55 = sub_297801F64(a2, "  continuation: ");
  v56 = sub_29783CFFC(v50);
  v57 = sub_2978D74AC(v56);
  v58 = sub_297801FA0(v55, v57);
  sub_297801F64(v58, "\n");
  v60[0] = sub_29783CFFC(v50);
  sub_2978040A4(v61, v60);
LABEL_19:
  sub_297801F64(a2, "End Filter Node\n\n");
  v28 = sub_2977FB720(v61);
  v29 = sub_2977FB7B8(v61);
  if (v28 != v29)
  {
    v30 = v29;
    do
    {
      v31 = *v28++;
      sub_2978D7C90(v31);
    }

    while (v28 != v30);
  }

  result = sub_2977FD134(v61);
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978D8314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2978D66F8(a1, &v6);
  v3 = v6;
  v4 = sub_297803A7C(&v7);
  return sub_2978D8698(a2, v3, v4);
}

void *sub_2978D836C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2978D6674(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_297806460(v4);
    v7 = sub_2978D86D0(v6);

    return sub_2978D86D4(a2, v5, v7);
  }

  else
  {

    return sub_2978D84DC(a2, a1);
  }
}

uint64_t sub_2978D83F0(uint64_t a1)
{
  if (sub_29783E2B8((a1 + 8)))
  {
    v3 = j_j_nullsub_1(a1 + 8, v2);
  }

  else
  {
    v3 = sub_29783DA74((a1 + 8), v2);
  }

  return *v3;
}

uint64_t *sub_2978D8434(uint64_t *a1, uint64_t a2)
{
  if (!sub_2978642A0(a1 + 1, a2))
  {
    if (sub_2978D6674(*a1))
    {
      v5 = sub_29783DA74(a1 + 1, v3) + 8;
      sub_29786033C(a1 + 1, &v5);
    }

    else
    {
      sub_2978B47C8(&v5);
      a1[1] = v5;
    }
  }

  return a1;
}

uint64_t sub_2978D84A8(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  sub_297829180((a1 + 8));
  return a1;
}

void *sub_2978D84E0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978B4BA4((a1 + 1), a3);
  return a1;
}

void *sub_2978D8510(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978B4BA0((a1 + 1), a3);
  return a1;
}

void *sub_2978D8540(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2978B47C8(a1 + 1);
  return a1;
}

uint64_t sub_2978D857C(uint64_t a1)
{
  if (a1)
  {
    return sub_29781BF50(a1);
  }

  return a1;
}

_DWORD *sub_2978D85B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2978D74F0(a1, a2, a3);

  return sub_2978D85F4(a1, v4);
}

uint64_t sub_2978D8608(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v5 = sub_2978BC760(*a1, *(a1 + 8), a4, a2, a3);

  return sub_2978D8574(a1, v5);
}

uint64_t sub_2978D865C(uint64_t a1)
{
  sub_297829360(a1 + 96);

  return sub_2978A5110(a1);
}

void *sub_2978D869C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = sub_2978B7290(a3);
  return a1;
}

void *sub_2978D86D8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978D8708(a1 + 1, a3);
  return a1;
}

uint64_t sub_2978D870C(uint64_t a1, uint64_t a2)
{
  v3 = j_nullsub_1(a2, a2);

  return sub_29785B820(a1, v3, 1);
}

uint64_t *sub_2978D87E8(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978D8800(result, v3);
  }

  return result;
}

uint64_t sub_2978D8800(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t sub_2978D8830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = nullsub_1(a1, a2);

  return sub_2978D8878(a3, v5, a2);
}

uint64_t *sub_2978D887C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v5 = sub_2977FE390(a1, a3);
  sub_297809B88(v5 + 1);
  if (sub_2978D8904(a1, 0, a2))
  {
    sub_2978D8924(v7, a2);
    sub_2978D8914(&v9, v7, v8);
    sub_2978D8910(a1 + 1, v8);
    sub_2978D8928(a1);
  }

  return a1;
}

BOOL sub_2978D8928(uint64_t *a1)
{
  v2 = sub_297829740((a1 + 1));
  v3 = sub_297829740((a1 + 1));
  sub_2978D8DE8(v10, *v3);
  for (result = sub_2978D6840((v2 + 8), v10); result; result = sub_2978D6840((v7 + 8), v10))
  {
    v5 = sub_297829740((a1 + 1));
    sub_2978D8DEC((v5 + 8), v10);
    v11 = sub_2978D685C(v10);
    v6 = sub_297829740((a1 + 1));
    if (sub_2978D8904(a1, *v6, v11))
    {
      sub_2978D8924(v9, v11);
      sub_2978D8914(&v11, v9, v10);
      sub_2978D8910(a1 + 1, v10);
    }

    v7 = sub_297829740((a1 + 1));
    v8 = sub_297829740((a1 + 1));
    sub_2978D8DE8(v10, *v8);
  }

  return result;
}

uint64_t sub_2978D8A18(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978D8AC0(a1, a2);
  }

  else
  {
    sub_2978D8A58(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978D8A58(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_2978D8B64(a1, v5, a2);
  v8 += 24;
  return sub_297809E88(v7);
}

uint64_t sub_2978D8AC0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297809AF0(a1);
  v5 = sub_297809EBC(a1, v4 + 1);
  v6 = sub_297809AF0(a1);
  sub_297809F34(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_2978D8B64(a1, v8, a2);
  v12 += 24;
  sub_2978D8BB8(a1, v11);
  v9 = a1[1];
  sub_29782BB0C(v11);
  return v9;
}

void *sub_2978D8B78(void *a1, void *a2)
{
  *a1 = *a2;
  sub_2978D8BA8(a1 + 1, a2 + 1);
  return a1;
}

void *sub_2978D8BAC(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  return result;
}

uint64_t sub_2978D8BB8(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_2978D8C9C(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_297809AF0(a1);

  return nullsub_1(a1, v11);
}

uint64_t sub_2978D8C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    v9 = a2;
    do
    {
      v10 = nullsub_1(v8, v7);
      sub_2978D8B64(a1, v10, v9);
      v9 += 24;
      v8 = v16 + 24;
      v16 += 24;
    }

    while (v9 != a3);
  }

  sub_29780CE64(&v14);
  sub_2978D8D54(a1, a2, a3);
  return j_nullsub_1(&v14, v11);
}

uint64_t sub_2978D8D54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = nullsub_1(v4, a2);
      result = j_nullsub_1(v5, v6);
      v4 += 24;
    }

    while (v4 != a3);
  }

  return result;
}

void *sub_2978D8DB4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_2978D8BA8(a1 + 1, a3);
  return a1;
}

uint64_t *sub_2978D8DEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2978D8BA8(a2, a1);

  return sub_2978D68A0(a1, v3);
}

void *sub_2978D8E30(void *a1, void *a2)
{
  v4 = sub_29780A32C(a1, a2);
  sub_2978D8E68(v4 + 1, a2 + 1);
  return a1;
}

uint64_t *sub_2978D8E6C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  nullsub_1(a2, a2);
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_297809AF0(a2);
  sub_2978D8ECC(a1, v4, v5, v6);
  return a1;
}

uint64_t sub_2978D8ECC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2977FDEF4(&v10, a1);
  sub_29780CD8C(v10, &v11);
  if (a4)
  {
    sub_297855EB4(a1, a4);
    sub_2978D8F54(a1, a2, a3, a4);
  }

  sub_29780CE64(&v11);
  return j_nullsub_1(&v11, v8);
}

uint64_t sub_2978D8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297809E80(v8, a1, a4);
  v9 = sub_2978D8FBC(a1, a2, a3, v9);
  return sub_297809E88(v8);
}

uint64_t sub_2978D8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2977FD8FC(a2, a3);
  v8 = v7;
  v9 = j_j_nullsub_1(a4, v7);
  v10 = sub_2978D9030(a1, v6, v8, v9);

  return sub_2977FD98C(a4, v10);
}

uint64_t sub_2978D9030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    do
    {
      v9 = nullsub_1(v8, v7);
      sub_2978D8B64(a1, v9, a2);
      a2 += 24;
      v8 = v16 + 24;
      v16 += 24;
    }

    while (a2 != a3);
  }

  sub_29780CE64(&v14);
  v10 = v16;
  j_nullsub_1(&v14, v11);
  return v10;
}

void *sub_2978D90E8(void *a1, uint64_t a2)
{
  v3 = sub_2977FE390(a1, a2);
  sub_297809B88(v3 + 1);
  return a1;
}

uint64_t sub_2978D9124(void *a1, void *a2)
{
  v4 = sub_297809AF0(a1);
  if (v4 != sub_297809AF0(a2))
  {
    return 0;
  }

  v6 = sub_29780A294(a1, v5);
  v8 = sub_297809B0C(a1, v7);
  v10 = sub_29780A294(a2, v9);

  return sub_2978D91B8(v6, v8, v10);
}

BOOL sub_2978D91BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29780C8A4(a1);
  v6 = sub_29780C8A4(a2);
  v7 = sub_29780C8A4(a3);
  return sub_2978D9220(v5, v6, v7, &v9);
}

BOOL sub_2978D9220(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1;
  do
  {
    result = sub_2978D928C(a4, v7, a3);
    if (!result)
    {
      break;
    }

    v7 += 3;
    a3 += 3;
  }

  while (v7 != a2);
  return result;
}

BOOL sub_2978D92E0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = a1;
  v2 = sub_297803A7C(&v5);
  return v2 == sub_297803A7C(&v4);
}

uint64_t sub_2978D933C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = sub_2978D93C0();
  sub_29784CE50(&v7, &v9);
  sub_29788B48C(v8, v4, &v7);
  v5 = sub_2977FB720(v8);
  sub_2978D93C4(v5, a2);
  *(a1 + 24) = sub_2978058AC(v8);
  sub_29788B490(v8);
  return a1;
}

void *sub_2978D93C8(void *a1, __n128 *a2)
{
  v4 = sub_2978D9418(a1);
  *v4 = &unk_2A1E57E50;
  sub_29789EEE0((v4 + 1), a2);
  return a1;
}

void sub_2978D943C()
{
  v0 = j_j_nullsub_1_124();

  j__free(v0);
}

uint64_t sub_2978D9464(uint64_t a1)
{
  v2 = sub_2978D93C0();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_2978D93C4(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_2978D9514(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  sub_2978040A4(*a1, &v19);
  sub_297806EC8(v18);
  v3 = sub_2978BE260(*(a1 + 8));
  v15[0] = sub_297828314(v19);
  v15[1] = v4;
  sub_2978036E8(v16, v15);
  v13[0] = sub_297828314(v19);
  v13[1] = v5;
  sub_2977FB7B4(v17, "_");
  if (sub_297807C54(v13, v17[0], v17[1]))
  {
    sub_2978036E0(v14, &byte_2978FC3E5);
  }

  else
  {
    sub_2978036E0(v12, "_");
    v6 = sub_2978D74AC(**(a1 + 16));
    sub_2978B5D7C(v11, v6);
    sub_297807128(v12, v11, v14);
  }

  sub_297807128(v16, v14, v17);
  v7 = sub_297812A04(v17, v18);
  v9 = sub_297828D2C(v3, v7, v8);
  sub_297801F60(v18);
  return v9;
}

uint64_t sub_2978D9644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2978D98F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = nullsub_1(*a1, a2);

  return sub_2978D9930(a3, v4);
}

uint64_t sub_2978D9934(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978B78F8(a1);
  sub_297809B88((v4 + 96));
  sub_2978B7978(a1, a2);
  sub_2978BD8A0(v7, a2, 0);
  sub_2978D8924(v6, a2);
  sub_2978D8914(v7, v6, v8);
  sub_2978D8910(a1 + 96, v8);
  return a1;
}

uint64_t sub_2978D99C0(uint64_t a1)
{
  v2 = sub_2978B78F8(a1);
  sub_297809B88((v2 + 96));
  return a1;
}

uint64_t sub_2978D99FC(void *a1, void *a2)
{
  v4 = sub_297809AF0(a1);
  if (v4 != sub_297809AF0(a2))
  {
    return 0;
  }

  v6 = sub_29780A294(a1, v5);
  v8 = sub_297809B0C(a1, v7);
  v10 = sub_29780A294(a2, v9);

  return sub_2978D9A90(v6, v8, v10);
}

BOOL sub_2978D9A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29780C8A4(a1);
  v6 = sub_29780C8A4(a2);
  v7 = sub_29780C8A4(a3);
  return sub_2978D9AF8(v5, v6, v7, &v9);
}

BOOL sub_2978D9AF8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1;
  do
  {
    result = sub_2978D9B64(a4, v7, a3);
    if (!result)
    {
      break;
    }

    v7 += 3;
    a3 += 3;
  }

  while (v7 != a2);
  return result;
}

BOOL sub_2978D9B70(void *a1, void *a2)
{
  result = sub_297815520(a1, a2);
  if (result)
  {

    return sub_2978D92BC(a1 + 1, a2 + 1);
  }

  return result;
}

uint64_t sub_2978D9BC0(uint64_t a1)
{
  while (1)
  {
    v2 = sub_297829740(a1 + 96);
    v4 = sub_29783D408(v2, v3);
    if (!sub_2978BA7DC(v2))
    {
      sub_2978D8924(v10, v4);
      sub_2978D8BAC(v2 + 1, v10);
      sub_2978C6E50(v2, 1u);
    }

    sub_2978D8DE8(v10, v4);
    if (sub_2978D6840(v2 + 1, v10))
    {
      break;
    }

LABEL_7:
    sub_2978D9324((a1 + 96));
    result = sub_297806904((a1 + 96));
    if (result)
    {
      return result;
    }
  }

  while (1)
  {
    sub_2978D8DEC(v2 + 1, v10);
    v5 = sub_2978D685C(v10);
    if (v5)
    {
      v6 = v5;
      if (!sub_2978B7944(a1, v5))
      {
        break;
      }
    }

    sub_2978D8DE8(v10, v4);
    if (!sub_2978D6840(v2 + 1, v10))
    {
      goto LABEL_7;
    }
  }

  sub_2978B7978(a1, v6);
  sub_2978BD8A0(v9, v6, 0);
  sub_2978D8924(v8, v6);
  sub_2978D8914(v9, v8, v10);
  return sub_2978D8910(a1 + 96, v10);
}

uint64_t sub_2978D9CF8(uint64_t a1)
{
  v1 = sub_297829740(a1 + 96);

  return sub_29783D408(v1, v2);
}

uint64_t fosl_filter_kernelpool_createPool()
{
  v0 = sub_2977FA198(408);

  return sub_2978D9D58(v0);
}

uint64_t fosl_filter_kernelpool_hasError(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_29786AC48(v1);
}

uint64_t fosl_filter_kernelpool_addLibrary(uint64_t a1, char *a2)
{
  v3 = sub_297829064(a1);
  sub_2977FB7B4(v5, a2);
  return sub_2978DCDC8(v3, v5[0], v5[1]);
}

uint64_t fosl_filter_kernelpool_addString(uint64_t a1, char *a2)
{
  v3 = sub_297829064(a1);
  sub_2977FB7B4(v5, a2);
  return sub_2978DC3A4(v3, v5[0], v5[1]);
}

void fosl_filter_kernelpool_destroyPool(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2978D9E44();

    j__free(v1);
  }
}

uint64_t fosl_filter_kernelpool_getNumKernels(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_2978D9E70(v1);
}

uint64_t fosl_filter_kernelpool_getNumDiagnostics(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_2978DCF34(v1);
}

uint64_t fosl_filter_kernelpool_lookupKernel(uint64_t a1, char *a2)
{
  v3 = sub_297829064(a1);
  sub_2977FB7B4(v5, a2);
  return sub_2978D9EE4(v3, v5[0], v5[1]);
}

uint64_t fosl_filter_kernelpool_getKernelByIdx(uint64_t a1, unsigned int a2)
{
  v3 = sub_297829064(a1);

  return sub_2978D9F3C(v3, a2);
}

_DWORD *fosl_filter_kernelpool_getDiagnosticByIdx(uint64_t a1, unsigned int a2)
{
  v3 = sub_297829064(a1);

  return sub_2978DCF80(v3, a2);
}

uint64_t fosl_filter_kernelpool_getKernelReturnType(uint64_t a1)
{
  v5 = sub_2978735BC(*(a1 + 8));
  v1 = sub_2977FB720(&v5);
  v2 = sub_297888658(v1);
  v3 = sub_29788862C(v2);
  return sub_2978D9FE4(v3);
}

uint64_t fosl_filter_kernelpool_getKernelDimensionality(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 2) & 7) == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (((v1 >> 2) & 7) != 0)
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

uint64_t fosl_filter_kernelpool_getParamName(uint64_t a1, unsigned int a2)
{
  v2 = sub_2978DA074((a1 + 48), a2);

  return sub_2977FB720(v2);
}

uint64_t fosl_filter_kernelpool_getParamType(uint64_t a1, unsigned int a2)
{
  v3 = *(sub_2978DA074((a1 + 48), a2) + 16);
  v4 = (v3 >> 7) & 3;
  if (v4)
  {
    v5 = sub_2978DA0F4(v4);
  }

  else
  {
    v5 = sub_2978D9FE4(v3 & 0x7F);
  }

  v6 = v5;
  v7 = sub_29786E230(*(a1 + 8));
  if (v6 == 10)
  {
    v8 = 9;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 26)
  {
    v8 = 25;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t fosl_filter_kernelpool_getAttributeKeyword(uint64_t a1, unsigned int a2)
{
  v2 = sub_2978BA9D0((a1 + 120), a2);
  v5[0] = sub_297815F90(*v2);
  v5[1] = v3;
  return sub_2977FB720(v5);
}

uint64_t fosl_filter_kernelpool_getAttributeParameters(uint64_t a1, unsigned int a2)
{
  v2 = *sub_2978BA9D0((a1 + 120), a2);

  return sub_297805510(v2);
}

BOOL fosl_filter_kernelpool_hasAttributeParameters(uint64_t a1, unsigned int a2)
{
  v2 = *sub_2978BA9D0((a1 + 120), a2);

  return sub_297888B50(v2);
}

uint64_t fosl_filter_createGraph()
{
  v0 = sub_2977FA198(24);

  return sub_2978DA1E8(v0);
}

void fosl_filter_destroyGraph(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2978DA21C();

    j__free(v1);
  }
}

void *fosl_filter_assignRoot(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2977FE390(v3, a2);
}

uint64_t fosl_filter_addLibraryFunction(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA290(v3, a2);
}

void *fosl_filter_addChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29781BF50(a2);
  v6 = sub_2978D65BC(a1);

  return sub_2978DA314(v6, v5, a3);
}

uint64_t fosl_filter_createKernel(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA368(v3, a2, 0, 0);
}

uint64_t sub_2978DA368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29780406C(a1 + 176);
  v9 = sub_2978DB264((a1 + 40), v8, a2, a3, a4);
  v11 = v9;
  sub_2978040A4(a1 + 176, &v11);
  return v9;
}

uint64_t fosl_filter_createSampler(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2978D65BC(a1);
  v6 = sub_2978DA4A0(a3);

  return sub_2978DA434(v5, a2, v6);
}

uint64_t sub_2978DA434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780406C(a1 + 176);
  v7 = sub_2978DB398((a1 + 40), v6, a2, a3);
  v9 = v7;
  sub_2978040A4(a1 + 176, &v9);
  return v7;
}

uint64_t fosl_filter_createImage(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2978D65BC(a1);
  v6 = sub_2978DA4A0(a3);

  return sub_2978DA504(v5, a2, v6);
}

uint64_t sub_2978DA504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780406C(a1 + 176);
  v7 = sub_2978DB464((a1 + 40), v6, a2, a3);
  v9 = v7;
  sub_2978040A4(a1 + 176, &v9);
  return v7;
}

uint64_t fosl_filter_createConstant(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2978D65BC(a1);
  v8 = sub_2978DA644(a3);

  return sub_2978DA5D0(v7, a2, v8, a4);
}

uint64_t sub_2978DA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29780406C(a1 + 176);
  v9 = sub_2978DB530((a1 + 40), v8, a2, a3, a4);
  v11 = v9;
  sub_2978040A4(a1 + 176, &v11);
  return v9;
}

uint64_t sub_2978DA644(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 3;
  }

  else
  {
    return dword_2978FC334[a1 - 1];
  }
}

uint64_t fosl_filter_createUniform(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2978D65BC(a1);
  v6 = sub_2978DA644(a3);

  return sub_2978DA6C0(v5, a2, v6);
}

uint64_t sub_2978DA6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780406C(a1 + 176);
  v7 = sub_2978DB618((a1 + 40), v6, a2, a3, 0);
  v9 = v7;
  sub_2978040A4(a1 + 176, &v9);
  return v7;
}

uint64_t fosl_filter_createTransformMatrix(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA768(v3, a2);
}

uint64_t sub_2978DA768(uint64_t a1, uint64_t a2)
{
  v4 = sub_29780406C(a1 + 176);
  v5 = sub_2978DB618((a1 + 40), v4, a2, 24, 1);
  v7 = v5;
  sub_2978040A4(a1 + 176, &v7);
  return v5;
}

uint64_t fosl_filter_createPositionUpdate(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978DA7F4(v1);
}

uint64_t sub_2978DA7F4(uint64_t a1)
{
  v2 = sub_29780406C(a1 + 176);
  v3 = sub_2978DB6F8((a1 + 40), v2);
  v5 = v3;
  sub_2978040A4(a1 + 176, &v5);
  return v3;
}

uint64_t fosl_filter_createUsePosition(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978DA870(v1);
}

uint64_t sub_2978DA870(uint64_t a1)
{
  v2 = sub_29780406C(a1 + 176);
  v3 = sub_2978DB748((a1 + 40), v2);
  v5 = v3;
  sub_2978040A4(a1 + 176, &v5);
  return v3;
}

uint64_t fosl_filter_createSampleTransform(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA368(v3, a2, 0, 1);
}

uint64_t fosl_filter_createCoordinateTransform(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA368(v3, a2, 1, 0);
}

uint64_t fosl_filter_setPositionUpdatePosition(uint64_t a1, uint64_t a2)
{
  v3 = sub_29781BF50(a2);
  v4 = sub_29781BF50(a1);

  return sub_29781A230(v4, v3);
}

uint64_t fosl_filter_setPositionUpdateContinuation(uint64_t a1, uint64_t a2)
{
  v3 = sub_29781BF50(a1);

  return sub_29785BC50(v3, a2);
}

uint64_t fosl_filter_setSamplerNeedsSRGBToLinear(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978DA9EC(v1);
}

uint64_t fosl_filter_setSamplerSwizzleMask(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DAA30(v3, a2);
}

uint64_t fosl_filter_setSamplerSwizzleMacro(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DAA70(v3, a2);
}

void fosl_filter_setMainEntryPointName(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  sub_2978DAAB0(v3, a2);
}

void sub_2978DAAB0(uint64_t a1, uint64_t a2)
{
  sub_297804638(&v3, a2);
  sub_2978046C4(a1 + 576, &v3);
  std::string::~string(&v3);
}

uint64_t fosl_filter_parseNodesInGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D6C94(v1);
}

BOOL fosl_filter_synthesizeMainInGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D7838(v1, 0, 0);
}

BOOL fosl_filter_synthesizeMainInGraphOfType(uint64_t a1, int a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978D7838(v3, a2, 0);
}

BOOL fosl_filter_synthesizeMainInGraphOfTypeWithOptions(uint64_t a1, int a2, int a3)
{
  v5 = sub_2978D65BC(a1);

  return sub_2978D7838(v5, a2, a3);
}

uint64_t fosl_filter_dumpGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D7B94(v1);
}

void **fosl_filter_printGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D7CF8(v1);
}

uint64_t fosl_filter_getStringForGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);
  v2 = sub_2978D7D74(v1, 0);

  return sub_2978037C8(v2);
}

uint64_t fosl_filter_getStringForGraphWithOptions(uint64_t a1, int a2)
{
  v3 = sub_2978D65BC(a1);
  v4 = sub_2978D7D74(v3, a2);

  return sub_2978037C8(v4);
}

void *sub_2978DAC84(void *a1)
{
  v2 = sub_2977FA198(936);
  sub_297883D24(v2);
  sub_2977FDEF4(a1, v2);
  v3 = sub_29781F06C();
  sub_2978F0254(v3, 1, a1 + 1);
  v4 = sub_2977FB720(a1);
  v5 = sub_2977FB720((a1 + 1));
  sub_2978EF4A0(v4, v5, 0, v8);
  sub_2978DAD2C(a1 + 2, v8);
  sub_2978D5CE4(v8);
  v6 = sub_2977FB720((a1 + 2));
  sub_2978DC2E8(a1 + 3, v6);
  return a1;
}

uint64_t sub_2978DAD30(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_2978058AC(a2);
  v5 = nullsub_1(a2, v4);

  return j_nullsub_1(a1, v5);
}

uint64_t sub_2978DAD80(uint64_t a1)
{
  sub_2978DC3A0(a1 + 24);
  sub_2978D5CE4(a1 + 16);
  sub_2978DADCC(a1 + 8);

  return sub_2978DADD0(a1);
}

void sub_2978DAE00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978DAE18(a1, v3);
  }
}

void sub_2978DAE18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297829370(a2);

    j__free(v2);
  }
}

void sub_2978DAE78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978DAE90(a1, v3);
  }
}

void sub_2978DAE90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297883DC8(a2);

    j__free(v2);
  }
}

uint64_t sub_2978DAEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2978DAF08(a1, a2, a3);

  return sub_297819E7C(v3);
}

uint64_t sub_2978DAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29781C134(v11, &v10, v7);
  v8 = sub_2978DAF6C(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_2978DAF6C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29780ED7C(a1, *a2, a2[1]);
  v5 = *a1;
  v6 = v4;
  v7 = *(*a1 + 8 * v4);
  if (v7)
  {
    if (v7 != sub_2978027E4())
    {
      sub_29781C144(v11, *a1 + 8 * v6, 0);
      v10 = 0;
      return sub_29780EB40(v11, &v10);
    }

    v7 = *(v5 + 8 * v6);
  }

  if (v7 == sub_2978027E4())
  {
    --*(a1 + 16);
  }

  *(v5 + 8 * v6) = sub_297828FD0(*a2, a2[1], *(a1 + 24), a2[2]);
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

void *sub_2978DB060(void *a1)
{
  v2 = sub_2977FA198(936);
  sub_297883D24(v2);
  sub_2977FDEF4(a1, v2);
  v3 = sub_29781F06C();
  sub_2978F0254(v3, 0, a1 + 1);
  v4 = sub_2977FA198(640);
  v5 = sub_2977FB720(a1);
  v6 = sub_2977FB720((a1 + 1));
  sub_2978D5CE8(v4, v5, v6);
  sub_2977FDEF4(a1 + 2, v4);
  return a1;
}

uint64_t sub_2978DB0F4(uint64_t a1)
{
  sub_2978DB138(a1 + 16);
  sub_2978DADCC(a1 + 8);

  return sub_2978DADD0(a1);
}

void sub_2978DB168(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978DB180(a1, v3);
  }
}

void sub_2978DB180(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978DB1B4(a2);

    j__free(v2);
  }
}

std::string *sub_2978DB1B8(std::string *a1)
{
  std::string::~string(a1 + 25);
  std::string::~string(a1 + 24);
  sub_2977FD134(&a1[19].__r_.__value_.__r.__words[1]);
  sub_2978D5CE4(&a1[19]);
  sub_2977FD134(&a1[7].__r_.__value_.__r.__words[1]);
  sub_297818154(&a1[1].__r_.__value_.__r.__words[2]);
  sub_29783D790(&a1->__r_.__value_.__r.__words[2]);
  return a1;
}

void *sub_2978DB214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2978D66EC(a1);

  return sub_2978BCC60((a1 + 16), a2, a3);
}

uint64_t sub_2978DB264(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297869208(0x28uLL, a1);

  return sub_2978DB2C4(v9, a2, a3, a4, a5);
}

uint64_t sub_2978DB2C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_2978DB344(a1, 0, a2);
  sub_2978B47C0(v9 + 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  if (a4)
  {
    v10 = 0x1000000;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 8) = v11 | v10 | *(a1 + 8) & 0xFCFFFFFF;
  return a1;
}

void *sub_2978DB344(void *a1, char a2, uint64_t a3)
{
  v3 = a3;
  *a1 = 0;
  nullsub_1(a1, a3);
  a1[1] = 0;
  *(a1 + 2) = a2 & 7 | (8 * (v3 & 0x3FFFF));
  return a1;
}

uint64_t sub_2978DB398(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_297869208(0x10uLL, a1);

  return sub_2978DB3F0(v7, a2, a3, a4);
}

void *sub_2978DB3F4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2978DB344(a1, 1, a2);
  nullsub_1(v7, a3);
  a1[1] = a1[1] & 0xFFFF0000FCFFFFFFLL | ((a4 & 3) << 24) | (a3 << 32);
  return a1;
}

uint64_t sub_2978DB464(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_297869208(0x10uLL, a1);

  return sub_2978DB4BC(v7, a2, a3, a4);
}

void *sub_2978DB4C0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2978DB344(a1, 2, a2);
  nullsub_1(v7, a3);
  a1[1] = a1[1] & 0xFFFF0000FCFFFFFFLL | ((a4 & 3) << 24) | (a3 << 32);
  return a1;
}

uint64_t sub_2978DB530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297869208(0x28uLL, a1);

  return sub_2978DB590(v9, a2, a3, a4, a5);
}

void *sub_2978DB594(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = sub_2978DB344(a1, 3, a2);
  sub_297804638(v9 + 2, a5);
  nullsub_1(a1, a3);
  a1[1] = a1[1] & 0xFFFF000080FFFFFFLL | ((a4 & 0x7F) << 24) | (a3 << 32);
  return a1;
}

uint64_t sub_2978DB618(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297869208(0x10uLL, a1);

  return sub_2978DB678(v9, a2, a3, a4, a5);
}

void *sub_2978DB67C(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_2978DB344(a1, 4, a2);
  nullsub_1(v9, a3);
  v10 = 0x1000000;
  if (!a5)
  {
    v10 = 0;
  }

  a1[1] = a1[1] & 0xFFFF000000FFFFFFLL | (a4 << 25) | (a3 << 32) | v10;
  return a1;
}

uint64_t sub_2978DB6F8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_297869208(0x20uLL, a1);

  return sub_2978DB738(v3, a2);
}

uint64_t sub_2978DB748(uint64_t *a1, uint64_t a2)
{
  v3 = sub_297869208(0x10uLL, a1);

  return sub_2978DB788(v3, a2);
}

_BYTE *sub_2978DB798(_BYTE *a1, uint64_t a2)
{
  v9[39] = *MEMORY[0x29EDCA608];
  *a1 = 1;
  sub_2978DB884((a1 + 8));
  sub_29788DFB8(v8, sub_2978DB888);
  sub_29788DFC4(v7, sub_2978DB890);
  sub_2978DB898(v6, a1);
  sub_29788DFCC(v9, v8, v7, v6);
  sub_2978854E4(v6);
  sub_2978854E8(v7);
  sub_2978854EC(v8);
  sub_29788DFE0(v9, a2);
  sub_29788541C(v9);
  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_2978DB8A0(_BYTE *a1, uint64_t a2)
{
  v4 = *sub_29788A818(a2 + 8, 0);
  v5 = *sub_29788A818(a2 + 8, 1u);
  v6 = sub_29788BFD0(v4);
  v7 = sub_2977FB7B8(v6);
  result = sub_29788F804(v5);
  if (!result)
  {
    *a1 = 0;
    return result;
  }

  v9 = result;
  v14 = v7;
  result = sub_29788A7AC(result);
  if (result == 2)
  {
    v11 = sub_29788A818(v9 + 8, 0);
    *a1 &= sub_2978DB99C(&v14, *v11);
    v12 = sub_29788A818(v9 + 8, 1u);
    result = sub_2978DB9D8(*v12);
  }

  else
  {
    if (result != 4)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v10 = sub_29788A818(v9 + 8, 0);
    result = sub_2978DB99C(&v14, *v10);
  }

  v13 = result & *a1;
LABEL_9:
  *a1 = v13;
  return result;
}

uint64_t sub_2978DB99C(void *a1, uint64_t a2)
{
  result = sub_29788BFD0(a2);
  if (result)
  {
    return sub_2977FB7B8(result) == *a1;
  }

  return result;
}

uint64_t sub_2978DB9D8(uint64_t a1)
{
  v2 = sub_29788C098(a1);
  if (v2)
  {
    v3 = sub_2977FD5B0(v2);
    v4 = sub_29788709C(v3);
    v6 = v5;
    sub_2977FB7B4(&v15, "destCoord");
    return sub_297804D28(v4, v6, v15, v16);
  }

  else
  {
    result = sub_29788BFD0(a1);
    if (result)
    {
      v8 = result;
      v15 = sub_2977FB7B8(result);
      if (sub_297899D98(&v15))
      {
        v9 = sub_2977FB7B8(v8);
        v10 = sub_29781BF50(v9);
        v11 = sub_29788709C(v10);
        v13 = v12;
        sub_2977FB7B4(&v15, "_dc");
        if (sub_297804D28(v11, v13, v15, v16))
        {
          return 1;
        }

        else
        {
          result = sub_29783CFFC(v10);
          if (result)
          {
            v14 = sub_29783CFFC(v10);
            return sub_2978DB9D8(v14);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_2978DBAD0(_BYTE *a1, uint64_t a2)
{
  v9[39] = *MEMORY[0x29EDCA608];
  *a1 = 1;
  sub_29788DFB8(v8, sub_2978DB888);
  sub_29788DFC4(v7, sub_2978DB890);
  sub_2978DBBB8(v6, a1);
  sub_29788DFCC(v9, v8, v7, v6);
  sub_2978854E4(v6);
  sub_2978854E8(v7);
  sub_2978854EC(v8);
  sub_29788DFE0(v9, a2);
  sub_29788541C(v9);
  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_2978DBBFC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978DBC1C();
  *(result + 24) = result;
  return result;
}

void *sub_2978DBC20(void *a1, void *a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E57EE0;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

void sub_2978DBC74()
{
  v0 = j_j_nullsub_1_125();

  j__free(v0);
}

uint64_t sub_2978DBC9C(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_2978DBC1C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_2978DBD44(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_29788F804(a2);
  if (v4 && (v5 = v4, sub_29788A7AC(v4) == 1))
  {
    sub_2978DB8A0(v3, v5);
    v6 = 0;
  }

  else
  {
    v7 = sub_29788BFD0(a2);
    if (v7)
    {
      v8 = sub_2977FB7B8(v7);
      v9 = sub_2978BB120(v8);
      if (v9)
      {
        v13 = sub_2977FD5B0(v9);
        v10 = sub_2977FB720(&v13);
        v11 = sub_297888638(v10);
        if (v11)
        {
          if (!sub_297888648(v11))
          {
            *v3 = 0;
          }
        }
      }
    }

    v6 = *v3;
  }

  return v6 & 1;
}

uint64_t sub_2978DBE1C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978DBE3C();
  *(result + 24) = result;
  return result;
}

void *sub_2978DBE40(void *a1, void *a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E57F28;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

void sub_2978DBE94()
{
  v0 = j_j_nullsub_1_126();

  j__free(v0);
}

uint64_t sub_2978DBEBC(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_2978DBE3C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_2978DBF64(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_29788BFD0(a2);
  if (v4)
  {
    v5 = sub_2977FB7B8(v4);
    v6 = sub_29788709C(v5);
    v8 = v7;
    sub_2977FB7B4(&v17, "_dc");
    if (sub_297804D28(v6, v8, v17, v18))
    {
      goto LABEL_7;
    }
  }

  if ((v9 = sub_29788C098(a2)) != 0 && (v10 = sub_2977FD5B0(v9), v11 = sub_29788709C(v10), v13 = v12, sub_2977FB7B4(&v17, "destCoord"), sub_297804D28(v11, v13, v17, v18)) || (v14 = sub_29788F804(a2)) != 0 && sub_29788A7AC(v14) == 4)
  {
LABEL_7:
    v15 = 0;
    *v3 = 0;
  }

  else
  {
    v15 = *v3;
  }

  return v15 & 1;
}

uint64_t fosl_filter_kernelpool_preservesAlpha_0(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_2978DC0E4(v4, *(a1 + 8));
  v1 = sub_29786AC48(v4);
  sub_2978DC0E8(v4);
  v2 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t sub_2978DC0EC(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a2;
  v5 = sub_2977FB720(&v12);
  v6 = sub_297888658(v5);
  if (v6)
  {
    v7 = sub_29788862C(v6);
    if (v7 == 8)
    {
      return 1;
    }

    if (v7 == 13 || v7 == 10)
    {
      return 2;
    }

    sub_2978DC194(a1, a3, 2332, v10);
    v9 = v10;
  }

  else
  {
    sub_2978DC194(a1, a3, 2332, v11);
    v9 = v11;
  }

  sub_29782963C(v9);
  return 0;
}

uint64_t sub_2978DC194@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_2978DCC68(a1);

  return sub_29782B128(v7, a2, a3, a4);
}

uint64_t sub_2978DC1E4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  sub_2978DC2E0(a1 + 8);
  sub_297817C28((a1 + 16));
  sub_2978DC2E4(a1 + 152, a1 + 16);
  sub_29788E120(a1 + 184);
  sub_2978DB884(a1 + 280);
  sub_2978BD904(a1 + 344, (a1 + 8), 0x10u);
  *(a1 + 368) = a2;
  sub_297829180((a1 + 376));
  sub_297829180(&v9);
  v4 = sub_2978D65BC(*(a1 + 368));
  sub_2978B6A00(v4);
  sub_2978D65C4(v8, v4);
  sub_2978D6F10(v8, 3, 3);
  sub_2977FB7B4(&v6, "_dc");
  sub_2978D6F88(v8, v6, v7, 8, 3, 0);
  sub_2977FB7B4(&v6, "p0");
  sub_2978D6F88(v8, v6, v7, 8, 3, 8);
  return a1;
}

uint64_t sub_2978DC2EC(uint64_t a1)
{
  sub_2978DC350(a1);
  v2 = sub_2978D65BC(*(a1 + 368));
  sub_2978B6D78(v2);
  j_nullsub_1(a1 + 344, v3);
  sub_29787B7C8(a1 + 280);
  sub_29787B7C8(a1 + 184);
  sub_2978DC39C(a1 + 152);
  sub_297818154(a1 + 16);
  sub_2978BD894((a1 + 8));
  return a1;
}

void *sub_2978DC350(uint64_t a1)
{
  sub_2978DF8D0(a1 + 152);
  sub_29783DB90(a1 + 184);
  sub_29783DB90(a1 + 280);

  return sub_297814D10((a1 + 344));
}

uint64_t sub_2978DC3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978D65C8(*(a1 + 368));
  v7 = sub_29781F408(v6);
  sub_2977FB7B4(v11, "kernel-pool");
  v8 = sub_297804A04(a2, a3, v11[0], v11[1]);
  sub_297829180(v11);
  v9 = sub_29787BEA0(v7, v8, 0, 0, 0, v11[0]);
  return sub_2978DC444(a1, v9);
}

uint64_t sub_2978DC444(uint64_t a1, unsigned int a2)
{
  v97 = *MEMORY[0x29EDCA608];
  *(a1 + 376) = a2;
  v4 = sub_29787CC6C(*(a1 + 368));
  v5 = sub_2978D65C8(*(a1 + 368));
  sub_297829180(&v92);
  sub_29787229C(v5, a2, 0, v92);
  v6 = sub_2978DCC68(a1);
  v7 = sub_2978D6920(v6);
  v8 = sub_2978D6928(*(a1 + 368));
  (*(*v7 + 24))(v7, v8, v5);
  sub_2978D6930(v4);
  if (!sub_2978CE708(v4))
  {
    while (1)
    {
      v13 = sub_297876C1C(v4);
      if (!sub_2978780CC(v13))
      {
        v14 = sub_297876C1C(v4);
        if (!sub_29784FF04(v14, 399))
        {
          break;
        }
      }

      if (!sub_2978C6F10(v4))
      {
        goto LABEL_8;
      }

LABEL_9:
      if (sub_2978CE708(v4))
      {
        goto LABEL_2;
      }
    }

    v15 = sub_297876C1C(v4);
    if (sub_29784FF04(v15, 79))
    {
      v16 = sub_2978C6F10(v4);
      if (v16)
      {
        v17 = v16;
        v18 = sub_2978862BC(v16);
        v19 = sub_2978862C0(v17);
        if (v18 == v19)
        {
          goto LABEL_9;
        }

        v20 = v19;
        while (1)
        {
          v89[0] = *v18;
          if ((sub_29788AE7C(v89) & 1) == 0)
          {
            break;
          }

          v21 = sub_29781BF50(v89[0]);
          sub_2978B7978(a1 + 280, v21);
          if (++v18 == v20)
          {
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
      v22 = sub_297876C1C(v4);
      v23 = sub_29784FF04(v22, 459);
      sub_2978DCC9C(v96);
      v24 = sub_2978C72F4(v4, v96);
      sub_2978D693C(v96);
      v91 = v24;
      if (!v24 || (sub_29788AB2C(&v91) & 1) == 0)
      {
        sub_29780CE64(a1);
        goto LABEL_2;
      }

      v25 = sub_29781BF50(v91);
      if (!v23)
      {
        sub_2978B7978(a1 + 184, v25);
        goto LABEL_9;
      }

      v26 = sub_297869208(0x90uLL, (a1 + 16));
      v90 = sub_2978DCCA0(v26, a1 + 8);
      *(v90 + 8) = v25;
      v27 = sub_2978735BC(v25);
      v28 = sub_297811C44(v25);
      v29 = sub_2978DC0EC(a1, v27, v28);
      *v90 = *v90 & 0xE3 | (4 * v29);
      v30 = sub_29788709C(v25);
      sub_2978CD79C(v89, (a1 + 16), v30, v31);
      v32 = sub_297887B14(v89);
      v33 = v90;
      *(v90 + 16) = v32;
      *(v33 + 24) = v34;
      if ((*v33 & 0x1C) != 0)
      {
        sub_29788E11C(v95);
        sub_29788E120(v89);
        v87[0] = a1;
        v87[1] = v89;
        v87[2] = &v93;
        v87[3] = v95;
        sub_2978DCCA4(&v93);
        sub_2978DCCA8(&v93);
        sub_2978DCCD0(&v93);
        sub_29787B7C8(v89);
        v35 = sub_2977FB720(v95);
        for (i = sub_2977FB7B8(v95); v35 != i; ++v35)
        {
          v37 = *v35;
          if (sub_2978B7944(a1 + 184, *v35))
          {
            v38 = v90;
            sub_2977FDEF4(v89, v37);
            sub_2978DCCD4((v38 + 72), v89, (a1 + 8));
          }
        }

        v89[0] = sub_297873448(a1 + 280);
        v89[1] = v39;
        v93.n128_u64[0] = sub_29787347C(a1 + 280);
        v93.n128_u64[1] = v40;
        while (sub_29781550C(v89, &v93))
        {
          v42 = sub_2978B6914(v89, v41);
          if (sub_2978B7944(a1 + 280, v42))
          {
            v43 = v90;
            sub_2977FDEF4(v87, v42);
            sub_2978DCCD4((v43 + 96), v87, (a1 + 8));
          }

          sub_2978734C0(v89);
        }

        v44 = sub_2978DCD2C(v25);
        v45 = sub_2977FB720(v44);
        v46 = sub_2977FB7B8(v44);
        while (v45 != v46)
        {
          v47 = *v45++;
          v48 = v90;
          sub_2977FDEF4(v89, v47);
          sub_2978DCCD4((v48 + 120), v89, (a1 + 8));
        }

        sub_2977FCF14();
        sub_29781F238(v88);
        sub_2978DB884(v87);
        v49 = v90;
        v50 = sub_2977FB720(v90 + 96);
        for (j = sub_2977FB7B8(v49 + 96); v50 != j; ++v50)
        {
          v52 = *v50;
          if (!sub_2978B7944(v87, *v50))
          {
            sub_297885CA4(v52, v88);
            sub_297801F64(v88, ";\n");
            sub_2978B7978(v87, v52);
          }
        }

        sub_2978DB884(v86);
        v53 = v90;
        v54 = sub_2977FB720(v90 + 72);
        for (k = sub_2977FB7B8(v53 + 72); v54 != k; ++v54)
        {
          v56 = *v54;
          if (!sub_2978B7944(v86, *v54))
          {
            sub_297885CA4(v56, v88);
            sub_2978B7978(v86, v56);
          }
        }

        v57 = sub_297803A7C((v25 + 16));
        v58 = sub_297888A34((v25 + 16));
        if (v57 == v58)
        {
          v72 = 3;
LABEL_52:
          v74 = *v90 & 0xFC | v72;
          if ((*v90 & 0x1C) == 4)
          {
            v74 = *v90 & 0xE4 | 2;
          }

          *v90 = v74;
          if ((*v90 & 3) == 1)
          {
            sub_2978DB89C(&v93, v25, v59);
            if (sub_29786AC48(&v93))
            {
              *v90 |= 3u;
              sub_2978DCDB8(v25);
            }

            sub_2978DCDC4(&v93);
          }

          sub_297885CA4(v25, v88);
          v75 = sub_29781F384(v88);
          sub_2978CD79C(&v93, (a1 + 16), v75, v76);
          v77 = sub_297887B14(&v93);
          v78 = v90;
          *(v90 + 32) = v77;
          *(v78 + 40) = v79;
          v80 = sub_29788709C(v91);
          *sub_2978DAEE0(a1 + 152, v80, v81) = v78;
          sub_2978BD83C((a1 + 344), &v90, (a1 + 8));
        }

        else
        {
          v60 = v58;
          v61 = 0;
          do
          {
            v62 = *v57;
            sub_2978DCD34(&v93);
            v63 = sub_29788709C(v62);
            sub_2978CD79C(&v85, (a1 + 16), v63, v64);
            v93.n128_u64[0] = sub_297887B14(&v85);
            v93.n128_u64[1] = v65;
            v85 = sub_2977FD5B0(v62);
            v66 = sub_2977FB720(&v85);
            v67 = sub_297888658(v66);
            if (!v67 || (v68 = v67, v69 = sub_29788862C(v67), (sub_2978DCD38(v69) & 1) == 0))
            {
              v73 = sub_297811C4C(v62);
              sub_2978DC194(a1, v73, 2359, v84);
              sub_29782963C(v84);
              sub_29780CE64(a1);
              if ((v61 & 1) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_49;
            }

            v70 = sub_29788862C(v68);
            v94 = v94 & 0xFF80 | v70 & 0x7F;
            v71 = sub_297888B60(v62);
            v94 = ((v71 & 3) << 7) | v94 & 0xFE7F;
            v59 = sub_2978DCD58((v90 + 48), &v93, (a1 + 8));
            v61 |= (v94 & 0x7Fu) - 41 < 2;
            ++v57;
          }

          while (v57 != v60);
          if ((v61 & 1) == 0)
          {
LABEL_46:
            v72 = 3;
            goto LABEL_52;
          }

LABEL_49:
          if ((*v90 & 0x1C) == 8)
          {
            v72 = 1;
            goto LABEL_52;
          }

          v82 = sub_297811C44(v25);
          sub_2978DC194(a1, v82, 2360, v83);
          sub_29782963C(v83);
          sub_29780CE64(a1);
        }

        sub_29787B7C8(v86);
        sub_29787B7C8(v87);
        sub_29781F290(v88);
        sub_2977FD134(v89);
        sub_2977FD134(v95);
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_29780CE64(a1);
    goto LABEL_9;
  }

LABEL_2:
  if (sub_29786AC48(a1))
  {
    sub_2978DC350(a1);
  }

  v9 = sub_2978DCC68(a1);
  v10 = sub_2978D6920(v9);
  result = (*(*v10 + 32))(v10);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978DCC68(uint64_t a1)
{
  v1 = sub_2978D65C8(*(a1 + 368));

  return sub_2977FD5B0(v1);
}

void *sub_2978DCCD4(void *result, void *a2, void *a3)
{
  v4 = result;
  v5 = result[1];
  if (v5 >= result[2])
  {
    result = sub_2978DFB58(result, a3, 1uLL);
    v5 = v4[1];
  }

  *v5 = *a2;
  v4[1] += 8;
  return result;
}

__n128 sub_2978DCD58(void *a1, __n128 *a2, void *a3)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    sub_2978DFA60(a1, a3, 1uLL);
    v5 = a1[1];
  }

  result = *a2;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  *v5 = result;
  a1[1] += 24;
  return result;
}

uint64_t sub_2978DCDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29787CC6C(*(a1 + 368));
  v7 = sub_2978D65C8(*(a1 + 368));
  v8 = sub_29781F408(v7);
  sub_2977FB7B4(v16, "kernel-pool");
  v9 = sub_297804A04(a2, a3, v16[0], v16[1]);
  sub_297829180(v16);
  LODWORD(v9) = sub_29787BEA0(v8, v9, 0, 0, 0, v16[0]);
  sub_297829180(v16);
  sub_29787229C(v7, v9, 0, v16[0]);
  v10 = sub_2978DCC68(a1);
  v11 = sub_2978D6920(v10);
  v12 = sub_2978D6928(*(a1 + 368));
  (*(*v11 + 24))(v11, v12, v7);
  sub_2978D6930(v6);
  while (!sub_2978CE708(v6))
  {
    sub_2978C6F10(v6);
  }

  v13 = sub_2978DCC68(a1);
  v14 = sub_2978D6920(v13);
  return (*(*v14 + 32))(v14);
}

uint64_t sub_2978DCF34(uint64_t a1)
{
  v1 = sub_2978EE93C(*(a1 + 368));
  v2 = sub_2978D6920(v1);

  return sub_2978DCF64(v2);
}

_DWORD *sub_2978DCF80(uint64_t a1, unsigned int a2)
{
  v4 = sub_2978EE93C(*(a1 + 368));
  v5 = sub_2978D6920(v4);
  v6 = sub_2978D65C8(*(a1 + 368));
  v7 = sub_29781F408(v6);
  sub_297809B88(v53);
  sub_297809B88(v52);
  sub_29780C6B8(v53);
  sub_29780CA0C(v52);
  v8 = sub_297805508(v5);
  sub_2978DD2DC(v53, v8);
  v9 = sub_2978483F4(v5);
  sub_2978DD358(v52, v9);
  if (sub_2978DCF64(v5) <= a2)
  {
    v11 = 0;
  }

  else
  {
    v49 = sub_2978DD3D4(v5, v10);
    v51 = sub_2978DD3DC(&v49, a2);
    v11 = malloc_type_malloc(0x38uLL, 0x1070040C582C436uLL);
    v12 = sub_29780BD00(v53);
    v14 = sub_2978297B4(&v51, v13);
    v15 = sub_2977FB720(v14 + 32);
    v16 = sub_2977FB7B8(v14 + 32);
    if (v15 != v16)
    {
      v17 = v16;
      do
      {
        v18 = sub_297850AD4(v15);
        LODWORD(v49) = sub_2978DD410(v7, v18);
        v19 = sub_2978478EC(v15);
        HIDWORD(v49) = sub_2978DD410(v7, v19);
        sub_2978DD40C(v53, &v49);
        v15 += 3;
      }

      while (v15 != v17);
    }

    v20 = sub_29780AAE8(v52);
    v22 = sub_2978297B4(&v51, v21);
    v23 = sub_2977FB720(v22 + 80);
    v24 = sub_2977FB7B8(v22 + 80);
    if (v23 != v24)
    {
      v26 = v24;
      do
      {
        v27 = sub_297850AD4(v23);
        v28 = sub_2978478EC(v23);
        if (sub_297850C04(v23))
        {
          v29 = sub_2978D6928(*(a1 + 368));
          v28 = sub_297850610(v28, 0, v7, v29);
        }

        v49 = 0;
        v50 = 0;
        LODWORD(v49) = sub_2978DD410(v7, v27);
        HIDWORD(v49) = sub_2978DD410(v7, v28);
        v50 = 0;
        v30 = v23 + 6;
        if (sub_29780347C((v23 + 6)))
        {
          sub_297856348(v23 + 3);
        }

        v50 = sub_2978037C8(v23 + 6);
        sub_29780BFD8(v52, &v49);
        v23 += 14;
      }

      while (v30 + 8 != v26);
    }

    v31 = sub_2978297B4(&v51, v25);
    v32 = sub_2978DD410(v7, *(v31 + 24));
    v34 = sub_2978297B4(&v51, v33);
    *v11 = sub_2978DD430(*(v34 + 216));
    v11[1] = sub_297841D38(v7, *(a1 + 376), v32, 0);
    v11[2] = sub_297841944(v7, *(a1 + 376), v32, 0);
    v36 = sub_2978297B4(&v51, v35);
    v11[3] = sub_2978DD410(v7, *(v36 + 24));
    v38 = sub_2978297B4(&v51, v37);
    *(v11 + 2) = sub_2978037C8(v38);
    v40 = sub_2978297B4(&v51, v39);
    v41 = sub_29782B90C(v40 + 32);
    v11[6] = v41;
    if (v41)
    {
      v43 = sub_2978297B4(v53, v42) + 8 * v12;
    }

    else
    {
      v43 = 0;
    }

    *(v11 + 4) = v43;
    v44 = sub_2978297B4(&v51, v42);
    v45 = sub_29782B950(v44 + 80);
    v11[10] = v45;
    if (v45)
    {
      v47 = sub_2978297B4(v52, v46) + 16 * v20;
    }

    else
    {
      v47 = 0;
    }

    *(v11 + 6) = v47;
  }

  sub_29780A9D8(v52);
  sub_29780C534(v53);
  return v11;
}

unint64_t sub_2978DD2DC(uint64_t *a1, unint64_t a2)
{
  result = sub_29780BD00(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 8 * a2;

      return sub_2978676A0(a1, v5);
    }
  }

  else
  {

    return sub_2978E01C4(a1, a2 - result);
  }

  return result;
}

unint64_t sub_2978DD358(uint64_t *a1, unint64_t a2)
{
  result = sub_29780AAE8(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 16 * a2;

      return sub_29780CB38(a1, v5);
    }
  }

  else
  {

    return sub_2978E0440(a1, a2 - result);
  }

  return result;
}

uint64_t sub_2978DD3DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_2978E05F8(&v3, a2);
  return v3;
}

uint64_t sub_2978DD444(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 4) = 0;
  sub_2978DD50C(a1 + 8);
  sub_2978DD510(v8, a1);
  sub_2978DD514(v7, a1);
  sub_2978DD518(v6, a1);
  sub_29788B2F8(a1 + 64, v8, v7, v6);
  sub_2978854E4(v6);
  sub_2978854E8(v7);
  sub_2978854EC(v8);
  sub_2978DD51C(a1, a2);
  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_2978DD51C(_BYTE *a1, uint64_t a2)
{
  v11 = sub_2978735BC(a2);
  v4 = sub_2977FB720(&v11);
  result = sub_2978B90E0(v4);
  if ((result & 1) == 0)
  {
    v6 = sub_297803A7C(a2 + 16);
    result = sub_297888A34(a2 + 16);
    if (v6 != result)
    {
      v7 = result;
      while (1)
      {
        v8 = *v6;
        v11 = sub_2977FD5B0(*v6);
        v9 = sub_2977FB720(&v11);
        result = sub_297888658(v9);
        if (result)
        {
          result = sub_29788862C(result);
          if (result == 10)
          {
            break;
          }
        }

        if (++v6 == v7)
        {
          return result;
        }
      }

      if (v8)
      {
        sub_2978DF794(&v11, 0, 0, 0, 1);
        sub_2978DD9C4((a1 + 8), v8, v11);
        *a1 = 1;
        v10 = sub_297888A68(a2);
        return sub_29788D71C(a1 + 64, v10);
      }
    }
  }

  return result;
}

uint64_t sub_2978DD618(uint64_t a1)
{
  v2 = sub_297885A8C(a1, 0);
  sub_29783DC08(v2 + 24, 0);
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2978DD6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_2978DD73C(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DD740(void *a1, void *a2)
{
  v4 = sub_29788B3A0(a1);
  *v4 = &unk_2A1E57F70;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

uint64_t sub_2978DD7A0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780C3B4(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_2978DD73C(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_2978DD854(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_2978DD73C(a2, v4, v6);
}

uint64_t sub_2978DD8B8(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

BOOL sub_2978DD944(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978B84F8(a2);
  v4 = v3;
  if (v3 && sub_29783CFFC(v3))
  {
    sub_29783CFFC(v4);
    sub_29788CF00(a1 + 64);
    v5 = sub_29783CFFC(v4);
    v6 = sub_2978DDA34(a1 + 8, v5);
    sub_2978DD9C4(a1 + 8, v4, v6);
  }

  return v4 == 0;
}

uint64_t *sub_2978DD9C4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3;
  v6 = a2;
  if (sub_2978DDA94(&v7) || sub_2978DDAA4(a1))
  {
    return sub_2978DDAC0(a1, a2);
  }

  result = sub_2978DDB08(a1, &v6);
  *result = v7;
  return result;
}

uint64_t sub_2978DDA34(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (sub_297896C10(a1 + 24, &v6))
  {
    v4 = sub_2978DDE08(a1 + 24, &v6);
  }

  else
  {
    v4 = &v7;
    sub_29780CE70(&v7, v3);
  }

  return *v4;
}

_BYTE *sub_2978DDAC0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = sub_2978B0F4C(a1, &v5);
  if (result)
  {
    v4 = sub_2978DDB08(a1, &v5);
    return sub_29780CE74(v4);
  }

  return result;
}

uint64_t *sub_2978DDB34(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  if (sub_2978B0FEC(a1, a2, &v7))
  {
    return v7;
  }

  sub_29780CE70(&v6, v4);
  return sub_2978DDB94(a1, a2, &v6, v7);
}

uint64_t *sub_2978DDB94(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4)
{
  result = sub_2978DDBD0(a1, a2, a4);
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

uint64_t *sub_2978DDBD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978DDCBC(a1, (2 * v6));
    sub_2978B0FEC(a1, a2, &v11);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978DDCBC(a1, v7);
    sub_2978B0FEC(a1, a2, &v11);
  }

  v8 = sub_29782B4D8(a1);
  v9 = sub_29782F70C(v8);
  if (!sub_297807F98(*v11, v9))
  {
    sub_29782B514(a1);
  }

  return v11;
}

void sub_2978DDCC0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_2978DDD4C(a1, v4, v4 + 16 * v3);
    j__free(v4);
  }

  else
  {
    sub_297885B64(a1);
  }
}

uint64_t sub_2978DDD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297885B64(a1);
  v7 = sub_29782F70C(v6);
  result = sub_297885834();
  if (a2 != a3)
  {
    v9 = result;
    do
    {
      result = sub_297807F98(*a2, v7);
      if ((result & 1) == 0)
      {
        result = sub_297807F98(*a2, v9);
        if ((result & 1) == 0)
        {
          v10 = 0;
          sub_2978B0FEC(a1, a2, &v10);
          *v10 = *a2;
          *(v10 + 8) = *(a2 + 8);
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 16;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t *sub_2978DDE24(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  if (sub_297844348(a1, a2, &v7))
  {
    return v7;
  }

  sub_29780CE70(&v6, v4);
  return sub_297846230(a1, a2, &v6, v7);
}

uint64_t sub_2978DDEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_2978DDF6C(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DDF70(void *a1, void *a2)
{
  v4 = sub_29788B5B8(a1);
  *v4 = &unk_2A1E57FB8;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

uint64_t sub_2978DDFD0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780C3B4(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_2978DDF6C(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_2978DE084(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_2978DDF6C(a2, v4, v6);
}

uint64_t sub_2978DE0E8(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

uint64_t sub_2978DE158(_BYTE **a1, uint64_t a2)
{
  v2 = *a1;
  if (*v2 == 1)
  {
    return sub_2978DE174(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978DE388(a2);
  if (v4)
  {
    v5 = v4;
    sub_2977FB7B8(v4);
    sub_29788CF00(a1 + 64);
    ++*(a1 + 56);
    v6 = sub_2977FD5B0(v5);
    sub_29788D71C(a1 + 64, v6);
    if (!sub_29783CFFC(v5))
    {
LABEL_11:
      result = 0;
      --*(a1 + 56);
      return result;
    }

    v7 = sub_29783CFFC(v5);
LABEL_10:
    sub_29788D71C(a1 + 64, v7);
    goto LABEL_11;
  }

  v8 = sub_2978DE3C4(a2);
  if (v8)
  {
    v9 = v8;
    sub_2977FB7B8(v8);
    sub_29788CF00(a1 + 64);
    ++*(a1 + 56);
    v7 = sub_2977FD5B0(v9);
    goto LABEL_10;
  }

  v10 = sub_2978DE400(a2);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2977FB7B8(v10);
    sub_29788D71C(a1 + 64, v12);
    ++*(a1 + 56);
    v13 = sub_2977FD5B0(v11);
    sub_29788D71C(a1 + 64, v13);
    sub_29783CFFC(v11);
    sub_29788CF00(a1 + 64);
    v7 = sub_297805510(v11);
    goto LABEL_10;
  }

  v14 = sub_2978DE43C(a2);
  if (v14)
  {
    v15 = v14;
    ++*(a1 + 56);
    v16 = sub_2977FB7B8(v14);
    sub_29788D71C(a1 + 64, v16);
    v7 = sub_2977FD5B0(v15);
    goto LABEL_10;
  }

  v18 = sub_2978DE478(a2);
  if (v18)
  {
    v19 = v18;
    ++*(a1 + 56);
    v20 = sub_2977FB7B8(v18);
    sub_29788D71C(a1 + 64, v20);
    sub_2977FD5B0(v19);
    sub_29788CF00(a1 + 64);
    goto LABEL_11;
  }

  v21 = sub_2978DE4B4(a2);
  if (!v21)
  {
    return 1;
  }

  v22 = v21;
  sub_2977FB7B8(v21);
  sub_29788CF00(a1 + 64);
  v23 = sub_2977FB7B8(v22);
  v24 = sub_2978DE4F0(a1 + 8, v23, 3);
  result = 0;
  *a1 &= v24;
  ++*(a1 + 4);
  return result;
}

uint64_t sub_2978DE388(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE544(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE3C4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE5A4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE400(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE5E0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE43C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE61C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE478(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE658(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE4B4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE694(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE4F0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a2;
  result = sub_297896C10(a1 + 24, &v7);
  if (result)
  {
    v6 = sub_2978DDE08(a1 + 24, &v7);
    return sub_2978DE6F4(v6, a3);
  }

  return result;
}

uint64_t sub_2978DE774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_2978DE7EC(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DE7F0(void *a1, void *a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E58000;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

uint64_t sub_2978DE850(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780C3B4(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_2978DE7EC(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_2978DE904(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_2978DE7EC(a2, v4, v6);
}

uint64_t sub_2978DE968(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

uint64_t sub_2978DE9D8(_BYTE **a1, uint64_t a2)
{
  v2 = *a1;
  if (*v2 == 1)
  {
    return sub_2978DE9F4(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29788BFD0(a2);
  if (v4)
  {
    v5 = sub_2977FB7B8(v4);
    v6 = sub_2978DEF74(a1 + 8, v5);
    v7 = a1 + 8;
    v8 = v6;
    v9 = a2;
LABEL_7:
    sub_2978DEF10(v7, v9, v8);
    return 0;
  }

  v10 = sub_2978A2FC8(a2);
  if (v10 || (v10 = sub_2978DEFD0(a2)) != 0)
  {
    v11 = v10;
    sub_2977FB7B8(v10);
    sub_29788CF00(a1 + 64);
    v12 = sub_2977FB7B8(v11);
    v13 = sub_2978DDA34(a1 + 8, v12);
    v7 = a1 + 8;
    v8 = v13;
LABEL_6:
    v9 = v11;
    goto LABEL_7;
  }

  v15 = sub_2978DF00C(a2);
  if (v15)
  {
    v11 = v15;
    sub_2977FD5B0(v15);
    sub_29788CF00(a1 + 64);
    ++*(a1 + 56);
    sub_29783CFFC(v11);
    sub_29788CF00(a1 + 64);
    sub_297805510(v11);
    sub_29788CF00(a1 + 64);
    --*(a1 + 56);
    v16 = sub_29783CFFC(v11);
    LOBYTE(v69) = sub_2978DDA34(a1 + 8, v16);
    v17 = sub_297805510(v11);
    v18 = sub_2978DDA34(a1 + 8, v17);
    sub_2978DF048(&v69, v18);
    v8 = v69;
LABEL_16:
    v7 = a1 + 8;
    goto LABEL_6;
  }

  v19 = sub_2978A2F8C(a2);
  if (v19)
  {
    v11 = v19;
    sub_2977FD5B0(v19);
    sub_29788CF00(a1 + 64);
    v20 = sub_2977FD5B0(v11);
    v71 = sub_2978DDA34(a1 + 8, v20);
    v69 = sub_29788A810(v11);
    v70 = v21;
    sub_29780CE70(&v68, v21);
    if (sub_2977FB7B8(&v69))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = sub_297803A20(&v69, v22);
        v25 = sub_2978DF07C(&v71, v24);
        sub_2978DF058(&v68, v23++, v25);
        v22 = v23;
      }

      while (sub_2977FB7B8(&v69) > v23);
    }

    v8 = v68;
    goto LABEL_16;
  }

  v26 = sub_2978DF0BC(a2);
  if (!v26)
  {
    v34 = sub_2978DF20C(a2);
    if (v34)
    {
      v35 = v34;
      v36 = sub_29788A44C(v34);
      if (v36 == 5 || v36 == 3)
      {
        v37 = sub_2977FD5B0(v35);
        sub_2978DF0F8(a1, v37);
        return 0;
      }

      return 1;
    }

    v38 = sub_2978AC260(a2);
    v39 = v38;
    if (v38)
    {
      v69 = sub_2977FD5B0(v38);
      v40 = sub_2977FB720(&v69);
      if (!sub_2978C6B34(v40))
      {
        v53 = 1;
LABEL_48:
        if (v39)
        {
          return v53;
        }

        else
        {
          return 1;
        }
      }

      sub_29780CE70(&v71, v41);
      v42 = sub_297803A7C(v39 + 8);
      v43 = sub_29788A7C4(v39 + 8);
      if (v42 != v43)
      {
        v44 = v43;
        v45 = 0;
        do
        {
          v46 = *v42;
          sub_29788CF00(a1 + 64);
          v68 = sub_2978DDA34(a1 + 8, v46);
          v69 = sub_29788C170(v46);
          v47 = sub_2977FB720(&v69);
          if (sub_297890438(v47))
          {
            v48 = sub_2978DE6F4(&v68, 0);
            sub_2978DF058(&v71, v45++, v48);
          }

          else
          {
            v69 = sub_29788C170(v46);
            v49 = sub_2977FB720(&v69);
            v50 = sub_297890568(v49);
            if (sub_297887A38(v50))
            {
              v51 = 0;
              do
              {
                v52 = sub_2978DE6F4(&v68, v51);
                sub_2978DF058(&v71, v45 + v51++, v52);
              }

              while (v51 < sub_297887A38(v50));
              v45 += v51;
            }
          }

          ++v42;
        }

        while (v42 != v44);
      }

      sub_2978DEF10(a1 + 8, v39, v71);
    }

    v53 = 0;
    goto LABEL_48;
  }

  v27 = v26;
  sub_2977FD5B0(v26);
  sub_29788CF00(a1 + 64);
  v28 = sub_2977FD5B0(v27);
  v71 = sub_2978DDA34(a1 + 8, v28);
  if (!sub_2978DDA94(&v71) && sub_29788A7A0(v27) == 4)
  {
    v29 = sub_2977FB7B8(v27);
    v30 = sub_29788BFD0(v29);
    if (v30)
    {
      v31 = sub_2977FB7B8(v30);
      v32 = sub_2977FD5B0(v27);
      v33 = sub_2978DDA34(a1 + 8, v32);
      sub_2978DD9C4(a1 + 8, v31, v33);
      return 0;
    }

    v54 = sub_2977FB7B8(v27);
    v55 = sub_2978A2F8C(v54);
    if (v55)
    {
      v56 = v55;
      v57 = sub_2977FD5B0(v55);
      v58 = sub_29788BFD0(v57);
      if (v58)
      {
        v59 = v58;
        v69 = sub_29788A810(v56);
        v70 = v60;
        if (sub_2977FB7B8(&v69))
        {
          v61 = 0;
          v62 = 0;
          do
          {
            v63 = sub_2977FB7B8(v59);
            v64 = sub_297803A20(&v69, v61);
            v65 = sub_2978A3BB4(v64);
            v66 = sub_2978DE6F4(&v71, v62);
            sub_2978DF194(a1 + 8, v63, v65, v66);
            v61 = ++v62;
          }

          while (sub_2977FB7B8(&v69) > v62);
        }

        return 0;
      }
    }
  }

  v67 = sub_2977FB7B8(v27);
  return sub_2978DF0F8(a1, v67);
}

uint64_t *sub_2978DEF10(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3;
  v6 = a2;
  if (sub_2978DDA94(&v7))
  {
    return sub_2978DF248(a1, a2);
  }

  result = sub_2978DDE08(a1 + 24, &v6);
  *result = v7;
  return result;
}

uint64_t sub_2978DEF74(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (sub_2978B0F4C(a1, &v6))
  {
    v4 = sub_2978DDB08(a1, &v6);
  }

  else
  {
    v4 = &v7;
    sub_29780CE70(&v7, v3);
  }

  return *v4;
}

uint64_t sub_2978DEFD0(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF294(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DF00C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF2C4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2978DF058(_BYTE *result, char a2, int a3)
{
  v3 = *result;
  v4 = v3 | (1 << a2);
  if (!a3)
  {
    LOBYTE(v4) = v3 & ~(1 << a2);
  }

  *result = v4;
  return result;
}

uint64_t sub_2978DF07C(unsigned __int8 *a1, int a2)
{
  v3 = sub_2978A3BB4(a2);

  return sub_2978DE6F4(a1, v3);
}

uint64_t sub_2978DF0BC(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF2F4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DF0F8(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29780CE70(&v5, a2);
  sub_2978DF324(v6, &v5, a1);
  sub_29788C880(v7, v6);
  sub_2978854E4(v6);
  sub_29788CF68(v7);
  sub_2978854E0(v7);
  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

_BYTE *sub_2978DF194(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v10 = a2;
  if ((a4 & 1) != 0 || (result = sub_2978B0F4C(a1, &v10), result))
  {
    v8 = sub_2978DDB08(a1, &v10);
    v9 = sub_2978DDB24(a1);
    return sub_2978DF058(v8, a3, v9 & a4);
  }

  return result;
}

uint64_t sub_2978DF20C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF764(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2978DF248(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = sub_297896C10(a1 + 24, &v5);
  if (result)
  {
    v4 = sub_2978DDE08(a1 + 24, &v5);
    return sub_29780CE74(v4);
  }

  return result;
}

uint64_t sub_2978DF328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2978DF350(a1, v4);
}

uint64_t sub_2978DF398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_2978DF410(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DF414(void *a1, __n128 *a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E58048;
  sub_2978BAD50((v4 + 1), a2);
  return a1;
}

uint64_t sub_2978DF474(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780A100(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_2978DF410(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_2978DF528(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_2978DF410(a2, v4, v6);
}

uint64_t sub_2978DF58C(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

BOOL sub_2978DF600(unsigned __int8 **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = sub_29788BFD0(a2);
  if (v5)
  {
    if (sub_2978DDA94(*a1))
    {
      v6 = sub_2977FB7B8(v5);
      sub_2978DDAC0((v4 + 8), v6);
    }

    else
    {
      for (i = 0; i != 4; ++i)
      {
        if (sub_2978DE6F4(*a1, i))
        {
          v15 = sub_2977FB7B8(v5);
          sub_2978DF194((v4 + 8), v15, i, 0);
        }
      }
    }
  }

  else
  {
    v7 = sub_2978A2F8C(a2);
    if (v7)
    {
      v17[0] = sub_29788A810(v7);
      v17[1] = v8;
      if (sub_2977FB7B8(v17))
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = *a1;
          v12 = sub_297803A20(v17, v9);
          sub_2978DF71C(v11, v12, 1);
          v9 = v10;
        }

        while (sub_2977FB7B8(v17) > v10++);
      }
    }
  }

  return v5 == 0;
}

_BYTE *sub_2978DF71C(_BYTE *a1, int a2, int a3)
{
  v5 = sub_2978A3BB4(a2);

  return sub_2978DF058(a1, v5, a3);
}

_BYTE *sub_2978DF798(_BYTE *a1, int a2, int a3, int a4, int a5)
{
  *a1 = 0;
  sub_2978DF058(a1, 0, a2);
  sub_2978DF058(a1, 1, a3);
  sub_2978DF058(a1, 2, a4);
  sub_2978DF058(a1, 3, a5);
  return a1;
}

uint64_t sub_2978DF810(uint64_t a1)
{
  sub_297885490(a1 + 64);
  sub_2978DF844(a1 + 8);
  return a1;
}

uint64_t sub_2978DF848(uint64_t a1)
{
  sub_29783D790(a1 + 24);

  return sub_2978853E0(a1);
}

uint64_t sub_2978DF884(uint64_t a1)
{
  v2 = sub_2977FA198(136);
  sub_297817C28(v2);

  return sub_2978BD8A0(a1, v2, 1);
}

uint64_t sub_2978DF8D0(uint64_t a1)
{
  result = sub_29781BCA4(a1);
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *a1;
        v7 = *(*a1 + v4);
        if (v7)
        {
          result = sub_2978027E4();
          if (v7 != result)
          {
            result = sub_29782F610(*(v6 + v4), *(a1 + 24));
          }
        }

        *(v6 + v4) = 0;
        v4 += 8;
      }

      while (v5 != v4);
    }

    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_2978DF958(uint64_t a1, uint64_t a2)
{
  *a1 &= 0xE0u;
  *(a1 + 8) = 0;
  sub_2977FB7B4(a1 + 16, &byte_2978FC3E5);
  sub_2977FB7B4(a1 + 32, &byte_2978FC3E5);
  sub_2978DF9F8(a1 + 48, a2, 4);
  sub_2978DF9FC(a1 + 72, a2, 2);
  sub_2978DF9FC(a1 + 96, a2, 0);
  sub_2978DF9FC(a1 + 120, a2, 0);
  return a1;
}

void *sub_2978DFA00(void *a1, void *a2, unsigned int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2978DFA30(a1, a2, a3);
  return a1;
}

void *sub_2978DFA30(void *result, void *a2, unsigned int a3)
{
  if (-1431655765 * ((result[2] - *result) >> 3) < a3)
  {
    return sub_2978DFA60(result, a2, a3);
  }

  return result;
}

uint64_t sub_2978DFA60(void *a1, void *a2, unint64_t a3)
{
  v6 = (a1[2] - *a1) >> 3;
  v8 = sub_297809AF0(a1);
  if (0x5555555555555556 * v6 > a3)
  {
    a3 = 0x5555555555555556 * v6;
  }

  v9 = sub_29784DD58(a2, v7);
  v10 = sub_297828E70(v9, a3);
  sub_297878570(*a1, a1[1], v10);
  v11 = a1[1];
  result = nullsub_1(a1, *a1);
  *a1 = v10;
  a1[1] = v10 + 24 * v8;
  a1[2] = &v10[24 * a3 / 0x10];
  return result;
}

void *sub_2978DFB04(void *a1, void *a2, unsigned int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2978DFB34(a1, a2, a3);
  return a1;
}

void *sub_2978DFB34(void *result, void *a2, unsigned int a3)
{
  if (((result[2] - *result) >> 3) < a3)
  {
    return sub_2978DFB58(result, a2, a3);
  }

  return result;
}

uint64_t sub_2978DFB58(void *a1, void *a2, unint64_t a3)
{
  v6 = a1[2] - *a1;
  v8 = sub_29780BD00(a1);
  if (v6 >> 2 > a3)
  {
    a3 = v6 >> 2;
  }

  v9 = sub_29784DD58(a2, v7);
  v10 = sub_29786FA38(v9, a3);
  sub_2978BF2E4(*a1, a1[1], v10);
  v11 = a1[1];
  result = nullsub_1(a1, *a1);
  *a1 = v10;
  a1[1] = &v10[v8];
  a1[2] = &v10[a3];
  return result;
}

uint64_t sub_2978DFC40(uint64_t a1, uint64_t a2)
{
  result = sub_29781BBE0(a1, 16);
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2978DFC6C(uint64_t a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 && v5 != sub_2978027E4())
        {
          sub_29782F610(v5, *(a1 + 24));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_2978DFCF4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978DFD14();
  *(result + 24) = result;
  return result;
}

void *sub_2978DFD18(void *a1)
{
  result = sub_2978D9418(a1);
  *result = &unk_2A1E58090;
  return result;
}

void sub_2978DFD50()
{
  v0 = j_j_nullsub_1_127();

  j__free(v0);
}

uint64_t sub_2978DFD78()
{
  v0 = sub_29788B488();
  sub_29784CE50(&v4, &v6);
  sub_29788B48C(v5, v0, &v4);
  v1 = sub_2977FB720(v5);
  sub_2978DFD14(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978DFE00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_2978DFE48(v5);
  }
}

uint64_t sub_2978DFE54(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = sub_2978DFED8();
  sub_29784CE50(&v7, &v9);
  sub_29788B48C(v8, v4, &v7);
  v5 = sub_2977FB720(v8);
  sub_2978DFEDC(v5, a2);
  *(a1 + 24) = sub_2978058AC(v8);
  sub_29788B490(v8);
  return a1;
}

void *sub_2978DFEEC(void *a1, uint64_t a2)
{
  v4 = sub_2978DFF3C(a1);
  *v4 = &unk_2A1E580D8;
  sub_2978DFF5C(v4 + 1, a2);
  return a1;
}

void sub_2978DFF64()
{
  v0 = j_j_nullsub_1_128();

  j__free(v0);
}

uint64_t sub_2978DFF8C(uint64_t a1)
{
  v2 = sub_2978DFED8();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_2978DFEDC(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

__n128 sub_2978E0028(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2978E0048(void *a1, uint64_t a2)
{
  v14 = a2;
  v4 = sub_2978D65BC(*(*a1 + 368));
  v5 = sub_2978E010C(v4, a2);
  v6 = sub_2978E0138(v5);
  v7 = sub_2978D86D0(v5);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6;
      v10 = a1[1];
      v11 = sub_2977FD5B0(*v6);
      if (!sub_2978B7944(v10, v11))
      {
        v12 = a1[2];
        sub_2977FD5B0(v9);
        sub_2978DCCA8(v12);
      }

      ++v6;
    }

    while (v6 != v8);
  }

  return sub_2978040A4(a1[3], &v14);
}

uint64_t sub_2978E0144(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2978E01C4(uint64_t *a1, unint64_t a2)
{
  if (a2 <= (a1[2] - a1[1]) >> 3)
  {

    return sub_2978E0288(a1, a2);
  }

  else
  {
    v4 = sub_29780BD00(a1);
    v5 = sub_29781DCA0(a1, v4 + a2);
    v6 = sub_29780BD00(a1);
    sub_2978E02FC(v8, v5, v6, a1);
    sub_2978E0300(v8, a2);
    sub_29781DD1C(a1, v8);
    return sub_2978E0374(v8);
  }
}

uint64_t sub_2978E0288(uint64_t a1, uint64_t a2)
{
  sub_29780CF3C(&v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_2978E0378(a1, v6);
    v4 += 8;
    v9 = v4;
  }

  return sub_297809E88(&v8);
}

uint64_t sub_2978E0300(uint64_t a1, uint64_t a2)
{
  sub_2978E03D4(&v8, a1 + 16, a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_2978E0378(v5, v6);
    i = v8 + 8;
  }

  return sub_29784F0A0(&v8);
}

uint64_t *sub_2978E0384(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_29780CEB8(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 8 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 8 * a2;
  return a1;
}

void *sub_2978E03D8(void *result, void *a2, uint64_t a3)
{
  v3 = *a2 + 8 * a3;
  *result = *a2;
  result[1] = v3;
  result[2] = a2;
  return result;
}

uint64_t *sub_2978E03EC(uint64_t *a1)
{
  sub_29781DEA8(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29781DEB0(a1);
    sub_29780C704(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978E0440(uint64_t *a1, unint64_t a2)
{
  if (a2 <= (a1[2] - a1[1]) >> 4)
  {

    return sub_2978E0504(a1, a2);
  }

  else
  {
    v4 = sub_29780AAE8(a1);
    v5 = sub_29780C17C(a1, v4 + a2);
    v6 = sub_29780AAE8(a1);
    sub_29780C1F4(v8, v5, v6, a1);
    sub_2978E0578(v8, a2);
    sub_29780C1F8(a1, v8);
    return sub_29780C2DC(v8);
  }
}

uint64_t sub_2978E0504(uint64_t a1, uint64_t a2)
{
  sub_29780C154(v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_2978E05EC(a1, v6);
    v4 += 16;
    v9 = v4;
  }

  return sub_297809E88(v8);
}

uint64_t sub_2978E0578(uint64_t a1, uint64_t a2)
{
  sub_29786F99C(&v8, (a1 + 16), a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_2978E05EC(v5, v6);
    i = v8 + 16;
  }

  return sub_29784F0A0(&v8);
}

uint64_t sub_2978E060C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978E064C(a1, a2);
  }

  else
  {
    sub_29781DB94(a1, a2);
    result = v3 + 8;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978E064C(uint64_t *a1, void *a2)
{
  v4 = sub_29780BD00(a1);
  v5 = sub_29781DCA0(a1, v4 + 1);
  v6 = sub_29780BD00(a1);
  sub_2978E02FC(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_29780D0B0(a1, v8, a2);
  v12 += 8;
  sub_29781DD1C(a1, v11);
  v9 = a1[1];
  sub_2978E0374(v11);
  return v9;
}

uint64_t sub_2978E06F0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v8 = a2;
  v14 = a2;
  v12 = a3;
  v13 = a4;
  if (sub_297806914(&v12))
  {
    return 1;
  }

  sub_297842FAC(&v11);
  if (a5)
  {
    if (sub_2978E08A8(a1, v8, &v11, &v14))
    {
      v8 = v14;
LABEL_6:
      sub_2978E09FC(a1, v8, v11, v12, v13, a6);
      return 1;
    }
  }

  else if (sub_2978E07A0(a1, v8, &v11))
  {
    goto LABEL_6;
  }

  result = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2978E07A0(_DWORD **a1, unsigned int a2, uint64_t *a3)
{
  v10 = a2;
  if (sub_297829730(&v10))
  {
    return 0;
  }

  if (sub_29783C26C(&v10))
  {
    sub_2978E1138(a1, v10, &v10);
  }

  v5 = *a1;
  if (sub_29784106C(*a1, v10))
  {
    do
    {
      v10 = sub_2978410C8(v5, v10);
    }

    while ((sub_29784106C(v5, v10) & 1) != 0);
  }

  if (!sub_29783C26C(&v10) || (result = sub_2978E1138(a1, v10, &v10), result))
  {
    if (!sub_29782CF70(v5, v10))
    {
      v9 = sub_29783E664(v5, v10);
      if (!sub_297829730(&v9))
      {
        sub_2978E114C(&v8, v9, SHIDWORD(v9));
        v7 = v8;
        *a3 = v8;
        return sub_2978E1154(a1, v10, v7);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2978E08A8(_DWORD **a1, unsigned int a2, uint64_t *a3, _DWORD *a4)
{
  v14 = a2;
  if (sub_297829730(&v14))
  {
    return 0;
  }

  v7 = sub_29783E4D0(*a1, v14);
  v8 = sub_29784FF88(v7, *a1, a1[1]);
  *a4 = sub_297840FC8(&v14, v8);
  if (sub_29783C26C(&v14))
  {
    sub_2978E124C(a1, v14, &v14);
  }

  v9 = *a1;
  if (sub_29784106C(*a1, v14))
  {
    do
    {
      v14 = sub_2978410C8(v9, v14);
    }

    while ((sub_29784106C(v9, v14) & 1) != 0);
  }

  if (!sub_29783C26C(&v14) || (result = sub_2978E124C(a1, v14, &v14), result))
  {
    if (!sub_29782CF70(v9, v14))
    {
      v14 = sub_297850610(v14, 0, *a1, a1[1]);
      if (!sub_297829730(&v14))
      {
        v13 = sub_29783E664(v9, v14);
        if (!sub_297829730(&v13))
        {
          sub_2978E114C(&v12, v13, SHIDWORD(v13));
          v11 = v12;
          *a3 = v12;
          return sub_2978E1154(a1, v14, v11);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2978E09FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v17 = a4;
  v18 = a5;
  result = sub_297806914(&v17);
  if ((result & 1) == 0)
  {
    sub_2978E1030(&v12);
    LODWORD(v12) = 0;
    v14 = a2;
    v15 = a3;
    *(&v12 + 1) = sub_2978E1034(a1, v17, v18);
    v13 = v11;
    v16 = a6;
    return sub_2978E10B8(a1 + 40, &v12);
  }

  return result;
}

uint64_t sub_2978E0A7C(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, char a5, char a6)
{
  v10 = a2;
  v19 = a4;
  v20 = a2;
  v18 = a3;
  sub_297842FAC(&v17);
  v16 = 0;
  if ((sub_2978E0B88(a1, a3, a4, &v17, &v16) & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_297842FAC(&v15);
  if ((a5 & 1) == 0)
  {
    if (sub_2978E07A0(a1, v10, &v15))
    {
      goto LABEL_6;
    }

LABEL_8:
    result = 0;
    *(a1 + 32) = 0;
    return result;
  }

  if (!sub_2978E08A8(a1, v10, &v15, &v20))
  {
    goto LABEL_8;
  }

  v10 = v20;
LABEL_6:
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = sub_297850AD4(&v18);
    if (sub_2978E0CF0(v12, v10, v13))
    {
      goto LABEL_8;
    }
  }

  sub_2978E0D44(a1, v10, v15, v17, v16, a6);
  return 1;
}

uint64_t sub_2978E0B88(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5)
{
  v22 = a3;
  v8 = *a1;
  v21 = sub_297850804(a2, a3, *a1, *(a1 + 8));
  LOBYTE(v22) = v9;
  if (sub_297850D28())
  {
    return 0;
  }

  LODWORD(v20) = sub_297850AD4(&v21);
  if (sub_29783C26C(&v20))
  {
    return 0;
  }

  LODWORD(v19) = sub_2978478EC(&v21);
  if (sub_29783C26C(&v19))
  {
    return 0;
  }

  v10 = sub_297850AD4(&v21);
  if (sub_29782CF70(v8, v10))
  {
    return 0;
  }

  v11 = sub_2978478EC(&v21);
  if (sub_29782CF70(v8, v11))
  {
    return 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = nullsub_1(&v21, v12);
    if (sub_297868A24(v13, *v14))
    {
      return 0;
    }
  }

  v15 = sub_297850AD4(&v21);
  v20 = sub_29783E664(v8, v15);
  v16 = sub_2978478EC(&v21);
  v19 = sub_29783E664(v8, v16);
  if (sub_2978435D4(&v20, &v19) || HIDWORD(v20) > HIDWORD(v19))
  {
    return 0;
  }

  sub_2978E114C(&v18, v20, SHIDWORD(v20));
  *a4 = v18;
  *a5 = HIDWORD(v19) - HIDWORD(v20);
  return 1;
}

BOOL sub_2978E0CF0(uint64_t a1, int a2, int a3)
{
  v7 = sub_297868C08(a1, a2);
  v6 = sub_297868C08(a1, a3);
  return sub_297853F10(&v7, &v6);
}

uint64_t sub_2978E0D44(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  if (a5)
  {
    v11 = result;
    sub_2978E1030(&v12);
    LODWORD(v12) = 1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    v17 = a6;
    return sub_2978E10B8(v11 + 40, &v12);
  }

  return result;
}

uint64_t sub_2978E0DC8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = a2;
  v12 = a3;
  sub_297842FAC(&v10);
  v9 = 0;
  v6 = sub_2978E0B88(a1, a2, a3, &v10, &v9);
  if (v6)
  {
    v7 = sub_297850AD4(&v11);
    sub_2978E0E5C(a1, v7, v10, v9);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  return v6;
}

uint64_t sub_2978E0E5C(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v7 = result;
    sub_2978E1030(&v8);
    LODWORD(v8) = 2;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    return sub_2978E10B8(v7 + 40, &v8);
  }

  return result;
}

uint64_t sub_2978E0EC8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v14 = a4;
  if (sub_297806914(&v14))
  {
    return sub_2978E0DC8(a1, a2, a3);
  }

  sub_297842FAC(&v13);
  v12 = 0;
  v9 = sub_297850AD4(&v16);
  if (sub_2978E07A0(a1, v9, &v13) && (sub_2978E0B88(a1, v16, v17, &v13, &v12) & 1) != 0)
  {
    v10 = sub_297850AD4(&v16);
    sub_2978E0E5C(a1, v10, v13, v12);
    v11 = sub_297850AD4(&v16);
    sub_2978E09FC(a1, v11, v13, v14, v15, 0);
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_2978E0FCC(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a1;
  v6[0] = sub_297842D18(&v8, &v8 + 4);
  v6[1] = v2;
  v5[0] = sub_297842D18(&v7, &v7 + 4);
  v5[1] = v3;
  return sub_2978E128C(v6, v5);
}

uint64_t sub_2978E1034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = sub_2977FB7B8(v10);
  v5 = sub_29781B6D0(a1 + 512, v4);
  v6 = sub_2977FB720(v10);
  v7 = sub_2977FB7B8(v10);
  memcpy(v5, v6, v7);
  v8 = sub_2977FB7B8(v10);
  sub_2977FB7C0(&v11, v5, v8);
  return v11;
}

uint64_t sub_2978E10B8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_2978E142C(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(v4 + 48) = *(a2 + 6);
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  *v4 = v7;
  v8 = sub_2977FB7B8(a1) + 56;

  return sub_2977FD5DC(a1, v8);
}

BOOL sub_2978E1154(uint64_t a1, int a2, uint64_t a3)
{
  v15 = a3;
  v5 = sub_29782B950(a1 + 40);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_2978E1260(a1 + 40, v6);
      if (*v7 == 2)
      {
        v8 = v7;
        v14 = sub_2977FB5F0(v7 + 7);
        v13 = sub_2977FB5F0(&v15);
        if (sub_29782B07C(&v14, &v13))
        {
          if (sub_2978E1020(v15, *(v8 + 7)))
          {
            v9 = v15;
            v10 = sub_2978E0FBC(v8 + 7, v8[11]);
            if (sub_2978E0FCC(v9, v10))
            {
              return 0;
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = *(a1 + 24);
    return !v11 || sub_2978E15A4(v11, a2, v15);
  }
}

uint64_t sub_2978E12B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_297803A7C(a2);
  v6 = sub_297803A7C(a3);
  if (sub_297843764(v5, v6))
  {
    return 1;
  }

  v8 = sub_297803A7C(a3);
  v9 = sub_297803A7C(a2);
  if (sub_297843764(v8, v9))
  {
    return 0;
  }

  else
  {
    return sub_2978E1354(&v10, a2, a3);
  }
}

uint64_t sub_2978E1354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_29782FD1C(a2);
  if (v5 < *sub_29782FD1C(a3))
  {
    return 1;
  }

  v7 = *sub_29782FD1C(a3);
  if (v7 >= *sub_29782FD1C(a2))
  {
    return sub_2977FD678();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978E13E8(uint64_t a1)
{
  sub_297804560((a1 + 8));
  sub_297829180((a1 + 24));
  sub_297842FAC((a1 + 28));
  sub_297842FAC((a1 + 36));
  return a1;
}

uint64_t sub_2978E14B0(uint64_t a1, char **a2)
{
  sub_297806EC8(v8);
  v4 = sub_297812A04(a2, v8);
  v6 = sub_2978E1520(a1, v4, v5);
  sub_297801F60(v8);
  return v6;
}

uint64_t sub_2978E1520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = sub_2977FB7B8(v10);
  v5 = sub_29781B6D0(a1 + 72, v4);
  v6 = sub_2977FB720(v10);
  v7 = sub_2977FB7B8(v10);
  memcpy(v5, v6, v7);
  v8 = sub_2977FB7B8(v10);
  sub_2977FB7C0(&v11, v5, v8);
  return v11;
}

BOOL sub_2978E15A4(_DWORD **a1, int a2, uint64_t a3)
{
  v17 = sub_2978E16BC(a1, a3);
  v14[0] = sub_29781668C((a1 + 3), v6);
  if (sub_297816688(&v17, v14))
  {
    v7 = sub_29781665C(&v17);
    if (sub_2978E1778(*v7, a3))
    {
      return 0;
    }
  }

  if (!sub_29784106C(*a1, a2))
  {
    return 1;
  }

  v16 = sub_297841140(*a1, a2);
  v9 = *a1;
  v8 = (a1 + 6);
  v15 = sub_297841140(v9, v16);
  v13.n128_u32[0] = sub_2977FB5F0(&v15);
  sub_2978E1794(v8, &v13, v14);
  sub_2978E1808(v8, &v12);
  sub_2978BAD50(&v13, &v12);
  if (!sub_29782EE3C(v14, &v13))
  {
    return 1;
  }

  v10 = sub_2977FB720(v14);
  return !sub_297853F10((v10 + 4), &v16);
}

uint64_t *sub_2978E16BC(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v9 = sub_2978E1CDC(a1 + 24, &v10);
  v8 = sub_2978E1D0C(a1 + 24, v3);
  if (!sub_297818FA8(&v9, &v8) && (sub_2978E1D3C(&v9), v5 = sub_29781665C(&v9), v8 = *sub_29781665C(&v9), v6 = sub_2978E0FBC(&v8, *(v5 + 24)), sub_2978E2218(v10, v8)) && sub_2978E0FCC(v10, v6))
  {
    return v9;
  }

  else
  {
    return sub_29781668C(a1 + 24, v4);
  }
}

uint64_t sub_2978E1794@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_2978E293C(a1, a2, &v8))
  {
    return sub_2978E1808(a1, a3);
  }

  v5 = v8;
  v6 = sub_29782AF60(a1);
  return sub_29782D9C0(a3, v5, v6, 1);
}

uint64_t sub_2978E1808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29782AF60(a1);
  v5 = sub_29782AF60(a1);

  return sub_29782D9C0(a2, v4, v5, 1);
}

BOOL sub_2978E1864(_DWORD **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = a3;
  v19 = a4;
  v20 = a5;
  v9 = sub_2978E15A4(a1, a2, a3);
  if (v9 && !sub_297806914(&v19))
  {
    if (sub_29784106C(*a1, a2))
    {
      v10 = sub_297841140(*a1, a2);
      LODWORD(v18[0]) = sub_297841140(*a1, v10);
      v17[0] = sub_2977FB5F0(v18);
      *sub_2978E1994((a1 + 6), v17) = v10;
    }

    v11 = sub_2978E19B0((a1 + 3), &v21);
    if (sub_297806914(v11))
    {
      v12 = sub_2978E1520(a1, v19, v20);
    }

    else
    {
      if (a6)
      {
        sub_2978036E8(v17, &v19);
        v14 = v11;
      }

      else
      {
        sub_2978036E8(v17, v11);
        v14 = &v19;
      }

      sub_2978036E8(v16, v14);
      sub_297807128(v17, v16, v18);
      v12 = sub_2978E14B0(a1, v18);
    }

    *v11 = v12;
    v11[1] = v13;
  }

  return v9;
}

uint64_t sub_2978E19B0(uint64_t a1, uint64_t *a2)
{
  v10 = sub_297819C3C(a2);
  nullsub_1(v10, v4);
  v11 = sub_2978E2D58(a1, a2, &unk_2978FC3B0, &v10, &v9);
  v12 = v5;
  v6 = sub_297819804(&v11);
  return nullsub_1(v6, v7) + 8;
}

uint64_t sub_2978E1A20(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a5)
  {
    sub_297806EC8(v35);
    v34 = a4;
    v12 = sub_2978E0FBC(&v34, a5);
    v33 = sub_2978E1CDC((a1 + 3), &v34);
    i = sub_2978E1D0C((a1 + 3), v13);
    if (sub_297816688(&v33, &i))
    {
      sub_2978E1D3C(&v33);
    }

    for (i = sub_29781668C((a1 + 3), v14); sub_297816688(&v33, &i); i = sub_29781668C((a1 + 3), v18))
    {
      v16 = sub_29781665C(&v33);
      i = *sub_29781665C(&v33);
      v17 = sub_2978E0FBC(&i, *(v16 + 24));
      if (sub_2978E1D64(v34, i))
      {
        break;
      }

      if (sub_2978E0FCC(v34, v17))
      {
        if (sub_2978E1020(v34, i))
        {
          v34 = v17;
          sub_2978E1DA0(&v33);
        }

        break;
      }

      sub_2978E1DA0(&v33);
    }

    for (i = sub_29781668C((a1 + 3), v15); sub_297816688(&v33, &i); i = sub_29781668C((a1 + 3), v25))
    {
      v20 = sub_29781665C(&v33);
      if (!sub_2978E1020(v12, *v20))
      {
        break;
      }

      v21 = sub_29781665C(&v33);
      i = *sub_29781665C(&v33);
      v22 = sub_2978E0FBC(&i, *(v21 + 24));
      if (sub_2978E0FCC(v34, i))
      {
        v31 = 0;
        v23 = sub_2978E1DC8(a1, v34, i, &v31);
        if (v31)
        {
          goto LABEL_20;
        }

        sub_297811C58(v35, v23, v24);
      }

      sub_297811C58(v35, *(v21 + 8), *(v21 + 16));
      v34 = v22;
      sub_2978E1DA0(&v33);
    }

    if (sub_2978E0FCC(v34, v12))
    {
      LOBYTE(i) = 0;
      v26 = sub_2978E1DC8(a1, v34, v12, &i);
      if (i)
      {
LABEL_20:
        v19 = 0;
LABEL_23:
        sub_297801F60(v35);
        return v19;
      }

      sub_297811C58(v35, v26, v27);
    }

    v28 = sub_297801F10(v35);
    v19 = sub_2978E1864(a1, a2, a3, v28, v29, a6);
    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_2978E1CDC(uint64_t a1, uint64_t *a2)
{
  v2 = sub_2978E30B4(a1, a2);
  sub_2977FDEF4(&v4, v2);
  return v4;
}

uint64_t sub_2978E1D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2978E3194(a1, a2);
  sub_2977FDEF4(&v4, v2);
  return v4;
}

uint64_t sub_2978E1D64(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  LODWORD(result) = sub_29782B07C(&v4, &v3);
  if (HIDWORD(v4) == HIDWORD(v3))
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978E1DC8(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v15 = a3;
  v16 = a2;
  v6 = *a1;
  v7 = sub_2977FB5F0(&v16);
  v14 = sub_2978423A8(v6, v7);
  v8 = sub_297847BE0(&v16);
  v14 = sub_297840FC8(&v14, v8);
  LODWORD(v6) = sub_297847BE0(&v15);
  v9 = sub_297847BE0(&v16);
  v10 = sub_297840FC8(&v14, v6 - v9);
  v11 = sub_2978562D8(v14, v10);
  return sub_297850C24(v11, v12, *a1, a1[1], a4);
}

uint64_t sub_2978E1E74(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v35 = a3;
  if (a4)
  {
    v5 = result;
    v6 = sub_2978E0FBC(&v35, a4);
    v34 = v6;
    v33 = sub_2978E1CDC(v5 + 24, &v35);
    v28[0] = sub_2978E1D0C(v5 + 24, v7);
    if (sub_297816688(&v33, v28))
    {
      sub_2978E1D3C(&v33);
    }

    for (v28[0] = sub_29781668C(v5 + 24, v8); sub_297816688(&v33, v28); v28[0] = sub_29781668C(v5 + 24, v11))
    {
      v9 = sub_29781665C(&v33);
      v28[0] = *sub_29781665C(&v33);
      v10 = sub_2978E0FBC(v28, *(v9 + 24));
      if (sub_2978E0FCC(v35, v10))
      {
        break;
      }

      sub_2978E1DA0(&v33);
    }

    sub_297842FAC(&v32);
    sub_297842FAC(&v31);
    v28[0] = sub_29781668C(v5 + 24, v12);
    if (sub_297818FA8(&v33, v28))
    {
      sub_29781A304(&v29, v33);
      sub_2978E2214(v27);
      sub_2978E2204(&v35, v27, v28);
      v30 = sub_2978E21D4();
      result = sub_29781665C(&v30);
      *(result + 24) = a4;
      return result;
    }

    v13 = sub_29781665C(&v33);
    v30 = *sub_29781665C(&v33);
    v14 = sub_2978E0FBC(&v30, *(v13 + 24));
    if (sub_2978E0FCC(v35, v30))
    {
      sub_29781A304(&v26, v33);
      sub_2978E2214(v27);
      sub_2978E2204(&v35, v27, v28);
      v29 = sub_2978E21D4();
      v31 = v6;
      v32 = v35;
      v16 = sub_29781665C(&v29);
      *(v16 + 24) = a4;
    }

    else
    {
      v31 = v14;
      v32 = v30;
      v16 = sub_29781665C(&v33);
      result = sub_2978E2218(v31, v6);
      if (result)
      {
        return result;
      }

      v17 = sub_297847BE0(&v34);
      v18 = sub_297847BE0(&v31);
      v19 = v35;
      v31 = v34;
      *(v16 + 24) += v17 - v18;
      if (sub_2978E1D64(v30, v19))
      {
        sub_297804560(v28);
        *(v16 + 8) = *v28;
      }

      sub_2978E1DA0(&v33);
    }

    v28[0] = sub_29781668C(v5 + 24, v15);
    result = sub_297816688(&v33, v28);
    if (result)
    {
      do
      {
        v20 = sub_29781665C(&v33);
        v28[0] = *sub_29781665C(&v33);
        v21 = sub_2978E0FBC(v28, *(v20 + 24));
        v27[0] = v21;
        result = sub_2978E2218(v28[0], v31);
        if (result)
        {
          break;
        }

        if ((sub_2978E2234(v21, v31) & 1) == 0)
        {
          result = sub_2978E0FCC(v28[0], v31);
          if (result)
          {
            v24 = sub_297847BE0(v27);
            v25 = sub_297847BE0(&v31);
            v31 = v27[0];
            *(v16 + 24) += v24 - v25;
            return sub_2978E225C(v5 + 24, v33);
          }

          return result;
        }

        v22 = sub_2978E22A8(&v33);
        sub_2978E225C(v5 + 24, v22);
        v28[0] = sub_29781668C(v5 + 24, v23);
        result = sub_297816688(&v33, v28);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_2978E21D4()
{
  v0 = sub_2978E3244();
  sub_2977FDEF4(&v2, v0);
  return v2;
}

uint64_t sub_2978E225C(uint64_t a1, uint64_t a2)
{
  sub_2977FDEF4(&v5, a2);
  v3 = sub_2978E3678(a1, v5);
  sub_2977FDEF4(&v6, v3);
  return v6;
}

uint64_t sub_2978E22A8(uint64_t *a1)
{
  v1 = *a1;
  sub_2978E1DA0(a1);
  return v1;
}

uint64_t sub_2978E22D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978E23A0(a2);
  if (v4)
  {
    v5 = sub_2978E23A8(a2);
    v6 = sub_2978E23B0(a2);
    if (v5 != v6)
    {
      v8 = v6;
      do
      {
        v9 = *v5;
        if (*v5 == 2)
        {
          sub_2978E1E74(a1, v7, *(v5 + 28), *(v5 + 44));
        }

        else if (v9 == 1)
        {
          sub_2978E1A20(a1, *(v5 + 24), *(v5 + 28), *(v5 + 36), *(v5 + 44), *(v5 + 48));
        }

        else if (!v9)
        {
          sub_2978E1864(a1, *(v5 + 24), *(v5 + 28), *(v5 + 8), *(v5 + 16), *(v5 + 48));
        }

        v5 += 56;
      }

      while (v5 != v8);
    }
  }

  return v4;
}

uint64_t sub_2978E23B8(_DWORD **a1, uint64_t *a2)
{
  sub_297806EC8(v22);
  sub_297842FAC(&v21);
  sub_297842FAC(&v20);
  if (!sub_2978C108C((a1 + 3)))
  {
    v19 = sub_2978E1D0C((a1 + 3), v4);
    v21 = *sub_29781665C(&v19);
    v5 = sub_29781665C(&v19);
    sub_29784B428(v22, *(v5 + 8), *(v5 + 16));
    v6 = *(sub_29781665C(&v19) + 24);
    v20 = sub_2978E0FBC(&v21, v6);
    sub_2978E1DA0(&v19);
    v18 = sub_29781668C((a1 + 3), v7);
    if (sub_297816688(&v19, &v18))
    {
      do
      {
        v8 = *sub_29781665C(&v19);
        v9 = sub_29781665C(&v19);
        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (sub_2978E1D64(v8, v20))
        {
          sub_297811C58(v22, v10, v11);
          sub_2978E0FBC(&v20, v12);
          v12 += v6;
        }

        else
        {
          v13 = sub_297801F10(v22);
          sub_2978E258C(a2, v13, v14, v21, v6, *a1, a1[1]);
          v21 = v8;
          sub_29784B428(v22, v10, v11);
          v20 = sub_2978E0FBC(&v21, v12);
        }

        sub_2978E1DA0(&v19);
        v6 = v12;
      }

      while (sub_297816688(&v19, &v18));
    }

    else
    {
      v12 = v6;
    }

    v15 = sub_297801F10(v22);
    sub_2978E258C(a2, v15, v16, v21, v12, *a1, a1[1]);
  }

  return sub_297801F60(v22);
}

uint64_t sub_2978E258C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, void *a7)
{
  v9 = a5;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v22 = a4;
  v21 = a5;
  v11 = sub_2977FB5F0(&v22);
  v20 = sub_2978423A8(a6, v11);
  v12 = sub_297847BE0(&v22);
  v20 = sub_297840FC8(&v20, v12);
  if (sub_297806914(&v23))
  {
    sub_2978E271C(a6, a7, v20, v22, &v21, &v23);
    v9 = v21;
  }

  v13 = v20;
  v14 = sub_297840FC8(&v20, v9);
  v15 = sub_2978562D8(v13, v14);
  v17 = v16;
  if (sub_297806914(&v23))
  {
    return (*(*a1 + 32))(a1, v15, v17);
  }

  v19 = *a1;
  if (v9)
  {
    return (*(v19 + 24))(a1, v15, v17, v23, *(&v23 + 1));
  }

  else
  {
    return (*(v19 + 16))(a1, v20, v23, *(&v23 + 1));
  }
}

void *sub_2978E2700(void *a1)
{
  result = sub_297804560(a1);
  *(result + 4) = 0;
  return result;
}

double sub_2978E271C(_DWORD *a1, void *a2, unsigned int a3, uint64_t a4, _DWORD *a5, _OWORD *a6)
{
  v26 = a3;
  *v25 = a4;
  v24 = sub_29785014C(a3, a1, a2);
  if (!sub_297853F10(&v24, &v26))
  {
    v23 = 0;
    v11 = sub_2977FB5F0(v25);
    v22[0] = sub_297840A24(a1, v11, &v23);
    v22[1] = v12;
    if ((v23 & 1) == 0)
    {
      v13 = sub_297847BE0(v25);
      v14 = (*a5 + v13);
      v15 = sub_297803A20(v22, v14);
      v16 = v15;
      if (!v13)
      {
        if (v15 != 32)
        {
          return result;
        }

        goto LABEL_8;
      }

      v17 = sub_297803A20(v22, (v13 - 1));
      if (v16 == 32)
      {
        v18 = sub_297803A20(v22, (v14 - 1));
        v19 = sub_297803A20(v22, (v14 + 1));
        if (!sub_2978E287C(v17, v18, v19, a2))
        {
          return result;
        }

LABEL_8:
        ++*a5;
        return result;
      }

      v20 = sub_297803A20(v22, v14);
      if ((sub_2978E28F4(v17, v20, a2) & 1) == 0)
      {
        sub_2977FB7B4(&v21, " ");
        result = *&v21;
        *a6 = v21;
      }
    }
  }

  return result;
}

uint64_t sub_2978E287C(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, void *a4)
{
  result = sub_2978E28F4(a1, a3, a4);
  if (result)
  {
    if (sub_297850134(a1) || sub_297850134(a3))
    {
      return 1;
    }

    else
    {
      return sub_2978E28F4(a2, a3, a4) ^ 1;
    }
  }

  return result;
}

uint64_t sub_2978E28F4(unsigned __int8 a1, unsigned __int8 a2, void *a3)
{
  if (sub_297850D44(a1, a3))
  {
    return sub_297850D44(a2, a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2978E293C(uint64_t a1, _DWORD *a2, void *a3)
{
  v5 = 0;
  result = sub_2978E2978(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_2978E2978(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v15 = sub_29782AF5C();
    v14 = sub_2978E2A8C();
    v9 = v8 - 1;
    v10 = sub_2978E2A90(a2) & (v8 - 1);
    v11 = (v6 + 8 * v10);
    if (sub_29782B07C(a2, v11))
    {
LABEL_8:
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (!sub_29782B07C(v11, &v15))
      {
        if (sub_29782B07C(v11, &v14) && v12 == 0)
        {
          v12 = v11;
        }

        v10 = (v10 + v13) & v9;
        v11 = (v6 + 8 * v10);
        ++v13;
        if (sub_29782B07C(a2, v11))
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v11 = v12;
      }
    }

    *a3 = v11;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_DWORD *sub_2978E2A94(uint64_t a1, _DWORD *a2)
{
  v6 = 0;
  if (sub_2978E293C(a1, a2, &v6))
  {
    return v6;
  }

  sub_297829180(&v5);
  return sub_2978E2AF4(a1, a2, &v5, v6);
}

_DWORD *sub_2978E2AF4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_2978E2B30(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

_DWORD *sub_2978E2B30(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978E2C1C(a1, (2 * v6));
    sub_2978E293C(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978E2C1C(a1, v7);
    sub_2978E293C(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v9 = sub_29782AF5C();
  if (!sub_29782B07C(v10, &v9))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_2978E2C20(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29782AE0C(a1, *v5);
  if (v4)
  {
    sub_2978E2CAC(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_29782AE58(a1);
  }
}

uint64_t sub_2978E2CAC(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29782AE58(a1);
  v10 = sub_29782AF5C();
  result = sub_2978E2A8C();
  v9 = result;
  while (a2 != a3)
  {
    result = sub_29782B07C(a2, &v10);
    if ((result & 1) == 0)
    {
      result = sub_29782B07C(a2, &v9);
      if ((result & 1) == 0)
      {
        v8 = 0;
        sub_2978E293C(a1, a2, &v8);
        v7 = v8;
        *v8 = *a2;
        v7[1] = a2[1];
        result = sub_29782B4D8(a1);
      }
    }

    a2 += 2;
  }

  return result;
}

uint64_t sub_2978E2D58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2978E2E2C(a1, &v17, a2);
  v10 = *v9;
  v16 = 0;
  if (!v10)
  {
    v11 = v9;
    sub_2978E2EE8(a1, a3, a4, a5, v15);
    v12 = v17;
    v13 = sub_2977FB720(v15);
    sub_297819DD8(a1, v12, v11, v13);
    v10 = sub_2978058AC(v15);
    v16 = 1;
    sub_297819E64(v15);
  }

  sub_2977FDEF4(v15, v10);
  sub_29780EB70(&v18, v15, &v16);
  return v18;
}

void *sub_2978E2E2C(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_297818B70(a1, a2);
  v8 = sub_297819E68(a1, v7);
  if (v6)
  {
    v10 = v8;
    do
    {
      while (1)
      {
        v11 = v6;
        v12 = nullsub_1(a1, v9);
        if (!sub_2978E2F9C(v12, a3, (v6 + 4)))
        {
          break;
        }

        v6 = *v6;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_10;
        }
      }

      v13 = nullsub_1(a1, v9);
      if (!sub_2978E2FE4(v13, (v6 + 4), a3))
      {
        break;
      }

      v10 = v6 + 1;
      v6 = v6[1];
    }

    while (v6);
  }

  else
  {
    v11 = sub_297818B94(a1, v9);
    v10 = v11;
  }

LABEL_10:
  *a2 = v11;
  return v10;
}

uint64_t sub_2978E2EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = nullsub_1(a1, a2);
  v10 = sub_297819E6C(v9, 1);
  sub_297819E70(&v16, v9, 0);
  v11 = sub_297819E74(a5, v10, &v16);
  v12 = sub_2977FB720(v11);
  v14 = j_nullsub_1(v12 + 32, v13);
  sub_2978E3038(v9, v14, a2, a3, a4);
  result = sub_297819E7C(a5);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_2978E2F9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = nullsub_1(a3, a2);

  return sub_2978E302C(a1, a2, v5);
}

uint64_t sub_2978E2FE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = nullsub_1(a2, a2);

  return sub_2978E302C(a1, v5, a3);
}

void *sub_2978E3078(void *a1, uint64_t a2)
{
  *a1 = *sub_297803A7C(a2);
  sub_2978E2214(a1 + 1);
  return a1;
}

uint64_t sub_2978E30B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_297818B70(a1, a2);
  v6 = sub_297818B94(a1, v5);

  return sub_2978E3110(a1, a2, v4, v6);
}

uint64_t sub_2978E3110(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = nullsub_1(a1, a2);
      v9 = sub_2978E2F9C(v8, a2, v5 + 32);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 8;
      }

      if (v9)
      {
        a4 = v5;
      }

      v5 = *(v5 + v10);
    }

    while (v5);
  }

  sub_2977FDEF4(&v12, a4);
  return v12;
}

uint64_t sub_2978E3194(uint64_t a1, uint64_t a2)
{
  v2 = nullsub_1(a1, a2);
  sub_2977FDEF4(&v4, *v2);
  return v4;
}

__n128 sub_2978E3228(uint64_t a1, void *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  *(a1 + 24) = a3[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2978E3254(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_2978E3314(a1, a2, &v15, &v14, a3);
  v7 = *v6;
  v13 = 0;
  if (!v7)
  {
    v8 = v6;
    sub_2978E34E8(a1, a4, v12);
    v9 = v15;
    v10 = sub_2977FB720(v12);
    sub_297819DD8(a1, v9, v8, v10);
    v7 = sub_2978058AC(v12);
    v13 = 1;
    sub_297819E64(v12);
  }

  sub_2977FDEF4(v12, v7);
  sub_29780EB70(&v16, v12, &v13);
  return v16;
}

uint64_t *sub_2978E3314(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t *a5)
{
  v31 = a2;
  v9 = sub_297819670(a1, a2);
  sub_2977FDEF4(&v30, v9);
  if (!sub_297815520(&v31, &v30))
  {
    v11 = nullsub_1(a1, v10);
    v12 = sub_2978196E8(&v31);
    if ((sub_2978E2F9C(v11, a5, v12) & 1) == 0)
    {
      v19 = nullsub_1(a1, v10);
      v20 = sub_2978196E8(&v31);
      if (!sub_2978E2FE4(v19, v20, a5))
      {
        v27 = v31;
        *a3 = v31;
        *a4 = v27;
        return a4;
      }

      v21 = v31;
      sub_2978E3584(v31, 1);
      v30 = v21;
      v23 = sub_297819670(a1, v22);
      sub_2977FDEF4(&v29, v23);
      if (sub_297815520(&v30, &v29) || (v25 = nullsub_1(a1, v24), v26 = sub_2978196E8(&v30), (sub_2978E2F9C(v25, a5, v26) & 1) != 0))
      {
        if (!*(sub_2977FB720(&v31) + 8))
        {
          v18 = v31;
          goto LABEL_7;
        }

        a4 = v30;
LABEL_13:
        *a3 = a4;
        return a4;
      }

      return sub_2978E2E2C(a1, a3, a5);
    }
  }

  v30 = v31;
  v13 = sub_2978E3194(a1, v10);
  sub_2977FDEF4(&v29, v13);
  if (!sub_297815520(&v30, &v29))
  {
    v15 = nullsub_1(a1, v14);
    v16 = sub_2978E31C4(&v30);
    v17 = sub_2978196E8(v16);
    if ((sub_2978E2FE4(v15, v17, a5) & 1) == 0)
    {
      return sub_2978E2E2C(a1, a3, a5);
    }
  }

  a4 = v31;
  if (!*v31)
  {
    goto LABEL_13;
  }

  v18 = v30;
LABEL_7:
  *a3 = v18;
  return v18 + 1;
}

uint64_t sub_2978E34E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = nullsub_1(a1, a2);
  v6 = sub_297819E6C(v5, 1);
  sub_297819E70(&v12, v5, 0);
  v7 = sub_297819E74(a3, v6, &v12);
  v8 = sub_2977FB720(v7);
  v10 = j_nullsub_1(v8 + 32, v9);
  sub_2978E3648(v5, v10, a2);
  result = sub_297819E7C(a3);
  *(result + 8) = 1;
  return result;
}

uint64_t **sub_2978E35B0(uint64_t **a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_2978E35F0(a1, v3);
}

uint64_t **sub_2978E35F0(uint64_t **result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 < 0)
  {
    do
    {
      result = sub_2978E31C4(v3);
    }

    while (!__CFADD__(v2++, 1));
  }

  else if (a2)
  {
    v4 = a2 + 1;
    do
    {
      result = sub_2978E31F4(v3);
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

__n128 sub_2978E365C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2978E3678(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v3 = sub_2977FB720(&v11);
  v4 = sub_2978E3700(a1, v3);
  v6 = nullsub_1(a1, v5);
  v7 = sub_2978196E8(&v11);
  v9 = j_nullsub_1(v7, v8);
  sub_297818B8C(v6, v9);
  sub_297809C98(v6, v3, 1);
  return v4;
}

uint64_t sub_2978E3700(uint64_t a1, uint64_t a2)
{
  sub_2977FDEF4(&v11, a2);
  sub_2978E31F4(&v11);
  if (*nullsub_1(a1, v4) == a2)
  {
    v6 = v11;
    *nullsub_1(a1, v5) = v6;
  }

  v7 = sub_297806460(a1);
  --*v7;
  v9 = sub_297818B94(a1, v8);
  sub_2978301C4(*v9, a2);
  return v11;
}

uint64_t sub_2978E3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1E581A0;
  *(a1 + 8) = a2;
  sub_297829178(a1 + 16, a3);
  sub_297829180((a1 + 24));
  sub_297829180((a1 + 28));
  *(a1 + 32) = 0;
  return a1;
}

void *sub_2978E37F0(void *a1)
{
  *a1 = &unk_2A1E581A0;
  sub_297829368(a1 + 2);
  return a1;
}

uint64_t sub_2978E383C(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, _DWORD *a10, uint64_t a11)
{
  v41 = *MEMORY[0x29EDCA608];
  v38 = a2;
  v36 = a6;
  v37 = a7;
  v35 = a9;
  (*(*a1 + 64))(a1, a11);
  if (sub_297805430(&v38))
  {
    v17 = sub_2977FB720(&v36);
    v18 = sub_29782AB50(&v36);
    sub_2978E3B88(v40, v17, v18);
    sub_297829188(v39);
    if (!sub_297806914(&v35))
    {
      sub_2978E3B8C(v35, *(&v35 + 1), a10, a1[1], v39);
      sub_2978E3DA4(&v32, v39);
      v35 = v32;
    }

    v19 = sub_2977FB720(&v35);
    v20 = sub_29782AB60(&v35);
    if (v19 != v20)
    {
      v21 = v20;
      do
      {
        if (sub_297856348(v19))
        {
          sub_297829818(v40, v19);
        }

        v19 += 56;
      }

      while (v19 != v21);
    }

    v34 = v38;
    v22 = sub_29787B0D8(a10, v38);
    v38 = v22;
    v23 = sub_2977FB720((a1 + 2));
    sub_297841B1C(a10, v22, (*(v23 + 4) >> 10) & 1, &v32);
    v30 = v32;
    v31 = v33;
    sub_2978E3DA8(a1, v38, &v30, a3, a10);
    v31 = v33;
    v30 = v32;
    (*(*a1 + 16))(a1, v38, &v30, a3, a4, a5, v36, v37, a10, a11);
    v24 = v38;
    sub_2978E3F50(&v30, v40);
    sub_2978E3E5C(a1, v24, a3, v30, *(&v30 + 1), v35, *(&v35 + 1), a10);
    if (sub_297805430(&v34) && sub_29783C26C(&v34))
    {
      v29 = 0;
      v25 = v34;
      sub_2978E3F50(&v30, v40);
      sub_2978E3F54(a1, v25, a3, v30, *(&v30 + 1), v35, *(&v35 + 1), a10, &v29, 0);
    }

    sub_29782935C(v39);
    sub_2977FD134(v40);
  }

  else
  {
    v26 = v38;
    sub_297842370(v39);
    (*(*a1 + 16))(a1, v26, v39, a3, a4, a5, a6, a7, a10, a11);
  }

  *(a1 + 6) = v38;
  *(a1 + 8) = a3;
  result = (*(*a1 + 72))(a1, a11, a3);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978E3B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v21[0] = a1;
  v21[1] = a2;
  sub_2978E4BB0(v24, a3, a4, 0);
  v11 = sub_2977FB720(v21);
  v12 = sub_29782AB60(v21);
  if (v11 != v12)
  {
    v13 = v12;
    do
    {
      if (sub_29780347C(v11 + 24))
      {
        if (sub_297856348(v11 + 12))
        {
          v14 = sub_297850AD4(v11);
          v5 = v5 & 0xFFFFFFFF00000000 | *(v11 + 20);
          sub_2978E0A7C(v24, v14, *(v11 + 12), v5, 0, *(v11 + 48));
        }

        else
        {
          v7 = v7 & 0xFFFFFFFF00000000 | *(v11 + 8);
          sub_2978E0DC8(v24, *v11, v7);
        }
      }

      else if ((sub_297850C04(v11) & 1) != 0 || (LODWORD(v22) = sub_297850AD4(v11), LODWORD(v20[0]) = sub_2978478EC(v11), sub_297853F10(&v22, v20)))
      {
        v15 = *v11;
        v16 = *(v11 + 8);
        sub_2978044E8(&v22, v11 + 24);
        v6 = v6 & 0xFFFFFFFF00000000 | v16;
        sub_2978E0EC8(v24, v15, v6, v22, v23);
      }

      else
      {
        v17 = sub_297850AD4(v11);
        sub_2978044E8(&v22, v11 + 24);
        sub_2978E06F0(v24, v17, v22, v23, 0, *(v11 + 48));
      }

      v11 += 56;
    }

    while (v11 != v13);
  }

  sub_2978E4BB4(&v22, a3, a4, 0);
  if (sub_2978E22D0(&v22, v24))
  {
    sub_2978E4BB8(v20, a5);
    sub_2978E23B8(&v22, v20);
    j_j_nullsub_1_129(v20);
  }

  sub_2978E4BC0(&v22);
  result = sub_2978E4BC4(v24);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978E3DA8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_29782AFB0(a3);
  result = sub_297841544((a1 + 28), &v10);
  if ((result & 1) == 0)
  {
    *(a1 + 28) = v10;
    result = sub_2977FB720(a1 + 16);
    if (a4 != 1 || (*(result + 4) & 0x1000) != 0)
    {
      if (sub_297805430(&v10))
      {
        return sub_2978E42EC(a1, v10, a5);
      }

      else
      {
        sub_2978E4400(a1, a5);
        return sub_2978E44FC(a1, a2, a5);
      }
    }
  }

  return result;
}

uint64_t sub_2978E3E5C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v18[9] = *MEMORY[0x29EDCA608];
  sub_2978E4750(v18);
  sub_2978E4754(a2, a4, a5, v18, a8);
  (*(*a1 + 32))(a1, a2, a3, v18, a6, a7, a8);
  result = sub_2977FD134(v18);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978E3F54(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, unsigned int *a9, unsigned int a10)
{
  v49[9] = *MEMORY[0x29EDCA608];
  v48 = sub_2978E4A28(a8, a2);
  if (sub_29783C26C(&v48))
  {
    sub_2978E3F54(a1, v48, a3, a4, a5, a6, a7, a8, a9, a10 + 1);
    v18 = *a9;
  }

  else
  {
    v18 = a10 + 1;
    *a9 = a10 + 1;
  }

  if (v18 > *(sub_2977FB720(a1 + 16) + 12) && *(sub_2977FB720(a1 + 16) + 12) && ((v19 = *(sub_2977FB720(a1 + 16) + 12), v20 = (*(sub_2977FB720(a1 + 16) + 12) & 1) + (v19 >> 1), v21 = *a9, result = sub_2977FB720(a1 + 16), v23 = v21 - (*(result + 12) >> 1), v20 <= a10) ? (v24 = v23 > a10) : (v24 = 0), v24))
  {
    if (v20 == a10)
    {
      sub_2978E4A94(v47);
      v36 = sub_29781F238(v49);
      v37 = sub_297801F64(v36, "(skipping ");
      v38 = sub_297801FA0(v37, v23 - a10);
      sub_297801F64(v38, " expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)");
      v39 = sub_29781F384(v49);
      sub_2978E424C(a1, v39, v40);
      sub_29781F290(v49);
      result = sub_297801F60(v47);
    }
  }

  else
  {
    v25 = sub_29784106C(a8, a2);
    v26 = a2;
    if (v25)
    {
      v26 = sub_297841140(a8, a2);
    }

    v27 = sub_29783E4D0(a8, v26);
    sub_2978E4750(v49);
    sub_2978E4754(a2, a4, a5, v49, a8);
    sub_2978E4A98(v47);
    sub_29781F238(v46);
    v44 = sub_2978E4A9C(a2, a8, *(a1 + 8));
    v45 = v28;
    if (sub_297806914(&v44))
    {
      v29 = "expanded from here";
      v30 = v46;
    }

    else
    {
      v31 = sub_297801F64(v46, "expanded from macro '");
      v30 = sub_297801FA8(v31, v44, v45);
      v29 = "'";
    }

    sub_297801F64(v30, v29);
    v32 = sub_29781F384(v46);
    v34 = v33;
    sub_2978E3F50(v43, v49);
    sub_297804560(&v42);
    sub_2978E4BAC(&v41, 0);
    sub_2978E383C(a1, v27, 1, v32, v34, v43[0], v43[1]);
    sub_29781F290(v46);
    sub_297801F60(v47);
    result = sub_2977FD134(v49);
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978E424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297829180(&v10);
  sub_297842370(v9);
  sub_297804560(v8);
  sub_2978B47C8(&v7);
  return (*(*a1 + 16))(a1, v10, v9, 1, a2, a3, v8[0], v8[1], 0, v7);
}

uint64_t sub_2978E42EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v16 = a2;
  if (sub_297829730(&v16))
  {
    return sub_2978E4400(a1, a3);
  }

  v6 = v16;
  v7 = sub_2977FB720(a1 + 16);
  sub_297841B1C(a3, v6, (*(v7 + 4) >> 10) & 1, &v14);
  result = sub_29783E4C0(&v14);
  if ((result & 1) == 0)
  {
    sub_2978E456C(a3, v16, &v11);
    if (sub_297805430(&v11))
    {
      return sub_2978E461C(a1, v11, v12, v13, a3);
    }

    else
    {
      v8 = sub_29782AFB0(&v14);
      sub_2978E42EC(a1, v8, a3);
      v9 = v14;
      v10 = v15;
      return (*(*a1 + 40))(a1, v16, &v9, a3);
    }
  }

  return result;
}

uint64_t sub_2978E4400(uint64_t a1, uint64_t a2)
{
  v14[0] = sub_2978E4710(a2);
  v14[1] = v3;
  result = sub_2977FB7B8(v14);
  v5 = result;
  if (result)
  {
    v6 = 0;
    do
    {
      v7 = sub_2978E4740(v14, v6);
      v8 = sub_2977FB7B8(v7 + 24);
      v9 = *(sub_2978E4740(v14, v6) + 24);
      v10 = sub_2977FB720(a1 + 16);
      sub_297841B1C(v8, v9, (*(v10 + 4) >> 10) & 1, v13);
      v11 = sub_2978E4740(v14, v6);
      sub_2978044E8(v12, v11);
      result = (*(*a1 + 56))(a1, v9, v13, v12[0], v12[1], v8);
      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2978E44FC(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a2;
  if (sub_297829730(&v9))
  {
    return sub_2978E4400(a1, a3);
  }

  sub_2978E456C(a3, v9, &v6);
  return sub_2978E461C(a1, v6, v7, v8, a3);
}

_DWORD *sub_2978E456C@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  if (sub_29783E548(a1, a2) < -1)
  {
    v7 = *(**(a1 + 528) + 24);

    return v7();
  }

  else
  {
    sub_297829180(&v8);
    v9[0] = sub_2978E4F2C(&v8, &byte_2978FC3E5);
    v9[1] = v5;
    return sub_2978E4F5C(a3, v9);
  }
}

uint64_t sub_2978E461C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  result = sub_297829730(&v19);
  if ((result & 1) == 0)
  {
    v10 = v19;
    v11 = sub_2977FB720(a1 + 16);
    sub_297841B1C(a5, v10, (*(v11 + 4) >> 10) & 1, &v17);
    result = sub_29783E4C0(&v17);
    if ((result & 1) == 0)
    {
      sub_2978E456C(a5, v19, &v14);
      sub_2978E461C(a1, v14, v15, v16, a5);
      v12 = v17;
      v13 = v18;
      return (*(*a1 + 48))(a1, v19, &v12, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sub_2978E4754(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v23[0] = a2;
  v23[1] = a3;
  v22 = sub_29783E548(a5, a1);
  v7 = sub_2977FB720(v23);
  result = sub_29782AB50(v23);
  if (v7 != result)
  {
    v9 = result;
    do
    {
      v21 = sub_297850AD4(v7);
      v20 = sub_2978478EC(v7);
      v10 = sub_297850C04(v7);
      v19 = sub_29783E548(a5, v21);
      v18 = sub_29783E548(a5, v20);
      sub_2978E4FA8(v24, 0);
      if (sub_29783C26C(&v21))
      {
        do
        {
          if (!sub_2978435D4(&v19, &v18))
          {
            break;
          }

          v11 = sub_2978E4FAC(v24, &v19);
          v12 = v21;
          *v11 = v21;
          v21 = sub_297841140(a5, v12);
          v19 = sub_29783E548(a5, v21);
        }

        while ((sub_29783C26C(&v21) & 1) != 0);
      }

      if (sub_2978435D4(&v19, &v18))
      {
        if (sub_29783C26C(&v20))
        {
          do
          {
            if (sub_2978E4FC8(v24, &v18))
            {
              break;
            }

            v20 = sub_297841140(a5, v20) >> 32;
            v18 = sub_29783E548(a5, v20);
          }

          while ((sub_29783C26C(&v20) & 1) != 0);
        }

        if (sub_29783C26C(&v20))
        {
          v21 = *sub_2978E4FAC(v24, &v18);
          v19 = v18;
        }
      }

      while (sub_29783C26C(&v21) && sub_2978435D4(&v19, &v22))
      {
        if (sub_29784106C(a5, v21))
        {
          v21 = sub_2978410C8(a5, v21);
          LODWORD(v13) = sub_2978410C8(a5, v20);
        }

        else
        {
          v21 = sub_297841140(a5, v21);
          v13 = sub_297841140(a5, v20) >> 32;
        }

        v20 = v13;
        v19 = sub_29783E548(a5, v21);
        v17[0] = sub_29783E548(a5, v20);
        if (sub_2978435D4(&v19, v17))
        {
          sub_297829180(v17);
          v14 = v17[0];
          v20 = v17[0];
          v21 = v17[0];
          goto LABEL_20;
        }
      }

      v14 = v21;
LABEL_20:
      v21 = sub_29783E4D0(a5, v14);
      v20 = sub_29783E4D0(a5, v20);
      sub_297853514(&v16, v21, v20);
      sub_297819E70(v17, v16, v10);
      sub_297829818(a4, v17);
      result = sub_2978E4FF0(v24);
      v7 += 3;
    }

    while (v7 != v9);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978E4A28(_DWORD *a1, unsigned int a2)
{
  v6 = a2;
  v3 = sub_29783C26C(&v6);
  v4 = v6;
  if (v3)
  {
    if (sub_29784106C(a1, v6))
    {
      return sub_2978410C8(a1, v6);
    }

    else
    {
      return sub_297841140(a1, v6);
    }
  }

  return v4;
}

uint64_t sub_2978E4A9C(int a1, _DWORD *a2, uint64_t a3)
{
  v5 = a1;
  if (sub_29784106C(a2, a1))
  {
    do
    {
      v5 = sub_297841140(a2, v5);
    }

    while ((sub_29784106C(a2, v5) & 1) != 0);
  }

  v6 = sub_29783E4D0(a2, v5);
  v7 = sub_29783E548(a2, v6);
  if (sub_2978606D8(a2, v7))
  {
    v8 = sub_297841140(a2, v5);
    v9 = sub_29783E4D0(a2, v8);
    v10 = sub_29783E664(a2, v9);
    v11 = v10;
    v12 = HIDWORD(v10);
    v13 = sub_29784FF88(v9, a2, a3);
    v16[0] = sub_297840A24(a2, v11, 0);
    v16[1] = v14;
    return sub_297805EA4(v16, v12, v13);
  }

  else
  {
    sub_297804560(&v17);
    return v17;
  }
}

uint64_t sub_2978E4BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  sub_297829188(a1 + 40);
  sub_297817C28((a1 + 512));
  return a1;
}

uint64_t *sub_2978E4C0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  sub_297817C2C((a1 + 3), a2);
  sub_29782AD88(a1 + 6, 0);
  sub_297817C28(a1 + 9);
  return a1;
}

void *sub_2978E4C54(void *a1, uint64_t a2)
{
  result = sub_2978E4C94(a1);
  *result = &unk_2A1E58200;
  result[1] = a2;
  return result;
}

void sub_2978E4CB4()
{
  v0 = j_j_nullsub_1_129();

  j__free(v0);
}

uint64_t sub_2978E4CDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  sub_297852794(a2, a3, a4, 0, v6);
  sub_2978E4D88(v4, v6);
  return sub_29782AC18(v6);
}

uint64_t sub_2978E4D30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  sub_297854348(a2, a3, a4, a5, v7);
  sub_2978E4D88(v5, v7);
  return sub_29782AC18(v7);
}

uint64_t sub_2978E4D88(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_29782BBE4(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_29782BD84(v4, a2);
  v5 = sub_2977FB7B8(a1) + 56;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_2978E4DF8(uint64_t a1)
{
  sub_297818154(a1 + 72);
  sub_2978E4E34(a1 + 48);
  sub_2978E4E38(a1 + 24);
  return a1;
}

void **sub_2978E4E3C(void **a1)
{
  sub_2978E4E6C(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_2978E4E6C(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v6 = sub_29782AF5C();
    v5 = sub_2978E2A8C();
    v3 = sub_297803A7C(a1);
    result = sub_29782AF60(a1);
    if (v3 != result)
    {
      v4 = result;
      do
      {
        result = sub_29782B07C(v3, &v6);
        if ((result & 1) == 0)
        {
          result = sub_29782B07C(v3, &v5);
        }

        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  return result;
}

uint64_t sub_2978E4EF8(uint64_t a1)
{
  sub_297818154(a1 + 512);
  sub_2977FD134(a1 + 40);
  return a1;
}

uint64_t sub_2978E4F64(uint64_t result, _DWORD *a2, uint64_t a3)
{
  *result = *a2;
  *(result + 8) = a3;
  return result;
}

_DWORD *sub_2978E4F74(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  sub_2977FB7B4(a1 + 8, *(a2 + 8));
  return a1;
}

uint64_t sub_2978E4FF4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_2978E5028(v4, v2);
  return a1;
}

uint64_t sub_2978E5028(int *a1, unsigned int a2)
{
  v3 = *a1;
  *a1 |= 1u;
  if (a2 >= 5)
  {
    *a1 = v3 & 0xFFFFFFFE;
    v5 = sub_29784729C(a1);
    *v5 = sub_2978472A0(a1, a2);
    v5[1] = v6;
  }

  return sub_2978E50A0(a1);
}

uint64_t sub_2978E50A0(int *a1)
{
  sub_2978473C8(a1, 0);
  sub_2978473CC(a1, 0);
  v2 = sub_297845228();
  v3 = sub_2978E519C(a1);
  result = sub_2978E51A0(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 8) >> 3;
    v7 = vdupq_n_s64(v6);
    v8 = (v6 + 4) & 0x3FFFFFFFFFFFFFFCLL;
    v9 = (v3 + 16);
    do
    {
      v10 = vdupq_n_s64(v5);
      v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C70)));
      if (vuzp1_s16(v11, *v7.i8).u8[0])
      {
        *(v9 - 4) = v2;
      }

      if (vuzp1_s16(v11, *&v7).i8[2])
      {
        *(v9 - 2) = v2;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C80)))).i32[1])
      {
        *v9 = v2;
        v9[2] = v2;
      }

      v5 += 4;
      v9 += 8;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t sub_2978E51D8(_BYTE *a1)
{
  if (*a1)
  {
    return 4;
  }

  else
  {
    return *(sub_297819E7C(a1) + 8);
  }
}

int *sub_2978E5208(int *a1, unsigned int *a2)
{
  v6 = 0;
  if (sub_2978E5268(a1, a2, &v6))
  {
    return v6;
  }

  sub_297829180(&v5);
  return sub_2978E52A4(a1, a2, &v5, v6);
}

uint64_t sub_2978E5268(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = 0;
  result = sub_2978E52E0(a1, a2, &v5);
  *a3 = v5;
  return result;
}

int *sub_2978E52A4(int *a1, unsigned int *a2, int *a3, int *a4)
{
  result = sub_2978E540C(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_2978E52E0(uint64_t a1, unsigned int *a2, int **a3)
{
  v6 = sub_297847420(a1);
  result = sub_2978E51D4(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_297845228();
    v10 = sub_2978456FC();
    v11 = v8 - 1;
    v12 = sub_297846974(a2) & (v8 - 1);
    v13 = (v6 + 8 * v12);
    if (sub_297845700(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (!sub_297845700(*v13, v9))
      {
        if (sub_297845700(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 8 * v12);
        ++v15;
        if (sub_297845700(*a2, *v13))
        {
          result = 1;
          goto LABEL_13;
        }
      }

      result = 0;
      if (v14)
      {
        v13 = v14;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  *a3 = v13;
  return result;
}

int *sub_2978E540C(int *a1, unsigned int *a2, int *a3)
{
  v10 = a3;
  v5 = sub_2978478E4(a1);
  v6 = sub_2978E51D4(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978E54FC(a1, (2 * v6));
    sub_2978E5268(a1, a2, &v10);
    sub_2978E51D4(a1);
  }

  else if (v6 + ~v5 - sub_2978478EC(a1) <= v6 >> 3)
  {
    sub_2978E54FC(a1, v7);
    sub_2978E5268(a1, a2, &v10);
  }

  sub_2978478F0(a1);
  v8 = sub_297845228();
  if (!sub_297845700(*v10, v8))
  {
    sub_29784792C(a1);
  }

  return v10;
}

void sub_2978E5500(int *a1, unsigned int a2)
{
  v2 = a2;
  v19 = *MEMORY[0x29EDCA608];
  if (a2 >= 4)
  {
    v18[0] = 64;
    v17 = sub_2977FB4FC(a2 - 1);
    v2 = *sub_2977FF288(v18, &v17);
  }

  if (*a1)
  {
    if (v2 >= 4)
    {
      v7 = sub_297845228();
      v8 = sub_2978456FC();
      v9 = sub_297847420(a1);
      v10 = v18;
      v11 = 32;
      do
      {
        if (!sub_297845700(*v9, v7) && !sub_297845700(*v9, v8))
        {
          *v10 = *v9;
          v10[1] = v9[1];
          v10 += 2;
        }

        v9 += 2;
        v11 -= 8;
      }

      while (v11);
      *a1 &= ~1u;
      v12 = sub_29784729C(a1);
      *v12 = sub_2978472A0(a1, v2);
      v12[1] = v13;
      sub_2978E56B8(a1, v18, v10);
    }
  }

  else
  {
    v4 = sub_29784729C(a1);
    v5 = *v4;
    v6 = *(v4 + 8);
    sub_29784729C(a1);
    if (v2 > 4)
    {
      v14 = sub_29784729C(a1);
      *v14 = sub_2978472A0(a1, v2);
      v14[1] = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    sub_2978E56B8(a1, v5, &v5[2 * v6]);
    j__free(v5);
  }

  v16 = *MEMORY[0x29EDCA608];
}

int *sub_2978E56B8(int *a1, int *a2, int *a3)
{
  sub_2978E50A0(a1);
  v6 = sub_297845228();
  result = sub_2978456FC();
  if (a2 != a3)
  {
    v8 = result;
    do
    {
      result = sub_297845700(*a2, v6);
      if ((result & 1) == 0)
      {
        result = sub_297845700(*a2, v8);
        if ((result & 1) == 0)
        {
          v10 = 0;
          sub_2978E5268(a1, a2, &v10);
          v9 = v10;
          *v10 = *a2;
          v9[1] = a2[1];
          result = sub_2978478F0(a1);
        }
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

_BYTE *sub_2978E5774(_BYTE *a1)
{
  sub_2978E57A4(a1);
  sub_29784754C(a1);
  return a1;
}

uint64_t sub_2978E57A4(uint64_t a1)
{
  result = sub_2978E51D4(a1);
  if (result)
  {
    v3 = sub_297845228();
    v4 = sub_2978456FC();
    v5 = sub_2978E519C(a1);
    result = sub_2978E51A0(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297845700(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297845700(*v5, v4);
        }

        v5 += 2;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t *sub_2978E5834(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29782B90C(a2);
  return a1;
}

uint64_t *sub_2978E5874(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29782B950(a2);
  return a1;
}

uint64_t sub_2978E58B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29782BE20(a1, 0x14u);
  sub_2978E58FC(v6, a2, a3);
  return a1;
}

uint64_t sub_2978E58FC(const void **a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29782C6C8(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > 0xAAAAAAAAAAAAAAABLL * ((v7 - sub_2977FB7B8(a1)) >> 2))
  {
    v8 = sub_29782B90C(a1);
    sub_29782BBD4(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_2978E59C4(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 12 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_2978E59E0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v10 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      v5 = v9;
      v6 = *(v4 + 2);
      v7 = *v4;
      v4 = (v4 + 12);
      *v9 = v7;
      *(v5 + 2) = v6;
      v9 = (v5 + 12);
      v10 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v11, &v10, &v9);
  return v11;
}

uint64_t sub_2978E5A80(uint64_t a1, uint64_t a2)
{
  v3 = j_nullsub_1(a2, a2);

  return sub_2978B4BE8(a1, v3);
}

void *sub_2978E5AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2978E3794(a1, a3, a4);
  *result = &unk_2A1E58238;
  result[5] = a2;
  return result;
}

void sub_2978E5B18()
{
  v0 = sub_2978E5B14();

  j__free(v0);
}

uint64_t sub_2978E5B40(uint64_t *a1, unsigned int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a2;
  v16 = sub_2978E5CC0(a1[5]);
  if (sub_297805430(&v27))
  {
    v25 = *a3;
    v26 = *(a3 + 2);
    (*(*a1 + 24))(a1, v27, &v25, a4, a7, a8, a9);
  }

  if ((*(sub_2977FB720((a1 + 2)) + 5) & 0x80) != 0)
  {
    (*(*a1[5] + 24))(a1[5]);
  }

  v17 = a1[5];
  v18 = (*(sub_2977FB720((a1 + 2)) + 4) >> 15) & 1;
  v19 = sub_2977FB720((a1 + 2));
  sub_2978E5D14(v17, a4, v18, (*(v19 + 4) >> 19) & 1);
  v20 = a1[5];
  v21 = sub_2978E5CC0(v20) - v16;
  v22 = *(sub_2977FB720((a1 + 2)) + 28);
  v23 = sub_2977FB720((a1 + 2));
  return sub_2978E5F44(v20, a4 == 1, a5, a6, v21, v22, (*(v23 + 4) >> 15) & 1);
}

void **sub_2978E5D14(uint64_t a1, int a2, int a3, int a4)
{
  if (a3)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        (*(*a1 + 16))(a1, 0, 1, 0);
        v7 = "note";
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_16;
        }

        (*(*a1 + 16))(a1, 4, 1, 0);
        v7 = "remark";
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          (*(*a1 + 16))(a1, 5, 1, 0);
          v7 = "warning";
          break;
        case 4:
          (*(*a1 + 16))(a1, 1, 1, 0);
          v7 = "error";
          break;
        case 5:
          (*(*a1 + 16))(a1, 1, 1, 0);
          v7 = "fatal error";
          break;
        default:
          goto LABEL_16;
      }
    }
  }

  else
  {
    if ((a2 - 1) > 4)
    {
      goto LABEL_16;
    }

    v7 = (&off_29EE816E8)[a2 - 1];
  }

  sub_297801F64(a1, v7);
LABEL_16:
  if (a4)
  {
    sub_297801F64(a1, "(clang)");
  }

  result = sub_297801F64(a1, ": ");
  if (a3)
  {
    v9 = *(*a1 + 24);

    return v9(a1);
  }

  return result;
}

uint64_t sub_2978E5F44(void **a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v13 = a7 ^ 1 | a2;
  if ((v13 & 1) == 0)
  {
    (*(*a1 + 2))(a1, 8, 1, 0);
  }

  if (a6)
  {
    sub_2978E6064(a1, a3, a4, a6, a5, v13 ^ 1);
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = 1;
  sub_2978E624C(a1, a3, a4, &v15, v13 ^ 1);
  if (a7)
  {
LABEL_5:
    (*(*a1 + 3))(a1);
  }

LABEL_6:

  return sub_2978028D8(a1, 10);
}

uint64_t sub_2978E6064(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v25 = a2;
  v26 = a3;
  v23[0] = sub_2978044F0(&v25, 0xAu, 0);
  v24 = sub_2977FB7B8(&v25);
  v10 = *sub_297802578(v23, &v24);
  LOBYTE(v24) = 1;
  sub_2978577EC(v23);
  sub_2978E8294(v23, 6u, 32);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = sub_2978E82BC(v11, v25, v26, v10);
      if (v12 == v10)
      {
        break;
      }

      v13 = v12;
      v11 = sub_2978E832C(v12, v25, v26, v10, a5, a4);
      v14 = v11 - v13;
      if (v14 + a5 >= a4)
      {
        sub_2978028D8(a1, 10);
        v15 = sub_2977FD108(v23, 0);
        sub_29781E2C0(a1, v15, 6uLL);
        v16 = sub_297805EA4(&v25, v13, v14);
        sub_2978E624C(a1, v16, v17, &v24, a6);
        a5 = v14 + 6;
      }

      else
      {
        if (v13)
        {
          sub_2978028D8(a1, 32);
          a5 += v14 + 1;
        }

        else
        {
          a5 += v14;
        }

        v18 = sub_297805EA4(&v25, v13, v14);
        sub_2978E624C(a1, v18, v19, &v24, a6);
      }
    }

    while (v11 < v10);
  }

  v20 = sub_297805EA4(&v25, v10, 0xFFFFFFFFFFFFFFFFLL);
  sub_2978E624C(a1, v20, v21, &v24, a6);
  return sub_297801F60(v23);
}

void **sub_2978E624C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5)
{
  v15 = a2;
  v16 = a3;
  while (1)
  {
    v8 = sub_2978044F0(&v15, 0x7Fu, 0);
    v9 = sub_297804564(&v15, 0, v8);
    result = sub_297801FA8(a1, v9, v10);
    if (v8 == -1)
    {
      return result;
    }

    v15 = sub_297805EA4(&v15, v8 + 1, 0xFFFFFFFFFFFFFFFFLL);
    v16 = v12;
    v13 = *a1;
    if (*a4)
    {
      v14 = 6;
    }

    else
    {
      (*(*a1 + 24))(a1);
      if (!a5)
      {
        goto LABEL_8;
      }

      v13 = *a1;
      v14 = 8;
    }

    (*(v13 + 16))(a1, v14, 1, 0);
LABEL_8:
    *a4 ^= 1u;
  }
}

uint64_t sub_2978E6388(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v56[0] = a5;
  v56[1] = a6;
  if (sub_29783E4C0(a3))
  {
    LODWORD(v52) = sub_29783E548(a7, a2);
    result = sub_297829730(&v52);
    if ((result & 1) == 0)
    {
      result = sub_2978606D8(a7, v52);
      if (result)
      {
        v12 = result;
        result = sub_29782E6C8(result);
        if (result)
        {
          v13 = *(a1 + 40);
          v14 = sub_2977FB720(v12);
          sub_297801F64(v13, v14);
          if (sub_2978E6804(v12))
          {
            sub_297801F64(*(a1 + 40), " (in PCH)");
          }

          return sub_297801F64(*(a1 + 40), ": ");
        }
      }
    }

    return result;
  }

  v15 = sub_29782B550(a3);
  result = sub_2977FB720(a1 + 16);
  if ((*(result + 4) & 0x20) == 0)
  {
    return result;
  }

  if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
  {
    (*(**(a1 + 40) + 16))(*(a1 + 40), 8, 1, 0);
  }

  v16 = *(a1 + 40);
  v17 = sub_2977FB720(a3);
  sub_297801F64(v16, v17);
  v18 = sub_2977FB720(a1 + 16);
  v19 = sub_2978E680C(v18);
  switch(v19)
  {
    case 2:
      v22 = sub_297801F64(*(a1 + 40), " +");
      goto LABEL_18;
    case 1:
      v20 = *(a1 + 40);
      v21 = 40;
      goto LABEL_16;
    case 0:
      v20 = *(a1 + 40);
      v21 = 58;
LABEL_16:
      v22 = sub_2978028D8(v20, v21);
LABEL_18:
      sub_297801FA0(v22, v15);
      break;
  }

  if ((*(sub_2977FB720(a1 + 16) + 4) & 0x10) != 0)
  {
    v23 = sub_29782B694(a3);
    if (v23)
    {
      v24 = v23;
      v25 = sub_2977FB720(a1 + 16);
      v26 = sub_2978E680C(v25);
      v27 = *(a1 + 40);
      if (v26 == 1)
      {
        sub_2978028D8(v27, 44);
        v24 -= (*(*(a1 + 8) + 48) - 0x100000000) < 0xA21FE7F00000000;
      }

      else
      {
        sub_2978028D8(v27, 58);
      }

      sub_297801FA0(*(a1 + 40), v24);
    }
  }

  v28 = sub_2977FB720(a1 + 16);
  v29 = sub_2978E680C(v28);
  if (v29 == 2)
  {
LABEL_28:
    sub_2978028D8(*(a1 + 40), 58);
    goto LABEL_30;
  }

  if (v29 != 1)
  {
    if (v29)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_297801F64(*(a1 + 40), ") : ");
LABEL_30:
  if ((*(sub_2977FB720(a1 + 16) + 5) & 1) != 0 && !sub_297806914(v56))
  {
    v30 = sub_29782CF94(a7, a2);
    v55 = sub_29783E548(a7, v30);
    v31 = sub_2977FB720(v56);
    v32 = sub_29782AB50(v56);
    if (v31 != v32)
    {
      v33 = v32;
      v34 = 0;
      do
      {
        if (sub_297856348(v31))
        {
          v35 = sub_297850AD4(v31);
          v54 = sub_29782CF94(a7, v35);
          v36 = sub_2978478EC(v31);
          v53 = sub_29782CF94(a7, v36);
          if (sub_297841544(&v54, &v53))
          {
            LODWORD(v52) = sub_2978478EC(v31);
            if (sub_29783C26C(&v52))
            {
              v37 = sub_2978478EC(v31);
              v53 = sub_297841340(a7, v37) >> 32;
            }
          }

          v52 = sub_29783E664(a7, v54);
          v51 = sub_29783E664(a7, v53);
          if (!sub_2978435D4(&v52, &v55) && !sub_2978435D4(&v51, &v55))
          {
            if (sub_297850C04(v31))
            {
              v38 = sub_29784FF88(v53, a7, *(a1 + 8));
            }

            else
            {
              v38 = 0;
            }

            v39 = sub_2978028D8(*(a1 + 40), 123);
            v40 = sub_297841D38(a7, v52, SHIDWORD(v52), 0);
            v41 = sub_297801FA0(v39, v40);
            v42 = sub_2978028D8(v41, 58);
            v43 = sub_297841944(a7, v52, HIDWORD(v52), 0);
            v44 = sub_297801FA0(v42, v43);
            v45 = sub_2978028D8(v44, 45);
            v46 = sub_297841D38(a7, v51, SHIDWORD(v51), 0);
            v47 = sub_297801FA0(v45, v46);
            v48 = sub_2978028D8(v47, 58);
            v49 = sub_297841944(a7, v51, HIDWORD(v51), 0);
            v50 = sub_297801FA0(v48, v49 + v38);
            sub_2978028D8(v50, 125);
            v34 = 1;
          }
        }

        v31 += 3;
      }

      while (v31 != v33);
      if (v34)
      {
        sub_2978028D8(*(a1 + 40), 58);
      }
    }
  }

  return sub_2978028D8(*(a1 + 40), 32);
}

void **sub_2978E6818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 16);
  v6 = *(a1 + 40);
  if ((*(v5 + 4) & 0x20) != 0)
  {
    v8 = sub_297801F64(v6, "In file included from ");
    v9 = sub_2977FB720(a3);
    v10 = sub_297801F64(v8, v9);
    v11 = sub_2978028D8(v10, 58);
    v12 = sub_29782B550(a3);
    v6 = sub_297801FA0(v11, v12);
    v7 = ":\n";
  }

  else
  {
    v7 = "In included file:\n";
  }

  return sub_297801F64(v6, v7);
}

void **sub_2978E68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2977FB720(a1 + 16);
  v10 = *(a1 + 40);
  if ((*(v9 + 4) & 0x20) != 0)
  {
    v14 = sub_297801F64(v10, "In module '");
    v15 = sub_297801FA8(v14, a4, a5);
    v16 = sub_297801F64(v15, "' imported from ");
    v17 = sub_2977FB720(a3);
    v18 = sub_297801F64(v16, v17);
    v19 = sub_2978028D8(v18, 58);
    v20 = sub_29782B550(a3);
    v12 = sub_297801FA0(v19, v20);
    v13 = ":\n";
  }

  else
  {
    v11 = sub_297801F64(v10, "In module ");
    v12 = sub_297801FA8(v11, a4, a5);
    v13 = "':\n";
  }

  return sub_297801F64(v12, v13);
}

void **sub_2978E69A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(sub_2977FB720(a1 + 16) + 4) & 0x20) != 0 && sub_2977FB720(a3))
  {
    v9 = sub_297801F64(*(a1 + 40), "While building module '");
    v10 = sub_297801FA8(v9, a4, a5);
    v11 = sub_297801F64(v10, "' imported from ");
    v12 = sub_2977FB720(a3);
    v13 = sub_297801F64(v11, v12);
    v14 = sub_2978028D8(v13, 58);
    v15 = sub_29782B550(a3);
    v16 = sub_297801FA0(v14, v15);
    v17 = ":\n";
  }

  else
  {
    v18 = sub_297801F64(*(a1 + 40), "While building module '");
    v16 = sub_297801FA8(v18, a4, a5);
    v17 = "':\n";
  }

  return sub_297801F64(v16, v17);
}

void sub_2978E6A90(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v51 = a2;
  v49 = a5;
  v50 = a6;
  if ((*(sub_2977FB720(a1 + 16) + 4) & 0x40) != 0 && (!sub_297841544(&v51, (a1 + 24)) || !sub_297806904(a4) || !sub_297806914(&v49) || a3 != 1 && *(a1 + 32) == 1))
  {
    v11 = sub_29783E664(a7, v51);
    v48 = 0;
    v12 = v11;
    v45[0] = sub_297840A24(a7, v11, &v48);
    v45[1] = v13;
    v14 = sub_2977FB720(v45);
    if ((v48 & 1) == 0)
    {
      v15 = v14;
      v16 = HIDWORD(v11);
      v17 = sub_297841D38(a7, v11, SHIDWORD(v11), 0);
      v18 = sub_297841944(a7, v12, v16, 0);
      if (v18 <= 0x1000)
      {
        v19 = v18;
        v20 = (v15 + v16);
        v21 = v15 + v16 - v18;
        for (i = v18 - 1; ; ++i)
        {
          v23 = *v20;
          v24 = v23 > 0xD;
          v25 = (1 << v23) & 0x2401;
          if (!v24 && v25 != 0)
          {
            break;
          }

          ++v20;
        }

        if (i <= 0x1000)
        {
          sub_297809454(&v47, v21 + 1, v20);
          sub_29780BCFC(&v46, i);
          sub_2978044E8(&v44, &v47);
          v27 = sub_2977FB720(a1 + 16);
          sub_2978E6F58(v45, v44.__r_.__value_.__r.__words[0], v44.__r_.__value_.__l.__size_, *(v27 + 24));
          v28 = sub_2977FB720(a4);
          v29 = sub_2977FB7B8(a4);
          if (v28 != v29)
          {
            v30 = v29;
            do
            {
              sub_2978E6F5C(v28, v17, v12, v45, &v46, a7, *(a1 + 8));
              v28 += 3;
            }

            while (v28 != v30);
          }

          v31 = sub_2978E72B0(v45, v19 - 1);
          v32 = sub_2978032A4(&v46);
          v33 = v31 + 1;
          if (v32 < v33)
          {
            std::string::resize(&v46, v33, 32);
          }

          *sub_29780327C(&v46, v31) = 94;
          v34 = v49;
          v35 = v50;
          v36 = sub_2977FB720(a1 + 16);
          sub_2978E7300(v17, v45, v34, v35, a7, v36, &v44);
          v37 = *(sub_2977FB720(a1 + 16) + 28);
          if (v37)
          {
            sub_2978E7508(&v47, &v46, &v44, v37, v45);
          }

          if (*(sub_2977FB720(a1 + 16) + 5))
          {
            sub_2978E7A6C(32, &v47, &v43);
            sub_2978046C4(&v47, &v43);
            std::string::~string(&v43);
            sub_2978E7A6C(32, &v46, &v43);
            sub_2978046C4(&v46, &v43);
            std::string::~string(&v43);
          }

          while (1)
          {
            v38 = sub_2978032A4(&v46);
            if (*sub_29780327C(&v46, v38 - 1) != 32)
            {
              break;
            }

            v41 = sub_2978073D8(&v46);
            v42 = sub_29787AA38(&v41, 1);
            sub_297809B4C(&v43, &v42);
            sub_29787A96C(&v46, v43.__r_.__value_.__l.__data_);
          }

          sub_2978044E8(&v43, &v47);
          sub_2978E7B14(a1, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
          if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
          {
            (*(**(a1 + 40) + 16))(*(a1 + 40), 2, 1, 0);
          }

          v39 = sub_29780BB74(*(a1 + 40), &v46);
          sub_2978028D8(v39, 10);
          if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
          {
            (*(**(a1 + 40) + 24))(*(a1 + 40));
          }

          if (!sub_29780347C(&v44))
          {
            if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
            {
              (*(**(a1 + 40) + 16))(*(a1 + 40), 2, 0, 0);
            }

            if (*(sub_2977FB720(a1 + 16) + 5))
            {
              sub_2978028D8(*(a1 + 40), 32);
            }

            v40 = sub_29780BB74(*(a1 + 40), &v44);
            sub_2978028D8(v40, 10);
            if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
            {
              (*(**(a1 + 40) + 24))(*(a1 + 40));
            }
          }

          sub_2978E7D20(a1, v49, v50, a7);
          std::string::~string(&v44);
          sub_2978E7FD8(v45);
          std::string::~string(&v46);
          std::string::~string(&v47);
        }
      }
    }
  }
}

uint64_t sub_2978E6F5C(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, std::string *a5, _DWORD *a6, uint64_t a7)
{
  v42 = a3;
  result = sub_297856348(a1);
  if (result)
  {
    v14 = sub_297850AD4(a1);
    v15 = sub_2978478EC(a1);
    result = sub_29784213C(a6, v14, 0);
    if (result <= a2)
    {
      v16 = result;
      LODWORD(v40) = sub_29783E548(a6, v14);
      result = sub_2978435D4(&v40, &v42);
      if ((result & 1) == 0)
      {
        result = sub_29784213C(a6, v15, 0);
        if (result >= a2)
        {
          v17 = result;
          LODWORD(v40) = sub_29783E548(a6, v15);
          result = sub_2978435D4(&v40, &v42);
          if ((result & 1) == 0)
          {
            if (v16 == a2)
            {
              v18 = sub_297841A9C(a6, v14, 0);
              if (v18)
              {
                v19 = v18 - 1;
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }

            v40 = sub_297830E08(a4);
            v41 = v20;
            v21 = sub_2977FB7B8(&v40);
            if (v17 == a2)
            {
              v22 = sub_297841A9C(a6, v15, 0);
              if (v22)
              {
                v23 = v22 - 1;
                if (sub_297850C04(a1))
                {
                  v23 += sub_29784FF88(v15, a6, a7);
                }
              }

              else
              {
                v23 = sub_2978032A4(a5);
              }
            }

            else
            {
              v23 = v21;
            }

            if (sub_297850C04(a1))
            {
              v40 = sub_297830E08(a4);
              v41 = v24;
              if (sub_2977FB7B8(&v40) > v19)
              {
                v25 = v19;
                do
                {
                  v38 = sub_297830E08(a4);
                  v39 = v26;
                  if (sub_297803A20(&v38, v25) != 32)
                  {
                    v37[0] = sub_297830E08(a4);
                    v37[1] = v27;
                    if (sub_297803A20(v37, v25) != 9)
                    {
                      break;
                    }
                  }

                  v19 = sub_2978E89C0(a4, v19);
                  v25 = v19;
                  v40 = sub_297830E08(a4);
                  v41 = v28;
                }

                while (sub_2977FB7B8(&v40) > v19);
              }

              v40 = sub_297830E08(a4);
              v41 = v29;
              if (sub_2977FB7B8(&v40) < v23)
              {
                v40 = sub_297830E08(a4);
                v41 = v30;
                v23 = sub_2977FB7B8(&v40);
              }

              if (v23)
              {
                while (1)
                {
                  v40 = sub_297830E08(a4);
                  v41 = v31;
                  if (sub_297803A20(&v40, v23 - 1) != 32)
                  {
                    v38 = sub_297830E08(a4);
                    v39 = v32;
                    if (sub_297803A20(&v38, v23 - 1) != 9)
                    {
                      break;
                    }
                  }

                  v23 = sub_2978E8A00(a4, v23);
                  if (!v23)
                  {
                    goto LABEL_29;
                  }
                }
              }

              else
              {
LABEL_29:
                v23 = 0;
              }
            }

            v33 = sub_2978E72B0(a4, v19);
            v34 = sub_2978E72B0(a4, v23);
            if (sub_2978032A4(a5) < v34)
            {
              std::string::resize(a5, v34, 32);
            }

            v40 = sub_29780739C(a5);
            v35 = sub_29780C7E0(&v40, v33);
            v38 = sub_29780739C(a5);
            v36 = sub_29780C7E0(&v38, v34);
            LOBYTE(v37[0]) = 126;
            return sub_2978E8A40(v35, v36, v37);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978E72B0(uint64_t a1, unsigned int a2)
{
  do
  {
    v4 = sub_2978297C0(a1 + 24, a2--);
  }

  while (*v4 == -1);
  return *sub_2978297C0(a1 + 24, a2 + 1);
}

_BYTE *sub_2978E7300@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v30[0] = a3;
  v30[1] = a4;
  sub_297802744(a7);
  result = sub_297806914(v30);
  if ((result & 1) != 0 || (*(a6 + 4) & 0x80) == 0)
  {
    return result;
  }

  v27 = a6;
  v13 = sub_2977FB720(v30);
  v14 = sub_29782AB60(v30);
  if (v13 == v14)
  {
    return sub_2978E8B7C(a7, *(v27 + 24));
  }

  v15 = v14;
  v16 = 0;
  while (sub_29780347C((v13 + 6)))
  {
LABEL_14:
    v13 += 14;
    if (v13 == v15)
    {
      return sub_2978E8B7C(a7, *(v27 + 24));
    }
  }

  v17 = sub_297850AD4(v13);
  v18 = sub_29783F5D4(a5, v17);
  v19 = HIDWORD(v18);
  v20 = v18;
  if (sub_297841D38(a5, v18, SHIDWORD(v18), 0) == a1)
  {
    sub_2978044E8(v29, v13 + 6);
    sub_2977FB7B4(v28, "\n\r");
    if (sub_29780F7E0(v29, v28[0], v28[1], 0) == -1)
    {
      v21 = sub_297841944(a5, v20, v19, 0);
      v22 = sub_2978E72B0(a2, v21 - 1);
      if (v22 < v16)
      {
        v23 = v16 + 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = sub_2978032A4(a7);
      v25 = v23 - v16 + sub_2978032A4((v13 + 6)) + v24;
      if (sub_2978032A4(a7) < v25)
      {
        std::string::resize(a7, v25, 32);
      }

      sub_29780739C((v13 + 6));
      sub_2978073D8((v13 + 6));
      v29[0] = sub_2978073D8(a7);
      v26 = sub_2978032A4((v13 + 6));
      sub_29787AA38(v29, v26);
      sub_2978E8B60();
      sub_2978044E8(v29, v13 + 6);
      v16 = sub_2978049EC(v29[0], v29[1]) + v23;
      goto LABEL_14;
    }
  }

  sub_297803300(a7);
  return sub_2978E8B7C(a7, *(v27 + 24));
}

uint64_t sub_2978E7508(std::string *a1, uint64_t a2, std::string *a3, unsigned int a4, uint64_t a5)
{
  LODWORD(__n1) = sub_2978E8D08(a5);
  v59.__r_.__value_.__r.__words[0] = sub_2978032A4(a2);
  v60[0] = sub_2978032A4(a3);
  v62 = *sub_29780338C(&v59, v60);
  result = sub_2977FF288(&__n1, &v62);
  if (*result <= a4)
  {
    return result;
  }

  LODWORD(__n1) = 0;
  v62 = sub_2978032A4(a2);
  v11 = __n1;
  if (__n1 != v62)
  {
    while (1)
    {
      v12 = sub_29780327C(a2, v11);
      v13 = sub_297850134(*v12);
      v14 = v62;
      v15 = __n1;
      if (!v13)
      {
        break;
      }

      v11 = __n1 + 1;
      LODWORD(__n1) = v11;
      if (v11 == v62)
      {
        goto LABEL_9;
      }
    }

    while (v14 != v15)
    {
      v16 = sub_29780327C(a2, v14 - 1);
      if (!sub_297850134(*v16))
      {
        break;
      }

      v15 = __n1;
      v14 = --v62;
    }
  }

LABEL_9:
  v56 = a2;
  if (!sub_29780347C(a3))
  {
    v18 = sub_2978032A4(a3);
    LODWORD(v19) = v18;
    if (v18)
    {
      v20 = 0;
      v21 = v18;
      do
      {
        v22 = sub_29780327C(a3, v20);
        if (!sub_297850134(*v22))
        {
          goto LABEL_17;
        }

        ++v20;
      }

      while (v21 != v20);
      LODWORD(v20) = v19;
    }

    else
    {
      LODWORD(v20) = 0;
    }

LABEL_17:
    while (v20 != v19)
    {
      v19 = (v19 - 1);
      v23 = sub_29780327C(a3, v19);
      if (!sub_297850134(*v23))
      {
        v24 = v19 + 1;
LABEL_21:
        v61 = v20;
        sub_297877EC0(a3, 0, v24, &v59);
        sub_2978044E8(v60, &v59);
        v25 = sub_2978049EC(v60[0], v60[1]);
        std::string::~string(&v59);
        LODWORD(v59.__r_.__value_.__l.__data_) = v25;
        LODWORD(__n1) = *sub_2977FA590(&v61, &__n1);
        i = *sub_2977FF288(&v59, &v62);
        goto LABEL_22;
      }
    }

    v24 = v20;
    goto LABEL_21;
  }

  for (i = v62; i < sub_2978E8D08(a5) && sub_2978E8D28(a5, v62) == -1; v62 = i)
  {
    i = v62 + 1;
LABEL_22:
    ;
  }

  LODWORD(v59.__r_.__value_.__l.__data_) = sub_2978E8D08(a5);
  v26 = sub_2977FA590(&__n1, &v59);
  v27 = sub_2978E8D28(a5, *v26);
  LODWORD(v59.__r_.__value_.__l.__data_) = sub_2978E8D08(a5);
  v28 = sub_2977FA590(&v62, &v59);
  v29 = sub_2978E8D28(a5, *v28);
  v30 = v62 - __n1;
  v31 = sub_2978E8A44(a5, v29);
  v57 = sub_2978E8A44(a5, v27) - v31 + v30;
  v58 = a4;
  v32 = v57 + 8;
  if (v57 + 8 >= a4)
  {
    v32 = 0;
  }

  v33 = a4 - v32;
  while (v27)
  {
    v34 = a5;
    for (j = v27; ; j = v37)
    {
      v36 = sub_2978E8A00(v34, j);
      v37 = v36;
      if (!v36)
      {
        break;
      }

      v38 = sub_29780327C(a1, v36);
      if (!sub_297850134(*v38))
      {
        break;
      }

      v34 = a5;
    }

    do
    {
      v39 = v37;
      if (!v37)
      {
        break;
      }

      v37 = sub_2978E8A00(a5, v37);
      v40 = sub_29780327C(a1, v37);
    }

    while (!sub_297850134(*v40));
    v41 = sub_2978E8A44(a5, v29);
    v42 = v41 - sub_2978E8A44(a5, v39);
    v43 = v42 <= v33;
    if (v42 <= v33)
    {
      v27 = v39;
    }

    if (sub_2978032A4(a1) > v29)
    {
LABEL_43:
      v44 = a5;
      for (k = v29; ; k = v46)
      {
        v46 = sub_2978E89C0(v44, k);
        v47 = v46;
        if (sub_2978032A4(a1) <= v46)
        {
          break;
        }

        v48 = sub_29780327C(a1, v46);
        if (!sub_297850134(*v48))
        {
          v47 = v46;
          break;
        }

        v44 = a5;
      }

      if (sub_2978032A4(a1) > v47)
      {
        do
        {
          v49 = sub_29780327C(a1, v47);
          if (!sub_297850134(*v49))
          {
            break;
          }

          v46 = sub_2978E89C0(a5, v46);
          v47 = v46;
        }

        while (sub_2978032A4(a1) > v46);
      }

      v50 = sub_2978E8A44(a5, v46);
      v51 = sub_2978E8A44(a5, v27);
      if (v50 - v51 <= v33)
      {
        v29 = v46;
      }

      if (v50 - v51 > v33 && !v43)
      {
        goto LABEL_56;
      }
    }

    else if (v42 > v33)
    {
      goto LABEL_56;
    }
  }

  if (sub_2978032A4(a1) > v29)
  {
    v27 = 0;
    v43 = 0;
    if (sub_2978032A4(a1) <= v29)
    {
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  v27 = 0;
LABEL_56:
  LODWORD(__n1) = sub_2978E8A44(a5, v27);
  v62 = sub_2978E8A44(a5, v29) + v57;
  v52 = sub_2978032A4(a1);
  v53 = sub_2978E8A44(a5, v52);
  result = sub_2978E8A44(a5, v29);
  v55 = v62;
  v54 = __n1;
  if ((v53 - result) >= 4)
  {
    result = std::string::replace(a1, v29, 0xFFFFFFFFFFFFFFFFLL, "...");
  }

  if (v55 > v58 && v54 >= 6)
  {
    std::string::replace(a1, 0, v27, "  ...");
    std::string::replace(v56, 0, __n1, "     ");
    result = sub_29780347C(a3);
    if ((result & 1) == 0)
    {
      return std::string::replace(a3, 0, __n1, "     ");
    }
  }

  return result;
}

_BYTE *sub_2978E7A6C@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2978032A4(a2);
  nullsub_1(a2, v7);
  nullsub_1(&v15, v8);
  v9 = sub_297808E78(a3, v6 + 1);
  v10 = sub_2978033F0(v9);
  v12 = nullsub_1(v10, v11);
  sub_297808E7C(v12, 1, a1);
  v13 = sub_2978037CC(a2);
  sub_297808CA4(v12 + 1, v13, v6);
  return sub_297808E7C(&v12[v6 + 1], 1, 0);
}

void sub_2978E7B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  if (!sub_297806914(&v16))
  {
    v15 = 0;
    sub_297802744(&v14);
    if (!sub_2977FB7B8(&v16))
    {
      goto LABEL_12;
    }

    v4 = 0;
    v5 = (a1 + 40);
    do
    {
      v6 = v16;
      v7 = v17;
      v8 = sub_2977FB720(a1 + 16);
      sub_2978E7FDC(v6, v7, &v15, *(v8 + 24), v13);
      v9 = v13[40];
      if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0 && v9 == (v4 & 1))
      {
        if (v4)
        {
          (*(**v5 + 4))();
        }

        sub_29780BB74(*v5, &v14);
        sub_297803300(&v14);
        if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
        {
          (*(**v5 + 3))();
        }
      }

      v4 = v9 ^ 1;
      v10 = sub_297801F10(v13);
      sub_29780435C(&v14, v10, v11);
      sub_2978E8278(v13);
      v12 = v15;
    }

    while (v12 < sub_2977FB7B8(&v16));
    if ((v9 & 1) == 0)
    {
      if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
      {
        (*(**v5 + 4))();
      }

      sub_29780BB74(*v5, &v14);
      if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
      {
        (*(**v5 + 3))();
      }
    }

    else
    {
LABEL_12:
      sub_29780BB74(*(a1 + 40), &v14);
      v5 = (a1 + 40);
    }

    sub_2978028D8(*v5, 10);
    std::string::~string(&v14);
  }
}

uint64_t sub_2978E7D20(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v37[0] = a2;
  v37[1] = a3;
  result = sub_2977FB720(a1 + 16);
  if ((*(result + 5) & 2) != 0)
  {
    v7 = sub_2977FB720(v37);
    v8 = sub_29782AB60(v37);
    if (v7 == v8)
    {
LABEL_9:
      v10 = sub_2977FB720(v37);
      result = sub_29782AB60(v37);
      if (v10 != result)
      {
        v11 = result;
        do
        {
          v12 = sub_297850AD4(v10);
          v13 = sub_2978478EC(v10);
          v14 = v12;
          v15 = sub_29783E664(a4, v12);
          v16 = sub_29783E664(a4, v13);
          v17 = v16;
          v18 = HIDWORD(v16);
          if (sub_297850C04(v10))
          {
            LODWORD(v18) = sub_29784FF88(v13, a4, *(a1 + 8)) + v18;
          }

          sub_297841B1C(a4, v14, 1, v36);
          result = sub_29783E4C0(v36);
          if (result)
          {
            break;
          }

          sub_297801F64(*(a1 + 40), "fix-it:");
          v19 = *(a1 + 40);
          v20 = sub_2977FB720(v36);
          sub_2977FB7B4(&v34, v20);
          sub_29781E584(v19, v34, v35, 0);
          v21 = sub_297801F64(*(a1 + 40), ":{");
          v22 = sub_297841D38(a4, v15, SHIDWORD(v15), 0);
          v23 = sub_297801FA0(v21, v22);
          v24 = sub_2978028D8(v23, 58);
          v25 = sub_297841944(a4, v15, HIDWORD(v15), 0);
          v26 = sub_297801FA0(v24, v25);
          v27 = sub_2978028D8(v26, 45);
          v28 = sub_297841D38(a4, v17, v18, 0);
          v29 = sub_297801FA0(v27, v28);
          v30 = sub_2978028D8(v29, 58);
          v31 = sub_297841944(a4, v17, v18, 0);
          v32 = sub_297801FA0(v30, v31);
          sub_297801F64(v32, "}:");
          v33 = *(a1 + 40);
          sub_2978044E8(&v34, v10 + 6);
          sub_29781E584(v33, v34, v35, 0);
          result = sub_297801F64(*(a1 + 40), "\n");
          v10 += 14;
        }

        while (v10 != v11);
      }
    }

    else
    {
      v9 = v8;
      while (1)
      {
        result = sub_297850D28();
        if (result)
        {
          break;
        }

        LODWORD(v36[0]) = sub_297850AD4(v7);
        result = sub_29783C26C(v36);
        if (result)
        {
          break;
        }

        LODWORD(v34) = sub_2978478EC(v7);
        result = sub_29783C26C(&v34);
        if (result)
        {
          break;
        }

        v7 += 14;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978E7FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  if (sub_297803A20(&v27, *a3) == 9)
  {
    v8 = sub_2978E8D8C(v27, v28, *a3);
    v9 = a4 + v8 / a4 * a4 - v8;
    ++*a3;
    sub_2978577EC(v26);
    sub_2978E8294(v26, v9, 32);
    LOBYTE(v21) = 1;
LABEL_12:
    sub_2978E8E00(v26, &v21, a5);
    return sub_297801F60(v26);
  }

  v10 = (sub_2977FB720(&v27) + *a3);
  v25 = v10;
  v11 = sub_2977FB7B8(&v27);
  if (!sub_297802A30(v10, &v10[v11 - *a3]))
  {
    sub_2977FB7B4(&v21, "<XX>");
    sub_2978E8E10(v26, v21, v22);
    v14 = sub_297803A20(&v27, *a3);
    v15 = sub_29781E738(v14 >> 4);
    *sub_2977FD108(v26, 1u) = v15;
    v16 = sub_29781E738(v14 & 0xF);
    *sub_2977FD108(v26, 2u) = v16;
    ++*a3;
LABEL_11:
    LOBYTE(v21) = 0;
    goto LABEL_12;
  }

  v24 = 0;
  v23 = &v24;
  v12 = sub_297803A20(&v27, *a3);
  v13 = &v10[sub_297802B4C(v12)];
  sub_297802F84(&v25, v13, &v23, &v25, 0);
  *a3 += v25 - v10;
  if ((sub_2978049F0(v24) & 1) == 0)
  {
    sub_2977FB7B4(&v21, "<U+>");
    sub_2978E8E10(v26, v21, v22);
    if (v24)
    {
      do
      {
        v17 = sub_2977FB720(v26);
        LOBYTE(v21) = sub_29781E738(v24 & 0xF);
        sub_29784FA04(v26, (v17 + 3), &v21);
        v18 = v24;
        v24 >>= 4;
      }

      while (v18 >= 0x10);
    }

    if (sub_2977FD0D4(v26) <= 7)
    {
      do
      {
        v19 = sub_2977FB720(v26);
        LOBYTE(v21) = sub_29781E738(0);
        sub_29784FA04(v26, (v19 + 3), &v21);
      }

      while (sub_2977FD0D4(v26) < 8);
    }

    goto LABEL_11;
  }

  sub_2978E8E24(v26, v10, v13);
  LOBYTE(v21) = 1;
  sub_2978E8E14(v26, &v21, a5);
  return sub_297801F60(v26);
}

uint64_t sub_2978E82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = a1;
  v9[0] = a2;
  v9[1] = a3;
  v5 = a4 - a1;
  if (a4 > a1)
  {
    for (i = a1; ; ++i)
    {
      v7 = sub_297803A20(v9, i);
      if (!sub_297850134(v7))
      {
        break;
      }

      if (!--v5)
      {
        return a4;
      }
    }
  }

  return i;
}

uint64_t sub_2978E832C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v27 = a2;
  v28 = a3;
  v10 = a1 + 1;
  if (sub_2977FB7B8(&v27) != v10)
  {
    v11 = sub_297803A20(&v27, a1);
    v12 = sub_2978E85C0(v11);
    v26 = v12;
    if (v12)
    {
      sub_2978577EC(v25);
      sub_2977FCD50(v25, &v26);
      v13 = v10;
      if (v10 < a4)
      {
        v14 = ~a1 + a4;
        v13 = v10;
        while (!sub_297806904(v25))
        {
          v15 = sub_297803A20(&v27, v13);
          if (*sub_29784C06C(v25) == v15)
          {
            sub_297806E8C(v25);
          }

          else
          {
            v16 = sub_297803A20(&v27, v13);
            v17 = sub_2978E85C0(v16);
            v24 = v17;
            if (v17)
            {
              sub_2977FCD50(v25, &v24);
            }
          }

          ++v13;
          if (!--v14)
          {
LABEL_16:
            v13 = a4;
            goto LABEL_22;
          }
        }
      }

      v18 = a4 - v13;
      if (a4 > v13)
      {
        v13 = v13;
        while (1)
        {
          v19 = sub_297803A20(&v27, v13);
          if (sub_297850134(v19))
          {
            break;
          }

          ++v13;
          if (!--v18)
          {
            goto LABEL_16;
          }
        }
      }

LABEL_22:
      if (v13 - a1 >= a6 / 3 && v13 - a1 + a5 > a6)
      {
        v13 = sub_2978E832C(v10, v27, v28, a4, (a5 + 1), a6);
      }

      sub_297801F60(v25);
      return v13;
    }

    else if (v10 < a4)
    {
      v20 = ~a1 + a4;
      while (1)
      {
        v21 = sub_297803A20(&v27, v10);
        if (sub_297850134(v21))
        {
          break;
        }

        ++v10;
        if (!--v20)
        {
          return a4;
        }
      }
    }
  }

  return v10;
}

uint64_t sub_2978E8508(const void **a1, unsigned int a2, uint64_t a3)
{
  sub_2977FD800(a1);
  if (sub_2978059C8(a1) < a2)
  {
    sub_2977FD5B8(a1, a2);
  }

  v6 = sub_2977FB720(a1);
  sub_2977FD5DC(a1, v6 + a2);
  v7 = sub_2977FB720(a1);
  v8 = sub_2977FB7B8(a1);

  return sub_2978E85A0(v7, v8, a3);
}

_BYTE *sub_2978E85A4(_BYTE *result, _BYTE *a2, char *a3)
{
  if (result != a2)
  {
    v3 = *a3;
    do
    {
      *result++ = v3;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_2978E85C0(int a1)
{
  result = 39;
  if (a1 > 90)
  {
    switch(a1)
    {
      case '[':
        return 93;
        return result;
      case '{':
        return 125;
    }
  }

  else
  {
    switch(a1)
    {
      case '""':
        return 34;
      case '\'':
        return result;
      case '(':
        return 41;
    }
  }

  return 0;
}

uint64_t sub_2978E8628(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a2;
  v8 = a3;
  sub_297801F5C(&v7, a1);
  sub_2978E8698(a1 + 24);
  sub_2978E8698(a1 + 848);
  sub_2978E869C(v7, v8, a4, (a1 + 24));
  sub_2978E879C(v7, v8, a4, (a1 + 848));
  return a1;
}

_DWORD *sub_2978E869C(uint64_t a1, uint64_t a2, unsigned int a3, const void **a4)
{
  v14 = a1;
  v15 = a2;
  sub_2977FD800(a4);
  if (sub_297806914(&v14))
  {
    v12[0] = 0;
    return sub_2978E88BC(a4, 1u, v12);
  }

  else
  {
    v7 = sub_2977FB7B8(&v14);
    v12[0] = -1;
    sub_2978E88BC(a4, v7 + 1, v12);
    v13 = 0;
    if (sub_2977FB7B8(&v14))
    {
      LODWORD(v8) = 0;
      v9 = 0;
      do
      {
        *sub_2978297C0(a4, v8) = v9;
        sub_2978E7FDC(v14, v15, &v13, a3, v12);
        v10 = sub_2978059B8(v12);
        v9 += sub_2978049EC(v10, v11);
        sub_2978E8278(v12);
        v8 = v13;
      }

      while (v8 < sub_2977FB7B8(&v14));
    }

    else
    {
      v9 = 0;
    }

    result = sub_2978192CC(a4);
    *result = v9;
  }

  return result;
}

_DWORD *sub_2978E879C(uint64_t a1, uint64_t a2, unsigned int a3, const void **a4)
{
  v14 = a1;
  v15 = a2;
  sub_2977FD800(a4);
  if (sub_297806914(&v14))
  {
    v12[0] = 0;
    return sub_2978E88BC(a4, 1u, v12);
  }

  else
  {
    v13 = 0;
    if (sub_2977FB7B8(&v14))
    {
      LODWORD(v7) = 0;
      v8 = 0;
      do
      {
        v12[0] = -1;
        sub_2978E88BC(a4, v8 + 1, v12);
        *sub_2978192CC(a4) = v7;
        sub_2978E7FDC(v14, v15, &v13, a3, v12);
        v9 = sub_2978059B8(v12);
        v8 += sub_2978049EC(v9, v10);
        sub_2978E8278(v12);
        v7 = v13;
      }

      while (v7 < sub_2977FB7B8(&v14));
      v11 = v8 + 1;
    }

    else
    {
      LODWORD(v7) = 0;
      v11 = 1;
    }

    v12[0] = -1;
    sub_2978E88BC(a4, v11, v12);
    result = sub_2978192CC(a4);
    *result = v7;
  }

  return result;
}

unint64_t sub_2978E88BC(const void **a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  if (sub_297803A80(a1) <= a2)
  {
    result = sub_297803A80(a1);
    if (result >= v5)
    {
      return result;
    }

    if (sub_297859A8C(a1) < v5)
    {
      sub_297803D70(a1, v5);
    }

    v9 = sub_2977FB7B8(a1);
    v10 = sub_2977FB720(a1);
    sub_2978E89A0(v9, v10 + 4 * v5, a3);
  }

  else
  {
    v6 = sub_2977FB720(a1) + 4 * v5;
    v7 = sub_2977FB7B8(a1);
    nullsub_1(v6, v7);
  }

  v11 = sub_2977FB720(a1) + 4 * v5;

  return sub_2977FD5DC(a1, v11);
}

_DWORD *sub_2978E89A4(_DWORD *result, _DWORD *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *a3;
    do
    {
      *result++ = v3;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_2978E89C0(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  do
  {
    v2 = (v2 + 1);
  }

  while (sub_2978E8A44(a1, v2) == -1);
  return v2;
}

uint64_t sub_2978E8A00(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  do
  {
    v2 = (v2 - 1);
  }

  while (sub_2978E8A44(a1, v2) == -1);
  return v2;
}

uint64_t sub_2978E8A64(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v8 = a1;
  v5 = sub_297808460(&v7, &v8);
  return sub_2978E8AB0(a1, v5, a3);
}

uint64_t sub_2978E8AB0(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = nullsub_1(a2, a2);
  result = a1;

  sub_2978E8AF8(a1, v5, a3);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_2978E8AF8(uint64_t a1, uint64_t a2, char *a3)
{
  if (a2 >= 1)
  {
    v4 = a2 + 1;
    do
    {
      v5 = *a3;
      *sub_2977FB720(&v6) = v5;
      sub_297808548(&v6);
      --v4;
    }

    while (v4 > 1);
  }
}

_BYTE *sub_2978E8B7C(std::string *a1, unsigned int a2)
{
  result = sub_2978032A4(a1);
  if (result)
  {
    v5 = (result - 1);
    do
    {
      result = sub_29780327C(a1, v5);
      if (*result == 9)
      {
        v9 = v5;
        sub_2978044E8(v7, a1);
        sub_2978E7FDC(v7[0], v7[1], &v9, a2, v8);
        v6 = sub_297807A0C(v8);
        std::string::replace(a1, v5, 1uLL, v6);
        result = sub_2978E8278(v8);
      }

      --v5;
    }

    while (v5 != -1);
  }

  return result;
}

uint64_t sub_2978E8C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978E8CBC(a1, a2);
  v7 = v6;
  v8 = sub_29780C8A4(a3);
  v9 = sub_2977FD944(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2978E8D04(a1, v9);
  v13 = sub_29780C8A8(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978E8CBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_29780C8A4(a1);
  v4 = sub_29780C8A4(a2);
  return sub_2977FD958(&v5, &v4);
}

void sub_2978E8D48(std::string *a1)
{
  sub_2977FD134(&a1[35].__r_.__value_.__r.__words[1]);
  sub_2977FD134(&a1[1]);

  std::string::~string(a1);
}

uint64_t sub_2978E8D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  if (!a3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a3 - 1;
  while (sub_297803A20(v7, v5) != 9)
  {
    v4 = (v4 + 1);
    if (--v5 == -1)
    {
      return a3;
    }
  }

  return v4;
}

uint64_t sub_2978E8E2C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_2978E8E58();
  *(result + 40) = *a3;
  return result;
}

const void **sub_2978E8E60(const void **a1, void *a2)
{
  sub_2977FE408();
  if (!sub_297806904(a2))
  {
    sub_297807D80(a1, a2);
  }

  return a1;
}

uint64_t sub_2978E8EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2978E8EF8(a1, v4, v5);
}

uint64_t sub_2978E8EF8(uint64_t a1, char *a2, char *a3)
{
  v6 = sub_2977FE408();
  sub_2977FD4F8(v6, a2, a3);
  return a1;
}

uint64_t sub_2978E8F44(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_2978E8F70();
  *(result + 40) = *a3;
  return result;
}

uint64_t sub_2978E8F78(uint64_t a1, void *a2)
{
  sub_2977FE408();
  if (!sub_297806904(a2))
  {
    sub_2978E8FC0(a1, a2);
  }

  return a1;
}

uint64_t sub_2978E8FC0(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_2977FD0D4(a2);
      v5 = sub_2977FD0D4(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          sub_2977FB720(a2);
          sub_2977FB7B8(a2);
          v13 = sub_2977FD844();
        }

        v14 = sub_2977FB7B8(a1);
        nullsub_1(v13, v14);
        v15 = a1;
        v16 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_2978059C8(a1) >= v4)
        {
          if (v6)
          {
            sub_2977FB720(a2);
            sub_2977FB720(a2);
            sub_2977FB720(a1);
            sub_2977FD844();
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          nullsub_1(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_2977FD5B8(a1, v4);
          v6 = 0;
        }

        v17 = sub_2977FB720(a2);
        v18 = sub_2977FB7B8(a2);
        v19 = sub_2977FB720(a1);
        sub_2978198E8((v17 + v6), v18, (v19 + v6));
        v16 = sub_2977FB720(a1) + v4;
        v15 = a1;
      }

      sub_2977FD5DC(v15, v16);
      sub_2977FD800(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      nullsub_1(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      *(a1 + 16) = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

uint64_t sub_2978E91BC(_DWORD *a1, int a2, void *a3)
{
  sub_297829A88(a1, a2);
  sub_2978E4A98(v18);
  sub_297829B00(a3, v18);
  if (a2 > 3)
  {
    v9 = sub_297829A2C(a3);
    v14 = sub_297801F10(v18);
    v15 = v10;
    sub_2978E9320(v9, &v14, v16);
    sub_2978E9330(v17, v16);
    v8 = a1 + 4;
  }

  else if (a2 == 1)
  {
    v11 = sub_297829A2C(a3);
    v14 = sub_297801F10(v18);
    v15 = v12;
    sub_2978E9320(v11, &v14, v16);
    sub_2978E9330(v17, v16);
    v8 = a1 + 22;
  }

  else
  {
    v6 = sub_297829A2C(a3);
    v14 = sub_297801F10(v18);
    v15 = v7;
    sub_2978E9320(v6, &v14, v16);
    sub_2978E9330(v17, v16);
    if (a2 == 2)
    {
      v8 = a1 + 16;
    }

    else
    {
      v8 = a1 + 10;
    }
  }

  sub_2978E931C(v8, v17);
  sub_29782D764(v17);
  return sub_297801F60(v18);
}

void sub_2978E9380()
{
  v0 = sub_2978E937C();

  j__free(v0);
}

uint64_t sub_2978E93A8(void *a1)
{
  *a1 = &unk_2A1E58298;
  v2 = a1 + 2;
  sub_29782D694(a1 + 11);
  sub_29782D694(a1 + 8);
  sub_29782D694(a1 + 5);
  sub_29782D694(v2);

  return nullsub_1(a1, v3);
}

__n128 sub_2978E9420(uint64_t a1, _DWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  *(a1 + 8) = *a3;
  return result;
}

uint64_t sub_2978E9434(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978E94DC(a1, a2);
  }

  else
  {
    sub_2978E9474(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978E9474(uint64_t a1, uint64_t a2)
{
  sub_29784EF20(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_2978E9580(a1, v5, a2);
  v8 += 32;
  return sub_297809E88(v7);
}

uint64_t sub_2978E94DC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29782D8A4(a1);
  v5 = sub_29784ED48(a1, v4 + 1);
  v6 = sub_29782D8A4(a1);
  sub_29784EDC0(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_2978E9580(a1, v8, a2);
  v12 += 32;
  sub_29784EE38(a1, v11);
  v9 = a1[1];
  sub_2978E95C4(v11);
  return v9;
}

_DWORD *sub_2978E9594(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_297808AB4(a1 + 2, a2 + 2);
  return a1;
}

uint64_t *sub_2978E95C8(uint64_t *a1)
{
  sub_2978E961C(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29784F124(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978E9628(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 32;
      v6 = nullsub_1(v2 - 32, a2);
      result = sub_29782D910(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

_DWORD *sub_2978E968C(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  sub_297801F5C((a2 + 8), (a1 + 2));
  return a1;
}

uint64_t sub_2978E96C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_2978E974C(a1);
  *v8 = &unk_2A1E582E8;
  v8[2] = a2;
  sub_297829178(v8 + 3, a3);
  sub_29780AE44(a1 + 32);
  sub_297802744(a1 + 40);
  *(a1 + 64) = *(a1 + 64) & 0xFE | a4;
  return a1;
}

void *sub_2978E974C(void *result)
{
  *result = &unk_2A1E54F90;
  result[1] = 0;
  return result;
}

uint64_t sub_2978E9770(uint64_t a1)
{
  *a1 = &unk_2A1E582E8;
  if (*(a1 + 64))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  std::string::~string((a1 + 40));
  sub_2978E980C(a1 + 32);
  sub_297829368(a1 + 24);

  return nullsub_1(a1, v3);
}

void sub_2978E9814()
{
  v0 = sub_2978E9810();

  j__free(v0);
}

uint64_t *sub_2978E983C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA198(48);
  v5 = *(a1 + 16);
  v6 = sub_2977FB720(a1 + 24);
  sub_2978E5B0C(v4, v5, a2, v6);

  return sub_2978E98AC((a1 + 32), v4);
}

uint64_t *sub_2978E98AC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978E9D9C(result, v3);
  }

  return result;
}

uint64_t sub_2978E98D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297829A88(a1, a2);
  sub_2978E4A98(v37);
  sub_297829B00(a3, v37);
  sub_29781F238(v36);
  v6 = sub_2977FB720(a1 + 24);
  sub_2978E9AD8(v36, a2, a3, v6);
  v7 = sub_2978E5CC0(*(a1 + 16));
  if (!sub_29780347C(a1 + 40))
  {
    v8 = sub_29780BB74(*(a1 + 16), a1 + 40);
    sub_297801F64(v8, ": ");
  }

  v9 = sub_297829A2C(a3);
  if (sub_297805430(v9))
  {
    v34 = sub_2977FB720(a1 + 32);
    v10 = *sub_297829A2C(a3);
    v11 = sub_29781F384(v36);
    v13 = v12;
    v14 = sub_2978E9CE0(a3);
    v16 = v15;
    v17 = sub_2978E9D10(a3);
    v19 = v18;
    v20 = sub_29782AB48(a3);
    sub_2978E4BAC(&v35, 0);
    *&v33 = v17;
    *(&v33 + 1) = v19;
    sub_2978E383C(v34, v10, a2, v11, v13, v14, v16, v21, v33, v20, v35);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = (*(sub_2977FB720(a1 + 24) + 4) >> 15) & 1;
    v24 = sub_2977FB720(a1 + 24);
    sub_2978E5D14(v22, a2, v23, (*(v24 + 4) >> 19) & 1);
    v25 = *(a1 + 16);
    v26 = sub_29781F384(v36);
    v28 = v27;
    v29 = sub_2978E5CC0(*(a1 + 16)) - v7;
    v30 = *(sub_2977FB720(a1 + 24) + 28);
    v31 = sub_2977FB720(a1 + 24);
    sub_2978E5F44(v25, a2 != 0, v26, v28, v29, v30, (*(v31 + 4) >> 15) & 1);
  }

  sub_29781ED10(*(a1 + 16));
  sub_29781F290(v36);
  return sub_297801F60(v37);
}

uint64_t sub_2978E9AD8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a4 + 4);
  if ((v7 & 0x800) != 0)
  {
    if (sub_297829A20(a3) == 42)
    {

      return sub_297801F64(v6, " [-ferror-limit=]");
    }

    if (a2 == 4 && (v10 = sub_297829A20(a3), sub_29782CA7C(v10)) && (v11 = sub_297829A20(a3), !sub_29782CB5C(v11)))
    {
      sub_297801F64(v6, " [-Werror");
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    v12 = sub_297829A20(a3);
    v28 = sub_29782CFE0(v12);
    v29 = v13;
    result = sub_297806914(&v28);
    if ((result & 1) == 0)
    {
      if (v8)
      {
        v14 = ",";
      }

      else
      {
        v14 = " [";
      }

      v15 = sub_297801F64(v6, v14);
      if (a2 == 2)
      {
        v16 = "-R";
      }

      else
      {
        v16 = "-W";
      }

      v17 = sub_297801F64(v15, v16);
      sub_297801FA8(v17, v28, v29);
      v18 = sub_2977FB720(a3);
      v26 = sub_2978E9D40(v18);
      v27 = v19;
      result = sub_297806914(&v26);
      if ((result & 1) == 0)
      {
        v20 = sub_297801F64(v6, "=");
        result = sub_297801FA8(v20, v26, v27);
      }

      v8 = 1;
    }

    v7 = *(a4 + 4);
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x6000) != 0)
  {
    v21 = sub_297829A20(a3);
    result = sub_29782C6E4(v21);
    if (result)
    {
      v22 = result;
      if (v8)
      {
        v23 = ",";
      }

      else
      {
        v23 = " [";
      }

      sub_297801F64(v6, v23);
      if ((*(a4 + 4) & 0x6000) == 0x2000)
      {
        sub_297801FA0(v6, v22);
      }

      else
      {
        v24 = sub_29782C9CC(v22);
        sub_297801FA8(v6, v24, v25);
      }

      return sub_2978028D8(v6, 93);
    }
  }

  if (v8)
  {
    return sub_2978028D8(v6, 93);
  }

  return result;
}

uint64_t sub_2978E9D9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t sub_2978E9DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978E974C(a1);
  sub_2978E9ED4(v4 + 2);
  *a1 = &unk_2A1E58338;
  *(a1 + 16) = &unk_2A1E58390;
  *(a1 + 24) = a2;
  *(a1 + 32) = sub_2978D6920(a2);
  *(a1 + 40) = sub_2978E9EF4(*(a1 + 24));
  v5 = sub_2977FA198(112);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  sub_2978E9EFC();
  sub_2977FDEF4((a1 + 48), v5);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  sub_2978E9F00((a1 + 88));
  sub_29783F914(a1 + 184, 0);
  sub_29783F914(a1 + 208, 0);
  sub_2978E9F04(*(a1 + 24));
  if (sub_2978E9F10(*(a1 + 24)))
  {
    v6 = sub_29782AD78(*(a1 + 24));
    sub_29783F9DC(a1, v6);
  }

  return a1;
}

uint64_t sub_2978E9F24(uint64_t a1)
{
  *a1 = &unk_2A1E58338;
  v2 = a1 + 16;
  *(a1 + 16) = &unk_2A1E58390;
  *(a1 + 72) = 0;
  sub_2978EA004(a1);
  sub_2978E9F04(*(a1 + 24));
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  sub_29783FD60(a1 + 208);
  sub_29783FD60(a1 + 184);
  sub_2978EA1F0(a1 + 88);
  sub_2978EA1F4(a1 + 48);
  nullsub_1(v2, v4);

  return nullsub_1(a1, v5);
}

uint64_t sub_2978EA004(uint64_t a1)
{
  v2 = sub_2978E9EF4(*(a1 + 24));
  v3 = sub_2978E9F04(*(a1 + 24));
  sub_297829374(*(a1 + 24), *(a1 + 32), 0);
  v4 = *(a1 + 72);
  if (v4)
  {
    if (!*(a1 + 84))
    {
      sub_2978295E8(*(a1 + 24), 458, v32);
      sub_2978EB0E0(v32);
      sub_29782963C(v32);
      ++*(a1 + 12);
      *(a1 + 84) = 1;
      v4 = *(a1 + 72);
    }

    v5 = *(a1 + 24);
    v6 = sub_2977FB720(a1 + 48);
    v7 = *(a1 + 12) + sub_2978EB0EC(v5, v4, v6, (a1 + 88));
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_2977FB720(a1 + 48);
    v11 = sub_2978DD3D4(v9, v10);
    v12 = sub_2977FB720(a1 + 48);
    v14 = sub_2978E9334(v12, v13);
    LODWORD(v8) = sub_2978EB214(v8, 0, v11, v14, "error");
    v15 = *(a1 + 24);
    v16 = sub_2977FB720(a1 + 48);
    v18 = sub_2978E934C(v16, v17);
    v19 = sub_2977FB720(a1 + 48);
    v21 = sub_2978E9354(v19, v20);
    LODWORD(v18) = sub_2978EB214(v15, 0, v18, v21, "warn") + v8;
    v22 = *(a1 + 24);
    v23 = sub_2977FB720(a1 + 48);
    v25 = sub_2978E936C(v23, v24);
    v26 = sub_2977FB720(a1 + 48);
    v28 = sub_2978E9374(v26, v27);
    v7 = v18 + sub_2978EB214(v22, 0, v25, v28, "note") + *(a1 + 12);
  }

  *(a1 + 12) = v7;
  sub_2978E9F04(*(a1 + 24));
  sub_297829374(*(a1 + 24), v3, v2);
  v29 = sub_2977FA198(112);
  *v29 = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  v29[3] = 0u;
  v29[4] = 0u;
  v29[5] = 0u;
  v29[6] = 0u;
  sub_2978E9EFC();
  sub_2978EB438((a1 + 48), v29);
  return sub_2978EB450((a1 + 88), v30);
}

void sub_2978EA204(uint64_t a1)
{
  v1 = sub_2978EA1F8(a1);

  j__free(v1);
}

uint64_t sub_2978EA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  *(a1 + 80) = v5 + 1;
  if (a3 && !v5)
  {
    *(a1 + 56) = a3;
    *(a1 + 64) = a2;
    v6 = sub_29781F408(a3);
    sub_29783F9DC(a1, v6);
    sub_29787C980(a3, a1 + 16);
  }

  v7 = *(**(a1 + 32) + 24);

  return v7();
}

uint64_t sub_2978EA2D8(uint64_t a1)
{
  result = (*(**(a1 + 32) + 32))(*(a1 + 32));
  v3 = *(a1 + 80) - 1;
  *(a1 + 80) = v3;
  if (!v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_29787C9AC(v4, a1 + 16);
    }

    result = sub_2978EA004(a1);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_2978EA350(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_2978EA40C(a3))
  {
    if (*(a1 + 72))
    {
      result = sub_29782AB48(a3);
      if (result != *(a1 + 72))
      {
        return result;
      }
    }

    v6 = sub_29782AB48(a3);
    sub_29783F9DC(a1, v6);
  }

  v7 = *(*sub_2977FB720(a1 + 48) + 56);

  return v7();
}

uint64_t sub_2978EA414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_29781F408(a2);
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v5;
    v9 = sub_2977FB5F0(&v26);
    v10 = sub_297841788(v8, v9, 0);
    v11 = sub_297847BE0(&v26);
    v12 = sub_297841788(v8, v11, 0);
    sub_2977FB7C0(v25, v10, v12 - v10);
    if (!sub_297806914(v25))
    {
      v13 = sub_2978044F0(v25, 0x5Cu, 0);
      if (v13 == -1)
      {
        sub_2978EA68C(v25[0], v25[1], a1 + 88, v8, a2, v9, (a1 + 84));
      }

      else
      {
        v14 = v13;
        sub_297802744(&v24);
        v15 = sub_2977FB7B8(v25);
        std::string::reserve(&v24, v15);
        v16 = 0;
        do
        {
          if (v14 == sub_2977FB7B8(v25))
          {
            break;
          }

          v17 = sub_297805EA4(v25, v16, v14 - v16);
          sub_29780435C(&v24, v17, v18);
          v16 = v14 + 1;
          if (sub_297803A20(v25, v14 + 1) == 10 || sub_297803A20(v25, v14 + 1) == 13)
          {
            if (v14 + 2 < sub_2977FB7B8(v25) && (sub_297803A20(v25, v14 + 2) == 10 || sub_297803A20(v25, v14 + 2) == 13))
            {
              v19 = sub_297803A20(v25, v14 + 2);
              v16 = v19 == sub_297803A20(v25, v14 + 1) ? v14 + 2 : v14 + 3;
            }

            else
            {
              v16 = v14 + 2;
            }
          }

          else
          {
            sub_297804334(&v24, 92);
          }

          v14 = sub_2978044F0(v25, 0x5Cu, v16);
        }

        while (v14 != -1);
        v20 = sub_297805EA4(v25, v16, 0xFFFFFFFFFFFFFFFFLL);
        sub_29780435C(&v24, v20, v21);
        if (!sub_29780347C(&v24))
        {
          sub_2978044E8(v23, &v24);
          sub_2978EA68C(v23[0], v23[1], a1 + 88, v8, a2, v9, (a1 + 84));
        }

        std::string::~string(&v24);
      }
    }
  }

  return 0;
}

void sub_2978EA68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7)
{
  v8 = a4;
  v75[0] = a6;
  if (a5)
  {
    v12 = sub_2977FD5B0(a5);
  }

  else
  {
    v12 = sub_2977FB7B8(a4);
  }

  v13 = v12;
  sub_2978EB7CC(v72, a1, a2);
  if (a3)
  {
    v14 = a3 + 72;
  }

  else
  {
    v14 = 0;
  }

  v15 = a3 + 48;
  if (!a3)
  {
    v15 = 0;
  }

  v57 = v14;
  v58 = v15;
  v16 = a3 + 24;
  if (!a3)
  {
    v16 = 0;
  }

  v59 = v16;
  while (!sub_2978EB7D0(v72))
  {
    sub_2977FB7B4(&v68, "expected");
    if (!sub_2978EB7E0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_, 1))
    {
      break;
    }

    sub_2978EB8D8(v72);
    sub_2977FB7B4(&v68, "-");
    if (sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
    {
      sub_2978EB8D8(v72);
      sub_2977FB7B4(&v68, "error");
      v17 = a3;
      if (sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_) || (sub_2977FB7B4(&v68, "warning"), v17 = v59, sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_)) || (sub_2977FB7B4(&v68, "remark"), v17 = v58, sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_)) || (sub_2977FB7B4(&v68, "note"), v17 = v57, sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_)))
      {
        sub_2978EB8D8(v72);
        if (*a7 == 2)
        {
          sub_29782B128(v13, v75[0], 451, &v68);
          v18 = 0;
          goto LABEL_21;
        }

        *a7 = 3;
        if (!v17)
        {
          return;
        }

        sub_2977FB7B4(&v68, "-re");
        v19 = sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
        v20 = "string";
        if (v19)
        {
          sub_2978EB8D8(v72);
          v20 = "regex";
        }

        v60 = v20;
        sub_297829180(&v71);
        sub_2977FB7B4(&v68, "@");
        if (!sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
        {
          LOBYTE(v27) = 0;
          v71 = v75[0];
          goto LABEL_43;
        }

        sub_2978EB8D8(v72);
        LODWORD(v65[0]) = 0;
        sub_2977FB7B4(&v68, "+");
        v21 = sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
        if (v21 || (sub_2977FB7B4(&v68, "-"), sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_)))
        {
          sub_2978EB8D8(v72);
          v68.__r_.__value_.__s.__data_[0] = 0;
          v22 = sub_2978420CC(v8, v75[0], &v68);
          if ((v68.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            v23 = v22;
            if (sub_2978EB978(v72, v65))
            {
              v24 = LODWORD(v65[0]) < v23 || v21;
              if (v24 == 1)
              {
                if (v21)
                {
                  v25 = v65[0];
                }

                else
                {
                  v25 = -LODWORD(v65[0]);
                }

                v26 = sub_29783E548(v8, v75[0]);
                v71 = sub_2978429C8(v8, v26, v25 + v23, 1);
              }
            }
          }

LABEL_38:
          LOBYTE(v27) = 0;
LABEL_39:
          if (sub_297829730(&v71))
          {
            v28 = sub_297840FC8(v75, v73 - LODWORD(v72[0]));
            sub_29782B128(v13, v28, 455, &v68);
            sub_29783F028(&v68, v60);
            sub_29782963C(&v68);
          }

          else
          {
            sub_2978EB8D8(v72);
LABEL_43:
            sub_2978EB9E0(v72);
            v69 = 1;
            v70 = 1;
            if (!sub_2978EB978(v72, &v70))
            {
              sub_2977FB7B4(&v68, "+");
              if (!sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
              {
                v29 = 1;
                goto LABEL_60;
              }

              goto LABEL_50;
            }

            sub_2978EB8D8(v72);
            sub_2977FB7B4(&v68, "+");
            if (sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
            {
LABEL_50:
              v29 = -1;
              v69 = -1;
LABEL_51:
              sub_2978EB8D8(v72);
LABEL_60:
              sub_2978EB9E0(v72);
              sub_2977FB7B4(&v68, "{{");
              if (sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
              {
                sub_2978EB8D8(v72);
                v33 = v73;
                sub_2977FB7B4(&v68, "{{");
                sub_2977FB7B4(&v62, "}}");
                if (sub_2978EBA30(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_))
                {
                  v54 = v8;
                  v55 = v13;
                  v34 = v74;
                  sub_2978EB8D8(v72);
                  sub_297802744(&v68);
                  sub_2977FB7B4(&v66, "\\n");
                  sub_2977FB7C0(v65, v33, v34 - v33);
                  v35 = sub_29780F620(v65, v66, v67, 0);
                  if (v35 != -1)
                  {
                    v36 = v35;
                    v37 = 0;
                    do
                    {
                      v38 = sub_297805EA4(v65, v37, v36 - v37);
                      sub_29780435C(&v68, v38, v39);
                      sub_297804334(&v68, 10);
                      v37 = sub_2977FB7B8(&v66) + v36;
                      v36 = sub_29780F620(v65, v66, v67, v37);
                    }

                    while (v36 != -1);
                  }

                  if (sub_29780347C(&v68))
                  {
                    sub_2978EBAFC(&v68, v33, v34);
                  }

                  v13 = v55;
                  if (v19 && sub_2978043B4(&v68, "{{", 0) == -1)
                  {
                    v53 = sub_297840FC8(v75, v33 - LODWORD(v72[0]));
                    sub_29782B128(v55, v53, 456, &v62);
                    sub_2978044E8(v64, &v68);
                    sub_2978295C0(&v62, v64[0], v64[1]);
                    sub_29782963C(&v62);
                    std::string::~string(&v68);
                    return;
                  }

                  v40 = v75[0];
                  v41 = v71;
                  sub_2978044E8(&v62, &v68);
                  v42 = sub_2978EB498(v19, v40, v41, v27, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_, v70, v29);
                  sub_2977FDEF4(&v63, v42);
                  sub_297802744(&v62);
                  v43 = sub_2977FB720(&v63);
                  if ((*(*v43 + 16))(v43, &v62))
                  {
                    v64[0] = sub_2978058AC(&v63);
                    sub_29781B720(v17, v64);
                  }

                  else
                  {
                    v44 = sub_297840FC8(v75, v33 - LODWORD(v72[0]));
                    sub_29782B128(v55, v44, 450, v64);
                    v45 = sub_29783F028(v64, v60);
                    sub_2978044E8(v61, &v62);
                    sub_2978295C0(v45, v61[0], v61[1]);
                    sub_29782963C(v64);
                  }

                  v8 = v54;
                  std::string::~string(&v62);
                  sub_2978EBB50(&v63);
                  std::string::~string(&v68);
                }

                else
                {
                  v52 = sub_297840FC8(v75, v73 - LODWORD(v72[0]));
                  sub_29782B128(v13, v52, 453, &v68);
                  sub_29783F028(&v68, v60);
                  sub_29782963C(&v68);
                }
              }

              else
              {
                v51 = sub_297840FC8(v75, v73 - LODWORD(v72[0]));
                sub_29782B128(v13, v51, 457, &v68);
                sub_29783F028(&v68, v60);
                sub_29782963C(&v68);
              }
            }

            else
            {
              sub_2977FB7B4(&v68, "-");
              if (!sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
              {
                v29 = v70;
                v69 = v70;
                goto LABEL_60;
              }

              sub_2978EB8D8(v72);
              if (sub_2978EB978(v72, &v69))
              {
                v29 = v69;
                if (v69 >= v70)
                {
                  goto LABEL_51;
                }
              }

              v30 = sub_297840FC8(v75, v73 - LODWORD(v72[0]));
              sub_29782B128(v13, v30, 452, &v68);
              sub_29783F028(&v68, v60);
              sub_29782963C(&v68);
            }
          }
        }

        else
        {
          if (sub_2978EB978(v72, v65))
          {
            v27 = v65[0];
            if (LODWORD(v65[0]))
            {
              v31 = sub_29783E548(v8, v75[0]);
              v32 = sub_2978429C8(v8, v31, v27, 1);
              LOBYTE(v27) = 0;
              v71 = v32;
            }

            goto LABEL_39;
          }

          if (!a5 || (sub_2977FB7B4(&v68, ":"), !sub_2978EB7E0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_, 0)))
          {
            LOBYTE(v27) = 0;
            goto LABEL_39;
          }

          sub_2977FB7C0(&v68, v73, v74 - v73);
          sub_2978EB8D8(v72);
          v66 = 0;
          v46 = sub_29786A308(a5, v75[0], v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_, 0, 0, &v66, 0, 0, 0, 0);
          if (v46)
          {
            v47 = v46;
            LODWORD(v62.__r_.__value_.__l.__data_) = sub_297842538(v8, v46);
            if (sub_297829730(&v62))
            {
              sub_297863788(v8, v47, v75[0], 0, 0, 0);
            }

            if (sub_2978EB978(v72, v65) && LODWORD(v65[0]))
            {
              v48 = sub_2978424E4(v8, v47, v65[0], 1);
              LOBYTE(v27) = 0;
LABEL_86:
              v71 = v48;
              goto LABEL_39;
            }

            sub_2977FB7B4(&v62, "*");
            if (sub_2978EB8F0(v72, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_))
            {
              LOBYTE(v27) = 1;
              v48 = sub_2978424E4(v8, v47, 1u, 1);
              goto LABEL_86;
            }

            goto LABEL_38;
          }

          v49 = sub_297840FC8(v75, v73 - LODWORD(v72[0]));
          sub_29782B128(v13, v49, 454, &v62);
          v50 = sub_2978295C0(&v62, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
          sub_29783F028(v50, v60);
          sub_29782963C(&v62);
        }
      }

      else
      {
        sub_2977FB7B4(&v68, "no-diagnostics");
        if (sub_2978EB8F0(v72, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_))
        {
          if (*a7 == 3)
          {
            sub_29782B128(v13, v75[0], 451, &v68);
            v18 = 1;
LABEL_21:
            sub_297863490(&v68, v18);
            sub_29782963C(&v68);
          }

          else
          {
            *a7 = 2;
          }
        }
      }
    }
  }
}

uint64_t sub_2978EB0EC(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v8 = sub_2978DD3D4(a3, a2);
  v10 = sub_2978E9334(a3, v9);
  LODWORD(v8) = sub_2978EBF14(a1, a2, "error", a4, v8, v10);
  v12 = sub_2978E934C(a3, v11);
  v14 = sub_2978E9354(a3, v13);
  v15 = sub_2978EBF14(a1, a2, "warning", a4 + 3, v12, v14) + v8;
  v17 = sub_2978E935C(a3, v16);
  v19 = sub_2978E9364(a3, v18);
  LODWORD(v17) = sub_2978EBF14(a1, a2, "remark", a4 + 6, v17, v19);
  v21 = sub_2978E936C(a3, v20);
  v23 = sub_2978E9374(a3, v22);
  return v15 + v17 + sub_2978EBF14(a1, a2, "note", a4 + 9, v21, v23);
}

uint64_t sub_2978EB214(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a3;
  if (sub_297808558(&v37, &v36))
  {
    return 0;
  }

  sub_297804E28(v35);
  sub_29781F238(v34);
  v32[0] = v37;
  v33 = v36;
  while (sub_29780852C(v32, &v33))
  {
    v10 = sub_2978297B4(v32, v9);
    v11 = sub_297829730(v10);
    if (!a2 || v11)
    {
      sub_297801F64(v34, "\n  (frontend)");
    }

    else
    {
      sub_297801F64(v34, "\n ");
      v13 = sub_2978297B4(v32, v12);
      v14 = sub_29783E548(a2, *v13);
      v15 = sub_2978606D8(a2, v14);
      if (v15)
      {
        v16 = v15;
        v17 = sub_297801F64(v34, " File ");
        v18 = sub_2977FB720(v16);
        sub_297801F64(v17, v18);
      }

      v19 = sub_297801F64(v34, " Line ");
      v21 = sub_2978297B4(v32, v20);
      v22 = sub_2978421AC(a2, *v21, 0);
      sub_297801FA0(v19, v22);
    }

    v23 = sub_297801F64(v34, ": ");
    v25 = sub_2978297B4(v32, v24);
    sub_29780BB74(v23, v25 + 8);
    sub_2978E933C(v32);
  }

  sub_2978295E8(a1, 449, v32);
  v26 = sub_2978EB0E0(v32);
  v27 = sub_29783F028(v26, a5);
  v28 = sub_297863490(v27, 1u);
  v29 = sub_29781F384(v34);
  sub_2978295C0(v28, v29, v30);
  sub_29782963C(v32);
  v8 = sub_2978EC5AC(v37, v36);
  sub_29781F290(v34);
  sub_297801F60(v35);
  return v8;
}

uint64_t *sub_2978EB438(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978ECEB4(result, v3);
  }

  return result;
}

uint64_t sub_2978EB450(uint64_t *a1, uint64_t a2)
{
  sub_2978ECB74(a1, a2);
  sub_2978ECB74(a1 + 3, v3);
  sub_2978ECB74(a1 + 6, v4);

  return sub_2978ECB74(a1 + 9, v5);
}

uint64_t sub_2978EB498(char a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a1)
  {
    sub_297802744(&v29);
    v27 = a5;
    for (i = a6; !sub_297806914(&v27); i = v21)
    {
      sub_2977FB7B4(&v26, "{{");
      if (sub_297807C54(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_))
      {
        v27 = sub_2978187D4(&v27, 2uLL);
        i = v15;
        sub_2977FB7B4(&v26, "}}");
        v16 = sub_29780F620(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_, 0);
        std::string::append(&v29, "(");
        v17 = sub_2977FB720(&v27);
        std::string::append(&v29, v17, v16);
        std::string::append(&v29, ")");
        v18 = v16 + 2;
      }

      else
      {
        sub_2977FB7B4(&v26, "{{");
        v18 = sub_29780F620(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_, 0);
        if (v18 == -1)
        {
          v18 = sub_2977FB7B8(&v27);
        }

        v19 = sub_297805EA4(&v27, 0, v18);
        sub_297809538(v19, v20, &v26);
        sub_2978044E4(&v29, &v26);
        std::string::~string(&v26);
      }

      v27 = sub_2978187D4(&v27, v18);
    }

    v22 = sub_2977FA198(72);
    sub_2978044E8(&v26, &v29);
    sub_2978EB6C0(v22, a2, a3, a4, a5, a6, a7, a8, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    std::string::~string(&v29);
  }

  else
  {
    v22 = sub_2977FA198(56);
    sub_2978EB6B4(v22, a2, a3, a4, a5, a6, a7, a8);
  }

  return v22;
}

void *sub_2978EB6D4(void *a1)
{
  v2 = sub_2978E974C(a1);
  *v2 = &unk_2A1E58298;
  v3 = v2 + 11;
  sub_297809B88(v2 + 2);
  sub_297809B88(a1 + 5);
  sub_297809B88(a1 + 8);
  sub_297809B88(v3);
  return a1;
}

void *sub_2978EB73C(void *a1)
{
  v2 = sub_297809B88(a1);
  sub_297809B88((v2 + 24));
  sub_297809B88(a1 + 6);
  sub_297809B88(a1 + 9);
  return a1;
}

uint64_t sub_2978EB77C(uint64_t *a1, uint64_t a2)
{
  sub_2978EB450(a1, a2);
  sub_29781B950(a1 + 9);
  sub_29781B950(a1 + 6);
  sub_29781B950(a1 + 3);

  return sub_29781B950(a1);
}

BOOL sub_2978EB7E0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17[0] = a2;
  v17[1] = a3;
  while (1)
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = sub_2977FB720(v17);
    v9 = sub_2977FB728(v17);
    v10 = sub_2978EBBA4(v6, v7, v8, v9);
    a1[3] = v10;
    a1[4] = v10 + sub_2977FB7B8(v17);
    v11 = a1[3];
    v12 = a1[1];
    result = v11 != v12;
    if (v11 == v12 || a4 == 0)
    {
      break;
    }

    v15 = *a1;
    if (v11 == *a1)
    {
      return 1;
    }

    v16 = *(v11 - 1);
    if (sub_297850134(v16))
    {
      return 1;
    }

    if (v11 > v15 + 1 && (v16 == 47 || v16 == 42) && *(v11 - 2) == 47)
    {
      return 1;
    }

    if (!sub_2978EB8D8(a1))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_2978EB8D8(void *a1)
{
  v1 = a1[4];
  a1[2] = v1;
  return v1 < a1[1];
}

BOOL sub_2978EB8F0(void *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = a1[2];
  a1[3] = v4;
  v5 = sub_2977FB7B8(v10);
  a1[4] = v4 + v5;
  if ((v4 + v5) > a1[1])
  {
    return 0;
  }

  v7 = a1[3];
  v8 = sub_2977FB720(v10);
  v9 = sub_2977FB7B8(v10);
  return memcmp(v7, v8, v9) == 0;
}

uint64_t sub_2978EB978(void *a1, int *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a1[3] = v2;
  if (v2 >= v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = v2;
  while (1)
  {
    v6 = *v5 - 48;
    if (v6 > 9)
    {
      break;
    }

    v4 = 10 * v4 + v6;
    a1[3] = ++v5;
    if (v5 == v3)
    {
      v5 = v3;
      break;
    }
  }

  if (v5 == v2)
  {
    return 0;
  }

  a1[4] = v5;
  *a2 = v4;
  return 1;
}

uint64_t sub_2978EB9E0(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 < v1)
  {
    v3 = result;
    do
    {
      result = sub_297850134(*v2);
      if (!result)
      {
        break;
      }

      *(v3 + 16) = ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t sub_2978EBA30(void *a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v16 = a2;
  v17 = a3;
  v14 = a4;
  v15 = a5;
  v6 = a1[1];
  v5 = a1[2];
  a1[3] = v5;
  if (v5 < v6)
  {
    v8 = 1;
    do
    {
      sub_2977FB7C0(v13, v5, v6 - v5);
      if (sub_297807C54(v13, v16, v17))
      {
        ++v8;
        v9 = &v16;
      }

      else
      {
        if (!sub_297807C54(v13, v14, v15))
        {
          v10 = 1;
          goto LABEL_10;
        }

        if (!--v8)
        {
          v12 = a1[3];
          a1[4] = v12 + sub_2977FB7B8(&v14);
          return 1;
        }

        v9 = &v14;
      }

      v10 = sub_2977FB7B8(v9);
LABEL_10:
      v5 = a1[3] + v10;
      a1[3] = v5;
      v6 = a1[1];
    }

    while (v5 < v6);
  }

  return 0;
}

std::string *sub_2978EBAFC(std::string *a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_2977FD5AC(a2, a3);
  sub_2978EBD9C(a1, a2, a3, v6);
  return a1;
}

uint64_t *sub_2978EBB54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  *a1 = sub_2977FB720(v7);
  v4 = sub_2977FB728(v7);
  v5 = *a1;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v5;
  a1[4] = 0;
  return a1;
}

uint64_t sub_2978EBBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v10 = a2;
  if (a4 == a3)
  {
    v7 = &v11;
    v8 = &v11;
    return sub_2977FD958(v7, v8);
  }

  if (a2 - a1 < a4 - a3)
  {
    v7 = &v10;
    v8 = &v10;
    return sub_2977FD958(v7, v8);
  }

  return sub_2978EBC34(a1, a2, a3, a4, a5, a6, a7, a2 - a1, a4 - a3);
}

uint64_t sub_2978EBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = a1 + a8 - a9 + 1;
  if (v10 != a1)
  {
    v23 = a2;
    v16 = a3 + 1;
    v24 = a3 + 1;
    while (2)
    {
      while (1)
      {
        v17 = sub_297813268(a6, v9);
        v18 = sub_297813268(a7, a3);
        if (sub_2978EBD84(a5, v17, v18))
        {
          break;
        }

        if (++v9 == v10)
        {
          goto LABEL_10;
        }
      }

      v19 = v9 + 1;
      do
      {
        if (v16 == a4)
        {
          v25 = v9 + a9;
          v26 = v9;
          return sub_2977FD958(&v26, &v25);
        }

        v20 = sub_297813268(a6, v19);
        v21 = sub_297813268(a7, v16);
        ++v19;
        ++v16;
      }

      while ((sub_2978EBD84(a5, v20, v21) & 1) != 0);
      ++v9;
      v16 = v24;
      if (v9 != v10)
      {
        continue;
      }

      break;
    }

LABEL_10:
    v9 = v10;
    a2 = v23;
  }

  v26 = v9;
  sub_2977FE390(&v26, a2);
  return sub_2977FD958(&v26, &v26);
}

uint64_t sub_2978EBD9C(std::string *a1, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  v8 = sub_2978032A4(a1);
  v9 = sub_297818B9C(a1);
  v10 = a4 - v9;
  if (a4 > v9)
  {
    v11 = v9;
    v12 = sub_2978032A4(a1);
    sub_297818BD8(a1, v11, v10, v12, 0, v12, 0);
    v13 = a4;
LABEL_4:
    nullsub_1(a1, v13);
    goto LABEL_5;
  }

  v13 = a4 - v8;
  if (a4 > v8)
  {
    goto LABEL_4;
  }

LABEL_5:
  v14 = sub_2978033F0(a1);
  while (a2 != a3)
  {
    sub_297803464(v14++, a2++);
  }

  v16 = 0;
  sub_297803464(v14, &v16);
  result = sub_297818C84(a1, a4);
  if (a4 < v8)
  {
    return nullsub_1(a1, v8);
  }

  return result;
}

uint64_t *sub_2978EBECC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978EBEE4(result, v3);
  }

  return result;
}

uint64_t sub_2978EBEE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t sub_2978EBF14(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_297809B88(v39);
  sub_2978EC1A0(v38, a5, a6);
  v37 = sub_29780A294(a4, v12);
  v36 = sub_297809B0C(a4, v13);
  while (sub_29780852C(&v37, &v36))
  {
    v14 = sub_2977FB720(&v37);
    v15 = *v14;
    v16 = sub_2978421AC(a2, *(*v14 + 12), 0);
    if (*(v15 + 44))
    {
      v17 = v16;
      v18 = 0;
      do
      {
        sub_29780AE44(&v35);
        sub_29780AE44(&v34);
        v35 = sub_29780A294(v38, v19);
        v34 = sub_297809B0C(v38, v20);
        while (sub_29780852C(&v35, &v34))
        {
          if ((*(v15 + 48) & 1) != 0 || (v22 = sub_2978297B4(&v35, v21), v17 == sub_2978421AC(a2, *v22, 0)))
          {
            v23 = *(v15 + 12);
            v24 = sub_2978297B4(&v35, v21);
            if (sub_2978EC1A4(a2, v23, *v24))
            {
              v26 = sub_2978297B4(&v35, v25);
              sub_2978044E8(v33, v26 + 8);
              if ((*(*v15 + 24))(v15, v33[0], v33[1]))
              {
                break;
              }
            }
          }

          sub_2978E933C(&v35);
        }

        if (sub_297808558(&v35, &v34))
        {
          if (v18 >= *(v15 + 40))
          {
            break;
          }

          v27 = sub_2977FB720(&v37);
          sub_29781B720(v39, v27);
        }

        else
        {
          sub_297809B4C(v33, &v35);
          sub_2978EC274(v38, v33[0]);
        }

        ++v18;
      }

      while (v18 < *(v15 + 44));
    }

    sub_29781B504(&v37);
  }

  v28 = sub_2978EC2E0(a1, a2, v39, a3);
  v37 = sub_29780A294(v38, v29);
  sub_297809B4C(v33, &v37);
  v35 = sub_297809B0C(v38, v30);
  sub_297809B4C(&v36, &v35);
  v31 = sub_2978EB214(a1, a2, v33[0], v36, a3);
  sub_29782D694(v38);
  sub_29781B950(v39);
  return (v31 + v28);
}

BOOL sub_2978EC1A4(_DWORD *a1, int a2, unsigned int a3)
{
  v9 = a3;
  if (sub_29783C26C(&v9))
  {
    do
    {
      v9 = sub_2978E4A28(a1, v9);
    }

    while ((sub_29783C26C(&v9) & 1) != 0);
  }

  if (sub_2978EC8CC(a1, a2, v9))
  {
    return 1;
  }

  v6 = sub_29783E548(a1, v9);
  v7 = sub_2978606D8(a1, v6);
  if (!v7 && sub_2978EC920(a1, a2))
  {
    return 1;
  }

  v8 = sub_29783E548(a1, a2);
  return v7 == sub_2978606D8(a1, v8);
}

uint64_t sub_2978EC274(void *a1, uint64_t a2)
{
  v9 = a2;
  v8 = sub_29787D70C(a1, a2);
  v3 = sub_2978EC664(&v9, &v8);
  v4 = a1[1];
  v5 = *a1 + 32 * v3;
  v6 = sub_2978EC9C4();
  sub_2978EC96C(a1, v6);
  return sub_2978082EC(a1, v5);
}

uint64_t sub_2978EC2E0(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4)
{
  if (sub_297806904(a3))
  {
    return 0;
  }

  v31 = a1;
  v32 = a4;
  sub_297804E28(v36);
  sub_29781F238(v35);
  v33[0] = sub_29780A294(a3, v9);
  v34 = sub_297809B0C(a3, v10);
  while (sub_29780852C(v33, &v34))
  {
    v11 = *sub_2977FB720(v33);
    v12 = sub_297801F64(v35, "\n  File ");
    v13 = sub_2978ECB14(a2, *(v11 + 12));
    sub_297801FA8(v12, v13, v14);
    if (*(v11 + 48) == 1)
    {
      sub_297801F64(v35, " Line *");
    }

    else
    {
      v15 = sub_297801F64(v35, " Line ");
      v16 = sub_2978421AC(a2, *(v11 + 12), 0);
      sub_297801FA0(v15, v16);
    }

    if (sub_297853F10((v11 + 8), (v11 + 12)))
    {
      v17 = sub_297801F64(v35, " (directive at ");
      v18 = sub_2978ECB14(a2, *(v11 + 8));
      v20 = sub_297801FA8(v17, v18, v19);
      v21 = sub_2978028D8(v20, 58);
      v22 = sub_2978421AC(a2, *(v11 + 8), 0);
      v23 = sub_297801FA0(v21, v22);
      sub_2978028D8(v23, 41);
    }

    v24 = sub_297801F64(v35, ": ");
    sub_29780BB74(v24, v11 + 16);
    sub_29781B504(v33);
  }

  sub_2978295E8(v31, 449, v33);
  v25 = sub_2978EB0E0(v33);
  v26 = sub_29783F028(v25, v32);
  v27 = sub_297863490(v26, 0);
  v28 = sub_29781F384(v35);
  sub_2978295C0(v27, v28, v29);
  sub_29782963C(v33);
  v8 = sub_29780BD00(a3);
  sub_29781F290(v35);
  sub_297801F60(v36);
  return v8;
}

uint64_t *sub_2978EC54C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  j_j_nullsub_1(a1, a2);
  v6 = sub_2978EC5AC(a2, a3);
  sub_2978EC5B0(a1, a2, a3, v6);
  return a1;
}

uint64_t sub_2978EC5B0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2977FDEF4(&v10, a1);
  sub_29780CD8C(v10, &v11);
  if (a4)
  {
    sub_2978EC69C(a1, a4);
    sub_2978EC700(a1, a2, a3, a4);
  }

  sub_29780CE64(&v11);
  return j_nullsub_1(&v11, v8);
}

uint64_t sub_2978EC638(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_2978EC664(&v3, &v4);
}

uint64_t sub_2978EC69C(uint64_t *a1, unint64_t a2)
{
  if (sub_29784EF8C() < a2)
  {
    sub_29780A05C();
  }

  v4 = sub_29784F024(a1, a2);
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v4 + 32 * v5;

  return nullsub_1(a1, 0);
}

uint64_t sub_2978EC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29784EF20(v8, a1, a4);
  v9 = sub_2978EC768(a1, a2, a3, v9);
  return sub_297809E88(v8);
}

uint64_t sub_2978EC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2978E8CBC(a2, a3);
  v8 = v7;
  v9 = j_j_nullsub_1(a4, v7);
  v10 = sub_2978EC7DC(a1, v6, v8, v9);

  return sub_2977FD98C(a4, v10);
}

uint64_t sub_2978EC7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    do
    {
      v9 = nullsub_1(v8, v7);
      sub_2978EC888(a1, v9, a2);
      a2 += 32;
      v8 = v16 + 32;
      v16 += 32;
    }

    while (a2 != a3);
  }

  sub_29780CE64(&v14);
  v10 = v16;
  j_nullsub_1(&v14, v11);
  return v10;
}

uint64_t sub_2978EC89C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

BOOL sub_2978EC8CC(_DWORD *a1, int a2, int a3)
{
  v7 = sub_29783E548(a1, a2);
  v6 = sub_29783E548(a1, a3);
  return sub_29782B07C(&v7, &v6);
}

BOOL sub_2978EC920(_DWORD *a1, int a2)
{
  v5 = sub_29783E548(a1, a2);
  v4 = sub_29786A6B0(a1);
  return sub_29782B07C(&v5, &v4);
}

uint64_t sub_2978EC96C(void *a1, uint64_t a2)
{
  v4 = sub_29782D8A4(a1);
  sub_29782D8B4(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t sub_2978EC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_2978ECA74(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978ECA74(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = a4;
  v9 = a2;
  if (a2 != a3)
  {
    v4 = a4;
    do
    {
      v6 = sub_29780E4F4(&v9, a2);
      sub_2978ECAE4(v4, v6);
      v4 += 8;
      v8 = v4;
      v9 += 32;
    }

    while (v9 != a3);
  }

  return sub_2977FD958(&v9, &v8);
}

_DWORD *sub_2978ECAE4(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_2978046C4((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_2978ECB14(_DWORD *a1, int a2)
{
  v3 = sub_29783E548(a1, a2);
  v4 = sub_2978606D8(a1, v3);
  if (v4)
  {
    v5 = sub_2977FB720(v4);
    sub_2977FB7B4(&v7, v5);
  }

  else
  {
    sub_297804560(&v7);
  }

  return v7;
}

uint64_t sub_2978ECB74(uint64_t *a1, uint64_t a2)
{
  v7 = sub_29780A294(a1, a2);
  v6 = sub_297809B0C(a1, v3);
  while (sub_29780852C(&v7, &v6))
  {
    v4 = *sub_2977FB720(&v7);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    sub_29781B504(&v7);
  }

  return sub_29780C6B8(a1);
}

void *sub_2978ECC14(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  result = sub_2978ECC50(a1, a2, a3, a4, a5, a6, a7, a8);
  *result = &unk_2A1E583B8;
  return result;
}

uint64_t sub_2978ECC50(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13[0] = a5;
  v13[1] = a6;
  *a1 = &unk_2A1E583E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  sub_297801F5C(v13, a1 + 16);
  *(a1 + 40) = a7;
  *(a1 + 44) = a8;
  *(a1 + 48) = a4;
  return a1;
}

void sub_2978ECCCC()
{
  v0 = sub_2978ECCC8();

  j__free(v0);
}

BOOL sub_2978ECCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  sub_2978044E8(v4, a1 + 16);
  return sub_29780F620(v5, v4[0], v4[1], 0) != -1;
}

uint64_t sub_2978ECD48(uint64_t a1)
{
  *a1 = &unk_2A1E583E8;
  std::string::~string((a1 + 16));
  return a1;
}

uint64_t sub_2978ECD8C(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = sub_2978ECC50(a1, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_2A1E58418;
  sub_297809094((v11 + 56), a9, a10, 0);
  return a1;
}

void sub_2978ECDF8()
{
  v0 = sub_2978ECDF4();

  j__free(v0);
}

uint64_t sub_2978ECE34(uint64_t a1)
{
  *a1 = &unk_2A1E58418;
  sub_2978090D4((a1 + 56));

  return sub_2978ECD48(a1);
}

uint64_t sub_2978ECEB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t sub_2978ECEE4(_DWORD *a1, int a2, void *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  sub_297829A88(a1, a2);
  sub_2978E4A98(v21);
  sub_297829B00(a3, v21);
  sub_2978ED098(v22);
  v19 = sub_297801F10(v21);
  v20 = v6;
  sub_297801F5C(&v19, v18);
  sub_2978046C4(v22, v18);
  std::string::~string(v18);
  v23 = *sub_297829A2C(a3);
  v26 = a2;
  v18[0].__r_.__value_.__r.__words[0] = sub_2978E9CE0(a3);
  v18[0].__r_.__value_.__l.__size_ = v7;
  v8 = sub_2977FB720(v18);
  v9 = sub_29782AB50(v18);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8;
      LODWORD(v20) = *(v8 + 8);
      v19 = v11;
      sub_297829818(&v24, &v19);
      ++a1[10];
      v8 += 12;
    }

    while (v8 != v10);
  }

  v19 = sub_2978E9D10(a3);
  v20 = v12;
  v13 = sub_2977FB720(&v19);
  v14 = sub_29782AB60(&v19);
  if (v13 != v14)
  {
    v15 = v14;
    do
    {
      sub_29782BCDC(v18, v13);
      sub_2978298D4(v25, v18);
      ++a1[11];
      sub_29782AC18(v18);
      v13 = (v13 + 56);
    }

    while (v13 != v15);
  }

  sub_2978ED09C(a1 + 4, v22);
  sub_2978ED0A0(v22);
  result = sub_297801F60(v21);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978ED0B4(uint64_t a1)
{
  result = sub_2978ED1AC((a1 + 16));
  *(a1 + 40) = 0;
  return result;
}

void sub_2978ED0E4()
{
  v0 = sub_2978ED0E0();

  j__free(v0);
}

uint64_t sub_2978ED10C(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297829180((v2 + 24));
  sub_2978ED14C(a1 + 32);
  sub_2978ED150(a1 + 80);
  return a1;
}

void sub_2978ED164(std::string *a1)
{
  sub_2978ED1A8(&a1[3].__r_.__value_.__r.__words[1]);
  sub_2977FD134(&a1[1].__r_.__value_.__r.__words[1]);

  std::string::~string(a1);
}

uint64_t sub_2978ED1AC(uint64_t *a1)
{
  v2 = sub_2978DFC1C(a1);
  sub_2978ED1F8(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_2978ED1F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_2978ED254(v3, v5))
  {
    i -= 224;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_2978ED260(void *a1)
{
  *a1 = &unk_2A1E58448;
  sub_2978ED2B4(a1 + 2);

  return nullsub_1(a1, v2);
}

uint64_t sub_2978ED2B8(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_2978ED2F8(&v3);
  return a1;
}

uint64_t *sub_2978ED2F8(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_2978ED1AC(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_2978ED368(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_2978ED390(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978ED438(a1, a2);
  }

  else
  {
    sub_2978ED3D0(a1, a2);
    result = v3 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978ED3D0(uint64_t a1, uint64_t a2)
{
  sub_2978ED4DC(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_2978ED4E0(a1, v5, a2);
  v8 += 224;
  return sub_297809E88(v7);
}

uint64_t sub_2978ED438(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978DFC1C(a1);
  v5 = sub_2978EDC88(a1, v4 + 1);
  v6 = sub_2978DFC1C(a1);
  sub_2978EDD00(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_2978ED4E0(a1, v8, a2);
  v12 += 224;
  sub_2978EDD04(a1, v11);
  v9 = a1[1];
  sub_2978EDDE8(v11);
  return v9;
}

void *sub_2978ED4E4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 224 * a3;
  return result;
}

uint64_t sub_2978ED50C(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string(a1, a2);
  LODWORD(v4[1].__r_.__value_.__l.__data_) = *(a2 + 24);
  sub_2978ED560(&v4[1].__r_.__value_.__r.__words[1], a2 + 32);
  sub_2978ED564(a1 + 80, a2 + 80);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

const void **sub_2978ED568(const void **a1, void *a2)
{
  sub_29782BE20(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978ED5B0(a1, a2);
  }

  return a1;
}

const void **sub_2978ED5B0(const void **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_29782B90C(a2);
    v5 = sub_29782B90C(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v10 = sub_2978ED754();
      }

      else
      {
        v10 = sub_2977FB720(a1);
      }

      v17 = v10;
      v18 = sub_2977FB7B8(a1);
      nullsub_1(v17, v18);
      v16 = a1;
      v15 = v17;
    }

    else
    {
      v6 = v5;
      if (sub_29782C67C(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_2978ED754();
        }
      }

      else
      {
        v7 = sub_2977FB720(a1);
        v8 = sub_2977FB7B8(a1);
        nullsub_1(v7, v8);
        v9 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v9);
        sub_29782BBD4(a1, v4);
        v6 = 0;
      }

      v11 = 3 * v6;
      v12 = (sub_2977FB720(a2) + 12 * v6);
      v13 = sub_2977FB7B8(a2);
      v14 = sub_2977FB720(a1);
      sub_297807F80(v12, v13, (v14 + 4 * v11));
      v15 = sub_2977FB720(a1) + 12 * v4;
      v16 = a1;
    }

    sub_2977FD5DC(v16, v15);
  }

  return a1;
}

uint64_t sub_2978ED774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_2978ED804(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978ED814(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_2978ED878(a3, a1, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2));
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_2978ED878(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 12 * a3 - 3);
  }

  return result;
}

void *sub_2978ED890(void *a1, void *a2)
{
  sub_29782B99C(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978ED8D8(a1, a2);
  }

  return a1;
}

void *sub_2978ED8D8(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_29782B950(a2);
    v5 = sub_29782B950(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v10 = sub_2978EDA84();
      }

      else
      {
        v10 = sub_2977FB720(a1);
      }

      v16 = v10;
      v17 = sub_2977FB7B8(a1);
      sub_29782ABD4(v16, v17);
      v15 = a1;
      v14 = v16;
    }

    else
    {
      v6 = v5;
      if (sub_29782BCE0(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_2978EDA84();
        }
      }

      else
      {
        v7 = sub_2977FB720(a1);
        v8 = sub_2977FB7B8(a1);
        sub_29782ABD4(v7, v8);
        v9 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v9);
        sub_29782BBE4(a1, v4);
        v6 = 0;
      }

      v11 = sub_2977FB720(a2);
      v12 = sub_2977FB7B8(a2);
      v13 = sub_2977FB720(a1);
      sub_2978EDAA0(v11 + 56 * v6, v12, v13 + 56 * v6);
      v14 = sub_2977FB720(a1) + 56 * v4;
      v15 = a1;
    }

    sub_2977FD5DC(v15, v14);
  }

  return a1;
}

uint64_t sub_2978EDAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_2978EDB38(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978EDB38(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  for (i = a2; i != a3; a4 += 56)
  {
    sub_2978EDBA4(a4, i);
    i = (i + 56);
  }

  v8 = a4;
  v9 = i;
  return sub_2977FD958(&v9, &v8);
}

uint64_t sub_2978EDBA4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v4;
  std::string::operator=((a1 + 24), a2 + 1);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_2978EDC08(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = a3;
  v7 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      sub_29782BCDC(v6, v4);
      v4 = (v4 + 56);
      v6 += 56;
      v7 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v8, &v7, &v6);
  return v8;
}

unint64_t sub_2978EDC88(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_2978EDDEC();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_2978ED368(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_2978EDD04(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_2978EDF10(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_2978DFC1C(a1);

  return nullsub_1(a1, v11);
}

uint64_t sub_2978EDDEC()
{
  v2 = sub_2978EDE28();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_2978EDE40(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_2978EDE94(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 224 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 224 * a2;
  return a1;
}

uint64_t sub_2978EDEBC(uint64_t a1, unint64_t a2)
{
  if (sub_2978EDE28() < a2)
  {
    sub_29780339C();
  }

  return sub_2978EDF04(a2);
}

uint64_t sub_2978EDF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    v9 = a2;
    do
    {
      v10 = nullsub_1(v8, v7);
      sub_2978EDFC8(a1, v10, v9);
      v9 += 224;
      v8 = v16 + 224;
      v16 += 224;
    }

    while (v9 != a3);
  }

  sub_29780CE64(&v14);
  sub_2978EDFCC(a1, a2, a3);
  return j_nullsub_1(&v14, v11);
}

uint64_t sub_2978EDFCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = nullsub_1(v4, a2);
      result = sub_2978ED254(v5, v6);
      v4 += 224;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_2978EE038(uint64_t a1, uint64_t a2)
{
  v4 = sub_297808AB4(a1, a2);
  *(v4 + 24) = *(a2 + 24);
  sub_2978EE08C(v4 + 32, a2 + 32);
  sub_2978EE090(a1 + 80, a2 + 80);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t sub_2978EE094(uint64_t a1, void *a2)
{
  sub_29782BE20(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978EE0DC(a1, a2);
  }

  return a1;
}

uint64_t sub_2978EE0DC(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29782B90C(a2);
      v5 = sub_29782B90C(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          sub_2977FB720(a2);
          sub_2977FB7B8(a2);
          v13 = sub_2978EE2D8();
        }

        v14 = sub_2977FB7B8(a1);
        nullsub_1(v13, v14);
        v15 = a1;
        v16 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_29782C67C(a1) >= v4)
        {
          if (v6)
          {
            sub_2977FB720(a2);
            sub_2977FB720(a2);
            sub_2977FB720(a1);
            sub_2978EE2D8();
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          nullsub_1(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_29782BBD4(a1, v4);
          v6 = 0;
        }

        v17 = 3 * v6;
        v18 = (sub_2977FB720(a2) + 12 * v6);
        v19 = sub_2977FB7B8(a2);
        v20 = sub_2977FB720(a1);
        sub_2978198E8(v18, v19, (v20 + 4 * v17));
        v16 = sub_2977FB720(a1) + 12 * v4;
        v15 = a1;
      }

      sub_2977FD5DC(v15, v16);
      sub_2977FD800(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      nullsub_1(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      *(a1 + 16) = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

void *sub_2978EE2DC(void *a1, void *a2)
{
  sub_29782B99C(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978EE324(a1, a2);
  }

  return a1;
}

void *sub_2978EE324(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29782B950(a2);
      v5 = sub_29782B950(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          v14 = sub_2977FB720(a2);
          v15 = sub_2977FB7B8(a2);
          v13 = sub_2978EE528(v14, v15, v13);
        }

        v16 = sub_2977FB7B8(a1);
        sub_29782ABD4(v13, v16);
        v17 = a1;
        v18 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_29782BCE0(a1) >= v4)
        {
          if (v6)
          {
            v19 = sub_2977FB720(a2);
            v20 = (sub_2977FB720(a2) + 56 * v6);
            v21 = sub_2977FB720(a1);
            sub_2978EE528(v19, v20, v21);
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          sub_29782ABD4(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_29782BBE4(a1, v4);
          v6 = 0;
        }

        v22 = sub_2977FB720(a2);
        v23 = 56 * v6;
        v24 = sub_2977FB7B8(a2);
        v25 = sub_2977FB720(a1);
        sub_29782BD2C(v22 + v23, v24, v25 + v23);
        v18 = sub_2977FB720(a1) + 56 * v4;
        v17 = a1;
      }

      sub_2977FD5DC(v17, v18);
      sub_297829890(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      sub_29782ABD4(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      a1[2] = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

uint64_t sub_2978EE528(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_2978697E8(a3, v5);
      v5 = (v5 + 56);
      a3 += 56;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_2978EE580(uint64_t *a1)
{
  sub_2978EE5D4(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_2978EE5DC(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978EE608(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 224;
      v6 = nullsub_1(v2 - 224, a2);
      result = sub_2978ED254(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_2978EE66C(void *a1, uint64_t a2)
{
  result = sub_2978EE6A0(a1, a2);
  *result = &unk_2A1E58498;
  return result;
}

void *sub_2978EE6A0(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E584B8;
  a1[1] = a2;
  sub_29780AE44(a1 + 2);
  sub_29780AE44(a1 + 3);
  sub_2978EE858((a1 + 4));
  sub_29780AE44(a1 + 9);
  v3 = sub_2977FA198(32);
  sub_297883278(v3);
  sub_297885A90(&v5, v3);
  sub_297849864(a1 + 9, &v5);
  sub_2978853DC(&v5);
  return a1;
}

void *sub_2978EE73C(void *a1)
{
  *a1 = &unk_2A1E584B8;
  v2 = a1 + 2;
  sub_2978853DC(a1 + 9);
  sub_2978EE85C(a1 + 4);
  sub_2978EE860(a1 + 3);
  sub_2978EE864(v2);
  return a1;
}

void sub_2978EE7A4()
{
  v0 = sub_2978EE7A0();

  j__free(v0);
}

void sub_2978EE7CC(std::string *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_297802744(&v9);
  std::string::reserve(v5, 0xFF0uLL);
  sub_29783E51C(v8, &v9);
  sub_2977FDEF4(&v7, v8);
  v6 = sub_29783E520(v8);
  sub_2978EE850(a1, v6);
  sub_29787B7E0(a1, a3);
  sub_29781F160(v8);
  std::string::~string(&v9);
}

void sub_2978EE86C(void *a1)
{
  v1 = sub_2978EE868(a1);

  j__free(v1);
}

uint64_t sub_2978EE894(uint64_t a1)
{
  v2 = sub_29780AE44(a1);
  sub_29780AE44(v2 + 8);
  sub_29780AE44(a1 + 16);
  sub_29780AE44(a1 + 24);
  sub_29780AE44(a1 + 32);
  return a1;
}

uint64_t sub_2978EE8DC(uint64_t a1)
{
  sub_29787B7D4(a1 + 32);
  sub_2978EE930(a1 + 24);
  sub_2978EE934(a1 + 16);
  sub_2978EE938(a1 + 8);

  return sub_2978853D8(a1);
}

uint64_t sub_2978EE93C(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 56);

  return sub_2977FD5B0(v1);
}

uint64_t sub_2978EE970(uint64_t a1, uint64_t a2)
{
  sub_297829174(&v4, a2);
  sub_297849864((a1 + 32), &v4);
  return sub_2978853D8(&v4);
}

void sub_2978EE9BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFBA4(a1, v3);
  }
}

void sub_2978EE9DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFBD8(a1, v3);
  }
}

void sub_2978EE9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA198(480);
  v5 = sub_2977FB7B8(a1);
  v6 = sub_2978EEAD8(a1);
  v7 = sub_2978D65C8(a1);
  sub_2978B6700(v4, v5, v6, a2, v7);
  sub_2978EEAC0((a1 + 16), v4);
  v8 = sub_2977FA198(104);
  v9 = sub_2978D65C8(a1);
  v10 = sub_2978D65BC(a1);
  sub_2978CFB94(v8, v9, v10);

  sub_2978EEAE0((a1 + 24), v8);
}

void sub_2978EEAC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFC0C(a1, v3);
  }
}

void sub_2978EEAE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFC40(a1, v3);
  }
}

uint64_t sub_2978EEAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = off_2A1A902E8;
  if ((*off_2A1A902E8(&off_2A1A902E8) & 1) == 0)
  {
    v68 = sub_2977FA198(24);
    sub_297804140(v68);
    v69 = off_2A1A902D0(&off_2A1A902D0);
    sub_2977FDEF4(v69, v68);
    _tlv_atexit(sub_2978EF0E4, v69);
    *v8(&off_2A1A902E8) = 1;
  }

  v9 = off_2A1A90318;
  if ((*off_2A1A90318(&off_2A1A90318) & 1) == 0)
  {
    v70 = sub_2977FA198(48);
    v71 = off_2A1A902D0(&off_2A1A902D0);
    v72 = sub_2977FB720(v71);
    sub_2978036E4(v84, v72);
    sub_297811450(v70, v84);
    v73 = off_2A1A90300();
    sub_2977FDEF4(v73, v70);
    _tlv_atexit(sub_2978EF0E8, v73);
    *v9(&off_2A1A90318) = 1;
  }

  v10 = off_2A1A90348;
  if ((*off_2A1A90348(&off_2A1A90348) & 1) == 0)
  {
    v74 = sub_2977FA198(280);
    v75 = off_2A1A90300();
    v76 = sub_2977FB720(v75);
    sub_2978EF0EC(v74, v76);
    sub_2978EF0F0();
    v77 = off_2A1A90330(&off_2A1A90330);
    _tlv_atexit(sub_2978EF0F4, v77);
    *v10(&off_2A1A90348) = 1;
  }

  v11 = off_2A1A90378;
  if ((*off_2A1A90378(&off_2A1A90378) & 1) == 0)
  {
    v78 = sub_2977FA198(16);
    sub_2978EF0F8(v78);
    sub_2978EF0FC();
    v79 = off_2A1A90360(&off_2A1A90360);
    _tlv_atexit(sub_2978EF100, v79);
    *v11(&off_2A1A90378) = 1;
  }

  v12 = sub_2977FA198(80);
  sub_2978EE734(v12, a1);
  sub_2977FDEF4(a4, v12);
  if (*(a2 + 112) == 1)
  {
    v13 = sub_2977FA198(232);
    sub_2978E9F20(v13, a3);
    sub_297829374(a3, v13, 1);
  }

  v14 = sub_2977FB720(a4);
  v15 = sub_2977FA198(808);
  v16 = sub_2977FB720(a4);
  v17 = sub_2978DCC60(v16);
  sub_29783F9E4(v15, a3, v17, 0);
  sub_297829178(v83, v15);
  sub_2978EE970(v14, v83);
  sub_2978853D8(v83);
  v18 = sub_2977FB720(a4);
  v19 = sub_2977FA198(240);
  sub_29783C7D0(v19);
  sub_2978EE9D4(v18, v19);
  v20 = sub_2977FB720(a4);
  v21 = sub_2978D6928(v20);
  sub_29783C7C0(v21, 1);
  v22 = sub_2977FB720(a4);
  v23 = sub_2978D6928(v22);
  *v23 &= ~1uLL;
  v24 = sub_2977FB720(a4);
  v25 = sub_2978EEAD8(v24);
  sub_2978CE2A4(v25, 1);
  sub_2978EF104(v26, v84);
  v27 = off_2A1A902D0(&off_2A1A902D0);
  v28 = sub_2977FB720(v27);
  v29 = sub_2977FB720(v84);
  std::string::operator=(v29, v28);
  v30 = sub_2977FA198(1120);
  sub_2977FB7B4(v82, "/");
  sub_2978EF140(v30, v82[0], v82[1]);
  sub_297829178(v82, v30);
  v31 = sub_2977FA198(1216);
  sub_297829174(v81, v82);
  v32 = sub_2977FB720(a4);
  v33 = sub_2978DCC94(v32);
  v34 = sub_2977FB720(a4);
  v35 = sub_2978D6928(v34);
  v36 = off_2A1A90330(&off_2A1A90330);
  v37 = sub_2977FB720(v36);
  sub_29784AD9C(v31, v81, v33, a3, v35, v37);
  sub_29784AE84(v81);
  v38 = sub_2977FB720(a4);
  v39 = sub_2977FA198(2128);
  v40 = sub_2977FA198(296);
  sub_2978EF144();
  sub_297829178(v80, v40);
  v41 = sub_2977FB720(a4);
  v42 = sub_2978D6928(v41);
  v43 = sub_2977FB720(a4);
  v44 = sub_2978DCC94(v43);
  v45 = off_2A1A90360(&off_2A1A90360);
  v46 = sub_2977FB720(v45);
  sub_29787B590(v39, v80, a3, v42, v44, v31, v46, 0, 1, 0);
  sub_2978EE9B4(v38, v39);
  sub_29787B7D8(v80);
  v47 = sub_2977FB720(a4);
  v48 = sub_2978D65C8(v47);
  v49 = sub_2977FB720(a4);
  v50 = sub_2978EEAD8(v49);
  sub_2978EF148(v48, v50);
  v51 = sub_2977FB720(a4);
  v52 = sub_2977FA198(32);
  v53 = sub_2977FB720(a4);
  v54 = sub_2978D65C8(v53);
  v55 = sub_2978BE260(v54);
  sub_2978EF150(v52, v55);
  sub_2978EE968(v51, v52);
  v56 = sub_2977FB720(a4);
  v57 = sub_2978D65C8(v56);
  v58 = sub_2977FB720(a4);
  sub_2978EEAD8(v58);
  v59 = sub_2977FB720(v36);
  sub_2978EE7CC(v57, v60, v59);
  v61 = sub_2977FB720(a4);
  v62 = sub_2978D65C8(v61);
  v63 = sub_2978BE260(v62);
  v64 = sub_2977FB720(a4);
  v65 = sub_2978EF154(v64);
  sub_2978D7B7C(v63, v65);
  v66 = sub_2977FB720(a4);
  sub_2978EE9F4(v66, a3);
  sub_29784AE84(v82);
  return sub_297847E24(v84);
}

uint64_t sub_2978EF15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v26[3] = *MEMORY[0x29EDCA608];
  if (!sub_2978034A0((a2 + 8), "-"))
  {
    sub_2978EEAF8(a1, a2, a3, &v23);
    if (sub_29780347C(a2 + 8))
    {
      sub_2978295E8(a3, 4727, v22);
      v11 = v22;
    }

    else
    {
      v13 = sub_2977FB720(&v23);
      v14 = sub_2978DCC60(v13);
      v15 = sub_2977FB720(&v23);
      v16 = sub_2978DCC94(v15);
      sub_2978044E8(v26, a2 + 8);
      v17 = sub_29782E354(v14, v26[0], v26[1], 0, 1);
      if (v17)
      {
        v18 = v17;
        sub_297829180(v26);
        v19 = sub_297863788(v16, v18, v26[0], 0, 0, 0);
        sub_2978EF498(v16, v19);
        sub_2978055E4(a4, &v23);
LABEL_12:
        result = sub_2978D5CE4(&v23);
        goto LABEL_13;
      }

      sub_2978295E8(a3, 409, v26);
      sub_2978044E8(v21, a2 + 8);
      sub_2978295C0(v26, v21[0], v21[1]);
      v11 = v26;
    }

    sub_29782963C(v11);
    sub_29780AE44(a4);
    goto LABEL_12;
  }

  sub_297804D58();
  if (sub_2977FB5F8(v26))
  {
    v9 = j_nullsub_1(v26, v8);
    sub_2978055E4(&v24, v9);
    sub_2978EF358(a1, a2, a3, &v24, a4);
    sub_29780548C(&v24);
  }

  else
  {
    sub_2978295E8(a3, 410, v25);
    sub_29782963C(v25);
    sub_29780AE44(a4);
  }

  result = sub_29780A9E0(v26, v10);
LABEL_13:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978EF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_2978EEAF8(a1, a2, a3, a5);
  v8 = sub_2977FB720(a5);
  v9 = sub_2978DCC94(v8);
  if (*(a2 + 104))
  {
    v10 = sub_2977FB720(a5);
    v11 = sub_2978DCC60(v10);
    v12 = sub_2977FB720(a4);
    v13 = (*(*v12 + 16))(v12);
    sub_2977FB7B4(v20, v13);
    v14 = sub_29782E718(v11, v20[0], v20[1], 0, 0);
    sub_297829180(v20);
    v15 = sub_297863788(v9, v14, v20[0], 0, 0, 0);
    sub_2978EF498(v9, v15);
    v16 = sub_2978058AC(a4);
    return sub_2978408E0(v9, v14, v16, 0);
  }

  else
  {
    v18 = sub_2978058AC(a4);
    sub_297829180(v20);
    v19 = sub_29787BEA0(v9, v18, 0, 0, 0, v20[0]);
    return sub_2978EF498(v9, v19);
  }
}

uint64_t sub_2978EF4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v8 = "#abc// expected-error{{}} \n";
  }

  else
  {
    v8 = " // Begin \n";
  }

  sub_2977FB7B4(v30, v8);
  sub_2977FB7B4(v27, "Empty");
  v9 = sub_297804A04(v30[0], v30[1], v27[0], v27[1]);
  sub_2977FDEF4(&v32, v9);
  sub_2978EF658(v30);
  v31 = a3;
  sub_2978055E4(&v28, &v32);
  sub_2978EF358(a1, v30, a2, &v28, &v29);
  sub_29780548C(&v28);
  v10 = sub_2977FB720(&v29);
  v11 = sub_2978D65C8(v10);
  sub_29787BD50(v11);
  if (a3)
  {
    v12 = sub_2977FB720(&v29);
    v13 = sub_2978EE93C(v12);
    v14 = sub_2978D6920(v13);
    v15 = sub_2977FB720(&v29);
    v16 = sub_2978D6928(v15);
    v17 = sub_2977FB720(&v29);
    v18 = sub_2978D65C8(v17);
    (*(*v14 + 24))(v14, v16, v18);
    sub_29784FB00(v27);
    v19 = sub_2977FB720(&v29);
    v20 = sub_2978D65C8(v19);
    sub_29787C4FC(v20, v27);
    v21 = sub_2977FB720(&v29);
    v22 = sub_2978EE93C(v21);
    v23 = sub_2978D6920(v22);
    (*(*v23 + 32))(v23);
  }

  v24 = sub_2977FB720(&v29);
  v25 = sub_29787CC6C(v24);
  sub_2978CFBC8(v25);
  sub_2978055E4(a4, &v29);
  sub_2978D5CE4(&v29);
  sub_2978EF65C(v30);
  return sub_29780548C(&v32);
}

void *sub_2978EF660(uint64_t a1, uint64_t a2)
{
  result = sub_297847BE8(a1, a2);
  *result = &unk_2A1E584D8;
  return result;
}

void sub_2978EF698()
{
  v0 = sub_2978EF694();

  j__free(v0);
}

void *sub_2978EF6E0(uint64_t a1)
{
  result = sub_2978EF718(a1, 0);
  *result = &unk_2A1E58608;
  return result;
}

uint64_t sub_2978EF718(uint64_t result, char a2)
{
  *result = &unk_2A1E55730;
  *(result + 8) = a2;
  *(result + 9) = 0;
  return result;
}

void sub_2978EF744()
{
  v0 = j_j_nullsub_1_130();

  j__free(v0);
}

uint64_t sub_2978EF7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = sub_29782916C(a1);
  sub_297801F5C(v6, (v4 + 2));
  sub_297809B88((a1 + 32));
  sub_297809B88((a1 + 56));
  sub_297802744(a1 + 80);
  sub_297802744(a1 + 104);
  sub_297802744(a1 + 128);
  *(a1 + 152) &= 0xFCu;
  *(a1 + 156) = 0x28DE8000093A80;
  *(a1 + 168) = 0;
  sub_2978EF854(a1 + 176);
  sub_2978EF854(a1 + 632);
  sub_297809B88((a1 + 1088));
  *(a1 + 1112) = *(a1 + 1112) & 0x80 | 7;
  return a1;
}

uint64_t sub_2978EF858(uint64_t a1)
{
  v2 = sub_2978EF888();
  sub_297809B88((v2 + 432));
  return a1;
}

uint64_t sub_2978EF88C(uint64_t a1)
{
  v2 = sub_29787B54C();
  sub_2978C0EE0(v2 + 408);
  return a1;
}

uint64_t sub_2978EF8BC(uint64_t a1)
{
  v2 = sub_29782916C(a1);
  sub_297809B88(v2 + 1);
  sub_297809B88((a1 + 32));
  sub_297809B88((a1 + 56));
  *(a1 + 80) = *(a1 + 80) & 0xFC | 1;
  sub_297802744(a1 + 88);
  sub_297809B88((a1 + 112));
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  sub_2978C0EE0(a1 + 144);
  v5 = 0;
  v4 = 1;
  sub_29787B53C(a1 + 168, &v5, &v4);
  sub_297802744(a1 + 176);
  sub_297802744(a1 + 200);
  *(a1 + 224) = 1;
  sub_297809B88((a1 + 232));
  sub_297809B88((a1 + 256));
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  sub_29780AE44(a1 + 288);
  return a1;
}

void *sub_2978EF984(void *a1, uint64_t a2)
{
  v4 = sub_297879A1C(a1);
  sub_29782916C(v4 + 2);
  *a1 = &unk_2A1E557D0;
  a1[2] = a2;
  a1[3] = sub_29787F3CC();
  return a1;
}

uint64_t sub_2978EF9E4(uint64_t a1)
{
  *a1 = 2;
  sub_297802744(a1 + 8);
  sub_297809B88((a1 + 32));
  sub_297802744(a1 + 56);
  sub_297802744(a1 + 80);
  *(a1 + 104) = 0;
  *(a1 + 112) = 256;
  return a1;
}

uint64_t sub_2978EFA38(uint64_t a1)
{
  std::string::~string((a1 + 80));
  std::string::~string((a1 + 56));
  sub_297809B8C(a1 + 32);
  std::string::~string((a1 + 8));
  return a1;
}

void sub_2978EFB00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFB18(a1, v3);
  }
}

void sub_2978EFB18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29787CE6C(a2);

    j__free(v2);
  }
}

void sub_2978EFBA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29787B7DC(a2);

    j__free(v2);
  }
}

void sub_2978EFBD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29785617C(a2);

    j__free(v2);
  }
}

void sub_2978EFC0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978B6778(a2);

    j__free(v2);
  }
}

void sub_2978EFC40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978CFBC4(a2);

    j__free(v2);
  }
}

void sub_2978EFCA0(std::string **a1, std::string *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFCB8(a1, v3);
  }
}

void sub_2978EFCB8(int a1, std::string *this)
{
  if (this)
  {
    std::string::~string(this);

    j__free(v2);
  }
}

void sub_2978EFD18(std::string **a1, std::string *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978EFD30(a1, v3);
  }
}

void sub_2978EFD30(int a1, std::string *this)
{
  if (this)
  {
    j_std::string::~string(this);

    j__free(v2);
  }
}

void *sub_2978EFD64()
{
  result = off_2A1A90330();
  *result = v1;
  return result;
}

uint64_t sub_2978EFDB8(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return sub_2978EFDD0(result);
  }

  return result;
}

void *sub_2978EFDF4()
{
  result = off_2A1A90360();
  *result = v1;
  return result;
}

uint64_t sub_2978EFE48(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return sub_2978EFE60(result);
  }

  return result;
}

uint64_t sub_2978EFE84@<X0>(void *a1@<X8>)
{
  v8[3] = *MEMORY[0x29EDCA608];
  sub_2978EFF14(v8, 1);
  v2 = sub_2977FD5B0(v8);
  sub_2978EFF18(v2);
  v3 = sub_29782C270(v8);
  v5 = sub_297849EE0(v3, v4);
  sub_297849EA0(v5, v3, a1);
  result = sub_29782C280(v8);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978EFF1C(uint64_t a1, uint64_t a2)
{
  *(j_j_nullsub_1(a1, &v4) + 8) = a2;
  *(a1 + 16) = sub_2978EFF64();
  return a1;
}

uint64_t sub_2978EFF68(uint64_t a1, unint64_t a2)
{
  if (sub_2978EFFB0() < a2)
  {
    sub_29780339C();
  }

  return sub_2978EFFB4(a2);
}

void *sub_2978EFFCC(void *a1)
{
  v2 = sub_297849440(a1, 0);
  *v2 = &unk_2A1E58648;
  sub_29784A00C((v2 + 3), &v8);
  sub_297849EE0(a1, v3);
  v5 = sub_297849EE0(a1, v4);
  sub_2978F0040(&v7, v5);
  return a1;
}

void sub_2978F0048()
{
  v0 = sub_2978F0044();

  j__free(v0);
}

uint64_t sub_2978F0074(uint64_t a1, uint64_t a2)
{
  v3 = sub_297849EE0(a1, a2);
  j_j_nullsub_1(&v8, v3);
  sub_29784A00C(a1 + 24, v4);
  v6 = nullsub_1(a1, v5);
  return sub_297809C98(&v8, v6, 1);
}

uint64_t sub_2978F00CC(uint64_t a1, uint64_t a2)
{
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_2978F00F0(a2);
}

uint64_t sub_2978F00F4(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297802744(v2 + 24);
  sub_297802744(a1 + 48);
  sub_297802744(a1 + 72);
  sub_297802744(a1 + 96);
  sub_297809B88((a1 + 120));
  sub_297809B88((a1 + 144));
  return a1;
}

void sub_2978F014C(std::__shared_weak_count *a1, uint64_t a2)
{
  a1->__vftable = &unk_2A1E58648;
  sub_29784A00C(&a1[1], a2);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

uint64_t sub_2978F01A0(uint64_t a1, uint64_t a2)
{
  sub_297849EE0(a1, a2);
  v4 = sub_297849EE0(a1, v3);
  return sub_2978F01E0(&v6, v4);
}

void sub_2978F01F0(std::string *a1)
{
  sub_297809B8C(&a1[6]);
  sub_297809B8C(&a1[5]);
  std::string::~string(a1 + 4);
  std::string::~string(a1 + 3);
  std::string::~string(a1 + 2);
  std::string::~string(a1 + 1);

  std::string::~string(a1);
}

uint64_t sub_2978F0254@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = off_2A1A903A8();
  if (*v6)
  {
    v7 = v6;
    sub_2978089E0();
    v8 = off_2A1A90390();
    *v8 = v9;
    *v7 = 0;
  }

  else
  {
    v8 = off_2A1A90390();
  }

  v10 = sub_2977FA198(16);
  sub_2978294BC(v10);
  sub_297829178(v20, v10);
  v11 = sub_2977FA198(136);
  sub_2978F03C4();
  sub_297829178(&v19, v11);
  v12 = *v8;
  v13 = sub_2977FB720(&v19);
  *(v13 + 4) = *(v13 + 4) & 0xFFFFFFFFFFFF7FFFLL | ((v12 & 1) << 15);
  if (a2)
  {
    v14 = sub_2977FA198(48);
    sub_2978F03C8();
  }

  else
  {
    v14 = sub_2977FA198(72);
    v15 = sub_2977FB720(&v19);
    sub_2978E976C(v14, a1, v15, 0);
  }

  v16 = sub_2977FA198(1216);
  v17 = sub_2977FB720(&v19);
  sub_297829294(v16, v20, v17, v14, 1);
  sub_2977FDEF4(a3, v16);
  sub_297829368(&v19);
  return sub_29782936C(v20);
}

BOOL sub_2978F03CC(uint64_t a1, uint64_t a2)
{
  v5[13] = *MEMORY[0x29EDCA608];
  sub_2978F0454(v5, a1, a2);
  sub_2978F049C(v5, 0, 0);
  v2 = sub_2978F0458(v5);
  sub_2978F0498(v5);
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL sub_2978F0458(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 40));
  if (result)
  {
    v3 = sub_2978D6920(*(a1 + 16));
    return sub_29782B694(v3) == 0;
  }

  return result;
}

uint64_t sub_2978F049C(void *a1, char a2, char a3)
{
  result = sub_29780B1BC(a1 + 5);
  if (result)
  {
    v7 = sub_2977FB720((a1 + 5));
    v8 = sub_2978D65C8(v7);
    v9 = sub_2977FB720((a1 + 5));
    v10 = sub_29787CC6C(v9);
    v11 = sub_2977FB720((a1 + 5));
    v12 = sub_2978D65BC(v11);
    sub_29787BD50(v8);
    if ((a2 & 1) == 0)
    {
      sub_2978F0F1C(a1);
    }

    sub_2978F0D8C(a1);
    sub_2978CFBC8(v10);
    sub_2978B6A00(v12);
    sub_2978D5AB0(v10);
    if ((a3 & 1) == 0)
    {
      v13 = sub_2977FB720((a1 + 3));
      sub_2978044E8(&v25, a1[1] + 80);
      sub_2978AFB24(v13, v25, v26);
      v14 = sub_2977FB720((a1 + 5));
      v15 = sub_2977FB7B8(v14);
      v25 = sub_2978D7E90(v15);
      v26 = v16;
      v17 = sub_2977FB720(&v25);
      v18 = sub_2978130B8(&v25);
      if (v17 != v18)
      {
        v19 = v18;
        do
        {
          v20 = *v17++;
          v21 = sub_2977FB720((a1 + 3));
          sub_2978AF854(v21, v20);
        }

        while (v17 != v19);
      }
    }

    sub_2978B6D78(v12);
    if (sub_2978F0458(a1))
    {
      v22 = sub_2977FB720((a1 + 5));
      v23 = sub_2977FB7B8(v22);
      v25 = sub_2978D7E90(v23);
      v26 = v24;
      sub_2977FB720(&v25);
      sub_2978130B8(&v25);
    }

    sub_2978F1210(a1);
    return sub_2978F0E34(a1);
  }

  return result;
}

BOOL sub_2978F0610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[13] = *MEMORY[0x29EDCA608];
  sub_2978055E4(v8, a2);
  sub_2978F06B4(v9, a1, a3, v8);
  sub_29780548C(v8);
  sub_2978F049C(v9, 0, 0);
  v5 = sub_2978F0458(v9);
  sub_2978F0498(v9);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_2978F06C0(uint64_t a1)
{
  v2 = sub_29782916C(a1);
  sub_297802744(v2 + 10);
  sub_297802744(a1 + 64);
  sub_297809B88((a1 + 88));
  sub_297809B88((a1 + 112));
  *(a1 + 4) = *(a1 + 4) & 0xFFFFFFFFFFFF8000 | 0xF0;
  sub_2978F0764(a1, 0);
  *(a1 + 4) &= ~0x8000uLL;
  sub_2978F0778(a1, 0);
  *(a1 + 4) &= 0xFFF0FFFFuLL;
  *(a1 + 12) = xmmword_2978FC3C0;
  *(a1 + 28) = *(a1 + 32) << 32;
  return a1;
}

void *sub_2978F078C(void *a1)
{
  v2 = sub_2978E974C(a1);
  *v2 = &unk_2A1E58448;
  sub_297809B88(v2 + 2);
  a1[5] = 0;
  return a1;
}

void *sub_2978F07D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FA198(936);
  sub_297883D24(v6);
  sub_2977FDEF4(a1, v6);
  a1[1] = a2;
  a1[2] = a3;
  sub_297804560(a1 + 3);
  v7 = sub_2977FB720(a1);
  sub_2978EF15C(v7, a2, a1[2], a1 + 5);
  sub_29783CEF0((a1 + 6));
  if (sub_29780B1BC(a1 + 5))
  {
    v8 = sub_2977FA198(200);
    sub_2978F08C4(v8, a1[2]);
    sub_2978F0880(a1 + 3);
  }

  return a1;
}

uint64_t sub_2978F0880(uint64_t *a1)
{
  sub_2978F08C8(v3);
  sub_29782F71C(v3, a1);
  return sub_297847E24(v3);
}

uint64_t *sub_2978F08CC(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2977FDEF4(&v9, a2);
  v4 = sub_2977FA198(32);
  j_j_nullsub_1(&v8, v5);
  sub_2978F0950(v4, a2);
  a1[1] = v4;
  sub_2978058AC(&v9);
  nullsub_1(a1, v6);
  sub_2978F0954(&v9);
  return a1;
}

void *sub_2978F0958(void *a1, uint64_t a2)
{
  result = sub_297849440(a1, 0);
  *result = &unk_2A1E58680;
  result[3] = a2;
  return result;
}

void sub_2978F09A4(std::__shared_weak_count *a1)
{
  j_std::__shared_weak_count::~__shared_weak_count(a1);

  j__free(v1);
}

uint64_t sub_2978F09D4(uint64_t a1)
{
  j_j_nullsub_1(&v5, a1);
  v3 = nullsub_1(a1, v2);
  return sub_297809D24(&v5, v3, 1);
}

void sub_2978F0A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978F0A58(a2);

    j__free(v2);
  }
}

uint64_t sub_2978F0A5C(uint64_t a1)
{
  sub_29781B854(a1 + 168);

  return sub_2978F0A98(a1);
}

uint64_t sub_2978F0A9C(uint64_t a1)
{
  sub_2978F0AE0(a1, a1 + 24);
  sub_297818154(a1 + 24);

  return sub_2978F0AE4(a1);
}

void *sub_2978F0AE8(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = sub_2978B3444(result);
    v1[2] = v2;

    return sub_2977FE390(v2, v2);
  }

  return result;
}

uint64_t sub_2978F0B38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2978F0B78(a1);
    v2 = sub_2978B3444(a1);
    nullsub_1(v2, v3);
  }

  return a1;
}

uint64_t sub_2978F0B78(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    v2 = sub_2978B3408(result);
    v3 = sub_2978F0C30(v1);

    return sub_2978F0BD0(v1, v2, v3);
  }

  return result;
}

uint64_t sub_2978F0BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (sub_29781550C(&v6, &v5))
  {
    sub_2978F0C74(a1, v6);
  }

  return v5;
}

uint64_t sub_2978F0C30(uint64_t a1)
{
  sub_2978B3444(a1);
  v2 = sub_2978B3444(a1);
  sub_2977FDEF4(&v4, v2);
  return v4;
}

void sub_2978F0C74(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v2 = sub_2978B3534(a1, &v3);
  sub_29781F404(v2);
}

void sub_2978F0CD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978F0A24(a1, v3);
  }
}

uint64_t sub_2978F0CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978F0D20();
  *(v4 + 160) = a2;
  sub_29781BBD0(v4 + 168);
  return a1;
}

uint64_t sub_2978F0D24(uint64_t a1)
{
  v2 = sub_2978F0D54();
  sub_297817C28((v2 + 24));
  return a1;
}

uint64_t sub_2978F0D8C(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 40));
  if (result)
  {
    v3 = sub_2978D6920(*(a1 + 16));
    v4 = sub_2977FB720(a1 + 40);
    v5 = sub_2978D6928(v4);
    v6 = sub_2977FB720(a1 + 40);
    v7 = sub_2978D65C8(v6);
    v8 = *(*v3 + 24);

    return v8(v3, v5, v7);
  }

  return result;
}

uint64_t sub_2978F0E34(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 40));
  if (result)
  {
    v3 = sub_2978D6920(*(a1 + 16));
    (*(*v3 + 32))(v3);
    v4 = *(*sub_2978D6920(*(a1 + 16)) + 40);

    return v4();
  }

  return result;
}

uint64_t sub_2978F0ED0(uint64_t a1)
{
  sub_2977FD134(a1 + 48);
  sub_2978D5CE4(a1 + 40);
  sub_297847E24(a1 + 24);

  return sub_2978DADD0(a1);
}

uint64_t sub_2978F0F1C(void *a1)
{
  if (!sub_297806904((a1[1] + 32)) || (result = sub_297806904(a1 + 6), (result & 1) == 0))
  {
    v3 = sub_2977FB720((a1 + 5));
    v4 = sub_2978D65C8(v3);
    v5 = sub_2977FB720((a1 + 5));
    v6 = sub_2978D65BC(v5);
    v7 = sub_2977FB720((a1 + 5));
    v8 = sub_2978DCC60(v7);
    v9 = sub_2977FB720((a1 + 5));
    v10 = sub_2978DCC94(v9);
    v11 = sub_2977FA198(24);
    sub_2978F13B0(v11, v4);
    sub_29787CBDC(v4, v11);
    sub_2978B69EC(v6);
    sub_2978F13B4(v35);
    if (!sub_297806904(a1 + 6))
    {
      v12 = sub_2977FB720((a1 + 6));
      v13 = sub_2977FB7B8((a1 + 6));
      if (v12 != v13)
      {
        v14 = v13;
        do
        {
          v15 = *v12;
          v16 = v12[1];
          v12 += 2;
          sub_2977FB7B4(&v33, "Prelude");
          v17 = sub_297804A04(v15, v16, v33, v34);
          sub_297829180(&v29);
          LODWORD(v33) = sub_29787BEA0(v10, v17, 0, 0, 0, v29);
          sub_297803988(v35, &v33);
        }

        while (v12 != v14);
      }
    }

    if (sub_297806904((a1[1] + 32)) || (v32 = sub_29780A294((a1[1] + 32), v18), v31 = sub_297809B0C(a1[1] + 32, v19), !sub_29780852C(&v32, &v31)))
    {
LABEL_11:
      v33 = sub_29783CEF4(v35);
      v34 = v23;
      v29 = sub_29783CF24(v35);
      v30 = v24;
      while (sub_29783CF54(&v33, &v29))
      {
        v25 = *sub_2978F13B8(&v33);
        sub_297829180(&v32);
        sub_29787229C(v4, v25, 0, v32);
        sub_2978F13C4(&v33);
      }

      v33 = sub_29783CEF4(v35);
      v34 = v26;
      v27 = sub_2978F13B8(&v33);
      sub_2978F13D4(v11, *v27);
    }

    else
    {
      while (1)
      {
        v20 = sub_2977FB720(&v32);
        sub_2978044E8(&v33, v20);
        v21 = sub_29782E354(v8, v33, v34, 0, 1);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        sub_297829180(&v29);
        LODWORD(v33) = sub_297863788(v10, v22, v29, 0, 0, 0);
        sub_297803988(v35, &v33);
        sub_2978297A4(&v32);
        if (!sub_29780852C(&v32, &v31))
        {
          goto LABEL_11;
        }
      }

      sub_2978295E8(a1[2], 409, &v33);
      v28 = sub_2977FB720(&v32);
      sub_2978044E8(&v29, v28);
      sub_2978295C0(&v33, v29, v30);
      sub_29782963C(&v33);
    }

    return sub_2977FD134(v35);
  }

  return result;
}

void sub_2978F1210(uint64_t a1)
{
  if (!sub_29780347C(*(a1 + 8) + 56))
  {
    sub_297802744(&v21);
    v2 = sub_2978037C8(*(a1 + 8) + 56);
    sub_29781EBDC(v20, v2, &v21, 0);
    if (sub_29780347C(&v21))
    {
      v3 = sub_2977FB720(a1 + 40);
      v4 = sub_2977FB7B8(v3);
      v19[0] = sub_2978D7E90(v4);
      v19[1] = v5;
      v6 = sub_2977FB720(v19);
      v7 = sub_2978130B8(v19);
      if (v6 != v7)
      {
        v8 = v7;
        do
        {
          v17 = sub_2978A479C(*v6);
          v18 = v9;
          v10 = sub_2977FB720(&v17);
          for (i = sub_2978130B8(&v17); v10 != i; ++v10)
          {
            v12 = *v10;
            if (sub_297887D40(*v10))
            {
              v13 = sub_29788709C(v12);
              v15 = sub_297801FA8(v20, v13, v14);
              sub_297801F64(v15, " ");
            }
          }

          ++v6;
        }

        while (v6 != v8);
      }

      sub_29781EE2C(v20);
    }

    else
    {
      sub_2978295E8(*(a1 + 16), 427, v19);
      sub_2978044E8(&v17, *(a1 + 8) + 56);
      v16 = sub_2978295C0(v19, v17, v18);
      sub_2978044E8(&v17, &v21);
      sub_2978295C0(v16, v17, v18);
      sub_29782963C(v19);
    }

    sub_29781ED3C(v20);
    std::string::~string(&v21);
  }
}

void *sub_2978F13DC(void *a1, uint64_t a2)
{
  v4 = sub_297868A04(a1);
  *v4 = &unk_2A1E586B8;
  v4[1] = a2;
  sub_297829180(v4 + 4);
  return a1;
}

uint64_t sub_2978F1428(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = a5;
  if (a3 == 1)
  {
    v5 = result;
    result = sub_29782B07C(&v7, (result + 16));
    if (result)
    {
      sub_29784FB00(v6);
      sub_297853ED0(v6);
      sub_297853640(v6, 525);
      return sub_2978F1494(*(v5 + 8), v6);
    }
  }

  return result;
}

uint64_t sub_2978F1494(uint64_t a1, unint64_t a2)
{
  sub_297866C44(a1);
  v4 = sub_2977FB720(a1 + 1928) + 24 * *(a1 + 1984);

  return sub_2978F14E8(a1 + 1928, v4, a2);
}

uint64_t sub_2978F14E8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  if (sub_2977FB7B8(a1) == a2)
  {
    sub_2978405F8(a1, a3);
    return sub_2977FB7B8(a1) - 24;
  }

  else
  {
    if (*(a1 + 8) >= *(a1 + 16))
    {
      v6 = v4 - sub_2977FB720(a1);
      sub_297846128(a1, 0);
      v4 = sub_2977FB720(a1) + v6;
    }

    v7 = sub_2977FB7B8(a1);
    v8 = sub_297819418(a1);
    v9 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v9;
    sub_2977FB7B8(a1);
    sub_2977FB7B8(a1);
    sub_29787856C();
    v10 = sub_2977FB7B8(a1);
    sub_2977FD5DC(a1, v10 + 24);
    if (v4 <= a3)
    {
      v11 = 24;
      if (*(a1 + 8) <= a3)
      {
        v11 = 0;
      }

      a3 += v11;
    }

    v12 = *a3;
    *(v4 + 15) = *(a3 + 15);
    *v4 = v12;
    return v4;
  }
}

void *sub_2978F1604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2977FA198(936);
  sub_297883D24(v8);
  sub_2977FDEF4(a1, v8);
  a1[1] = a2;
  a1[2] = a3;
  sub_297804560(a1 + 3);
  v9 = sub_2977FB720(a1);
  v10 = a1[2];
  sub_2978055E4(&v13, a4);
  sub_2978EF358(v9, a2, v10, &v13, a1 + 5);
  sub_29780548C(&v13);
  sub_29783CEF0((a1 + 6));
  if (sub_29780B1BC(a1 + 5))
  {
    v11 = sub_2977FA198(200);
    sub_2978F08C4(v11, a1[2]);
    sub_2978F0880(a1 + 3);
  }

  return a1;
}

BOOL sub_2978F1744(uint64_t a1)
{
  v2 = sub_29781F06C();
  sub_2978F0254(v2, 0, &v6);
  v3 = sub_2977FB720(&v6);
  v4 = sub_2978F03CC(a1, v3);
  sub_2978DADCC(&v6);
  return v4;
}

uint64_t fosl_frontend_parseString(char *a1, void *a2)
{
  sub_2978EF658(v15);
  sub_2977FB7B4(v12, a1);
  sub_2977FB7B4(&v13, "Source");
  v4 = sub_297804A04(v12[0], v12[1], v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  sub_2977FDEF4(&v14, v4);
  sub_297802744(&v13);
  sub_29783E51C(v12, &v13);
  sub_2978F0254(v12, 0, &v11);
  sub_2978055E4(v10, &v14);
  v5 = sub_2977FB720(&v11);
  sub_2978F0610(v15, v10, v5);
  sub_29780548C(v10);
  sub_29781ED10(v12);
  if (sub_29780347C(&v13))
  {
    *a2 = 0;
  }

  else
  {
    v6 = sub_2978032A4(&v13);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    *a2 = v7;
    v8 = sub_2978037C8(&v13);
    memcpy(v7, v8, v6);
    *(*a2 + v6) = 0;
  }

  sub_2978DADCC(&v11);
  sub_29781F160(v12);
  std::string::~string(&v13);
  sub_29780548C(&v14);
  return sub_2978EF65C(v15);
}

uint64_t fosl_createParser()
{
  v0 = sub_2977FA198(272);
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  sub_2978F19A4(v0);
  v1 = sub_29781F06C();
  sub_2978F0254(v1, 1, &v5);
  sub_2978F19A8((v0 + 120), &v5);
  sub_2978DADCC(&v5);
  v2 = sub_2977FA198(200);
  v3 = sub_2977FB720(v0 + 120);
  sub_2978F08C4(v2, v3);
  sub_2978F0880((v0 + 136));
  return v0;
}

uint64_t *sub_2978F19A8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_2978DAE00(a1, v4);
  nullsub_1(a2, v5);
  return a1;
}

void fosl_destroyParser(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2978F1A1C();

    j__free(v1);
  }
}

uint64_t fosl_setPrimarySource(uint64_t a1, char *a2)
{
  v4 = sub_2977FB720(a1 + 120);
  sub_297829A74(v4);
  v5 = sub_2977FB720(a1 + 120);
  sub_2978291E8(v5);
  v6 = sub_2977FB720(a1 + 120);
  v7 = *sub_2978D6920(v6);
  (*v7)();
  sub_2977FB7B4(v15, a2);
  sub_2977FB7B4(v14, "Source");
  v8 = sub_297804A04(v15[0], v15[1], v14[0], v14[1]);
  sub_2977FDEF4(v15, v8);
  v9 = sub_2977FA198(104);
  v10 = sub_2977FB720(a1 + 120);
  sub_2978F1B6C(v13, (a1 + 136));
  sub_2978055E4(v12, v15);
  sub_2978F1B70(v9, a1, v10, v13, v12);
  sub_2978F1B54((a1 + 128), v9);
  sub_29780548C(v12);
  sub_297847E24(v13);
  return sub_29780548C(v15);
}

void sub_2978F1B54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978F4418(v3);
  }
}

uint64_t fosl_addPrelude(uint64_t a1, char *a2)
{
  v3 = sub_2977FB720(a1 + 128);
  sub_2977FB7B4(v5, a2);
  return sub_2978F1BC0(v3, v5[0], v5[1]);
}

uint64_t sub_2978F1BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a2;
  *(&v4 + 1) = a3;
  return sub_297803F88(a1 + 48, &v4);
}

uint64_t fosl_parseShader(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 128);

  return sub_2978F1C18(v1);
}

uint64_t sub_2978F1C18(void *a1)
{
  result = sub_29780B1BC(a1 + 5);
  if (result)
  {
    v3 = sub_2977FB720((a1 + 5));
    v4 = sub_2978D65C8(v3);
    v5 = sub_2977FB720((a1 + 5));
    v6 = sub_29787CC6C(v5);
    v7 = sub_2977FB720((a1 + 5));
    v8 = sub_2978D65BC(v7);
    sub_29787BD50(v4);
    sub_2978F0F1C(a1);
    sub_2978F0D8C(a1);
    sub_2978CFBC8(v6);
    sub_2978B6A00(v8);
    sub_2978D5AB0(v6);
    v9 = sub_2977FB720((a1 + 3));
    sub_2978044E8(&v21, a1[1] + 80);
    sub_2978AFB24(v9, v21, v22);
    v10 = sub_2977FB720((a1 + 5));
    v11 = sub_2977FB7B8(v10);
    v21 = sub_2978D7E90(v11);
    v22 = v12;
    v13 = sub_2977FB720(&v21);
    v14 = sub_2978130B8(&v21);
    if (v13 != v14)
    {
      v15 = v14;
      do
      {
        v16 = *v13++;
        v17 = sub_2977FB720((a1 + 3));
        sub_2978AF854(v17, v16);
      }

      while (v13 != v15);
    }

    sub_2978B6D78(v8);
    if (sub_2978F0458(a1))
    {
      v18 = sub_2977FB720((a1 + 5));
      v19 = sub_2977FB7B8(v18);
      v21 = sub_2978D7E90(v19);
      v22 = v20;
      sub_2977FB720(&v21);
      sub_2978130B8(&v21);
    }

    sub_2978F1210(a1);
    return sub_2978F0E34(a1);
  }

  return result;
}

uint64_t fosl_codeComplete(uint64_t a1, char *a2, unsigned int a3, _DWORD *a4)
{
  *(a1 + 104) = 0x100000001;
  fosl_setPrimarySource(a1, a2);
  v7 = sub_2977FB720(a1 + 128);
  v8 = sub_2977FB720(v7 + 40);
  v9 = sub_2978DCC94(v8);
  v10 = sub_29786A6B0(v9);
  *(a1 + 104) = sub_297841D38(v9, v10, a3, 0);
  *(a1 + 108) = sub_297841944(v9, v10, a3, 0);

  return sub_2978F1E28(a1, a4);
}

uint64_t sub_2978F1E28(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2977FB720(a1 + 128);
  v5 = sub_2977FB720((v4 + 5));
  v6 = sub_2978DCC94(v5);
  v7 = sub_2978D65C8(v5);
  v8 = sub_29786A6B0(v6);
  v9 = sub_2978606D8(v6, v8);
  sub_29787B8B0(v7, v9, *(a1 + 104), *(a1 + 108));
  v10 = sub_2977FB720(a1 + 120);
  sub_29786F060(v10, 1);
  sub_2978F1C18(v4);
  if (!sub_2978F0458(v4))
  {
    return 0;
  }

  v11 = sub_29787CC6C(v5);
  v12 = sub_2978F06B8(v11);
  v14 = sub_29780A294(v12, v13);
  v16 = sub_297809B0C(v12, v15);
  sub_2978F2EE8(v14, v16);
  *a2 = sub_29780BD00(v12);

  return sub_2978297B4(v12, v17);
}

uint64_t fosl_codeCompleteLineColumn(uint64_t a1, char *a2, int a3, int a4, _DWORD *a5)
{
  *(a1 + 104) = a3;
  *(a1 + 108) = a4;
  fosl_setPrimarySource(a1, a2);

  return sub_2978F1E28(a1, a5);
}

uint64_t fosl_getNumDiagnostics(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 120);
  v2 = sub_2978D6920(v1);

  return sub_2978DCF64(v2);
}

char *fosl_getDiagnostics(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 128);
  v3 = sub_2977FB720(v2 + 40);
  v4 = sub_2978DCC94(v3);
  v5 = sub_2977FB720(a1 + 120);
  v6 = sub_2978D6920(v5);
  sub_29780C6B8((a1 + 224));
  sub_29780CA0C((a1 + 248));
  v7 = sub_297805508(v6);
  sub_2978DD2DC((a1 + 224), v7);
  v8 = sub_2978483F4(v6);
  sub_2978DD358((a1 + 248), v8);
  v9 = sub_2978DCF64(v6);
  if (!v9)
  {
    return 0;
  }

  v48 = malloc_type_malloc(56 * v9, 0x1070040AB968983uLL);
  v56 = sub_2978DD3D4(v6, v10);
  v55 = sub_2978E9334(v6, v11);
  if (sub_29780852C(&v56, &v55))
  {
    v12 = 0;
    do
    {
      v52 = v12;
      v13 = sub_29780BD00((a1 + 224));
      v15 = sub_2978297B4(&v56, v14);
      v16 = sub_2977FB720(v15 + 32);
      for (i = sub_2977FB7B8(v15 + 32); v16 != i; v16 += 3)
      {
        v18 = sub_297850AD4(v16);
        LODWORD(v53) = sub_2978DD410(v4, v18);
        v19 = sub_2978478EC(v16);
        HIDWORD(v53) = sub_2978DD410(v4, v19);
        sub_2978DD40C(a1 + 224, &v53);
      }

      v49 = sub_29780AAE8((a1 + 248));
      v21 = sub_2978297B4(&v56, v20);
      v22 = sub_2977FB720(v21 + 80);
      for (j = sub_2977FB7B8(v21 + 80); v22 != j; v22 += 14)
      {
        v25 = sub_297850AD4(v22);
        v26 = sub_2978478EC(v22);
        if (sub_297850C04(v22))
        {
          v27 = sub_2978D6928(v3);
          v26 = sub_297850610(v26, 0, v4, v27);
        }

        v53 = 0;
        v54 = 0;
        LODWORD(v53) = sub_2978DD410(v4, v25);
        HIDWORD(v53) = sub_2978DD410(v4, v26);
        v54 = 0;
        if (sub_29780347C((v22 + 6)))
        {
          sub_297856348(v22 + 3);
        }

        else
        {
          v54 = sub_2978037C8(v22 + 6);
        }

        sub_29780BFD8((a1 + 248), &v53);
      }

      v28 = sub_2978297B4(&v56, v23);
      v29 = sub_2978DD410(v4, *(v28 + 24));
      v31 = sub_2978297B4(&v56, v30);
      v32 = sub_29782B90C(v31 + 32);
      v34 = sub_2978297B4(&v56, v33);
      v35 = sub_29782B950(v34 + 80);
      v37 = sub_2978297B4(&v56, v36);
      v51 = sub_2978037C8(v37);
      v38 = sub_29786A6B0(v4);
      v50 = sub_297841D38(v4, v38, v29, 0);
      v39 = sub_29786A6B0(v4);
      v41 = sub_297841944(v4, v39, v29, 0);
      if (v32)
      {
        v42 = sub_2978297B4((a1 + 224), v40) + 8 * v13;
        if (!v35)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v42 = 0;
        if (!v35)
        {
LABEL_17:
          v43 = 0;
          goto LABEL_18;
        }
      }

      v43 = sub_2978297B4((a1 + 248), v40) + 16 * v49;
LABEL_18:
      v44 = sub_2978297B4(&v56, v40);
      v45 = sub_2978D9FA0(*(v44 + 216));
      v46 = &v48[56 * v52];
      *v46 = v51;
      *(v46 + 2) = v29;
      *(v46 + 3) = v50;
      *(v46 + 4) = v41;
      *(v46 + 5) = v32;
      *(v46 + 3) = v42;
      *(v46 + 8) = v35;
      *(v46 + 5) = v43;
      *(v46 + 12) = v45;
      v12 = v52 + 1;
      sub_2978ED0A4(&v56);
    }

    while (sub_29780852C(&v56, &v55));
  }

  return v48;
}

void fosl_removeSpecialization(uint64_t a1, char *a2)
{
  v3 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v4, a2);
  sub_2978B0658(v3, v4[0], v4[1]);
}

uint64_t fosl_specializeFloat(uint64_t a1, char *a2, float a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0A38(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeInt(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0BA4(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeUInt(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0BA4(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeBool(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0C94(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeFloatVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0AAC(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeIntVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0C18(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeUIntVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0C18(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeBoolVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0D0C(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeFloatMatrix(uint64_t result, char *a2, uint64_t a3, int a4, int a5)
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23[0] = &v26;
  v23[1] = &v24;
  v23[2] = &v25;
  switch(a4)
  {
    case 4:
      v8 = sub_2977FB720(result + 136);
      sub_2977FB7B4(&v21, a2);
      v9 = sub_2978F2888(v23, 0);
      v11 = v10;
      v12 = sub_2978F2888(v23, 1);
      v14 = v13;
      v15 = sub_2978F2888(v23, 2);
      v17 = v16;
      v18 = sub_2978F2888(v23, 3);
      return sub_2978B08EC(v8, v21, v22, v9, v11, v12, v14, v20, v15, v17, v18, v19);
    case 3:
      v7 = sub_2977FB720(result + 136);
      sub_2977FB7B4(&v21, a2);
      sub_2978F2888(v23, 0);
      sub_2978F2888(v23, 1);
      sub_2978F2888(v23, 2);
      return sub_2978B0840(v7, v21, v22);
    case 2:
      v6 = sub_2977FB720(result + 136);
      sub_2977FB7B4(&v21, a2);
      sub_2978F2888(v23, 0);
      sub_2978F2888(v23, 1);
      return sub_2978B0724(v6, v21, v22);
  }

  return result;
}

uint64_t fosl_getSpecializedUniforms(uint64_t a1, _DWORD *a2)
{
  sub_29780C6B8((a1 + 200));
  v4 = sub_2977FB720(a1 + 136);
  sub_2978B09A8(v4, v13);
  v12 = sub_29780A294(v13, v5);
  v11 = sub_297809B0C(v13, v6);
  while (sub_29780852C(&v12, &v11))
  {
    v10 = *sub_2977FB720(&v12);
    v9 = sub_2977FB720(&v10);
    sub_29781B720(a1 + 200, &v9);
    sub_29786F9A0(&v12);
  }

  sub_29780A9D8(v13);
  *a2 = sub_29780BD00((a1 + 200));
  return sub_2978297B4((a1 + 200), v7);
}

uint64_t fosl_getUsedUniforms(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2977FB720(a1 + 128);
  sub_29780C6B8((a1 + 176));
  v5 = sub_2977FB720(v4 + 40);
  v6 = sub_2977FB7B8(v5);
  v20[0] = sub_2978D7E90(v6);
  v20[1] = v7;
  v8 = sub_2977FB720(v20);
  v9 = sub_2978130B8(v20);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      sub_2978F2AAC(*v8, v19);
      v18 = sub_29780A294(v19, v11);
      v17 = sub_297809B0C(v19, v12);
      while (sub_29780852C(&v18, &v17))
      {
        v16 = *sub_2977FB720(&v18);
        v15 = sub_2977FB720(&v16);
        sub_29781B720(a1 + 176, &v15);
        sub_29786F9A0(&v18);
      }

      sub_29780A9D8(v19);
      ++v8;
    }

    while (v8 != v10);
  }

  *a2 = sub_29780BD00((a1 + 176));
  return sub_2978297B4((a1 + 176), v13);
}

BOOL sub_2978F2AAC@<W0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29788AA2C(a1);
  sub_297809B88(a2);
  v11 = sub_29780A294((a1 + 48), v4);
  v10 = sub_297809B0C(a1 + 48, v5);
  for (result = sub_29780852C(&v11, &v10); result; result = sub_29780852C(&v11, &v10))
  {
    v7 = *sub_2977FB720(&v11);
    if (sub_297886348(a1 + 176, v7))
    {
      v9[0] = sub_29788709C(v7);
      v9[1] = v8;
      sub_29780BFD8(a2, v9);
    }

    sub_29781B504(&v11);
  }

  return result;
}

char *fosl_astPrint(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 128);
  if (!sub_2978F0458(v2))
  {
    return &byte_2978FC3E5;
  }

  sub_297803300(a1 + 152);
  sub_29783E51C(v15, a1 + 152);
  v3 = sub_2977FB720(v2 + 40);
  v4 = sub_2977FB7B8(v3);
  v14[0] = sub_2978D7E90(v4);
  v14[1] = v5;
  v6 = sub_2977FB720(v14);
  v7 = sub_2978130B8(v14);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v10 = sub_2977FB720(a1 + 136);
      sub_2978AF854(v10, v9);
      sub_297885E64(v9, v15);
    }

    while (v6 != v8);
  }

  v11 = sub_29783E520(v15);
  v12 = sub_2978037C8(v11);
  sub_29781F160(v15);
  return v12;
}

char *fosl_astPrintReachable(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 128);
  if (!sub_2978F0458(v2))
  {
    return &byte_2978FC3E5;
  }

  sub_297803300(a1 + 152);
  sub_29783E51C(v15, a1 + 152);
  v3 = sub_2977FB720(v2 + 40);
  v4 = sub_2977FB7B8(v3);
  v14[0] = sub_2978D7E90(v4);
  v14[1] = v5;
  v6 = sub_2977FB720(v14);
  v7 = sub_2978130B8(v14);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v10 = sub_2977FB720(a1 + 136);
      sub_2978AF854(v10, v9);
      sub_297886074(v9, v15);
    }

    while (v6 != v8);
  }

  v11 = sub_29783E520(v15);
  v12 = sub_2978037C8(v11);
  sub_29781F160(v15);
  return v12;
}

void *sub_2978F2D18(void *a1)
{
  v2 = sub_2978EF658(a1);
  sub_29780AE44(v2 + 120);
  sub_29780AE44(a1 + 16);
  sub_297804560(a1 + 17);
  sub_297802744(a1 + 19);
  sub_297809B88(a1 + 22);
  sub_297809B88(a1 + 25);
  sub_297809B88(a1 + 28);
  sub_297809B88(a1 + 31);
  return a1;
}

uint64_t sub_2978F2D80(uint64_t a1)
{
  sub_29780A9D8(a1 + 248);
  sub_29780C534(a1 + 224);
  sub_29781B950(a1 + 200);
  sub_29781B950(a1 + 176);
  std::string::~string((a1 + 152));
  sub_297847E24(a1 + 136);
  sub_2978F2DF4(a1 + 128);
  sub_2978DADCC(a1 + 120);

  return sub_2978EF65C(a1);
}

void *sub_2978F2E24(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_2977FA198(936);
  sub_297883D24(v10);
  sub_2977FDEF4(a1, v10);
  a1[1] = a2;
  a1[2] = a3;
  sub_2978F1B6C(a1 + 3, a4);
  v11 = sub_2977FB720(a1);
  v12 = a1[2];
  sub_2978055E4(&v14, a5);
  sub_2978EF358(v11, a2, v12, &v14, a1 + 5);
  sub_29780548C(&v14);
  sub_29783CEF0((a1 + 6));
  sub_29780B1BC(a1 + 5);
  return a1;
}

uint64_t sub_2978F2EEC(uint64_t a1, uint64_t a2)
{
  nullsub_1(a1, a2);
  v4 = sub_29780C8A4(a1);
  v5 = sub_29780C8A4(a2);
  sub_2978F2F58(v4, v5);
  sub_29780C8A4(a1);

  return sub_29780C8A4(a2);
}

uint64_t sub_2978F2F58(uint64_t a1, uint64_t *a2)
{
  v4 = 2 * sub_29780D5B4((a2 - a1) >> 3);

  return sub_2978F2FA8(a1, a2, v4, 1);
}

uint64_t sub_2978F2FA8(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = a2;
  v6 = result;
  v22 = a2;
  v23 = result;
LABEL_2:
  for (i = 1 - a3; ; ++i)
  {
    v8 = v5 - v6;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3uLL:
          v22 = v5 - 1;
          return sub_2978F32C4(v6, v6 + 1, v5 - 1);
        case 4uLL:
          v22 = v5 - 1;
          return sub_2978F3410(v6, v6 + 1, v6 + 2, v5 - 1);
        case 5uLL:
          v22 = v5 - 1;
          return sub_2978F3500(v6, v6 + 1, v6 + 2, v6 + 3, v5 - 1);
      }
    }

    else
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v22 = v5 - 1;
        sub_2977FB7B4(&v20, *(v5 - 1));
        sub_2977FB7B4(&v18, *v23);
        result = sub_2978F326C(v20, v21, v18, v19);
        if (result)
        {
          return sub_2978F16E4(&v23, &v22);
        }

        return result;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (i == 1)
    {
      return sub_2978F380C(v6, v5, v5);
    }

    v9 = v8 >> 1;
    v10 = v5 - 1;
    if (v8 < 0x81)
    {
      sub_2978F32C4(&v6[v8 >> 1], v6, v10);
      if (a4)
      {
LABEL_17:
        v5 = v22;
        goto LABEL_18;
      }
    }

    else
    {
      sub_2978F32C4(v6, &v6[v8 >> 1], v10);
      v11 = v22;
      v12 = 8 * v9 - 8;
      sub_2978F32C4(v23 + 1, (v23 + v12), v22 - 2);
      v13 = 8 * v9 + 8;
      sub_2978F32C4(v23 + 2, (v23 + v13), v11 - 3);
      sub_2978F32C4((v23 + v12), &v23[v9], (v23 + v13));
      v20 = &v23[v9];
      sub_2978F16E4(&v23, &v20);
      if (a4)
      {
        goto LABEL_17;
      }
    }

    sub_2977FB7B4(&v20, *(v23 - 1));
    sub_2977FB7B4(&v18, *v23);
    v14 = sub_2978F326C(v20, v21, v18, v19);
    v5 = v22;
    if ((v14 & 1) == 0)
    {
      result = sub_2978F389C(v23, v22);
      v6 = result;
LABEL_26:
      a4 = 0;
      v23 = v6;
      a3 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v15 = sub_2978F3A84(v23, v5);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v17 = sub_2978F3C54(v23, v15);
    v6 = v15 + 1;
    result = sub_2978F3C54(v15 + 1, v5);
    if (result)
    {
      if (v17)
      {
        return result;
      }

      v22 = v15;
      v6 = v23;
      v5 = v15;
    }

    else
    {
      if (!v17)
      {
LABEL_25:
        result = sub_2978F2FA8(v23, v15, -i, a4 & 1);
        v6 = v15 + 1;
        goto LABEL_26;
      }

      v23 = v15 + 1;
    }
  }

  if (a4)
  {
    return sub_2978F3634(v6, v5);
  }

  else
  {
    return sub_2978F372C(v6, v5);
  }
}

uint64_t sub_2978F326C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_29780F248(v8, a3, a4);
  if (!v6)
  {
    v6 = sub_297819794(v8, a3, a4);
  }

  return v6 >> 31;
}

uint64_t *sub_2978F32C4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v13 = a2;
  v14 = a1;
  v12 = a3;
  sub_2977FB7B4(&v10, *a2);
  sub_2977FB7B4(&v8, *a1);
  if (sub_2978F326C(v10, v11, v8, v9))
  {
    sub_2977FB7B4(&v10, *a3);
    sub_2977FB7B4(&v8, *v13);
    if (sub_2978F326C(v10, v11, v8, v9))
    {
      v5 = &v14;
    }

    else
    {
      sub_2978F16E4(&v14, &v13);
      sub_2977FB7B4(&v10, *v12);
      sub_2977FB7B4(&v8, *v13);
      result = sub_2978F326C(v10, v11, v8, v9);
      if (!result)
      {
        return result;
      }

      v5 = &v13;
    }

    v7 = &v12;
    return sub_2978F16E4(v5, v7);
  }

  sub_2977FB7B4(&v10, *a3);
  sub_2977FB7B4(&v8, *v13);
  result = sub_2978F326C(v10, v11, v8, v9);
  if (result)
  {
    sub_2978F16E4(&v13, &v12);
    sub_2977FB7B4(&v10, *v13);
    sub_2977FB7B4(&v8, *v14);
    result = sub_2978F326C(v10, v11, v8, v9);
    if (result)
    {
      v5 = &v14;
      v7 = &v13;
      return sub_2978F16E4(v5, v7);
    }
  }

  return result;
}

uint64_t *sub_2978F3410(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v16 = a1;
  v14 = a3;
  v15 = a2;
  v13 = a4;
  sub_2978F32C4(a1, a2, a3);
  sub_2977FB7B4(&v11, *a4);
  sub_2977FB7B4(&v9, *a3);
  result = sub_2978F326C(v11, v12, v9, v10);
  if (result)
  {
    sub_2978F16E4(&v14, &v13);
    sub_2977FB7B4(&v11, *v14);
    sub_2977FB7B4(&v9, *a2);
    result = sub_2978F326C(v11, v12, v9, v10);
    if (result)
    {
      sub_2978F16E4(&v15, &v14);
      sub_2977FB7B4(&v11, *v15);
      sub_2977FB7B4(&v9, *a1);
      result = sub_2978F326C(v11, v12, v9, v10);
      if (result)
      {
        return sub_2978F16E4(&v16, &v15);
      }
    }
  }

  return result;
}

uint64_t *sub_2978F3500(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v15 = a5;
  v16 = a4;
  sub_2978F3410(a1, a2, a3, a4);
  sub_2977FB7B4(&v13, *a5);
  sub_2977FB7B4(&v11, *a4);
  result = sub_2978F326C(v13, v14, v11, v12);
  if (result)
  {
    sub_2978F16E4(&v16, &v15);
    sub_2977FB7B4(&v13, *v16);
    sub_2977FB7B4(&v11, *a3);
    result = sub_2978F326C(v13, v14, v11, v12);
    if (result)
    {
      sub_2978F16E4(&v17, &v16);
      sub_2977FB7B4(&v13, *v17);
      sub_2977FB7B4(&v11, *a2);
      result = sub_2978F326C(v13, v14, v11, v12);
      if (result)
      {
        sub_2978F16E4(&v18, &v17);
        sub_2977FB7B4(&v13, *v18);
        sub_2977FB7B4(&v11, *a1);
        result = sub_2978F326C(v13, v14, v11, v12);
        if (result)
        {
          return sub_2978F16E4(&v19, &v18);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978F3634(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v16[5] = v2;
    v16[6] = v3;
    v5 = result;
    v16[0] = result + 8;
    if (result + 8 != a2)
    {
      v6 = result;
      do
      {
        sub_2977FB7B4(&v14, v6[1]);
        sub_2977FB7B4(&v12, *v6);
        result = sub_2978F326C(v14, v15, v12, v13);
        if (result)
        {
          v9 = *sub_29780E4F4(v16, v7);
          v11 = v6;
          v10 = v16[0];
          do
          {
            result = sub_29780E4F4(&v11, v8);
            *v10 = *result;
            v10 = v11;
            if (v11 == v5)
            {
              break;
            }

            sub_2977FB7B4(&v14, v9);
            sub_2977FB7B4(&v12, *--v11);
            result = sub_2978F326C(v14, v15, v12, v13);
          }

          while ((result & 1) != 0);
          *v10 = v9;
        }

        v6 = v16[0];
        v16[0] += 8;
      }

      while (v16[0] != a2);
    }
  }

  return result;
}

uint64_t sub_2978F372C(uint64_t result, char **a2)
{
  if (result != a2)
  {
    v15[5] = v2;
    v15[6] = v3;
    for (i = result; ; i = v15[0])
    {
      v15[0] = i + 1;
      if (i + 1 == a2)
      {
        break;
      }

      sub_2977FB7B4(&v13, i[1]);
      sub_2977FB7B4(&v11, *i);
      result = sub_2978F326C(v13, v14, v11, v12);
      if (result)
      {
        v8 = *sub_29780E4F4(v15, v6);
        v10 = i;
        v9 = v15[0];
        do
        {
          *v9 = *sub_29780E4F4(&v10, v7);
          v9 = v10;
          sub_2977FB7B4(&v13, v8);
          sub_2977FB7B4(&v11, *--v10);
          result = sub_2978F326C(v13, v14, v11, v12);
        }

        while ((result & 1) != 0);
        *v9 = v8;
      }
    }
  }

  return result;
}

uint64_t sub_2978F380C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 == a2)
  {

    return sub_29780E51C(a2, a3);
  }

  else
  {
    nullsub_1(a1, a3);
    sub_2978F3E3C(a1, a2, a3);

    return nullsub_1(a2, a3);
  }
}

char **sub_2978F389C(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v15 = a2;
  v16 = a1;
  v4 = *sub_29780E4F4(&v16, a2);
  sub_2977FB7B4(&v13, v4);
  sub_2977FB7B4(&v11, *(v2 - 8));
  if (sub_2978F326C(v13, v14, v11, v12))
  {
    do
    {
      ++v16;
      sub_2977FB7B4(&v13, v4);
      sub_2977FB7B4(&v11, *v16);
    }

    while ((sub_2978F326C(v13, v14, v11, v12) & 1) == 0);
  }

  else
  {
    do
    {
      if (++v16 >= v2)
      {
        break;
      }

      sub_2977FB7B4(&v13, v4);
      sub_2977FB7B4(&v11, *v16);
    }

    while (!sub_2978F326C(v13, v14, v11, v12));
  }

  v6 = v16;
  if (v16 < v2)
  {
    v7 = (v2 - 8);
    do
    {
      v15 = v7;
      sub_2977FB7B4(&v13, v4);
      v8 = *v7--;
      sub_2977FB7B4(&v11, v8);
    }

    while ((sub_2978F326C(v13, v14, v11, v12) & 1) != 0);
    v6 = v16;
    v2 = (v7 + 1);
  }

  if (v6 < v2)
  {
    do
    {
      sub_2978F16E4(&v16, &v15);
      do
      {
        ++v16;
        sub_2977FB7B4(&v13, v4);
        sub_2977FB7B4(&v11, *v16);
      }

      while (!sub_2978F326C(v13, v14, v11, v12));
      do
      {
        --v15;
        sub_2977FB7B4(&v13, v4);
        sub_2977FB7B4(&v11, *v15);
      }

      while ((sub_2978F326C(v13, v14, v11, v12) & 1) != 0);
      v6 = v16;
    }

    while (v16 < v15);
  }

  v9 = v6 - 1;
  v13 = v9;
  if (v9 != a1)
  {
    *a1 = *sub_29780E4F4(&v13, v5);
    v9 = v13;
  }

  *v9 = v4;
  return v16;
}

uint64_t sub_2978F3A84(uint64_t *a1, uint64_t *a2)
{
  v19 = a1;
  v18 = a2;
  v4 = *sub_29780E4F4(&v19, a2);
  do
  {
    sub_2977FB7B4(&v16, *++v19);
    sub_2977FB7B4(&v14, v4);
  }

  while ((sub_2978F326C(v16, v17, v14, v15) & 1) != 0);
  v6 = a2 - 1;
  if (v19 - 1 == a1)
  {
    while (1)
    {
      v8 = (v6 + 1);
      if (v19 >= v6 + 1)
      {
        break;
      }

      v18 = v6;
      v12 = *v6--;
      sub_2977FB7B4(&v16, v12);
      sub_2977FB7B4(&v14, v4);
      if (sub_2978F326C(v16, v17, v14, v15))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    do
    {
      v18 = v6;
      v7 = *v6--;
      sub_2977FB7B4(&v16, v7);
      sub_2977FB7B4(&v14, v4);
    }

    while ((sub_2978F326C(v16, v17, v14, v15) & 1) == 0);
LABEL_5:
    v8 = (v6 + 1);
  }

  v9 = v19;
  v13 = v19 >= v8;
  if (v19 < v8)
  {
    do
    {
      sub_2978F16E4(&v19, &v18);
      do
      {
        sub_2977FB7B4(&v16, *++v19);
        sub_2977FB7B4(&v14, v4);
      }

      while ((sub_2978F326C(v16, v17, v14, v15) & 1) != 0);
      do
      {
        sub_2977FB7B4(&v16, *--v18);
        sub_2977FB7B4(&v14, v4);
      }

      while (!sub_2978F326C(v16, v17, v14, v15));
      v9 = v19;
    }

    while (v19 < v18);
  }

  v10 = (v9 - 1);
  v16 = v9 - 1;
  if (v9 - 1 != a1)
  {
    *a1 = *sub_29780E4F4(&v16, v5);
    v10 = v16;
  }

  *v10 = v4;
  return sub_29780EB40(&v16, &v13);
}

BOOL sub_2978F3C54(uint64_t *a1, uint64_t *a2)
{
  v21 = a1;
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v20 = a2 - 1;
        sub_2977FB7B4(&v18, v5);
        sub_2977FB7B4(&v16, *a1);
        if (sub_2978F326C(v18, v19, v16, v17))
        {
          sub_2978F16E4(&v21, &v20);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_2978F32C4(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_2978F3410(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_2978F3500(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v6 = (a1 + 2);
  sub_2978F32C4(a1, a1 + 1, a1 + 2);
  v7 = (a1 + 3);
  v15 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    sub_2977FB7B4(&v18, *v7);
    sub_2977FB7B4(&v16, *v6);
    if (sub_2978F326C(v18, v19, v16, v17))
    {
      v11 = *sub_29780E4F4(&v15, v9);
      v14 = v6;
      v12 = v15;
      do
      {
        *v12 = *sub_29780E4F4(&v14, v10);
        v12 = v14;
        if (v14 == a1)
        {
          break;
        }

        sub_2977FB7B4(&v18, v11);
        sub_2977FB7B4(&v16, *--v14);
      }

      while ((sub_2978F326C(v18, v19, v16, v17) & 1) != 0);
      *v12 = v11;
      if (++v8 == 8)
      {
        break;
      }
    }

    v6 = v15;
    v7 = v15 + 1;
    v15 = v7;
    if (v7 == a2)
    {
      return 1;
    }
  }

  return v15 + 1 == a2;
}

uint64_t *sub_2978F3E3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v12 = a1;
  if (a1 == a2)
  {

    return sub_29780E51C(a2, a3);
  }

  else
  {
    v5 = a1;
    sub_2978F3F3C(a1, a2);
    v11 = a2;
    if (a2 != a3)
    {
      v6 = (a2 - v5) >> 3;
      v7 = a2;
      do
      {
        sub_2977FB7B4(v10, *v7);
        sub_2977FB7B4(v9, *v12);
        if (sub_2978F326C(v10[0], v10[1], v9[0], v9[1]))
        {
          sub_2978F16E4(&v11, &v12);
          sub_2978F3F9C(v12, v6, v12);
        }

        v7 = (v11 + 1);
        v11 = v7;
      }

      while (v7 != a3);
      v5 = v12;
    }

    sub_2978F413C(v5, a2);
    return v11;
  }
}

uint64_t sub_2978F3F3C(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result) >> 3;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = (v2 - 2) >> 1;
    v5 = v4 + 1;
    v6 = (result + 8 * v4);
    do
    {
      result = sub_2978F3F9C(v3, v2, v6--);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2978F3F9C(uint64_t result, uint64_t a2, char **a3)
{
  v25 = a3;
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (a3 - result) >> 3)
    {
      v8 = (a3 - result) >> 2;
      v9 = v8 + 1;
      v10 = (result + 8 * (v8 + 1));
      v24 = v10;
      v11 = v8 + 2;
      if (v8 + 2 < a2)
      {
        sub_2977FB7B4(&v22, *v10);
        sub_2977FB7B4(&v20, v10[1]);
        if (sub_2978F326C(v22, v23, v20, v21))
        {
          v24 = ++v10;
          v9 = v11;
        }
      }

      sub_2977FB7B4(&v22, *v10);
      sub_2977FB7B4(&v20, *a3);
      result = sub_2978F326C(v22, v23, v20, v21);
      if ((result & 1) == 0)
      {
        v14 = *sub_29780E4F4(&v25, v12);
        while (1)
        {
          result = sub_29780E4F4(&v24, v13);
          *v25 = *result;
          v15 = v24;
          v25 = v24;
          if (v6 < v9)
          {
            break;
          }

          v16 = 2 * v9;
          v9 = (2 * v9) | 1;
          v17 = (v5 + 8 * v9);
          v24 = v17;
          v18 = v16 + 2;
          if (v16 + 2 < a2)
          {
            sub_2977FB7B4(&v22, *v17);
            sub_2977FB7B4(&v20, v24[1]);
            v19 = sub_2978F326C(v22, v23, v20, v21);
            v17 = v24;
            if (v19)
            {
              v17 = ++v24;
              v9 = v18;
            }
          }

          sub_2977FB7B4(&v22, *v17);
          sub_2977FB7B4(&v20, v14);
          result = sub_2978F326C(v22, v23, v20, v21);
          if (result)
          {
            v15 = v25;
            break;
          }
        }

        *v15 = v14;
      }
    }
  }

  return result;
}

char **sub_2978F413C(char **result, uint64_t a2)
{
  v2 = (a2 - result) >> 3;
  if (v2 >= 2)
  {
    v3 = a2;
    v4 = result;
    do
    {
      result = sub_2978F419C(v4, v3, v2);
      v3 -= 8;
    }

    while (v2-- > 2);
  }

  return result;
}

char **sub_2978F419C(char **a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v5 = *sub_29780E4F4(&v10, a2);
  result = sub_2978F4234(v10, a3);
  v8 = result;
  v9 = (a2 - 8);
  if (result == (a2 - 8))
  {
    *result = v5;
  }

  else
  {
    *result = *sub_29780E4F4(&v9, v7);
    *v9 = v5;
    return sub_2978F4300(v10, (v8 + 1), v8 + 1 - v10);
  }

  return result;
}

char **sub_2978F4234(char **a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a2 - 2) >> 1;
  do
  {
    v6 = &a1[v4 + 1];
    v12 = v6;
    v7 = 2 * v4;
    v4 = (2 * v4) | 1;
    v8 = v7 + 2;
    if (v7 + 2 < a2)
    {
      sub_2977FB7B4(v11, *v6);
      sub_2977FB7B4(v10, v12[1]);
      if (sub_2978F326C(v11[0], v11[1], v10[0], v10[1]))
      {
        ++v12;
        v4 = v8;
      }
    }

    *a1 = *sub_29780E4F4(&v12, a2);
    a1 = v12;
  }

  while (v4 <= v5);
  return v12;
}

uint64_t sub_2978F4300(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v19[5] = v3;
    v19[6] = v4;
    v7 = result;
    v8 = v5 >> 1;
    v18 = (result + 8 * (v5 >> 1));
    sub_2977FB7B4(&v16, *v18);
    v9 = *(a2 - 8);
    v19[0] = a2 - 8;
    sub_2977FB7B4(&v14, v9);
    result = sub_2978F326C(v16, v17, v14, v15);
    if (result)
    {
      v12 = *sub_29780E4F4(v19, v10);
      while (1)
      {
        result = sub_29780E4F4(&v18, v11);
        *v19[0] = *result;
        v13 = v18;
        v19[0] = v18;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v18 = (v7 + 8 * v8);
        sub_2977FB7B4(&v16, *v18);
        sub_2977FB7B4(&v14, v12);
        result = sub_2978F326C(v16, v17, v14, v15);
        if ((result & 1) == 0)
        {
          v13 = v19[0];
          break;
        }
      }

      *v13 = v12;
    }
  }

  return result;
}

void *sub_2978F43E4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    sub_29782F14C();
  }

  return a1;
}

void sub_2978F4418(uint64_t a1)
{
  v1 = sub_2978F0498(a1);

  j__free(v1);
}

void sub_2978F4440()
{
  sub_297809B50(6);
  v0 = usleep(0x3E8u);
  __break(1u);
  std::error_code::message(v1, v0);
}
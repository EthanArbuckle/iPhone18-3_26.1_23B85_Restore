uint64_t sub_271495474(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    LODWORD(v18) = 4;
    (*(*a2 + 104))(a2, &v18);
    v10 = v18;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        LODWORD(v18) = 3;
        (*(*a2 + 104))(a2, &v18);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v18);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    LODWORD(v18) = 5;
    (*(*a2 + 104))(a2, &v18);
    v8 = v18;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        LODWORD(v18) = 3;
        (*(*a2 + 104))(a2, &v18);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v18);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    LODWORD(v18) = 6;
    (*(*a2 + 104))(a2, &v18);
    v6 = v18;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        LODWORD(v18) = 3;
        (*(*a2 + 104))(a2, &v18);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v18);
  }

LABEL_17:
  v11 = a2[2];
  LODWORD(v18) = 2;
  (*(*a2 + 104))(a2, &v18);
  v12 = v18;
  if (v11 < 1)
  {
    v16 = *(v3 + 216);
    v18 = *(v3 + 200);
    v19 = v16;
    v17 = *(v3 + 248);
    v20 = *(v3 + 232);
    v21 = v17;
    return sub_271498E24(a2, &v18, v12);
  }

  else
  {
    if (v11 == 2)
    {
      LODWORD(v18) = 1;
      (*(*a2 + 104))(a2, &v18);
    }

    (*(*a2 + 16))(a2);
    v13 = *(v3 + 216);
    v18 = *(v3 + 200);
    v19 = v13;
    v14 = *(v3 + 248);
    v20 = *(v3 + 232);
    v21 = v14;
    sub_271498E24(a2, &v18, v12);
    return (*(*a2 + 24))(a2);
  }
}

void sub_271495890(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          *(&v26 + 1) = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = *(&v26 + 1);
          *(&v26 + 1) = v11;
          sub_2715CC40C(&v26 + 1, v10);
        }

        sub_2713B29CC(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      *(&v26 + 1) = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = *(&v26 + 1);
      *(&v26 + 1) = v18;
      sub_2715CC40C(&v26 + 1, v17);
    }

    sub_2713DA6CC(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    *(&v26 + 1) = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = *(&v26 + 1);
    *(&v26 + 1) = v25;
    sub_2715CC40C(&v26 + 1, v24);
  }

  sub_2713DAF34(a2, v3 + 16);
}

void sub_271495DCC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    *(a1 + 72) = "sync_type";
    v7 = a1 + 72;
    v9 = (a1 + 88);
    v8 = *(a1 + 88);
    *(a1 + 80) = 9;
    v10 = (a1 + 80);
    if ((v8 & 1) == 0)
    {
      *v9 = 1;
    }

    v11 = *a2;
    goto LABEL_11;
  }

  v9 = (a1 + 88);
  v7 = a1 + 72;
  v10 = (a1 + 80);
  v11 = *a2;
  if ((*(a1 + 88) & 1) == 0 || *(a1 + 80) != 7 || (**v7 == *"version" ? (v12 = *(*v7 + 3) == *"sion") : (v12 = 0), !v12))
  {
LABEL_11:
    LOBYTE(v25) = 6;
    v26[0] = v11;
    v13 = sub_2718289B0(a1);
    v14 = *v13;
    *v13 = 6;
    LOBYTE(v25) = v14;
    v15 = v13[1];
    v13[1] = v26[0];
    v26[0] = v15;
    sub_2715CC40C(v26, v14);
  }

  if (a3 < 2)
  {
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v16 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      v25 = "value";
      v26[0] = 5;
      v26[1] = (a2 + 8);
      sub_271496450(a1, &v25);
      return;
    }

LABEL_34:
    sub_2711308D4();
  }

  if (v16 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_34;
  }

  if (**v6 <= 1u)
  {
    v17 = *v9;
    *v7 = "value";
    *v10 = 5;
    if ((v17 & 1) == 0)
    {
      *v9 = 1;
    }
  }

  sub_27182791C(a1 + 48, v6);
  v18 = sub_2718289B0(a1);
  *(a1 + 40) = v18;
  if (*(a1 + 88))
  {
    *v9 = 0;
  }

  if (*v18 < 2u && ((*v7 = "version", *v10 = 7, *v9 = 1, **v7 == *"version") ? (v19 = *(*v7 + 3) == *"sion") : (v19 = 0), v19))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v25) = 6;
    v26[0] = 1;
    v20 = sub_2718289B0(a1);
    v21 = *v20;
    *v20 = 6;
    LOBYTE(v25) = v21;
    v22 = v20[1];
    v20[1] = v26[0];
    v26[0] = v22;
    sub_2715CC40C(v26, v21);
  }

  sub_2714960F8(a1, (a2 + 8));
  v23 = *(a1 + 56);
  *(a1 + 40) = *(v23 - 8);
  *(a1 + 56) = v23 - 8;
  if (*(a1 + 88) == 1)
  {
    *v9 = 0;
  }
}

void sub_2714960F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (*v4 <= 1u)
  {
    *(a1 + 72) = "sync_command_id";
    v5 = a1 + 72;
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    *(a1 + 80) = 15;
    v8 = (a1 + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (a1 + 88);
  v5 = a1 + 72;
  v8 = (a1 + 80);
  if ((*(a1 + 88) & 1) == 0 || *(a1 + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_2718289B0(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CC40C(&v25, v11);
    v4 = *(a1 + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v25 = 0;
    v15 = sub_2718289B0(a1);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = *(a2 + 8);
    v15 = sub_2718289B0(a1);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CC40C(&v25, v16);
  }

  if (**(a1 + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v25 = 0;
    v23 = sub_2718289B0(a1);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = *(a2 + 24);
    v20 = sub_2718289B0(a1);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CC40C(&v25, v21);
  }
}

void sub_271496450(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_27182791C(a1 + 48, v3);
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a1 + 80);
    v9 = a1 + 72;
  }

  else
  {
    *(a1 + 72) = "version";
    *(a1 + 80) = 7;
    v7 = (a1 + 80);
    *(a1 + 88) = 1;
    v9 = a1 + 72;
    v8 = *(a1 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a1 + 96) = 1;
      *(a1 + 100) = 1;
      *(a1 + 88) = 0;
      if (*v6 >= 2u)
      {
        goto LABEL_24;
      }

      *v9 = "status";
      *v7 = 6;
LABEL_17:
      *(a1 + 88) = 1;
      goto LABEL_24;
    }
  }

  v33 = 1;
  v13 = sub_2718289B0(a1);
  v14 = *v13;
  *v13 = 6;
  v15 = v13[1];
  v13[1] = v33;
  v33 = v15;
  sub_2715CC40C(&v33, v14);
  v16 = *(a1 + 40);
  v17 = *(a1 + 88);
  if (*v16 < 2u)
  {
    *v9 = "status";
    *v7 = 6;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((*(a1 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_24:
    v33 = *v5;
    v19 = sub_2718289B0(a1);
    v20 = *v19;
    *v19 = 6;
    v21 = v19[1];
    v19[1] = v33;
    v33 = v21;
    sub_2715CC40C(&v33, v20);
    v16 = *(a1 + 40);
    v22 = *(a1 + 88);
    if (*v16 <= 1u)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v22 = 1;
  if (*v16 <= 1u)
  {
LABEL_25:
    *v9 = "sync_id";
    *v7 = 7;
    if ((v22 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((v22 & (*v7 == 7)) != 1)
  {
LABEL_33:
    v33 = *(v5 + 1);
    v24 = sub_2718289B0(a1);
    v25 = *v24;
    *v24 = 6;
    v26 = v24[1];
    v24[1] = v33;
    v33 = v26;
    sub_2715CC40C(&v33, v25);
    v16 = *v3;
    goto LABEL_34;
  }

LABEL_29:
  if (**v9 != *"version" || *(*v9 + 3) != *"sion")
  {
    goto LABEL_33;
  }

LABEL_34:
  if (*v16 <= 1u)
  {
    v27 = *(a1 + 88);
    *(a1 + 72) = "acknowledge_until";
    *(a1 + 80) = 17;
    if ((v27 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if ((v5[24] & 1) == 0)
  {
    v33 = 0;
    v29 = sub_2718289B0(a1);
    v30 = *v29;
    *v29 = 0;
    goto LABEL_46;
  }

  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || (**v9 == *"version" ? (v28 = *(*v9 + 3) == *"sion") : (v28 = 0), !v28))
  {
    v33 = *(v5 + 2);
    v29 = sub_2718289B0(a1);
    v30 = *v29;
    *v29 = 6;
LABEL_46:
    v31 = v29[1];
    v29[1] = v33;
    v33 = v31;
    sub_2715CC40C(&v33, v30);
  }

  v32 = *(a1 + 56);
  *(a1 + 40) = *(v32 - 8);
  *(a1 + 56) = v32 - 8;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }
}

void sub_27149689C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      *&v27[0] = v7 + 16;
      sub_2718460EC(v27, 4u);
    }

    else
    {
      sub_27184636C(v27, (v7 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      *&v27[0] = v6 + 16;
      sub_2718460EC(v27, 5u);
    }

    else
    {
      sub_27184636C(v27, (v6 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      *&v27[0] = v5 + 16;
      sub_2718460EC(v27, 6u);
    }

    else
    {
      sub_27184636C(v27, (v5 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = *(a2 + 24);
  v9 = *(v8[11] - 8);
  sub_2718404E0(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  v16 = *(a2 + 24);
  if (*(v16 + 40) == 1)
  {
    *&v27[0] = v16 + 16;
    sub_2718460EC(v27, 2u);
  }

  else
  {
    sub_27184636C(v27, (v16 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  v17 = *(v3 + 216);
  v27[0] = *(v3 + 200);
  v27[1] = v17;
  v18 = *(v3 + 248);
  v27[2] = *(v3 + 232);
  v27[3] = v18;
  sub_271496B48(a2, v27, 2u);
  v19 = *(a2 + 24);
  v20 = *(v19[11] - 8);
  sub_2718404E0(v19 + 6, v19[2] - v20 - 9);
  v21 = v19[6];
  if (v21)
  {
    memmove((v19[3] + v20), v19[7], v21);
  }

  v19[6] = 0;
  v22 = v19[10];
  v23 = v19[11] - 8;
  v19[11] = v23;
  if (v22 == v23)
  {
    v24 = *v19;
    v26 = v19[2];
    v25 = v19[3];
    std::ostream::write();
    if (*(v19 + 40) == 1)
    {
      free(v19[3]);
      *(v19 + 40) = 0;
    }
  }
}

void sub_271496B48(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = *a2;
  v21 = *a2;
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v22 = (v7 + 16);
    sub_2718454CC(&v22, &v21);
    if (a3 < 2)
    {
      return;
    }
  }

  else if (v6 < 0)
  {
    LOBYTE(v22) = -52;
    BYTE1(v22) = v6;
    v9 = *(v7 + 8);
    std::ostream::write();
    if (a3 < 2)
    {
      return;
    }
  }

  else
  {
    LOBYTE(v22) = v6;
    v8 = *(v7 + 8);
    std::ostream::write();
    if (a3 < 2)
    {
      return;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    if (v10 == 2)
    {
      if (*(a2 + 12) == 1)
      {
        sub_271496FC8(&v22, a1, a2 + 8);
        return;
      }
    }

    else
    {
      if (v10 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (!*(a2 + 12))
      {
        v11 = *(a1 + 24);
        if (*(v11 + 40) == 1)
        {
          v22 = (v11 + 16);
          sub_2718460EC(&v22, 1u);
        }

        else
        {
          sub_27184636C(&v22, (v11 + 8));
        }

        sub_271840ADC(*(a1 + 24));
        sub_271496D74(a1, (a2 + 8));
        v12 = *(a1 + 24);
        v13 = *(v12[11] - 8);
        sub_2718404E0(v12 + 6, v12[2] - v13 - 9);
        v14 = v12[6];
        if (v14)
        {
          memmove((v12[3] + v13), v12[7], v14);
        }

        v12[6] = 0;
        v15 = v12[10];
        v16 = v12[11] - 8;
        v12[11] = v16;
        if (v15 == v16)
        {
          v17 = *v12;
          v19 = v12[2];
          v18 = v12[3];
          std::ostream::write();
          if (*(v12 + 40) == 1)
          {
            free(v12[3]);
            *(v12 + 40) = 0;
          }
        }

        return;
      }
    }

    sub_2711308D4();
  }
}

char *sub_271496D74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) != 1)
  {
    v6 = *a2;
    sub_271846E00((v4 + 8));
    if (*(a2 + 16) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19 = 1;
    v7 = *(a1 + 24);
    if (*(v7 + 40) == 1)
    {
      v20 = (v7 + 16);
      sub_2718454CC(&v20, &v19);
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v20) = 1;
      v13 = *(v7 + 8);
      std::ostream::write();
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
LABEL_9:
        v9 = *(a2 + 8);
        sub_271846E00((v8 + 8));
        if (*(a2 + 32) == 1)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    v20 = (v8 + 16);
    sub_271846AEC(&v20, *(a2 + 8));
    if (*(a2 + 32) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v20 = (v4 + 16);
  sub_271846AEC(&v20, *a2);
  if (*(a2 + 16) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v19 = 0;
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    v20 = (v5 + 16);
    sub_2718454CC(&v20, &v19);
    if (*(a2 + 32) == 1)
    {
      goto LABEL_16;
    }

LABEL_12:
    v19 = 0;
    v11 = *(a1 + 24);
    if (*(v11 + 40) == 1)
    {
      v20 = (v11 + 16);
      return sub_2718454CC(&v20, &v19);
    }

    else
    {
      LOBYTE(v20) = 0;
      v17 = *(v11 + 8);
      return std::ostream::write();
    }
  }

  LOBYTE(v20) = 0;
  v10 = *(v5 + 8);
  std::ostream::write();
  if (*(a2 + 32) != 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  v19 = 1;
  v14 = *(a1 + 24);
  if (*(v14 + 40) == 1)
  {
    v20 = (v14 + 16);
    sub_2718454CC(&v20, &v19);
    v15 = *(a1 + 24);
    if (*(v15 + 40) != 1)
    {
LABEL_18:
      v16 = *(a2 + 24);
      return sub_271846E00((v15 + 8));
    }
  }

  else
  {
    LOBYTE(v20) = 1;
    v18 = *(v14 + 8);
    std::ostream::write();
    v15 = *(a1 + 24);
    if (*(v15 + 40) != 1)
    {
      goto LABEL_18;
    }
  }

  v20 = (v15 + 16);
  return sub_271846AEC(&v20, *(a2 + 24));
}

void sub_271496FC8(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v26 = (v5 + 16);
    sub_2718460EC(&v26, 1u);
    sub_271840ADC(*(a2 + 24));
    v6 = *(a2 + 24);
    if (*(v6 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = (v6 + 16);
    sub_2718454CC(&v26, a3);
    v9 = *(a2 + 24);
    if (*(v9 + 40) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  sub_27184636C(&v26, (v5 + 8));
  sub_271840ADC(*(a2 + 24));
  v6 = *(a2 + 24);
  if (*(v6 + 40) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *a3;
  if (v7 < 0)
  {
    LOBYTE(v26) = -52;
    BYTE1(v26) = v7;
  }

  else
  {
    LOBYTE(v26) = *a3;
  }

  v8 = *(v6 + 8);
  std::ostream::write();
  v9 = *(a2 + 24);
  if (*(v9 + 40) == 1)
  {
LABEL_13:
    v26 = (v9 + 16);
    sub_271846AEC(&v26, *(a3 + 1));
    if (a3[24] == 1)
    {
      goto LABEL_14;
    }

LABEL_8:
    v25 = 0;
    v11 = *(a2 + 24);
    if (*(v11 + 40) == 1)
    {
      v26 = (v11 + 16);
      sub_2718454CC(&v26, &v25);
    }

    else
    {
      LOBYTE(v26) = 0;
      v12 = *(v11 + 8);
      std::ostream::write();
    }

    goto LABEL_19;
  }

LABEL_7:
  v10 = *(a3 + 1);
  sub_271846E00((v9 + 8));
  if (a3[24] != 1)
  {
    goto LABEL_8;
  }

LABEL_14:
  v25 = 1;
  v13 = *(a2 + 24);
  if (*(v13 + 40) == 1)
  {
    v26 = (v13 + 16);
    sub_2718454CC(&v26, &v25);
    v14 = *(a2 + 24);
    if (*(v14 + 40) != 1)
    {
LABEL_16:
      v15 = *(a3 + 2);
      sub_271846E00((v14 + 8));
      goto LABEL_19;
    }
  }

  else
  {
    LOBYTE(v26) = 1;
    v16 = *(v13 + 8);
    std::ostream::write();
    v14 = *(a2 + 24);
    if (*(v14 + 40) != 1)
    {
      goto LABEL_16;
    }
  }

  v26 = (v14 + 16);
  sub_271846AEC(&v26, *(a3 + 2));
LABEL_19:
  v17 = *(a2 + 24);
  v18 = *(v17[11] - 8);
  sub_2718404E0(v17 + 6, v17[2] - v18 - 9);
  v19 = v17[6];
  if (v19)
  {
    memmove((v17[3] + v18), v17[7], v19);
  }

  v17[6] = 0;
  v20 = v17[10];
  v21 = v17[11] - 8;
  v17[11] = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = v17[2];
    v23 = v17[3];
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(v17[3]);
      *(v17 + 40) = 0;
    }
  }
}

void sub_271497248(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          *(&v26 + 1) = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = *(&v26 + 1);
          *(&v26 + 1) = v11;
          sub_2715CA870(&v26 + 1, v10);
        }

        sub_2713B6988(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      *(&v26 + 1) = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = *(&v26 + 1);
      *(&v26 + 1) = v18;
      sub_2715CA870(&v26 + 1, v17);
    }

    sub_2713DCA04(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    *(&v26 + 1) = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = *(&v26 + 1);
    *(&v26 + 1) = v25;
    sub_2715CA870(&v26 + 1, v24);
  }

  sub_2713DD090(a2, v3 + 16);
}

void sub_271497784(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    *(a1 + 72) = "sync_type";
    v7 = a1 + 72;
    v9 = (a1 + 88);
    v8 = *(a1 + 88);
    *(a1 + 80) = 9;
    v10 = (a1 + 80);
    if ((v8 & 1) == 0)
    {
      *v9 = 1;
    }

    v11 = *a2;
    goto LABEL_11;
  }

  v9 = (a1 + 88);
  v7 = a1 + 72;
  v10 = (a1 + 80);
  v11 = *a2;
  if ((*(a1 + 88) & 1) == 0 || *(a1 + 80) != 7 || (**v7 == *"version" ? (v12 = *(*v7 + 3) == *"sion") : (v12 = 0), !v12))
  {
LABEL_11:
    LOBYTE(v25) = 6;
    v26[0] = v11;
    v13 = sub_27182815C(a1);
    v14 = *v13;
    *v13 = 6;
    LOBYTE(v25) = v14;
    v15 = v13[1];
    v13[1] = v26[0];
    v26[0] = v15;
    sub_2715CA870(v26, v14);
  }

  if (a3 < 2)
  {
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v16 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      v25 = "value";
      v26[0] = 5;
      v26[1] = (a2 + 8);
      sub_271497E08(a1, &v25);
      return;
    }

LABEL_34:
    sub_2711308D4();
  }

  if (v16 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_34;
  }

  if (**v6 <= 1u)
  {
    v17 = *v9;
    *v7 = "value";
    *v10 = 5;
    if ((v17 & 1) == 0)
    {
      *v9 = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, v6);
  v18 = sub_27182815C(a1);
  *(a1 + 40) = v18;
  if (*(a1 + 88))
  {
    *v9 = 0;
  }

  if (*v18 < 2u && ((*v7 = "version", *v10 = 7, *v9 = 1, **v7 == *"version") ? (v19 = *(*v7 + 3) == *"sion") : (v19 = 0), v19))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v25) = 6;
    v26[0] = 1;
    v20 = sub_27182815C(a1);
    v21 = *v20;
    *v20 = 6;
    LOBYTE(v25) = v21;
    v22 = v20[1];
    v20[1] = v26[0];
    v26[0] = v22;
    sub_2715CA870(v26, v21);
  }

  sub_271497AB0(a1, (a2 + 8));
  v23 = *(a1 + 56);
  *(a1 + 40) = *(v23 - 8);
  *(a1 + 56) = v23 - 8;
  if (*(a1 + 88) == 1)
  {
    *v9 = 0;
  }
}

void sub_271497AB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (*v4 <= 1u)
  {
    *(a1 + 72) = "sync_command_id";
    v5 = a1 + 72;
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    *(a1 + 80) = 15;
    v8 = (a1 + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (a1 + 88);
  v5 = a1 + 72;
  v8 = (a1 + 80);
  if ((*(a1 + 88) & 1) == 0 || *(a1 + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_27182815C(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CA870(&v25, v11);
    v4 = *(a1 + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v25 = 0;
    v15 = sub_27182815C(a1);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = *(a2 + 8);
    v15 = sub_27182815C(a1);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CA870(&v25, v16);
  }

  if (**(a1 + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v25 = 0;
    v23 = sub_27182815C(a1);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = *(a2 + 24);
    v20 = sub_27182815C(a1);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CA870(&v25, v21);
  }
}

void sub_271497E08(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_2715DF0F0(a1 + 48, v3);
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a1 + 80);
    v9 = a1 + 72;
  }

  else
  {
    *(a1 + 72) = "version";
    *(a1 + 80) = 7;
    v7 = (a1 + 80);
    *(a1 + 88) = 1;
    v9 = a1 + 72;
    v8 = *(a1 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a1 + 96) = 1;
      *(a1 + 100) = 1;
      *(a1 + 88) = 0;
      if (*v6 >= 2u)
      {
        goto LABEL_24;
      }

      *v9 = "status";
      *v7 = 6;
LABEL_17:
      *(a1 + 88) = 1;
      goto LABEL_24;
    }
  }

  v33 = 1;
  v13 = sub_27182815C(a1);
  v14 = *v13;
  *v13 = 6;
  v15 = v13[1];
  v13[1] = v33;
  v33 = v15;
  sub_2715CA870(&v33, v14);
  v16 = *(a1 + 40);
  v17 = *(a1 + 88);
  if (*v16 < 2u)
  {
    *v9 = "status";
    *v7 = 6;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((*(a1 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_24:
    v33 = *v5;
    v19 = sub_27182815C(a1);
    v20 = *v19;
    *v19 = 6;
    v21 = v19[1];
    v19[1] = v33;
    v33 = v21;
    sub_2715CA870(&v33, v20);
    v16 = *(a1 + 40);
    v22 = *(a1 + 88);
    if (*v16 <= 1u)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v22 = 1;
  if (*v16 <= 1u)
  {
LABEL_25:
    *v9 = "sync_id";
    *v7 = 7;
    if ((v22 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((v22 & (*v7 == 7)) != 1)
  {
LABEL_33:
    v33 = *(v5 + 1);
    v24 = sub_27182815C(a1);
    v25 = *v24;
    *v24 = 6;
    v26 = v24[1];
    v24[1] = v33;
    v33 = v26;
    sub_2715CA870(&v33, v25);
    v16 = *v3;
    goto LABEL_34;
  }

LABEL_29:
  if (**v9 != *"version" || *(*v9 + 3) != *"sion")
  {
    goto LABEL_33;
  }

LABEL_34:
  if (*v16 <= 1u)
  {
    v27 = *(a1 + 88);
    *(a1 + 72) = "acknowledge_until";
    *(a1 + 80) = 17;
    if ((v27 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if ((v5[24] & 1) == 0)
  {
    v33 = 0;
    v29 = sub_27182815C(a1);
    v30 = *v29;
    *v29 = 0;
    goto LABEL_46;
  }

  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || (**v9 == *"version" ? (v28 = *(*v9 + 3) == *"sion") : (v28 = 0), !v28))
  {
    v33 = *(v5 + 2);
    v29 = sub_27182815C(a1);
    v30 = *v29;
    *v29 = 6;
LABEL_46:
    v31 = v29[1];
    v29[1] = v33;
    v33 = v31;
    sub_2715CA870(&v33, v30);
  }

  v32 = *(a1 + 56);
  *(a1 + 40) = *(v32 - 8);
  *(a1 + 56) = v32 - 8;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }
}

void *sub_271498254(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v18 = *(a2 + 24);
      LOBYTE(v19[0]) = *(a2 + 32);
      sub_271120E64(v18, v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        LOBYTE(v19[0]) = *(a2 + 32);
        sub_271120E64(v5, v19, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      LOBYTE(v19[0]) = *(a2 + 32);
      sub_271120E64(v8, v19, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      LOBYTE(v19[0]) = *(a2 + 32);
      sub_271120E64(v7, v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  LOBYTE(v19[0]) = v6;
  sub_271120E64(v9, v19, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    LOBYTE(v19[0]) = *(a2 + 32);
    sub_271120E64(v11, v19, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  v12 = *(v3 + 216);
  v19[0] = *(v3 + 200);
  v19[1] = v12;
  v13 = *(v3 + 248);
  v19[2] = *(v3 + 232);
  v19[3] = v13;
  sub_271498480(a2, v19, 2u);
  v14 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v15 = *(a2 + 24);
    LOBYTE(v19[0]) = *(a2 + 32);
    sub_271120E64(v15, v19, 1);
  }

  v16 = *(a2 + 24);
  LOBYTE(v19[0]) = v14;
  result = sub_271120E64(v16, v19, 1);
  ++*(a2 + 40);
  return result;
}

void sub_271498480(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v12 = *a2;
  sub_2718388F8(a1, &v12);
  if (a3 < 2)
  {
    return;
  }

  v6 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v6 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      sub_271498744(&v13, a1, (a2 + 8));
      return;
    }

LABEL_14:
    sub_2711308D4();
  }

  if (v6 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_14;
  }

  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_271120E64(v7, &v14, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 1);
  ++*(a1 + 40);
  sub_2714985FC(a1, (a2 + 8));
  v8 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v9 = *(a1 + 24);
    v15 = *(a1 + 32);
    sub_271120E64(v9, &v15, 1);
  }

  v10 = *(a1 + 24);
  v16 = v8;
  sub_271120E64(v10, &v16, 1);
  ++*(a1 + 40);
}

void sub_2714985FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v12 = *(a1 + 32);
    sub_271120E64(v4, &v12, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *a2);
  ++*(a1 + 40);
  if (*(a2 + 16) == 1)
  {
    v9 = 1;
    sub_2718388F8(a1, &v9);
    if (*(a1 + 40))
    {
      v5 = *(a1 + 24);
      v13 = *(a1 + 32);
      sub_271120E64(v5, &v13, 1);
    }

    MEMORY[0x2743BE850](*(a1 + 24), *(a2 + 8));
    ++*(a1 + 40);
    v6 = *(a2 + 32);
    if (v6 != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    sub_2718388F8(a1, &v8);
    v6 = *(a2 + 32);
    if (v6 != 1)
    {
LABEL_7:
      v10 = 0;
      sub_2718388F8(a1, &v10);
      return;
    }
  }

  v11 = v6;
  sub_2718388F8(a1, &v11);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_271120E64(v7, &v14, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(a2 + 24));
  ++*(a1 + 40);
}

void *sub_271498744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    v15 = *(a2 + 32);
    sub_271120E64(v5, &v15, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_2718388F8(a2, a3);
  if (*(a2 + 40))
  {
    v6 = *(a2 + 24);
    v16 = *(a2 + 32);
    sub_271120E64(v6, &v16, 1);
  }

  MEMORY[0x2743BE850](*(a2 + 24), *(a3 + 8));
  ++*(a2 + 40);
  if (*(a3 + 24) != 1)
  {
    v13 = 0;
    sub_2718388F8(a2, &v13);
    v9 = *(a2 + 34);
    if (!*(a2 + 40))
    {
      goto LABEL_12;
    }

LABEL_11:
    v10 = *(a2 + 24);
    v18 = *(a2 + 32);
    sub_271120E64(v10, &v18, 1);
    goto LABEL_12;
  }

  v14 = 1;
  sub_2718388F8(a2, &v14);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v17 = *(a2 + 32);
    sub_271120E64(v7, &v17, 1);
  }

  MEMORY[0x2743BE850](*(a2 + 24), *(a3 + 16));
  v8 = *(a2 + 40) + 1;
  *(a2 + 40) = v8;
  v9 = *(a2 + 34);
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = *(a2 + 24);
  v19 = v9;
  result = sub_271120E64(v11, &v19, 1);
  ++*(a2 + 40);
  return result;
}

char *sub_2714988A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v14[0]) = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), v14, v14 + 4, 4uLL);
    v7 = v14[0];
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v14[0]) = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), v14, v14 + 4, 4uLL);
    v6 = v14[0];
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    LODWORD(v14[0]) = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), v14, v14 + 4, 4uLL);
    v5 = v14[0];
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v14[0]) = 2;
  sub_27173318C(a2 + 24, *(a2 + 32), v14, v14 + 4, 4uLL);
  v9 = v14[0];
  sub_2717312C0(a2);
  v10 = *(v3 + 216);
  v14[0] = *(v3 + 200);
  v14[1] = v10;
  v11 = *(v3 + 248);
  v14[2] = *(v3 + 232);
  v14[3] = v11;
  result = sub_271498A6C(a2, v14, v9);
  v13 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v13 + 10) = *(a2 + 32) - v13 - 18;
  *(a2 + 56) -= 8;
  return result;
}

char *sub_271498A6C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  __src = *a2;
  result = sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v11, 1uLL);
  if (a3 >= 2)
  {
    v7 = *a2;
    if (*a2)
    {
      if (v7 == 2)
      {
        if (*(a2 + 12) == 1)
        {
          return sub_271498D08(&v13, a1, (a2 + 8));
        }
      }

      else
      {
        if (v7 != 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "invalid sync type");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (!*(a2 + 12))
        {
          v11 = 1;
          sub_27173318C(a1 + 24, *(a1 + 32), &v11, v12, 4uLL);
          sub_2717312C0(a1);
          result = sub_271498BD8(a1, a2 + 8);
          v8 = *(*(a1 + 56) - 8) + *(a1 + 24);
          *(v8 + 10) = *(a1 + 32) - v8 - 18;
          *(a1 + 56) -= 8;
          return result;
        }
      }

      sub_2711308D4();
    }
  }

  return result;
}

char *sub_271498BD8(uint64_t a1, char *__src)
{
  sub_27173318C(a1 + 24, *(a1 + 32), __src, __src + 8, 8uLL);
  if (__src[16] == 1)
  {
    __srca = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &__srca, &v7, 1uLL);
    sub_27173318C(a1 + 24, *(a1 + 32), __src + 8, __src + 16, 8uLL);
    if (__src[32] != 1)
    {
LABEL_3:
      v7 = 0;
      return sub_27173318C(a1 + 24, *(a1 + 32), &v7, &v8, 1uLL);
    }
  }

  else
  {
    v5 = 0;
    sub_27173318C(a1 + 24, *(a1 + 32), &v5, &__srca, 1uLL);
    if (__src[32] != 1)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  sub_27173318C(a1 + 24, *(a1 + 32), &v8, &v9, 1uLL);
  return sub_27173318C(a1 + 24, *(a1 + 32), __src + 24, __src + 32, 8uLL);
}

char *sub_271498D08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __src = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, v13, 4uLL);
  sub_2717312C0(a2);
  sub_27173318C(a2 + 24, *(a2 + 32), a3, (a3 | 1), 1uLL);
  sub_27173318C(a2 + 24, *(a2 + 32), (a3 + 8), (a3 + 16), 8uLL);
  if (*(a3 + 24) == 1)
  {
    v15 = 1;
    sub_27173318C(a2 + 24, *(a2 + 32), &v15, &v16, 1uLL);
    v5 = *(a2 + 32);
    v6 = a2 + 24;
    v7 = (a3 + 16);
    v8 = (a3 + 24);
    v9 = 8;
  }

  else
  {
    v14 = 0;
    v5 = *(a2 + 32);
    v6 = a2 + 24;
    v7 = &v14;
    v8 = &v15;
    v9 = 1;
  }

  result = sub_27173318C(v6, v5, v7, v8, v9);
  v11 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v11 + 10) = *(a2 + 32) - v11 - 18;
  *(a2 + 56) -= 8;
  return result;
}

uint64_t sub_271498E24(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  LOBYTE(v10) = *a2;
  result = (*(*a1 + 80))(a1, &v10);
  if (a3 < 2)
  {
    return result;
  }

  v7 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (v7 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      v10 = *(a1 + 1);
      return sub_2714991DC(&v10, a1, (a2 + 8));
    }

LABEL_14:
    sub_2711308D4();
  }

  if (v7 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_14;
  }

  v8 = a1[2];
  LODWORD(v10) = 1;
  (*(*a1 + 104))(a1, &v10);
  if (v8 < 1)
  {
    return sub_271499040(a1, (a2 + 8));
  }

  if (v8 == 2)
  {
    LODWORD(v10) = 1;
    (*(*a1 + 104))(a1, &v10);
  }

  (*(*a1 + 16))(a1);
  sub_271499040(a1, (a2 + 8));
  return (*(*a1 + 24))(a1);
}

uint64_t sub_271499040(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 120))(a1);
  if (*(a2 + 16) == 1)
  {
    v7 = 1;
    (*(*a1 + 80))(a1, &v7);
    (*(*a1 + 120))(a1, a2 + 8);
    v4 = *(a2 + 32);
    if (v4 != 1)
    {
LABEL_3:
      v8 = 0;
      return (*(*a1 + 80))(a1, &v8);
    }
  }

  else
  {
    v6 = 0;
    (*(*a1 + 80))(a1, &v6);
    v4 = *(a2 + 32);
    if (v4 != 1)
    {
      goto LABEL_3;
    }
  }

  v9 = v4;
  (*(*a1 + 80))(a1, &v9);
  return (*(*a1 + 120))(a1, a2 + 24);
}

uint64_t sub_2714991DC(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = 1;
  (*(*a2 + 104))(a2, &v7);
  if (*a1 >= 1)
  {
    return sub_271499380(a1, a2, a3);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  if (*(a3 + 24) == 1)
  {
    v9 = 1;
    (*(*a2 + 80))(a2, &v9);
    return (*(*a2 + 120))(a2, a3 + 16);
  }

  else
  {
    v8 = 0;
    return (*(*a2 + 80))(a2, &v8);
  }
}

uint64_t sub_271499380(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  if (*(a3 + 24) != 1)
  {
    v9 = 0;
    result = (*(*a2 + 80))(a2, &v9);
    if (v5 < 1)
    {
      return result;
    }

    return (*(*a2 + 24))(a2);
  }

  v10 = 1;
  (*(*a2 + 80))(a2, &v10);
  result = (*(*a2 + 120))(a2, a3 + 16);
  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_27149953C(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_271499BC4(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_27149A698(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_27149B0AC(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_27149BB80(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_27149C554(&v16, v14);
      }

      else
      {
        sub_271499708(&v15, a1);
      }
    }
  }
}

uint64_t sub_271499708(uint64_t *a1, void **a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v25);
    sub_2713B2524(v37, v25);
    sub_2713E031C(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v25);
  sub_2713B2524(v37, v25);
  sub_2713E031C(v3 + 16, v37);
  if (v49 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v48;
      v7 = __p;
      if (v48 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v48 = v5;
      operator delete(v7);
    }
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v36 != 1)
  {
    goto LABEL_66;
  }

  v13 = v34;
  if (!v34)
  {
    goto LABEL_66;
  }

  v14 = v35;
  v15 = v34;
  if (v35 != v34)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v35 = v13;
  operator delete(v15);
LABEL_66:
  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v25[0] = a2[1];
  v20 = v25[0];
  v37[0] = 6;
  v19[13](a2, v37);
  if (v20 < 1)
  {
    if (v37[0] < 3)
    {
      sub_2713C66D4(v37, a2, v3 + 16, v37[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v37[0]);
    }
  }

  else
  {
    sub_2713C62C8(v25, a2, v3 + 16, v37[0]);
  }

  v21 = *a2;
  v25[0] = a2[1];
  v22 = v25[0];
  v37[0] = 2;
  v21[13](a2, v37);
  if (v22 < 1)
  {
    result = sub_27149D25C(a2, v3 + 200, v37[0]);
  }

  else
  {
    result = sub_27149D0AC(v25, a2, v3 + 200, v37[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271499BC4(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_27149A0A0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 104);
  *(a1 + 88) = "sync_type";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  LOBYTE(v17) = 0;
  sub_27182E90C(a1, &v17);
  v7 = v17;
  *a2 = v17;
  if (a3 >= 2 && v7)
  {
    if (v7 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v9 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v9 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v10 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v10 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v11 = sub_27182D6C4(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v11;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182EB6C(a1, &v19);
      sub_27149A56C(a1, a2 + 8);
    }

    else
    {
      if (v7 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v8)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      v12 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v12 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v13 = sub_27182D6C4(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v13;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182EB6C(a1, &v19);
      sub_27149A3AC(a1, a2 + 8);
    }

    v14 = *(a1 + 48);
    *(a1 + 32) = *(v14 - 8);
    v15 = *(a1 + 72);
    *(a1 + 112) = *(v15 - 8);
    *(a1 + 48) = v14 - 8;
    *(a1 + 72) = v15 - 8;
  }
}

void sub_27149A3AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "sync_command_id";
  *(a1 + 96) = 15;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D693C(v5, &v12);
  *a2 = v12;
  v6 = *(a1 + 104);
  *(a1 + 88) = "proceed_n";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (!*sub_27182D6C4(a1))
  {
    ++*(a1 + 112);
    if (*(a2 + 16) == 1)
    {
      *(a2 + 16) = 0;
      v11 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if (!*sub_27182D6C4(a1))
    {
      goto LABEL_15;
    }

LABEL_11:
    v10 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D693C(v10, &v12);
    *(a2 + 24) = v12;
    *(a2 + 32) = 1;
    return;
  }

  v7 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D693C(v7, &v12);
  *(a2 + 8) = v12;
  *(a2 + 16) = 1;
  v8 = *(a1 + 104);
  *(a1 + 88) = "proceed_until";
  *(a1 + 96) = 13;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_14:
  *(a1 + 104) = 1;
  if (*sub_27182D6C4(a1))
  {
    goto LABEL_11;
  }

LABEL_15:
  ++*(a1 + 112);
  if (*(a2 + 32) == 1)
  {
    *(a2 + 32) = 0;
  }
}

void sub_27149A56C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "status";
  *(a1 + 96) = 6;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182E90C(a1, a2);
  v5 = *(a1 + 104);
  *(a1 + 88) = "sync_id";
  *(a1 + 96) = 7;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v9 = 0;
  sub_2715D693C(v6, &v9);
  *(a2 + 8) = v9;
  v7 = *(a1 + 104);
  *(a1 + 88) = "acknowledge_until";
  *(a1 + 96) = 17;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (*sub_27182D6C4(a1))
  {
    v8 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v9 = 0;
    sub_2715D693C(v8, &v9);
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
  }

  else
  {
    ++*(a1 + 112);
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }
}

uint64_t sub_27149A698(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v21[0]) = 6;
  sub_27183FB7C(*(a2 + 48), v21);
  sub_2713BF6F4(v21, a2, v3 + 16, v21[0]);
  LODWORD(v21[0]) = 2;
  sub_27183FB7C(*(a2 + 48), v21);
  result = sub_27149AABC(v21, a2, v3 + 200, v21[0]);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27149AABC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  sub_27183FF6C(*(a2 + 48), &v13);
  v7 = a2 + 16;
  *&v12 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v12 + 1) = v13;
  sub_2713BF82C(a2 + 24, &v12);
  if (a4 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a4;
  }

  sub_27149ABCC(a2, a3, v8);
  v9 = *(a2 + 32);
  result = (*(*v7 + 32))(a2 + 16);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*v7 + 40))(a2 + 16, v11);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_27149ABCC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = 0;
  sub_27183F824(*(a1 + 48), &v10);
  v6 = v10;
  *a2 = v10;
  if (a3 >= 2 && v6)
  {
    if (v6 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v8 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v14 = 1;
      sub_27183FB7C(*(a1 + 48), &v14);
      sub_27149AF5C(&v13, a1, a2 + 8);
    }

    else
    {
      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v7 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v7)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      v12 = 1;
      sub_27183FB7C(*(a1 + 48), &v12);
      sub_27149AD88(&v11, a1, a2 + 8);
    }
  }
}

uint64_t sub_27149AD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_27149AE94(a2, a3);
  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_27149AE94(uint64_t a1, uint64_t a2)
{
  sub_27183FF6C(*(a1 + 48), a2);
  v4 = 0;
  sub_27183F824(*(a1 + 48), &v4);
  if (v4)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    sub_27183FF6C(*(a1 + 48), (a2 + 8));
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  v5 = 0;
  sub_27183F824(*(a1 + 48), &v5);
  if (v5)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 1;
    }

    sub_27183FF6C(*(a1 + 48), (a2 + 24));
  }

  else if (*(a2 + 32))
  {
    *(a2 + 32) = 0;
  }
}

uint64_t sub_27149AF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_27183F824(*(a2 + 48), a3);
  sub_27183FF6C(*(a2 + 48), (a3 + 8));
  LOBYTE(v8) = 0;
  sub_27183F824(*(a2 + 48), &v8);
  if (v8)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_27183FF6C(*(a2 + 48), (a3 + 16));
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_27149B0AC(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_27149B588(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 104);
  *(a1 + 88) = "sync_type";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  LOBYTE(v17) = 0;
  sub_27182D980(a1, &v17);
  v7 = v17;
  *a2 = v17;
  if (a3 >= 2 && v7)
  {
    if (v7 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v9 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v9 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v10 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v10 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v11 = sub_27182D2AC(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v11;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182DBE0(a1, &v19);
      sub_27149BA54(a1, a2 + 8);
    }

    else
    {
      if (v7 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v8)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      v12 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v12 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v13 = sub_27182D2AC(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v13;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182DBE0(a1, &v19);
      sub_27149B894(a1, a2 + 8);
    }

    v14 = *(a1 + 48);
    *(a1 + 32) = *(v14 - 8);
    v15 = *(a1 + 72);
    *(a1 + 112) = *(v15 - 8);
    *(a1 + 48) = v14 - 8;
    *(a1 + 72) = v15 - 8;
  }
}

void sub_27149B894(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "sync_command_id";
  *(a1 + 96) = 15;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D613C(v5, &v12);
  *a2 = v12;
  v6 = *(a1 + 104);
  *(a1 + 88) = "proceed_n";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (!*sub_27182D2AC(a1))
  {
    ++*(a1 + 112);
    if (*(a2 + 16) == 1)
    {
      *(a2 + 16) = 0;
      v11 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if (!*sub_27182D2AC(a1))
    {
      goto LABEL_15;
    }

LABEL_11:
    v10 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D613C(v10, &v12);
    *(a2 + 24) = v12;
    *(a2 + 32) = 1;
    return;
  }

  v7 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D613C(v7, &v12);
  *(a2 + 8) = v12;
  *(a2 + 16) = 1;
  v8 = *(a1 + 104);
  *(a1 + 88) = "proceed_until";
  *(a1 + 96) = 13;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_14:
  *(a1 + 104) = 1;
  if (*sub_27182D2AC(a1))
  {
    goto LABEL_11;
  }

LABEL_15:
  ++*(a1 + 112);
  if (*(a2 + 32) == 1)
  {
    *(a2 + 32) = 0;
  }
}

void sub_27149BA54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "status";
  *(a1 + 96) = 6;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182D980(a1, a2);
  v5 = *(a1 + 104);
  *(a1 + 88) = "sync_id";
  *(a1 + 96) = 7;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v9 = 0;
  sub_2715D613C(v6, &v9);
  *(a2 + 8) = v9;
  v7 = *(a1 + 104);
  *(a1 + 88) = "acknowledge_until";
  *(a1 + 96) = 17;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (*sub_27182D2AC(a1))
  {
    v8 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v9 = 0;
    sub_2715D613C(v8, &v9);
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
  }

  else
  {
    ++*(a1 + 112);
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }
}

void sub_27149BB80(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v24);
      sub_2713B2524(v38, &v24);
      sub_2713E031C(v3 + 16, v38);
      if (v50 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v49;
          v7 = __p;
          if (v49 != __p)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = __p;
          }

          v49 = v5;
          operator delete(v7);
        }
      }

      if (v47 == 1 && v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 == 1 && v40 < 0)
      {
        operator delete(v39);
      }

      if (v37 != 1)
      {
        goto LABEL_66;
      }

      v13 = v35;
      if (!v35)
      {
        goto LABEL_66;
      }

      v14 = v36;
      v15 = v35;
      if (v36 == v35)
      {
LABEL_65:
        v36 = v13;
        operator delete(v15);
LABEL_66:
        if (v34 == 1 && v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 == 1 && v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
        }

        if (*(v3 + 192))
        {
          sub_2711308D4();
        }

        goto LABEL_76;
      }

      while (1)
      {
        v16 = v14;
        if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
        {
          operator delete(*(v14 - 8));
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
LABEL_37:
            if (*(v16 - 73) < 0)
            {
              operator delete(*v14);
            }
          }
        }

        else
        {
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
            goto LABEL_37;
          }
        }

        if (v14 == v13)
        {
          goto LABEL_64;
        }
      }
    }

    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, &v24);
    sub_2713B2524(v38, &v24);
    sub_2713E031C(v3 + 16, v38);
    if (v50 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v49;
        v11 = __p;
        if (v49 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v49 = v9;
        operator delete(v11);
      }
    }

    if (v47 == 1 && v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v37 != 1)
    {
      goto LABEL_66;
    }

    v13 = v35;
    if (!v35)
    {
      goto LABEL_66;
    }

    v17 = v36;
    v15 = v35;
    if (v36 == v35)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v35;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v24) = 6;
  sub_27183A9AC(a2, &v24);
  if (v24 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v24;
  }

  if (v24 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v24);
      if (SHIBYTE(v26) < 0)
      {
        if (v25 == 1 && *(a2 + 72) == *v24)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v26) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v26) == 1 && *(a2 + 72) == v24)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v26) < 0)
      {
LABEL_93:
        operator delete(v24);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v24, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v24) = 2;
  sub_27183A9AC(a2, &v24);
  if (v24 >= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = v24;
  }

  sub_27149C114(a2, v3 + 200, v21);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v24);
    if (SHIBYTE(v26) < 0)
    {
      if (v25 == 1 && *(a2 + 72) == *v24)
      {
LABEL_108:
        v22 = 0;
        if (SHIBYTE(v26) < 0)
        {
          goto LABEL_111;
        }

        goto LABEL_99;
      }
    }

    else if (SHIBYTE(v26) == 1 && *(a2 + 72) == v24)
    {
      goto LABEL_108;
    }

    v22 = 1;
    if (SHIBYTE(v26) < 0)
    {
LABEL_111:
      operator delete(v24);
    }

LABEL_99:
    if ((v22 & 1) == 0)
    {
      break;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_27149C114(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LOBYTE(__p[0]) = 0;
  sub_271839D90(a1, __p);
  v6 = LOBYTE(__p[0]);
  *a2 = __p[0];
  if (a3 >= 2 && v6)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v7 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v7)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      LODWORD(__p[0]) = 1;
      sub_27183A9AC(a1, __p);
      sub_27149C34C(a1, a2 + 8);
      while (1)
      {
        if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
        {
          return;
        }

        sub_27183D78C(a1, __p);
        if (v12 < 0)
        {
          if (__p[1] == 1 && *(a1 + 72) == *__p[0])
          {
LABEL_25:
            v9 = 0;
            if (v12 < 0)
            {
              goto LABEL_28;
            }

            goto LABEL_16;
          }
        }

        else if (v12 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
        {
          goto LABEL_25;
        }

        v9 = 1;
        if (v12 < 0)
        {
LABEL_28:
          operator delete(__p[0]);
        }

LABEL_16:
        if ((v9 & 1) == 0)
        {
          return;
        }
      }
    }

    if (*(a2 + 56) == 1)
    {
      v8 = *(a2 + 48);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      if (v8 != 1)
      {
        *(a2 + 48) = 1;
      }
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 48) = 1;
      *(a2 + 56) = 1;
    }

    sub_27149C410(__p, a1, a2 + 8);
  }
}

void sub_27149C34C(uint64_t a1, uint64_t a2)
{
  sub_27183B6AC(a1, a2);
  v4 = 0;
  sub_271839D90(a1, &v4);
  if (v4)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    sub_27183B6AC(a1, (a2 + 8));
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  v5 = 0;
  sub_271839D90(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 1;
    }

    sub_27183B6AC(a1, (a2 + 24));
  }

  else if (*(a2 + 32))
  {
    *(a2 + 32) = 0;
  }
}

void sub_27149C410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 1;
  sub_27183A9AC(a2, __p);
  sub_271839D90(a2, a3);
  sub_27183B6AC(a2, (a3 + 8));
  LOBYTE(__p[0]) = 0;
  sub_271839D90(a2, __p);
  if (LOBYTE(__p[0]))
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_27183B6AC(a2, (a3 + 16));
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_16:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_7;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_16;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_19:
      operator delete(__p[0]);
    }

LABEL_7:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void *sub_27149C554(uint64_t *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v21, a2, v3 + 16);
  result = sub_27149C944(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_27149C944(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  result = sub_27149CA24(a2, a3, v10);
  v12 = a2[12];
  v13 = a2[9];
  a2[6] = *(v12 - 8) + *(v13 - 8) + 8;
  a2[9] = v13 - 8;
  a2[12] = v12 - 8;
  return result;
}

void *sub_27149CA24(void *result, uint64_t a2, unsigned int a3)
{
  v3 = result[6];
  if (result[7] <= v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v4 = *(result[3] + v3);
  result[6] = v3 + 1;
  *a2 = v4;
  if (a3 >= 2 && v4)
  {
    if (v4 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v7 = result;
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v8 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        v7 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      return sub_27149CEC4(&v12, v7, a2 + 8);
    }

    else
    {
      if (v4 != 1)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "invalid sync type");
        __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v5 = result;
        v6 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v6)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        v5 = result;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      return sub_27149CBFC(&v11, v5, (a2 + 8));
    }
  }

  return result;
}

void *sub_27149CBFC(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  result = sub_27149CCD8(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void *sub_27149CCD8(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *a2 = *(a1[3] + v2);
  v6 = a2 + 3;
  a1[6] += 8;
  v10 = "proceed_n";
  v11 = 9;
  v12 = a2 + 1;
  sub_27149CDBC(a1, &v10);
  v10 = "proceed_until";
  v11 = 13;
  v12 = v6;
  return sub_27149CDBC(a1, &v10);
}

void *sub_27149CDBC(void *result, uint64_t a2)
{
  v3 = result[6];
  v2 = result[7];
  if (v2 <= v3)
  {
    goto LABEL_12;
  }

  v4 = *(a2 + 16);
  v5 = result[3];
  v6 = *(v5 + v3);
  v7 = v3 + 1;
  result[6] = v7;
  if (v6)
  {
    if ((*(v4 + 8) & 1) == 0)
    {
      *v4 = 0;
      *(v4 + 8) = 1;
    }

    v8 = v2 >= v7;
    v9 = v2 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    if (v9 > 7)
    {
      *v4 = *(v5 + v7);
      result[6] += 8;
      return result;
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  if (*(v4 + 8))
  {
    *(v4 + 8) = 0;
  }

  return result;
}

void *sub_27149CEC4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  result = sub_27149CFA0(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void *sub_27149CFA0(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (a1[7] <= v2)
  {
    goto LABEL_6;
  }

  *a2 = *(a1[3] + v2);
  v3 = a1[7];
  v4 = a1[6] + 1;
  a1[6] = v4;
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 7)
  {
LABEL_6:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 8) = *(a1[3] + v4);
  a1[6] += 8;
  v9[0] = "acknowledge_until";
  v9[1] = 17;
  v9[2] = a2 + 16;
  return sub_27149CDBC(a1, v9);
}

uint64_t sub_27149D0AC(int *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  if (*a1 == 2)
  {
    v13 = 1;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878850))
      {
        sub_2718519B4("cv3d::kit::viz::SyncSample]", 0x1AuLL, &stru_280878838);
        __cxa_guard_release(&qword_280878850);
        sub_271847D5C(&stru_280878838, v12, 2u);
      }

      sub_271847D5C(&stru_280878838, v12, 2u);
    }

    v7 = *a1;
  }

  if (v7 <= 0)
  {
    if (a4 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = a4;
    }

    return sub_27149D25C(a2, a3, v11);
  }

  else
  {
    (*(*a2 + 16))(a2);
    if (a4 >= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a4;
    }

    sub_27149D25C(a2, a3, v9);
    return (*(*a2 + 24))(a2);
  }
}

uint64_t sub_27149D25C(void *a1, uint64_t a2, unsigned int a3)
{
  v11 = 0;
  result = (*(*a1 + 80))(a1, &v11);
  v7 = v11;
  *a2 = v11;
  if (a3 >= 2 && v7)
  {
    if (v7 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v9 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v9 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v13 = a1[1];
      return sub_27149D874(&v13, a1, a2 + 8);
    }

    else
    {
      if (v7 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v8)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      return sub_27149D40C(&v12, a1, a2 + 8);
    }
  }

  return result;
}

uint64_t sub_27149D40C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v7 = a2[1];
  v8 = 1;
  (*(v5 + 104))(a2, &v8);
  if (v7 >= 1)
  {
    return sub_27149D5EC(&v7, a2, a3);
  }

  (*(*a2 + 120))(a2, a3);
  v9 = 0;
  (*(*a2 + 80))(a2, &v9);
  if (v9)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    (*(*a2 + 120))(a2, a3 + 8);
  }

  else if (*(a3 + 16))
  {
    *(a3 + 16) = 0;
  }

  v10 = 0;
  result = (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 32) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
    }

    return (*(*a2 + 120))(a2, a3 + 24);
  }

  else if (*(a3 + 32))
  {
    *(a3 + 32) = 0;
  }

  return result;
}

uint64_t sub_27149D5EC(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878870))
      {
        sub_2718519B4("cv3d::kit::viz::SyncCommandSample]", 0x21uLL, &stru_280878858);
        __cxa_guard_release(&qword_280878870);
        sub_271847D5C(&stru_280878858, v8, 1u);
      }

      sub_271847D5C(&stru_280878858, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 120))(a2, a3);
  v10 = 0;
  (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    (*(*a2 + 120))(a2, a3 + 8);
  }

  else if (*(a3 + 16))
  {
    *(a3 + 16) = 0;
  }

  v11 = 0;
  result = (*(*a2 + 80))(a2, &v11);
  if (v11)
  {
    if ((*(a3 + 32) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
    }

    result = (*(*a2 + 120))(a2, a3 + 24);
  }

  else if (*(a3 + 32))
  {
    *(a3 + 32) = 0;
  }

  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

uint64_t sub_27149D874(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = 1;
  (*(*a2 + 104))(a2, &v7);
  if (*a1 >= 1)
  {
    return sub_27149DA00(a1, a2, a3);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  v8 = 0;
  result = (*(*a2 + 80))(a2, &v8);
  if (v8)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    return (*(*a2 + 120))(a2, a3 + 16);
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_27149DA00(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878890))
      {
        sub_2718519B4("cv3d::kit::viz::ClientSyncUpdateSample]", 0x26uLL, &stru_280878878);
        __cxa_guard_release(&qword_280878890);
        sub_271847D5C(&stru_280878878, v8, 1u);
      }

      sub_271847D5C(&stru_280878878, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  v10 = 0;
  result = (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    result = (*(*a2 + 120))(a2, a3 + 16);
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_27149DC38(__int128 *a1, __int128 *a2)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v6 = &unk_288131AF8;
  v7 = &unk_288131B40;
  v8 = *a1;
  v9 = *(a1 + 4);
  LOBYTE(v10[0]) = 0;
  v12 = 0;
  if (*(a1 + 48) == 1)
  {
    *v10 = *(a1 + 24);
    v11 = *(a1 + 5);
    *(a1 + 4) = 0;
    *(a1 + 5) = 0;
    *(a1 + 3) = 0;
    v12 = 1;
  }

  LOBYTE(v13) = 0;
  v25 = 0;
  if (*(a1 + 200) == 1)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 9);
    *(a1 + 7) = 0;
    *(a1 + 8) = 0;
    v2 = a1[5];
    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    *v15 = v2;
    v16 = *(a1 + 12);
    *(a1 + 11) = 0;
    *(a1 + 12) = 0;
    v18 = *(a1 + 15);
    *v17 = *(a1 + 104);
    *(a1 + 13) = 0;
    *(a1 + 14) = 0;
    v3 = a1[8];
    v20 = *(a1 + 18);
    *v19 = v3;
    *(a1 + 15) = 0;
    *(a1 + 16) = 0;
    *(a1 + 17) = 0;
    *(a1 + 18) = 0;
    v4 = *(a1 + 152);
    v22 = *(a1 + 21);
    *v21 = v4;
    *(a1 + 19) = 0;
    *(a1 + 20) = 0;
    v5 = a1[11];
    v24 = *(a1 + 24);
    *v23 = v5;
    *(a1 + 21) = 0;
    *(a1 + 22) = 0;
    *(a1 + 23) = 0;
    *(a1 + 24) = 0;
    v25 = 1;
  }

  v26 = a1[13];
  v27 = *(a1 + 28);
  v28 = *a2;
  sub_27113523C(v29, a2 + 1);
  v6 = &unk_28810C498;
  operator new();
}

void sub_27149E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_27149F980(&a9);
  _Unwind_Resume(a1);
}

void sub_27149E08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2743BF050](v9, 0x10B3C40AA30A612);
  sub_27149F980(&a9);
  _Unwind_Resume(a1);
}

void *sub_27149E0E4(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));
  return a1;
}

void sub_27149E154(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));

  JUMPOUT(0x2743BF050);
}

void sub_27149E1F4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808788F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808788F0))
    {
      sub_27149F368();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_2808788D8, "{", __p, ",");
}

void sub_27149E2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27149E310(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 1;
}

void *sub_27149E388(void *a1)
{
  *a1 = &unk_288131B40;
  sub_2711B039C((a1 + 1));
  return a1;
}

void *sub_27149E3CC(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));
  return a1;
}

void sub_27149E43C(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));

  JUMPOUT(0x2743BF050);
}

void sub_27149E4CC()
{
  if ((atomic_load_explicit(&qword_2808788D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808788D0))
    {
      sub_27149F0D4();
    }
  }

  sub_27149EB88(&xmmword_2808788B8, "{");
}

void sub_27149E580(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_27149E5AC(void *a1)
{
  *a1 = &unk_288131B40;
  sub_2711B039C((a1 + 1));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27149E610(char *a1, char *lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131B60, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v7[0] = a1 + 8;
      v7[1] = a1 + 24;
      v7[2] = a1 + 64;
      v7[3] = a1 + 216;
      v6[0] = result + 8;
      v6[1] = result + 24;
      v6[2] = result + 64;
      v6[3] = result + 216;
      return sub_2714F8C34(v7, v6);
    }
  }

  return result;
}

void sub_27149E6DC()
{
  if ((atomic_load_explicit(&qword_2808788B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808788B0))
  {
    sub_2718519B4("cv3d::kit::viz::PeerInfo]", 0x18uLL, &xmmword_280878898);
    __cxa_guard_release(&qword_2808788B0);
  }

  sub_27149E790(&xmmword_280878898, "{");
}

void sub_27149E790(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_27149E93C();
}

void sub_27149E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149EB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27149EB88(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_27149EDB8();
}

void sub_27149ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149EDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27149F04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808788B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_27149F1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27149F328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27149F368()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_27149F60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

__n128 sub_27149F6FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131AF8;
  *(a1 + 8) = &unk_288131B40;
  *(a1 + 16) = *(a2 + 16);
  v2 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v2;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v3 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v3;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    v4 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a1 + 216) = 1;
  }

  v10 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 224) = v10;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v11 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v11;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    *(a1 + 296) = 1;
  }

  result = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = result;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    result = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 328) = result;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 328) = 0;
    *(a1 + 352) = 1;
    *(a1 + 368) = 0;
    *(a1 + 416) = 0;
    if (*(a2 + 416) != 1)
    {
LABEL_9:
      *(a1 + 432) = 0;
      *(a1 + 456) = 0;
      if (*(a2 + 456) != 1)
      {
        return result;
      }

LABEL_13:
      *(a1 + 432) = 0;
      *(a1 + 440) = 0;
      *(a1 + 448) = 0;
      result = *(a2 + 432);
      *(a1 + 432) = result;
      *(a1 + 448) = *(a2 + 448);
      *(a2 + 432) = 0;
      *(a2 + 440) = 0;
      *(a2 + 448) = 0;
      *(a1 + 456) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 368) = 0;
    *(a1 + 416) = 0;
    if (*(a2 + 416) != 1)
    {
      goto LABEL_9;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = result;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 368) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 400) = _X2;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  if (*(a2 + 456) == 1)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_27149F980(void *a1)
{
  *a1 = &unk_288131AF8;
  sub_271134CBC((a1 + 34));
  a1[1] = &unk_288131B40;
  sub_2711B039C((a1 + 2));
  return a1;
}

BOOL sub_27149F9F0(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v52);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v52);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v52);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v37);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v37);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v37);
  }

  if (v52 != v37)
  {
    goto LABEL_18;
  }

  if (v53 != v38)
  {
    goto LABEL_18;
  }

  v27 = &v54;
  v28 = &v57;
  v29 = &v58;
  v30 = &v61;
  v31 = &v64;
  v17 = &v39;
  v18 = &v42;
  v19 = &v43;
  v20 = &v46;
  p_p = &__p;
  if (sub_2714FBB90(&v27, &v17))
  {
    v27 = (a1 + 200);
    v28 = (a1 + 224);
    v29 = (a1 + 248);
    v30 = (a1 + 272);
    v31 = (a1 + 296);
    v32 = a1 + 320;
    v33 = a1 + 344;
    v34 = a1 + 352;
    v35 = a1 + 376;
    v36 = a1 + 392;
    v17 = (a2 + 200);
    v18 = (a2 + 224);
    v19 = (a2 + 248);
    v20 = (a2 + 272);
    p_p = (a2 + 296);
    v22 = a2 + 320;
    v23 = a2 + 344;
    v24 = a2 + 352;
    v25 = a2 + 376;
    v26 = a2 + 392;
    v6 = sub_2713A6524(&v27, &v17);
    if (v51 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_18:
    v6 = 0;
    if (v51 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v50;
    v9 = __p;
    if (v50 == __p)
    {
LABEL_31:
      v50 = v7;
      operator delete(v9);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_26:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v66 == 1)
  {
    v11 = v64;
    if (v64)
    {
      v12 = v65;
      v13 = v64;
      if (v65 == v64)
      {
LABEL_54:
        v65 = v11;
        operator delete(v13);
        goto LABEL_55;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_49:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v64;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  if (v63 == 1 && v62 < 0)
  {
    operator delete(v61);
  }

  if (v60 == 1 && v59 < 0)
  {
    operator delete(v58);
  }

  if (v56 == 1 && v55 < 0)
  {
    operator delete(v54);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_27149FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_271134CBC(v57);
  sub_271134CBC(&a57);
  _Unwind_Resume(a1);
}

void sub_27149FE18(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_2714A03D0(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_2714A17B0(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_2714A213C(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_2714A2D94(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_2714A33F0(&v16, v14);
      }

      else
      {
        sub_27149FFE4(&v15, a1);
      }
    }
  }
}

void sub_27149FFE4(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v13 = 4;
    (*(*a2 + 104))(a2, &v13);
    v10 = v13;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v13);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v13 = 5;
    (*(*a2 + 104))(a2, &v13);
    v8 = v13;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v13);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v13 = 6;
    (*(*a2 + 104))(a2, &v13);
    v6 = v13;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v13);
  }

LABEL_17:
  v11 = a2[2];
  v13 = 2;
  (*(*a2 + 104))(a2, &v13);
  v12 = v13;
  if (v11 < 1)
  {
    sub_2714A3AAC(a2, (v3 + 200), v13);
  }

  else
  {
    if (v11 == 2)
    {
      v13 = 1;
      (*(*a2 + 104))(a2, &v13);
    }

    (*(*a2 + 16))(a2);
    sub_2714A3AAC(a2, (v3 + 200), v12);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714A03D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16);
}

void sub_2714A09FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A0A10(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "user_given_name";
    *(a1 + 80) = 15;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1);
  if (**(a1 + 40) <= 1u)
  {
    v6 = *(a1 + 88);
    *(a1 + 72) = "product_name";
    *(a1 + 80) = 12;
    if ((v6 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1);
  if (**(a1 + 40) <= 1u)
  {
    v7 = *(a1 + 88);
    *(a1 + 72) = "type";
    *(a1 + 80) = 4;
    if ((v7 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1);
  if (**(a1 + 40) <= 1u)
  {
    v8 = *(a1 + 88);
    *(a1 + 72) = "serial_number";
    *(a1 + 80) = 13;
    if ((v8 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1);
  if (**(a1 + 40) <= 1u)
  {
    v9 = *(a1 + 88);
    *(a1 + 72) = "os_build_version";
    *(a1 + 80) = 16;
    if ((v9 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1);
  if (**(a1 + 40) <= 1u)
  {
    v10 = *(a1 + 88);
    *(a1 + 72) = "os_product_version";
    *(a1 + 80) = 18;
    if ((v10 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182B1E4(a1);
  v11 = *(a1 + 40);
  if (*v11 > 1u)
  {
    v14 = (a1 + 88);
    v12 = a1 + 72;
    v15 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v12 == *"version" && *(*v12 + 3) == *"sion")
    {
LABEL_29:
      if (*v11 <= 1u)
      {
        v20 = *v14;
        *v12 = "process_name";
        *v15 = 12;
        if ((v20 & 1) == 0)
        {
          *v14 = 1;
        }
      }

      sub_27182B1E4(a1);
      if (**(a1 + 40) <= 1u)
      {
        v21 = *v14;
        *v12 = "uuid";
        *v15 = 4;
        if ((v21 & 1) == 0)
        {
          *v14 = 1;
        }
      }

      sub_2714A1134();
    }
  }

  else
  {
    *(a1 + 72) = "process_id";
    v12 = a1 + 72;
    v14 = (a1 + 88);
    v13 = *(a1 + 88);
    *(a1 + 80) = 10;
    v15 = (a1 + 80);
    if ((v13 & 1) == 0)
    {
      *v14 = 1;
    }
  }

  v22 = *(a2 + 144);
  v17 = sub_2718289B0(a1);
  v18 = *v17;
  *v17 = 5;
  v19 = v17[1];
  v17[1] = v22;
  v22 = v19;
  sub_2715CC40C(&v22, v18);
  v11 = *v4;
  goto LABEL_29;
}

void sub_2714A0ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714A0EEC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_271127178((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_271127178((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_271127178((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  *(a1 + 144) = *(a2 + 36);
  if (*(a2 + 175) < 0)
  {
    sub_271127178((a1 + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 152) = v10;
  }

  v11 = a2[11];
  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  return a1;
}

void sub_2714A1048(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 96));
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 72));
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v1 + 48));
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2714A1134()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2714A13AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A1428(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v4 = 0;
  sub_2714A1564();
}

void sub_2714A1520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A1550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A176C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A17B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v25 = (v7 + 16);
      sub_2718460EC(&v25, 4u);
    }

    else
    {
      sub_27184636C(&v25, (v7 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v25 = (v6 + 16);
      sub_2718460EC(&v25, 5u);
    }

    else
    {
      sub_27184636C(&v25, (v6 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v25 = (v5 + 16);
      sub_2718460EC(&v25, 6u);
    }

    else
    {
      sub_27184636C(&v25, (v5 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = *(a2 + 24);
  v9 = *(v8[11] - 8);
  sub_2718404E0(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  v16 = *(a2 + 24);
  if (*(v16 + 40) == 1)
  {
    v25 = (v16 + 16);
    sub_2718460EC(&v25, 2u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_2714A1A44(a2, (v3 + 200), 2u);
  v17 = *(a2 + 24);
  v18 = *(v17[11] - 8);
  sub_2718404E0(v17 + 6, v17[2] - v18 - 9);
  v19 = v17[6];
  if (v19)
  {
    memmove((v17[3] + v18), v17[7], v19);
  }

  v17[6] = 0;
  v20 = v17[10];
  v21 = v17[11] - 8;
  v17[11] = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = v17[2];
    v23 = v17[3];
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(v17[3]);
      *(v17 + 40) = 0;
    }
  }
}

void sub_2714A1A44(uint64_t a1, __int128 *a2, unsigned int a3)
{
  sub_2714A0EEC(v5, a2);
  sub_2714A1B58(a1, v5, a3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A1B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A1B58(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v41 = (v6 + 16);
    sub_271847238(&v41, a2);
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_271847654((v6 + 8), a2);
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
LABEL_3:
      sub_271847654((v7 + 8), (a2 + 24));
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  v41 = (v7 + 16);
  sub_271847238(&v41, (a2 + 24));
  v8 = *(a1 + 24);
  if (*(v8 + 40) != 1)
  {
LABEL_4:
    sub_271847654((v8 + 8), (a2 + 48));
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v41 = (v8 + 16);
  sub_271847238(&v41, (a2 + 48));
  v9 = *(a1 + 24);
  if (*(v9 + 40) != 1)
  {
LABEL_5:
    sub_271847654((v9 + 8), (a2 + 72));
    v10 = *(a1 + 24);
    if (*(v10 + 40) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v41 = (v9 + 16);
  sub_271847238(&v41, (a2 + 72));
  v10 = *(a1 + 24);
  if (*(v10 + 40) != 1)
  {
LABEL_6:
    sub_271847654((v10 + 8), (a2 + 96));
    v11 = *(a1 + 24);
    if (*(v11 + 40) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v41 = (v10 + 16);
  sub_271847238(&v41, (a2 + 96));
  v11 = *(a1 + 24);
  if (*(v11 + 40) != 1)
  {
LABEL_7:
    sub_271847654((v11 + 8), (a2 + 120));
    v12 = *(a1 + 24);
    if (*(v12 + 40) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v41 = (v11 + 16);
  sub_271847238(&v41, (a2 + 120));
  v12 = *(a1 + 24);
  if (*(v12 + 40) != 1)
  {
LABEL_8:
    v13 = *(a2 + 144);
    sub_271845FEC((v12 + 8));
    v14 = *(a1 + 24);
    if (*(v14 + 40) != 1)
    {
      goto LABEL_9;
    }

LABEL_23:
    v41 = (v14 + 16);
    sub_271847238(&v41, (a2 + 152));
    v15 = *(a1 + 24);
    if (*(v15 + 40) != 1)
    {
      goto LABEL_10;
    }

LABEL_24:
    v41 = (v15 + 16);
    sub_2718454CC(&v41, (a2 + 176));
    sub_2718454CC(&v41, (a2 + 177));
    sub_2718454CC(&v41, (a2 + 178));
    sub_2718454CC(&v41, (a2 + 179));
    sub_2718454CC(&v41, (a2 + 180));
    sub_2718454CC(&v41, (a2 + 181));
    sub_2718454CC(&v41, (a2 + 182));
    sub_2718454CC(&v41, (a2 + 183));
    sub_2718454CC(&v41, (a2 + 184));
    sub_2718454CC(&v41, (a2 + 185));
    sub_2718454CC(&v41, (a2 + 186));
    sub_2718454CC(&v41, (a2 + 187));
    sub_2718454CC(&v41, (a2 + 188));
    sub_2718454CC(&v41, (a2 + 189));
    sub_2718454CC(&v41, (a2 + 190));
    sub_2718454CC(&v41, (a2 + 191));
    if (a3 < 2)
    {
      return;
    }

LABEL_25:
    v20 = *(a1 + 24);
    if (*(v20 + 40) == 1)
    {
      v41 = (v20 + 16);
      sub_2718460EC(&v41, 1u);
      sub_271840ADC(*(a1 + 24));
      v21 = *(a1 + 24);
      if (*(v21 + 40) != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_27184636C(&v41, (v20 + 8));
      sub_271840ADC(*(a1 + 24));
      v21 = *(a1 + 24);
      if (*(v21 + 40) != 1)
      {
LABEL_27:
        v22 = *(a2 + 192);
        sub_27184636C(&v41, (v21 + 8));
        v23 = *(a1 + 24);
        if (*(v23 + 40) != 1)
        {
          goto LABEL_28;
        }

        goto LABEL_35;
      }
    }

    v41 = (v21 + 16);
    sub_2718460EC(&v41, *(a2 + 192));
    v23 = *(a1 + 24);
    if (*(v23 + 40) != 1)
    {
LABEL_28:
      v24 = *(a2 + 196);
      sub_27184636C(&v41, (v23 + 8));
      v25 = *(a1 + 24);
      if (*(v25 + 40) != 1)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

LABEL_35:
    v41 = (v23 + 16);
    sub_2718460EC(&v41, *(a2 + 196));
    v25 = *(a1 + 24);
    if (*(v25 + 40) != 1)
    {
LABEL_29:
      v26 = *(a2 + 200);
      sub_27184636C(&v41, (v25 + 8));
      v27 = *(a1 + 24);
      if (*(v27 + 40) != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_37;
    }

LABEL_36:
    v41 = (v25 + 16);
    sub_2718460EC(&v41, *(a2 + 200));
    v27 = *(a1 + 24);
    if (*(v27 + 40) != 1)
    {
LABEL_30:
      v28 = *(a2 + 204);
      sub_27184636C(&v41, (v27 + 8));
      v29 = *(a1 + 24);
      if (*(v29 + 40) != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

LABEL_37:
    v41 = (v27 + 16);
    sub_2718460EC(&v41, *(a2 + 204));
    v29 = *(a1 + 24);
    if (*(v29 + 40) != 1)
    {
LABEL_31:
      v30 = *(a2 + 208);
      sub_27184636C(&v41, (v29 + 8));
      v31 = *(a1 + 24);
      if (*(v31 + 40) != 1)
      {
LABEL_32:
        v32 = *(a2 + 212);
        sub_27184636C(&v41, (v31 + 8));
LABEL_40:
        v33 = *(a1 + 24);
        v34 = *(v33[11] - 8);
        sub_2718404E0(v33 + 6, v33[2] - v34 - 9);
        v35 = v33[6];
        if (v35)
        {
          memmove((v33[3] + v34), v33[7], v35);
        }

        v33[6] = 0;
        v36 = v33[10];
        v37 = v33[11] - 8;
        v33[11] = v37;
        if (v36 == v37)
        {
          v38 = *v33;
          v40 = v33[2];
          v39 = v33[3];
          std::ostream::write();
          if (*(v33 + 40) == 1)
          {
            free(v33[3]);
            *(v33 + 40) = 0;
          }
        }

        return;
      }

LABEL_39:
      v41 = (v31 + 16);
      sub_2718460EC(&v41, *(a2 + 212));
      goto LABEL_40;
    }

LABEL_38:
    v41 = (v29 + 16);
    sub_2718460EC(&v41, *(a2 + 208));
    v31 = *(a1 + 24);
    if (*(v31 + 40) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

LABEL_22:
  v41 = (v12 + 16);
  sub_271845BC4(&v41, *(a2 + 144));
  v14 = *(a1 + 24);
  if (*(v14 + 40) == 1)
  {
    goto LABEL_23;
  }

LABEL_9:
  sub_271847654((v14 + 8), (a2 + 152));
  v15 = *(a1 + 24);
  if (*(v15 + 40) == 1)
  {
    goto LABEL_24;
  }

LABEL_10:
  for (i = 0; i != 16; ++i)
  {
    while (1)
    {
      v18 = *(a2 + 176 + i);
      if ((v18 & 0x80000000) == 0)
      {
        break;
      }

      LOBYTE(v41) = -52;
      BYTE1(v41) = v18;
      v17 = *(v15 + 8);
      std::ostream::write();
      if (++i == 16)
      {
        goto LABEL_14;
      }
    }

    LOBYTE(v41) = *(a2 + 176 + i);
    v19 = *(v15 + 8);
    std::ostream::write();
  }

LABEL_14:
  if (a3 >= 2)
  {
    goto LABEL_25;
  }
}

void sub_2714A213C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16);
}

void sub_2714A2768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A277C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "user_given_name";
    *(a1 + 80) = 15;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1);
  if (**(a1 + 40) <= 1u)
  {
    v6 = *(a1 + 88);
    *(a1 + 72) = "product_name";
    *(a1 + 80) = 12;
    if ((v6 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1);
  if (**(a1 + 40) <= 1u)
  {
    v7 = *(a1 + 88);
    *(a1 + 72) = "type";
    *(a1 + 80) = 4;
    if ((v7 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1);
  if (**(a1 + 40) <= 1u)
  {
    v8 = *(a1 + 88);
    *(a1 + 72) = "serial_number";
    *(a1 + 80) = 13;
    if ((v8 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1);
  if (**(a1 + 40) <= 1u)
  {
    v9 = *(a1 + 88);
    *(a1 + 72) = "os_build_version";
    *(a1 + 80) = 16;
    if ((v9 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1);
  if (**(a1 + 40) <= 1u)
  {
    v10 = *(a1 + 88);
    *(a1 + 72) = "os_product_version";
    *(a1 + 80) = 18;
    if ((v10 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271829354(a1);
  v11 = *(a1 + 40);
  if (*v11 > 1u)
  {
    v14 = (a1 + 88);
    v12 = a1 + 72;
    v15 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v12 == *"version" && *(*v12 + 3) == *"sion")
    {
LABEL_29:
      if (*v11 <= 1u)
      {
        v20 = *v14;
        *v12 = "process_name";
        *v15 = 12;
        if ((v20 & 1) == 0)
        {
          *v14 = 1;
        }
      }

      sub_271829354(a1);
      if (**(a1 + 40) <= 1u)
      {
        v21 = *v14;
        *v12 = "uuid";
        *v15 = 4;
        if ((v21 & 1) == 0)
        {
          *v14 = 1;
        }
      }

      sub_2714A1134();
    }
  }

  else
  {
    *(a1 + 72) = "process_id";
    v12 = a1 + 72;
    v14 = (a1 + 88);
    v13 = *(a1 + 88);
    *(a1 + 80) = 10;
    v15 = (a1 + 80);
    if ((v13 & 1) == 0)
    {
      *v14 = 1;
    }
  }

  v22 = *(a2 + 144);
  v17 = sub_27182815C(a1);
  v18 = *v17;
  *v17 = 5;
  v19 = v17[1];
  v17[1] = v22;
  v22 = v19;
  sub_2715CA870(&v22, v18);
  v11 = *v4;
  goto LABEL_29;
}

void sub_2714A2C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A2C58(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v4 = 0;
  sub_2714A1564();
}

void sub_2714A2D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A2D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_2714A2D94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_2714A2FA8(a2, (v3 + 200), 2u);
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_2714A2FA8(uint64_t a1, __int128 *a2, unsigned int a3)
{
  sub_2714A0EEC(v5, a2);
  sub_2714A30BC(a1, v5, a3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A30A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

void sub_2714A30BC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_271839128(a1, a2);
  sub_271839128(a1, a2 + 24);
  sub_271839128(a1, a2 + 48);
  sub_271839128(a1, a2 + 72);
  sub_271839128(a1, a2 + 96);
  sub_271839128(a1, a2 + 120);
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v24 = *(a1 + 32);
    sub_271120E64(v6, &v24, 1);
  }

  MEMORY[0x2743BE7E0](*(a1 + 24), *(a2 + 144));
  ++*(a1 + 40);
  sub_271839128(a1, a2 + 152);
  sub_2718388F8(a1, (a2 + 176));
  sub_2718388F8(a1, (a2 + 177));
  sub_2718388F8(a1, (a2 + 178));
  sub_2718388F8(a1, (a2 + 179));
  sub_2718388F8(a1, (a2 + 180));
  sub_2718388F8(a1, (a2 + 181));
  sub_2718388F8(a1, (a2 + 182));
  sub_2718388F8(a1, (a2 + 183));
  sub_2718388F8(a1, (a2 + 184));
  sub_2718388F8(a1, (a2 + 185));
  sub_2718388F8(a1, (a2 + 186));
  sub_2718388F8(a1, (a2 + 187));
  sub_2718388F8(a1, (a2 + 188));
  sub_2718388F8(a1, (a2 + 189));
  sub_2718388F8(a1, (a2 + 190));
  sub_2718388F8(a1, (a2 + 191));
  if (a3 >= 2)
  {
    if (*(a1 + 40))
    {
      v7 = *(a1 + 24);
      v25 = *(a1 + 32);
      sub_271120E64(v7, &v25, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), 1);
    v8 = *(a1 + 40);
    *(a1 + 40) = v8 + 1;
    if (v8 != -1)
    {
      v9 = *(a1 + 24);
      v26 = *(a1 + 32);
      sub_271120E64(v9, &v26, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 192));
    v10 = *(a1 + 40);
    *(a1 + 40) = v10 + 1;
    if (v10 != -1)
    {
      v11 = *(a1 + 24);
      v27 = *(a1 + 32);
      sub_271120E64(v11, &v27, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 196));
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
    if (v12 != -1)
    {
      v13 = *(a1 + 24);
      v28 = *(a1 + 32);
      sub_271120E64(v13, &v28, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 200));
    v14 = *(a1 + 40);
    *(a1 + 40) = v14 + 1;
    if (v14 != -1)
    {
      v15 = *(a1 + 24);
      v29 = *(a1 + 32);
      sub_271120E64(v15, &v29, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 204));
    v16 = *(a1 + 40);
    *(a1 + 40) = v16 + 1;
    if (v16 != -1)
    {
      v17 = *(a1 + 24);
      v30 = *(a1 + 32);
      sub_271120E64(v17, &v30, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 208));
    v18 = *(a1 + 40);
    *(a1 + 40) = v18 + 1;
    if (v18 != -1)
    {
      v19 = *(a1 + 24);
      v31 = *(a1 + 32);
      sub_271120E64(v19, &v31, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), *(a2 + 212));
    v20 = *(a1 + 40);
    v21 = *(a1 + 34);
    *(a1 + 40) = v20 + 1;
    if (v20 != -1)
    {
      v22 = *(a1 + 24);
      v32 = *(a1 + 32);
      sub_271120E64(v22, &v32, 1);
    }

    v23 = *(a1 + 24);
    v33 = v21;
    sub_271120E64(v23, &v33, 1);
    ++*(a1 + 40);
  }
}

void sub_2714A33F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v12, 4uLL);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v12, 4uLL);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v12, 4uLL);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v12, 4uLL);
  v9 = __src;
  sub_2717312C0(a2);
  sub_2714A35A4(a2, (v3 + 200), v9);
  v10 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v10 + 10) = *(a2 + 32) - v10 - 18;
  *(a2 + 56) -= 8;
}

void sub_2714A35A4(uint64_t a1, __int128 *a2, unsigned int a3)
{
  sub_2714A0EEC(v5, a2);
  sub_2714A36B8(a1, v5, a3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A36A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

char *sub_2714A36B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  __src = v6;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v8, &v8[v9], v9);
  v10 = *(a2 + 47);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 32);
  }

  __src = v10;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = (a2 + 24);
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 47);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v12, &v12[v13], v13);
  v14 = *(a2 + 71);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 56);
  }

  __src = v14;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v15 = *(a2 + 71);
  if (v15 >= 0)
  {
    v16 = (a2 + 48);
  }

  else
  {
    v16 = *(a2 + 48);
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 71);
  }

  else
  {
    v17 = *(a2 + 56);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v16, &v16[v17], v17);
  v18 = *(a2 + 95);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 80);
  }

  __src = v18;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v19 = *(a2 + 95);
  if (v19 >= 0)
  {
    v20 = (a2 + 72);
  }

  else
  {
    v20 = *(a2 + 72);
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 95);
  }

  else
  {
    v21 = *(a2 + 80);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v20, &v20[v21], v21);
  v22 = *(a2 + 119);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 104);
  }

  __src = v22;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v23 = *(a2 + 119);
  if (v23 >= 0)
  {
    v24 = (a2 + 96);
  }

  else
  {
    v24 = *(a2 + 96);
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 119);
  }

  else
  {
    v25 = *(a2 + 104);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v24, &v24[v25], v25);
  v26 = *(a2 + 143);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a2 + 128);
  }

  __src = v26;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v27 = *(a2 + 143);
  if (v27 >= 0)
  {
    v28 = (a2 + 120);
  }

  else
  {
    v28 = *(a2 + 120);
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 143);
  }

  else
  {
    v29 = *(a2 + 128);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v28, &v28[v29], v29);
  sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 144), (a2 + 148), 4uLL);
  v30 = *(a2 + 175);
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a2 + 160);
  }

  __src = v30;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v31 = *(a2 + 175);
  if (v31 >= 0)
  {
    v32 = (a2 + 152);
  }

  else
  {
    v32 = *(a2 + 152);
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 175);
  }

  else
  {
    v33 = *(a2 + 160);
  }

  sub_27173318C(a1 + 24, *(a1 + 32), v32, &v32[v33], v33);
  result = sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 176), (a2 + 192), 0x10uLL);
  if (a3 >= 2)
  {
    LODWORD(__src) = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
    sub_2717312C0(a1);
    sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 192), (a2 + 196), 4uLL);
    sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 196), (a2 + 200), 4uLL);
    sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 200), (a2 + 204), 4uLL);
    sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 204), (a2 + 208), 4uLL);
    sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 208), (a2 + 212), 4uLL);
    result = sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 212), (a2 + 216), 4uLL);
    v35 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v35 + 10) = *(a1 + 32) - v35 - 18;
    *(a1 + 56) -= 8;
  }

  return result;
}

void sub_2714A3AAC(int *a1, __int128 *a2, unsigned int a3)
{
  sub_2714A0EEC(v5, a2);
  sub_2714A3BC0(a1, v5, a3);
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v5[0]);
    return;
  }

LABEL_14:
  operator delete(v7);
  if (v6 < 0)
  {
    goto LABEL_15;
  }
}

void sub_2714A3BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1E08(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2714A3BC0(int *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 144))(a1);
  (*(*a1 + 144))(a1, a2 + 24);
  (*(*a1 + 144))(a1, a2 + 48);
  (*(*a1 + 144))(a1, a2 + 72);
  (*(*a1 + 144))(a1, a2 + 96);
  (*(*a1 + 144))(a1, a2 + 120);
  (*(*a1 + 56))(a1, a2 + 144);
  (*(*a1 + 144))(a1, a2 + 152);
  if ((a1[3] & 2) != 0)
  {
    sub_2714A1134();
  }

  __p = (a2 + 176);
  result = sub_2714A3F68(a1, &__p);
  if (a3 >= 2)
  {
    v7 = a1[2];
    LODWORD(__p) = 1;
    (*(*a1 + 104))(a1, &__p);
    if (v7 < 1)
    {
      __p = "current";
      v9 = 7;
      v10 = a2 + 192;
      sub_2714A4254(a1, &__p);
      __p = "min";
      v9 = 3;
      v10 = a2 + 204;
      return sub_2714A4254(a1, &__p);
    }

    else
    {
      if (v7 == 2)
      {
        LODWORD(__p) = 1;
        (*(*a1 + 104))(a1, &__p);
      }

      (*(*a1 + 16))(a1);
      __p = "current";
      v9 = 7;
      v10 = a2 + 192;
      sub_2714A4254(a1, &__p);
      __p = "min";
      v9 = 3;
      v10 = a2 + 204;
      sub_2714A4254(a1, &__p);
      return (*(*a1 + 24))(a1);
    }
  }

  return result;
}

void sub_2714A3F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714A3F68(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 80))(a1, *a2);
  (*(*a1 + 80))(a1, v3 + 1);
  (*(*a1 + 80))(a1, v3 + 2);
  (*(*a1 + 80))(a1, v3 + 3);
  (*(*a1 + 80))(a1, v3 + 4);
  (*(*a1 + 80))(a1, v3 + 5);
  (*(*a1 + 80))(a1, v3 + 6);
  (*(*a1 + 80))(a1, v3 + 7);
  (*(*a1 + 80))(a1, v3 + 8);
  (*(*a1 + 80))(a1, v3 + 9);
  (*(*a1 + 80))(a1, v3 + 10);
  (*(*a1 + 80))(a1, v3 + 11);
  (*(*a1 + 80))(a1, v3 + 12);
  (*(*a1 + 80))(a1, v3 + 13);
  (*(*a1 + 80))(a1, v3 + 14);
  v4 = *(*a1 + 80);

  return v4(a1, v3 + 15);
}

_BYTE *sub_2714A4254(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((a1[12] & 2) != 0)
  {
    v5 = 0;
    sub_2714A1564();
  }

  (*(*a1 + 104))(a1, *(a2 + 16));
  (*(*a1 + 104))(a1, v3 + 4);
  (*(*a1 + 104))(a1, v3 + 8);
  return a1;
}

void sub_2714A43D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A43F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A4404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714A4418(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_2714A4AA0(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_2714A5BD0(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_2714A63C8(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_2714A7080(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_2714A7B1C(&v16, v14);
      }

      else
      {
        sub_2714A45E4(&v15, a1);
      }
    }
  }
}

_BYTE *sub_2714A45E4(uint64_t *a1, void **a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v25);
    sub_2713B2524(v37, v25);
    sub_2713E031C(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v25);
  sub_2713B2524(v37, v25);
  sub_2713E031C(v3 + 16, v37);
  if (v49 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v48;
      v7 = __p;
      if (v48 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v48 = v5;
      operator delete(v7);
    }
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v36 != 1)
  {
    goto LABEL_66;
  }

  v13 = v34;
  if (!v34)
  {
    goto LABEL_66;
  }

  v14 = v35;
  v15 = v34;
  if (v35 != v34)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v35 = v13;
  operator delete(v15);
LABEL_66:
  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v25[0] = a2[1];
  v20 = v25[0];
  v37[0] = 6;
  v19[13](a2, v37);
  if (v20 < 1)
  {
    if (v37[0] < 3)
    {
      sub_2713C66D4(v37, a2, v3 + 16, v37[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v37[0]);
    }
  }

  else
  {
    sub_2713C62C8(v25, a2, v3 + 16, v37[0]);
  }

  v21 = *a2;
  v25[0] = a2[1];
  v22 = v25[0];
  v37[0] = 2;
  v21[13](a2, v37);
  if (v22 < 1)
  {
    result = sub_2714A8668(a2, v3 + 200, v37[0]);
  }

  else
  {
    result = sub_2714A83BC(v25, a2, v3 + 200, v37[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2714A4AA0(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714A4F7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "user_given_name";
  *(a1 + 96) = 15;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v5, &v19);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v19;
  *(a2 + 16) = v20;
  v6 = *(a1 + 104);
  *(a1 + 88) = "product_name";
  *(a1 + 96) = 12;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v7, &v19);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = v19;
  *(a2 + 40) = v20;
  v8 = *(a1 + 104);
  *(a1 + 88) = "type";
  *(a1 + 96) = 4;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v9 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v9, &v19);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  v10 = *(a1 + 104);
  *(a1 + 88) = "serial_number";
  *(a1 + 96) = 13;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v11, &v19);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v19;
  *(a2 + 88) = v20;
  v12 = *(a1 + 104);
  *(a1 + 88) = "os_build_version";
  *(a1 + 96) = 16;
  if ((v12 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v13, &v19);
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  v14 = *(a1 + 104);
  *(a1 + 88) = "os_product_version";
  *(a1 + 96) = 18;
  if ((v14 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v15 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v15, &v19);
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  *(a2 + 120) = v19;
  *(a2 + 136) = v20;
  v16 = *(a1 + 104);
  *(a1 + 88) = "process_id";
  *(a1 + 96) = 10;
  if ((v16 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182EAD4(a1, (a2 + 144));
  v17 = *(a1 + 104);
  *(a1 + 88) = "process_name";
  *(a1 + 96) = 12;
  if ((v17 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v18 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D6E6C(v18, &v19);
  if (*(a2 + 175) < 0)
  {
    operator delete(*(a2 + 152));
  }

  *(a2 + 152) = v19;
  *(a2 + 168) = v20;
  *&v19 = "uuid";
  *(&v19 + 1) = 4;
  v20 = a2 + 176;
  sub_2714A5404(a1, &v19);
}
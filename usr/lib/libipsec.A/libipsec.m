char *ipsec_dump_policy1()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v42 = *MEMORY[0x29EDCA608];
  if (!v0)
  {
LABEL_48:
    v11 = 0;
    goto LABEL_49;
  }

  v3 = v0;
  if (*(v0 + 2) != 18)
  {
    v11 = 0;
    v33 = 12;
LABEL_40:
    __ipsec_errcode = v33;
    goto LABEL_49;
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = " ";
  }

  v5 = *(v0 + 6);
  if (v5 >= 3)
  {
    v11 = 0;
    v33 = 17;
    goto LABEL_40;
  }

  v6 = *(v0 + 4);
  if (v6 >= 6)
  {
    v11 = 0;
    v33 = 5;
    goto LABEL_40;
  }

  v7 = v2;
  v8 = strlen((&ipsp_dir_strs)[v5]);
  v9 = v8 + strlen((&ipsp_policy_strs)[v6]);
  v10 = malloc_type_malloc(v9 + 2, 0x94871C7AuLL);
  v11 = v10;
  if (!v10)
  {
    v33 = 21;
    goto LABEL_40;
  }

  v12 = (&ipsp_dir_strs)[*(v3 + 6)];
  snprintf(v10, v9 + 2, "%s %s", v12, (&ipsp_policy_strs)[v3[2]]);
  if (v3[2] == 2)
  {
    v13 = *v3;
    if (v13 >= 3)
    {
      v14 = 8 * *v3;
      v15 = 16;
      do
      {
        v15 += *(v3 + v15);
      }

      while (v15 < v14);
      if (v15 == v14)
      {
        v16 = 16;
        while (1)
        {
          v17 = v3 + v16;
          v18 = v14 - v16;
          v19 = *(v3 + v16);
          if (v18 < v19)
          {
            break;
          }

          v20 = *(v17 + 1);
          switch(v20)
          {
            case '2':
              v21 = "esp";
              break;
            case 'l':
              v21 = "ipcomp";
              break;
            case '3':
              v21 = "ah";
              break;
            default:
              goto LABEL_51;
          }

          v22 = v17[4];
          if (v22 > 2)
          {
            v37 = 8;
            goto LABEL_54;
          }

          v23 = (&off_29EF06830)[v22];
          __str[0] = 0;
          if (v19 >= 9)
          {
            v24 = v17[8];
            if (v24 + v17[v24 + 8] + 8 != v19 || !set_address(v41, (v17 + 8), v7) || !set_address(__s, &v17[v24 + 8], v7) || (v25 = strlen(v41), v25 + strlen(__s) - 2051 < 0xFFFFFFFFFFFFF7FBLL))
            {
              v37 = 6;
LABEL_54:
              __ipsec_errcode = v37;
              goto LABEL_47;
            }

            snprintf(__str, 0x804uLL, "%s-%s", v41, __s);
          }

          v26 = v17[5];
          if (v26 > 3)
          {
            v37 = 9;
            goto LABEL_54;
          }

          v27 = (&off_29EF06848)[v26];
          if (*(v17 + 3))
          {
            snprintf(v38, 0x400uLL, "%s/%s/%s/%s%c%u", v21);
          }

          else
          {
            snprintf(v38, 0x400uLL, "%s/%s/%s/%s");
          }

          v28 = strlen(v11);
          v29 = strlen(v4);
          v30 = v29 + v28 + strlen(v38) + 1;
          v31 = malloc_type_realloc(v11, v30, 0x100004077774924uLL);
          if (!v31)
          {
            v34 = 21;
            goto LABEL_46;
          }

          v32 = v31;
          snprintf(&v31[v28], v30 - v28, "%s%s", v4, v38);
          v16 += *(v3 + v16);
          v14 = 8 * *v3;
          v11 = v32;
          if (v16 >= v14)
          {
            goto LABEL_44;
          }
        }

LABEL_51:
        v37 = 7;
        goto LABEL_54;
      }

      goto LABEL_45;
    }

    if (v13 != 2)
    {
LABEL_45:
      v34 = 3;
LABEL_46:
      __ipsec_errcode = v34;
LABEL_47:
      free(v11);
      goto LABEL_48;
    }

    v32 = v11;
LABEL_44:
    __ipsec_errcode = 0;
    v11 = v32;
  }

  else
  {
    __ipsec_errcode = 0;
  }

LABEL_49:
  v35 = *MEMORY[0x29EDCA608];
  return v11;
}

char *set_address(char *a1, sockaddr *a2, int a3)
{
  v4 = a1;
  v9 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  if (getnameinfo(a2, a2->sa_len, v8, 0x401u, v7, 0x20u, 10))
  {
    v4 = 0;
  }

  else if (a3)
  {
    snprintf(v4, 0x401uLL, "%s[%s]");
  }

  else
  {
    snprintf(v4, 0x401uLL, "%s");
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

int ipsec_get_policylen(caddr_t a1)
{
  if (a1)
  {
    return 8 * *a1;
  }

  else
  {
    return -1;
  }
}

const char *ipsec_strerror(void)
{
  v0 = __ipsec_errcode;
  if (__ipsec_errcode >= 0x1F)
  {
    v0 = 30;
    __ipsec_errcode = 30;
  }

  return ipsec_errlist[v0];
}

uint64_t __ipsec_set_strerror(uint64_t result)
{
  __ipsec_errcode = 26;
  qword_2A145C718 = result;
  return result;
}

uint64_t __libipsecparse()
{
  v0 = 0u;
  v1 = v45;
  v2 = 200;
  v47 = *MEMORY[0x29EDCA608];
  v44 = 0uLL;
  __libipsecnerrs = 0;
  __libipsecchar = -2;
  v3 = 0x2A145C000;
  v4 = v46;
  v5 = v46;
  v6 = v45;
  while (1)
  {
    *v5 = v0;
    if (&v4[2 * v2 - 2] <= v5)
    {
      if (v2 >> 4 > 0x270 || ((2 * v2) >= 0x2710 ? (v2 = 10000) : (v2 *= 2), (v7 = malloc_type_malloc(18 * v2 + 15, 0x1000040BDFB0063uLL)) == 0))
      {
        v38 = 2;
        v39 = "memory exhausted";
LABEL_86:
        fprintf(*MEMORY[0x29EDCA610], "libipsec: %s while parsing %s\n", v39, __libipsectext);
        goto LABEL_87;
      }

      v8 = v7;
      v9 = ((v5 - v4) >> 1) + 1;
      memcpy(v7, v4, 2 * v9);
      memcpy(&v8[(2 * v2 + 15) & 0x7FFFFFFFFFFFFFF0], v1, 16 * v9);
      if (v4 != v46)
      {
        free(v4);
      }

      if (v2 <= v9)
      {
        v38 = 1;
        goto LABEL_88;
      }

      v5 = &v8[2 * v9 - 2];
      v6 = &v8[16 * v9 - 16 + ((2 * v2 + 15) & 0x7FFFFFFFFFFFFFF0)];
      v4 = v8;
      v1 = &v8[(2 * v2 + 15) & 0x7FFFFFFFFFFFFFF0];
      v3 = 0x2A145C000uLL;
    }

    if (((0xAE38802D57A2A30uLL >> v0) & 1) == 0)
    {
      v10 = yypact[v0];
      v11 = __libipsecchar;
      if (__libipsecchar == -2)
      {
        v11 = __libipseclex();
        __libipsecchar = v11;
      }

      if (v11 <= 0)
      {
        v12 = 0;
        __libipsecchar = 0;
      }

      else
      {
        v12 = v11 > 0x111 ? 2 : yytranslate[v11];
      }

      v13 = (v12 + v10);
      v3 = 0x2A145C000;
      if (v13 <= 0x30 && v12 == yycheck[v13])
      {
        break;
      }
    }

    if ((0x5187380000555CDuLL >> v0))
    {
LABEL_85:
      ++__libipsecnerrs;
      v38 = 1;
      v39 = "syntax error";
      goto LABEL_86;
    }

    v14 = yydefact[v0];
    v15 = yyr2[yydefact[v0]];
    v44 = *&v6[16 * (1 - v15)];
    switch(v14)
    {
      case 2u:
        p_dir = *(v6 - 4);
        p_type = *v6;
        goto LABEL_60;
      case 4u:
        p_dir = *(v6 - 12);
        p_type = *v6;
        v22 = malloc_type_malloc(*(v6 - 4) + 2, 0xC2ED66BFuLL);
        if (!v22)
        {
          goto LABEL_96;
        }

        v23 = v22;
        snprintf(v22, *(v6 - 4) + 2, "-%s", *(v6 - 1));
        *__error() = 0;
        p_priority_offset = atol(v23);
        v24 = v23;
        v3 = 0x2A145C000uLL;
        free(v24);
        if (*__error() || (LODWORD(v25) = p_priority_offset, p_priority_offset <= 0xFFFFFFFF7FFFFFFFLL))
        {
LABEL_95:
          v40 = 27;
          goto LABEL_101;
        }

LABEL_57:
        v21 = v25 ^ 0x80000000;
LABEL_58:
        p_priority = v21;
LABEL_61:
        if (init_x_policy())
        {
          goto LABEL_102;
        }

        goto LABEL_62;
      case 6u:
        p_dir = *(v6 - 16);
        p_type = *v6;
        *__error() = 0;
        *(v3 + 1952) = atol(*(v6 - 1));
        if (!*__error())
        {
          v25 = *(v3 + 1952);
          if (v25 < 0x80000000)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_95;
      case 8u:
        p_dir = *(v6 - 12);
        p_type = *v6;
        v21 = *(v6 - 4);
        goto LABEL_58;
      case 0xAu:
        p_dir = *(v6 - 20);
        p_type = *v6;
        *__error() = 0;
        *(v3 + 1952) = atol(*(v6 - 1));
        if (*__error())
        {
          goto LABEL_93;
        }

        v20 = *(v3 + 1952);
        if (v20 >= 1073741825)
        {
          goto LABEL_93;
        }

        v21 = *(v6 - 12) - v20;
        goto LABEL_58;
      case 0xCu:
        p_dir = *(v6 - 20);
        p_type = *v6;
        *__error() = 0;
        *(v3 + 1952) = atol(*(v6 - 1));
        if (*__error() || (v26 = *(v3 + 1952), v26 >= 0x40000000))
        {
LABEL_93:
          v40 = 28;
          goto LABEL_101;
        }

        v21 = *(v6 - 12) + v26;
        goto LABEL_58;
      case 0xEu:
        p_dir = *v6;
        p_type = 0;
LABEL_60:
        p_priority = 0;
        goto LABEL_61;
      case 0x10u:
        v43 = v1;
        if (p_type == 2)
        {
          if (!p_protocol)
          {
            v40 = 19;
            goto LABEL_101;
          }

          if ((p_mode - 3) < 0xFFFFFFFE)
          {
            v40 = 8;
            goto LABEL_101;
          }

          v29 = p_src;
          v30 = p_dst;
          if (__PAIR128__(p_dst, p_src) == 0)
          {
            if (p_mode == 1)
            {
              v29 = 0;
              v30 = 0;
              v31 = 0;
              __ipsec_errcode = 0;
              v32 = 8;
              goto LABEL_82;
            }

            v40 = 6;
LABEL_101:
            __ipsec_errcode = v40;
LABEL_102:
            v38 = 0xFFFFFFFFLL;
            goto LABEL_103;
          }

          if (*(p_src + 1) != *(p_dst + 1))
          {
            v40 = 24;
            goto LABEL_101;
          }

          __ipsec_errcode = 0;
        }

        else
        {
          v30 = p_dst;
          v29 = p_src;
          __ipsec_errcode = 0;
          if (!p_src)
          {
            v32 = 8;
            if (!p_dst)
            {
              goto LABEL_77;
            }

            goto LABEL_81;
          }
        }

        v32 = *v29 + 8;
        if (!v30)
        {
LABEL_77:
          v31 = 0;
          goto LABEL_82;
        }

LABEL_81:
        v31 = *v30;
LABEL_82:
        v33 = (v31 + v32);
        v34 = tlen + v33;
        tlen += v33;
        v35 = malloc_type_realloc(pbuf, v34, 0xBB77B7D3uLL);
        if (!v35)
        {
LABEL_96:
          v40 = 21;
          goto LABEL_101;
        }

        pbuf = v35;
        v36 = offset;
        v37 = &v35[offset];
        *v37 = v33;
        *(v37 + 1) = p_protocol;
        v37[4] = p_mode;
        v37[5] = p_level;
        *(v37 + 3) = p_reqid;
        offset = v36 + 8;
        set_sockaddr(v29);
        set_sockaddr(v30);
        __ipsec_errcode = 0;
        policy_parse_request_init();
        v3 = 0x2A145C000;
        v1 = v43;
LABEL_62:
        v5 -= 2 * v15;
        v6 = &v6[-16 * v15 + 16];
        *v6 = v44;
        v27 = yyr1[v14] - 19;
        v28 = *v5 + yypgoto[v27];
        if (v28 <= 0x30 && *v5 == yycheck[v28])
        {
          v0 = yytable[v28];
        }

        else
        {
          v0 = yydefgoto[v27];
        }

LABEL_66:
        v5 += 2;
        break;
      case 0x17u:
      case 0x18u:
        v40 = 25;
        goto LABEL_101;
      case 0x19u:
        p_protocol = *v6;
        goto LABEL_62;
      case 0x1Au:
        p_mode = *v6;
        goto LABEL_62;
      case 0x1Bu:
        p_level = *v6;
        p_reqid = 0;
        goto LABEL_62;
      case 0x1Cu:
        p_level = 3;
        p_reqid = atol(*(v6 + 1));
        goto LABEL_62;
      case 0x1Du:
        v16 = v6;
        v17 = 0;
        goto LABEL_38;
      case 0x1Eu:
        v18 = v6;
        v19 = 0;
        goto LABEL_44;
      case 0x1Fu:
        v16 = (v6 - 16);
        v17 = v6;
LABEL_38:
        p_src = parse_sockaddr(v16, v17);
        if (!p_src)
        {
          goto LABEL_102;
        }

        goto LABEL_62;
      case 0x20u:
        v18 = (v6 - 16);
        v19 = v6;
LABEL_44:
        p_dst = parse_sockaddr(v18, v19);
        if (!p_dst)
        {
          goto LABEL_102;
        }

        goto LABEL_62;
      case 0x21u:
        if (p_dir != 2)
        {
          goto LABEL_94;
        }

        goto LABEL_62;
      case 0x22u:
        if (p_dir == 1)
        {
          goto LABEL_62;
        }

LABEL_94:
        v40 = 17;
        goto LABEL_101;
      default:
        goto LABEL_62;
    }
  }

  if ((0x80F000000000uLL >> v13))
  {
    goto LABEL_85;
  }

  if (v13 != 4)
  {
    if (v11 >= 1)
    {
      __libipsecchar = -2;
    }

    v0 = yytable[v13];
    *(v6 + 1) = __libipseclval;
    v6 += 16;
    goto LABEL_66;
  }

  v38 = 0;
LABEL_87:
  v8 = v4;
LABEL_88:
  if (v8 != v46)
  {
    free(v8);
  }

LABEL_103:
  v41 = *MEMORY[0x29EDCA608];
  return v38;
}

uint64_t init_x_policy()
{
  if (pbuf)
  {
    free(pbuf);
    tlen = 0;
  }

  v0 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  pbuf = v0;
  if (v0)
  {
    tlen = 16;
    *v0 = 0;
    v0[1] = 0;
    *(v0 + 1) = 18;
    *(v0 + 2) = p_type;
    *(v0 + 6) = p_dir;
    v1 = p_priority;
    if (p_priority)
    {
      result = 0xFFFFFFFFLL;
      v1 = 29;
    }

    else
    {
      result = 0;
      offset = 16;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    v1 = 21;
  }

  __ipsec_errcode = v1;
  return result;
}

void policy_parse_request_init()
{
  p_protocol = 0;
  p_mode = 0;
  p_level = 0;
  p_reqid = 0;
  if (p_src)
  {
    free(p_src);
    p_src = 0;
  }

  if (p_dst)
  {
    free(p_dst);
    p_dst = 0;
  }
}

char *parse_sockaddr(const char **a1, const char **a2)
{
  v18 = 0;
  v4 = *a1;
  v5 = malloc_type_malloc(v4 + 1, 0x51C15423uLL);
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = *a2;
      v8 = malloc_type_malloc(v7 + 1, 0xC99FB54uLL);
      if (!v8)
      {
        free(v6);
        fprintf(*MEMORY[0x29EDCA610], "libipsec: %s while parsing %s\n", "malloc failed", __libipsectext);
        v16 = __error();
        v14 = strerror(*v16);
        goto LABEL_16;
      }

      v9 = v8;
      strlcpy(v6, a1[1], v4 + 1);
      strlcpy(v9, a2[1], v7 + 1);
    }

    else
    {
      strlcpy(v5, a1[1], v4 + 1);
      v9 = 0;
    }

    memset(&v19, 0, sizeof(v19));
    v19.ai_flags = 4;
    v19.ai_socktype = 2;
    v12 = getaddrinfo(v6, v9, &v19, &v18);
    free(v6);
    if (v9)
    {
      free(v9);
    }

    if (v12)
    {
      fprintf(*MEMORY[0x29EDCA610], "libipsec: %s while parsing %s\n", "invalid IP address", __libipsectext);
      v13 = v12;
LABEL_11:
      v14 = gai_strerror(v13);
LABEL_16:
      __ipsec_set_strerror(v14);
      return 0;
    }

    if (!v18->ai_addr)
    {
      fprintf(*MEMORY[0x29EDCA610], "libipsec: %s while parsing %s\n", "invalid IP address", __libipsectext);
      v13 = 0;
      goto LABEL_11;
    }

    v15 = malloc_type_malloc(v18->ai_addrlen, 0x30E339A3uLL);
    v6 = v15;
    if (v15)
    {
      memcpy(v15, v18->ai_addr, v18->ai_addrlen);
      freeaddrinfo(v18);
      __ipsec_errcode = 0;
    }

    else
    {
      __ipsec_errcode = 21;
      freeaddrinfo(v18);
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "libipsec: %s while parsing %s\n", "malloc failed", __libipsectext);
    v10 = __error();
    v11 = strerror(*v10);
    __ipsec_set_strerror(v11);
  }

  return v6;
}

caddr_t ipsec_set_policy(char *a1, int a2)
{
  pbuf = 0;
  tlen = 0;
  p_dir = 4;
  p_type = 0;
  policy_parse_request_init();
  __policy__strbuffer__init__(a1);
  LODWORD(a1) = __libipsecparse();
  __policy__strbuffer__free__();
  if (!a1)
  {
    v4 = 0;
    result = pbuf;
    *pbuf = tlen >> 3;
    goto LABEL_7;
  }

  if (pbuf)
  {
    free(pbuf);
  }

  result = 0;
  if (!__ipsec_errcode)
  {
    v4 = 2;
LABEL_7:
    __ipsec_errcode = v4;
  }

  return result;
}

unsigned __int8 *set_sockaddr(unsigned __int8 *__src)
{
  if (__src)
  {
    v1 = __src;
    v2 = offset;
    __src = memcpy((pbuf + offset), __src, *__src);
    offset = v2 + *v1;
  }

  __ipsec_errcode = 0;
  return __src;
}

uint64_t __libipseclex()
{
  v0 = 0x2A145C000uLL;
  v1 = 0x2A145C000uLL;
  v2 = 0x2A145C000uLL;
  if (yy_init == 1)
  {
    v3 = yy_c_buf_p;
  }

  else
  {
    yy_init = 1;
    if ((yy_start & 1) == 0)
    {
      yy_start = 1;
    }

    if (!__libipsecin)
    {
      __libipsecin = *MEMORY[0x29EDCA618];
    }

    if (!__libipsecout)
    {
      __libipsecout = *MEMORY[0x29EDCA620];
    }

    v4 = yy_buffer_stack;
    if (!yy_buffer_stack || (v5 = yy_buffer_stack_top, (buffer = *(yy_buffer_stack + 8 * yy_buffer_stack_top)) == 0))
    {
      __libipsecensure_buffer_stack();
      buffer = __libipsec_create_buffer(__libipsecin, 0x4000);
      v2 = 0x2A145C000uLL;
      v4 = yy_buffer_stack;
      v5 = yy_buffer_stack_top;
      *(yy_buffer_stack + 8 * yy_buffer_stack_top) = buffer;
    }

    yy_n_chars = *(buffer + 32);
    v3 = *(buffer + 16);
    yy_c_buf_p = v3;
    __libipsectext = v3;
    __libipsecin = **(v4 + 8 * v5);
    yy_hold_char = *v3;
  }

  v7 = 0x2A145C000uLL;
LABEL_14:
  *v3 = *(v0 + 2040);
  LODWORD(v8) = *(v1 + 2012);
  v9 = v3;
  v10 = v3;
  v11 = 0x2A145C000uLL;
  while (1)
  {
    do
    {
LABEL_15:
      v12 = yy_ec[*v9];
      if (yy_accept[v8])
      {
        *(v11 + 2044) = v8;
        *(v7 + 2048) = v9;
      }

      v13 = v8;
      v14 = yy_base[v8] + v12;
      if (v8 != yy_chk[v14])
      {
        do
        {
          v13 = yy_def[v13];
          if (v13 >= 129)
          {
            v12 = *(&yy_meta + v12);
          }

          v14 = yy_base[v13] + v12;
        }

        while (yy_chk[v14] != v13);
      }

      v8 = yy_nxt[v14];
      ++v9;
    }

    while (yy_base[v8] != 251);
LABEL_22:
    v60 = v10;
    while (2)
    {
      LOWORD(v15) = yy_accept[v8];
      if (!v15)
      {
        v9 = *(v7 + 2048);
        LOWORD(v15) = yy_accept[*(v11 + 2044)];
      }

      v15 = v15;
      __libipsectext = v10;
      __libipsecleng = &v9[-v10];
      *(v0 + 2040) = *v9;
      *v9 = 0;
      v3 = v9;
      v16 = 0x2A145C000uLL;
LABEL_26:
      *(v2 + 2032) = v3;
      switch(v15)
      {
        case 0:
          *v9 = *(v0 + 2040);
          v7 = 0x2A145C000uLL;
          v9 = yy_last_accepting_cpos;
          LODWORD(v8) = *(v11 + 2044);
          v10 = v60;
          continue;
        case 1:
        case 3:
          v50 = 1;
          goto LABEL_99;
        case 2:
          v50 = 2;
LABEL_99:
          LODWORD(__libipseclval) = v50;
          return 258;
        case 4:
        case 5:
          return 259;
        case 6:
          v54 = -1073741824;
          goto LABEL_123;
        case 7:
          v54 = 0x80000000;
          goto LABEL_123;
        case 8:
          v54 = 0x40000000;
LABEL_123:
          LODWORD(__libipseclval) = v54;
          return 261;
        case 9:
          return 260;
        case 10:
          LODWORD(__libipseclval) = strlen(__libipsectext);
          *(&__libipseclval + 1) = __libipsectext;
          return 262;
        case 11:
          LODWORD(__libipseclval) = 0;
          return 263;
        case 12:
          v52 = 5;
          goto LABEL_117;
        case 13:
          v52 = 1;
          goto LABEL_117;
        case 14:
          v52 = 2;
          goto LABEL_117;
        case 15:
          v52 = 4;
          goto LABEL_117;
        case 16:
          v52 = 3;
LABEL_117:
          LODWORD(__libipseclval) = v52;
          return 263;
        case 17:
          v55 = 50;
          goto LABEL_121;
        case 18:
          v55 = 51;
          goto LABEL_121;
        case 19:
          v55 = 108;
LABEL_121:
          LODWORD(__libipseclval) = v55;
          return 264;
        case 20:
          v53 = 1;
          goto LABEL_111;
        case 21:
          v53 = 2;
LABEL_111:
          LODWORD(__libipseclval) = v53;
          return 265;
        case 22:
          return 270;
        case 23:
          return 271;
        case 24:
          LODWORD(__libipseclval) = 0;
          return 266;
        case 25:
          v56 = 1;
          goto LABEL_130;
        case 26:
          v56 = 2;
          goto LABEL_130;
        case 27:
          LODWORD(__libipseclval) = strlen((__libipsectext + 7));
          *(&__libipseclval + 1) = __libipsectext + 7;
          return 267;
        case 28:
          v56 = 3;
LABEL_130:
          LODWORD(__libipseclval) = v56;
          return 266;
        case 29:
          return 272;
        case 30:
          LODWORD(__libipseclval) = strlen(__libipsectext);
          *(&__libipseclval + 1) = __libipsectext;
          return 268;
        case 31:
          return 273;
        case 32:
          *(&__libipseclval + 1) = __libipsectext + 1;
          LODWORD(__libipseclval) = strlen(__libipsectext) - 2;
          return 269;
        case 33:
        case 34:
          goto LABEL_92;
        case 35:
          fwrite(__libipsectext, __libipsecleng, 1uLL, __libipsecout);
          v2 = 0x2A145C000uLL;
          v3 = yy_c_buf_p;
LABEL_92:
          v1 = 0x2A145C000;
          v7 = 0x2A145C000;
          goto LABEL_14;
        case 36:
          v58 = __libipsectext;
          *v9 = *(v0 + 2040);
          v17 = yy_buffer_stack;
          v18 = yy_buffer_stack_top;
          v19 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
          if (*(v19 + 64))
          {
            v20 = *(v16 + 2056);
          }

          else
          {
            v20 = *(v19 + 32);
            *(v16 + 2056) = v20;
            *v19 = __libipsecin;
            v19 = *(v17 + 8 * v18);
            *(v19 + 64) = 1;
          }

          v21 = *(v2 + 2032);
          v22 = *(v19 + 8);
          if (v21 <= &v22[v20])
          {
            v9 = (__libipsectext + ~v58 + v9);
            *(v2 + 2032) = v9;
            LODWORD(v8) = yy_get_previous_state();
            v7 = 0x2A145C000uLL;
            v11 = 0x2A145C000uLL;
            if (yy_accept[v8])
            {
              yy_last_accepting_state = v8;
              yy_last_accepting_cpos = v9;
            }

            v46 = v8;
            v47 = yy_base[v8] + 1;
            v2 = 0x2A145C000uLL;
            if (v8 != yy_chk[v47])
            {
              do
              {
                v48 = yy_def[v46];
                v46 = v48;
                v47 = yy_base[v48] + 1;
              }

              while (v48 != yy_chk[v47]);
            }

            v10 = __libipsectext;
            if (v47)
            {
              v49 = yy_nxt[v47];
              if (v49 != 128)
              {
                LODWORD(v8) = v49;
                yy_c_buf_p = ++v9;
                goto LABEL_15;
              }
            }

            goto LABEL_22;
          }

          if (v21 > &v22[v20 + 1])
          {
            yy_fatal_error("fatal flex scanner internal error--end of buffer missed");
          }

          v3 = __libipsectext;
          if (!*(v19 + 60))
          {
            v15 = 37;
            v11 = 0x2A145C000;
            if (v21 - __libipsectext == 1)
            {
              goto LABEL_26;
            }

            goto LABEL_82;
          }

          v23 = ~__libipsectext + v21;
          if (v23 >= 1)
          {
            v24 = ~__libipsectext + v21;
            do
            {
              v25 = *v3++;
              *v22++ = v25;
              --v24;
            }

            while (v24);
            v19 = *(v17 + 8 * v18);
          }

          v59 = v23;
          if (*(v19 + 64) == 2)
          {
            *(v16 + 2056) = 0;
            v26 = 0x2A145C000;
            goto LABEL_39;
          }

          v29 = ~v23;
          v30 = *(v19 + 24);
          v31 = v30 + ~v23;
          v57 = v23;
          if (!v31)
          {
            do
            {
              if (!*(v19 + 40))
              {
                *(v19 + 8) = 0;
LABEL_134:
                yy_fatal_error("fatal error - scanner input buffer overflow");
              }

              v32 = *(v19 + 8);
              v33 = 2 * v30;
              *(v19 + 24) = v33;
              v34 = malloc_type_realloc(v32, v33 + 2, 0xB0692787uLL);
              *(v19 + 8) = v34;
              if (!v34)
              {
                goto LABEL_134;
              }

              v21 = v34 + v21 - v32;
              yy_c_buf_p = v21;
              v19 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
              v30 = *(v19 + 24);
              v31 = v30 + v29;
            }

            while (!(v30 + v29));
          }

          if (v31 >= 0x2000)
          {
            v35 = 0x2000;
          }

          else
          {
            v35 = v31;
          }

          v26 = 0x2A145C000uLL;
          if (*(v19 + 44))
          {
            v27 = 0;
            while (1)
            {
              v36 = getc(__libipsecin);
              if (v36 == -1 || v36 == 10)
              {
                break;
              }

              *(*(*(yy_buffer_stack + 8 * yy_buffer_stack_top) + 8) + v59 + v27++) = v36;
              if (v35 == v27)
              {
                v27 = v35;
                break;
              }
            }

            if (v36 == -1)
            {
              if (ferror(__libipsecin))
              {
LABEL_137:
                yy_fatal_error("input in flex scanner failed");
              }
            }

            else if (v36 == 10)
            {
              *(*(*(yy_buffer_stack + 8 * yy_buffer_stack_top) + 8) + v59 + v27++) = 10;
            }

            v16 = 0x2A145C000uLL;
            yy_n_chars = v27;
          }

          else
          {
            *__error() = 0;
            v38 = fread((*(*(yy_buffer_stack + 8 * yy_buffer_stack_top) + 8) + v57), 1uLL, v35, __libipsecin);
            v27 = v38;
            v16 = 0x2A145C000uLL;
            yy_n_chars = v38;
            if (!(v38 << 32))
            {
              while (ferror(__libipsecin))
              {
                if (*__error() != 4)
                {
                  goto LABEL_137;
                }

                *__error() = 0;
                clearerr(__libipsecin);
                v39 = fread((*(*(yy_buffer_stack + 8 * yy_buffer_stack_top) + 8) + v59), 1uLL, v35, __libipsecin);
                v27 = v39;
                v16 = 0x2A145C000uLL;
                yy_n_chars = v39;
                if (v39 << 32)
                {
                  goto LABEL_68;
                }
              }

              v17 = yy_buffer_stack;
              v18 = yy_buffer_stack_top;
              v19 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
              v2 = 0x2A145C000;
              v16 = 0x2A145C000;
              v23 = v57;
LABEL_39:
              *(v19 + 32) = 0;
              if (v23)
              {
                goto LABEL_40;
              }

              goto LABEL_71;
            }
          }

LABEL_68:
          v17 = yy_buffer_stack;
          v18 = yy_buffer_stack_top;
          v19 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
          *(v19 + 32) = v27;
          if (v27)
          {
            v28 = 0;
            v2 = 0x2A145C000;
            v23 = v57;
            goto LABEL_72;
          }

          v2 = 0x2A145C000;
          v23 = v57;
          if (v57)
          {
LABEL_40:
            v27 = 0;
            v28 = 2;
            *(v19 + 64) = 2;
            goto LABEL_72;
          }

LABEL_71:
          v40 = v23;
          __libipsecrestart(*(v26 + 1864));
          v23 = v40;
          v16 = 0x2A145C000uLL;
          v2 = 0x2A145C000uLL;
          v27 = yy_n_chars;
          v17 = yy_buffer_stack;
          v18 = yy_buffer_stack_top;
          v19 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
          v28 = 1;
LABEL_72:
          v41 = v27 + v23;
          if (v41 <= *(v19 + 24))
          {
            v45 = *(v19 + 8);
          }

          else
          {
            v42 = v41 + (v27 >> 1);
            v43 = malloc_type_realloc(*(v19 + 8), v42, 0xB0692787uLL);
            v17 = yy_buffer_stack;
            v18 = yy_buffer_stack_top;
            *(*(yy_buffer_stack + 8 * yy_buffer_stack_top) + 8) = v43;
            v44 = *(v17 + 8 * v18);
            v45 = *(v44 + 8);
            if (!v45)
            {
              yy_fatal_error("out of dynamic memory in yy_get_next_buffer()");
            }

            *(v44 + 24) = v42 - 2;
            v16 = 0x2A145C000uLL;
            v41 = yy_n_chars + v59;
            v2 = 0x2A145C000;
          }

          v11 = 0x2A145C000;
          *(v16 + 2056) = v41;
          *(v45 + v41) = 0;
          *(*(*(v17 + 8 * v18) + 8) + v41 + 1) = 0;
          v3 = *(*(v17 + 8 * v18) + 8);
          __libipsectext = v3;
          v15 = 37;
          v0 = 0x2A145C000;
          if (v28 == 1)
          {
            goto LABEL_26;
          }

          if (v28)
          {
            v22 = *(*(yy_buffer_stack + 8 * yy_buffer_stack_top) + 8);
            v20 = *(v16 + 2056);
LABEL_82:
            v9 = &v22[v20];
            *(v2 + 2032) = &v22[v20];
            LODWORD(v8) = yy_get_previous_state();
            v2 = 0x2A145C000;
            v10 = __libipsectext;
            v7 = 0x2A145C000;
            goto LABEL_22;
          }

          v9 = &v3[~v58 + v9];
          *(v2 + 2032) = v9;
          LODWORD(v8) = yy_get_previous_state();
          v2 = 0x2A145C000;
          v10 = __libipsectext;
          v7 = 0x2A145C000;
          break;
        case 37:
          return 0;
        default:
          yy_fatal_error("fatal flex scanner internal error--no action found");
      }

      break;
    }
  }
}

void *__libipsecensure_buffer_stack()
{
  result = yy_buffer_stack;
  if (yy_buffer_stack)
  {
    if (yy_buffer_stack_top >= (yy_buffer_stack_max - 1))
    {
      v1 = yy_buffer_stack_max + 8;
      result = malloc_type_realloc(yy_buffer_stack, 8 * (yy_buffer_stack_max + 8), 0xB0692787uLL);
      yy_buffer_stack = result;
      if (result)
      {
        v2 = &result[yy_buffer_stack_max];
        *v2 = 0u;
        v2[1] = 0u;
        v2[2] = 0u;
        v2[3] = 0u;
        yy_buffer_stack_max = v1;
        return result;
      }

LABEL_8:
      yy_fatal_error("out of dynamic memory in yyensure_buffer_stack()");
    }
  }

  else
  {
    result = malloc_type_malloc(8uLL, 0x8DDB1617uLL);
    yy_buffer_stack = result;
    if (!result)
    {
      goto LABEL_8;
    }

    *result = 0;
    yy_buffer_stack_max = 1;
    yy_buffer_stack_top = 0;
  }

  return result;
}

uint64_t __libipsec_create_buffer(FILE *a1, int a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0x8DDB1617uLL);
  if (!v4 || (v5 = v4, v4[6] = a2, v6 = malloc_type_malloc(a2 + 2, 0x8DDB1617uLL), (*(v5 + 8) = v6) == 0))
  {
    yy_fatal_error("out of dynamic memory in yy_create_buffer()");
  }

  *(v5 + 40) = 1;
  __libipsec_init_buffer(v5, a1);
  return v5;
}

uint64_t yy_get_previous_state()
{
  result = yy_start;
  v1 = __libipsectext;
  if (__libipsectext < yy_c_buf_p)
  {
    do
    {
      if (*v1)
      {
        v2 = yy_ec[*v1];
      }

      else
      {
        v2 = 1u;
      }

      if (yy_accept[result])
      {
        yy_last_accepting_state = result;
        yy_last_accepting_cpos = v1;
      }

      v3 = result;
      v4 = yy_base[result] + v2;
      if (result != yy_chk[v4])
      {
        do
        {
          v3 = yy_def[v3];
          if (v3 >= 129)
          {
            v2 = *(&yy_meta + v2);
          }

          v4 = yy_base[v3] + v2;
        }

        while (yy_chk[v4] != v3);
      }

      result = yy_nxt[v4];
      ++v1;
    }

    while (v1 != yy_c_buf_p);
  }

  return result;
}

int *__libipsecrestart(FILE *a1)
{
  if (!yy_buffer_stack || (buffer = *(yy_buffer_stack + 8 * yy_buffer_stack_top)) == 0)
  {
    __libipsecensure_buffer_stack();
    buffer = __libipsec_create_buffer(__libipsecin, 0x4000);
    *(yy_buffer_stack + 8 * yy_buffer_stack_top) = buffer;
  }

  result = __libipsec_init_buffer(buffer, a1);
  v4 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
  v5 = *(v4 + 32);
  yy_c_buf_p = *(v4 + 16);
  __libipsectext = yy_c_buf_p;
  v6 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
  yy_n_chars = v5;
  __libipsecin = *v6;
  yy_hold_char = *yy_c_buf_p;
  return result;
}

int *__libipsec_init_buffer(uint64_t a1, FILE *a2)
{
  v4 = *__error();
  __libipsec_flush_buffer(a1);
  *a1 = a2;
  *(a1 + 60) = 1;
  v5 = yy_buffer_stack;
  if (yy_buffer_stack)
  {
    v5 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
  }

  if (v5 != a1)
  {
    *(a1 + 52) = 1;
  }

  if (a2)
  {
    v6 = fileno(a2);
    v7 = isatty(v6) > 0;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 44) = v7;
  result = __error();
  *result = v4;
  return result;
}

void *__libipsec_switch_to_buffer(uint64_t a1)
{
  result = __libipsecensure_buffer_stack();
  v3 = yy_buffer_stack;
  if (yy_buffer_stack)
  {
    v4 = yy_buffer_stack_top;
    v5 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
    if (v5 == a1)
    {
      return result;
    }

    if (v5)
    {
      v6 = yy_c_buf_p;
      *yy_c_buf_p = yy_hold_char;
      *(*(v3 + 8 * v4) + 16) = v6;
      *(*(v3 + 8 * v4) + 32) = yy_n_chars;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v4 = yy_buffer_stack_top;
  }

  *(v3 + 8 * v4) = a1;
  yy_n_chars = *(a1 + 32);
  yy_c_buf_p = *(a1 + 16);
  __libipsectext = yy_c_buf_p;
  __libipsecin = **(v3 + 8 * v4);
  yy_hold_char = *yy_c_buf_p;
  return result;
}

void __libipsec_delete_buffer(void **a1)
{
  if (a1)
  {
    if (yy_buffer_stack)
    {
      v2 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
    }

    else
    {
      v2 = 0;
    }

    if (v2 == a1)
    {
      *(yy_buffer_stack + 8 * yy_buffer_stack_top) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t __libipsec_flush_buffer(uint64_t result)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    if (yy_buffer_stack)
    {
      v1 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
    }

    else
    {
      v1 = 0;
    }

    if (v1 == result)
    {
      v2 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
      yy_n_chars = *(v2 + 32);
      yy_c_buf_p = *(v2 + 16);
      __libipsectext = yy_c_buf_p;
      __libipsecin = **(yy_buffer_stack + 8 * yy_buffer_stack_top);
      yy_hold_char = *yy_c_buf_p;
    }
  }

  return result;
}

void *__libipsecpush_buffer_state(void *result)
{
  if (result)
  {
    v1 = result;
    result = __libipsecensure_buffer_stack();
    v2 = yy_buffer_stack;
    v3 = yy_buffer_stack_top;
    if (yy_buffer_stack)
    {
      if (*(yy_buffer_stack + 8 * yy_buffer_stack_top))
      {
        v4 = yy_c_buf_p;
        *yy_c_buf_p = yy_hold_char;
        *(*(v2 + 8 * v3) + 16) = v4;
        *(*(v2 + 8 * v3++) + 32) = yy_n_chars;
        yy_buffer_stack_top = v3;
      }
    }

    *(v2 + 8 * v3) = v1;
    v5 = v1[4];
    yy_c_buf_p = v1[2];
    __libipsectext = yy_c_buf_p;
    v6 = *(v2 + 8 * v3);
    yy_n_chars = v5;
    __libipsecin = *v6;
    yy_hold_char = *yy_c_buf_p;
  }

  return result;
}

void __libipsecpop_buffer_state()
{
  if (yy_buffer_stack)
  {
    v0 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
    if (v0)
    {
      __libipsec_delete_buffer(v0);
      v1 = yy_buffer_stack;
      v2 = yy_buffer_stack_top;
      *(yy_buffer_stack + 8 * yy_buffer_stack_top) = 0;
      if (v2)
      {
        v3 = v2 - 1;
        yy_buffer_stack_top = v3;
        v4 = *(v1 + 8 * v3);
        if (v4)
        {
          yy_n_chars = *(v4 + 32);
          yy_c_buf_p = *(v4 + 16);
          __libipsectext = yy_c_buf_p;
          __libipsecin = **(v1 + 8 * v3);
          yy_hold_char = *yy_c_buf_p;
        }
      }
    }
  }
}

char *__libipsec_scan_buffer(uint64_t a1, unint64_t a2)
{
  v2 = a2 - 2;
  if (a2 < 2 || *(a1 + v2) || *(a1 + a2 - 1))
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x48uLL, 0x8DDB1617uLL);
  if (!v6)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_buffer()");
  }

  v4 = v6;
  *(v6 + 6) = v2;
  *(v6 + 1) = a1;
  *(v6 + 2) = a1;
  *v6 = 0;
  *(v6 + 4) = v2;
  *(v6 + 5) = 0;
  *(v6 + 12) = 1;
  *(v6 + 60) = 0;
  __libipsec_switch_to_buffer(v6);
  return v4;
}

char *__libipsec_scan_string(char *a1)
{
  v2 = strlen(a1);

  return __libipsec_scan_bytes(a1, v2);
}

char *__libipsec_scan_bytes(char *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(a2 + 2, 0x8DDB1617uLL);
  if (!v4)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_bytes()");
  }

  if (a2)
  {
    v5 = v4;
    v6 = a2;
    do
    {
      v7 = *a1++;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  *&v4[a2] = 0;
  result = __libipsec_scan_buffer(v4, a2 + 2);
  if (!result)
  {
    yy_fatal_error("bad buffer in yy_scan_bytes()");
  }

  *(result + 10) = 1;
  return result;
}

uint64_t __libipseclex_destroy()
{
  for (i = yy_buffer_stack; yy_buffer_stack; i = yy_buffer_stack)
  {
    if (!i[yy_buffer_stack_top])
    {
      break;
    }

    __libipsec_delete_buffer(i[yy_buffer_stack_top]);
    *(yy_buffer_stack + 8 * yy_buffer_stack_top) = 0;
    __libipsecpop_buffer_state();
  }

  free(i);
  yy_buffer_stack = 0;
  yy_buffer_stack_top = 0;
  yy_buffer_stack_max = 0;
  yy_c_buf_p = 0;
  yy_init = 0;
  yy_start = 0;
  __libipsecin = 0;
  __libipsecout = 0;
  return 0;
}

void *__policy__strbuffer__init__(char *__s)
{
  if (yy_buffer_stack)
  {
    v2 = *(yy_buffer_stack + 8 * yy_buffer_stack_top);
    if (v2)
    {
      __libipsec_delete_buffer(v2);
    }
  }

  v3 = strlen(__s);
  v4 = __libipsec_scan_bytes(__s, v3);
  strbuffer = v4;

  return __libipsec_switch_to_buffer(v4);
}
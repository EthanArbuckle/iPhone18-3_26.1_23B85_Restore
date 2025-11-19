uint64_t cmark_utf8proc_is_space(unsigned int a1)
{
  result = 1;
  if (a1 > 0x20 || ((1 << a1) & 0x100003600) == 0)
  {
    v3 = a1 == 8287 || a1 == 12288;
    v4 = a1 == 8239 || v3;
    if (a1 - 0x2000 >= 0xB)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (a1 == 5760)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (a1 == 160)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

BOOL cmark_utf8proc_is_punctuation(int a1)
{
  if (a1 > 127)
  {
    result = 1;
    if (a1 <= 1416)
    {
      if (a1 > 902)
      {
        if ((a1 - 1370) < 6 || a1 == 903)
        {
          return result;
        }
      }

      else if ((a1 - 161) <= 0x1E && ((1 << (a1 + 95)) & 0x44600441) != 0 || a1 == 894)
      {
        return result;
      }
    }

    else if (a1 <= 1522)
    {
      if ((a1 - 1417) <= 0x3D && ((1 << (a1 + 119)) & 0x24A0000000000003) != 0)
      {
        return result;
      }
    }

    else if ((a1 - 1523) <= 0x2C && ((1 << (a1 + 13)) & 0x190006C00003) != 0 || (a1 - 1642) < 4 || a1 == 1748)
    {
      return result;
    }
  }

  else if (cmark_ispunct(a1))
  {
    return 1;
  }

  result = 1;
  if ((a1 - 2096) < 0xF || (a1 - 1792) < 0xE || (a1 - 2039) < 3)
  {
    return result;
  }

  if (a1 <= 2799)
  {
    if ((a1 - 2404) <= 0xC && ((1 << (a1 - 100)) & 0x1003) != 0 || a1 == 2142)
    {
      return result;
    }
  }

  else if ((a1 - 3663) <= 0xC && ((1 << (a1 - 79)) & 0x1801) != 0 || a1 == 2800 || a1 == 3572)
  {
    return result;
  }

  if (a1 == 3860 || (a1 - 3844) < 0xF)
  {
    return result;
  }

  if (a1 > 4169)
  {
    if ((a1 - 4170) < 6 || a1 == 4347)
    {
      return result;
    }
  }

  else if ((a1 - 4048) <= 0xA && ((1 << (a1 + 48)) & 0x61F) != 0 || (a1 - 3898) < 4 || a1 == 3973)
  {
    return result;
  }

  if ((a1 - 4960) < 9)
  {
    return result;
  }

  if (a1 > 5940)
  {
    if ((a1 - 6100) <= 6 && a1 != 6103 || (a1 - 5941) < 2)
    {
      return result;
    }
  }

  else if ((a1 - 5741) <= 0x2F && ((1 << (a1 - 109)) & 0xC00000000003) != 0 || (a1 - 5867) < 3 || a1 == 5120)
  {
    return result;
  }

  if ((a1 - 6144) >= 0xB && (a1 - 6468) >= 2 && (a1 - 6686) >= 2)
  {
    v3 = a1 & 0xFFFFFFFC;
    if ((a1 & 0xFFFFFFFC) != 0x1BFC)
    {
      if (a1 <= 7001)
      {
        if ((a1 - 6816) <= 0xD && a1 != 6823)
        {
          return result;
        }
      }

      else if ((a1 - 7002) < 7 || (a1 - 7227) < 5 || (a1 - 7294) < 2)
      {
        return result;
      }

      v4 = vdupq_n_s32(a1);
      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2985B99A0, vaddq_s32(v4, xmmword_2985B9990)))) & 1) == 0 && a1 != 7379 && (a1 & 0xFFFFFFF8) != 0x1CC0 && ((a1 - 8317) > 0x11 || ((1 << (a1 - 125)) & 0x30003) == 0) && v3 != 8968 && (a1 - 9001) >= 2 && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2985B99C0, vaddq_s32(v4, xmmword_2985B99B0)))) & 1) == 0 && v3 != 10712)
      {
        v5 = a1 & 0xFFFFFFFE;
        if ((a1 & 0xFFFFFFFE) != 0x29FC && ((a1 - 11513) > 6 || a1 == 11517) && a1 != 11632 && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2985B99E0, vaddq_s32(v4, xmmword_2985B99D0)))) & 1) == 0 && (a1 - 12308) >= 0xC)
        {
          if (a1 > 42508)
          {
            if ((a1 - 42509) < 3 || a1 == 42611)
            {
              return result;
            }

            v6 = 42622;
          }

          else if (a1 > 12538)
          {
            if ((a1 - 42238) < 2)
            {
              return result;
            }

            v6 = 12539;
          }

          else
          {
            if (a1 == 12336 || a1 == 12349)
            {
              return result;
            }

            v6 = 12448;
          }

          if (a1 != v6 && (a1 - 42738) >= 6 && v3 != 43124 && v5 != 43214 && (a1 - 43256) >= 3 && ((a1 - 43310) > 0x31 || ((1 << (a1 - 46)) & 0x2000000000003) == 0) && (a1 - 43457) >= 0xD && v5 != 43486 && (a1 - 65108) >= 0xE && (a1 - 65072) >= 0x23 && (a1 - 65040) >= 0xA && v5 != 64830 && a1 != 44011 && v5 != 43760 && v3 != 43612 && v5 != 43742 && ((a1 - 65281) > 9 || a1 == 65284) && ((a1 - 65123) > 8 || ((1 << (a1 - 99)) & 0x1A1) == 0) && v3 != 65292 && ((a1 - 65311) > 0x3E || ((1 << (a1 - 31)) & 0x5000000170000003) == 0) && (a1 - 65306) >= 2 && (a1 - 65375) >= 7)
          {
            if (a1 <= 66511)
            {
              if ((a1 - 65792) < 3)
              {
                return result;
              }

              v7 = 927;
            }

            else if (a1 <= 67670)
            {
              if (a1 == 66512)
              {
                return result;
              }

              v7 = 1391;
            }

            else
            {
              if (a1 == 67671 || a1 == 67871)
              {
                return result;
              }

              v7 = 2367;
            }

            if (a1 != (v7 | 0x10000) && (a1 - 68176) >= 9)
            {
              if (a1 > 68504)
              {
                if ((a1 - 69703) < 7 || (a1 - 68505) < 4 || (a1 - 69819) < 2)
                {
                  return result;
                }
              }

              else if ((a1 - 68336) < 7 || (a1 - 68409) < 7 || a1 == 68223)
              {
                return result;
              }

              if ((a1 - 69822) >= 4 && v3 != 69952 && v5 != 70004 && (a1 - 70200) >= 6 && ((a1 - 70085) > 8 || ((1 << (a1 + 59)) & 0x10F) == 0) && a1 != 70854 && (a1 - 71105) >= 9 && (a1 - 71233) >= 3)
              {
                if (a1 > 92916)
                {
                  if (((a1 - 92983) > 0xD || ((1 << (a1 - 55)) & 0x201F) == 0) && a1 != 92917)
                  {
                    return a1 == 113823;
                  }
                }

                else if ((a1 - 74864) >= 5 && (a1 - 92782) >= 2)
                {
                  return a1 == 113823;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t cmark_render_commonmark(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(v5, a1, a2, a3, outc, S_render_node);
}

uint64_t cmark_render_commonmark_with_mem(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(a4, a1, a2, a3, outc, S_render_node);
}

_DWORD *outc(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v18 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8);
  v10 = *(v9 + 20);
  if (v10 < 1)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = cmark_isdigit(*(*(v9 + 8) + v10 - 1));
    if (!a3)
    {
      goto LABEL_31;
    }
  }

  if (a4 > 127)
  {
    goto LABEL_31;
  }

  switch(a3)
  {
    case 3:
      if (((a4 - 60) > 0x24 || ((1 << (a4 - 60)) & 0x1000000005) == 0) && !cmark_isspace(a4) && ((a4 - 40) > 0x34 || ((1 << (a4 - 40)) & 0x10000000000003) == 0))
      {
        break;
      }

      if (cmark_isspace(a4))
      {
        snprintf(__str, 0x14uLL, "%%%2X", a4);
        result = cmark_strbuf_puts(*(a1 + 8), __str);
        v14 = *(a1 + 24) + 3;
        goto LABEL_35;
      }

      goto LABEL_29;
    case 2:
      if ((a4 - 34) <= 0x3E && ((1 << (a4 - 34)) & 0x4400000014000001) != 0)
      {
        goto LABEL_29;
      }

      break;
    case 1:
      if (a4 < 32)
      {
        goto LABEL_29;
      }

      v12 = (a4 - 33);
      if (v12 > 0x3F)
      {
        goto LABEL_28;
      }

      if (((1 << (a4 - 33)) & 0xDC00000028000205) != 0)
      {
        goto LABEL_29;
      }

      if (v12 == 5)
      {
        if (cmark_isalpha(a5))
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_28:
        if (a4 == 126 || a4 == 94 && a5 == 91)
        {
          goto LABEL_29;
        }
      }

      if (*(a1 + 41) == 1 && a4 <= 0x3D)
      {
        if (((1 << a4) & 0x2000280000000000) != 0)
        {
          if (v11)
          {
            if (a4 != 46)
            {
              break;
            }

LABEL_44:
            if (a5 && !cmark_isspace(a5))
            {
              break;
            }
          }

LABEL_29:
          if (cmark_ispunct(a4))
          {
            cmark_render_ascii(a1, "\");
            break;
          }

          snprintf(__str, 0x14uLL, "&#%d;", a4);
          cmark_strbuf_puts(*(a1 + 8), __str);
          result = strlen(__str);
          v14 = *(a1 + 24) + result;
LABEL_35:
          *(a1 + 24) = v14;
          v16 = *MEMORY[0x29EDCA608];
          return result;
        }

        if (((1 << a4) & 0x420000000000) != 0 && v11)
        {
          goto LABEL_44;
        }
      }

      break;
    default:
      break;
  }

LABEL_31:
  v15 = *MEMORY[0x29EDCA608];

  return cmark_render_code_point(a1, a4);
}

uint64_t S_render_node(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v110 = *MEMORY[0x29EDCA608];
  v108 = 0;
  v7 = *(a1 + 28);
  v8 = (a4 & 4) == 0;
  if (v7 < 1)
  {
    v8 = 0;
  }

  v9 = (a4 & 0x10) == 0 && v8;
  if (a3 == 2)
  {
    v10 = *(a2 + 40);
    if (v10 && *(v10 + 100) == 32772)
    {
      v11 = *(*(v10 + 40) + 165);
LABEL_16:
      *(a1 + 43) = v11;
    }
  }

  else if (*(a2 + 100) == 32771)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      if (*(v12 + 100) == 32772)
      {
        LOBYTE(v12) = *(*(v12 + 40) + 165);
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    v11 = v12 & 1;
    goto LABEL_16;
  }

  v13 = *(a2 + 112);
  if (v13)
  {
    v14 = *(v13 + 96);
    if (v14)
    {
      goto LABEL_173;
    }
  }

  v15 = *(a2 + 100);
  if (v15 <= 0xC000)
  {
    if (*(a2 + 100) > 0x8005u)
    {
      if (*(a2 + 100) > 0x8008u)
      {
        switch(v15)
        {
          case 0x8009u:
            if (a3 == 2)
            {
              heading_level = cmark_node_get_heading_level(a2);
              if (heading_level >= 1)
              {
                v44 = heading_level + 1;
                do
                {
                  (*(a1 + 72))(a1, a2, "#", 0, 0);
                  --v44;
                }

                while (v44 > 1);
              }

              (*(a1 + 72))(a1, a2, " ", 0, 0);
              *(a1 + 41) = 257;
              goto LABEL_174;
            }

            *(a1 + 42) = 0;
            break;
          case 0x800Au:
            (*(a1 + 64))(a1);
            (*(a1 + 72))(a1, a2, "-----", 0, 0);
            break;
          case 0x800Bu:
            if (a3 != 2)
            {
              cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - 4);
              goto LABEL_174;
            }

            ++*(a1 + 80);
            (*(a1 + 72))(a1, a2, "[^", 0, 0);
            v35 = (**a1)(*(a2 + 152) + 1, 1);
            memmove(v35, *(a2 + 144), *(a2 + 152));
            (*(a1 + 72))(a1, a2, v35, 0, 0);
            (*(*a1 + 16))(v35);
            (*(a1 + 72))(a1, a2, "]:\n", 0, 0);
            cmark_strbuf_puts(*(a1 + 16), "    ");
            v36 = 1;
            goto LABEL_175;
          default:
            goto LABEL_218;
        }
      }

      else if (v15 == 32774)
      {
        (*(a1 + 64))(a1);
        v41 = *(a1 + 72);
        literal = cmark_node_get_literal(a2);
        v41(a1, a2, literal, 0, 0);
      }

      else if (v15 == 32775)
      {
        (*(a1 + 64))(a1);
        v60 = *(a1 + 72);
        if (a3 == 2)
        {
          v61 = cmark_node_get_on_enter(a2);
        }

        else
        {
          v61 = cmark_node_get_on_exit(a2);
        }

        v60(a1, a2, v61, 0, 0);
      }

      else if (a3 == 2)
      {
        goto LABEL_174;
      }

LABEL_165:
      (*(a1 + 64))(a1);
      goto LABEL_174;
    }

    if (*(a2 + 100) <= 0x8002u)
    {
      if (v15 == 32769)
      {
        goto LABEL_174;
      }

      if (v15 != 32770)
      {
        goto LABEL_218;
      }

      if (a3 == 2)
      {
        (*(a1 + 72))(a1, a2, "> ", 0, 0);
        v36 = 1;
        *(a1 + 41) = 1;
        cmark_strbuf_puts(*(a1 + 16), "> ");
        goto LABEL_175;
      }

      v79 = *(a1 + 16);
      v80 = *(v79 + 20) - 2;
      goto LABEL_164;
    }

    if (v15 == 32771)
    {
      if (a3 == 2)
      {
        goto LABEL_174;
      }

      v39 = *(a2 + 24);
      if (!v39)
      {
        goto LABEL_174;
      }

      v40 = *(v39 + 100);
      if (v40 != 32773 && v40 != 32771)
      {
        goto LABEL_174;
      }

      (*(a1 + 56))(a1);
      (*(a1 + 72))(a1, a2, "<!-- end list -->", 0, 0);
      goto LABEL_165;
    }

    if (v15 == 32772)
    {
      if (cmark_node_get_list_type(*(a2 + 40)) == 1)
      {
        v59 = 4;
      }

      else
      {
        item_index = cmark_node_get_item_index(a2);
        list_delim = cmark_node_get_list_delim(*(a2 + 40));
        v76 = ".";
        if (list_delim == 2)
        {
          v76 = ")";
        }

        v77 = " ";
        if (item_index < 10)
        {
          v77 = "  ";
        }

        snprintf(__str, 0x14uLL, "%d%s%s", item_index, v76, v77);
        v59 = strlen(__str);
      }

      if (a3 != 2)
      {
        cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - v59);
        goto LABEL_159;
      }

      if (cmark_node_get_list_type(*(a2 + 40)) == 1)
      {
        v78 = "  - ";
      }

      else
      {
        v78 = __str;
      }

      (*(a1 + 72))(a1, a2, v78, 0, 0);
      v36 = 1;
      for (*(a1 + 41) = 1; v59; v36 = 1)
      {
        --v59;
        cmark_strbuf_putc(*(a1 + 16), 32);
      }

      goto LABEL_175;
    }

    if (!*(a2 + 32) && (v88 = *(a2 + 40)) != 0 && *(v88 + 100) == 32772)
    {
      v16 = 1;
    }

    else
    {
      (*(a1 + 64))(a1);
      v16 = 0;
    }

    fence_info = cmark_node_get_fence_info(a2);
    v18 = *fence_info;
    if (strchr(fence_info, 96))
    {
      v19 = 126;
    }

    else
    {
      v19 = 96;
    }

    LOBYTE(v108) = v19;
    v20 = cmark_node_get_literal(a2);
    v21 = strlen(v20);
    if (v18)
    {
      goto LABEL_52;
    }

    v22 = v21;
    if (v21 < 3 || cmark_isspace(*v20))
    {
      goto LABEL_52;
    }

    v93 = &v20[v22];
    if (cmark_isspace(*(v93 - 1)))
    {
      if (cmark_isspace(*(v93 - 2)))
      {
        v94 = 1;
      }

      else
      {
        v94 = v16;
      }

      if ((v94 & 1) == 0)
      {
        goto LABEL_217;
      }
    }

    else if ((v16 & 1) == 0)
    {
LABEL_217:
      (*(a1 + 72))(a1, a2, "    ", 0, 0);
      cmark_strbuf_puts(*(a1 + 16), "    ");
      v106 = *(a1 + 72);
      v107 = cmark_node_get_literal(a2);
      v106(a1, a2, v107, 0, 0);
      v79 = *(a1 + 16);
      v80 = *(v79 + 20) - 4;
LABEL_164:
      cmark_strbuf_truncate(v79, v80);
      goto LABEL_165;
    }

LABEL_52:
    v23 = strlen(v20);
    v24 = 0;
    v25 = 0;
    v26 = 1;
    if (v23 + 1 > 1)
    {
      v26 = v23 + 1;
    }

    do
    {
      v28 = *v20++;
      v27 = v28;
      if (v25 <= v24)
      {
        v29 = v24;
      }

      else
      {
        v29 = v25;
      }

      if (v27 == 96)
      {
        ++v25;
      }

      else
      {
        v25 = 0;
      }

      if (v27 != 96)
      {
        v24 = v29;
      }

      --v26;
    }

    while (v26);
    if (v24 <= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v24;
    }

    if (v24 <= 0x7FFFFFFE)
    {
      v31 = v30 + 1;
      do
      {
        (*(a1 + 72))(a1, a2, &v108, 0, 0);
        --v31;
      }

      while (v31);
    }

    (*(a1 + 72))(a1, a2, " ", 0, 0);
    (*(a1 + 72))(a1, a2, fence_info, 0, 0);
    (*(a1 + 56))(a1);
    v32 = *(a1 + 72);
    v33 = cmark_node_get_literal(a2);
    v32(a1, a2, v33, 0, 0);
    (*(a1 + 56))(a1);
    if (v24 <= 0x7FFFFFFE)
    {
      v34 = v30 + 1;
      do
      {
        (*(a1 + 72))(a1, a2, &v108, 0, 0);
        --v34;
      }

      while (v34);
    }

    goto LABEL_165;
  }

  if (*(a2 + 100) > 0xC006u)
  {
    if (*(a2 + 100) <= 0xC009u)
    {
      if (v15 == 49159)
      {
        v47 = *(a2 + 40);
        if (v47 && *(v47 + 100) == 49159 && !*(a2 + 24))
        {
          *(a2 + 32);
        }

        v14 = *(a1 + 72);
        goto LABEL_173;
      }

      if (v15 == 49160)
      {
        v62 = *(a2 + 40);
        if (v62 && *(v62 + 100) == 49160)
        {
          goto LABEL_174;
        }

        v14 = *(a1 + 72);
        goto LABEL_173;
      }

      if (*(a2 + 152))
      {
        if (_scan_at(_scan_scheme, (a2 + 144), 0))
        {
          if (*(a2 + 168) <= 0)
          {
            v95 = *(a2 + 48);
            if (v95)
            {
              cmark_consolidate_text_nodes(*(a2 + 48));
              v96 = *(a2 + 144);
              v97 = *(a2 + 152);
              v98 = strncmp(v96, "mailto:", 7uLL);
              v99 = v97 - 7;
              if (v98)
              {
                v99 = v97;
              }

              if (v99 == *(v95 + 152))
              {
                v100 = 7;
                if (v98)
                {
                  v100 = 0;
                }

                if (!strncmp(&v96[v100], *(v95 + 144), v99))
                {
                  if (a3 != 2)
                  {
                    goto LABEL_174;
                  }

                  (*(a1 + 72))(a1, a2, "<", 0, 0);
                  url = cmark_node_get_url(a2);
                  v102 = strncmp(url, "mailto:", 7uLL);
                  v103 = *(a1 + 72);
                  v104 = cmark_node_get_url(a2);
                  v105 = v104;
                  if (!v102)
                  {
                    v105 = v104 + 7;
                  }

                  v103(a1, a2, v105, 0, 0);
                  (*(a1 + 72))(a1, a2, ">", 0, 0);
                  v36 = 0;
                  goto LABEL_175;
                }
              }
            }
          }
        }
      }

      v14 = *(a1 + 72);
      if (a3 == 2)
      {
        goto LABEL_173;
      }

      (v14)(a1, a2, "](", 0, 0);
      v83 = *(a1 + 72);
      v84 = cmark_node_get_url(a2);
      v83(a1, a2, v84, 0, 3);
      title = cmark_node_get_title(a2);
      if (*title)
      {
        v73 = title;
        (*(a1 + 72))(a1, a2, " ", 0, 0);
LABEL_171:
        (*(a1 + 72))(a1, a2, v73, 0, 2);
        (*(a1 + 72))(a1, a2, "", 0, 0);
      }

LABEL_172:
      v14 = *(a1 + 72);
      goto LABEL_173;
    }

    if (v15 == 49162)
    {
      v14 = *(a1 + 72);
      if (a3 == 2)
      {
        goto LABEL_173;
      }

      (v14)(a1, a2, "](", 0, 0);
      v70 = *(a1 + 72);
      v71 = cmark_node_get_url(a2);
      v70(a1, a2, v71, 0, 3);
      v72 = cmark_node_get_title(a2);
      if (!*v72)
      {
        goto LABEL_172;
      }

      v73 = v72;
      (*(a1 + 72))(a1, a2, " ", v9, 0);
      goto LABEL_171;
    }

    if (v15 != 49163)
    {
      if (v15 != 49164)
      {
        goto LABEL_218;
      }

      v14 = *(a1 + 72);
      if (a3 == 2)
      {
        goto LABEL_173;
      }

      (v14)(a1, a2, "](", 0, 0);
      v81 = *(a1 + 72);
      attributes = cmark_node_get_attributes(a2);
      v81(a1, a2, attributes, 0, 0);
      goto LABEL_172;
    }

    if (a3 == 2)
    {
      (*(a1 + 72))(a1, a2, "[^", 0, 0);
      v36 = 1;
      v65 = (**a1)(*(*(a2 + 136) + 152) + 1, 1);
      memmove(v65, *(*(a2 + 136) + 144), *(*(a2 + 136) + 152));
      (*(a1 + 72))(a1, a2, v65, 0, 0);
      (*(*a1 + 16))(v65);
      (*(a1 + 72))(a1, a2, "]", 0, 0);
      goto LABEL_175;
    }

LABEL_174:
    v36 = 1;
    goto LABEL_175;
  }

  if (*(a2 + 100) > 0xC003u)
  {
    if (v15 != 49156)
    {
      if (v15 == 49157)
      {
        v63 = *(a1 + 72);
        v64 = cmark_node_get_literal(a2);
        v63(a1, a2, v64, 0, 0);
      }

      else
      {
        v37 = *(a1 + 72);
        if (a3 == 2)
        {
          v38 = cmark_node_get_on_enter(a2);
        }

        else
        {
          v38 = cmark_node_get_on_exit(a2);
        }

        v37(a1, a2, v38, 0, 0);
      }

      goto LABEL_174;
    }

    v48 = cmark_node_get_literal(a2);
    v49 = strlen(v48);
    v50 = strlen(v48);
    v51 = 0;
    v52 = 0;
    if (v50 + 1 > 1)
    {
      v53 = v50 + 1;
    }

    else
    {
      v53 = 1;
    }

    v54 = 1;
    do
    {
      v55 = v48[v51];
      if ((v52 - 1) >= 0x1F)
      {
        v56 = 0;
      }

      else
      {
        v56 = 1 << v52;
      }

      v57 = v56 | v54;
      if (v55 == 96)
      {
        ++v52;
      }

      else
      {
        v52 = 0;
      }

      if (v55 != 96)
      {
        v54 = v57;
      }

      ++v51;
    }

    while (v53 != v51);
    if (v54)
    {
      v58 = 0;
      do
      {
        v66 = v58++;
        if (v66 > 0x1E)
        {
          break;
        }

        v67 = v54;
        v54 >>= 1;
      }

      while ((v67 & 2) != 0);
    }

    else
    {
      LODWORD(v58) = 0;
    }

    v69 = !v49 || (v68 = *v48, v68 == 96) || v68 == 32 || (v48[v49 - 1] & 0xBF) == 32;
    if (v58)
    {
      v90 = v58;
      do
      {
        --v90;
      }

      while (v90);
    }

    if (v69)
    {
      (*(a1 + 72))(a1, a2, " ", 0, 0);
    }

    v91 = *(a1 + 72);
    v92 = cmark_node_get_literal(a2);
    v91(a1, a2, v92, v9, 0);
    if (v69)
    {
      (*(a1 + 72))(a1, a2, " ", 0, 0);
    }

    if (!v58)
    {
      goto LABEL_174;
    }

    do
    {
      v36 = 1;
      LODWORD(v58) = v58 - 1;
    }

    while (v58);
  }

  else
  {
    if (v15 != 49153)
    {
      if (v15 != 49154)
      {
        if (v15 == 49155)
        {
          if ((a4 & 4) != 0)
          {
            goto LABEL_159;
          }

          goto LABEL_140;
        }

LABEL_218:
        S_render_node_cold_1();
      }

      if ((a4 & 4) != 0)
      {
LABEL_140:
        (*(a1 + 72))(a1, a2, "  ", 0, 0);
LABEL_159:
        (*(a1 + 56))(a1);
        goto LABEL_174;
      }

      if (!(v7 | a4 & 0x10) && (*(a1 + 42) & 1) == 0)
      {
        goto LABEL_159;
      }

      v14 = *(a1 + 72);
LABEL_173:
      v14();
      goto LABEL_174;
    }

    v45 = *(a1 + 72);
    v46 = cmark_node_get_literal(a2);
    v36 = 1;
    v45(a1, a2, v46, v9, 1);
  }

LABEL_175:
  v86 = *MEMORY[0x29EDCA608];
  return v36;
}

uint64_t cmark_markdown_to_html(_BYTE *a1, unint64_t a2, int a3)
{
  v4 = cmark_parse_document(a1, a2, a3);
  v5 = cmark_render_html(v4, a3, 0);
  cmark_node_free(v4);
  return v5;
}

uint64_t cmark_render_html_with_mem(uint64_t a1, int a2, void *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v107 = *MEMORY[0x29EDCA608];
  v102[0] = a4;
  v102[1] = &cmark_strbuf__initbuf;
  v102[2] = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = v102;
  v7 = cmark_iter_new(a1);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = a3[1];
      if (*(v9 + 144))
      {
        v8 = cmark_llist_append(a4, v8, v9);
        *(&v100 + 1) = v8;
      }

      a3 = *a3;
    }

    while (a3);
  }

  v10 = cmark_iter_next(v7);
  if (v10 != 1)
  {
    v14 = v10;
    v98 = a2;
    do
    {
      node = cmark_iter_get_node(v7);
      v16 = node;
      v104 = 3172412;
      strcpy(__s, "</h0");
      v17 = v99;
      if (v100 == node)
      {
        *&v100 = 0;
      }

      else if (v100)
      {
        v18 = *(node + 100) - 49153;
        if (v18 <= 4)
        {
          if (((1 << v18) & 0x19) == 0)
          {
            goto LABEL_133;
          }

LABEL_15:
          houdini_escape_html0(v99, *(v16 + 144), *(v16 + 152), 0);
          goto LABEL_210;
        }

        goto LABEL_210;
      }

      v19 = *(node + 112);
      if (v19)
      {
        v20 = *(v19 + 136);
        if (v20)
        {
          v20();
          goto LABEL_210;
        }
      }

      v21 = *(v16 + 100);
      if (v21 <= 0xC000)
      {
        if (*(v16 + 100) > 0x8005u)
        {
          if (*(v16 + 100) > 0x8008u)
          {
            if (v21 != 32777)
            {
              if (v21 == 32778)
              {
                v59 = v99[5];
                if (v59 && *(*(v99 + 1) + v59 - 1) != 10)
                {
                  cmark_strbuf_putc(v99, 10);
                }

                cmark_strbuf_puts(v17, "<hr");
                if ((a2 & 2) != 0)
                {
                  start_line = cmark_node_get_start_line(v16);
                  start_column = cmark_node_get_start_column(v16);
                  end_line = cmark_node_get_end_line(v16);
                  end_column = cmark_node_get_end_column(v16);
                  v94 = end_line;
                  a2 = v98;
                  snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", start_line, start_column, v94, end_column);
                  cmark_strbuf_puts(v17, __str);
                }

                v27 = v17;
                v28 = " />\n";
              }

              else
              {
                if (v21 != 32779)
                {
                  goto LABEL_222;
                }

                if (v14 == 2)
                {
                  v32 = v101;
                  if (!v101)
                  {
                    cmark_strbuf_puts(v99, "<section class=footnotes data-footnotes>\n<ol>\n");
                    v32 = v101;
                  }

                  LODWORD(v101) = v32 + 1;
                  cmark_strbuf_puts(v17, "<li id=fn-");
                  houdini_escape_href(v17, *(v16 + 144), *(v16 + 152));
                  v27 = v17;
                  v28 = ">\n";
                }

                else
                {
                  if (S_put_footnote_backref(&v99, v99, v16))
                  {
                    cmark_strbuf_putc(v17, 10);
                  }

LABEL_172:
                  v27 = v17;
                  v28 = "</li>\n";
                }
              }

              goto LABEL_209;
            }

            if (v14 != 2)
            {
              __s[3] = *(v16 + 144) + 48;
              v40 = __s;
LABEL_164:
              cmark_strbuf_puts(v17, v40);
              goto LABEL_165;
            }

            v47 = v99[5];
            if (v47 && *(*(v99 + 1) + v47 - 1) != 10)
            {
              cmark_strbuf_putc(v99, 10);
            }

            BYTE2(v104) = *(v16 + 144) + 48;
            v26 = &v104;
            v25 = v17;
            goto LABEL_113;
          }

          if (v21 != 32774)
          {
            if (v21 != 32775)
            {
              v22 = cmark_node_parent(v16);
              v23 = cmark_node_parent(v22);
              if (v23 && *(v23 + 100) == 32771 && (*(v23 + 165) & 1) != 0)
              {
                goto LABEL_210;
              }

              if (v14 != 2)
              {
                if (*(v22 + 100) == 32779 && !*(v16 + 24))
                {
                  cmark_strbuf_putc(v17, 32);
                  S_put_footnote_backref(&v99, v17, v22);
                }

                v27 = v17;
                v28 = "</p>\n";
                goto LABEL_209;
              }

              v24 = v17[5];
              if (v24 && *(*(v17 + 1) + v24 - 1) != 10)
              {
                cmark_strbuf_putc(v17, 10);
              }

              v25 = v17;
              v26 = "<p";
              goto LABEL_113;
            }

            v55 = v99[5];
            if (v55 && *(*(v99 + 1) + v55 - 1) != 10)
            {
              cmark_strbuf_putc(v99, 10);
            }

            v56 = 160;
            if (v14 == 2)
            {
              v56 = 144;
            }

            v57 = 168;
            if (v14 == 2)
            {
              v57 = 152;
            }

            cmark_strbuf_put(v17, *(v16 + v56), *(v16 + v57));
            v58 = v17[5];
            if (!v58)
            {
              goto LABEL_210;
            }

LABEL_220:
            if (*(*(v17 + 1) + v58 - 1) == 10)
            {
              goto LABEL_210;
            }

            goto LABEL_221;
          }

          v46 = v99[5];
          if (v46 && *(*(v99 + 1) + v46 - 1) != 10)
          {
            cmark_strbuf_putc(v99, 10);
          }

          if ((a2 & 0x20000) == 0)
          {
            cmark_strbuf_puts(v17, "<!-- raw HTML omitted -->");
            goto LABEL_219;
          }

          v65 = *(v16 + 144);
          v66 = *(v16 + 152);
          if (*(&v100 + 1))
          {
            if (v66)
            {
              v67 = v99;
              while (1)
              {
                v68 = memchr(v65, 60, v66);
                if (!v68)
                {
                  break;
                }

                v69 = v68;
                v70 = v68 - v65;
                if (v68 != v65)
                {
                  cmark_strbuf_put(v67, v65, v70);
                  v66 -= v70;
                  v65 = v69;
                }

                v71 = &v100 + 1;
                a2 = v98;
                while (1)
                {
                  v71 = *v71;
                  if (!v71)
                  {
                    break;
                  }

                  if (!(*(v71[1] + 144))())
                  {
                    cmark_strbuf_puts(v67, "&lt;");
                    goto LABEL_161;
                  }
                }

                cmark_strbuf_putc(v67, 60);
LABEL_161:
                ++v65;
                if (!--v66)
                {
                  goto LABEL_219;
                }
              }

              v87 = v67;
LABEL_218:
              cmark_strbuf_put(v87, v65, v66);
            }

LABEL_219:
            v58 = v17[5];
            if (!v58)
            {
              goto LABEL_210;
            }

            goto LABEL_220;
          }

          v87 = v17;
          goto LABEL_218;
        }

        if (*(v16 + 100) > 0x8002u)
        {
          if (v21 == 32771)
          {
            v41 = *(v16 + 144);
            if (v14 == 2)
            {
              v42 = *(v16 + 156);
              v43 = v99[5];
              if (v43 && *(*(v99 + 1) + v43 - 1) != 10)
              {
                cmark_strbuf_putc(v99, 10);
              }

              if (v41 == 1)
              {
                v44 = v17;
                v45 = "<ul";
              }

              else if (v42 == 1)
              {
                v44 = v17;
                v45 = "<ol";
              }

              else
              {
                snprintf(v105, 0x64uLL, "<ol start=%d", v42);
                v45 = v105;
                v44 = v17;
              }

              cmark_strbuf_puts(v44, v45);
              if ((a2 & 2) != 0)
              {
                v88 = cmark_node_get_start_line(v16);
                v89 = cmark_node_get_start_column(v16);
                v90 = cmark_node_get_end_line(v16);
                v91 = cmark_node_get_end_column(v16);
                v97 = v90;
                a2 = v98;
                snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v88, v89, v97, v91);
                cmark_strbuf_puts(v17, __str);
              }

              cmark_strbuf_puts(v17, ">\n");
              goto LABEL_210;
            }

            if (v41 == 1)
            {
              v28 = "</ul>\n";
            }

            else
            {
              v28 = "</ol>\n";
            }

            v27 = v99;
            goto LABEL_209;
          }

          if (v21 != 32772)
          {
            v29 = v99[5];
            if (v29 && *(*(v99 + 1) + v29 - 1) != 10)
            {
              cmark_strbuf_putc(v99, 10);
            }

            v30 = *(v16 + 152);
            if (v30)
            {
              if (v30 < 1)
              {
                LODWORD(v31) = 0;
              }

              else
              {
                v31 = 0;
                do
                {
                  if (cmark_isspace(*(*(v16 + 144) + v31)))
                  {
                    break;
                  }

                  ++v31;
                }

                while (v31 < *(v16 + 152));
              }

              cmark_strbuf_puts(v17, "<pre");
              if ((a2 & 2) != 0)
              {
                v83 = cmark_node_get_start_line(v16);
                v84 = cmark_node_get_start_column(v16);
                v85 = cmark_node_get_end_line(v16);
                v86 = cmark_node_get_end_column(v16);
                v96 = v85;
                a2 = v98;
                snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v83, v84, v96, v86);
                cmark_strbuf_puts(v17, __str);
              }

              if ((a2 & 0x800) != 0)
              {
                cmark_strbuf_puts(v17, " lang=");
                houdini_escape_html0(v17, *(v16 + 144), v31, 0);
                if ((a2 & 0x10000) != 0 && v31 < *(v16 + 152))
                {
                  cmark_strbuf_puts(v17, " data-meta=");
                  houdini_escape_html0(v17, *(v16 + 144) + v31 + 1, *(v16 + 152) + ~v31, 0);
                }

                v81 = v17;
                v82 = "><code>";
              }

              else
              {
                cmark_strbuf_puts(v17, "><code class=language-");
                houdini_escape_html0(v17, *(v16 + 144), v31, 0);
                if ((a2 & 0x10000) != 0 && v31 < *(v16 + 152))
                {
                  cmark_strbuf_puts(v17, " data-meta=");
                  houdini_escape_html0(v17, *(v16 + 144) + v31 + 1, *(v16 + 152) + ~v31, 0);
                }

                v81 = v17;
                v82 = ">";
              }
            }

            else
            {
              cmark_strbuf_puts(v17, "<pre");
              if ((a2 & 2) != 0)
              {
                v77 = cmark_node_get_start_line(v16);
                v78 = cmark_node_get_start_column(v16);
                v79 = cmark_node_get_end_line(v16);
                v80 = cmark_node_get_end_column(v16);
                v95 = v79;
                a2 = v98;
                snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v77, v78, v95, v80);
                cmark_strbuf_puts(v17, __str);
              }

              v81 = v17;
              v82 = "><code>";
            }

            cmark_strbuf_puts(v81, v82);
            houdini_escape_html0(v17, *(v16 + 160), *(v16 + 168), 0);
            v27 = v17;
            v28 = "</code></pre>\n";
            goto LABEL_209;
          }

          if (v14 != 2)
          {
            goto LABEL_172;
          }

          v48 = v99[5];
          if (v48 && *(*(v99 + 1) + v48 - 1) != 10)
          {
            cmark_strbuf_putc(v99, 10);
          }

          v25 = v17;
          v26 = "<li";
LABEL_113:
          cmark_strbuf_puts(v25, v26);
          if ((a2 & 2) != 0)
          {
            v49 = cmark_node_get_start_line(v16);
            v50 = cmark_node_get_start_column(v16);
            v51 = cmark_node_get_end_line(v16);
            v52 = cmark_node_get_end_column(v16);
            v93 = v51;
            a2 = v98;
            snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v49, v50, v93, v52);
            cmark_strbuf_puts(v17, __str);
          }

          v53 = v17;
          v54 = 62;
          goto LABEL_134;
        }

        if (v21 != 32769)
        {
          if (v21 != 32770)
          {
LABEL_222:
            cmark_render_html_with_mem_cold_1();
          }

          v35 = v99[5];
          if (v14 != 2)
          {
            if (v35 && *(*(v99 + 1) + v35 - 1) != 10)
            {
              cmark_strbuf_putc(v99, 10);
            }

            v27 = v17;
            v28 = "</blockquote>\n";
            goto LABEL_209;
          }

          if (v35 && *(*(v99 + 1) + v35 - 1) != 10)
          {
            cmark_strbuf_putc(v99, 10);
          }

          cmark_strbuf_puts(v17, "<blockquote");
          if ((a2 & 2) != 0)
          {
            v36 = cmark_node_get_start_line(v16);
            v37 = cmark_node_get_start_column(v16);
            v38 = cmark_node_get_end_line(v16);
            v39 = cmark_node_get_end_column(v16);
            v92 = v38;
            a2 = v98;
            snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v36, v37, v92, v39);
            v40 = __str;
            goto LABEL_164;
          }

LABEL_165:
          v27 = v17;
          v28 = ">\n";
LABEL_209:
          cmark_strbuf_puts(v27, v28);
        }
      }

      else
      {
        if (*(v16 + 100) <= 0xC006u)
        {
          if (*(v16 + 100) > 0xC003u)
          {
            if (v21 == 49156)
            {
              cmark_strbuf_puts(v99, "<code>");
              houdini_escape_html0(v17, *(v16 + 144), *(v16 + 152), 0);
              v27 = v17;
              v28 = "</code>";
            }

            else
            {
              if (v21 != 49157)
              {
                if (v14 == 2)
                {
                  v33 = *(v16 + 144);
                  v34 = *(v16 + 152);
                }

                else
                {
                  v33 = *(v16 + 160);
                  v34 = *(v16 + 168);
                }

                cmark_strbuf_put(v99, v33, v34);
                goto LABEL_210;
              }

              if ((a2 & 0x20000) != 0)
              {
                v72 = &v100 + 1;
                while (1)
                {
                  v72 = *v72;
                  if (!v72)
                  {
                    break;
                  }

                  v73 = *(v16 + 144);
                  v74 = *(v16 + 152);
                  if (!(*(v72[1] + 144))())
                  {
                    cmark_strbuf_puts(v17, "&lt;");
                    v75 = *(v16 + 152) - 1;
                    v76 = (*(v16 + 144) + 1);
                    goto LABEL_193;
                  }
                }

                v76 = *(v16 + 144);
                v75 = *(v16 + 152);
LABEL_193:
                cmark_strbuf_put(v17, v76, v75);
                goto LABEL_210;
              }

              v27 = v99;
              v28 = "<!-- raw HTML omitted -->";
            }

            goto LABEL_209;
          }

          if (v21 != 49153)
          {
            if (v21 != 49154)
            {
              if (v21 != 49155)
              {
                goto LABEL_222;
              }

LABEL_135:
              v27 = v99;
              v28 = "<br />\n";
              goto LABEL_209;
            }

            if ((a2 & 4) != 0)
            {
              goto LABEL_135;
            }

            if ((a2 & 0x10) != 0)
            {
LABEL_133:
              v53 = v99;
              v54 = 32;
LABEL_134:
              cmark_strbuf_putc(v53, v54);
              goto LABEL_210;
            }

LABEL_221:
            v53 = v17;
            v54 = 10;
            goto LABEL_134;
          }

          goto LABEL_15;
        }

        if (*(v16 + 100) <= 0xC009u)
        {
          if (v21 == 49159)
          {
            v27 = v99;
            if (v14 == 2)
            {
              v28 = "<em>";
            }

            else
            {
              v28 = "</em>";
            }
          }

          else if (v21 == 49160)
          {
            v64 = *(v16 + 40);
            if (v64 && *(v64 + 100) == 49160)
            {
              goto LABEL_210;
            }

            v27 = v99;
            if (v14 == 2)
            {
              v28 = "<strong>";
            }

            else
            {
              v28 = "</strong>";
            }
          }

          else if (v14 == 2)
          {
            cmark_strbuf_puts(v99, "<a href=");
            if ((a2 & 0x20000) != 0 || !_scan_at(_scan_dangerous_url, (v16 + 144), 0))
            {
              houdini_escape_href(v17, *(v16 + 144), *(v16 + 152));
            }

            if (*(v16 + 168))
            {
              cmark_strbuf_puts(v17, " title=");
              houdini_escape_html0(v17, *(v16 + 160), *(v16 + 168), 0);
            }

            v27 = v17;
            v28 = ">";
          }

          else
          {
            v27 = v99;
            v28 = "</a>";
          }

          goto LABEL_209;
        }

        if (v21 == 49162)
        {
          if (v14 == 2)
          {
            cmark_strbuf_puts(v99, "<img src=");
            if ((a2 & 0x20000) != 0 || !_scan_at(_scan_dangerous_url, (v16 + 144), 0))
            {
              houdini_escape_href(v17, *(v16 + 144), *(v16 + 152));
            }

            cmark_strbuf_puts(v17, " alt=");
            *&v100 = v16;
            goto LABEL_210;
          }

          if (*(v16 + 168))
          {
            cmark_strbuf_puts(v99, " title=");
            houdini_escape_html0(v17, *(v16 + 160), *(v16 + 168), 0);
          }

          v27 = v17;
          v28 = " />";
          goto LABEL_209;
        }

        if (v21 != 49163)
        {
          if (v21 != 49164)
          {
            goto LABEL_222;
          }

          goto LABEL_210;
        }

        if (v14 == 2)
        {
          cmark_strbuf_puts(v99, "<sup class=footnote-ref><a href=#fn-");
          houdini_escape_href(v17, *(*(v16 + 136) + 144), *(*(v16 + 136) + 152));
          cmark_strbuf_puts(v17, " id=fnref-");
          houdini_escape_href(v17, *(*(v16 + 136) + 144), *(*(v16 + 136) + 152));
          if (*(v16 + 128) >= 2)
          {
            snprintf(__str, 0x20uLL, "%d", *(v16 + 128));
            cmark_strbuf_puts(v17, "-");
            cmark_strbuf_puts(v17, __str);
          }

          cmark_strbuf_puts(v17, " data-footnote-ref>");
          houdini_escape_href(v17, *(v16 + 144), *(v16 + 152));
          v27 = v17;
          v28 = "</a></sup>";
          goto LABEL_209;
        }
      }

LABEL_210:
      v14 = cmark_iter_next(v7);
    }

    while (v14 != 1);
  }

  if (v101)
  {
    cmark_strbuf_puts(v102, "</ol>\n</section>\n");
  }

  v11 = cmark_strbuf_detach(v102);
  cmark_llist_free(a4, *(&v100 + 1));
  cmark_iter_free(v7);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

BOOL S_put_footnote_backref(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 24);
  v3 = *(a1 + 28);
  if (v3 < v4)
  {
    v11 = *(a1 + 28);
    *(a1 + 28) = v4;
    v10 = v4;
    snprintf(__str, 0x20uLL, "%d", v4);
    cmark_strbuf_puts(a2, "<a href=#fnref-");
    houdini_escape_href(a2, *(a3 + 144), *(a3 + 152));
    cmark_strbuf_puts(a2, " class=footnote-backref data-footnote-backref data-footnote-backref-idx=");
    cmark_strbuf_puts(a2, __str);
    cmark_strbuf_puts(a2, " aria-label=Back to reference ");
    cmark_strbuf_puts(a2, __str);
    cmark_strbuf_puts(a2, ">↩</a>");
    if (*(a3 + 128) >= 2)
    {
      v7 = 1;
      do
      {
        snprintf(__s, 0x20uLL, "%d", ++v7);
        cmark_strbuf_puts(a2, " <a href=#fnref-");
        houdini_escape_href(a2, *(a3 + 144), *(a3 + 152));
        cmark_strbuf_puts(a2, "-");
        cmark_strbuf_puts(a2, __s);
        cmark_strbuf_puts(a2, " class=footnote-backref data-footnote-backref data-footnote-backref-idx=");
        cmark_strbuf_puts(a2, __str);
        cmark_strbuf_puts(a2, "-");
        cmark_strbuf_puts(a2, __s);
        cmark_strbuf_puts(a2, " aria-label=Back to reference ");
        cmark_strbuf_puts(a2, __str);
        cmark_strbuf_puts(a2, "-");
        cmark_strbuf_puts(a2, __s);
        cmark_strbuf_puts(a2, ">↩<sup class=footnote-ref>");
        cmark_strbuf_puts(a2, __s);
        cmark_strbuf_puts(a2, "</sup></a>");
      }

      while (v7 < *(a3 + 128));
    }

    v3 = v11;
    v4 = v10;
  }

  result = v3 < v4;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cmark_gfm_extensions_set_tasklist_item_checked(uint64_t result, char a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 112) && (type_string = cmark_node_get_type_string(result), !strcmp(type_string, "tasklist")))
    {
      *(v2 + 166) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_get_tasklist_item_checked(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      type_string = cmark_node_get_type_string(a1);
      if (!strcmp(type_string, "tasklist"))
      {
        LOBYTE(v2) = *(a1 + 166);
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t matches(int a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 56) >= *(a5 + 152) + *(a5 + 148))
  {
    v5 = 1;
    cmark_parser_advance_offset(a2, __s, *(a5 + 152) + *(a5 + 148), 1);
  }

  else if (*(a2 + 60) == 1 && *(a5 + 48))
  {
    cmark_parser_advance_offset(a2, __s, *(a2 + 44) - *(a2 + 36), 0);
    return 1;
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t open_tasklist_item(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  if (cmark_node_get_type(a4) == 32772 && _ext_scan_at(_scan_tasklist, a5, a6, 0))
  {
    cmark_node_set_syntax_extension(a4, a1);
    cmark_parser_advance_offset(a3, a5, 3, 0);
    if (strstr(a5, "[x]"))
    {
      v11 = 1;
    }

    else
    {
      v11 = strstr(a5, "[X]") != 0;
    }

    *(a4 + 166) = v11;
  }

  return 0;
}

_DWORD *commonmark_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    (*(a2 + 56))(a2);
    if (*(a3 + 166))
    {
      v6 = "- [x] ";
    }

    else
    {
      v6 = "- [ ] ";
    }

    (*(a2 + 72))(a2, a3, v6, 0, 0);
    v7 = *(a2 + 16);

    return cmark_strbuf_puts(v7, "  ");
  }

  else
  {
    cmark_strbuf_truncate(*(a2 + 16), *(*(a2 + 16) + 20) - 2);
    v9 = *(a2 + 56);

    return v9(a2);
  }
}

_DWORD *html_render(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, char a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if (a4 == 2)
  {
    v9 = *(v5 + 20);
    if (v9 && *(*(v5 + 8) + v9 - 1) != 10)
    {
      cmark_strbuf_putc(v5, 10);
      v5 = *a2;
    }

    cmark_strbuf_puts(v5, "<li");
    v10 = *a2;
    if ((a5 & 2) != 0)
    {
      start_line = cmark_node_get_start_line(a3);
      start_column = cmark_node_get_start_column(a3);
      end_line = cmark_node_get_end_line(a3);
      end_column = cmark_node_get_end_column(a3);
      snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", start_line, start_column, end_line, end_column);
      cmark_strbuf_puts(v10, __str);
      v10 = *a2;
    }

    cmark_strbuf_putc(v10, 62);
    if (*(a3 + 166) == 1)
    {
      v15 = "<input type=checkbox checked= disabled= /> ";
    }

    else
    {
      v15 = "<input type=checkbox disabled= /> ";
    }

    result = cmark_strbuf_puts(*a2, v15);
    v18 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v16 = *MEMORY[0x29EDCA608];

    return cmark_strbuf_puts(v5, "</li>\n");
  }

  return result;
}

const char *xml_attr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 166))
  {
    return " completed=true";
  }

  else
  {
    return " completed=false";
  }
}

_DWORD *S_outc(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a3)
  {
    goto LABEL_20;
  }

  if (a4 > 8211)
  {
    if (a4 <= 8216)
    {
      if (a4 == 8212)
      {
        v4 = "\\[em]";
        return cmark_render_ascii(a1, v4);
      }

      if (a4 == 8216)
      {
        v4 = "\\[oq]";
        return cmark_render_ascii(a1, v4);
      }
    }

    else
    {
      switch(a4)
      {
        case 8217:
          v4 = "\\[cq]";
          return cmark_render_ascii(a1, v4);
        case 8220:
          v4 = "\\[lq]";
          return cmark_render_ascii(a1, v4);
        case 8221:
          v4 = "\\[rq]";
          return cmark_render_ascii(a1, v4);
      }
    }

    goto LABEL_20;
  }

  if (a4 <= 45)
  {
    if (a4 == 39)
    {
      if (*(a1 + 40) == 1)
      {
        v4 = "\\&'";
        return cmark_render_ascii(a1, v4);
      }

      v6 = 39;
      return cmark_render_code_point(a1, v6);
    }

    if (a4 == 45)
    {
      v4 = "\\-";
      return cmark_render_ascii(a1, v4);
    }

LABEL_20:
    v6 = a4;
    return cmark_render_code_point(a1, v6);
  }

  if (a4 != 46)
  {
    if (a4 == 92)
    {
      v4 = "\\e";
      return cmark_render_ascii(a1, v4);
    }

    if (a4 == 8211)
    {
      v4 = "\\[en]";
      return cmark_render_ascii(a1, v4);
    }

    goto LABEL_20;
  }

  if (*(a1 + 40) == 1)
  {
    v4 = "\\&.";
    return cmark_render_ascii(a1, v4);
  }

  v6 = 46;
  return cmark_render_code_point(a1, v6);
}

uint64_t S_render_node_0(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 28);
  v8 = v7 > 0 && (a4 & 0x10) == 0;
  v9 = *(a2 + 112);
  if (v9)
  {
    v10 = *(v9 + 128);
    if (v10)
    {
      goto LABEL_68;
    }
  }

  v11 = *(a2 + 100);
  if (v11 <= 0xC000)
  {
    if (*(a2 + 100) <= 0x8005u)
    {
      if (*(a2 + 100) <= 0x8002u)
      {
        if (v11 == 32769)
        {
          goto LABEL_77;
        }

        if (v11 != 32770)
        {
          goto LABEL_78;
        }

        (*(a1 + 56))(a1);
        v21 = *(a1 + 72);
        if (a3 == 2)
        {
          v22 = ".RS";
        }

        else
        {
          v22 = ".RE";
        }
      }

      else
      {
        if (v11 == 32771)
        {
          goto LABEL_77;
        }

        if (v11 != 32772)
        {
          (*(a1 + 56))(a1);
          (*(a1 + 72))(a1, a2, ".IP\n.nf\n\\f[C]\n", 0, 0);
          v15 = *(a1 + 72);
          literal = cmark_node_get_literal(a2);
          v15(a1, a2, literal, 0, 1);
          (*(a1 + 56))(a1);
          (*(a1 + 72))(a1, a2, "\\f[]\n.fi", 0, 0);
          goto LABEL_76;
        }

        (*(a1 + 56))(a1);
        if (a3 != 2)
        {
          goto LABEL_77;
        }

        (*(a1 + 72))(a1, a2, ".IP ", 0, 0);
        if (cmark_node_get_list_type(*(a2 + 40)) == 1)
        {
          (*(a1 + 72))(a1, a2, "\\[bu] 2", 0, 0);
          goto LABEL_76;
        }

        item_index = cmark_node_get_item_index(a2);
        snprintf(__str, 0x14uLL, "%d. 4", item_index);
        v21 = *(a1 + 72);
        v22 = __str;
      }

      v21(a1, a2, v22, 0, 0);
      goto LABEL_76;
    }

    if (*(a2 + 100) > 0x8008u)
    {
      switch(v11)
      {
        case 0x8009u:
          (*(a1 + 56))(a1);
          if (a3 == 2)
          {
            v23 = *(a1 + 72);
            if (cmark_node_get_heading_level(a2) == 1)
            {
              v24 = ".SH";
            }

            else
            {
              v24 = ".SS";
            }

            v23(a1, a2, v24, 0, 0);
            goto LABEL_76;
          }

          break;
        case 0x800Au:
          (*(a1 + 56))(a1);
          (*(a1 + 72))(a1, a2, ".PP\n  *  *  *  *  *", 0, 0);
          goto LABEL_76;
        case 0x800Bu:
          break;
        default:
LABEL_78:
          S_render_node_cold_1_0();
      }
    }

    else if (v11 != 32774)
    {
      if (v11 == 32775)
      {
        (*(a1 + 56))(a1);
        v27 = *(a1 + 72);
        if (a3 == 2)
        {
          v28 = cmark_node_get_on_enter(a2);
        }

        else
        {
          v28 = cmark_node_get_on_exit(a2);
        }

        v27(a1, a2, v28, 0, 0);
        goto LABEL_76;
      }

      if (a3 != 2)
      {
        goto LABEL_76;
      }

      v12 = *(a2 + 40);
      if (!v12 || *(v12 + 100) != 32772 || *(a2 + 32))
      {
        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, ".PP", 0, 0);
        goto LABEL_76;
      }
    }
  }

  else
  {
    if (*(a2 + 100) <= 0xC006u)
    {
      if (*(a2 + 100) <= 0xC003u)
      {
        if (v11 != 49153)
        {
          if (v11 != 49154)
          {
            if (v11 != 49155)
            {
              goto LABEL_78;
            }

            goto LABEL_64;
          }

          if ((a4 & 4) != 0)
          {
LABEL_64:
            (*(a1 + 72))(a1, a2, ".PD 0\n.P\n.PD", 0, 0);
            goto LABEL_76;
          }

          if (v7 | a4 & 0x10)
          {
            v10 = *(a1 + 72);
            goto LABEL_68;
          }

LABEL_76:
          (*(a1 + 56))(a1);
          goto LABEL_77;
        }

        goto LABEL_42;
      }

      if (v11 != 49156)
      {
        if (v11 != 49157)
        {
          v17 = *(a1 + 72);
          if (a3 == 2)
          {
            v18 = cmark_node_get_on_enter(a2);
          }

          else
          {
            v18 = cmark_node_get_on_exit(a2);
          }

          v17(a1, a2, v18, 0, 0);
        }

        goto LABEL_77;
      }

      (*(a1 + 72))(a1, a2, "\\f[C]", 0, 0);
      v25 = *(a1 + 72);
      v26 = cmark_node_get_literal(a2);
      v25(a1, a2, v26, v8, 1);
      v10 = *(a1 + 72);
LABEL_68:
      v10();
      goto LABEL_77;
    }

    if (*(a2 + 100) > 0xC009u)
    {
      if (v11 == 49162)
      {
        v10 = *(a1 + 72);
        goto LABEL_68;
      }

      if (v11 != 49163)
      {
        if (v11 != 49164)
        {
          goto LABEL_78;
        }

LABEL_42:
        v19 = *(a1 + 72);
        v20 = cmark_node_get_literal(a2);
        v19(a1, a2, v20, v8, 1);
      }
    }

    else
    {
      if (v11 == 49159)
      {
        v10 = *(a1 + 72);
        goto LABEL_68;
      }

      if (v11 != 49160)
      {
        if (a3 == 2)
        {
          goto LABEL_77;
        }

        (*(a1 + 72))(a1, a2, " (", 0, 0);
        v13 = *(a1 + 72);
        url = cmark_node_get_url(a2);
        v13(a1, a2, url, v8, 3);
        v10 = *(a1 + 72);
        goto LABEL_68;
      }

      v29 = *(a2 + 40);
      if (!v29 || *(v29 + 100) != 49160)
      {
        v10 = *(a1 + 72);
        goto LABEL_68;
      }
    }
  }

LABEL_77:
  v31 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t cmark_syntax_extension_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 && *(a2 + 48))
  {
    v4(a1);
  }

  cmark_llist_free(a1, *(a2 + 32));
  (*(a1 + 16))(*(a2 + 40));
  v5 = *(a1 + 16);

  return v5(a2);
}

uint64_t cmark_syntax_extension_set_private(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 64) = a3;
  return result;
}

unint64_t check_domain(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 - 1;
  if ((a2 - 1) < 2)
  {
    v9 = 0;
    v11 = 1;
    goto LABEL_19;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = a2 - 2;
  v11 = 1;
  while (1)
  {
    if (*(a1 + v11) == 92 && v11 < v10)
    {
      ++v11;
    }

    v13 = *(a1 + v11);
    if (v13 == 46)
    {
      ++v9;
      v8 = v7;
      v7 = 0;
      goto LABEL_14;
    }

    if (v13 != 95)
    {
      break;
    }

    ++v7;
LABEL_14:
    if (++v11 >= v4)
    {
      goto LABEL_15;
    }
  }

  if (is_valid_hostchar((a1 + v11), v5 - v11) || *(a1 + v11) == 45)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v8 | v7 && v9 < 0xB)
  {
    return 0;
  }

LABEL_19:
  if (v9)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  if (a3)
  {
    return v11;
  }

  else
  {
    return v15;
  }
}

unint64_t autolink_delim(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + v5);
      switch(v6)
      {
        case '(':
          ++v3;
          break;
        case ')':
          ++v4;
          break;
        case '<':
          if (!v5)
          {
            return v5;
          }

LABEL_11:
          while (2)
          {
            v7 = *(a1 - 1 + v5);
            v8 = (v7 - 33);
            if (v8 > 0x3E)
            {
              goto LABEL_23;
            }

            if (((1 << (v7 - 33)) & 0x4000000042002A43) != 0)
            {
              break;
            }

            if (v8 == 8)
            {
              if (v4 <= v3)
              {
                return v5;
              }

              --v4;
              break;
            }

            if (v8 == 26)
            {
              if (v5 == 2)
              {
                v9 = 0;
              }

              else
              {
                v9 = v5 - 2;
                do
                {
                  if (!cmark_isalpha(*(a1 + v9)))
                  {
                    break;
                  }

                  --v9;
                }

                while (v9);
              }

              if (v9 < v5 - 2 && *(a1 + v9) == 38)
              {
LABEL_14:
                v5 = v9;
                if (!v9)
                {
                  return v5;
                }

                continue;
              }
            }

            else
            {
LABEL_23:
              if (v7 != 126)
              {
                return v5;
              }
            }

            break;
          }

          v9 = v5 - 1;
          goto LABEL_14;
      }

      if (a2 == ++v5)
      {
        v5 = a2;
        goto LABEL_11;
      }
    }
  }

  return 0;
}

BOOL validate_protocol(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = strlen(a1);
  v9 = a4 - a3;
  if (v8 > v9)
  {
    return 0;
  }

  v10 = v8;
  if (memcmp((a2 - a3 - v8), a1, v8))
  {
    return 0;
  }

  if (v10 == v9)
  {
    return 1;
  }

  return !cmark_isalnum(*(a2 + ~v10 - a3));
}

uint64_t cmark_release_plugins()
{
  if (syntax_extensions)
  {
    result = cmark_llist_free_full(&CMARK_DEFAULT_MEM_ALLOCATOR, syntax_extensions, cmark_syntax_extension_free);
    syntax_extensions = 0;
  }

  return result;
}

void *cmark_list_syntax_extensions(uint64_t (**a1)(uint64_t, uint64_t))
{
  v1 = syntax_extensions;
  if (!syntax_extensions)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 = cmark_llist_append(a1, v3, v1[1]);
    v1 = *v1;
  }

  while (v1);
  return v3;
}

_DWORD *cmark_render_ascii(uint64_t a1, char *a2)
{
  v3 = *(a1 + 8);
  v4 = v3[5];
  result = cmark_strbuf_puts(v3, a2);
  *(a1 + 24) += *(*(a1 + 8) + 20) - v4;
  return result;
}

_DWORD *cmark_render_code_point(uint64_t a1, unsigned int a2)
{
  result = cmark_utf8proc_encode_char(a2, *(a1 + 8));
  ++*(a1 + 24);
  return result;
}

uint64_t cmark_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v37[0] = a1;
  v37[1] = &cmark_strbuf__initbuf;
  v37[2] = 0;
  v36[0] = a1;
  v36[1] = &cmark_strbuf__initbuf;
  v36[2] = 0;
  v11 = cmark_iter_new(a2);
  v30 = 257;
  v35 = 0;
  v12 = v36;
  v24 = a1;
  v25 = v36;
  v26 = v37;
  v27 = 0;
  v28 = a4;
  v29 = 0;
  v31 = a5;
  v32 = S_cr;
  v33 = S_blankline;
  v34 = S_out;
  v13 = cmark_iter_next(v11);
  if (v13 != 1)
  {
    v14 = v13;
    while (1)
    {
      node = cmark_iter_get_node(v11);
      v16 = node;
      v17 = *(node + 112);
      if (v17)
      {
        goto LABEL_6;
      }

      v18 = *(node + 40);
      if (v18)
      {
        break;
      }

LABEL_7:
      if (*(node + 100) == 32772)
      {
        v19 = *(node + 32);
        if (v19)
        {
          list_start = cmark_node_get_item_index(v19) + 1;
        }

        else
        {
          list_start = cmark_node_get_list_start(*(v16 + 40));
        }

        cmark_node_set_item_index(v16, list_start);
      }

      if (!a6(&v24, v16, v14, a3))
      {
        cmark_iter_reset(v11, v16, 3);
      }

      v14 = cmark_iter_next(v11);
      if (v14 == 1)
      {
        v12 = v25;
        goto LABEL_16;
      }
    }

    v17 = *(v18 + 120);
LABEL_6:
    *(node + 120) = v17;
    goto LABEL_7;
  }

LABEL_16:
  v21 = *(v12 + 5);
  if (!v21 || *(v12[1] + v21 - 1) != 10)
  {
    cmark_strbuf_putc(v12, 10);
    v12 = v25;
  }

  v22 = cmark_strbuf_detach(v12);
  cmark_iter_free(v11);
  cmark_strbuf_free(v26);
  cmark_strbuf_free(v25);
  return v22;
}

uint64_t S_cr(uint64_t result)
{
  if (*(result + 32) <= 0)
  {
    *(result + 32) = 1;
  }

  return result;
}

uint64_t S_blankline(uint64_t result)
{
  if (*(result + 32) <= 1)
  {
    *(result + 32) = 2;
  }

  return result;
}

uint64_t S_out(uint64_t a1, uint64_t a2, char *__s, int a4, uint64_t a5)
{
  v7 = __s;
  result = strlen(__s);
  v11 = result;
  v12 = *(a2 + 120);
  if (v12)
  {
    if (*(v12 + 176))
    {
      v13 = *(a2 + 120);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    v14 = *(a1 + 42);
  }

  else
  {
    v14 = 1;
  }

  v15 = *(*(a1 + 8) + 20);
  v42 = 0;
  v16 = *(a1 + 32);
  if (*(a1 + 43) != 1 || v16 < 2)
  {
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 1;
    *(a1 + 32) = 1;
  }

  v37 = v15 - 1;
  do
  {
    if ((v37 & 0x80000000) != 0 || (result = *(a1 + 8), *(*(result + 8) + v37) == 10))
    {
      --v37;
    }

    else
    {
      result = cmark_strbuf_putc(result, 10);
      v16 = *(a1 + 32);
      if (v16 >= 2)
      {
        result = cmark_strbuf_put(*(a1 + 8), *(*(a1 + 16) + 8), *(*(a1 + 16) + 20));
        v16 = *(a1 + 32);
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 40) = 257;
    *(a1 + 32) = --v16;
  }

  while (v16);
LABEL_15:
  if (v11 >= 1)
  {
    v18 = 0;
    v39 = v7;
    v40 = v7 + 1;
    v41 = v14;
    v38 = a2;
    while (1)
    {
      if (*(a1 + 40) == 1)
      {
        cmark_strbuf_put(*(a1 + 8), *(*(a1 + 16) + 8), *(*(a1 + 16) + 20));
        *(a1 + 24) = *(*(a1 + 16) + 20);
      }

      result = cmark_utf8proc_iterate(&v7[v18], v11 - v18, &v42);
      if (result == -1)
      {
        return result;
      }

      v19 = result;
      if (v13)
      {
        result = (*(v13 + 176))(v13, a2, v42);
        if (result)
        {
          result = cmark_strbuf_putc(*(a1 + 8), 92);
        }
      }

      v20 = v18;
      if (!((v42 != 32) | v14 & 1))
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v23 = *(a1 + 8);
          v24 = *(v23 + 20);
          cmark_strbuf_putc(v23, 32);
          ++*(a1 + 24);
          *(a1 + 40) = 0;
          --v18;
          v25 = &v40[v20];
          do
          {
            v27 = *v25++;
            v26 = v27;
            ++v18;
          }

          while (v27 == 32);
          result = cmark_isdigit(v26);
          if (!result)
          {
            *(a1 + 36) = v24;
          }

          v14 = v41;
        }

        goto LABEL_38;
      }

      if (a5)
      {
        break;
      }

      if (v42 != 10)
      {
        result = cmark_utf8proc_encode_char(v42, *(a1 + 8));
        v22 = 0;
        ++*(a1 + 24);
        goto LABEL_35;
      }

      result = cmark_strbuf_putc(*(a1 + 8), 10);
      *(a1 + 24) = 0;
      *(a1 + 40) = 257;
      *(a1 + 36) = 0;
LABEL_38:
      v28 = *(a1 + 28);
      if (v28 >= 1 && *(a1 + 24) > v28 && (*(a1 + 40) & 1) == 0)
      {
        v29 = *(a1 + 36);
        if (v29 >= 1)
        {
          v30 = a5;
          v31 = *(*(a1 + 8) + 8) + v29;
          v32 = strlen((v31 + 1));
          v33 = (**a1)(v32 + 1, 1);
          v34 = (v31 + 1);
          a5 = v30;
          v7 = v39;
          memcpy(v33, v34, v32 + 1);
          cmark_strbuf_truncate(*(a1 + 8), *(a1 + 36));
          cmark_strbuf_putc(*(a1 + 8), 10);
          cmark_strbuf_put(*(a1 + 8), *(*(a1 + 16) + 8), *(*(a1 + 16) + 20));
          cmark_strbuf_put(*(a1 + 8), v33, v32);
          v35 = *(*(a1 + 16) + 20) + v32;
          v14 = v41;
          *(a1 + 24) = v35;
          v36 = v33;
          a2 = v38;
          result = (*(*a1 + 16))(v36);
          *(a1 + 36) = 0;
          *(a1 + 40) = 0;
        }
      }

      v18 += v19;
      if (v18 >= v11)
      {
        return result;
      }
    }

    v21 = v7[v18 + v19];
    result = (*(a1 + 48))(a1, a2, a5);
    v22 = 0;
LABEL_35:
    *(a1 + 40) = 0;
    if (*(a1 + 41) == 1)
    {
      result = cmark_isdigit(v42);
      v22 = result == 1;
    }

    *(a1 + 41) = v22;
    goto LABEL_38;
  }

  return result;
}

uint64_t _ext_scan_at(uint64_t (*a1)(uint64_t), uint64_t a2, int a3, int a4)
{
  if (!a2 || a4 >= a3)
  {
    return 0;
  }

  v6 = *(a2 + a3);
  *(a2 + a3) = 0;
  result = a1(a2 + a4);
  *(a2 + a3) = v6;
  return result;
}

uint64_t _scan_table_start(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x20)
  {
    if (v1 > 0xA)
    {
      if (v1 >= 0xD && v1 != 32)
      {
        return 0;
      }
    }

    else if (v1 != 9)
    {
      return 0;
    }

LABEL_18:
    v2 = a1 + 1;
    v4 = a1[1];
    if ((_scan_table_start_yybm[v4] & 0x40) != 0)
    {
      do
      {
        v6 = *++v2;
        v5 = v6;
      }

      while ((_scan_table_start_yybm[v6] & 0x40) != 0);
      if (v5 != 58)
      {
        if (v5 == 45)
        {
          goto LABEL_38;
        }

        return 0;
      }
    }

    else
    {
      if (v4 == 45)
      {
        goto LABEL_38;
      }

      if (v4 != 58)
      {
        return 0;
      }
    }

    goto LABEL_37;
  }

  if (v1 <= 0x39)
  {
    if (v1 == 45)
    {
      v2 = a1 + 1;
      v3 = a1[1];
      if (_scan_table_start_yybm[a1[1]] < 0)
      {
        goto LABEL_38;
      }

      if (v3 > 0x20)
      {
        v7 = v3 == 58;
        if (v3 <= 0x3A)
        {
          goto LABEL_35;
        }

        goto LABEL_48;
      }

      if (v3 >= 9 && (v3 < 0xE || v3 == 32))
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v1 != 58)
  {
    if (v1 != 124)
    {
      return 0;
    }

    goto LABEL_18;
  }

  v2 = a1;
LABEL_37:
  v8 = *++v2;
  if ((_scan_table_start_yybm[v8] & 0x80000000) == 0)
  {
    return 0;
  }

  while (1)
  {
    do
    {
LABEL_38:
      v9 = *++v2;
      v3 = v9;
    }

    while (_scan_table_start_yybm[v9] < 0);
    if (v3 <= 0x1F)
    {
      break;
    }

    if (v3 <= 0x3A)
    {
      if (v3 == 32 || v3 == 58)
      {
        goto LABEL_61;
      }

      return 0;
    }

LABEL_48:
    v10 = v3 == 124;
LABEL_49:
    if (!v10)
    {
      return 0;
    }

    while (1)
    {
      v12 = *++v2;
      v11 = v12;
      if (_scan_table_start_yybm[v12] < 0)
      {
        break;
      }

      if (v11 > 0xD)
      {
        v10 = v11 == 32;
        if (v11 <= 0x20)
        {
          goto LABEL_49;
        }

        if (v11 == 58)
        {
          goto LABEL_37;
        }

        return 0;
      }

      v10 = v11 == 9;
      if (v11 <= 9)
      {
        goto LABEL_49;
      }

      if (v11 == 10)
      {
        return (v2 - a1 + 1);
      }

      if (v11 == 13)
      {
        goto LABEL_63;
      }
    }
  }

  if (v3 <= 0xA)
  {
    if (v3 < 9)
    {
      return 0;
    }

    if (v3 == 10)
    {
      return (v2 - a1 + 1);
    }

LABEL_61:
    while (1)
    {
      v13 = *++v2;
      v3 = v13;
LABEL_29:
      if (v3 > 0xD)
      {
        break;
      }

      v7 = v3 == 9;
      if (v3 <= 9)
      {
LABEL_35:
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == 10)
        {
          return (v2 - a1 + 1);
        }

        if (v3 == 13)
        {
          goto LABEL_63;
        }
      }
    }

    v7 = v3 == 32;
    if (v3 > 0x20)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v3 < 0xD)
  {
    goto LABEL_61;
  }

  if (v3 == 13)
  {
LABEL_63:
    v14 = v2[1];
    LODWORD(v2) = v2 + 1;
    if (v14 != 10)
    {
      return 0;
    }

    return (v2 - a1 + 1);
  }

  return 0;
}

uint64_t _scan_table_cell(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1;
  if ((_scan_table_cell_yybm[*a1] & 0x40) != 0)
  {
    goto LABEL_28;
  }

  if (v1 > 0xEC)
  {
    if (v1 > 0xF0)
    {
      if (v1 >= 0xF4)
      {
        if (v1 != 244)
        {
          return 0;
        }

        v3 = a1 + 1;
        if (a1[1] >= -112)
        {
          return 0;
        }
      }

      else
      {
        v3 = a1 + 1;
        if (a1[1] >= -64)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v1 == 237)
      {
        v4 = a1 + 1;
        if (a1[1] < -96)
        {
          goto LABEL_26;
        }

        return 0;
      }

      if (v1 != 240)
      {
        goto LABEL_20;
      }

      v3 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return 0;
      }
    }

    v5 = 1;
    LODWORD(v2) = v3;
    goto LABEL_64;
  }

  if (v1 <= 0xC1)
  {
    v2 = a1;
    if (v1 - 14 < 0x4F)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (v1 >= 0xE0)
  {
    if (v1 == 224)
    {
      v4 = a1 + 1;
      if ((a1[1] & 0xE0) != 0xA0)
      {
        return 0;
      }

LABEL_26:
      v5 = 1;
      LODWORD(v2) = v4;
      goto LABEL_65;
    }

LABEL_20:
    v4 = a1 + 1;
    if (a1[1] >= -64)
    {
      return 0;
    }

    goto LABEL_26;
  }

  v2 = a1 + 1;
  if (a1[1] >= -64)
  {
    return 0;
  }

  do
  {
    while (1)
    {
      do
      {
LABEL_28:
        v8 = *++v2;
        v7 = v8;
      }

      while ((_scan_table_cell_yybm[v8] & 0x40) != 0);
      if (v7 > 0xEC)
      {
        if (v7 <= 0xF0)
        {
          if (v7 == 237)
          {
            goto LABEL_44;
          }

          v5 = 0;
          v3 = v2;
          if (v7 != 240)
          {
            goto LABEL_64;
          }

LABEL_53:
          v5 = 0;
          v3 = v2 + 1;
          if (v2[1] - 144 >= 0x30)
          {
            return (v2 - a1);
          }

          goto LABEL_64;
        }

        goto LABEL_55;
      }

      if (v7 > 0xC1)
      {
        break;
      }

      if (v7 - 14 > 0x4E)
      {
        return (v2 - a1);
      }

      do
      {
LABEL_32:
        v9 = *++v2;
        v7 = v9;
      }

      while (_scan_table_cell_yybm[v9] < 0);
      if (v7 > 0xDF)
      {
        if (v7 <= 0xEF)
        {
          if (v7 == 224)
          {
            goto LABEL_62;
          }

          v5 = 0;
          v3 = v2;
          if (v7 == 237)
          {
LABEL_44:
            v5 = 0;
            v4 = v2 + 1;
            if (v2[1] >= -96)
            {
              return (v2 - a1);
            }

            goto LABEL_65;
          }

          goto LABEL_64;
        }

        if (v7 == 240)
        {
          goto LABEL_53;
        }

LABEL_55:
        if (v7 >= 0xF4)
        {
          if (v7 != 244)
          {
            return (v2 - a1);
          }

          v5 = 0;
          v3 = v2 + 1;
          if (v2[1] >= -112)
          {
            return (v2 - a1);
          }
        }

        else
        {
          v5 = 0;
          v3 = v2 + 1;
          if (v2[1] >= -64)
          {
            return (v2 - a1);
          }
        }

        goto LABEL_64;
      }

      if (v7 > 0xC)
      {
        if (v7 == 13)
        {
          return (v2 - a1);
        }

        if ((v7 & 0x80) != 0)
        {
          v5 = 0;
          v4 = v2;
          if (v7 < 0xC2)
          {
            return (v2 - a1);
          }

          goto LABEL_65;
        }
      }

      else if (v7 == 10)
      {
        return (v2 - a1);
      }
    }

    if (v7 < 0xE0)
    {
      v5 = 0;
      v4 = v2;
      goto LABEL_65;
    }

    v5 = 0;
    v3 = v2;
    if (v7 == 224)
    {
LABEL_62:
      v5 = 0;
      v4 = v2 + 1;
      if ((v2[1] & 0xE0) != 0xA0)
      {
        return (v2 - a1);
      }

      goto LABEL_65;
    }

LABEL_64:
    v10 = v3[1];
    v4 = v3 + 1;
    v11 = v2;
    if (v10 >= -64)
    {
      break;
    }

LABEL_65:
    v11 = v2;
    v2 = v4 + 1;
  }

  while (v4[1] <= -65);
  LODWORD(v2) = v11;
  if (v5)
  {
    return 0;
  }

  return (v2 - a1);
}

uint64_t _scan_table_cell_end(_BYTE *a1)
{
  if (*a1 != 124)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
  do
  {
    v4 = _scan_table_row_end_yybm[v3[result++]];
  }

  while (v4 < 0);
  return result;
}

uint64_t _scan_table_row_end(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xC)
  {
    if (v1 < 9)
    {
      return 0;
    }

    LODWORD(v2) = a1;
    if (v1 == 10)
    {
      return (v2 - a1 + 1);
    }

    goto LABEL_7;
  }

  if (v1 != 13)
  {
    if (v1 != 32)
    {
      return 0;
    }

LABEL_7:
    v2 = a1 + 1;
    v3 = a1[1];
    if (v3 < 9 || v3 >= 0xE && v3 != 32)
    {
      return 0;
    }

    if (_scan_table_row_end_yybm[a1[1]] < 0)
    {
      do
      {
        v4 = *++v2;
        v3 = v4;
      }

      while (_scan_table_row_end_yybm[v4] < 0);
      if (v3 < 9)
      {
        return 0;
      }
    }

    if (v3 < 0xB)
    {
      return (v2 - a1 + 1);
    }

    if (v3 > 0xD)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v2 = a1;
LABEL_17:
  v5 = v2[1];
  LODWORD(v2) = v2 + 1;
  if (v5 == 10)
  {
    return (v2 - a1 + 1);
  }

  return 0;
}

uint64_t _scan_tasklist(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x20)
  {
    if (v1 > 0x2C)
    {
      if (v1 != 45)
      {
        if (v1 - 48 >= 0xA)
        {
          return 0;
        }

        v3 = a1 + 1;
        v9 = a1[1];
        if (v9 <= 0x1F)
        {
          v10 = v9 == 9;
          if (v9 > 9)
          {
            if (v9 == 10)
            {
              return 0;
            }

            if (v9 < 0xD)
            {
              goto LABEL_70;
            }

LABEL_43:
            while (_scan_tasklist_yybm[v9] < 0)
            {
              v12 = *++v3;
              v9 = v12;
            }

            if (v9 <= 0xC1)
            {
              if (v9 <= 0xC)
              {
                if (v9 >= 9)
                {
                  if (v9 != 10)
                  {
                    goto LABEL_75;
                  }

                  return 0;
                }

                goto LABEL_70;
              }

              if (v9 != 32)
              {
                if ((v9 & 0x80) != 0)
                {
                  return 0;
                }

LABEL_70:
                v20 = *++v3;
                v19 = v20;
                if (v20 != 91)
                {
                  goto LABEL_76;
                }

                return 0;
              }

              while (1)
              {
LABEL_75:
                while (1)
                {
                  v23 = *++v3;
                  v19 = v23;
LABEL_76:
                  if (v19 > 0xC)
                  {
                    break;
                  }

                  if (v19 != 9 && v19 < 0xB)
                  {
                    return 0;
                  }
                }

                v8 = v19 == 32;
                if (v19 > 0x20)
                {
                  break;
                }

LABEL_83:
                if (!v8)
                {
                  return 0;
                }
              }

              if (v19 != 91)
              {
                return 0;
              }

              v25 = v3[1];
              if (v25 > 0x57)
              {
                if ((v25 & 0xFFFFFFDF) != 0x58)
                {
                  return 0;
                }
              }

              else if (v25 != 32)
              {
                return 0;
              }

              if (v3[2] == 93)
              {
                v26 = v3[3];
                if (v26 > 0xA)
                {
                  if (v26 >= 0xD && v26 != 32)
                  {
                    return 0;
                  }

LABEL_96:
                  v2 = (v3 - a1 + 4);
                  for (i = v3 + 4; ; ++i)
                  {
                    v28 = *i;
                    if (v28 > 0xA)
                    {
                      if (v28 >= 0xD && v28 != 32)
                      {
                        return v2;
                      }
                    }

                    else if (v28 != 9)
                    {
                      return v2;
                    }

                    v2 = (v2 + 1);
                  }
                }

                if (v26 == 9)
                {
                  goto LABEL_96;
                }
              }

              return 0;
            }

            if (v9 > 0xED)
            {
              if (v9 > 0xF0)
              {
                if (v9 >= 0xF4)
                {
                  if (v9 != 244)
                  {
                    return 0;
                  }

                  v16 = *++v3;
                  if (v16 >= -112)
                  {
                    return 0;
                  }
                }

                else
                {
                  v15 = *++v3;
                  if (v15 >= -64)
                  {
                    return 0;
                  }
                }
              }

              else if (v9 == 240)
              {
                v14 = *++v3;
                if ((v14 - 144) >= 0x30)
                {
                  return 0;
                }
              }
            }

            else
            {
              if (v9 < 0xE0)
              {
                goto LABEL_69;
              }

              if (v9 == 224)
              {
                v21 = *++v3;
                if ((v21 & 0xE0) != 0xA0)
                {
                  return 0;
                }

                goto LABEL_69;
              }

              if (v9 == 237)
              {
                v13 = *++v3;
                if (v13 >= -96)
                {
                  return 0;
                }

LABEL_69:
                v18 = *++v3;
                if (v18 < -64)
                {
                  goto LABEL_70;
                }

                return 0;
              }
            }

            v17 = *++v3;
            if (v17 >= -64)
            {
              return 0;
            }

            goto LABEL_69;
          }

LABEL_42:
          if (v10)
          {
            goto LABEL_70;
          }

          goto LABEL_43;
        }

        if ((v9 & 0x80) != 0)
        {
          if (v9 - 194 >= 0x33)
          {
            return 0;
          }

          goto LABEL_43;
        }

LABEL_41:
        v10 = v9 == 32;
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0;
      if (v1 < 0x2A || v1 == 44)
      {
        return v2;
      }
    }

    v3 = a1 + 1;
    v7 = a1[1];
    if (v7 <= 0xA)
    {
      v8 = v7 == 9;
      goto LABEL_83;
    }

    if (v7 >= 0xD)
    {
      v8 = v7 == 32;
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  if (v1 > 0xA)
  {
    if (v1 >= 0xD && v1 != 32)
    {
      return 0;
    }
  }

  else if (v1 != 9)
  {
    return 0;
  }

  v3 = a1 + 1;
  v4 = a1[1];
  if ((_scan_tasklist_yybm[a1[1]] & 0x40) != 0)
  {
    do
    {
      v6 = *++v3;
      v4 = v6;
    }

    while ((_scan_tasklist_yybm[v6] & 0x40) != 0);
    if (v4 > 0x2C)
    {
      if (v4 == 45)
      {
        goto LABEL_70;
      }

      if (v4 - 48 >= 0xA)
      {
        return 0;
      }

      v5 = v3 - 1;
      goto LABEL_35;
    }
  }

  else if (v4 > 0x2C)
  {
    if (v4 == 45)
    {
      goto LABEL_70;
    }

    v5 = a1;
    if (v4 - 48 >= 0xA)
    {
      return 0;
    }

LABEL_35:
    v11 = v5[2];
    v3 = v5 + 2;
    v9 = v11;
    if (v11 <= 0xA)
    {
      v10 = v9 == 9;
      goto LABEL_42;
    }

    if (v9 < 0xD)
    {
      goto LABEL_70;
    }

    goto LABEL_41;
  }

  v2 = 0;
  if (v4 >= 0x2A && v4 != 44)
  {
    goto LABEL_70;
  }

  return v2;
}

const char *get_type_string_0(uint64_t a1, uint64_t a2)
{
  if (CMARK_NODE_STRIKETHROUGH == *(a2 + 100))
  {
    return "strikethrough";
  }

  else
  {
    return "<unknown>";
  }
}

uint64_t latex_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    v5 = "\\sout{";
  }

  else
  {
    v5 = "}";
  }

  return (*(a2 + 72))(a2, a3, v5, 0, 0);
}

uint64_t man_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    (*(a2 + 56))(a2);
    v6 = *(a2 + 72);

    return v6(a2, a3, ".ST ", 0, 0);
  }

  else
  {
    (*(a2 + 72))(a2, a3, "", 0, 0);
    v8 = *(a2 + 56);

    return v8(a2);
  }
}

_DWORD *html_render_0(uint64_t a1, _DWORD **a2, uint64_t a3, int a4)
{
  v4 = *a2;
  if (a4 == 2)
  {
    v5 = "<del>";
  }

  else
  {
    v5 = "</del>";
  }

  return cmark_strbuf_puts(v4, v5);
}

uint64_t insert(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a5;
  v8 = a4[2];
  v9 = a5[1];
  if (*(v8 + 152) == *(a5[2] + 152) && cmark_node_set_type(a4[2], CMARK_NODE_STRIKETHROUGH))
  {
    cmark_node_set_syntax_extension(v8, a1);
    v11 = cmark_node_next(a4[2]);
    if (v11)
    {
      v12 = v11;
      do
      {
        if (v12 == v5[2])
        {
          break;
        }

        v13 = cmark_node_next(v12);
        cmark_node_append_child(v8, v12);
        v12 = v13;
      }

      while (v13);
    }

    v14 = v5[2];
    *(v8 + 92) = *(v14 + 84) + *(v14 + 152) - 1;
    cmark_node_free(v14);
  }

  if (v5 != a4)
  {
    do
    {
      v15 = *v5;
      cmark_inline_parser_remove_delimiter(a3, v5);
      if (v15)
      {
        v16 = v15 == a4;
      }

      else
      {
        v16 = 1;
      }

      v5 = v15;
    }

    while (!v16);
  }

  cmark_inline_parser_remove_delimiter(a3, a4);
  return v9;
}

uint64_t cmark_iter_reset(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = a3;
  *(a1 + 40) = a2;
  return cmark_iter_next(a1);
}

void *cmark_node_own(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = (**result)(1, 48);
    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 2;
    *(v3 + 40) = v1;
    for (i = cmark_iter_next(v3); i != 1; i = cmark_iter_next(v3))
    {
      if (i == 2)
      {
        v5 = *(v3 + 24);
        v6 = *(v5 + 100);
        if (v6 <= 0xC003)
        {
          if (v6 != 32774 && v6 != 49153)
          {
            continue;
          }
        }

        else if (v6 - 49156 >= 2)
        {
          if (v6 != 49158 && v6 != 49161)
          {
            continue;
          }

          if (!*(v5 + 156))
          {
            v7 = (**v3)(*(v5 + 152) + 1, 1);
            v8 = v7;
            v9 = *(v5 + 152);
            if (v9 >= 1)
            {
              memcpy(v7, *(v5 + 144), v9);
              LODWORD(v9) = *(v5 + 152);
            }

            v8[v9] = 0;
            *(v5 + 144) = v8;
            *(v5 + 156) = 1;
          }

          v10 = (v5 + 172);
          if (*(v5 + 172))
          {
            continue;
          }

          v11 = (**v3)(*(v5 + 168) + 1, 1);
          v12 = v11;
          v13 = *(v5 + 168);
          if (v13 >= 1)
          {
            memcpy(v11, *(v5 + 160), v13);
            LODWORD(v13) = *(v5 + 168);
          }

          v12[v13] = 0;
          *(v5 + 160) = v12;
          goto LABEL_25;
        }

        v10 = (v5 + 156);
        if (!*(v5 + 156))
        {
          v15 = (**v3)(*(v5 + 152) + 1, 1);
          v16 = v15;
          v17 = *(v5 + 152);
          if (v17 >= 1)
          {
            memcpy(v15, *(v5 + 144), v17);
            LODWORD(v17) = *(v5 + 152);
          }

          v16[v17] = 0;
          *(v5 + 144) = v16;
LABEL_25:
          *v10 = 1;
        }
      }
    }

    v18 = *(*v3 + 16);

    return v18(v3);
  }

  return result;
}

_DWORD *outc_0(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  v6 = a1;
  if (!a3)
  {
    goto LABEL_45;
  }

  if (a4 <= 94)
  {
    if (a4 > 59)
    {
      if (a4 > 91)
      {
        if (a4 == 92)
        {
          if (a3 == 3)
          {
            v7 = "/";
          }

          else
          {
            v7 = "\\textbackslash{}";
          }

LABEL_76:

          return cmark_render_ascii(v6, v7);
        }

        if (a4 != 93)
        {
          v7 = "\\^{}";
          goto LABEL_76;
        }
      }

      else
      {
        if (a4 == 60)
        {
          v7 = "\\textless{}";
          goto LABEL_76;
        }

        if (a4 == 62)
        {
          v7 = "\\textgreater{}";
          goto LABEL_76;
        }

        if (a4 != 91)
        {
          goto LABEL_45;
        }
      }

      cmark_render_ascii(a1, "{");
      cmark_render_code_point(v6, a4);
      v7 = "}";
      goto LABEL_76;
    }

    if (a4 > 36)
    {
      if ((a4 - 37) >= 2)
      {
        if (a4 == 39)
        {
          v7 = "\\textquotesingle{}";
          goto LABEL_76;
        }

        if (a4 == 45)
        {
          if (a5 == 45)
          {
            v7 = "-{}";
          }

          else
          {
            v7 = "-";
          }

          goto LABEL_76;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (a4 == 34)
    {
      v7 = "\\textquotedbl{}";
      goto LABEL_76;
    }

    if (a4 != 35)
    {
      if (a4 == 36)
      {
        goto LABEL_30;
      }

LABEL_45:
      a1 = v6;
      v8 = a4;
      goto LABEL_46;
    }

LABEL_44:
    cmark_render_ascii(a1, "\");
    goto LABEL_45;
  }

  if (a4 <= 8210)
  {
    if (a4 <= 124)
    {
      if (a4 != 95)
      {
        if (a4 != 123)
        {
          if (a4 == 124)
          {
            v7 = "\\textbar{}";
            goto LABEL_76;
          }

          goto LABEL_45;
        }

        goto LABEL_44;
      }

LABEL_30:
      if (a3 != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (a4 == 125)
    {
      goto LABEL_44;
    }

    if (a4 != 126)
    {
      if (a4 == 160)
      {
        v7 = "~";
        goto LABEL_76;
      }

      goto LABEL_45;
    }

    if (a3 == 1)
    {
      v7 = "\\textasciitilde{}";
      goto LABEL_76;
    }

    v8 = 126;
  }

  else if (a4 <= 8216)
  {
    switch(a4)
    {
      case 8211:
        if (a3 == 1)
        {
          v7 = "--";
          goto LABEL_76;
        }

        v8 = 8211;
        break;
      case 8212:
        if (a3 == 1)
        {
          v7 = "---";
          goto LABEL_76;
        }

        v8 = 8212;
        break;
      case 8216:
        if (a3 == 1)
        {
          goto LABEL_76;
        }

        v8 = 8216;
        break;
      default:
        goto LABEL_45;
    }
  }

  else if (a4 > 8220)
  {
    if (a4 != 8221)
    {
      if (a4 == 8230)
      {
        v7 = "\\ldots{}";
        goto LABEL_76;
      }

      goto LABEL_45;
    }

    if (a3 == 1)
    {
      v7 = "''";
      goto LABEL_76;
    }

    v8 = 8221;
  }

  else if (a4 == 8217)
  {
    if (a3 == 1)
    {
      v7 = "'";
      goto LABEL_76;
    }

    v8 = 8217;
  }

  else
  {
    if (a4 != 8220)
    {
      goto LABEL_45;
    }

    if (a3 == 1)
    {
      goto LABEL_76;
    }

    v8 = 8220;
  }

LABEL_46:

  return cmark_render_code_point(a1, v8);
}

uint64_t S_render_node_1(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 28);
  v8 = v7 > 0 && (a4 & 0x10) == 0;
  v9 = *(a2 + 112);
  if (v9)
  {
    v10 = *(v9 + 112);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v12 = *(a2 + 100);
  v11 = 1;
  if (v12 <= 0xC001)
  {
    if (*(a2 + 100) <= 0x8006u)
    {
      if (*(a2 + 100) <= 0x8003u)
      {
        if (v12 == 32769)
        {
          goto LABEL_93;
        }

        if (v12 != 32770)
        {
          if (v12 == 32771)
          {
            list_type = cmark_node_get_list_type(a2);
            v14 = *(a1 + 72);
            if (list_type == 2)
            {
              v15 = "enumerate";
            }

            else
            {
              v15 = "itemize";
            }

            if (a3 == 2)
            {
              v14(a1, a2, "\\begin{", 0, 0);
              (*(a1 + 72))(a1, a2, v15, 0, 0);
              (*(a1 + 72))(a1, a2, "}", 0, 0);
              (*(a1 + 56))(a1);
              list_start = cmark_node_get_list_start(a2);
              if (list_start < 2)
              {
                goto LABEL_7;
              }

              v17 = list_start;
              enumlevel = S_get_enumlevel(a2);
              if ((enumlevel - 1) <= 4)
              {
                v19 = enumlevel;
                snprintf(__str, 0x14uLL, "%d", v17);
                (*(a1 + 72))(a1, a2, "\\setcounter{enum", 0, 0);
                (*(a1 + 72))(a1, a2, off_29EE9E108[v19 - 1], 0, 0);
                (*(a1 + 72))(a1, a2, "}{", 0, 0);
                (*(a1 + 72))(a1, a2, __str, 0, 1);
                (*(a1 + 72))(a1, a2, "}", 0, 0);
              }

LABEL_84:
              (*(a1 + 56))(a1);
              goto LABEL_7;
            }

            v14(a1, a2, "\\end{", 0, 0);
            (*(a1 + 72))(a1, a2, v15, 0, 0);
            (*(a1 + 72))(a1, a2, "}", 0, 0);
LABEL_89:
            (*(a1 + 64))(a1);
            goto LABEL_7;
          }

LABEL_52:
          S_render_node_cold_1_1();
        }

        v36 = *(a1 + 72);
        if (a3 == 2)
        {
          v36(a1, a2, "\\begin{quote}", 0, 0);
          goto LABEL_78;
        }

        v39 = "\\end{quote}";
        goto LABEL_91;
      }

      if (v12 != 32772)
      {
        if (v12 != 32773)
        {
          goto LABEL_93;
        }

        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, "\\begin{verbatim}", 0, 0);
        (*(a1 + 56))(a1);
        v37 = *(a1 + 72);
        literal = cmark_node_get_literal(a2);
        v37(a1, a2, literal, 0, 0);
        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, "\\end{verbatim}", 0, 0);
        goto LABEL_89;
      }

      if (a3 == 2)
      {
        v23 = *(a1 + 72);
        v24 = "\\item ";
        goto LABEL_73;
      }

LABEL_78:
      (*(a1 + 56))(a1);
      goto LABEL_93;
    }

    if (*(a2 + 100) > 0x8009u)
    {
      if (v12 != 32778)
      {
        if (v12 == 32779)
        {
          goto LABEL_93;
        }

        if (v12 == 49153)
        {
          v27 = *(a1 + 72);
          v28 = cmark_node_get_literal(a2);
          v27(a1, a2, v28, v8, 1);
          goto LABEL_93;
        }

        goto LABEL_52;
      }

      (*(a1 + 64))(a1);
      (*(a1 + 72))(a1, a2, "\\begin{center}\\rule{0.5\\linewidth}{\\linethickness}\\end{center}", 0, 0);
LABEL_92:
      (*(a1 + 64))(a1);
      goto LABEL_93;
    }

    if (v12 == 32775)
    {
      (*(a1 + 56))(a1);
      v30 = *(a1 + 72);
      if (a3 == 2)
      {
        v31 = cmark_node_get_on_enter(a2);
      }

      else
      {
        v31 = cmark_node_get_on_exit(a2);
      }

      v30(a1, a2, v31, 0, 0);
      goto LABEL_84;
    }

    if (v12 == 32776)
    {
      if (a3 == 2)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    if (a3 != 2)
    {
      v36 = *(a1 + 72);
      v39 = "}";
LABEL_91:
      v36(a1, a2, v39, 0, 0);
      goto LABEL_92;
    }

    v22 = cmark_node_get_heading_level(a2) - 1;
    if (v22 <= 4)
    {
      (*(a1 + 72))(a1, a2, off_29EE9E130[v22], 0, 0);
    }

    v23 = *(a1 + 72);
    v24 = "{";
LABEL_73:
    v23(a1, a2, v24, 0, 0);
    goto LABEL_93;
  }

  if (*(a2 + 100) <= 0xC007u)
  {
    if (*(a2 + 100) <= 0xC004u)
    {
      switch(v12)
      {
        case 0xC002u:
          if ((a4 & 4) == 0)
          {
            if (v7 | a4 & 0x10)
            {
              (*(a1 + 72))(a1, a2, " ", v8, 1);
              goto LABEL_93;
            }

            goto LABEL_78;
          }

          break;
        case 0xC003u:
          break;
        case 0xC004u:
          (*(a1 + 72))(a1, a2, "\\texttt{", 0, 0);
          v20 = *(a1 + 72);
          v21 = cmark_node_get_literal(a2);
          v20(a1, a2, v21, 0, 1);
          goto LABEL_71;
        default:
          goto LABEL_52;
      }

      (*(a1 + 72))(a1, a2, "\\\", 0, 0);
      goto LABEL_78;
    }

    if (v12 == 49157)
    {
      goto LABEL_93;
    }

    if (v12 == 49158)
    {
      v34 = *(a1 + 72);
      if (a3 == 2)
      {
        v35 = cmark_node_get_on_enter(a2);
      }

      else
      {
        v35 = cmark_node_get_on_exit(a2);
      }

      v34(a1, a2, v35, 0, 0);
      goto LABEL_7;
    }

    v23 = *(a1 + 72);
    if (a3 == 2)
    {
      v24 = "\\emph{";
      goto LABEL_73;
    }

LABEL_72:
    v24 = "}";
    goto LABEL_73;
  }

  if (*(a2 + 100) > 0xC00Au)
  {
    if (v12 - 49163 < 2)
    {
      goto LABEL_93;
    }

    goto LABEL_52;
  }

  if (v12 != 49160)
  {
    if (v12 == 49161)
    {
      if (a3 != 2)
      {
LABEL_71:
        v23 = *(a1 + 72);
        goto LABEL_72;
      }

      url = cmark_node_get_url(a2);
      link_type = get_link_type(a2);
      v10 = *(a1 + 72);
      if (link_type > 1)
      {
        if (link_type == 2)
        {
          (v10)(a1, a2, "\\href{", 0, 0);
          (*(a1 + 72))(a1, a2, url, 0, 3);
          v10 = *(a1 + 72);
        }

        else
        {
          if (link_type == 3)
          {
            (v10)(a1, a2, "\\href{", 0, 0);
            (*(a1 + 72))(a1, a2, url, 0, 3);
          }

          else
          {
            (v10)(a1, a2, "\\protect\\hyperlink{", 0, 0);
            (*(a1 + 72))(a1, a2, url + 1, 0, 3);
          }

          v10 = *(a1 + 72);
        }

        goto LABEL_6;
      }

      if (!link_type)
      {
LABEL_6:
        v10();
LABEL_7:
        v11 = 1;
        goto LABEL_93;
      }

      (v10)(a1, a2, "\\url{", 0, 0);
      (*(a1 + 72))(a1, a2, url, 0, 3);
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_93;
      }

      (*(a1 + 72))(a1, a2, "\\protect\\includegraphics{", 0, 0);
      v25 = *(a1 + 72);
      v26 = cmark_node_get_url(a2);
      v25(a1, a2, v26, 0, 3);
    }

    (*(a1 + 72))(a1, a2, "}", 0, 0);
    v11 = 0;
    goto LABEL_93;
  }

  v29 = *(a2 + 40);
  if (!v29 || *(v29 + 100) != 49160)
  {
    v23 = *(a1 + 72);
    if (a3 == 2)
    {
      v24 = "\\textbf{";
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_93:
  v40 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t S_get_enumlevel(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1;
  do
  {
    if (*(v3 + 100) == 32771)
    {
      if (cmark_node_get_list_type(a1) == 2)
      {
        v2 = (v2 + 1);
      }

      else
      {
        v2 = v2;
      }
    }

    v3 = *(v3 + 40);
  }

  while (v3);
  return v2;
}

uint64_t get_link_type(uint64_t a1)
{
  if (*(a1 + 100) != 49161)
  {
    return 0;
  }

  url = cmark_node_get_url(a1);
  v3 = url;
  if (url)
  {
    v13 = url;
    v14 = strlen(url);
    if (*v3 == 35)
    {
      return 4;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v5 = strlen(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!_scan_at(_scan_scheme, &v13, 0))
  {
    return 0;
  }

  if (*cmark_node_get_title(a1))
  {
    return 3;
  }

  v7 = *(a1 + 48);
  cmark_consolidate_text_nodes(v7);
  if (!v7)
  {
    return 0;
  }

  v8 = strncmp(v3, "mailto:", 7uLL);
  v9 = v6 - 7;
  if (v8)
  {
    v9 = v6;
  }

  v4 = 3;
  if (v9 == *(v7 + 152))
  {
    v10 = 7;
    if (v8)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (!strncmp(&v3[v10], *(v7 + 144), v9))
    {
      return v11;
    }

    else
    {
      return 3;
    }
  }

  return v4;
}

uint64_t _scan_at(uint64_t (*a1)(uint64_t), uint64_t *a2, int a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a2 + 2);
  if (v5 < a3)
  {
    return 0;
  }

  v7 = *(v3 + v5);
  *(v3 + v5) = 0;
  result = a1(v3 + a3);
  *(v3 + *(a2 + 2)) = v7;
  return result;
}

uint64_t _scan_scheme(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0x41)
  {
    return 0;
  }

  if (v1 >= 0x5B && v1 - 97 > 0x19)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 > 0x2F)
  {
    if (v3 > 0x5A)
    {
      if (v3 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }
    }

    else if (v3 - 58 < 7)
    {
      return 0;
    }

LABEL_17:
    v5 = a1 + 2;
    v6 = a1[2];
    if (v6 > 0x39)
    {
      if (v6 > 0x5A)
      {
        if (v6 - 97 > 0x19)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v6 <= 0x40)
        {
          return 0;
        }
      }
    }

    else if (v6 > 0x2C)
    {
      if (v6 == 47)
      {
        return 0;
      }
    }

    else if (v6 != 43)
    {
      return 0;
    }

    v5 = a1 + 3;
    v7 = a1[3];
    if (v7 > 0x39)
    {
      if (v7 > 0x5A)
      {
        if (v7 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v7 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v7 > 0x2C)
    {
      if (v7 == 47)
      {
        return 0;
      }
    }

    else if (v7 != 43)
    {
      return 0;
    }

    v5 = a1 + 4;
    v8 = a1[4];
    if (v8 > 0x39)
    {
      if (v8 > 0x5A)
      {
        if (v8 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v8 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v8 > 0x2C)
    {
      if (v8 == 47)
      {
        return 0;
      }
    }

    else if (v8 != 43)
    {
      return 0;
    }

    v5 = a1 + 5;
    v9 = a1[5];
    if (v9 > 0x39)
    {
      if (v9 > 0x5A)
      {
        if (v9 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v9 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v9 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v9 > 0x2C)
    {
      if (v9 == 47)
      {
        return 0;
      }
    }

    else if (v9 != 43)
    {
      return 0;
    }

    v5 = a1 + 6;
    v10 = a1[6];
    if (v10 > 0x39)
    {
      if (v10 > 0x5A)
      {
        if (v10 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v10 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v10 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v10 > 0x2C)
    {
      if (v10 == 47)
      {
        return 0;
      }
    }

    else if (v10 != 43)
    {
      return 0;
    }

    v5 = a1 + 7;
    v11 = a1[7];
    if (v11 > 0x39)
    {
      if (v11 > 0x5A)
      {
        if (v11 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v11 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v11 > 0x2C)
    {
      if (v11 == 47)
      {
        return 0;
      }
    }

    else if (v11 != 43)
    {
      return 0;
    }

    v5 = a1 + 8;
    v12 = a1[8];
    if (v12 > 0x39)
    {
      if (v12 > 0x5A)
      {
        if (v12 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v12 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v12 > 0x2C)
    {
      if (v12 == 47)
      {
        return 0;
      }
    }

    else if (v12 != 43)
    {
      return 0;
    }

    v5 = a1 + 9;
    v13 = a1[9];
    if (v13 > 0x39)
    {
      if (v13 > 0x5A)
      {
        if (v13 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v13 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v13 > 0x2C)
    {
      if (v13 == 47)
      {
        return 0;
      }
    }

    else if (v13 != 43)
    {
      return 0;
    }

    v5 = a1 + 10;
    v14 = a1[10];
    if (v14 > 0x39)
    {
      if (v14 > 0x5A)
      {
        if (v14 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v14 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v14 > 0x2C)
    {
      if (v14 == 47)
      {
        return 0;
      }
    }

    else if (v14 != 43)
    {
      return 0;
    }

    v5 = a1 + 11;
    v15 = a1[11];
    if (v15 > 0x39)
    {
      if (v15 > 0x5A)
      {
        if (v15 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v15 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v15 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v15 > 0x2C)
    {
      if (v15 == 47)
      {
        return 0;
      }
    }

    else if (v15 != 43)
    {
      return 0;
    }

    v5 = a1 + 12;
    v16 = a1[12];
    if (v16 > 0x39)
    {
      if (v16 > 0x5A)
      {
        if (v16 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v16 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v16 > 0x2C)
    {
      if (v16 == 47)
      {
        return 0;
      }
    }

    else if (v16 != 43)
    {
      return 0;
    }

    v5 = a1 + 13;
    v17 = a1[13];
    if (v17 > 0x39)
    {
      if (v17 > 0x5A)
      {
        if (v17 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v17 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v17 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v17 > 0x2C)
    {
      if (v17 == 47)
      {
        return 0;
      }
    }

    else if (v17 != 43)
    {
      return 0;
    }

    v5 = a1 + 14;
    v18 = a1[14];
    if (v18 > 0x39)
    {
      if (v18 > 0x5A)
      {
        if (v18 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v18 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v18 > 0x2C)
    {
      if (v18 == 47)
      {
        return 0;
      }
    }

    else if (v18 != 43)
    {
      return 0;
    }

    v5 = a1 + 15;
    v19 = a1[15];
    if (v19 > 0x39)
    {
      if (v19 > 0x5A)
      {
        if (v19 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v19 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v19 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v19 > 0x2C)
    {
      if (v19 == 47)
      {
        return 0;
      }
    }

    else if (v19 != 43)
    {
      return 0;
    }

    v5 = a1 + 16;
    v20 = a1[16];
    if (v20 > 0x39)
    {
      if (v20 > 0x5A)
      {
        if (v20 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v20 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v20 > 0x2C)
    {
      if (v20 == 47)
      {
        return 0;
      }
    }

    else if (v20 != 43)
    {
      return 0;
    }

    v5 = a1 + 17;
    v21 = a1[17];
    if (v21 > 0x39)
    {
      if (v21 > 0x5A)
      {
        if (v21 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v21 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v21 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v21 > 0x2C)
    {
      if (v21 == 47)
      {
        return 0;
      }
    }

    else if (v21 != 43)
    {
      return 0;
    }

    v5 = a1 + 18;
    v22 = a1[18];
    if (v22 > 0x39)
    {
      if (v22 > 0x5A)
      {
        if (v22 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v22 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v22 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v22 > 0x2C)
    {
      if (v22 == 47)
      {
        return 0;
      }
    }

    else if (v22 != 43)
    {
      return 0;
    }

    v5 = a1 + 19;
    v23 = a1[19];
    if (v23 > 0x39)
    {
      if (v23 > 0x5A)
      {
        if (v23 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v23 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v23 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v23 > 0x2C)
    {
      if (v23 == 47)
      {
        return 0;
      }
    }

    else if (v23 != 43)
    {
      return 0;
    }

    v5 = a1 + 20;
    v24 = a1[20];
    if (v24 > 0x39)
    {
      if (v24 > 0x5A)
      {
        if (v24 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v24 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v24 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v24 > 0x2C)
    {
      if (v24 == 47)
      {
        return 0;
      }
    }

    else if (v24 != 43)
    {
      return 0;
    }

    v5 = a1 + 21;
    v25 = a1[21];
    if (v25 > 0x39)
    {
      if (v25 > 0x5A)
      {
        if (v25 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v25 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v25 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v25 > 0x2C)
    {
      if (v25 == 47)
      {
        return 0;
      }
    }

    else if (v25 != 43)
    {
      return 0;
    }

    v5 = a1 + 22;
    v26 = a1[22];
    if (v26 > 0x39)
    {
      if (v26 > 0x5A)
      {
        if (v26 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v26 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v26 > 0x2C)
    {
      if (v26 == 47)
      {
        return 0;
      }
    }

    else if (v26 != 43)
    {
      return 0;
    }

    v5 = a1 + 23;
    v27 = a1[23];
    if (v27 > 0x39)
    {
      if (v27 > 0x5A)
      {
        if (v27 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v27 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v27 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v27 > 0x2C)
    {
      if (v27 == 47)
      {
        return 0;
      }
    }

    else if (v27 != 43)
    {
      return 0;
    }

    v5 = a1 + 24;
    v28 = a1[24];
    if (v28 > 0x39)
    {
      if (v28 > 0x5A)
      {
        if (v28 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v28 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v28 > 0x2C)
    {
      if (v28 == 47)
      {
        return 0;
      }
    }

    else if (v28 != 43)
    {
      return 0;
    }

    v5 = a1 + 25;
    v29 = a1[25];
    if (v29 > 0x39)
    {
      if (v29 > 0x5A)
      {
        if (v29 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v29 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v29 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v29 > 0x2C)
    {
      if (v29 == 47)
      {
        return 0;
      }
    }

    else if (v29 != 43)
    {
      return 0;
    }

    v5 = a1 + 26;
    v30 = a1[26];
    if (v30 > 0x39)
    {
      if (v30 > 0x5A)
      {
        if (v30 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v30 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v30 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v30 > 0x2C)
    {
      if (v30 == 47)
      {
        return 0;
      }
    }

    else if (v30 != 43)
    {
      return 0;
    }

    v5 = a1 + 27;
    v31 = a1[27];
    if (v31 > 0x39)
    {
      if (v31 > 0x5A)
      {
        if (v31 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v31 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v31 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v31 > 0x2C)
    {
      if (v31 == 47)
      {
        return 0;
      }
    }

    else if (v31 != 43)
    {
      return 0;
    }

    v5 = a1 + 28;
    v32 = a1[28];
    if (v32 > 0x39)
    {
      if (v32 > 0x5A)
      {
        if (v32 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v32 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v32 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v32 > 0x2C)
    {
      if (v32 == 47)
      {
        return 0;
      }
    }

    else if (v32 != 43)
    {
      return 0;
    }

    v5 = a1 + 29;
    v33 = a1[29];
    if (v33 > 0x39)
    {
      if (v33 > 0x5A)
      {
        if (v33 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v33 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v33 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v33 > 0x2C)
    {
      if (v33 == 47)
      {
        return 0;
      }
    }

    else if (v33 != 43)
    {
      return 0;
    }

    v5 = a1 + 30;
    v34 = a1[30];
    if (v34 > 0x39)
    {
      if (v34 > 0x5A)
      {
        if (v34 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v34 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v34 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v34 > 0x2C)
    {
      if (v34 == 47)
      {
        return 0;
      }
    }

    else if (v34 != 43)
    {
      return 0;
    }

    v5 = a1 + 31;
    v35 = a1[31];
    if (v35 <= 0x39)
    {
      if (v35 > 0x2C)
      {
        if (v35 == 47)
        {
          return 0;
        }
      }

      else if (v35 != 43)
      {
        return 0;
      }

LABEL_347:
      v5 = a1 + 32;
      if (a1[32] == 58)
      {
        return (v5 - a1 + 1);
      }

      return 0;
    }

    if (v35 > 0x5A)
    {
      if (v35 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }

      goto LABEL_347;
    }

    if (v35 != 58)
    {
      if (v35 < 0x41)
      {
        return 0;
      }

      goto LABEL_347;
    }

    return (v5 - a1 + 1);
  }

  if (v3 <= 0x2B)
  {
    if (v3 != 43)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v4 = 0;
  if (v3 != 44 && v3 != 47)
  {
    goto LABEL_17;
  }

  return v4;
}

unsigned __int8 *_scan_autolink_uri(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0x41)
  {
    return 0;
  }

  if (v1 >= 0x5B && v1 - 97 > 0x19)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 > 0x2F)
  {
    if (v3 > 0x5A)
    {
      if (v3 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }
    }

    else if (v3 - 58 < 7)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v3 <= 0x2B)
  {
    if (v3 != 43)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v4 = 0;
  if (v3 != 44 && v3 != 47)
  {
LABEL_17:
    v6 = a1 + 2;
    v5 = a1[2];
    if (v5 > 0x39)
    {
      if (v5 > 0x5A)
      {
        if (v5 - 97 > 0x19)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == 58)
        {
          goto LABEL_348;
        }

        if (v5 <= 0x40)
        {
          return 0;
        }
      }
    }

    else if (v5 > 0x2C)
    {
      if (v5 == 47)
      {
        return 0;
      }
    }

    else if (v5 != 43)
    {
      return 0;
    }

    v6 = a1 + 3;
    v7 = a1[3];
    if (v7 > 0x39)
    {
      if (v7 > 0x5A)
      {
        if (v7 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 58)
        {
          goto LABEL_348;
        }

        if (v7 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v7 > 0x2C)
    {
      if (v7 == 47)
      {
        return 0;
      }
    }

    else if (v7 != 43)
    {
      return 0;
    }

    v6 = a1 + 4;
    v8 = a1[4];
    if (v8 > 0x39)
    {
      if (v8 > 0x5A)
      {
        if (v8 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 58)
        {
          goto LABEL_348;
        }

        if (v8 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v8 > 0x2C)
    {
      if (v8 == 47)
      {
        return 0;
      }
    }

    else if (v8 != 43)
    {
      return 0;
    }

    v6 = a1 + 5;
    v9 = a1[5];
    if (v9 > 0x39)
    {
      if (v9 > 0x5A)
      {
        if (v9 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v9 == 58)
        {
          goto LABEL_348;
        }

        if (v9 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v9 > 0x2C)
    {
      if (v9 == 47)
      {
        return 0;
      }
    }

    else if (v9 != 43)
    {
      return 0;
    }

    v6 = a1 + 6;
    v10 = a1[6];
    if (v10 > 0x39)
    {
      if (v10 > 0x5A)
      {
        if (v10 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v10 == 58)
        {
          goto LABEL_348;
        }

        if (v10 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v10 > 0x2C)
    {
      if (v10 == 47)
      {
        return 0;
      }
    }

    else if (v10 != 43)
    {
      return 0;
    }

    v6 = a1 + 7;
    v11 = a1[7];
    if (v11 > 0x39)
    {
      if (v11 > 0x5A)
      {
        if (v11 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == 58)
        {
          goto LABEL_348;
        }

        if (v11 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v11 > 0x2C)
    {
      if (v11 == 47)
      {
        return 0;
      }
    }

    else if (v11 != 43)
    {
      return 0;
    }

    v6 = a1 + 8;
    v12 = a1[8];
    if (v12 > 0x39)
    {
      if (v12 > 0x5A)
      {
        if (v12 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 58)
        {
          goto LABEL_348;
        }

        if (v12 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v12 > 0x2C)
    {
      if (v12 == 47)
      {
        return 0;
      }
    }

    else if (v12 != 43)
    {
      return 0;
    }

    v6 = a1 + 9;
    v13 = a1[9];
    if (v13 > 0x39)
    {
      if (v13 > 0x5A)
      {
        if (v13 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == 58)
        {
          goto LABEL_348;
        }

        if (v13 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v13 > 0x2C)
    {
      if (v13 == 47)
      {
        return 0;
      }
    }

    else if (v13 != 43)
    {
      return 0;
    }

    v6 = a1 + 10;
    v14 = a1[10];
    if (v14 > 0x39)
    {
      if (v14 > 0x5A)
      {
        if (v14 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 58)
        {
          goto LABEL_348;
        }

        if (v14 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v14 > 0x2C)
    {
      if (v14 == 47)
      {
        return 0;
      }
    }

    else if (v14 != 43)
    {
      return 0;
    }

    v6 = a1 + 11;
    v15 = a1[11];
    if (v15 > 0x39)
    {
      if (v15 > 0x5A)
      {
        if (v15 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v15 == 58)
        {
          goto LABEL_348;
        }

        if (v15 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v15 > 0x2C)
    {
      if (v15 == 47)
      {
        return 0;
      }
    }

    else if (v15 != 43)
    {
      return 0;
    }

    v6 = a1 + 12;
    v16 = a1[12];
    if (v16 > 0x39)
    {
      if (v16 > 0x5A)
      {
        if (v16 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == 58)
        {
          goto LABEL_348;
        }

        if (v16 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v16 > 0x2C)
    {
      if (v16 == 47)
      {
        return 0;
      }
    }

    else if (v16 != 43)
    {
      return 0;
    }

    v6 = a1 + 13;
    v17 = a1[13];
    if (v17 > 0x39)
    {
      if (v17 > 0x5A)
      {
        if (v17 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v17 == 58)
        {
          goto LABEL_348;
        }

        if (v17 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v17 > 0x2C)
    {
      if (v17 == 47)
      {
        return 0;
      }
    }

    else if (v17 != 43)
    {
      return 0;
    }

    v6 = a1 + 14;
    v18 = a1[14];
    if (v18 > 0x39)
    {
      if (v18 > 0x5A)
      {
        if (v18 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == 58)
        {
          goto LABEL_348;
        }

        if (v18 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v18 > 0x2C)
    {
      if (v18 == 47)
      {
        return 0;
      }
    }

    else if (v18 != 43)
    {
      return 0;
    }

    v6 = a1 + 15;
    v19 = a1[15];
    if (v19 > 0x39)
    {
      if (v19 > 0x5A)
      {
        if (v19 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v19 == 58)
        {
          goto LABEL_348;
        }

        if (v19 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v19 > 0x2C)
    {
      if (v19 == 47)
      {
        return 0;
      }
    }

    else if (v19 != 43)
    {
      return 0;
    }

    v6 = a1 + 16;
    v20 = a1[16];
    if (v20 > 0x39)
    {
      if (v20 > 0x5A)
      {
        if (v20 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == 58)
        {
          goto LABEL_348;
        }

        if (v20 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v20 > 0x2C)
    {
      if (v20 == 47)
      {
        return 0;
      }
    }

    else if (v20 != 43)
    {
      return 0;
    }

    v6 = a1 + 17;
    v21 = a1[17];
    if (v21 > 0x39)
    {
      if (v21 > 0x5A)
      {
        if (v21 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v21 == 58)
        {
          goto LABEL_348;
        }

        if (v21 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v21 > 0x2C)
    {
      if (v21 == 47)
      {
        return 0;
      }
    }

    else if (v21 != 43)
    {
      return 0;
    }

    v6 = a1 + 18;
    v22 = a1[18];
    if (v22 > 0x39)
    {
      if (v22 > 0x5A)
      {
        if (v22 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v22 == 58)
        {
          goto LABEL_348;
        }

        if (v22 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v22 > 0x2C)
    {
      if (v22 == 47)
      {
        return 0;
      }
    }

    else if (v22 != 43)
    {
      return 0;
    }

    v6 = a1 + 19;
    v23 = a1[19];
    if (v23 > 0x39)
    {
      if (v23 > 0x5A)
      {
        if (v23 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v23 == 58)
        {
          goto LABEL_348;
        }

        if (v23 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v23 > 0x2C)
    {
      if (v23 == 47)
      {
        return 0;
      }
    }

    else if (v23 != 43)
    {
      return 0;
    }

    v6 = a1 + 20;
    v24 = a1[20];
    if (v24 > 0x39)
    {
      if (v24 > 0x5A)
      {
        if (v24 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v24 == 58)
        {
          goto LABEL_348;
        }

        if (v24 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v24 > 0x2C)
    {
      if (v24 == 47)
      {
        return 0;
      }
    }

    else if (v24 != 43)
    {
      return 0;
    }

    v6 = a1 + 21;
    v25 = a1[21];
    if (v25 > 0x39)
    {
      if (v25 > 0x5A)
      {
        if (v25 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v25 == 58)
        {
          goto LABEL_348;
        }

        if (v25 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v25 > 0x2C)
    {
      if (v25 == 47)
      {
        return 0;
      }
    }

    else if (v25 != 43)
    {
      return 0;
    }

    v6 = a1 + 22;
    v26 = a1[22];
    if (v26 > 0x39)
    {
      if (v26 > 0x5A)
      {
        if (v26 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == 58)
        {
          goto LABEL_348;
        }

        if (v26 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v26 > 0x2C)
    {
      if (v26 == 47)
      {
        return 0;
      }
    }

    else if (v26 != 43)
    {
      return 0;
    }

    v6 = a1 + 23;
    v27 = a1[23];
    if (v27 > 0x39)
    {
      if (v27 > 0x5A)
      {
        if (v27 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v27 == 58)
        {
          goto LABEL_348;
        }

        if (v27 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v27 > 0x2C)
    {
      if (v27 == 47)
      {
        return 0;
      }
    }

    else if (v27 != 43)
    {
      return 0;
    }

    v6 = a1 + 24;
    v28 = a1[24];
    if (v28 > 0x39)
    {
      if (v28 > 0x5A)
      {
        if (v28 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == 58)
        {
          goto LABEL_348;
        }

        if (v28 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v28 > 0x2C)
    {
      if (v28 == 47)
      {
        return 0;
      }
    }

    else if (v28 != 43)
    {
      return 0;
    }

    v6 = a1 + 25;
    v29 = a1[25];
    if (v29 > 0x39)
    {
      if (v29 > 0x5A)
      {
        if (v29 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v29 == 58)
        {
          goto LABEL_348;
        }

        if (v29 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v29 > 0x2C)
    {
      if (v29 == 47)
      {
        return 0;
      }
    }

    else if (v29 != 43)
    {
      return 0;
    }

    v6 = a1 + 26;
    v30 = a1[26];
    if (v30 > 0x39)
    {
      if (v30 > 0x5A)
      {
        if (v30 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v30 == 58)
        {
          goto LABEL_348;
        }

        if (v30 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v30 > 0x2C)
    {
      if (v30 == 47)
      {
        return 0;
      }
    }

    else if (v30 != 43)
    {
      return 0;
    }

    v6 = a1 + 27;
    v31 = a1[27];
    if (v31 > 0x39)
    {
      if (v31 > 0x5A)
      {
        if (v31 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v31 == 58)
        {
          goto LABEL_348;
        }

        if (v31 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v31 > 0x2C)
    {
      if (v31 == 47)
      {
        return 0;
      }
    }

    else if (v31 != 43)
    {
      return 0;
    }

    v6 = a1 + 28;
    v32 = a1[28];
    if (v32 > 0x39)
    {
      if (v32 > 0x5A)
      {
        if (v32 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v32 == 58)
        {
          goto LABEL_348;
        }

        if (v32 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v32 > 0x2C)
    {
      if (v32 == 47)
      {
        return 0;
      }
    }

    else if (v32 != 43)
    {
      return 0;
    }

    v6 = a1 + 29;
    v33 = a1[29];
    if (v33 > 0x39)
    {
      if (v33 > 0x5A)
      {
        if (v33 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v33 == 58)
        {
          goto LABEL_348;
        }

        if (v33 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v33 > 0x2C)
    {
      if (v33 == 47)
      {
        return 0;
      }
    }

    else if (v33 != 43)
    {
      return 0;
    }

    v6 = a1 + 30;
    v34 = a1[30];
    if (v34 > 0x39)
    {
      if (v34 > 0x5A)
      {
        if (v34 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v34 == 58)
        {
          goto LABEL_348;
        }

        if (v34 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v34 > 0x2C)
    {
      if (v34 == 47)
      {
        return 0;
      }
    }

    else if (v34 != 43)
    {
      return 0;
    }

    v6 = a1 + 31;
    v35 = a1[31];
    if (v35 > 0x39)
    {
      if (v35 > 0x5A)
      {
        if (v35 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v35 == 58)
        {
          goto LABEL_348;
        }

        if (v35 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v35 > 0x2C)
    {
      if (v35 == 47)
      {
        return 0;
      }
    }

    else if (v35 != 43)
    {
      return 0;
    }

    v6 = a1 + 32;
    if (a1[32] == 58)
    {
      while (1)
      {
        do
        {
LABEL_348:
          v4 = v6;
          v37 = *++v6;
          v36 = v37;
        }

        while (_scan_autolink_uri_yybm[v37] < 0);
        if (v36 > 0xEC)
        {
          break;
        }

        if (v36 <= 0xC1)
        {
          LODWORD(v4) = v4 - a1 + 2;
          if (v36 - 61 >= 2)
          {
            return 0;
          }

          else
          {
            return v4;
          }
        }

        if (v36 >= 0xE0)
        {
          if (v36 != 224)
          {
            goto LABEL_366;
          }

          v39 = v4[2];
          v38 = v4 + 2;
          if ((v39 & 0xE0) != 0xA0)
          {
            return 0;
          }

LABEL_369:
          v6 = v38;
        }

LABEL_370:
        v4 = 0;
        v46 = *++v6;
        if (v46 >= -64)
        {
          return v4;
        }
      }

      if (v36 > 0xF0)
      {
        if (v36 >= 0xF4)
        {
          if (v36 != 244)
          {
            return 0;
          }

          v43 = v4[2];
          v40 = v4 + 2;
          if (v43 >= -112)
          {
            return 0;
          }
        }

        else
        {
          v42 = v4[2];
          v40 = v4 + 2;
          if (v42 >= -64)
          {
            return 0;
          }
        }

LABEL_365:
        v6 = v40;
LABEL_366:
        v44 = *++v6;
        if (v44 >= -64)
        {
          return 0;
        }

        goto LABEL_370;
      }

      if (v36 != 237)
      {
        if (v36 == 240)
        {
          v41 = v4[2];
          v40 = v4 + 2;
          if ((v41 - 144) >= 0x30)
          {
            return 0;
          }

          goto LABEL_365;
        }

        goto LABEL_366;
      }

      v45 = v4[2];
      v38 = v4 + 2;
      if (v45 >= -96)
      {
        return 0;
      }

      goto LABEL_369;
    }

    return 0;
  }

  return v4;
}

uint64_t _scan_autolink_email(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x39)
  {
    if (v1 > 0x27)
    {
      v2 = 0;
      if (v1 < 0x2A || v1 == 44)
      {
        return v2;
      }
    }

    else if (v1 != 33 && v1 <= 0x22)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v1 > 0x3F)
  {
    if (v1 > 0x5A)
    {
      if (v1 - 94 > 0x20)
      {
        return 0;
      }
    }

    else if (v1 == 64)
    {
      return 0;
    }
  }

  else if ((~v1 & 0x3D) != 0)
  {
    return 0;
  }

LABEL_16:
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3 > 0x2C)
  {
    if (v3 > 0x3E)
    {
      if (v3 >= 0x5B && v3 - 94 > 0x20)
      {
        return 0;
      }
    }

    else if (v3 >= 0x3A && v3 != 61)
    {
      return 0;
    }
  }

  else if (v3 > 0x22)
  {
    if (v3 >= 0x28)
    {
      v2 = 0;
      if (v3 < 0x2A || v3 == 44)
      {
        return v2;
      }
    }
  }

  else if (v3 != 33)
  {
    return 0;
  }

  while (_scan_autolink_email_yybm[v3] < 0)
  {
    v5 = *++v4;
    v3 = v5;
  }

  if (v3 - 63 > 1)
  {
    return 0;
  }

  do
  {
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            while (1)
            {
              do
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      do
                      {
                        while (1)
                        {
                          do
                          {
                            while (1)
                            {
                              do
                              {
                                while (1)
                                {
                                  do
                                  {
                                    while (1)
                                    {
                                      do
                                      {
                                        while (1)
                                        {
                                          do
                                          {
                                            while (1)
                                            {
                                              do
                                              {
                                                while (1)
                                                {
                                                  do
                                                  {
                                                    while (1)
                                                    {
                                                      do
                                                      {
                                                        while (1)
                                                        {
                                                          do
                                                          {
                                                            while (1)
                                                            {
                                                              do
                                                              {
                                                                while (1)
                                                                {
                                                                  while (1)
                                                                  {
                                                                    v6 = v4;
                                                                    v7 = v4[1];
                                                                    if (v7 > 0x40)
                                                                    {
                                                                      if (v7 >= 0x5B && v7 - 123 < 0xFFFFFFE6)
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else if (v7 - 58 < 0xFFFFFFF6)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    v4 += 2;
                                                                    v9 = v6[2];
                                                                    if (v9 > 0x3D)
                                                                    {
                                                                      break;
                                                                    }

                                                                    if (v9 > 0x2E)
                                                                    {
                                                                      v2 = 0;
                                                                      if (v9 == 47 || v9 >= 0x3A)
                                                                      {
                                                                        return v2;
                                                                      }

                                                                      goto LABEL_57;
                                                                    }

                                                                    if (v9 < 0x2D)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    if (v9 != 46)
                                                                    {
                                                                      v10 = v6[3];
                                                                      if (v10 > 0x39)
                                                                      {
                                                                        if (v10 <= 0x5A)
                                                                        {
                                                                          if (v10 < 0x41)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          goto LABEL_74;
                                                                        }

                                                                        v13 = v10 - 97;
LABEL_73:
                                                                        if (v13 >= 0x1A)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_74;
                                                                      }

                                                                      if (v10 != 45)
                                                                      {
                                                                        if (v10 < 0x30)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_74;
                                                                      }

LABEL_61:
                                                                      v12 = v6[4];
                                                                      if (v12 <= 0x39)
                                                                      {
                                                                        if (v12 == 45)
                                                                        {
                                                                          goto LABEL_78;
                                                                        }

                                                                        if (v12 < 0x30)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_91;
                                                                      }

                                                                      if (v12 <= 0x5A)
                                                                      {
                                                                        if (v12 < 0x41)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_91;
                                                                      }

                                                                      v16 = v12 - 97;
LABEL_90:
                                                                      if (v16 >= 0x1A)
                                                                      {
                                                                        return 0;
                                                                      }

LABEL_91:
                                                                      v4 = v6 + 5;
                                                                      v17 = v6[5];
                                                                      if (v17 > 0x3D)
                                                                      {
                                                                        if (v17 > 0x5A)
                                                                        {
                                                                          v19 = v17 - 97;
                                                                          goto LABEL_107;
                                                                        }

                                                                        if (v17 == 62)
                                                                        {
                                                                          return (v4 - a1 + 1);
                                                                        }

                                                                        if (v17 < 0x41)
                                                                        {
                                                                          return 0;
                                                                        }

LABEL_108:
                                                                        v4 = v6 + 6;
                                                                        v20 = v6[6];
                                                                        if (v20 > 0x3D)
                                                                        {
                                                                          if (v20 <= 0x5A)
                                                                          {
                                                                            if (v20 == 62)
                                                                            {
                                                                              return (v4 - a1 + 1);
                                                                            }

                                                                            if (v20 < 0x41)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_125;
                                                                          }

                                                                          v22 = v20 - 97;
LABEL_124:
                                                                          if (v22 >= 0x1A)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          goto LABEL_125;
                                                                        }

                                                                        if (v20 > 0x2E)
                                                                        {
                                                                          v2 = 0;
                                                                          if (v20 == 47 || v20 >= 0x3A)
                                                                          {
                                                                            return v2;
                                                                          }

                                                                          goto LABEL_125;
                                                                        }

                                                                        if (v20 < 0x2D)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        if (v20 != 46)
                                                                        {
LABEL_112:
                                                                          v21 = v6[7];
                                                                          if (v21 > 0x39)
                                                                          {
                                                                            if (v21 <= 0x5A)
                                                                            {
                                                                              if (v21 < 0x41)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              goto LABEL_142;
                                                                            }

                                                                            v25 = v21 - 97;
LABEL_141:
                                                                            if (v25 >= 0x1A)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_142;
                                                                          }

                                                                          if (v21 != 45)
                                                                          {
                                                                            if (v21 < 0x30)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_142;
                                                                          }

LABEL_129:
                                                                          v24 = v6[8];
                                                                          if (v24 <= 0x39)
                                                                          {
                                                                            if (v24 == 45)
                                                                            {
                                                                              goto LABEL_146;
                                                                            }

                                                                            if (v24 < 0x30)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_159;
                                                                          }

                                                                          if (v24 <= 0x5A)
                                                                          {
                                                                            if (v24 < 0x41)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_159;
                                                                          }

                                                                          v28 = v24 - 97;
LABEL_158:
                                                                          if (v28 >= 0x1A)
                                                                          {
                                                                            return 0;
                                                                          }

LABEL_159:
                                                                          v4 = v6 + 9;
                                                                          v29 = v6[9];
                                                                          if (v29 > 0x3D)
                                                                          {
                                                                            if (v29 > 0x5A)
                                                                            {
                                                                              v31 = v29 - 97;
                                                                              goto LABEL_175;
                                                                            }

                                                                            if (v29 == 62)
                                                                            {
                                                                              return (v4 - a1 + 1);
                                                                            }

                                                                            if (v29 < 0x41)
                                                                            {
                                                                              return 0;
                                                                            }

LABEL_176:
                                                                            v4 = v6 + 10;
                                                                            v32 = v6[10];
                                                                            if (v32 > 0x3D)
                                                                            {
                                                                              if (v32 <= 0x5A)
                                                                              {
                                                                                if (v32 == 62)
                                                                                {
                                                                                  return (v4 - a1 + 1);
                                                                                }

                                                                                if (v32 < 0x41)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_193;
                                                                              }

                                                                              v34 = v32 - 97;
LABEL_192:
                                                                              if (v34 >= 0x1A)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              goto LABEL_193;
                                                                            }

                                                                            if (v32 > 0x2E)
                                                                            {
                                                                              v2 = 0;
                                                                              if (v32 == 47 || v32 >= 0x3A)
                                                                              {
                                                                                return v2;
                                                                              }

                                                                              goto LABEL_193;
                                                                            }

                                                                            if (v32 < 0x2D)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            if (v32 != 46)
                                                                            {
LABEL_180:
                                                                              v33 = v6[11];
                                                                              if (v33 > 0x39)
                                                                              {
                                                                                if (v33 <= 0x5A)
                                                                                {
                                                                                  if (v33 < 0x41)
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  goto LABEL_216;
                                                                                }

                                                                                v37 = v33 - 97;
LABEL_215:
                                                                                if (v37 >= 0x1A)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_216;
                                                                              }

                                                                              if (v33 != 45)
                                                                              {
                                                                                if (v33 < 0x30)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_216;
                                                                              }

LABEL_197:
                                                                              v36 = v6[12];
                                                                              if (v36 <= 0x39)
                                                                              {
                                                                                if (v36 == 45)
                                                                                {
                                                                                  goto LABEL_220;
                                                                                }

                                                                                if (v36 < 0x30)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_236;
                                                                              }

                                                                              if (v36 <= 0x5A)
                                                                              {
                                                                                if (v36 < 0x41)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_236;
                                                                              }

                                                                              v40 = v36 - 97;
LABEL_235:
                                                                              if (v40 >= 0x1A)
                                                                              {
                                                                                return 0;
                                                                              }

LABEL_236:
                                                                              v4 = v6 + 13;
                                                                              v41 = v6[13];
                                                                              if (v41 > 0x3D)
                                                                              {
                                                                                if (v41 > 0x5A)
                                                                                {
                                                                                  v43 = v41 - 97;
                                                                                  goto LABEL_255;
                                                                                }

                                                                                if (v41 == 62)
                                                                                {
                                                                                  return (v4 - a1 + 1);
                                                                                }

                                                                                if (v41 < 0x41)
                                                                                {
                                                                                  return 0;
                                                                                }

LABEL_256:
                                                                                v4 = v6 + 14;
                                                                                v44 = v6[14];
                                                                                if (v44 > 0x3D)
                                                                                {
                                                                                  if (v44 <= 0x5A)
                                                                                  {
                                                                                    if (v44 == 62)
                                                                                    {
                                                                                      return (v4 - a1 + 1);
                                                                                    }

                                                                                    if (v44 < 0x41)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_276;
                                                                                  }

                                                                                  v46 = v44 - 97;
LABEL_275:
                                                                                  if (v46 >= 0x1A)
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  goto LABEL_276;
                                                                                }

                                                                                if (v44 > 0x2E)
                                                                                {
                                                                                  v2 = 0;
                                                                                  if (v44 == 47 || v44 >= 0x3A)
                                                                                  {
                                                                                    return v2;
                                                                                  }

                                                                                  goto LABEL_276;
                                                                                }

                                                                                if (v44 < 0x2D)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                if (v44 != 46)
                                                                                {
LABEL_260:
                                                                                  v45 = v6[15];
                                                                                  if (v45 > 0x39)
                                                                                  {
                                                                                    if (v45 <= 0x5A)
                                                                                    {
                                                                                      if (v45 < 0x41)
                                                                                      {
                                                                                        return 0;
                                                                                      }

                                                                                      goto LABEL_297;
                                                                                    }

                                                                                    v49 = v45 - 97;
LABEL_296:
                                                                                    if (v49 >= 0x1A)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_297;
                                                                                  }

                                                                                  if (v45 != 45)
                                                                                  {
                                                                                    if (v45 < 0x30)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_297;
                                                                                  }

LABEL_280:
                                                                                  v48 = v6[16];
                                                                                  if (v48 <= 0x39)
                                                                                  {
                                                                                    if (v48 == 45)
                                                                                    {
                                                                                      goto LABEL_301;
                                                                                    }

                                                                                    if (v48 < 0x30)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_319;
                                                                                  }

                                                                                  if (v48 <= 0x5A)
                                                                                  {
                                                                                    if (v48 < 0x41)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_319;
                                                                                  }

                                                                                  v52 = v48 - 97;
LABEL_318:
                                                                                  if (v52 >= 0x1A)
                                                                                  {
                                                                                    return 0;
                                                                                  }

LABEL_319:
                                                                                  v4 = v6 + 17;
                                                                                  v53 = v6[17];
                                                                                  if (v53 > 0x3D)
                                                                                  {
                                                                                    if (v53 > 0x5A)
                                                                                    {
                                                                                      v55 = v53 - 97;
                                                                                      goto LABEL_339;
                                                                                    }

                                                                                    if (v53 == 62)
                                                                                    {
                                                                                      return (v4 - a1 + 1);
                                                                                    }

                                                                                    if (v53 < 0x41)
                                                                                    {
                                                                                      return 0;
                                                                                    }

LABEL_340:
                                                                                    v4 = v6 + 18;
                                                                                    v56 = v6[18];
                                                                                    if (v56 > 0x3D)
                                                                                    {
                                                                                      if (v56 <= 0x5A)
                                                                                      {
                                                                                        if (v56 == 62)
                                                                                        {
                                                                                          return (v4 - a1 + 1);
                                                                                        }

                                                                                        if (v56 < 0x41)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_361;
                                                                                      }

                                                                                      v58 = v56 - 97;
LABEL_360:
                                                                                      if (v58 >= 0x1A)
                                                                                      {
                                                                                        return 0;
                                                                                      }

                                                                                      goto LABEL_361;
                                                                                    }

                                                                                    if (v56 > 0x2E)
                                                                                    {
                                                                                      v2 = 0;
                                                                                      if (v56 == 47 || v56 >= 0x3A)
                                                                                      {
                                                                                        return v2;
                                                                                      }

                                                                                      goto LABEL_361;
                                                                                    }

                                                                                    if (v56 < 0x2D)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    if (v56 != 46)
                                                                                    {
LABEL_344:
                                                                                      v57 = v6[19];
                                                                                      if (v57 > 0x39)
                                                                                      {
                                                                                        if (v57 <= 0x5A)
                                                                                        {
                                                                                          if (v57 < 0x41)
                                                                                          {
                                                                                            return 0;
                                                                                          }

                                                                                          goto LABEL_382;
                                                                                        }

                                                                                        v61 = v57 - 97;
LABEL_381:
                                                                                        if (v61 >= 0x1A)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_382;
                                                                                      }

                                                                                      if (v57 != 45)
                                                                                      {
                                                                                        if (v57 < 0x30)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_382;
                                                                                      }

LABEL_365:
                                                                                      v60 = v6[20];
                                                                                      if (v60 <= 0x39)
                                                                                      {
                                                                                        if (v60 == 45)
                                                                                        {
                                                                                          goto LABEL_386;
                                                                                        }

                                                                                        if (v60 < 0x30)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_403;
                                                                                      }

                                                                                      if (v60 <= 0x5A)
                                                                                      {
                                                                                        if (v60 < 0x41)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_403;
                                                                                      }

                                                                                      v64 = v60 - 97;
LABEL_402:
                                                                                      if (v64 >= 0x1A)
                                                                                      {
                                                                                        return 0;
                                                                                      }

LABEL_403:
                                                                                      v4 = v6 + 21;
                                                                                      v65 = v6[21];
                                                                                      if (v65 > 0x3D)
                                                                                      {
                                                                                        if (v65 > 0x5A)
                                                                                        {
                                                                                          v67 = v65 - 97;
                                                                                          goto LABEL_423;
                                                                                        }

                                                                                        if (v65 == 62)
                                                                                        {
                                                                                          return (v4 - a1 + 1);
                                                                                        }

                                                                                        if (v65 < 0x41)
                                                                                        {
                                                                                          return 0;
                                                                                        }

LABEL_424:
                                                                                        v4 = v6 + 22;
                                                                                        v68 = v6[22];
                                                                                        if (v68 > 0x3D)
                                                                                        {
                                                                                          if (v68 <= 0x5A)
                                                                                          {
                                                                                            if (v68 == 62)
                                                                                            {
                                                                                              return (v4 - a1 + 1);
                                                                                            }

                                                                                            if (v68 < 0x41)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_445;
                                                                                          }

                                                                                          v70 = v68 - 97;
LABEL_444:
                                                                                          if (v70 >= 0x1A)
                                                                                          {
                                                                                            return 0;
                                                                                          }

                                                                                          goto LABEL_445;
                                                                                        }

                                                                                        if (v68 > 0x2E)
                                                                                        {
                                                                                          v2 = 0;
                                                                                          if (v68 == 47 || v68 >= 0x3A)
                                                                                          {
                                                                                            return v2;
                                                                                          }

                                                                                          goto LABEL_445;
                                                                                        }

                                                                                        if (v68 < 0x2D)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        if (v68 != 46)
                                                                                        {
LABEL_428:
                                                                                          v69 = v6[23];
                                                                                          if (v69 > 0x39)
                                                                                          {
                                                                                            if (v69 <= 0x5A)
                                                                                            {
                                                                                              if (v69 < 0x41)
                                                                                              {
                                                                                                return 0;
                                                                                              }

                                                                                              goto LABEL_466;
                                                                                            }

                                                                                            v73 = v69 - 97;
LABEL_465:
                                                                                            if (v73 >= 0x1A)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_466;
                                                                                          }

                                                                                          if (v69 != 45)
                                                                                          {
                                                                                            if (v69 < 0x30)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_466;
                                                                                          }

LABEL_449:
                                                                                          v72 = v6[24];
                                                                                          if (v72 <= 0x39)
                                                                                          {
                                                                                            if (v72 == 45)
                                                                                            {
                                                                                              goto LABEL_470;
                                                                                            }

                                                                                            if (v72 < 0x30)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_487;
                                                                                          }

                                                                                          if (v72 <= 0x5A)
                                                                                          {
                                                                                            if (v72 < 0x41)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_487;
                                                                                          }

                                                                                          v76 = v72 - 97;
LABEL_486:
                                                                                          if (v76 >= 0x1A)
                                                                                          {
                                                                                            return 0;
                                                                                          }

LABEL_487:
                                                                                          v4 = v6 + 25;
                                                                                          v77 = v6[25];
                                                                                          if (v77 > 0x3D)
                                                                                          {
                                                                                            if (v77 > 0x5A)
                                                                                            {
                                                                                              v79 = v77 - 97;
                                                                                              goto LABEL_507;
                                                                                            }

                                                                                            if (v77 == 62)
                                                                                            {
                                                                                              return (v4 - a1 + 1);
                                                                                            }

                                                                                            if (v77 < 0x41)
                                                                                            {
                                                                                              return 0;
                                                                                            }

LABEL_508:
                                                                                            v4 = v6 + 26;
                                                                                            v80 = v6[26];
                                                                                            if (v80 > 0x3D)
                                                                                            {
                                                                                              if (v80 <= 0x5A)
                                                                                              {
                                                                                                if (v80 == 62)
                                                                                                {
                                                                                                  return (v4 - a1 + 1);
                                                                                                }

                                                                                                if (v80 < 0x41)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_529;
                                                                                              }

                                                                                              v82 = v80 - 97;
LABEL_528:
                                                                                              if (v82 >= 0x1A)
                                                                                              {
                                                                                                return 0;
                                                                                              }

                                                                                              goto LABEL_529;
                                                                                            }

                                                                                            if (v80 > 0x2E)
                                                                                            {
                                                                                              v2 = 0;
                                                                                              if (v80 == 47 || v80 >= 0x3A)
                                                                                              {
                                                                                                return v2;
                                                                                              }

                                                                                              goto LABEL_529;
                                                                                            }

                                                                                            if (v80 < 0x2D)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            if (v80 != 46)
                                                                                            {
LABEL_512:
                                                                                              v81 = v6[27];
                                                                                              if (v81 > 0x39)
                                                                                              {
                                                                                                if (v81 <= 0x5A)
                                                                                                {
                                                                                                  if (v81 < 0x41)
                                                                                                  {
                                                                                                    return 0;
                                                                                                  }

                                                                                                  goto LABEL_550;
                                                                                                }

                                                                                                v85 = v81 - 97;
LABEL_549:
                                                                                                if (v85 >= 0x1A)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_550;
                                                                                              }

                                                                                              if (v81 != 45)
                                                                                              {
                                                                                                if (v81 < 0x30)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_550;
                                                                                              }

LABEL_533:
                                                                                              v84 = v6[28];
                                                                                              if (v84 <= 0x39)
                                                                                              {
                                                                                                if (v84 == 45)
                                                                                                {
                                                                                                  goto LABEL_554;
                                                                                                }

                                                                                                if (v84 < 0x30)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_571;
                                                                                              }

                                                                                              if (v84 <= 0x5A)
                                                                                              {
                                                                                                if (v84 < 0x41)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_571;
                                                                                              }

                                                                                              v88 = v84 - 97;
LABEL_570:
                                                                                              if (v88 >= 0x1A)
                                                                                              {
                                                                                                return 0;
                                                                                              }

LABEL_571:
                                                                                              v4 = v6 + 29;
                                                                                              v89 = v6[29];
                                                                                              if (v89 > 0x3D)
                                                                                              {
                                                                                                if (v89 > 0x5A)
                                                                                                {
                                                                                                  v91 = v89 - 97;
                                                                                                  goto LABEL_591;
                                                                                                }

                                                                                                if (v89 == 62)
                                                                                                {
                                                                                                  return (v4 - a1 + 1);
                                                                                                }

                                                                                                if (v89 < 0x41)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

LABEL_592:
                                                                                                v4 = v6 + 30;
                                                                                                v92 = v6[30];
                                                                                                if (v92 > 0x3D)
                                                                                                {
                                                                                                  if (v92 <= 0x5A)
                                                                                                  {
                                                                                                    if (v92 == 62)
                                                                                                    {
                                                                                                      return (v4 - a1 + 1);
                                                                                                    }

                                                                                                    if (v92 < 0x41)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_613;
                                                                                                  }

                                                                                                  v94 = v92 - 97;
LABEL_612:
                                                                                                  if (v94 >= 0x1A)
                                                                                                  {
                                                                                                    return 0;
                                                                                                  }

                                                                                                  goto LABEL_613;
                                                                                                }

                                                                                                if (v92 > 0x2E)
                                                                                                {
                                                                                                  v2 = 0;
                                                                                                  if (v92 == 47 || v92 >= 0x3A)
                                                                                                  {
                                                                                                    return v2;
                                                                                                  }

                                                                                                  goto LABEL_613;
                                                                                                }

                                                                                                if (v92 < 0x2D)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                if (v92 != 46)
                                                                                                {
LABEL_596:
                                                                                                  v93 = v6[31];
                                                                                                  if (v93 > 0x39)
                                                                                                  {
                                                                                                    if (v93 <= 0x5A)
                                                                                                    {
                                                                                                      if (v93 < 0x41)
                                                                                                      {
                                                                                                        return 0;
                                                                                                      }

                                                                                                      goto LABEL_634;
                                                                                                    }

                                                                                                    v97 = v93 - 97;
LABEL_633:
                                                                                                    if (v97 >= 0x1A)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_634;
                                                                                                  }

                                                                                                  if (v93 != 45)
                                                                                                  {
                                                                                                    if (v93 < 0x30)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_634;
                                                                                                  }

LABEL_617:
                                                                                                  v96 = v6[32];
                                                                                                  if (v96 <= 0x39)
                                                                                                  {
                                                                                                    if (v96 == 45)
                                                                                                    {
                                                                                                      goto LABEL_638;
                                                                                                    }

                                                                                                    if (v96 < 0x30)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_655;
                                                                                                  }

                                                                                                  if (v96 <= 0x5A)
                                                                                                  {
                                                                                                    if (v96 < 0x41)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_655;
                                                                                                  }

                                                                                                  v100 = v96 - 97;
LABEL_654:
                                                                                                  if (v100 >= 0x1A)
                                                                                                  {
                                                                                                    return 0;
                                                                                                  }

LABEL_655:
                                                                                                  v4 = v6 + 33;
                                                                                                  v101 = v6[33];
                                                                                                  if (v101 > 0x3D)
                                                                                                  {
                                                                                                    if (v101 > 0x5A)
                                                                                                    {
                                                                                                      v103 = v101 - 97;
                                                                                                      goto LABEL_675;
                                                                                                    }

                                                                                                    if (v101 == 62)
                                                                                                    {
                                                                                                      return (v4 - a1 + 1);
                                                                                                    }

                                                                                                    if (v101 < 0x41)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

LABEL_676:
                                                                                                    v4 = v6 + 34;
                                                                                                    v104 = v6[34];
                                                                                                    if (v104 > 0x3D)
                                                                                                    {
                                                                                                      if (v104 <= 0x5A)
                                                                                                      {
                                                                                                        if (v104 == 62)
                                                                                                        {
                                                                                                          return (v4 - a1 + 1);
                                                                                                        }

                                                                                                        if (v104 < 0x41)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_697;
                                                                                                      }

                                                                                                      v106 = v104 - 97;
LABEL_696:
                                                                                                      if (v106 >= 0x1A)
                                                                                                      {
                                                                                                        return 0;
                                                                                                      }

                                                                                                      goto LABEL_697;
                                                                                                    }

                                                                                                    if (v104 > 0x2E)
                                                                                                    {
                                                                                                      v2 = 0;
                                                                                                      if (v104 == 47 || v104 >= 0x3A)
                                                                                                      {
                                                                                                        return v2;
                                                                                                      }

                                                                                                      goto LABEL_697;
                                                                                                    }

                                                                                                    if (v104 < 0x2D)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    if (v104 != 46)
                                                                                                    {
LABEL_680:
                                                                                                      v105 = v6[35];
                                                                                                      if (v105 > 0x39)
                                                                                                      {
                                                                                                        if (v105 <= 0x5A)
                                                                                                        {
                                                                                                          if (v105 < 0x41)
                                                                                                          {
                                                                                                            return 0;
                                                                                                          }

                                                                                                          goto LABEL_718;
                                                                                                        }

                                                                                                        v109 = v105 - 97;
LABEL_717:
                                                                                                        if (v109 >= 0x1A)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_718;
                                                                                                      }

                                                                                                      if (v105 != 45)
                                                                                                      {
                                                                                                        if (v105 < 0x30)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_718;
                                                                                                      }

LABEL_701:
                                                                                                      v108 = v6[36];
                                                                                                      if (v108 <= 0x39)
                                                                                                      {
                                                                                                        if (v108 == 45)
                                                                                                        {
                                                                                                          goto LABEL_722;
                                                                                                        }

                                                                                                        if (v108 < 0x30)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_739;
                                                                                                      }

                                                                                                      if (v108 <= 0x5A)
                                                                                                      {
                                                                                                        if (v108 < 0x41)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_739;
                                                                                                      }

                                                                                                      v112 = v108 - 97;
LABEL_738:
                                                                                                      if (v112 >= 0x1A)
                                                                                                      {
                                                                                                        return 0;
                                                                                                      }

LABEL_739:
                                                                                                      v4 = v6 + 37;
                                                                                                      v113 = v6[37];
                                                                                                      if (v113 > 0x3D)
                                                                                                      {
                                                                                                        if (v113 > 0x5A)
                                                                                                        {
                                                                                                          v115 = v113 - 97;
                                                                                                          goto LABEL_759;
                                                                                                        }

                                                                                                        if (v113 == 62)
                                                                                                        {
                                                                                                          return (v4 - a1 + 1);
                                                                                                        }

                                                                                                        if (v113 < 0x41)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

LABEL_760:
                                                                                                        v4 = v6 + 38;
                                                                                                        v116 = v6[38];
                                                                                                        if (v116 > 0x3D)
                                                                                                        {
                                                                                                          if (v116 <= 0x5A)
                                                                                                          {
                                                                                                            if (v116 == 62)
                                                                                                            {
                                                                                                              return (v4 - a1 + 1);
                                                                                                            }

                                                                                                            if (v116 < 0x41)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_781;
                                                                                                          }

                                                                                                          v118 = v116 - 97;
LABEL_780:
                                                                                                          if (v118 >= 0x1A)
                                                                                                          {
                                                                                                            return 0;
                                                                                                          }

                                                                                                          goto LABEL_781;
                                                                                                        }

                                                                                                        if (v116 > 0x2E)
                                                                                                        {
                                                                                                          v2 = 0;
                                                                                                          if (v116 == 47 || v116 >= 0x3A)
                                                                                                          {
                                                                                                            return v2;
                                                                                                          }

                                                                                                          goto LABEL_781;
                                                                                                        }

                                                                                                        if (v116 < 0x2D)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        if (v116 != 46)
                                                                                                        {
LABEL_764:
                                                                                                          v117 = v6[39];
                                                                                                          if (v117 > 0x39)
                                                                                                          {
                                                                                                            if (v117 <= 0x5A)
                                                                                                            {
                                                                                                              if (v117 < 0x41)
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }

                                                                                                              goto LABEL_802;
                                                                                                            }

                                                                                                            v121 = v117 - 97;
LABEL_801:
                                                                                                            if (v121 >= 0x1A)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_802;
                                                                                                          }

                                                                                                          if (v117 != 45)
                                                                                                          {
                                                                                                            if (v117 < 0x30)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_802;
                                                                                                          }

LABEL_785:
                                                                                                          v120 = v6[40];
                                                                                                          if (v120 <= 0x39)
                                                                                                          {
                                                                                                            if (v120 == 45)
                                                                                                            {
                                                                                                              goto LABEL_806;
                                                                                                            }

                                                                                                            if (v120 < 0x30)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_823;
                                                                                                          }

                                                                                                          if (v120 <= 0x5A)
                                                                                                          {
                                                                                                            if (v120 < 0x41)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_823;
                                                                                                          }

                                                                                                          v124 = v120 - 97;
LABEL_822:
                                                                                                          if (v124 >= 0x1A)
                                                                                                          {
                                                                                                            return 0;
                                                                                                          }

LABEL_823:
                                                                                                          v4 = v6 + 41;
                                                                                                          v125 = v6[41];
                                                                                                          if (v125 > 0x3D)
                                                                                                          {
                                                                                                            if (v125 > 0x5A)
                                                                                                            {
                                                                                                              v127 = v125 - 97;
                                                                                                              goto LABEL_843;
                                                                                                            }

                                                                                                            if (v125 == 62)
                                                                                                            {
                                                                                                              return (v4 - a1 + 1);
                                                                                                            }

                                                                                                            if (v125 < 0x41)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

LABEL_844:
                                                                                                            v4 = v6 + 42;
                                                                                                            v128 = v6[42];
                                                                                                            if (v128 > 0x3D)
                                                                                                            {
                                                                                                              if (v128 <= 0x5A)
                                                                                                              {
                                                                                                                if (v128 == 62)
                                                                                                                {
                                                                                                                  return (v4 - a1 + 1);
                                                                                                                }

                                                                                                                if (v128 < 0x41)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_865;
                                                                                                              }

                                                                                                              v130 = v128 - 97;
LABEL_864:
                                                                                                              if (v130 >= 0x1A)
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }

                                                                                                              goto LABEL_865;
                                                                                                            }

                                                                                                            if (v128 > 0x2E)
                                                                                                            {
                                                                                                              v2 = 0;
                                                                                                              if (v128 == 47 || v128 >= 0x3A)
                                                                                                              {
                                                                                                                return v2;
                                                                                                              }

                                                                                                              goto LABEL_865;
                                                                                                            }

                                                                                                            if (v128 < 0x2D)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            if (v128 != 46)
                                                                                                            {
LABEL_848:
                                                                                                              v129 = v6[43];
                                                                                                              if (v129 > 0x39)
                                                                                                              {
                                                                                                                if (v129 <= 0x5A)
                                                                                                                {
                                                                                                                  if (v129 < 0x41)
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }

                                                                                                                  goto LABEL_886;
                                                                                                                }

                                                                                                                v133 = v129 - 97;
LABEL_885:
                                                                                                                if (v133 >= 0x1A)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_886;
                                                                                                              }

                                                                                                              if (v129 != 45)
                                                                                                              {
                                                                                                                if (v129 < 0x30)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_886;
                                                                                                              }

LABEL_869:
                                                                                                              v132 = v6[44];
                                                                                                              if (v132 <= 0x39)
                                                                                                              {
                                                                                                                if (v132 == 45)
                                                                                                                {
                                                                                                                  goto LABEL_890;
                                                                                                                }

                                                                                                                if (v132 < 0x30)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_907;
                                                                                                              }

                                                                                                              if (v132 <= 0x5A)
                                                                                                              {
                                                                                                                if (v132 < 0x41)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_907;
                                                                                                              }

                                                                                                              v136 = v132 - 97;
LABEL_906:
                                                                                                              if (v136 >= 0x1A)
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }

LABEL_907:
                                                                                                              v4 = v6 + 45;
                                                                                                              v137 = v6[45];
                                                                                                              if (v137 > 0x3D)
                                                                                                              {
                                                                                                                if (v137 > 0x5A)
                                                                                                                {
                                                                                                                  v139 = v137 - 97;
                                                                                                                  goto LABEL_927;
                                                                                                                }

                                                                                                                if (v137 == 62)
                                                                                                                {
                                                                                                                  return (v4 - a1 + 1);
                                                                                                                }

                                                                                                                if (v137 < 0x41)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

LABEL_928:
                                                                                                                v4 = v6 + 46;
                                                                                                                v140 = v6[46];
                                                                                                                if (v140 > 0x3D)
                                                                                                                {
                                                                                                                  if (v140 <= 0x5A)
                                                                                                                  {
                                                                                                                    if (v140 == 62)
                                                                                                                    {
                                                                                                                      return (v4 - a1 + 1);
                                                                                                                    }

                                                                                                                    if (v140 < 0x41)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_949;
                                                                                                                  }

                                                                                                                  v142 = v140 - 97;
LABEL_948:
                                                                                                                  if (v142 >= 0x1A)
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }

                                                                                                                  goto LABEL_949;
                                                                                                                }

                                                                                                                if (v140 > 0x2E)
                                                                                                                {
                                                                                                                  v2 = 0;
                                                                                                                  if (v140 == 47 || v140 >= 0x3A)
                                                                                                                  {
                                                                                                                    return v2;
                                                                                                                  }

                                                                                                                  goto LABEL_949;
                                                                                                                }

                                                                                                                if (v140 < 0x2D)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                if (v140 != 46)
                                                                                                                {
LABEL_932:
                                                                                                                  v141 = v6[47];
                                                                                                                  if (v141 > 0x39)
                                                                                                                  {
                                                                                                                    if (v141 <= 0x5A)
                                                                                                                    {
                                                                                                                      if (v141 < 0x41)
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }

                                                                                                                      goto LABEL_970;
                                                                                                                    }

                                                                                                                    v145 = v141 - 97;
LABEL_969:
                                                                                                                    if (v145 >= 0x1A)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_970;
                                                                                                                  }

                                                                                                                  if (v141 != 45)
                                                                                                                  {
                                                                                                                    if (v141 < 0x30)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_970;
                                                                                                                  }

LABEL_953:
                                                                                                                  v144 = v6[48];
                                                                                                                  if (v144 <= 0x39)
                                                                                                                  {
                                                                                                                    if (v144 == 45)
                                                                                                                    {
                                                                                                                      goto LABEL_974;
                                                                                                                    }

                                                                                                                    if (v144 < 0x30)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_991;
                                                                                                                  }

                                                                                                                  if (v144 <= 0x5A)
                                                                                                                  {
                                                                                                                    if (v144 < 0x41)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_991;
                                                                                                                  }

                                                                                                                  v148 = v144 - 97;
LABEL_990:
                                                                                                                  if (v148 >= 0x1A)
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }

LABEL_991:
                                                                                                                  v4 = v6 + 49;
                                                                                                                  v149 = v6[49];
                                                                                                                  if (v149 > 0x3D)
                                                                                                                  {
                                                                                                                    if (v149 > 0x5A)
                                                                                                                    {
                                                                                                                      v151 = v149 - 97;
                                                                                                                      goto LABEL_1011;
                                                                                                                    }

                                                                                                                    if (v149 == 62)
                                                                                                                    {
                                                                                                                      return (v4 - a1 + 1);
                                                                                                                    }

                                                                                                                    if (v149 < 0x41)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

LABEL_1012:
                                                                                                                    v4 = v6 + 50;
                                                                                                                    v152 = v6[50];
                                                                                                                    if (v152 > 0x3D)
                                                                                                                    {
                                                                                                                      if (v152 <= 0x5A)
                                                                                                                      {
                                                                                                                        if (v152 == 62)
                                                                                                                        {
                                                                                                                          return (v4 - a1 + 1);
                                                                                                                        }

                                                                                                                        if (v152 < 0x41)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1033;
                                                                                                                      }

                                                                                                                      v154 = v152 - 97;
LABEL_1032:
                                                                                                                      if (v154 >= 0x1A)
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }

                                                                                                                      goto LABEL_1033;
                                                                                                                    }

                                                                                                                    if (v152 > 0x2E)
                                                                                                                    {
                                                                                                                      v2 = 0;
                                                                                                                      if (v152 == 47 || v152 >= 0x3A)
                                                                                                                      {
                                                                                                                        return v2;
                                                                                                                      }

                                                                                                                      goto LABEL_1033;
                                                                                                                    }

                                                                                                                    if (v152 < 0x2D)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    if (v152 != 46)
                                                                                                                    {
LABEL_1016:
                                                                                                                      v153 = v6[51];
                                                                                                                      if (v153 > 0x39)
                                                                                                                      {
                                                                                                                        if (v153 <= 0x5A)
                                                                                                                        {
                                                                                                                          if (v153 < 0x41)
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }

                                                                                                                          goto LABEL_1054;
                                                                                                                        }

                                                                                                                        v157 = v153 - 97;
LABEL_1053:
                                                                                                                        if (v157 >= 0x1A)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1054;
                                                                                                                      }

                                                                                                                      if (v153 != 45)
                                                                                                                      {
                                                                                                                        if (v153 < 0x30)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1054;
                                                                                                                      }

LABEL_1037:
                                                                                                                      v156 = v6[52];
                                                                                                                      if (v156 <= 0x39)
                                                                                                                      {
                                                                                                                        if (v156 == 45)
                                                                                                                        {
                                                                                                                          goto LABEL_1058;
                                                                                                                        }

                                                                                                                        if (v156 < 0x30)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1075;
                                                                                                                      }

                                                                                                                      if (v156 <= 0x5A)
                                                                                                                      {
                                                                                                                        if (v156 < 0x41)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1075;
                                                                                                                      }

                                                                                                                      v160 = v156 - 97;
LABEL_1074:
                                                                                                                      if (v160 >= 0x1A)
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }

LABEL_1075:
                                                                                                                      v4 = v6 + 53;
                                                                                                                      v161 = v6[53];
                                                                                                                      if (v161 > 0x3D)
                                                                                                                      {
                                                                                                                        if (v161 > 0x5A)
                                                                                                                        {
                                                                                                                          v163 = v161 - 97;
                                                                                                                          goto LABEL_1095;
                                                                                                                        }

                                                                                                                        if (v161 == 62)
                                                                                                                        {
                                                                                                                          return (v4 - a1 + 1);
                                                                                                                        }

                                                                                                                        if (v161 < 0x41)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

LABEL_1096:
                                                                                                                        v4 = v6 + 54;
                                                                                                                        v164 = v6[54];
                                                                                                                        if (v164 > 0x3D)
                                                                                                                        {
                                                                                                                          if (v164 <= 0x5A)
                                                                                                                          {
                                                                                                                            if (v164 == 62)
                                                                                                                            {
                                                                                                                              return (v4 - a1 + 1);
                                                                                                                            }

                                                                                                                            if (v164 < 0x41)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1117;
                                                                                                                          }

                                                                                                                          v166 = v164 - 97;
LABEL_1116:
                                                                                                                          if (v166 >= 0x1A)
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }

                                                                                                                          goto LABEL_1117;
                                                                                                                        }

                                                                                                                        if (v164 > 0x2E)
                                                                                                                        {
                                                                                                                          v2 = 0;
                                                                                                                          if (v164 == 47 || v164 >= 0x3A)
                                                                                                                          {
                                                                                                                            return v2;
                                                                                                                          }

                                                                                                                          goto LABEL_1117;
                                                                                                                        }

                                                                                                                        if (v164 < 0x2D)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        if (v164 != 46)
                                                                                                                        {
LABEL_1100:
                                                                                                                          v165 = v6[55];
                                                                                                                          if (v165 > 0x39)
                                                                                                                          {
                                                                                                                            if (v165 <= 0x5A)
                                                                                                                            {
                                                                                                                              if (v165 < 0x41)
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }

                                                                                                                              goto LABEL_1138;
                                                                                                                            }

                                                                                                                            v169 = v165 - 97;
LABEL_1137:
                                                                                                                            if (v169 >= 0x1A)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1138;
                                                                                                                          }

                                                                                                                          if (v165 != 45)
                                                                                                                          {
                                                                                                                            if (v165 < 0x30)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1138;
                                                                                                                          }

LABEL_1121:
                                                                                                                          v168 = v6[56];
                                                                                                                          if (v168 <= 0x39)
                                                                                                                          {
                                                                                                                            if (v168 == 45)
                                                                                                                            {
                                                                                                                              goto LABEL_1142;
                                                                                                                            }

                                                                                                                            if (v168 < 0x30)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1159;
                                                                                                                          }

                                                                                                                          if (v168 <= 0x5A)
                                                                                                                          {
                                                                                                                            if (v168 < 0x41)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1159;
                                                                                                                          }

                                                                                                                          v172 = v168 - 97;
LABEL_1158:
                                                                                                                          if (v172 >= 0x1A)
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }

LABEL_1159:
                                                                                                                          v4 = v6 + 57;
                                                                                                                          v173 = v6[57];
                                                                                                                          if (v173 > 0x3D)
                                                                                                                          {
                                                                                                                            if (v173 > 0x5A)
                                                                                                                            {
                                                                                                                              v175 = v173 - 97;
                                                                                                                              goto LABEL_1179;
                                                                                                                            }

                                                                                                                            if (v173 == 62)
                                                                                                                            {
                                                                                                                              return (v4 - a1 + 1);
                                                                                                                            }

                                                                                                                            if (v173 < 0x41)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

LABEL_1180:
                                                                                                                            v4 = v6 + 58;
                                                                                                                            v176 = v6[58];
                                                                                                                            if (v176 > 0x3D)
                                                                                                                            {
                                                                                                                              if (v176 <= 0x5A)
                                                                                                                              {
                                                                                                                                if (v176 == 62)
                                                                                                                                {
                                                                                                                                  return (v4 - a1 + 1);
                                                                                                                                }

                                                                                                                                if (v176 < 0x41)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1201;
                                                                                                                              }

                                                                                                                              v178 = v176 - 97;
LABEL_1200:
                                                                                                                              if (v178 >= 0x1A)
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }

                                                                                                                              goto LABEL_1201;
                                                                                                                            }

                                                                                                                            if (v176 > 0x2E)
                                                                                                                            {
                                                                                                                              v2 = 0;
                                                                                                                              if (v176 == 47 || v176 >= 0x3A)
                                                                                                                              {
                                                                                                                                return v2;
                                                                                                                              }

                                                                                                                              goto LABEL_1201;
                                                                                                                            }

                                                                                                                            if (v176 < 0x2D)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            if (v176 != 46)
                                                                                                                            {
LABEL_1184:
                                                                                                                              v177 = v6[59];
                                                                                                                              if (v177 > 0x39)
                                                                                                                              {
                                                                                                                                if (v177 <= 0x5A)
                                                                                                                                {
                                                                                                                                  if (v177 < 0x41)
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1222;
                                                                                                                                }

                                                                                                                                v181 = v177 - 97;
LABEL_1221:
                                                                                                                                if (v181 >= 0x1A)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1222;
                                                                                                                              }

                                                                                                                              if (v177 != 45)
                                                                                                                              {
                                                                                                                                if (v177 < 0x30)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1222;
                                                                                                                              }

LABEL_1205:
                                                                                                                              v180 = v6[60];
                                                                                                                              if (v180 <= 0x39)
                                                                                                                              {
                                                                                                                                if (v180 == 45)
                                                                                                                                {
                                                                                                                                  goto LABEL_1226;
                                                                                                                                }

                                                                                                                                if (v180 < 0x30)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1243;
                                                                                                                              }

                                                                                                                              if (v180 <= 0x5A)
                                                                                                                              {
                                                                                                                                if (v180 < 0x41)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1243;
                                                                                                                              }

                                                                                                                              v184 = v180 - 97;
LABEL_1242:
                                                                                                                              if (v184 >= 0x1A)
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }

LABEL_1243:
                                                                                                                              v4 = v6 + 61;
                                                                                                                              v185 = v6[61];
                                                                                                                              if (v185 > 0x3D)
                                                                                                                              {
                                                                                                                                if (v185 > 0x5A)
                                                                                                                                {
                                                                                                                                  v187 = v185 - 97;
                                                                                                                                  goto LABEL_1263;
                                                                                                                                }

                                                                                                                                if (v185 == 62)
                                                                                                                                {
                                                                                                                                  return (v4 - a1 + 1);
                                                                                                                                }

                                                                                                                                if (v185 < 0x41)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

LABEL_1264:
                                                                                                                                v4 = v6 + 62;
                                                                                                                                v188 = v6[62];
                                                                                                                                if (v188 > 0x3D)
                                                                                                                                {
                                                                                                                                  if (v188 <= 0x5A)
                                                                                                                                  {
                                                                                                                                    if (v188 == 62)
                                                                                                                                    {
                                                                                                                                      return (v4 - a1 + 1);
                                                                                                                                    }

                                                                                                                                    if (v188 < 0x41)
                                                                                                                                    {
                                                                                                                                      return 0;
                                                                                                                                    }

                                                                                                                                    goto LABEL_1284;
                                                                                                                                  }

                                                                                                                                  v190 = v188 - 97;
LABEL_1283:
                                                                                                                                  if (v190 >= 0x1A)
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1284;
                                                                                                                                }

                                                                                                                                if (v188 > 0x2E)
                                                                                                                                {
                                                                                                                                  v2 = 0;
                                                                                                                                  if (v188 == 47 || v188 >= 0x3A)
                                                                                                                                  {
                                                                                                                                    return v2;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1284;
                                                                                                                                }

                                                                                                                                if (v188 < 0x2D)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                if (v188 != 46)
                                                                                                                                {
LABEL_1268:
                                                                                                                                  v189 = v6[63];
                                                                                                                                  if (v189 > 0x40)
                                                                                                                                  {
                                                                                                                                    if (v189 >= 0x5B && v189 - 97 >= 0x1A)
                                                                                                                                    {
                                                                                                                                      return 0;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else if (v189 - 48 >= 0xA)
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1300;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                if (v185 > 0x2E)
                                                                                                                                {
                                                                                                                                  v2 = 0;
                                                                                                                                  if (v185 == 47 || v185 >= 0x3A)
                                                                                                                                  {
                                                                                                                                    return v2;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1264;
                                                                                                                                }

                                                                                                                                if (v185 < 0x2D)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                if (v185 != 46)
                                                                                                                                {
                                                                                                                                  goto LABEL_1247;
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            if (v173 > 0x2E)
                                                                                                                            {
                                                                                                                              v2 = 0;
                                                                                                                              if (v173 == 47 || v173 >= 0x3A)
                                                                                                                              {
                                                                                                                                return v2;
                                                                                                                              }

                                                                                                                              goto LABEL_1180;
                                                                                                                            }

                                                                                                                            if (v173 < 0x2D)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            if (v173 != 46)
                                                                                                                            {
                                                                                                                              goto LABEL_1163;
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        if (v161 > 0x2E)
                                                                                                                        {
                                                                                                                          v2 = 0;
                                                                                                                          if (v161 == 47 || v161 >= 0x3A)
                                                                                                                          {
                                                                                                                            return v2;
                                                                                                                          }

                                                                                                                          goto LABEL_1096;
                                                                                                                        }

                                                                                                                        if (v161 < 0x2D)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        if (v161 != 46)
                                                                                                                        {
                                                                                                                          goto LABEL_1079;
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    if (v149 > 0x2E)
                                                                                                                    {
                                                                                                                      v2 = 0;
                                                                                                                      if (v149 == 47 || v149 >= 0x3A)
                                                                                                                      {
                                                                                                                        return v2;
                                                                                                                      }

                                                                                                                      goto LABEL_1012;
                                                                                                                    }

                                                                                                                    if (v149 < 0x2D)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    if (v149 != 46)
                                                                                                                    {
                                                                                                                      goto LABEL_995;
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                if (v137 > 0x2E)
                                                                                                                {
                                                                                                                  v2 = 0;
                                                                                                                  if (v137 == 47 || v137 >= 0x3A)
                                                                                                                  {
                                                                                                                    return v2;
                                                                                                                  }

                                                                                                                  goto LABEL_928;
                                                                                                                }

                                                                                                                if (v137 < 0x2D)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                if (v137 != 46)
                                                                                                                {
                                                                                                                  goto LABEL_911;
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            if (v125 > 0x2E)
                                                                                                            {
                                                                                                              v2 = 0;
                                                                                                              if (v125 == 47 || v125 >= 0x3A)
                                                                                                              {
                                                                                                                return v2;
                                                                                                              }

                                                                                                              goto LABEL_844;
                                                                                                            }

                                                                                                            if (v125 < 0x2D)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            if (v125 != 46)
                                                                                                            {
                                                                                                              goto LABEL_827;
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        if (v113 > 0x2E)
                                                                                                        {
                                                                                                          v2 = 0;
                                                                                                          if (v113 == 47 || v113 >= 0x3A)
                                                                                                          {
                                                                                                            return v2;
                                                                                                          }

                                                                                                          goto LABEL_760;
                                                                                                        }

                                                                                                        if (v113 < 0x2D)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        if (v113 != 46)
                                                                                                        {
                                                                                                          goto LABEL_743;
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    if (v101 > 0x2E)
                                                                                                    {
                                                                                                      v2 = 0;
                                                                                                      if (v101 == 47 || v101 >= 0x3A)
                                                                                                      {
                                                                                                        return v2;
                                                                                                      }

                                                                                                      goto LABEL_676;
                                                                                                    }

                                                                                                    if (v101 < 0x2D)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    if (v101 != 46)
                                                                                                    {
                                                                                                      goto LABEL_659;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                if (v89 > 0x2E)
                                                                                                {
                                                                                                  v2 = 0;
                                                                                                  if (v89 == 47 || v89 >= 0x3A)
                                                                                                  {
                                                                                                    return v2;
                                                                                                  }

                                                                                                  goto LABEL_592;
                                                                                                }

                                                                                                if (v89 < 0x2D)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                if (v89 != 46)
                                                                                                {
                                                                                                  goto LABEL_575;
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            if (v77 > 0x2E)
                                                                                            {
                                                                                              v2 = 0;
                                                                                              if (v77 == 47 || v77 >= 0x3A)
                                                                                              {
                                                                                                return v2;
                                                                                              }

                                                                                              goto LABEL_508;
                                                                                            }

                                                                                            if (v77 < 0x2D)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            if (v77 != 46)
                                                                                            {
                                                                                              goto LABEL_491;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        if (v65 > 0x2E)
                                                                                        {
                                                                                          v2 = 0;
                                                                                          if (v65 == 47 || v65 >= 0x3A)
                                                                                          {
                                                                                            return v2;
                                                                                          }

                                                                                          goto LABEL_424;
                                                                                        }

                                                                                        if (v65 < 0x2D)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        if (v65 != 46)
                                                                                        {
                                                                                          goto LABEL_407;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    if (v53 > 0x2E)
                                                                                    {
                                                                                      v2 = 0;
                                                                                      if (v53 == 47 || v53 >= 0x3A)
                                                                                      {
                                                                                        return v2;
                                                                                      }

                                                                                      goto LABEL_340;
                                                                                    }

                                                                                    if (v53 < 0x2D)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    if (v53 != 46)
                                                                                    {
                                                                                      goto LABEL_323;
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                if (v41 > 0x2E)
                                                                                {
                                                                                  v2 = 0;
                                                                                  if (v41 == 47 || v41 >= 0x3A)
                                                                                  {
                                                                                    return v2;
                                                                                  }

                                                                                  goto LABEL_256;
                                                                                }

                                                                                if (v41 < 0x2D)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                if (v41 != 46)
                                                                                {
                                                                                  goto LABEL_240;
                                                                                }
                                                                              }
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            if (v29 > 0x2E)
                                                                            {
                                                                              v2 = 0;
                                                                              if (v29 == 47 || v29 >= 0x3A)
                                                                              {
                                                                                return v2;
                                                                              }

                                                                              goto LABEL_176;
                                                                            }

                                                                            if (v29 < 0x2D)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            if (v29 != 46)
                                                                            {
                                                                              goto LABEL_163;
                                                                            }
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        if (v17 > 0x2E)
                                                                        {
                                                                          v2 = 0;
                                                                          if (v17 == 47 || v17 >= 0x3A)
                                                                          {
                                                                            return v2;
                                                                          }

                                                                          goto LABEL_108;
                                                                        }

                                                                        if (v17 < 0x2D)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        if (v17 != 46)
                                                                        {
                                                                          goto LABEL_95;
                                                                        }
                                                                      }
                                                                    }
                                                                  }

                                                                  if (v9 > 0x5A)
                                                                  {
                                                                    if (v9 - 97 >= 0x1A)
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    if (v9 == 62)
                                                                    {
                                                                      return (v4 - a1 + 1);
                                                                    }

                                                                    if (v9 < 0x41)
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

LABEL_57:
                                                                  v4 = v6 + 3;
                                                                  v11 = v6[3];
                                                                  if (v11 > 0x3D)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v11 > 0x2E)
                                                                  {
                                                                    v2 = 0;
                                                                    if (v11 == 47 || v11 >= 0x3A)
                                                                    {
                                                                      return v2;
                                                                    }

                                                                    goto LABEL_74;
                                                                  }

                                                                  if (v11 < 0x2D)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  if (v11 != 46)
                                                                  {
                                                                    goto LABEL_61;
                                                                  }
                                                                }

                                                                if (v11 > 0x5A)
                                                                {
                                                                  v13 = v11 - 97;
                                                                  goto LABEL_73;
                                                                }

                                                                if (v11 == 62)
                                                                {
                                                                  return (v4 - a1 + 1);
                                                                }

                                                                if (v11 < 0x41)
                                                                {
                                                                  return 0;
                                                                }

LABEL_74:
                                                                v4 = v6 + 4;
                                                                v14 = v6[4];
                                                                if (v14 > 0x3D)
                                                                {
                                                                  if (v14 <= 0x5A)
                                                                  {
                                                                    if (v14 == 62)
                                                                    {
                                                                      return (v4 - a1 + 1);
                                                                    }

                                                                    if (v14 < 0x41)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    goto LABEL_91;
                                                                  }

                                                                  v16 = v14 - 97;
                                                                  goto LABEL_90;
                                                                }

                                                                if (v14 > 0x2E)
                                                                {
                                                                  v2 = 0;
                                                                  if (v14 == 47 || v14 >= 0x3A)
                                                                  {
                                                                    return v2;
                                                                  }

                                                                  goto LABEL_91;
                                                                }

                                                                if (v14 < 0x2D)
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              while (v14 == 46);
LABEL_78:
                                                              v15 = v6[5];
                                                              if (v15 > 0x39)
                                                              {
                                                                if (v15 <= 0x5A)
                                                                {
                                                                  if (v15 < 0x41)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  goto LABEL_108;
                                                                }

                                                                v19 = v15 - 97;
LABEL_107:
                                                                if (v19 >= 0x1A)
                                                                {
                                                                  return 0;
                                                                }

                                                                goto LABEL_108;
                                                              }

                                                              if (v15 != 45)
                                                              {
                                                                if (v15 < 0x30)
                                                                {
                                                                  return 0;
                                                                }

                                                                goto LABEL_108;
                                                              }

LABEL_95:
                                                              v18 = v6[6];
                                                              if (v18 > 0x39)
                                                              {
                                                                if (v18 <= 0x5A)
                                                                {
                                                                  if (v18 < 0x41)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  goto LABEL_125;
                                                                }

                                                                v22 = v18 - 97;
                                                                goto LABEL_124;
                                                              }

                                                              if (v18 == 45)
                                                              {
                                                                goto LABEL_112;
                                                              }

                                                              if (v18 < 0x30)
                                                              {
                                                                return 0;
                                                              }

LABEL_125:
                                                              v4 = v6 + 7;
                                                              v23 = v6[7];
                                                              if (v23 > 0x3D)
                                                              {
                                                                break;
                                                              }

                                                              if (v23 > 0x2E)
                                                              {
                                                                v2 = 0;
                                                                if (v23 == 47 || v23 >= 0x3A)
                                                                {
                                                                  return v2;
                                                                }

                                                                goto LABEL_142;
                                                              }

                                                              if (v23 < 0x2D)
                                                              {
                                                                return 0;
                                                              }

                                                              if (v23 != 46)
                                                              {
                                                                goto LABEL_129;
                                                              }
                                                            }

                                                            if (v23 > 0x5A)
                                                            {
                                                              v25 = v23 - 97;
                                                              goto LABEL_141;
                                                            }

                                                            if (v23 == 62)
                                                            {
                                                              return (v4 - a1 + 1);
                                                            }

                                                            if (v23 < 0x41)
                                                            {
                                                              return 0;
                                                            }

LABEL_142:
                                                            v4 = v6 + 8;
                                                            v26 = v6[8];
                                                            if (v26 > 0x3D)
                                                            {
                                                              if (v26 <= 0x5A)
                                                              {
                                                                if (v26 == 62)
                                                                {
                                                                  return (v4 - a1 + 1);
                                                                }

                                                                if (v26 < 0x41)
                                                                {
                                                                  return 0;
                                                                }

                                                                goto LABEL_159;
                                                              }

                                                              v28 = v26 - 97;
                                                              goto LABEL_158;
                                                            }

                                                            if (v26 > 0x2E)
                                                            {
                                                              v2 = 0;
                                                              if (v26 == 47 || v26 >= 0x3A)
                                                              {
                                                                return v2;
                                                              }

                                                              goto LABEL_159;
                                                            }

                                                            if (v26 < 0x2D)
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          while (v26 == 46);
LABEL_146:
                                                          v27 = v6[9];
                                                          if (v27 > 0x39)
                                                          {
                                                            if (v27 <= 0x5A)
                                                            {
                                                              if (v27 < 0x41)
                                                              {
                                                                return 0;
                                                              }

                                                              goto LABEL_176;
                                                            }

                                                            v31 = v27 - 97;
LABEL_175:
                                                            if (v31 >= 0x1A)
                                                            {
                                                              return 0;
                                                            }

                                                            goto LABEL_176;
                                                          }

                                                          if (v27 != 45)
                                                          {
                                                            if (v27 < 0x30)
                                                            {
                                                              return 0;
                                                            }

                                                            goto LABEL_176;
                                                          }

LABEL_163:
                                                          v30 = v6[10];
                                                          if (v30 > 0x39)
                                                          {
                                                            if (v30 <= 0x5A)
                                                            {
                                                              if (v30 < 0x41)
                                                              {
                                                                return 0;
                                                              }

                                                              goto LABEL_193;
                                                            }

                                                            v34 = v30 - 97;
                                                            goto LABEL_192;
                                                          }

                                                          if (v30 == 45)
                                                          {
                                                            goto LABEL_180;
                                                          }

                                                          if (v30 < 0x30)
                                                          {
                                                            return 0;
                                                          }

LABEL_193:
                                                          v4 = v6 + 11;
                                                          v35 = v6[11];
                                                          if (v35 > 0x3D)
                                                          {
                                                            break;
                                                          }

                                                          if (v35 > 0x2E)
                                                          {
                                                            v2 = 0;
                                                            if (v35 == 47 || v35 >= 0x3A)
                                                            {
                                                              return v2;
                                                            }

                                                            goto LABEL_216;
                                                          }

                                                          if (v35 < 0x2D)
                                                          {
                                                            return 0;
                                                          }

                                                          if (v35 != 46)
                                                          {
                                                            goto LABEL_197;
                                                          }
                                                        }

                                                        if (v35 > 0x5A)
                                                        {
                                                          v37 = v35 - 97;
                                                          goto LABEL_215;
                                                        }

                                                        if (v35 == 62)
                                                        {
                                                          return (v4 - a1 + 1);
                                                        }

                                                        if (v35 < 0x41)
                                                        {
                                                          return 0;
                                                        }

LABEL_216:
                                                        v4 = v6 + 12;
                                                        v38 = v6[12];
                                                        if (v38 > 0x3D)
                                                        {
                                                          if (v38 <= 0x5A)
                                                          {
                                                            if (v38 == 62)
                                                            {
                                                              return (v4 - a1 + 1);
                                                            }

                                                            if (v38 < 0x41)
                                                            {
                                                              return 0;
                                                            }

                                                            goto LABEL_236;
                                                          }

                                                          v40 = v38 - 97;
                                                          goto LABEL_235;
                                                        }

                                                        if (v38 > 0x2E)
                                                        {
                                                          v2 = 0;
                                                          if (v38 == 47 || v38 >= 0x3A)
                                                          {
                                                            return v2;
                                                          }

                                                          goto LABEL_236;
                                                        }

                                                        if (v38 < 0x2D)
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      while (v38 == 46);
LABEL_220:
                                                      v39 = v6[13];
                                                      if (v39 > 0x39)
                                                      {
                                                        if (v39 <= 0x5A)
                                                        {
                                                          if (v39 < 0x41)
                                                          {
                                                            return 0;
                                                          }

                                                          goto LABEL_256;
                                                        }

                                                        v43 = v39 - 97;
LABEL_255:
                                                        if (v43 >= 0x1A)
                                                        {
                                                          return 0;
                                                        }

                                                        goto LABEL_256;
                                                      }

                                                      if (v39 != 45)
                                                      {
                                                        if (v39 < 0x30)
                                                        {
                                                          return 0;
                                                        }

                                                        goto LABEL_256;
                                                      }

LABEL_240:
                                                      v42 = v6[14];
                                                      if (v42 > 0x39)
                                                      {
                                                        if (v42 <= 0x5A)
                                                        {
                                                          if (v42 < 0x41)
                                                          {
                                                            return 0;
                                                          }

                                                          goto LABEL_276;
                                                        }

                                                        v46 = v42 - 97;
                                                        goto LABEL_275;
                                                      }

                                                      if (v42 == 45)
                                                      {
                                                        goto LABEL_260;
                                                      }

                                                      if (v42 < 0x30)
                                                      {
                                                        return 0;
                                                      }

LABEL_276:
                                                      v4 = v6 + 15;
                                                      v47 = v6[15];
                                                      if (v47 > 0x3D)
                                                      {
                                                        break;
                                                      }

                                                      if (v47 > 0x2E)
                                                      {
                                                        v2 = 0;
                                                        if (v47 == 47 || v47 >= 0x3A)
                                                        {
                                                          return v2;
                                                        }

                                                        goto LABEL_297;
                                                      }

                                                      if (v47 < 0x2D)
                                                      {
                                                        return 0;
                                                      }

                                                      if (v47 != 46)
                                                      {
                                                        goto LABEL_280;
                                                      }
                                                    }

                                                    if (v47 > 0x5A)
                                                    {
                                                      v49 = v47 - 97;
                                                      goto LABEL_296;
                                                    }

                                                    if (v47 == 62)
                                                    {
                                                      return (v4 - a1 + 1);
                                                    }

                                                    if (v47 < 0x41)
                                                    {
                                                      return 0;
                                                    }

LABEL_297:
                                                    v4 = v6 + 16;
                                                    v50 = v6[16];
                                                    if (v50 > 0x3D)
                                                    {
                                                      if (v50 <= 0x5A)
                                                      {
                                                        if (v50 == 62)
                                                        {
                                                          return (v4 - a1 + 1);
                                                        }

                                                        if (v50 < 0x41)
                                                        {
                                                          return 0;
                                                        }

                                                        goto LABEL_319;
                                                      }

                                                      v52 = v50 - 97;
                                                      goto LABEL_318;
                                                    }

                                                    if (v50 > 0x2E)
                                                    {
                                                      v2 = 0;
                                                      if (v50 == 47 || v50 >= 0x3A)
                                                      {
                                                        return v2;
                                                      }

                                                      goto LABEL_319;
                                                    }

                                                    if (v50 < 0x2D)
                                                    {
                                                      return 0;
                                                    }
                                                  }

                                                  while (v50 == 46);
LABEL_301:
                                                  v51 = v6[17];
                                                  if (v51 > 0x39)
                                                  {
                                                    if (v51 <= 0x5A)
                                                    {
                                                      if (v51 < 0x41)
                                                      {
                                                        return 0;
                                                      }

                                                      goto LABEL_340;
                                                    }

                                                    v55 = v51 - 97;
LABEL_339:
                                                    if (v55 >= 0x1A)
                                                    {
                                                      return 0;
                                                    }

                                                    goto LABEL_340;
                                                  }

                                                  if (v51 != 45)
                                                  {
                                                    if (v51 < 0x30)
                                                    {
                                                      return 0;
                                                    }

                                                    goto LABEL_340;
                                                  }

LABEL_323:
                                                  v54 = v6[18];
                                                  if (v54 > 0x39)
                                                  {
                                                    if (v54 <= 0x5A)
                                                    {
                                                      if (v54 < 0x41)
                                                      {
                                                        return 0;
                                                      }

                                                      goto LABEL_361;
                                                    }

                                                    v58 = v54 - 97;
                                                    goto LABEL_360;
                                                  }

                                                  if (v54 == 45)
                                                  {
                                                    goto LABEL_344;
                                                  }

                                                  if (v54 < 0x30)
                                                  {
                                                    return 0;
                                                  }

LABEL_361:
                                                  v4 = v6 + 19;
                                                  v59 = v6[19];
                                                  if (v59 > 0x3D)
                                                  {
                                                    break;
                                                  }

                                                  if (v59 > 0x2E)
                                                  {
                                                    v2 = 0;
                                                    if (v59 == 47 || v59 >= 0x3A)
                                                    {
                                                      return v2;
                                                    }

                                                    goto LABEL_382;
                                                  }

                                                  if (v59 < 0x2D)
                                                  {
                                                    return 0;
                                                  }

                                                  if (v59 != 46)
                                                  {
                                                    goto LABEL_365;
                                                  }
                                                }

                                                if (v59 > 0x5A)
                                                {
                                                  v61 = v59 - 97;
                                                  goto LABEL_381;
                                                }

                                                if (v59 == 62)
                                                {
                                                  return (v4 - a1 + 1);
                                                }

                                                if (v59 < 0x41)
                                                {
                                                  return 0;
                                                }

LABEL_382:
                                                v4 = v6 + 20;
                                                v62 = v6[20];
                                                if (v62 > 0x3D)
                                                {
                                                  if (v62 <= 0x5A)
                                                  {
                                                    if (v62 == 62)
                                                    {
                                                      return (v4 - a1 + 1);
                                                    }

                                                    if (v62 < 0x41)
                                                    {
                                                      return 0;
                                                    }

                                                    goto LABEL_403;
                                                  }

                                                  v64 = v62 - 97;
                                                  goto LABEL_402;
                                                }

                                                if (v62 > 0x2E)
                                                {
                                                  v2 = 0;
                                                  if (v62 == 47 || v62 >= 0x3A)
                                                  {
                                                    return v2;
                                                  }

                                                  goto LABEL_403;
                                                }

                                                if (v62 < 0x2D)
                                                {
                                                  return 0;
                                                }
                                              }

                                              while (v62 == 46);
LABEL_386:
                                              v63 = v6[21];
                                              if (v63 > 0x39)
                                              {
                                                if (v63 <= 0x5A)
                                                {
                                                  if (v63 < 0x41)
                                                  {
                                                    return 0;
                                                  }

                                                  goto LABEL_424;
                                                }

                                                v67 = v63 - 97;
LABEL_423:
                                                if (v67 >= 0x1A)
                                                {
                                                  return 0;
                                                }

                                                goto LABEL_424;
                                              }

                                              if (v63 != 45)
                                              {
                                                if (v63 < 0x30)
                                                {
                                                  return 0;
                                                }

                                                goto LABEL_424;
                                              }

LABEL_407:
                                              v66 = v6[22];
                                              if (v66 > 0x39)
                                              {
                                                if (v66 <= 0x5A)
                                                {
                                                  if (v66 < 0x41)
                                                  {
                                                    return 0;
                                                  }

                                                  goto LABEL_445;
                                                }

                                                v70 = v66 - 97;
                                                goto LABEL_444;
                                              }

                                              if (v66 == 45)
                                              {
                                                goto LABEL_428;
                                              }

                                              if (v66 < 0x30)
                                              {
                                                return 0;
                                              }

LABEL_445:
                                              v4 = v6 + 23;
                                              v71 = v6[23];
                                              if (v71 > 0x3D)
                                              {
                                                break;
                                              }

                                              if (v71 > 0x2E)
                                              {
                                                v2 = 0;
                                                if (v71 == 47 || v71 >= 0x3A)
                                                {
                                                  return v2;
                                                }

                                                goto LABEL_466;
                                              }

                                              if (v71 < 0x2D)
                                              {
                                                return 0;
                                              }

                                              if (v71 != 46)
                                              {
                                                goto LABEL_449;
                                              }
                                            }

                                            if (v71 > 0x5A)
                                            {
                                              v73 = v71 - 97;
                                              goto LABEL_465;
                                            }

                                            if (v71 == 62)
                                            {
                                              return (v4 - a1 + 1);
                                            }

                                            if (v71 < 0x41)
                                            {
                                              return 0;
                                            }

LABEL_466:
                                            v4 = v6 + 24;
                                            v74 = v6[24];
                                            if (v74 > 0x3D)
                                            {
                                              if (v74 <= 0x5A)
                                              {
                                                if (v74 == 62)
                                                {
                                                  return (v4 - a1 + 1);
                                                }

                                                if (v74 < 0x41)
                                                {
                                                  return 0;
                                                }

                                                goto LABEL_487;
                                              }

                                              v76 = v74 - 97;
                                              goto LABEL_486;
                                            }

                                            if (v74 > 0x2E)
                                            {
                                              v2 = 0;
                                              if (v74 == 47 || v74 >= 0x3A)
                                              {
                                                return v2;
                                              }

                                              goto LABEL_487;
                                            }

                                            if (v74 < 0x2D)
                                            {
                                              return 0;
                                            }
                                          }

                                          while (v74 == 46);
LABEL_470:
                                          v75 = v6[25];
                                          if (v75 > 0x39)
                                          {
                                            if (v75 <= 0x5A)
                                            {
                                              if (v75 < 0x41)
                                              {
                                                return 0;
                                              }

                                              goto LABEL_508;
                                            }

                                            v79 = v75 - 97;
LABEL_507:
                                            if (v79 >= 0x1A)
                                            {
                                              return 0;
                                            }

                                            goto LABEL_508;
                                          }

                                          if (v75 != 45)
                                          {
                                            if (v75 < 0x30)
                                            {
                                              return 0;
                                            }

                                            goto LABEL_508;
                                          }

LABEL_491:
                                          v78 = v6[26];
                                          if (v78 > 0x39)
                                          {
                                            if (v78 <= 0x5A)
                                            {
                                              if (v78 < 0x41)
                                              {
                                                return 0;
                                              }

                                              goto LABEL_529;
                                            }

                                            v82 = v78 - 97;
                                            goto LABEL_528;
                                          }

                                          if (v78 == 45)
                                          {
                                            goto LABEL_512;
                                          }

                                          if (v78 < 0x30)
                                          {
                                            return 0;
                                          }

LABEL_529:
                                          v4 = v6 + 27;
                                          v83 = v6[27];
                                          if (v83 > 0x3D)
                                          {
                                            break;
                                          }

                                          if (v83 > 0x2E)
                                          {
                                            v2 = 0;
                                            if (v83 == 47 || v83 >= 0x3A)
                                            {
                                              return v2;
                                            }

                                            goto LABEL_550;
                                          }

                                          if (v83 < 0x2D)
                                          {
                                            return 0;
                                          }

                                          if (v83 != 46)
                                          {
                                            goto LABEL_533;
                                          }
                                        }

                                        if (v83 > 0x5A)
                                        {
                                          v85 = v83 - 97;
                                          goto LABEL_549;
                                        }

                                        if (v83 == 62)
                                        {
                                          return (v4 - a1 + 1);
                                        }

                                        if (v83 < 0x41)
                                        {
                                          return 0;
                                        }

LABEL_550:
                                        v4 = v6 + 28;
                                        v86 = v6[28];
                                        if (v86 > 0x3D)
                                        {
                                          if (v86 <= 0x5A)
                                          {
                                            if (v86 == 62)
                                            {
                                              return (v4 - a1 + 1);
                                            }

                                            if (v86 < 0x41)
                                            {
                                              return 0;
                                            }

                                            goto LABEL_571;
                                          }

                                          v88 = v86 - 97;
                                          goto LABEL_570;
                                        }

                                        if (v86 > 0x2E)
                                        {
                                          v2 = 0;
                                          if (v86 == 47 || v86 >= 0x3A)
                                          {
                                            return v2;
                                          }

                                          goto LABEL_571;
                                        }

                                        if (v86 < 0x2D)
                                        {
                                          return 0;
                                        }
                                      }

                                      while (v86 == 46);
LABEL_554:
                                      v87 = v6[29];
                                      if (v87 > 0x39)
                                      {
                                        if (v87 <= 0x5A)
                                        {
                                          if (v87 < 0x41)
                                          {
                                            return 0;
                                          }

                                          goto LABEL_592;
                                        }

                                        v91 = v87 - 97;
LABEL_591:
                                        if (v91 >= 0x1A)
                                        {
                                          return 0;
                                        }

                                        goto LABEL_592;
                                      }

                                      if (v87 != 45)
                                      {
                                        if (v87 < 0x30)
                                        {
                                          return 0;
                                        }

                                        goto LABEL_592;
                                      }

LABEL_575:
                                      v90 = v6[30];
                                      if (v90 > 0x39)
                                      {
                                        if (v90 <= 0x5A)
                                        {
                                          if (v90 < 0x41)
                                          {
                                            return 0;
                                          }

                                          goto LABEL_613;
                                        }

                                        v94 = v90 - 97;
                                        goto LABEL_612;
                                      }

                                      if (v90 == 45)
                                      {
                                        goto LABEL_596;
                                      }

                                      if (v90 < 0x30)
                                      {
                                        return 0;
                                      }

LABEL_613:
                                      v4 = v6 + 31;
                                      v95 = v6[31];
                                      if (v95 > 0x3D)
                                      {
                                        break;
                                      }

                                      if (v95 > 0x2E)
                                      {
                                        v2 = 0;
                                        if (v95 == 47 || v95 >= 0x3A)
                                        {
                                          return v2;
                                        }

                                        goto LABEL_634;
                                      }

                                      if (v95 < 0x2D)
                                      {
                                        return 0;
                                      }

                                      if (v95 != 46)
                                      {
                                        goto LABEL_617;
                                      }
                                    }

                                    if (v95 > 0x5A)
                                    {
                                      v97 = v95 - 97;
                                      goto LABEL_633;
                                    }

                                    if (v95 == 62)
                                    {
                                      return (v4 - a1 + 1);
                                    }

                                    if (v95 < 0x41)
                                    {
                                      return 0;
                                    }

LABEL_634:
                                    v4 = v6 + 32;
                                    v98 = v6[32];
                                    if (v98 > 0x3D)
                                    {
                                      if (v98 <= 0x5A)
                                      {
                                        if (v98 == 62)
                                        {
                                          return (v4 - a1 + 1);
                                        }

                                        if (v98 < 0x41)
                                        {
                                          return 0;
                                        }

                                        goto LABEL_655;
                                      }

                                      v100 = v98 - 97;
                                      goto LABEL_654;
                                    }

                                    if (v98 > 0x2E)
                                    {
                                      v2 = 0;
                                      if (v98 == 47 || v98 >= 0x3A)
                                      {
                                        return v2;
                                      }

                                      goto LABEL_655;
                                    }

                                    if (v98 < 0x2D)
                                    {
                                      return 0;
                                    }
                                  }

                                  while (v98 == 46);
LABEL_638:
                                  v99 = v6[33];
                                  if (v99 > 0x39)
                                  {
                                    if (v99 <= 0x5A)
                                    {
                                      if (v99 < 0x41)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_676;
                                    }

                                    v103 = v99 - 97;
LABEL_675:
                                    if (v103 >= 0x1A)
                                    {
                                      return 0;
                                    }

                                    goto LABEL_676;
                                  }

                                  if (v99 != 45)
                                  {
                                    if (v99 < 0x30)
                                    {
                                      return 0;
                                    }

                                    goto LABEL_676;
                                  }

LABEL_659:
                                  v102 = v6[34];
                                  if (v102 > 0x39)
                                  {
                                    if (v102 <= 0x5A)
                                    {
                                      if (v102 < 0x41)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_697;
                                    }

                                    v106 = v102 - 97;
                                    goto LABEL_696;
                                  }

                                  if (v102 == 45)
                                  {
                                    goto LABEL_680;
                                  }

                                  if (v102 < 0x30)
                                  {
                                    return 0;
                                  }

LABEL_697:
                                  v4 = v6 + 35;
                                  v107 = v6[35];
                                  if (v107 > 0x3D)
                                  {
                                    break;
                                  }

                                  if (v107 > 0x2E)
                                  {
                                    v2 = 0;
                                    if (v107 == 47 || v107 >= 0x3A)
                                    {
                                      return v2;
                                    }

                                    goto LABEL_718;
                                  }

                                  if (v107 < 0x2D)
                                  {
                                    return 0;
                                  }

                                  if (v107 != 46)
                                  {
                                    goto LABEL_701;
                                  }
                                }

                                if (v107 > 0x5A)
                                {
                                  v109 = v107 - 97;
                                  goto LABEL_717;
                                }

                                if (v107 == 62)
                                {
                                  return (v4 - a1 + 1);
                                }

                                if (v107 < 0x41)
                                {
                                  return 0;
                                }

LABEL_718:
                                v4 = v6 + 36;
                                v110 = v6[36];
                                if (v110 > 0x3D)
                                {
                                  if (v110 <= 0x5A)
                                  {
                                    if (v110 == 62)
                                    {
                                      return (v4 - a1 + 1);
                                    }

                                    if (v110 < 0x41)
                                    {
                                      return 0;
                                    }

                                    goto LABEL_739;
                                  }

                                  v112 = v110 - 97;
                                  goto LABEL_738;
                                }

                                if (v110 > 0x2E)
                                {
                                  v2 = 0;
                                  if (v110 == 47 || v110 >= 0x3A)
                                  {
                                    return v2;
                                  }

                                  goto LABEL_739;
                                }

                                if (v110 < 0x2D)
                                {
                                  return 0;
                                }
                              }

                              while (v110 == 46);
LABEL_722:
                              v111 = v6[37];
                              if (v111 > 0x39)
                              {
                                if (v111 <= 0x5A)
                                {
                                  if (v111 < 0x41)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_760;
                                }

                                v115 = v111 - 97;
LABEL_759:
                                if (v115 >= 0x1A)
                                {
                                  return 0;
                                }

                                goto LABEL_760;
                              }

                              if (v111 != 45)
                              {
                                if (v111 < 0x30)
                                {
                                  return 0;
                                }

                                goto LABEL_760;
                              }

LABEL_743:
                              v114 = v6[38];
                              if (v114 > 0x39)
                              {
                                if (v114 <= 0x5A)
                                {
                                  if (v114 < 0x41)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_781;
                                }

                                v118 = v114 - 97;
                                goto LABEL_780;
                              }

                              if (v114 == 45)
                              {
                                goto LABEL_764;
                              }

                              if (v114 < 0x30)
                              {
                                return 0;
                              }

LABEL_781:
                              v4 = v6 + 39;
                              v119 = v6[39];
                              if (v119 > 0x3D)
                              {
                                break;
                              }

                              if (v119 > 0x2E)
                              {
                                v2 = 0;
                                if (v119 == 47 || v119 >= 0x3A)
                                {
                                  return v2;
                                }

                                goto LABEL_802;
                              }

                              if (v119 < 0x2D)
                              {
                                return 0;
                              }

                              if (v119 != 46)
                              {
                                goto LABEL_785;
                              }
                            }

                            if (v119 > 0x5A)
                            {
                              v121 = v119 - 97;
                              goto LABEL_801;
                            }

                            if (v119 == 62)
                            {
                              return (v4 - a1 + 1);
                            }

                            if (v119 < 0x41)
                            {
                              return 0;
                            }

LABEL_802:
                            v4 = v6 + 40;
                            v122 = v6[40];
                            if (v122 > 0x3D)
                            {
                              if (v122 <= 0x5A)
                              {
                                if (v122 == 62)
                                {
                                  return (v4 - a1 + 1);
                                }

                                if (v122 < 0x41)
                                {
                                  return 0;
                                }

                                goto LABEL_823;
                              }

                              v124 = v122 - 97;
                              goto LABEL_822;
                            }

                            if (v122 > 0x2E)
                            {
                              v2 = 0;
                              if (v122 == 47 || v122 >= 0x3A)
                              {
                                return v2;
                              }

                              goto LABEL_823;
                            }

                            if (v122 < 0x2D)
                            {
                              return 0;
                            }
                          }

                          while (v122 == 46);
LABEL_806:
                          v123 = v6[41];
                          if (v123 > 0x39)
                          {
                            if (v123 <= 0x5A)
                            {
                              if (v123 < 0x41)
                              {
                                return 0;
                              }

                              goto LABEL_844;
                            }

                            v127 = v123 - 97;
LABEL_843:
                            if (v127 >= 0x1A)
                            {
                              return 0;
                            }

                            goto LABEL_844;
                          }

                          if (v123 != 45)
                          {
                            if (v123 < 0x30)
                            {
                              return 0;
                            }

                            goto LABEL_844;
                          }

LABEL_827:
                          v126 = v6[42];
                          if (v126 > 0x39)
                          {
                            if (v126 <= 0x5A)
                            {
                              if (v126 < 0x41)
                              {
                                return 0;
                              }

                              goto LABEL_865;
                            }

                            v130 = v126 - 97;
                            goto LABEL_864;
                          }

                          if (v126 == 45)
                          {
                            goto LABEL_848;
                          }

                          if (v126 < 0x30)
                          {
                            return 0;
                          }

LABEL_865:
                          v4 = v6 + 43;
                          v131 = v6[43];
                          if (v131 > 0x3D)
                          {
                            break;
                          }

                          if (v131 > 0x2E)
                          {
                            v2 = 0;
                            if (v131 == 47 || v131 >= 0x3A)
                            {
                              return v2;
                            }

                            goto LABEL_886;
                          }

                          if (v131 < 0x2D)
                          {
                            return 0;
                          }

                          if (v131 != 46)
                          {
                            goto LABEL_869;
                          }
                        }

                        if (v131 > 0x5A)
                        {
                          v133 = v131 - 97;
                          goto LABEL_885;
                        }

                        if (v131 == 62)
                        {
                          return (v4 - a1 + 1);
                        }

                        if (v131 < 0x41)
                        {
                          return 0;
                        }

LABEL_886:
                        v4 = v6 + 44;
                        v134 = v6[44];
                        if (v134 > 0x3D)
                        {
                          if (v134 <= 0x5A)
                          {
                            if (v134 == 62)
                            {
                              return (v4 - a1 + 1);
                            }

                            if (v134 < 0x41)
                            {
                              return 0;
                            }

                            goto LABEL_907;
                          }

                          v136 = v134 - 97;
                          goto LABEL_906;
                        }

                        if (v134 > 0x2E)
                        {
                          v2 = 0;
                          if (v134 == 47 || v134 >= 0x3A)
                          {
                            return v2;
                          }

                          goto LABEL_907;
                        }

                        if (v134 < 0x2D)
                        {
                          return 0;
                        }
                      }

                      while (v134 == 46);
LABEL_890:
                      v135 = v6[45];
                      if (v135 > 0x39)
                      {
                        if (v135 <= 0x5A)
                        {
                          if (v135 < 0x41)
                          {
                            return 0;
                          }

                          goto LABEL_928;
                        }

                        v139 = v135 - 97;
LABEL_927:
                        if (v139 >= 0x1A)
                        {
                          return 0;
                        }

                        goto LABEL_928;
                      }

                      if (v135 != 45)
                      {
                        if (v135 < 0x30)
                        {
                          return 0;
                        }

                        goto LABEL_928;
                      }

LABEL_911:
                      v138 = v6[46];
                      if (v138 > 0x39)
                      {
                        if (v138 <= 0x5A)
                        {
                          if (v138 < 0x41)
                          {
                            return 0;
                          }

                          goto LABEL_949;
                        }

                        v142 = v138 - 97;
                        goto LABEL_948;
                      }

                      if (v138 == 45)
                      {
                        goto LABEL_932;
                      }

                      if (v138 < 0x30)
                      {
                        return 0;
                      }

LABEL_949:
                      v4 = v6 + 47;
                      v143 = v6[47];
                      if (v143 > 0x3D)
                      {
                        break;
                      }

                      if (v143 > 0x2E)
                      {
                        v2 = 0;
                        if (v143 == 47 || v143 >= 0x3A)
                        {
                          return v2;
                        }

                        goto LABEL_970;
                      }

                      if (v143 < 0x2D)
                      {
                        return 0;
                      }

                      if (v143 != 46)
                      {
                        goto LABEL_953;
                      }
                    }

                    if (v143 > 0x5A)
                    {
                      v145 = v143 - 97;
                      goto LABEL_969;
                    }

                    if (v143 == 62)
                    {
                      return (v4 - a1 + 1);
                    }

                    if (v143 < 0x41)
                    {
                      return 0;
                    }

LABEL_970:
                    v4 = v6 + 48;
                    v146 = v6[48];
                    if (v146 > 0x3D)
                    {
                      if (v146 <= 0x5A)
                      {
                        if (v146 == 62)
                        {
                          return (v4 - a1 + 1);
                        }

                        if (v146 < 0x41)
                        {
                          return 0;
                        }

                        goto LABEL_991;
                      }

                      v148 = v146 - 97;
                      goto LABEL_990;
                    }

                    if (v146 > 0x2E)
                    {
                      v2 = 0;
                      if (v146 == 47 || v146 >= 0x3A)
                      {
                        return v2;
                      }

                      goto LABEL_991;
                    }

                    if (v146 < 0x2D)
                    {
                      return 0;
                    }
                  }

                  while (v146 == 46);
LABEL_974:
                  v147 = v6[49];
                  if (v147 > 0x39)
                  {
                    if (v147 <= 0x5A)
                    {
                      if (v147 < 0x41)
                      {
                        return 0;
                      }

                      goto LABEL_1012;
                    }

                    v151 = v147 - 97;
LABEL_1011:
                    if (v151 >= 0x1A)
                    {
                      return 0;
                    }

                    goto LABEL_1012;
                  }

                  if (v147 != 45)
                  {
                    if (v147 < 0x30)
                    {
                      return 0;
                    }

                    goto LABEL_1012;
                  }

LABEL_995:
                  v150 = v6[50];
                  if (v150 > 0x39)
                  {
                    if (v150 <= 0x5A)
                    {
                      if (v150 < 0x41)
                      {
                        return 0;
                      }

                      goto LABEL_1033;
                    }

                    v154 = v150 - 97;
                    goto LABEL_1032;
                  }

                  if (v150 == 45)
                  {
                    goto LABEL_1016;
                  }

                  if (v150 < 0x30)
                  {
                    return 0;
                  }

LABEL_1033:
                  v4 = v6 + 51;
                  v155 = v6[51];
                  if (v155 > 0x3D)
                  {
                    break;
                  }

                  if (v155 > 0x2E)
                  {
                    v2 = 0;
                    if (v155 == 47 || v155 >= 0x3A)
                    {
                      return v2;
                    }

                    goto LABEL_1054;
                  }

                  if (v155 < 0x2D)
                  {
                    return 0;
                  }

                  if (v155 != 46)
                  {
                    goto LABEL_1037;
                  }
                }

                if (v155 > 0x5A)
                {
                  v157 = v155 - 97;
                  goto LABEL_1053;
                }

                if (v155 == 62)
                {
                  return (v4 - a1 + 1);
                }

                if (v155 < 0x41)
                {
                  return 0;
                }

LABEL_1054:
                v4 = v6 + 52;
                v158 = v6[52];
                if (v158 > 0x3D)
                {
                  if (v158 <= 0x5A)
                  {
                    if (v158 == 62)
                    {
                      return (v4 - a1 + 1);
                    }

                    if (v158 < 0x41)
                    {
                      return 0;
                    }

                    goto LABEL_1075;
                  }

                  v160 = v158 - 97;
                  goto LABEL_1074;
                }

                if (v158 > 0x2E)
                {
                  v2 = 0;
                  if (v158 == 47 || v158 >= 0x3A)
                  {
                    return v2;
                  }

                  goto LABEL_1075;
                }

                if (v158 < 0x2D)
                {
                  return 0;
                }
              }

              while (v158 == 46);
LABEL_1058:
              v159 = v6[53];
              if (v159 > 0x39)
              {
                if (v159 <= 0x5A)
                {
                  if (v159 < 0x41)
                  {
                    return 0;
                  }

                  goto LABEL_1096;
                }

                v163 = v159 - 97;
LABEL_1095:
                if (v163 >= 0x1A)
                {
                  return 0;
                }

                goto LABEL_1096;
              }

              if (v159 != 45)
              {
                if (v159 < 0x30)
                {
                  return 0;
                }

                goto LABEL_1096;
              }

LABEL_1079:
              v162 = v6[54];
              if (v162 > 0x39)
              {
                if (v162 <= 0x5A)
                {
                  if (v162 < 0x41)
                  {
                    return 0;
                  }

                  goto LABEL_1117;
                }

                v166 = v162 - 97;
                goto LABEL_1116;
              }

              if (v162 == 45)
              {
                goto LABEL_1100;
              }

              if (v162 < 0x30)
              {
                return 0;
              }

LABEL_1117:
              v4 = v6 + 55;
              v167 = v6[55];
              if (v167 > 0x3D)
              {
                break;
              }

              if (v167 > 0x2E)
              {
                v2 = 0;
                if (v167 == 47 || v167 >= 0x3A)
                {
                  return v2;
                }

                goto LABEL_1138;
              }

              if (v167 < 0x2D)
              {
                return 0;
              }

              if (v167 != 46)
              {
                goto LABEL_1121;
              }
            }

            if (v167 > 0x5A)
            {
              v169 = v167 - 97;
              goto LABEL_1137;
            }

            if (v167 == 62)
            {
              return (v4 - a1 + 1);
            }

            if (v167 < 0x41)
            {
              return 0;
            }

LABEL_1138:
            v4 = v6 + 56;
            v170 = v6[56];
            if (v170 > 0x3D)
            {
              if (v170 <= 0x5A)
              {
                if (v170 == 62)
                {
                  return (v4 - a1 + 1);
                }

                if (v170 < 0x41)
                {
                  return 0;
                }

                goto LABEL_1159;
              }

              v172 = v170 - 97;
              goto LABEL_1158;
            }

            if (v170 > 0x2E)
            {
              v2 = 0;
              if (v170 == 47 || v170 >= 0x3A)
              {
                return v2;
              }

              goto LABEL_1159;
            }

            if (v170 < 0x2D)
            {
              return 0;
            }
          }

          while (v170 == 46);
LABEL_1142:
          v171 = v6[57];
          if (v171 > 0x39)
          {
            if (v171 <= 0x5A)
            {
              if (v171 < 0x41)
              {
                return 0;
              }

              goto LABEL_1180;
            }

            v175 = v171 - 97;
LABEL_1179:
            if (v175 >= 0x1A)
            {
              return 0;
            }

            goto LABEL_1180;
          }

          if (v171 != 45)
          {
            if (v171 < 0x30)
            {
              return 0;
            }

            goto LABEL_1180;
          }

LABEL_1163:
          v174 = v6[58];
          if (v174 > 0x39)
          {
            if (v174 <= 0x5A)
            {
              if (v174 < 0x41)
              {
                return 0;
              }

              goto LABEL_1201;
            }

            v178 = v174 - 97;
            goto LABEL_1200;
          }

          if (v174 == 45)
          {
            goto LABEL_1184;
          }

          if (v174 < 0x30)
          {
            return 0;
          }

LABEL_1201:
          v4 = v6 + 59;
          v179 = v6[59];
          if (v179 > 0x3D)
          {
            break;
          }

          if (v179 > 0x2E)
          {
            v2 = 0;
            if (v179 == 47 || v179 >= 0x3A)
            {
              return v2;
            }

            goto LABEL_1222;
          }

          if (v179 < 0x2D)
          {
            return 0;
          }

          if (v179 != 46)
          {
            goto LABEL_1205;
          }
        }

        if (v179 > 0x5A)
        {
          v181 = v179 - 97;
          goto LABEL_1221;
        }

        if (v179 == 62)
        {
          return (v4 - a1 + 1);
        }

        if (v179 < 0x41)
        {
          return 0;
        }

LABEL_1222:
        v4 = v6 + 60;
        v182 = v6[60];
        if (v182 > 0x3D)
        {
          if (v182 <= 0x5A)
          {
            if (v182 == 62)
            {
              return (v4 - a1 + 1);
            }

            if (v182 < 0x41)
            {
              return 0;
            }

            goto LABEL_1243;
          }

          v184 = v182 - 97;
          goto LABEL_1242;
        }

        if (v182 > 0x2E)
        {
          v2 = 0;
          if (v182 == 47 || v182 >= 0x3A)
          {
            return v2;
          }

          goto LABEL_1243;
        }

        if (v182 < 0x2D)
        {
          return 0;
        }
      }

      while (v182 == 46);
LABEL_1226:
      v183 = v6[61];
      if (v183 > 0x39)
      {
        if (v183 <= 0x5A)
        {
          if (v183 < 0x41)
          {
            return 0;
          }

          goto LABEL_1264;
        }

        v187 = v183 - 97;
LABEL_1263:
        if (v187 >= 0x1A)
        {
          return 0;
        }

        goto LABEL_1264;
      }

      if (v183 != 45)
      {
        if (v183 < 0x30)
        {
          return 0;
        }

        goto LABEL_1264;
      }

LABEL_1247:
      v186 = v6[62];
      if (v186 > 0x39)
      {
        if (v186 <= 0x5A)
        {
          if (v186 < 0x41)
          {
            return 0;
          }

          goto LABEL_1284;
        }

        v190 = v186 - 97;
        goto LABEL_1283;
      }

      if (v186 == 45)
      {
        goto LABEL_1268;
      }

      if (v186 < 0x30)
      {
        return 0;
      }

LABEL_1284:
      v4 = v6 + 63;
      v191 = v6[63];
      if (v191 > 0x3D)
      {
        break;
      }

      if (v191 > 0x2E)
      {
        v2 = 0;
        if (v191 == 47 || v191 > 0x39)
        {
          return v2;
        }

        goto LABEL_1300;
      }

      v2 = 0;
      if (v191 != 46)
      {
        return v2;
      }
    }

    if (v191 > 0x5A)
    {
      if (v191 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }
    }

    else
    {
      if (v191 == 62)
      {
        return (v4 - a1 + 1);
      }

      if (v191 < 0x41)
      {
        return 0;
      }
    }

LABEL_1300:
    v4 = v6 + 64;
  }

  while (v6[64] == 46);
  if (v6[64] != 62)
  {
    return 0;
  }

  return (v4 - a1 + 1);
}
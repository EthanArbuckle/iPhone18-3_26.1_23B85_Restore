_DWORD *bpf_dump(_DWORD *result, int a2)
{
  v2 = *result;
  v3 = *(result + 1);
  if (a2 < 3)
  {
    if (a2 == 2)
    {
      if (v2 >= 1)
      {
        do
        {
          result = printf("{ 0x%x, %d, %d, 0x%08x },\n", *v3, *(v3 + 2), *(v3 + 3), *(v3 + 1));
          v3 += 4;
          --v2;
        }

        while (v2);
      }
    }

    else if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        v5 = bpf_image(v3, i);
        result = puts(v5);
        v3 += 4;
      }
    }
  }

  else
  {
    result = printf("%d\n", *result);
    if (v2 >= 1)
    {
      do
      {
        result = printf("%u %u %u %u\n", *v3, *(v3 + 2), *(v3 + 3), *(v3 + 1));
        v3 += 4;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t pcap_filter_with_aux_data(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_128;
  }

  v4 = 0;
  v5 = 0;
  v6 = a1 - 8;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v7 = v5;
                result = v4;
                v9 = v6;
                v11 = *(v6 + 8);
                v6 += 8;
                v10 = v11;
                if (v11 > 67)
                {
                  break;
                }

                switch(v10)
                {
                  case 0:
                    v4 = *(v9 + 12);
                    continue;
                  case 1:
                    v5 = *(v9 + 12);
                    continue;
                  case 2:
                    v37[*(v9 + 12)] = v4;
                    goto LABEL_125;
                  case 3:
                    v37[*(v9 + 12)] = v5;
                    goto LABEL_125;
                  case 4:
                    v4 = (*(v9 + 12) + v4);
                    continue;
                  case 5:
                    v22 = *(v9 + 12);
                    goto LABEL_124;
                  case 6:
                    result = *(v9 + 12);
                    goto LABEL_128;
                  case 7:
                    v5 = v4;
                    continue;
                  case 12:
                    v4 = (v5 + v4);
                    continue;
                  case 20:
                    v4 = (v4 - *(v9 + 12));
                    continue;
                  case 21:
                    v17 = v4 == *(v9 + 12);
                    goto LABEL_98;
                  case 22:
                    goto LABEL_128;
                  case 28:
                    v4 = (v4 - v5);
                    continue;
                  case 29:
                    v17 = v4 == v5;
LABEL_98:
                    v14 = 10;
                    if (!v17)
                    {
                      v14 = 11;
                    }

                    goto LABEL_123;
                  case 32:
                    v26 = *(v9 + 12);
                    if (a4 < v26 || a4 - v26 < 4)
                    {
                      goto LABEL_126;
                    }

                    v28 = *(a2 + v26);
                    goto LABEL_115;
                  case 36:
                    v4 = (*(v9 + 12) * v4);
                    continue;
                  case 37:
                    v16 = v4 > *(v9 + 12);
                    goto LABEL_117;
                  case 40:
                    v24 = *(v9 + 12);
                    v25 = a4 >= v24 && a4 - v24 >= 2;
                    if (!v25)
                    {
                      goto LABEL_126;
                    }

                    v21 = *(a2 + v24);
                    goto LABEL_79;
                  case 44:
                    v4 = (v5 * v4);
                    continue;
                  case 45:
                    v16 = v4 > v5;
LABEL_117:
                    v14 = 10;
                    if (!v16)
                    {
                      v14 = 11;
                    }

                    goto LABEL_123;
                  case 48:
                    v15 = *(v9 + 12);
                    if (v15 >= a4)
                    {
                      goto LABEL_126;
                    }

                    v4 = *(a2 + v15);
                    continue;
                  case 52:
                    v4 = v4 / *(v9 + 12);
                    continue;
                  case 53:
                    v29 = v4 >= *(v9 + 12);
                    goto LABEL_121;
                  case 60:
                    if (!v5)
                    {
                      goto LABEL_126;
                    }

                    v4 = v4 / v5;
                    continue;
                  case 61:
                    v29 = v4 >= v5;
LABEL_121:
                    v14 = 10;
                    if (!v29)
                    {
                      v14 = 11;
                    }

                    goto LABEL_123;
                  case 64:
                    v30 = *(v9 + 12);
                    v31 = v30 + v5;
                    v32 = a4 - (v30 + v5);
                    v25 = a4 >= v30;
                    v33 = a4 - v30;
                    if (!v25 || v7 > v33 || v32 < 4)
                    {
                      goto LABEL_126;
                    }

                    v28 = *(a2 + v31);
LABEL_115:
                    v4 = bswap32(v28);
                    v5 = v7;
                    break;
                  default:
                    goto LABEL_130;
                }
              }

              if (v10 > 107)
              {
                break;
              }

              if (v10 <= 79)
              {
                if (v10 <= 71)
                {
                  if (v10 == 68)
                  {
                    v4 = *(v9 + 12) | v4;
                  }

                  else
                  {
                    if (v10 != 69)
                    {
LABEL_130:
                      abort();
                    }

                    v12 = (*(v9 + 12) & v4) == 0;
LABEL_46:
                    if (v12)
                    {
                      v14 = 11;
                    }

                    else
                    {
                      v14 = 10;
                    }

LABEL_123:
                    v22 = *(v9 + v14);
LABEL_124:
                    v6 += 8 * v22;
LABEL_125:
                    v4 = result;
                  }
                }

                else
                {
                  switch(v10)
                  {
                    case 'H':
                      result = 0;
                      v18 = a4 - v5;
                      if (a4 < v7)
                      {
                        goto LABEL_128;
                      }

                      v19 = *(v9 + 12);
                      if (v19 > v18)
                      {
                        goto LABEL_128;
                      }

                      v20 = v19 + v7;
                      if (a4 - v20 < 2)
                      {
                        goto LABEL_128;
                      }

                      v21 = *(a2 + v20);
LABEL_79:
                      v4 = __rev16(v21);
                      v5 = v7;
                      break;
                    case 'L':
                      v4 = v5 | v4;
                      break;
                    case 'M':
                      v12 = (v5 & v4) == 0;
                      goto LABEL_46;
                    default:
                      goto LABEL_130;
                  }
                }
              }

              else if (v10 > 95)
              {
                switch(v10)
                {
                    v4 = v37[*(v9 + 12)];
                    break;
                  case 'a':
                    v5 = v37[*(v9 + 12)];
                    break;
                  case 'd':
                    v4 = (v4 << *(v9 + 12));
                    break;
                  default:
                    goto LABEL_130;
                }
              }

              else
              {
                switch(v10)
                {
                  case 'P':
                    result = 0;
                    v23 = *(v9 + 12);
                    if (a4 <= v23 || v5 >= a4 - v23)
                    {
                      goto LABEL_128;
                    }

                    v4 = *(a2 + v23 + v5);
                    break;
                  case 'T':
                    v4 = *(v9 + 12) & v4;
                    break;
                  case '\\':
                    v4 = v5 & v4;
                    break;
                  default:
                    goto LABEL_130;
                }
              }
            }

            if (v10 > 134)
            {
              break;
            }

            if (v10 > 127)
            {
              v4 = a3;
              if (v10 != 128)
              {
                v4 = result;
                v5 = a3;
                if (v10 != 129)
                {
                  if (v10 != 132)
                  {
                    goto LABEL_130;
                  }

                  v4 = -result;
                  v5 = v7;
                }
              }
            }

            else
            {
              switch(v10)
              {
                case 'l':
                  LODWORD(v4) = v4 << v5;
                  goto LABEL_82;
                case 't':
                  v4 = v4 >> *(v9 + 12);
                  break;
                case '|':
                  LODWORD(v4) = v4 >> v5;
LABEL_82:
                  if (v5 >= 0x20)
                  {
                    v4 = 0;
                  }

                  else
                  {
                    v4 = v4;
                  }

                  break;
                default:
                  goto LABEL_130;
              }
            }
          }

          if (v10 > 163)
          {
            break;
          }

          v4 = v5;
          if (v10 != 135)
          {
            if (v10 == 148)
            {
              v4 = result % *(v9 + 12);
            }

            else
            {
              if (v10 != 156)
              {
                goto LABEL_130;
              }

              if (!v5)
              {
                goto LABEL_126;
              }

              v4 = result % v5;
            }
          }
        }

        if (v10 != 164)
        {
          break;
        }

        v4 = *(v9 + 12) ^ v4;
      }

      if (v10 != 172)
      {
        break;
      }

      v4 = v5 ^ v4;
    }

    if (v10 != 177)
    {
      goto LABEL_130;
    }

    v13 = *(v9 + 12);
    if (v13 >= a4)
    {
      break;
    }

    v5 = 4 * (*(a2 + v13) & 0xFu);
  }

LABEL_126:
  result = 0;
LABEL_128:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL pcap_validate_filter(uint64_t a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a1 + 4);
  do
  {
    v4 = *(v3 - 2);
    v5 = v4 & 7;
    if (v5 > 3)
    {
      if (v5 - 6 >= 2)
      {
        v7 = v4 >> 4;
        if (v5 == 4)
        {
          if (v7 > 0xA || ((1 << v7) & 0x5F7) == 0 && (v4 & 8) == 0 && !*v3)
          {
            return 0;
          }
        }

        else if (v7 - 1 >= 4)
        {
          if (v4 >> 4 || v2 + *v3 + 1 >= a2)
          {
            return 0;
          }
        }

        else if (v2 + *(v3 - 2) + 1 >= a2 || v2 + *(v3 - 1) + 1 >= a2)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v5 >= 2)
      {
        goto LABEL_7;
      }

      v6 = v4 >> 5;
      if (v6 > 5)
      {
        return 0;
      }

      if (v6 == 3)
      {
LABEL_7:
        if (*v3 > 0xFu)
        {
          return 0;
        }
      }
    }

    ++v2;
    v3 += 2;
  }

  while (a2 != v2);
  return (*(a1 + 8 * a2 - 8) & 7) == 6;
}

char *bpf_image(unsigned __int16 *a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (v4 > 0x43)
  {
    if (*a1 <= 0x6Bu)
    {
      if (*a1 <= 0x4Fu)
      {
        if (*a1 <= 0x47u)
        {
          if (v4 != 68 && v4 != 69)
          {
            goto LABEL_66;
          }

          goto LABEL_37;
        }

        if (v4 != 72)
        {
          if (v4 == 76 || v4 == 77)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v10 = *(a1 + 1);
        v5 = "[x + %d]";
LABEL_59:
        snprintf(__str, 0x40uLL, v5, v10);
        goto LABEL_67;
      }

      if (*a1 <= 0x5Fu)
      {
        if (v4 != 80)
        {
          if (v4 != 84)
          {
            if (v4 == 92)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          }

LABEL_37:
          snprintf(__str, 0x40uLL, "#0x%x", *(a1 + 1));
          goto LABEL_67;
        }

        v10 = *(a1 + 1);
        v5 = "[x + %d]";
        goto LABEL_59;
      }

      if (v4 == 96)
      {
        v10 = *(a1 + 1);
        v5 = "M[%d]";
        goto LABEL_59;
      }

      if (v4 == 97)
      {
        v10 = *(a1 + 1);
        v5 = "M[%d]";
        goto LABEL_59;
      }

      if (v4 != 100)
      {
        goto LABEL_66;
      }

LABEL_40:
      snprintf(__str, 0x40uLL, "#%d", *(a1 + 1));
      goto LABEL_67;
    }

    if (*a1 <= 0x86u)
    {
      if (*a1 > 0x7Bu)
      {
        if (v4 == 124 || v4 == 128 || v4 == 132)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if (v4 == 108)
      {
        goto LABEL_67;
      }

      if (v4 == 116)
      {
        goto LABEL_40;
      }
    }

    else if (*a1 > 0xA3u)
    {
      switch(v4)
      {
        case 0xA4u:
          goto LABEL_37;
        case 0xACu:
          goto LABEL_67;
        case 0xB1u:
          snprintf(__str, 0x40uLL, "4*([%d]&0xf)", *(a1 + 1));
          goto LABEL_67;
      }
    }

    else
    {
      switch(v4)
      {
        case 0x87u:
          goto LABEL_67;
        case 0x94u:
          goto LABEL_40;
        case 0x9Cu:
          goto LABEL_67;
      }
    }

LABEL_66:
    snprintf(__str, 0x40uLL, "0x%x", *a1);
    goto LABEL_67;
  }

  switch(*a1)
  {
    case 0u:
      v10 = *(a1 + 1);
      v5 = "#0x%x";
      goto LABEL_59;
    case 1u:
      v10 = *(a1 + 1);
      v5 = "#0x%x";
      goto LABEL_59;
    case 2u:
    case 3u:
      snprintf(__str, 0x40uLL, "M[%d]", *(a1 + 1));
      break;
    case 4u:
    case 6u:
    case 0x14u:
    case 0x24u:
    case 0x34u:
      goto LABEL_40;
    case 5u:
      snprintf(__str, 0x40uLL, "%d", a2 + *(a1 + 1) + 1);
      break;
    case 7u:
    case 0xCu:
    case 0x16u:
    case 0x1Cu:
    case 0x1Du:
    case 0x2Cu:
    case 0x2Du:
    case 0x3Cu:
    case 0x3Du:
      break;
    case 0x15u:
    case 0x25u:
    case 0x35u:
      goto LABEL_37;
    case 0x20u:
      v10 = *(a1 + 1);
      v5 = "[%d]";
      goto LABEL_59;
    case 0x28u:
      v10 = *(a1 + 1);
      v5 = "[%d]";
      goto LABEL_59;
    case 0x30u:
      v10 = *(a1 + 1);
      v5 = "[%d]";
      goto LABEL_59;
    case 0x40u:
      v10 = *(a1 + 1);
      v5 = "[x + %d]";
      goto LABEL_59;
    default:
      goto LABEL_66;
  }

LABEL_67:
  if ((*a1 & 7) != 5 || (*a1 & 0xF0) == 0)
  {
    snprintf(bpf_image_image, 0x100uLL, "(%03d) %-8s %s");
  }

  else
  {
    v7 = a2 + 1 + *(a1 + 3);
    v11 = a2 + 1 + *(a1 + 2);
    snprintf(bpf_image_image, 0x100uLL, "(%03d) %-8s %-16s jt %d\tjf %d");
  }

  v8 = *MEMORY[0x29EDCA608];
  return bpf_image_image;
}

pcap_etherent *__cdecl pcap_next_etherent(FILE *a1)
{
  xmmword_2A14BED78 = 0u;
  unk_2A14BED88 = 0u;
  xmmword_2A14BED58 = 0u;
  unk_2A14BED68 = 0u;
  xmmword_2A14BED38 = 0u;
  unk_2A14BED48 = 0u;
  pcap_next_etherent_e = 0u;
  unk_2A14BED28 = 0u;
LABEL_2:
  while (1)
  {
    v2 = getc(a1);
    if (v2 + 1 > 0x21)
    {
      break;
    }

    if (((1 << (v2 + 1)) & 0x200004C00) == 0)
    {
      if (v2 == -1)
      {
        return 0;
      }

      break;
    }
  }

  if (v2 - 48 >= 0xA && (v2 - 65 > 0x25 || ((1 << (v2 - 65)) & 0x3F0000003FLL) == 0))
  {
    while (1)
    {
      v8 = getc(a1);
      if (v8 == -1)
      {
        return 0;
      }

      if (v8 == 10)
      {
        goto LABEL_2;
      }
    }
  }

  for (i = 0; i != 6; ++i)
  {
    v4 = v2 - 48;
    if ((v2 - 48) >= 0xAu)
    {
      if ((v2 - 97) > 5u)
      {
        v4 = v2 - 55;
      }

      else
      {
        v4 = v2 - 87;
      }
    }

    v2 = getc(a1);
    if (v2 == -1)
    {
      return 0;
    }

    v5 = v2 - 48;
    if (v2 - 48 < 0xA || v2 - 65 <= 0x25 && ((1 << (v2 - 65)) & 0x3F0000003FLL) != 0)
    {
      if ((v2 - 48) >= 0xAu)
      {
        if ((v2 - 97) > 5u)
        {
          v5 = v2 - 55;
        }

        else
        {
          v5 = v2 - 87;
        }
      }

      v2 = getc(a1);
      if (v2 == -1)
      {
        return 0;
      }

      v4 = v5 | (16 * v4);
    }

    *(&pcap_next_etherent_e + i) = v4;
    if (v2 != 58)
    {
      break;
    }

    v2 = getc(a1);
    if (v2 == -1)
    {
      return 0;
    }
  }

  if (v2 > 0x20 || ((1 << v2) & 0x100002600) == 0)
  {
    while (1)
    {
      v7 = getc(a1);
      if (v7 == -1)
      {
        return 0;
      }

      if (v7 == 10)
      {
        goto LABEL_2;
      }
    }
  }

  do
  {
    while (1)
    {
      v6 = getc(a1);
      if (v6 > 12)
      {
        break;
      }

      if (v6 != 9)
      {
        if (v6 == -1)
        {
          return 0;
        }

        if (v6 != 10)
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      }
    }
  }

  while (v6 == 13 || v6 == 32);
  if (v6 == 35)
  {
    while (1)
    {
      v9 = getc(a1);
      if (v9 == -1)
      {
        return 0;
      }

      if (v9 == 10)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_46:
  v10 = &pcap_next_etherent_e + 6;
  v11 = -121;
  v12 = &pcap_next_etherent_e + 6;
  while (2)
  {
    *v12++ = v6;
    v6 = getc(a1);
    if ((v6 + 1) > 0x21)
    {
LABEL_50:
      v10 = v12;
      if (__CFADD__(v11++, 1))
      {
        *v12 = 0;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  if (((1 << (v6 + 1)) & 0x200004C00) == 0)
  {
    if (v6 == -1)
    {
      return 0;
    }

    goto LABEL_50;
  }

  v10[1] = 0;
  if (v6 == 10)
  {
    return &pcap_next_etherent_e;
  }

  do
  {
LABEL_55:
    v15 = getc(a1);
  }

  while (v15 != 10 && v15 != -1);
  return &pcap_next_etherent_e;
}

uint64_t pcap_findalldevs_interfaces(uint64_t *a1, char *a2, unsigned int (*a3)(char *), unsigned int (*a4)(char *, int *, char *))
{
  v25 = 0;
  if (getifaddrs(&v25))
  {
    v8 = __error();
    pcap_fmt_errmsg_for_errno(a2, 0x100uLL, *v8, "getifaddrs");
    return 0xFFFFFFFFLL;
  }

  v10 = v25;
  if (!v25)
  {
    v23 = 0;
    v9 = 0;
    goto LABEL_28;
  }

  while (1)
  {
    ifa_name = v10->ifa_name;
    v12 = strchr(ifa_name, 58);
    if (v12)
    {
      v13 = 1;
      do
      {
        v14 = v12[v13++];
      }

      while ((v14 - 48) < 0xA);
      if (!v14)
      {
        *v12 = 0;
        ifa_name = v10->ifa_name;
      }
    }

    if (!a3(ifa_name))
    {
      goto LABEL_23;
    }

    ifa_addr = v10->ifa_addr;
    if (ifa_addr)
    {
      sa_len = ifa_addr->sa_len;
      ifa_netmask = v10->ifa_netmask;
    }

    else
    {
      ifa_netmask = 0;
      sa_len = 0;
    }

    ifa_flags = v10->ifa_flags;
    if ((ifa_flags & 2) != 0)
    {
      ifa_dstaddr = v10->ifa_dstaddr;
      if (ifa_dstaddr)
      {
        v20 = ifa_dstaddr->sa_len;
        if ((ifa_flags & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else
    {
      ifa_dstaddr = 0;
    }

    v20 = 0;
    if ((ifa_flags & 0x10) == 0)
    {
LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

LABEL_17:
    v21 = v10->ifa_dstaddr;
    if (v21)
    {
      v22 = v21->sa_len;
      goto LABEL_22;
    }

LABEL_21:
    v22 = 0;
LABEL_22:
    if ((add_addr_to_if (a1, v10->ifa_name, ifa_flags, a4, ifa_addr, sa_len, ifa_netmask, sa_len, ifa_dstaddr, v20, v21, v22, a2) & 0x80000000) != 0)
    {
      break;
    }

LABEL_23:
    v10 = v10->ifa_next;
    if (!v10)
    {
      v9 = 0;
      goto LABEL_27;
    }
  }

  v9 = 0xFFFFFFFFLL;
LABEL_27:
  v23 = v25;
LABEL_28:
  MEMORY[0x29C29F9A0](v23);
  return v9;
}

uint64_t pcap_fmt_errmsg_for_errno(char *a1, size_t a2, int a3, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(a1, a2, __format, va);
  result = strlen(a1);
  if (result + 3 <= a2)
  {
    strcpy(&a1[result], ": ");
    v8 = &a1[result + 2];
    v9 = a2 - result - 2;
    result = strerror_r(a3, v8, v9);
    if (result == 22)
    {
      return snprintf(v8, v9, "Unknown error: %d");
    }

    else if (result == 34)
    {
      return snprintf(v8, v9, "Message for error %d is too long");
    }
  }

  return result;
}

uint64_t bpf_set_error(uint64_t result, char *__format, ...)
{
  va_start(va, __format);
  if (!*(result + 200))
  {
    v2 = result;
    result = vsnprintf((*(result + 192) + 208), 0x100uLL, __format, va);
    *(v2 + 200) = 1;
  }

  return result;
}

char *sdup(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = newchunk_nolongjmp(a1, v4 + 1);
  v6 = v5;
  if (v5)
  {
    strlcpy(v5, __s, v4 + 1);
  }

  return v6;
}

size_t newchunk_nolongjmp(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(a1 + 728);
  v4 = (a1 + 16 * v3 + 472);
  v5 = *v4;
  if (v2 <= *v4 || (*(a1 + 728) = v3 + 1, v3 < 15) && (v5 = (1024 << (v3 + 1)), v7 = malloc_type_malloc(v5, 0x42A44F06uLL), (v4[3] = v7) != 0) && (bzero(v7, v5), v4[2] = v5, v4 += 2, v2 <= v5))
  {
    *v4 = v5 - v2;
    return v4[1] + v5 - v2;
  }

  else
  {
    bpf_set_error(a1, "out of memory");
    return 0;
  }
}

int pcap_compile(pcap_t *a1, bpf_program *a2, const char *a3, int a4, bpf_u_int32 a5)
{
  v34 = a3;
  v33 = 0;
  v32 = 0;
  if (!*(a1 + 28))
  {
    strcpy(a1 + 208, "not-yet-activated pcap_t passed to pcap_compile");
    return -1;
  }

  v48 = 0;
  memset(v42, 0, sizeof(v42));
  v39 = 0u;
  v40 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  v31 = 0;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  *&v37 = 0;
  v41 = 0;
  v42[0] = 0;
  *&v36 = a1;
  DWORD2(v37) = 0;
  DWORD2(v36) = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  *&v39 = a5;
  LODWORD(v38) = pcap_snapshot(a1);
  if (!v38)
  {
    strcpy(a1 + 208, "snaplen of 0 rejects all packets");
    goto LABEL_7;
  }

  if (pcap_lex_init(&v33))
  {
    v8 = __error();
    pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, *v8, "can't initialize scanner");
    goto LABEL_7;
  }

  if (v34)
  {
    v13 = v34;
  }

  else
  {
    v13 = &unk_299802A00;
  }

  v32 = pcap__scan_string(v13, v33);
  pcap_set_extra(v35, v33);
  LODWORD(v40) = *(a1 + 18);
  v14 = pcap_datalink(a1);
  DWORD2(v38) = v14;
  DWORD1(v38) = v14;
  *&v42[1] = xmmword_299802940;
  *&v42[3] = xmmword_299802930;
  *&v42[5] = xmmword_299802950;
  *&v42[7] = xmmword_299802940;
  *&v42[9] = xmmword_299802960;
  memset(&v42[11], 255, 32);
  *(&v39 + 1) = 0;
  HIDWORD(v38) = v14;
  if (v14 <= 98)
  {
    v16 = 0x300000008;
    switch(v14)
    {
      case 0:
        goto LABEL_64;
      case 1:
        HIDWORD(v42[7]) = 12;
        v17 = 14;
        goto LABEL_50;
      case 2:
      case 3:
      case 4:
      case 5:
      case 13:
      case 14:
      case 17:
        goto LABEL_53;
      case 6:
        v22 = 14;
        goto LABEL_78;
      case 7:
        HIDWORD(v42[7]) = 2;
        v19 = 6;
        break;
      case 8:
        v24 = -1;
LABEL_73:
        HIDWORD(v42[7]) = v24;
        v19 = 16;
        break;
      case 9:
        goto LABEL_46;
      case 10:
        v22 = v40 + 13;
LABEL_78:
        HIDWORD(v42[7]) = v22;
        LODWORD(v42[6]) = v22;
LABEL_79:
        v16 = 0x300000008;
        goto LABEL_93;
      case 11:
      case 19:
        goto LABEL_93;
      case 12:
LABEL_37:
        HIDWORD(v42[7]) = -1;
        LODWORD(v42[6]) = 0;
        goto LABEL_84;
      case 15:
        v23 = -1;
        goto LABEL_59;
      case 16:
        v23 = 5;
LABEL_59:
        HIDWORD(v42[7]) = v23;
        v19 = 24;
        break;
      case 18:
        v21 = -1;
        goto LABEL_63;
      default:
        if (v14 == 50)
        {
LABEL_46:
          v21 = 2;
LABEL_63:
          HIDWORD(v42[7]) = v21;
LABEL_64:
          v19 = 4;
        }

        else
        {
          if (v14 != 51)
          {
            goto LABEL_53;
          }

          v20 = 6;
LABEL_81:
          HIDWORD(v42[7]) = v20;
          v19 = 8;
        }

        break;
    }
  }

  else
  {
    if (v14 <= 231)
    {
      switch(v14)
      {
        case 99:
          HIDWORD(v42[7]) = 6;
          v19 = 44;
          goto LABEL_83;
        case 100:
        case 101:
        case 102:
        case 103:
        case 106:
        case 110:
        case 111:
        case 112:
        case 115:
        case 116:
        case 118:
        case 120:
        case 121:
        case 124:
        case 125:
        case 126:
        case 128:
        case 141:
        case 142:
        case 143:
        case 144:
        case 145:
        case 146:
        case 147:
        case 148:
        case 149:
        case 150:
        case 151:
        case 152:
        case 153:
        case 154:
        case 155:
        case 156:
        case 157:
        case 158:
        case 159:
        case 160:
        case 161:
        case 162:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 184:
        case 185:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 191:
        case 193:
        case 195:
        case 196:
        case 198:
        case 199:
        case 201:
          goto LABEL_53;
        case 104:
        case 166:
          goto LABEL_46;
        case 105:
          goto LABEL_42;
        case 107:
        case 114:
          goto LABEL_37;
        case 108:
          goto LABEL_64;
        case 109:
          v19 = 12;
          goto LABEL_83;
        case 113:
          v24 = 14;
          goto LABEL_73;
        case 117:
          v19 = 64;
          goto LABEL_83;
        case 119:
        case 127:
        case 163:
          LODWORD(v42[1]) = 1;
LABEL_42:
          HIDWORD(v42[7]) = 24;
          *(&v42[5] + 4) = 1;
          goto LABEL_79;
        case 122:
          v22 = 16;
          goto LABEL_78;
        case 123:
          HIDWORD(v42[8]) = 1;
          v42[10] = 0x200000001;
          LODWORD(v42[11]) = 0;
          v22 = 4;
          HIDWORD(v42[14]) = 4;
          goto LABEL_78;
        case 129:
          v20 = 4;
          goto LABEL_81;
        case 130:
        case 131:
        case 134:
        case 179:
        case 180:
        case 181:
          v15 = 4;
          goto LABEL_25;
        case 132:
          v18 = 6;
          goto LABEL_91;
        case 133:
          HIDWORD(v42[7]) = 6;
          v15 = 12;
          goto LABEL_26;
        case 135:
          v26 = 8;
          goto LABEL_111;
        case 136:
          v18 = 12;
          goto LABEL_91;
        case 137:
          v26 = 4;
LABEL_111:
          HIDWORD(v42[7]) = v26;
          LODWORD(v42[6]) = v26;
          v16 = 0xA00000000;
          goto LABEL_93;
        case 138:
          HIDWORD(v42[7]) = 16;
          v19 = 18;
          goto LABEL_83;
        case 139:
          *(&v42[11] + 4) = xmmword_299802980;
          v25 = 0xB00000008;
          goto LABEL_71;
        case 140:
          *(&v42[11] + 4) = xmmword_299802990;
          v25 = 0x700000004;
LABEL_71:
          *(&v42[13] + 4) = v25;
          goto LABEL_88;
        case 164:
          v15 = 12;
LABEL_25:
          HIDWORD(v42[7]) = v15;
          goto LABEL_26;
        case 165:
        case 202:
          goto LABEL_88;
        case 167:
        case 178:
          LODWORD(v42[6]) = 14;
          HIDWORD(v42[7]) = 16;
          v16 = 0x1500000012;
          goto LABEL_93;
        case 168:
          HIDWORD(v42[7]) = 4;
          v15 = 6;
          goto LABEL_26;
        case 182:
          HIDWORD(v42[7]) = -1;
          LODWORD(v42[6]) = 0;
          v16 = 4;
          goto LABEL_93;
        case 183:
        case 200:
          v18 = 18;
          goto LABEL_91;
        case 192:
          HIDWORD(v42[7]) = 24;
          *(&v42[5] + 4) = 1;
          LODWORD(v42[1]) = 1;
          goto LABEL_79;
        case 194:
          goto LABEL_35;
        case 197:
          *(&v42[11] + 4) = xmmword_299802970;
          *(&v42[13] + 4) = 0x1B00000018;
          goto LABEL_88;
        default:
          if ((v14 - 228) < 2)
          {
            goto LABEL_37;
          }

          if (v14 != 226)
          {
            goto LABEL_53;
          }

          HIDWORD(v42[7]) = 1;
          v15 = 24;
LABEL_26:
          LODWORD(v42[6]) = v15;
          v16 = 0xFFFFFFFF00000000;
          break;
      }

      goto LABEL_93;
    }

    if (v14 <= 237)
    {
      if ((v14 - 232) >= 3)
      {
LABEL_53:
        if ((v14 - 104) > 0xB9)
        {
          bpf_set_error(v35, "unknown data link type %d", v14);
          goto LABEL_7;
        }

LABEL_88:
        HIDWORD(v42[7]) = -1;
        goto LABEL_92;
      }

LABEL_35:
      v18 = 8;
LABEL_91:
      HIDWORD(v42[7]) = v18;
LABEL_92:
      LODWORD(v42[6]) = -1;
      v16 = -1;
      goto LABEL_93;
    }

    if (v14 <= 240)
    {
      if (v14 != 238)
      {
        if (v14 == 240)
        {
          HIDWORD(v42[1]) = 4;
          HIDWORD(v42[7]) = 16;
          v17 = 18;
LABEL_50:
          LODWORD(v42[6]) = v17;
          v16 = 0x300000000;
          goto LABEL_93;
        }

        goto LABEL_53;
      }

      goto LABEL_35;
    }

    if (v14 == 241)
    {
      HIDWORD(v42[1]) = 12;
      HIDWORD(v42[7]) = 24;
      v17 = 26;
      goto LABEL_50;
    }

    if (v14 != 276)
    {
      goto LABEL_53;
    }

    v19 = 20;
  }

LABEL_83:
  LODWORD(v42[6]) = v19;
LABEL_84:
  v16 = 0;
LABEL_93:
  v42[15] = v16;
  *(&v42[2] + 4) = v42[1];
  HIDWORD(v42[3]) = v42[2];
  v42[4] = v42[1];
  LODWORD(v42[5]) = v42[2];
  if (pcap_parse())
  {
    if (v41)
    {
      freeaddrinfo(v41);
    }

    if (v42[0])
    {
      free(v42[0]);
    }

    goto LABEL_7;
  }

  v27 = v37;
  if (v37)
  {
    if (a4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (setjmp(v35))
    {
      goto LABEL_7;
    }

    v28 = v38;
    v29 = newchunk(v35, 288);
    *(v29 + 16) = 6;
    *(v29 + 152) = v29;
    *(v29 + 40) = v28;
    *&v37 = v29;
    v27 = v29;
    if (a4)
    {
LABEL_100:
      if (!DWORD1(v39))
      {
        if (bpf_optimize(&v37, a1 + 208) == -1)
        {
          goto LABEL_7;
        }

        v27 = v37;
        if (!v37 || *(v37 + 16) == 6 && !*(v37 + 40))
        {
          strcpy(a1 + 208, "expression rejects all packets");
          goto LABEL_7;
        }
      }
    }
  }

  v30 = icode_to_fcode(&v37, v27, &v31, a1 + 208);
  a2->bf_insns = v30;
  if (v30)
  {
    a2->bf_len = v31;
    v10 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v10 = -1;
LABEL_8:
  if (v32)
  {
    pcap__delete_buffer(v32, v33);
  }

  if (v33)
  {
    pcap_lex_destroy(v33);
  }

  for (i = 0; i != 256; i += 16)
  {
    v12 = *&v49[i + 8];
    if (v12)
    {
      free(v12);
    }
  }

  return v10;
}

int pcap_compile_nopcap(int a1, int a2, bpf_program *a3, const char *a4, int a5, bpf_u_int32 a6)
{
  v10 = pcap_open_dead(a2, a1);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  v12 = pcap_compile(v10, a3, a4, a5, a6);
  pcap_close(v11);
  return v12;
}

void pcap_freecode(bpf_program *a1)
{
  a1->bf_len = 0;
  bf_insns = a1->bf_insns;
  if (bf_insns)
  {
    free(bf_insns);
    a1->bf_insns = 0;
  }
}

uint64_t finish_parse(uint64_t a1, uint64_t a2)
{
  if (setjmp(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 152);
  if (*(a1 + 324) != -1 && *(a1 + 280) && *(a1 + 288) == -1)
  {
    *(a1 + 288) = alloc_reg(a1);
  }

  v6 = 0;
  v7 = *(a1 + 236);
  v8 = v7;
  if (v7 > 162)
  {
    if (v7 == 163)
    {
      if (*(a1 + 288) != -1)
      {
        v68 = newchunk(a1, 40);
        *v68 = 32;
        v68[6] = 4;
        v10 = v68;
        v69 = newchunk(a1, 40);
        *v69 = 2;
        v69[6] = *(a1 + 288);
        v70 = v10;
        do
        {
          v71 = v70;
          v70 = *(v70 + 4);
        }

        while (v70);
        *(v71 + 4) = v69;
        v26 = newchunk(a1, 40);
        *v26 = 7;
        v72 = v10;
        do
        {
          v28 = v72;
          v72 = *(v72 + 4);
        }

        while (v72);
        goto LABEL_61;
      }
    }

    else
    {
      if (v7 != 192)
      {
        goto LABEL_62;
      }

      if (*(a1 + 288) != -1)
      {
        v29 = newchunk(a1, 40);
        *v29 = 48;
        v29[6] = 3;
        v10 = v29;
        v30 = newchunk(a1, 40);
        *v30 = 100;
        v31 = v10;
        do
        {
          v32 = v31;
          v31 = *(v31 + 4);
        }

        while (v31);
        *(v32 + 4) = v30;
        v30[6] = 8;
        v33 = newchunk(a1, 40);
        *v33 = 7;
        v34 = v10;
        do
        {
          v35 = v34;
          v34 = *(v34 + 4);
        }

        while (v34);
        *(v35 + 4) = v33;
        v36 = newchunk(a1, 40);
        *v36 = 48;
        v37 = v10;
        do
        {
          v38 = v37;
          v37 = *(v37 + 4);
        }

        while (v37);
        *(v38 + 4) = v36;
        v36[6] = 2;
        v39 = newchunk(a1, 40);
        *v39 = 76;
        v40 = v10;
        do
        {
          v41 = v40;
          v40 = *(v40 + 4);
        }

        while (v40);
        *(v41 + 4) = v39;
        v42 = newchunk(a1, 40);
        *v42 = 2;
        v42[6] = *(a1 + 288);
        v43 = v10;
        do
        {
          v44 = v43;
          v43 = *(v43 + 4);
        }

        while (v43);
        *(v44 + 4) = v42;
        v26 = newchunk(a1, 40);
        *v26 = 7;
        v45 = v10;
        do
        {
          v28 = v45;
          v45 = *(v45 + 4);
        }

        while (v45);
        goto LABEL_61;
      }
    }

    goto LABEL_69;
  }

  if (v7 == 119)
  {
    *(a1 + 244) = 1;
    if (*(a1 + 288) != -1)
    {
      v46 = newchunk(a1, 40);
      *v46 = 32;
      v46[6] = 0;
      v10 = v46;
      v47 = newchunk(a1, 40);
      *v47 = 84;
      v47[6] = -4096;
      v48 = v10;
      do
      {
        v49 = v48;
        v48 = *(v48 + 4);
      }

      while (v48);
      *(v49 + 4) = v47;
      v50 = newchunk(a1, 40);
      *v50 = 21;
      v50[6] = -2145316864;
      v51 = v50;
      v52 = v10;
      do
      {
        v53 = v52;
        v52 = *(v52 + 4);
      }

      while (v52);
      *(v53 + 4) = v50;
      v54 = newchunk(a1, 40);
      *v54 = 32;
      v54[6] = 4;
      v55 = v10;
      do
      {
        v56 = v55;
        v55 = *(v55 + 4);
      }

      while (v55);
      *(v56 + 4) = v54;
      *(v51 + 1) = v54;
      v57 = newchunk(a1, 40);
      *v57 = 5;
      v57[6] = 1;
      v58 = v57;
      v59 = v10;
      do
      {
        v60 = v59;
        v59 = *(v59 + 4);
      }

      while (v59);
      *(v60 + 4) = v57;
      v61 = newchunk(a1, 40);
      *v61 = 0;
      v61[6] = 144;
      v62 = v10;
      do
      {
        v63 = v62;
        v62 = *(v62 + 4);
      }

      while (v62);
      *(v63 + 4) = v61;
      *(v51 + 2) = v61;
      v64 = newchunk(a1, 40);
      *v64 = 2;
      v64[6] = *(a1 + 288);
      v65 = v10;
      do
      {
        v66 = v65;
        v65 = *(v65 + 4);
      }

      while (v65);
      *(v66 + 4) = v64;
      *(v58 + 2) = v64;
      v26 = newchunk(a1, 40);
      *v26 = 7;
      v67 = v10;
      do
      {
        v28 = v67;
        v67 = *(v67 + 4);
      }

      while (v67);
      goto LABEL_61;
    }

LABEL_69:
    if (*(a1 + 324) == -1)
    {
      goto LABEL_122;
    }

    v77 = *(v5 + 8);
    *(a1 + 244) = 1;
LABEL_71:
    v76 = v77;
    v79 = newchunk(a1, 40);
    *v79 = 1;
    v79[6] = *(a1 + 308);
    v78 = v79;
    goto LABEL_72;
  }

  if (v7 != 127)
  {
    goto LABEL_62;
  }

  if (*(a1 + 288) == -1)
  {
    goto LABEL_69;
  }

  v9 = newchunk(a1, 40);
  *v9 = 48;
  v9[6] = 3;
  v10 = v9;
  v11 = newchunk(a1, 40);
  *v11 = 100;
  v12 = v10;
  do
  {
    v13 = v12;
    v12 = *(v12 + 4);
  }

  while (v12);
  *(v13 + 4) = v11;
  v11[6] = 8;
  v14 = newchunk(a1, 40);
  *v14 = 7;
  v15 = v10;
  do
  {
    v16 = v15;
    v15 = *(v15 + 4);
  }

  while (v15);
  *(v16 + 4) = v14;
  v17 = newchunk(a1, 40);
  *v17 = 48;
  v18 = v10;
  do
  {
    v19 = v18;
    v18 = *(v18 + 4);
  }

  while (v18);
  *(v19 + 4) = v17;
  v17[6] = 2;
  v20 = newchunk(a1, 40);
  *v20 = 76;
  v21 = v10;
  do
  {
    v22 = v21;
    v21 = *(v21 + 4);
  }

  while (v21);
  *(v22 + 4) = v20;
  v23 = newchunk(a1, 40);
  *v23 = 2;
  v23[6] = *(a1 + 288);
  v24 = v10;
  do
  {
    v25 = v24;
    v24 = *(v24 + 4);
  }

  while (v24);
  *(v25 + 4) = v23;
  v26 = newchunk(a1, 40);
  *v26 = 7;
  v27 = v10;
  do
  {
    v28 = v27;
    v27 = *(v27 + 4);
  }

  while (v27);
LABEL_61:
  *(v28 + 4) = v26;
  v8 = *(a1 + 236);
  v6 = v10;
LABEL_62:
  v73 = v6;
  v74 = (v8 - 105) > 0x3A || ((1 << (v8 - 105)) & 0x400000000404001) == 0;
  if (v74 && v8 != 192 || *(a1 + 324) == -1)
  {
    v78 = v6;
    goto LABEL_121;
  }

  v75 = *(v5 + 8);
  *(a1 + 244) = 1;
  v76 = v75;
  v77 = v75;
  v78 = v73;
  if (!v73)
  {
    goto LABEL_71;
  }

LABEL_72:
  v80 = newchunk(a1, 40);
  *v80 = 135;
  v81 = v78;
  do
  {
    v82 = v81;
    v81 = *(v81 + 4);
  }

  while (v81);
  *(v82 + 4) = v80;
  v83 = newchunk(a1, 40);
  *v83 = 4;
  v83[6] = 24;
  v84 = v78;
  do
  {
    v85 = v84;
    v84 = *(v84 + 4);
  }

  while (v84);
  *(v85 + 4) = v83;
  v86 = newchunk(a1, 40);
  *v86 = 2;
  v86[6] = *(a1 + 324);
  v87 = v78;
  do
  {
    v88 = v87;
    v87 = *(v87 + 4);
  }

  while (v87);
  *(v88 + 4) = v86;
  v89 = newchunk(a1, 40);
  *v89 = 80;
  v89[6] = 0;
  v90 = v78;
  do
  {
    v91 = v90;
    v90 = *(v90 + 4);
  }

  while (v90);
  *(v91 + 4) = v89;
  v92 = newchunk(a1, 40);
  *v92 = 69;
  v92[6] = 8;
  v93 = v92;
  v94 = v78;
  do
  {
    v95 = v94;
    v94 = *(v94 + 4);
  }

  while (v94);
  *(v95 + 4) = v92;
  v96 = newchunk(a1, 40);
  *v96 = 69;
  *(v93 + 1) = v96;
  *(v96 + 24) = 4;
  v97 = v96;
  v98 = v78;
  do
  {
    v99 = v98;
    v98 = *(v98 + 4);
  }

  while (v98);
  *(v99 + 4) = v96;
  *(v93 + 2) = v76;
  *(v96 + 8) = v76;
  v100 = newchunk(a1, 40);
  *v100 = 69;
  *(v97 + 16) = v100;
  v100[6] = 128;
  v101 = v100;
  v102 = v78;
  do
  {
    v103 = v102;
    v102 = *(v102 + 4);
  }

  while (v102);
  *(v103 + 4) = v100;
  v104 = newchunk(a1, 40);
  *v104 = 96;
  *(v101 + 1) = v104;
  v104[6] = *(a1 + 324);
  v105 = v78;
  do
  {
    v106 = v105;
    v105 = *(v105 + 4);
  }

  while (v105);
  *(v106 + 4) = v104;
  v107 = newchunk(a1, 40);
  *v107 = 4;
  v107[6] = 2;
  v108 = v78;
  do
  {
    v109 = v108;
    v108 = *(v108 + 4);
  }

  while (v108);
  *(v109 + 4) = v107;
  v110 = newchunk(a1, 40);
  *v110 = 2;
  v110[6] = *(a1 + 324);
  v111 = v78;
  do
  {
    v112 = v111;
    v111 = *(v111 + 4);
  }

  while (v111);
  *(v112 + 4) = v110;
  if (*(a1 + 228) == 127)
  {
    v113 = newchunk(a1, 40);
    *v113 = 32;
    *(v101 + 2) = v113;
    v113[6] = 4;
    v114 = v78;
    do
    {
      v115 = v114;
      v114 = *(v114 + 4);
    }

    while (v114);
    *(v115 + 4) = v113;
    v116 = newchunk(a1, 40);
    *v116 = 69;
    *(v116 + 24) = 0x2000000;
    v117 = v116;
    v118 = v78;
    do
    {
      v119 = v118;
      v118 = *(v118 + 4);
    }

    while (v118);
    *(v119 + 4) = v116;
    *(v116 + 16) = v76;
    v120 = newchunk(a1, 40);
    *v120 = 69;
    *(v120 + 24) = 128;
    v121 = v120;
    v122 = v78;
    do
    {
      v123 = v122;
      v122 = *(v122 + 4);
    }

    while (v122);
    *(v123 + 4) = v120;
    *(v117 + 8) = v120;
    *(v120 + 8) = v76;
    v124 = newchunk(a1, 40);
    *v124 = 69;
    v124[6] = 0x1000000;
    v125 = v124;
    v126 = v78;
    do
    {
      v127 = v126;
      v126 = *(v126 + 4);
    }

    while (v126);
    *(v127 + 4) = v124;
    *(v121 + 16) = v124;
    v128 = newchunk(a1, 40);
    *v128 = 48;
    v128[6] = 16;
    v129 = v78;
    do
    {
      v130 = v129;
      v129 = *(v129 + 4);
    }

    while (v129);
    *(v130 + 4) = v128;
    *(v125 + 1) = v128;
    v131 = newchunk(a1, 40);
    *v131 = 69;
    v131[6] = 32;
    v132 = v131;
    v133 = v78;
    do
    {
      v134 = v133;
      v133 = *(v133 + 4);
    }

    while (v133);
    *(v134 + 4) = v131;
    v135 = newchunk(a1, 40);
    *v135 = 48;
    v135[6] = 8;
    v136 = v78;
    do
    {
      v137 = v136;
      v136 = *(v136 + 4);
    }

    while (v136);
    *(v137 + 4) = v135;
    *(v125 + 2) = v135;
    v138 = newchunk(a1, 40);
    *v138 = 69;
    v138[6] = 32;
    v139 = v138;
    v140 = v78;
    do
    {
      v141 = v140;
      v140 = *(v140 + 4);
    }

    while (v140);
    *(v141 + 4) = v138;
    v142 = newchunk(a1, 40);
    *v142 = 96;
    v142[6] = *(a1 + 324);
    v143 = v142;
    v144 = v78;
    do
    {
      v145 = v144;
      v144 = *(v144 + 4);
    }

    while (v144);
    *(v145 + 4) = v142;
    v146 = newchunk(a1, 40);
    *v146 = 4;
    v146[6] = 3;
    v147 = v78;
    do
    {
      v148 = v147;
      v147 = *(v147 + 4);
    }

    while (v147);
    *(v148 + 4) = v146;
    v149 = newchunk(a1, 40);
    *v149 = 84;
    v149[6] = -4;
    v150 = v78;
    do
    {
      v151 = v150;
      v150 = *(v150 + 4);
    }

    while (v150);
    *(v151 + 4) = v149;
    v152 = newchunk(a1, 40);
    *v152 = 2;
    v152[6] = *(a1 + 324);
    v153 = v78;
    do
    {
      v154 = v153;
      v153 = *(v153 + 4);
    }

    while (v153);
    *(v154 + 4) = v152;
    *(v132 + 1) = v143;
    *(v132 + 2) = v76;
    v101 = v139;
    *(v139 + 1) = v143;
  }

  *(v101 + 2) = v76;
LABEL_121:
  v155 = v78;
  if (v78)
  {
LABEL_132:
    v164 = v155;
    do
    {
      v165 = v164;
      v164 = *(v164 + 4);
    }

    while (v164);
    *(v165 + 4) = *(v5 + 8);
    *(v5 + 8) = v155;
    goto LABEL_135;
  }

LABEL_122:
  if (*(a1 + 348))
  {
    if (*(a1 + 324) == -1)
    {
      *(a1 + 324) = alloc_reg(a1);
    }

    if (*(a1 + 336) == -1)
    {
      *(a1 + 336) = alloc_reg(a1);
    }

    v156 = newchunk(a1, 40);
    *v156 = 0;
    v156[6] = 0;
    v157 = v156;
    v158 = newchunk(a1, 40);
    *v158 = 2;
    v158[6] = *(a1 + 324);
    v159 = v157;
    do
    {
      v160 = v159;
      v159 = *(v159 + 4);
    }

    while (v159);
    *(v160 + 4) = v158;
    v161 = newchunk(a1, 40);
    *v161 = 2;
    v161[6] = *(a1 + 336);
    v162 = v157;
    do
    {
      v163 = v162;
      v162 = *(v162 + 4);
    }

    while (v162);
    *(v163 + 4) = v161;
    v155 = v157;
    goto LABEL_132;
  }

LABEL_135:
  if (*(a1 + 228) == 192)
  {
    v166 = newchunk(a1, 40);
    *v166 = 32;
    v166[6] = 4;
    v167 = newchunk(a1, 288);
    *(v167 + 16) = 21;
    *(v167 + 152) = v167;
    *(v167 + 8) = v166;
    *(v167 + 40) = 1761607680;
    gen_and(v167, a2);
  }

  v168 = *(a1 + 224);
  v169 = newchunk(a1, 288);
  *(v169 + 16) = 6;
  *(v169 + 152) = v169;
  *(v169 + 40) = v168;
  if (a2)
  {
    v170 = a2;
    do
    {
      if (*(v170 + 68))
      {
        v171 = 128;
      }

      else
      {
        v171 = 88;
      }

      v172 = *(v170 + v171);
      *(v170 + v171) = v169;
      v170 = v172;
    }

    while (v172);
  }

  *(a2 + 68) = *(a2 + 68) == 0;
  v173 = newchunk(a1, 288);
  *(v173 + 16) = 6;
  *(v173 + 152) = v173;
  *(v173 + 40) = 0;
  v174 = a2;
  do
  {
    if (*(v174 + 68))
    {
      v175 = 128;
    }

    else
    {
      v175 = 88;
    }

    v176 = *(v174 + v175);
    *(v174 + v175) = v173;
    v174 = v176;
  }

  while (v176);
  result = 0;
  *(a1 + 208) = *(a2 + 152);
  return result;
}

uint64_t gen_and(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 152);
    v3 = result;
    do
    {
      if (*(v3 + 68))
      {
        v4 = 128;
      }

      else
      {
        v4 = 88;
      }

      v5 = *(v3 + v4);
      *(v3 + v4) = v2;
      v3 = v5;
    }

    while (v5);
  }

  *(result + 68) = *(result + 68) == 0;
  v6 = *(a2 + 68);
  *(a2 + 68) = v6 == 0;
  v7 = a2;
  do
  {
    v8 = v7;
    if (*(v7 + 68))
    {
      v9 = 128;
    }

    else
    {
      v9 = 88;
    }

    v7 = *(v7 + v9);
  }

  while (v7);
  *(v8 + v9) = result;
  *(a2 + 68) = v6 != 0;
  *(a2 + 152) = *(result + 152);
  return result;
}

uint64_t gen_or(uint64_t result, uint64_t a2)
{
  v2 = *(result + 68);
  *(result + 68) = v2 == 0;
  v3 = *(a2 + 152);
  v4 = result;
  do
  {
    if (*(v4 + 68))
    {
      v5 = 128;
    }

    else
    {
      v5 = 88;
    }

    v6 = *(v4 + v5);
    *(v4 + v5) = v3;
    v4 = v6;
  }

  while (v6);
  *(result + 68) = v2 != 0;
  if (a2)
  {
    v7 = a2;
    do
    {
      v8 = v7;
      if (*(v7 + 68))
      {
        v9 = 128;
      }

      else
      {
        v9 = 88;
      }

      v7 = *(v7 + v9);
    }

    while (v7);
    v10 = (v8 + v9);
  }

  else
  {
    v10 = &v11;
  }

  *v10 = result;
  *(a2 + 152) = *(result + 152);
  return result;
}

size_t gen_llc(int *a1)
{
  if (setjmp(a1))
  {
    return 0;
  }

  else
  {
    return gen_llc_internal(a1);
  }
}

size_t gen_llc_internal(int *a1)
{
  v2 = a1[57];
  if (v2 <= 10)
  {
    if (v2 == 1)
    {
      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
      v6 = newchunk(a1, 288);
      *(v6 + 16) = 37;
      *(v6 + 152) = v6;
      *(v6 + 8) = absoffsetrel;
      *(v6 + 40) = 1500;
      *(v6 + 68) = *(v6 + 68) == 0;
      v7 = gen_load_absoffsetrel(a1, a1 + 79, 0, 8);
      v8 = newchunk(a1, 288);
      *(v8 + 16) = 21;
      *(v8 + 152) = v8;
      *(v8 + 8) = v7;
      *(v8 + 40) = 0xFFFF;
      *(v8 + 68) = *(v8 + 68) == 0;
      gen_and(v6, v8);
      return v8;
    }

    if (v2 != 6 && v2 != 10)
    {
      goto LABEL_16;
    }

LABEL_17:
    v10 = newchunk(a1, 40);
    *v10 = 0;
    v10[6] = 0;
    v8 = newchunk(a1, 288);
    *(v8 + 16) = 21;
    *(v8 + 152) = v8;
    *(v8 + 8) = v10;
    return v8;
  }

  v3 = (v2 - 105);
  if (v3 > 0x3A)
  {
LABEL_14:
    if (v2 != 11)
    {
      if (v2 == 192)
      {
        goto LABEL_4;
      }

LABEL_16:
      v9 = pcap_datalink_val_to_description_or_dlt(v2);
      bpf_error(a1, "'llc' not supported for %s", v9);
    }

    goto LABEL_17;
  }

  if (((1 << (v2 - 105)) & 0x400000000404001) == 0)
  {
    if (v3 == 18)
    {
      result = gen_atmfield_code_internal(a1, 53, 2, 16, 0);
      a1[57] = a1[58];
      return result;
    }

    goto LABEL_14;
  }

LABEL_4:

  return gen_check_802_11_data_frame(a1);
}

size_t gen_llc_i(int *a1)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v3 = gen_llc_internal(a1);
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, 2, 16);
  v5 = newchunk(a1, 288);
  *(v5 + 16) = 69;
  *(v5 + 152) = v5;
  *(v5 + 40) = 1;
  *(v5 + 8) = absoffsetrel;
  *(v5 + 68) = *(v5 + 68) == 0;
  gen_and(v3, v5);
  return v5;
}

_DWORD *gen_load_a(int *a1, int a2, int a3, int a4)
{
  v5 = a3;
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v7 = a1 + 73;
      }

      else
      {
        if (a2 != 3)
        {
          a3 = a3 + a1[98] - 4;
        }

        v7 = a1 + 79;
      }

      goto LABEL_24;
    }

    if (!a2)
    {
      v12 = a4 | 0x20;
      v8 = newchunk(a1, 40);
      *v8 = v12;
      v8[6] = v5;
      return v8;
    }

    v7 = a1 + 70;
    goto LABEL_24;
  }

  if (a2 <= 6)
  {
    if (a2 == 5)
    {
      v7 = a1 + 82;
      goto LABEL_24;
    }

    v14 = a1[98];
LABEL_23:
    v7 = a1 + 79;
    a3 += v14;
    goto LABEL_24;
  }

  if (a2 == 7)
  {
    v14 = a1[99];
    goto LABEL_23;
  }

  if (a2 == 8)
  {
    v8 = gen_loadx_iphdrlen(a1);
    v9 = newchunk(a1, 40);
    *v9 = a4 | 0x40;
    v9[6] = a1[80] + v5 + a1[98];
    v10 = v8;
    do
    {
      v11 = v10;
      v10 = *(v10 + 4);
    }

    while (v10);
    *(v11 + 4) = v9;
    return v8;
  }

  v7 = a1 + 79;
  a3 += a1[98] + 40;
LABEL_24:

  return gen_load_absoffsetrel(a1, v7, a3, a4);
}

size_t gen_llc_s(int *a1)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v3 = gen_llc_internal(a1);
  v4 = gen_ncmp(a1, 3, 2, 16, 3, 16, 0, 1);
  gen_and(v3, v4);
  return v4;
}

size_t gen_llc_u(int *a1)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v3 = gen_llc_internal(a1);
  v4 = gen_ncmp(a1, 3, 2, 16, 3, 16, 0, 3);
  gen_and(v3, v4);
  return v4;
}

size_t gen_llc_s_subtype(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = gen_llc_internal(a1);
  v6 = gen_ncmp(a1, 3, 2, 16, 15, 16, 0, a2);
  gen_and(v5, v6);
  return v6;
}

size_t gen_llc_u_subtype(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = gen_llc_internal(a1);
  v6 = gen_ncmp(a1, 3, 2, 16, 239, 16, 0, a2);
  gen_and(v5, v6);
  return v6;
}

size_t gen_proto_abbrev(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  else
  {
    return gen_proto_abbrev_internal(a1, a2);
  }
}

size_t gen_proto_abbrev_internal(int *a1, int a2)
{
  switch(a2)
  {
    case 1:
      bpf_error(a1, "link layer applied in wrong context");
    case 2:
      v4 = 2048;
      goto LABEL_49;
    case 3:
      v4 = 2054;
      goto LABEL_49;
    case 4:
      v4 = 32821;
      goto LABEL_49;
    case 5:
      v5 = gen_proto(a1, 132, 2, 0);
      v6 = a1;
      v7 = 132;
      goto LABEL_38;
    case 6:
      v5 = gen_proto(a1, 6, 2, 0);
      v6 = a1;
      v7 = 6;
      goto LABEL_38;
    case 7:
      v5 = gen_proto(a1, 17, 2, 0);
      v6 = a1;
      v7 = 17;
      goto LABEL_38;
    case 8:
      v3 = 1;
      goto LABEL_32;
    case 9:
      v3 = 2;
      goto LABEL_32;
    case 10:
      v3 = 88;
      goto LABEL_32;
    case 11:
      v4 = 32923;
      goto LABEL_49;
    case 12:
      v4 = 24579;
      goto LABEL_49;
    case 13:
      v4 = 24580;
      goto LABEL_49;
    case 14:
      v4 = 24583;
      goto LABEL_49;
    case 15:
      v4 = 24578;
      goto LABEL_49;
    case 16:
      v4 = 24577;
      goto LABEL_49;
    case 17:
      v4 = 34525;
      goto LABEL_49;
    case 18:
      v3 = 58;
      v22 = 17;
      goto LABEL_45;
    case 19:
      v5 = gen_proto(a1, 51, 2, 0);
      v6 = a1;
      v7 = 51;
      goto LABEL_38;
    case 20:
      v5 = gen_proto(a1, 50, 2, 0);
      v6 = a1;
      v7 = 50;
      goto LABEL_38;
    case 21:
      v5 = gen_proto(a1, 103, 2, 0);
      v6 = a1;
      v7 = 103;
LABEL_38:
      v21 = 17;
      goto LABEL_39;
    case 22:
    case 39:
      v3 = 112;
LABEL_32:
      v22 = 2;
      goto LABEL_45;
    case 23:
      v4 = 33011;
      goto LABEL_49;
    case 24:
      v4 = 254;
      goto LABEL_49;
    case 25:
      v3 = 130;
      goto LABEL_44;
    case 26:
      v3 = 131;
      goto LABEL_44;
    case 27:
      v3 = 129;
LABEL_44:
      v22 = 24;
LABEL_45:

      return gen_proto(a1, v3, v22, 0);
    case 28:
      v4 = 66;
      goto LABEL_49;
    case 29:
      v4 = 224;
      goto LABEL_49;
    case 30:
      v4 = 240;
LABEL_49:

      return gen_linktype(a1, v4);
    case 31:
      v8 = gen_proto(a1, 15, 26, 0);
      v5 = gen_proto(a1, 17, 26, 0);
      gen_or(v8, v5);
      v9 = gen_proto(a1, 18, 26, 0);
      gen_or(v9, v5);
      v10 = gen_proto(a1, 24, 26, 0);
      gen_or(v10, v5);
      v6 = a1;
      v7 = 26;
      goto LABEL_26;
    case 32:
      v15 = gen_proto(a1, 16, 26, 0);
      v5 = gen_proto(a1, 17, 26, 0);
      gen_or(v15, v5);
      v16 = gen_proto(a1, 20, 26, 0);
      gen_or(v16, v5);
      v17 = a1;
      v18 = 25;
      goto LABEL_25;
    case 33:
      v11 = gen_proto(a1, 15, 26, 0);
      v5 = gen_proto(a1, 16, 26, 0);
      gen_or(v11, v5);
      v6 = a1;
      v7 = 17;
      goto LABEL_26;
    case 34:
      v19 = gen_proto(a1, 24, 26, 0);
      v5 = gen_proto(a1, 25, 26, 0);
      gen_or(v19, v5);
      v17 = a1;
      v18 = 26;
LABEL_25:
      v20 = gen_proto(v17, v18, 26, 0);
      gen_or(v20, v5);
      v6 = a1;
      v7 = 27;
LABEL_26:
      v21 = 26;
LABEL_39:
      v23 = gen_proto(v6, v7, v21, 0);
      goto LABEL_40;
    case 35:
      v12 = gen_proto(a1, 24, 26, 0);
      v13 = a1;
      v14 = 25;
      goto LABEL_36;
    case 36:
      v12 = gen_proto(a1, 26, 26, 0);
      v13 = a1;
      v14 = 27;
      goto LABEL_36;
    case 37:
      v12 = gen_proto(a1, 18, 26, 0);
      v13 = a1;
      v14 = 20;
LABEL_36:
      v5 = gen_proto(v13, v14, 26, 0);
      v23 = v12;
LABEL_40:
      gen_or(v23, v5);
      return v5;
    case 38:
      bpf_error(a1, "'radio' is not a valid protocol type");
    default:
      abort();
  }
}

size_t gen_portop6(int *a1, int a2, int a3, int a4)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 6, 16);
  v9 = newchunk(a1, 288);
  *(v9 + 16) = 21;
  *(v9 + 152) = v9;
  *(v9 + 8) = absoffsetrel;
  *(v9 + 40) = a3;
  if (a4 <= 1)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    if (a4 != 1)
    {
LABEL_13:
      abort();
    }

    v14 = a1 + 79;
    v15 = a1[98] + 40;
LABEL_11:
    v19 = gen_load_absoffsetrel(a1, v14, v15, 8);
    v13 = newchunk(a1, 288);
    *(v13 + 16) = 21;
    *(v13 + 152) = v13;
    *(v13 + 8) = v19;
    *(v13 + 40) = a2;
    goto LABEL_12;
  }

  if (a4 == 2)
  {
    v14 = a1 + 79;
    v15 = a1[98] + 42;
    goto LABEL_11;
  }

  if (a4 == 3)
  {
LABEL_9:
    v16 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 40, 8);
    v17 = newchunk(a1, 288);
    *(v17 + 16) = 21;
    *(v17 + 152) = v17;
    *(v17 + 8) = v16;
    *(v17 + 40) = a2;
    v18 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 42, 8);
    v13 = newchunk(a1, 288);
    *(v13 + 16) = 21;
    *(v13 + 152) = v13;
    *(v13 + 8) = v18;
    *(v13 + 40) = a2;
    gen_or(v17, v13);
    goto LABEL_12;
  }

  if (a4 != 4)
  {
    goto LABEL_13;
  }

  v10 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 40, 8);
  v11 = newchunk(a1, 288);
  *(v11 + 16) = 21;
  *(v11 + 152) = v11;
  *(v11 + 8) = v10;
  *(v11 + 40) = a2;
  v12 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 42, 8);
  v13 = newchunk(a1, 288);
  *(v13 + 16) = 21;
  *(v13 + 152) = v13;
  *(v13 + 8) = v12;
  *(v13 + 40) = a2;
  gen_and(v11, v13);
LABEL_12:
  gen_and(v9, v13);
  return v13;
}

size_t gen_scode(uint64_t a1, char *a2, int a3)
{
  *v46 = 0;
  *v47 = 0;
  if (setjmp(a1))
  {
    return 0;
  }

  v7 = BYTE2(a3);
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 5)
      {
        if (a3 == 4)
        {
          bpf_error(a1, "'gateway' not supported in this configuration");
        }

        goto LABEL_125;
      }

      v14 = lookup_proto(a1, a2, BYTE1(a3));
      v47[0] = v14;
      if ((v14 & 0x80000000) == 0)
      {
        return gen_proto(a1, v14, BYTE1(a3), BYTE2(a3));
      }
    }

    else
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          if (a3 == 255)
          {
            syntax(a1);
          }

          goto LABEL_125;
        }

        if (BYTE1(a3) - 5 >= 3 && BYTE1(a3))
        {
          bpf_error(a1, "illegal qualifier of 'portrange'");
        }

        if (!pcap_nametoportrange(a2, &v46[1], v46, v47))
        {
          bpf_error(a1, "unknown port in range '%s'");
        }

        switch(BYTE1(a3))
        {
          case 5u:
            if (v47[0] == 6)
            {
              goto LABEL_131;
            }

            if (v47[0] != 17)
            {
              v9 = 132;
              goto LABEL_89;
            }

            break;
          case 6u:
            if (v47[0] == 132)
            {
              goto LABEL_129;
            }

            if (v47[0] != 17)
            {
              v9 = 6;
              goto LABEL_89;
            }

            break;
          case 7u:
            if (v47[0] != 132)
            {
              if (v47[0] != 6)
              {
                v9 = 17;
LABEL_89:
                v47[0] = v9;
                goto LABEL_90;
              }

LABEL_131:
              bpf_error(a1, "port in range '%s' is tcp");
            }

LABEL_129:
            bpf_error(a1, "port in range '%s' is sctp");
          default:
LABEL_90:
            if ((v46[1] & 0x80000000) == 0)
            {
              if (v46[1] >= 0x10000u)
              {
                goto LABEL_124;
              }

              if ((v46[0] & 0x80000000) == 0)
              {
                if (v46[0] < 0x10000u)
                {
                  v35 = gen_portrange(a1, v46[1], v46[0], v47[0], BYTE2(a3));
                  v36 = v35;
                  v37 = gen_portrange6(a1, v46[1], v46[0], v47[0], v7);
                  goto LABEL_95;
                }

LABEL_124:
                bpf_error(a1, "illegal port number %d > 65535");
              }
            }

LABEL_123:
            bpf_error(a1, "illegal port number %d < 0");
        }

        bpf_error(a1, "port in range '%s' is udp");
      }

      v15 = lookup_proto(a1, a2, BYTE1(a3));
      v47[0] = v15;
      if ((v15 & 0x80000000) == 0)
      {
        return gen_protochain(a1, v15, BYTE1(a3));
      }
    }

    bpf_error(a1, "unknown protocol: %s");
  }

  if (a3 >= 2u)
  {
    if (a3 == 2)
    {
      v16 = pcap_nametonetaddr(a2);
      if (!v16)
      {
        bpf_error(a1, "unknown network '%s'");
      }

      LODWORD(v17) = v16;
      if (BYTE3(v16))
      {
        v20 = 0xFFFFFFFFLL;
        v19 = v16;
      }

      else
      {
        LODWORD(v18) = -1;
        do
        {
          v17 = (v17 << 8);
          v18 = (v18 << 8);
          v19 = v17;
          v20 = v18;
        }

        while ((v17 - 1) < 0xFFFFFF);
      }

      return gen_host(a1, v19, v20, BYTE1(a3), BYTE2(a3));
    }

    if (a3 == 3)
    {
      if (BYTE1(a3) - 5 >= 3 && BYTE1(a3))
      {
        bpf_error(a1, "illegal qualifier of 'port'");
      }

      if (!pcap_nametoport(a2, &v47[1], v47))
      {
        bpf_error(a1, "unknown port '%s'");
      }

      switch(BYTE1(a3))
      {
        case 5u:
          if (v47[0] == 6)
          {
            goto LABEL_130;
          }

          if (v47[0] != 17)
          {
            v8 = 132;
            goto LABEL_82;
          }

          break;
        case 6u:
          if (v47[0] == 132)
          {
            goto LABEL_128;
          }

          if (v47[0] != 17)
          {
            v8 = 6;
            goto LABEL_82;
          }

          break;
        case 7u:
          if (v47[0] != 132)
          {
            if (v47[0] != 6)
            {
              v8 = 17;
LABEL_82:
              v47[0] = v8;
LABEL_83:
              if ((v47[1] & 0x80000000) == 0)
              {
                if (v47[1] < 0x10000u)
                {
                  v35 = gen_port(a1, v47[1], v47[0], BYTE2(a3));
                  v36 = v35;
                  v37 = gen_port6(a1, v47[1], v47[0], v7);
LABEL_95:
                  gen_or(v37, v35);
                  return v36;
                }

                goto LABEL_124;
              }

              goto LABEL_123;
            }

LABEL_130:
            bpf_error(a1, "port '%s' is tcp");
          }

LABEL_128:
          bpf_error(a1, "port '%s' is sctp");
        default:
          goto LABEL_83;
      }

      bpf_error(a1, "port '%s' is udp");
    }

LABEL_125:
    abort();
  }

  if (BYTE1(a3) != 12)
  {
    if (BYTE1(a3) == 1)
    {
      v10 = *(a1 + 228);
      if (v10 <= 104)
      {
        if (v10 != 1)
        {
          if (v10 == 6)
          {
            v40 = pcap_ether_hostton(a2);
            if (!v40)
            {
              bpf_error(a1, "unknown token ring host '%s'");
            }

            v12 = v40;
            v13 = gen_thostop(a1, v40, BYTE2(a3));
            goto LABEL_102;
          }

          if (v10 == 10)
          {
            v11 = pcap_ether_hostton(a2);
            if (!v11)
            {
              bpf_error(a1, "unknown FDDI host '%s'");
            }

            v12 = v11;
            v13 = gen_fhostop(a1, v11, BYTE2(a3));
LABEL_102:
            v41 = v13;
LABEL_110:
            free(v12);
            return v41;
          }

LABEL_112:
          bpf_error(a1, "only ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel supports link-level host name");
        }

LABEL_107:
        v43 = pcap_ether_hostton(a2);
        if (!v43)
        {
          bpf_error(a1, "unknown ether host '%s'");
        }

        v12 = v43;
        v44 = gen_prevlinkhdr_check(a1);
        v41 = gen_ehostop(a1, v12, BYTE2(a3));
        if (v44)
        {
          gen_and(v44, v41);
        }

        goto LABEL_110;
      }

      v38 = (v10 - 105);
      if (v38 <= 0x3A)
      {
        if (((1 << (v10 - 105)) & 0x400000000404001) != 0)
        {
          goto LABEL_98;
        }

        if (v38 == 17)
        {
          v42 = pcap_ether_hostton(a2);
          if (!v42)
          {
            bpf_error(a1, "unknown Fibre Channel host '%s'");
          }

          v12 = v42;
          v13 = gen_ipfchostop(a1, v42, BYTE2(a3));
          goto LABEL_102;
        }
      }

      if ((v10 - 240) < 2)
      {
        goto LABEL_107;
      }

      if (v10 != 192)
      {
        goto LABEL_112;
      }

LABEL_98:
      v39 = pcap_ether_hostton(a2);
      if (!v39)
      {
        bpf_error(a1, "unknown 802.11 host '%s'");
      }

      v12 = v39;
      v13 = gen_wlanhostop(a1, v39, BYTE2(a3));
      goto LABEL_102;
    }

    v21 = a3;
    v48[0] = -1;
    v48[1] = -1;
    v22 = pcap_nametoaddrinfo(a2);
    if (!v22)
    {
      bpf_error(a1, "unknown host '%s'");
    }

    v23 = v22;
    *(a1 + 264) = v22;
    v24 = *(a1 + 332) == -1;
    v25 = BYTE1(a3) == 0;
    if (v24 && v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = BYTE1(a3);
    }

    if (v24 && v25)
    {
      v27 = 17;
    }

    else
    {
      v27 = BYTE1(a3);
    }

    v28 = 0;
    v45 = v22;
    v29 = BYTE2(a3);
    while (1)
    {
      v30 = v28;
      ai_family = v23->ai_family;
      if (ai_family == 30)
      {
        if (v27 != 2)
        {
          v33 = gen_host6(a1, &v23->ai_addr->sa_data[6], v48, v27, v7, v21);
          goto LABEL_65;
        }
      }

      else if (ai_family == 2 && v26 != 17)
      {
        v33 = gen_host(a1, bswap32(*&v23->ai_addr->sa_data[2]), 0xFFFFFFFFLL, v26, v7);
LABEL_65:
        v34 = v33;
        if (v30)
        {
          gen_or(v30, v33);
        }

        v30 = v34;
        v7 = v29;
      }

      v23 = v23->ai_next;
      v28 = v30;
      if (!v23)
      {
        *(a1 + 264) = 0;
        freeaddrinfo(v45);
        result = v30;
        if (!v30)
        {
          bpf_error(a1, "unknown host '%s'%s");
        }

        return result;
      }
    }
  }

  LOWORD(v48[0]) = 0;
  if (!__pcap_nametodnaddr())
  {
    bpf_error(a1, "decnet name support not included, '%s' cannot be translated\n");
  }

  return gen_dnhostop(a1, LOWORD(v48[0]), BYTE2(a3));
}

void bpf_error(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf((*(a1 + 192) + 208), 0x100uLL, __format, va);
  longjmp(a1, 1);
}

size_t gen_host(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  switch(a4)
  {
    case 0:
      v9 = gen_hostop(a1, a2, a3, a5, 2048, 12, 16);
      if (!a1[62])
      {
        v10 = gen_hostop(a1, a2, a3, a5, 2054, 14, 24);
        gen_or(v9, v10);
        v9 = gen_hostop(a1, a2, a3, a5, 32821, 14, 24);
        gen_or(v10, v9);
      }

      return v9;
    case 1:
      bpf_error(a1, "link-layer modifier applied to %s");
    case 2:
      v12 = a5;
      v13 = 2048;
      v14 = 12;
      v15 = 16;
      goto LABEL_12;
    case 3:
      v12 = a5;
      v13 = 2054;
      goto LABEL_10;
    case 4:
      v12 = a5;
      v13 = 32821;
LABEL_10:
      v14 = 14;
      v15 = 24;
LABEL_12:

      result = gen_hostop(a1, a2, a3, v12, v13, v14, v15);
      break;
    case 5:
      bpf_error(a1, "'sctp' modifier applied to %s");
    case 6:
      bpf_error(a1, "'tcp' modifier applied to %s");
    case 7:
      bpf_error(a1, "'udp' modifier applied to %s");
    case 8:
      bpf_error(a1, "'icmp' modifier applied to %s");
    case 9:
      bpf_error(a1, "'igmp' modifier applied to %s");
    case 10:
      bpf_error(a1, "'igrp' modifier applied to %s");
    case 11:
      bpf_error(a1, "AppleTalk host filtering not implemented");
    case 12:

      result = gen_dnhostop(a1, a2, a5);
      break;
    case 13:
      bpf_error(a1, "LAT host filtering not implemented");
    case 14:
      bpf_error(a1, "SCA host filtering not implemented");
    case 15:
      bpf_error(a1, "MOPRC host filtering not implemented");
    case 16:
      bpf_error(a1, "MOPDL host filtering not implemented");
    case 17:
      bpf_error(a1, "'ip6' modifier applied to ip host");
    case 18:
      bpf_error(a1, "'icmp6' modifier applied to %s");
    case 19:
      bpf_error(a1, "'ah' modifier applied to %s");
    case 20:
      bpf_error(a1, "'esp' modifier applied to %s");
    case 21:
      bpf_error(a1, "'pim' modifier applied to %s");
    case 22:
      bpf_error(a1, "'vrrp' modifier applied to %s");
    case 23:
      bpf_error(a1, "AARP host filtering not implemented");
    case 24:
      bpf_error(a1, "ISO host filtering not implemented");
    case 25:
      bpf_error(a1, "'esis' modifier applied to %s");
    case 26:
      bpf_error(a1, "'isis' modifier applied to %s");
    case 27:
      bpf_error(a1, "'clnp' modifier applied to %s");
    case 28:
      bpf_error(a1, "'stp' modifier applied to %s");
    case 29:
      bpf_error(a1, "IPX host filtering not implemented");
    case 30:
      bpf_error(a1, "'netbeui' modifier applied to %s");
    case 31:
      bpf_error(a1, "'l1' modifier applied to %s");
    case 32:
      bpf_error(a1, "'l2' modifier applied to %s");
    case 33:
      bpf_error(a1, "'iih' modifier applied to %s");
    case 34:
      bpf_error(a1, "'snp' modifier applied to %s");
    case 35:
      bpf_error(a1, "'csnp' modifier applied to %s");
    case 36:
      bpf_error(a1, "'psnp' modifier applied to %s");
    case 37:
      bpf_error(a1, "'lsp' modifier applied to %s");
    case 38:
      bpf_error(a1, "'radio' modifier applied to %s");
    case 39:
      bpf_error(a1, "'carp' modifier applied to %s");
    default:
      abort();
  }

  return result;
}

size_t gen_prevlinkhdr_check(int *a1)
{
  if (a1[86])
  {
    absoffsetrel = newchunk(a1, 40);
    *absoffsetrel = 96;
    absoffsetrel[6] = a1[72];
    v3 = newchunk(a1, 40);
    *v3 = 97;
    v3[6] = a1[81];
    v4 = absoffsetrel;
    do
    {
      v5 = v4;
      v4 = *(v4 + 4);
    }

    while (v4);
    *(v5 + 4) = v3;
    result = newchunk(a1, 288);
    v7 = 0;
    v8 = 29;
    goto LABEL_7;
  }

  if (a1[58] == 123)
  {
    absoffsetrel = gen_load_absoffsetrel(a1, a1 + 73, 4, 8);
    result = newchunk(a1, 288);
    v7 = 65280;
    v8 = 21;
LABEL_7:
    *(result + 16) = v8;
    *(result + 152) = result;
    *(result + 8) = absoffsetrel;
    *(result + 40) = v7;
    *(result + 68) = *(result + 68) == 0;
    return result;
  }

  return 0;
}

size_t gen_ehostop(int *a1, unsigned __int8 *a2, int a3)
{
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 >= 5)
      {
        if (a3 <= 7)
        {
          if (a3 != 5)
          {
            if (a3 != 6)
            {
              bpf_error(a1, "'addr3' and 'address3' are only supported on 802.11 with 802.11 headers");
            }

            bpf_error(a1, "'addr2' and 'address2' are only supported on 802.11 with 802.11 headers");
          }

          bpf_error(a1, "'addr1' and 'address1' are only supported on 802.11 with 802.11 headers");
        }

        switch(a3)
        {
          case 8:
            bpf_error(a1, "'addr4' and 'address4' are only supported on 802.11 with 802.11 headers");
          case 9:
            bpf_error(a1, "'ra' is only supported on 802.11 with 802.11 headers");
          case 10:
            bpf_error(a1, "'ta' is only supported on 802.11 with 802.11 headers");
        }

        goto LABEL_27;
      }

      v6 = gen_bcmp(a1, 1, 6, 6u, a2);
      v7 = gen_bcmp(a1, 1, 0, 6u, a2);
      gen_and(v6, v7);
      return v7;
    }

LABEL_9:
    v8 = gen_bcmp(a1, 1, 6, 6u, a2);
    v7 = gen_bcmp(a1, 1, 0, 6u, a2);
    gen_or(v8, v7);
    return v7;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v5 = 6;
    goto LABEL_12;
  }

  if (a3 != 2)
  {
LABEL_27:
    abort();
  }

  v5 = 0;
LABEL_12:

  return gen_bcmp(a1, 1, v5, 6u, a2);
}

size_t gen_fhostop(int *a1, unsigned __int8 *a2, int a3)
{
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 >= 5)
      {
        if (a3 <= 7)
        {
          if (a3 != 5)
          {
            if (a3 != 6)
            {
              bpf_error(a1, "'addr3' and 'address3' are only supported on 802.11");
            }

            bpf_error(a1, "'addr2' and 'address2' are only supported on 802.11");
          }

          bpf_error(a1, "'addr1' and 'address1' are only supported on 802.11");
        }

        switch(a3)
        {
          case 8:
            bpf_error(a1, "'addr4' and 'address4' are only supported on 802.11");
          case 9:
            bpf_error(a1, "'ra' is only supported on 802.11");
          case 10:
            bpf_error(a1, "'ta' is only supported on 802.11");
        }

        goto LABEL_27;
      }

      v6 = gen_bcmp(a1, 1, a1[64] + 7, 6u, a2);
      v7 = gen_bcmp(a1, 1, a1[64] + 1, 6u, a2);
      gen_and(v6, v7);
      return v7;
    }

LABEL_9:
    v8 = gen_bcmp(a1, 1, a1[64] + 7, 6u, a2);
    v7 = gen_bcmp(a1, 1, a1[64] + 1, 6u, a2);
    gen_or(v8, v7);
    return v7;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v5 = a1[64] + 7;
    goto LABEL_12;
  }

  if (a3 != 2)
  {
LABEL_27:
    abort();
  }

  v5 = a1[64] + 1;
LABEL_12:

  return gen_bcmp(a1, 1, v5, 6u, a2);
}

size_t gen_thostop(int *a1, unsigned __int8 *a2, int a3)
{
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 >= 5)
      {
        if (a3 <= 7)
        {
          if (a3 != 5)
          {
            if (a3 != 6)
            {
              bpf_error(a1, "'addr3' and 'address3' are only supported on 802.11");
            }

            bpf_error(a1, "'addr2' and 'address2' are only supported on 802.11");
          }

          bpf_error(a1, "'addr1' and 'address1' are only supported on 802.11");
        }

        switch(a3)
        {
          case 8:
            bpf_error(a1, "'addr4' and 'address4' are only supported on 802.11");
          case 9:
            bpf_error(a1, "'ra' is only supported on 802.11");
          case 10:
            bpf_error(a1, "'ta' is only supported on 802.11");
        }

        goto LABEL_27;
      }

      v5 = gen_bcmp(a1, 1, 8, 6u, a2);
      v6 = gen_bcmp(a1, 1, 2, 6u, a2);
      gen_and(v5, v6);
      return v6;
    }

LABEL_9:
    v7 = gen_bcmp(a1, 1, 8, 6u, a2);
    v6 = gen_bcmp(a1, 1, 2, 6u, a2);
    gen_or(v7, v6);
    return v6;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      goto LABEL_12;
    }

LABEL_27:
    abort();
  }

  a3 = 8;
LABEL_12:

  return gen_bcmp(a1, 1, a3, 6u, a2);
}

size_t gen_wlanhostop(int *a1, unsigned __int8 *a2, int a3)
{
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        goto LABEL_17;
      }

      if (a3 != 1)
      {
        goto LABEL_31;
      }

      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
      v15 = newchunk(a1, 288);
      *(v15 + 16) = 69;
      *(v15 + 152) = v15;
      *(v15 + 40) = 1;
      *(v15 + 8) = absoffsetrel;
      v16 = gen_bcmp(a1, 1, 24, 6u, a2);
      gen_and(v15, v16);
      v17 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
      v18 = newchunk(a1, 288);
      *(v18 + 16) = 69;
      *(v18 + 152) = v18;
      *(v18 + 40) = 1;
      *(v18 + 8) = v17;
      *(v18 + 68) = *(v18 + 68) == 0;
      v19 = gen_bcmp(a1, 1, 16, 6u, a2);
      gen_and(v18, v19);
      gen_or(v19, v16);
      v20 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
      v21 = newchunk(a1, 288);
      *(v21 + 16) = 69;
      *(v21 + 152) = v21;
      *(v21 + 40) = 2;
      *(v21 + 8) = v20;
      gen_and(v21, v16);
      v22 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
      v23 = newchunk(a1, 288);
      *(v23 + 16) = 69;
      *(v23 + 152) = v23;
      *(v23 + 40) = 2;
      *(v23 + 8) = v22;
      *(v23 + 68) = *(v23 + 68) == 0;
      v24 = gen_bcmp(a1, 1, 10, 6u, a2);
      gen_and(v23, v24);
      gen_or(v24, v16);
      v25 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v26 = newchunk(a1, 288);
      *(v26 + 16) = 69;
      *(v26 + 152) = v26;
      *(v26 + 40) = 8;
      *(v26 + 8) = v25;
      gen_and(v26, v16);
      v27 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v28 = newchunk(a1, 288);
      *(v28 + 16) = 69;
      *(v28 + 152) = v28;
      *(v28 + 40) = 8;
      *(v28 + 8) = v27;
      *(v28 + 68) = *(v28 + 68) == 0;
      v29 = gen_bcmp(a1, 1, 10, 6u, a2);
      gen_and(v28, v29);
      gen_or(v29, v16);
      v30 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v31 = newchunk(a1, 288);
      *(v31 + 16) = 69;
      *(v31 + 152) = v31;
      *(v31 + 40) = 4;
    }

    else
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          v5 = gen_wlanhostop(a1, a2, 1);
          v8 = gen_wlanhostop(a1, a2, 2);
LABEL_26:
          v16 = v8;
          v31 = v5;
          goto LABEL_29;
        }

LABEL_17:
        v32 = gen_wlanhostop(a1, a2, 1);
        v16 = gen_wlanhostop(a1, a2, 2);
        gen_or(v32, v16);
        return v16;
      }

      v37 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
      v38 = newchunk(a1, 288);
      *(v38 + 16) = 69;
      *(v38 + 152) = v38;
      *(v38 + 40) = 1;
      *(v38 + 8) = v37;
      v16 = gen_bcmp(a1, 1, 16, 6u, a2);
      gen_and(v38, v16);
      v39 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
      v40 = newchunk(a1, 288);
      *(v40 + 16) = 69;
      *(v40 + 152) = v40;
      *(v40 + 40) = 1;
      *(v40 + 8) = v39;
      *(v40 + 68) = *(v40 + 68) == 0;
      v41 = gen_bcmp(a1, 1, 4, 6u, a2);
      gen_and(v40, v41);
      gen_or(v41, v16);
      v42 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v43 = newchunk(a1, 288);
      *(v43 + 16) = 69;
      *(v43 + 152) = v43;
      *(v43 + 40) = 8;
      *(v43 + 8) = v42;
      gen_and(v43, v16);
      v44 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v45 = newchunk(a1, 288);
      *(v45 + 16) = 69;
      *(v45 + 152) = v45;
      *(v45 + 40) = 8;
      *(v45 + 8) = v44;
      *(v45 + 68) = *(v45 + 68) == 0;
      v46 = gen_bcmp(a1, 1, 4, 6u, a2);
      gen_and(v45, v46);
      gen_or(v46, v16);
      v30 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v31 = newchunk(a1, 288);
      *(v31 + 16) = 69;
      *(v31 + 152) = v31;
      *(v31 + 40) = 4;
    }

    *(v31 + 8) = v30;
    *(v31 + 68) = *(v31 + 68) == 0;
    goto LABEL_29;
  }

  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        v5 = gen_ncmp(a1, 1, 1, 16, 3, 16, 0, 3);
        v6 = a1;
        v7 = 24;
        goto LABEL_25;
      case 9:
        v35 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
        v5 = newchunk(a1, 288);
        *(v5 + 16) = 69;
        *(v5 + 152) = v5;
        *(v5 + 40) = 8;
        *(v5 + 8) = v35;
        v6 = a1;
        v7 = 4;
        goto LABEL_25;
      case 10:
        v9 = gen_ncmp(a1, 1, 0, 16, 12, 16, 0, 4);
        *(v9 + 68) = *(v9 + 68) == 0;
        v10 = gen_ncmp(a1, 1, 0, 16, 240, 16, 0, 192);
        *(v10 + 68) = *(v10 + 68) == 0;
        v11 = gen_ncmp(a1, 1, 0, 16, 240, 16, 0, 208);
        *(v11 + 68) = *(v11 + 68) == 0;
        gen_and(v10, v11);
        gen_or(v9, v11);
        v12 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
        v13 = newchunk(a1, 288);
        *(v13 + 16) = 69;
        *(v13 + 152) = v13;
        *(v13 + 40) = 8;
        *(v13 + 8) = v12;
        gen_and(v13, v11);
        goto LABEL_19;
    }

LABEL_31:
    abort();
  }

  if (a3 != 5)
  {
    if (a3 != 6)
    {
      v5 = gen_ncmp(a1, 1, 0, 16, 12, 16, 0, 4);
      *(v5 + 68) = *(v5 + 68) == 0;
      v6 = a1;
      v7 = 16;
LABEL_25:
      v8 = gen_bcmp(v6, 1, v7, 6u, a2);
      goto LABEL_26;
    }

    v33 = gen_ncmp(a1, 1, 0, 16, 12, 16, 0, 4);
    *(v33 + 68) = *(v33 + 68) == 0;
    v34 = gen_ncmp(a1, 1, 0, 16, 240, 16, 0, 192);
    *(v34 + 68) = *(v34 + 68) == 0;
    v11 = gen_ncmp(a1, 1, 0, 16, 240, 16, 0, 208);
    *(v11 + 68) = *(v11 + 68) == 0;
    gen_and(v34, v11);
    gen_or(v33, v11);
LABEL_19:
    v16 = gen_bcmp(a1, 1, 10, 6u, a2);
    v31 = v11;
LABEL_29:
    gen_and(v31, v16);
    return v16;
  }

  return gen_bcmp(a1, 1, 4, 6u, a2);
}

size_t gen_ipfchostop(int *a1, unsigned __int8 *a2, int a3)
{
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 >= 5)
      {
        if (a3 <= 7)
        {
          if (a3 != 5)
          {
            if (a3 != 6)
            {
              bpf_error(a1, "'addr3' and 'address3' are only supported on 802.11");
            }

            bpf_error(a1, "'addr2' and 'address2' are only supported on 802.11");
          }

          bpf_error(a1, "'addr1' and 'address1' are only supported on 802.11");
        }

        switch(a3)
        {
          case 8:
            bpf_error(a1, "'addr4' and 'address4' are only supported on 802.11");
          case 9:
            bpf_error(a1, "'ra' is only supported on 802.11");
          case 10:
            bpf_error(a1, "'ta' is only supported on 802.11");
        }

        goto LABEL_27;
      }

      v5 = gen_bcmp(a1, 1, 10, 6u, a2);
      v6 = gen_bcmp(a1, 1, 2, 6u, a2);
      gen_and(v5, v6);
      return v6;
    }

LABEL_9:
    v7 = gen_bcmp(a1, 1, 10, 6u, a2);
    v6 = gen_bcmp(a1, 1, 2, 6u, a2);
    gen_or(v7, v6);
    return v6;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      goto LABEL_12;
    }

LABEL_27:
    abort();
  }

  a3 = 10;
LABEL_12:

  return gen_bcmp(a1, 1, a3, 6u, a2);
}

size_t gen_host6(int *a1, unsigned int *a2, unsigned int *a3, int a4, int a5, int a6)
{
  v6 = "host";
  if (a6 == 2)
  {
    v6 = "net";
  }

  switch(a4)
  {
    case 0:
    case 17:

      return gen_hostop6(a1, a2, a3, a5);
    case 1:
      bpf_error(a1, "link-layer modifier applied to ip6 %s", v6);
    case 2:
      bpf_error(a1, "'ip' modifier applied to ip6 %s", v6);
    case 3:
      bpf_error(a1, "'arp' modifier applied to ip6 %s", v6);
    case 4:
      bpf_error(a1, "'rarp' modifier applied to ip6 %s", v6);
    case 5:
      bpf_error(a1, "'sctp' modifier applied to ip6 %s", v6);
    case 6:
      bpf_error(a1, "'tcp' modifier applied to ip6 %s", v6);
    case 7:
      bpf_error(a1, "'udp' modifier applied to ip6 %s", v6);
    case 8:
      bpf_error(a1, "'icmp' modifier applied to ip6 %s", v6);
    case 9:
      bpf_error(a1, "'igmp' modifier applied to ip6 %s", v6);
    case 10:
      bpf_error(a1, "'igrp' modifier applied to ip6 %s", v6);
    case 11:
      bpf_error(a1, "AppleTalk modifier applied to ip6 %s", v6);
    case 12:
      bpf_error(a1, "'decnet' modifier applied to ip6 %s", v6);
    case 13:
      bpf_error(a1, "'lat' modifier applied to ip6 %s", v6);
    case 14:
      bpf_error(a1, "'sca' modifier applied to ip6 %s", v6);
    case 15:
      bpf_error(a1, "'moprc' modifier applied to ip6 %s", v6);
    case 16:
      bpf_error(a1, "'mopdl' modifier applied to ip6 %s", v6);
    case 18:
      bpf_error(a1, "'icmp6' modifier applied to ip6 %s", v6);
    case 19:
      bpf_error(a1, "'ah' modifier applied to ip6 %s", v6);
    case 20:
      bpf_error(a1, "'esp' modifier applied to ip6 %s", v6);
    case 21:
      bpf_error(a1, "'pim' modifier applied to ip6 %s", v6);
    case 22:
      bpf_error(a1, "'vrrp' modifier applied to ip6 %s", v6);
    case 23:
      bpf_error(a1, "'aarp' modifier applied to ip6 %s", v6);
    case 24:
      bpf_error(a1, "'iso' modifier applied to ip6 %s", v6);
    case 25:
      bpf_error(a1, "'esis' modifier applied to ip6 %s", v6);
    case 26:
      bpf_error(a1, "'isis' modifier applied to ip6 %s", v6);
    case 27:
      bpf_error(a1, "'clnp' modifier applied to ip6 %s", v6);
    case 28:
      bpf_error(a1, "'stp' modifier applied to ip6 %s", v6);
    case 29:
      bpf_error(a1, "'ipx' modifier applied to ip6 %s", v6);
    case 30:
      bpf_error(a1, "'netbeui' modifier applied to ip6 %s", v6);
    case 31:
      bpf_error(a1, "'l1' modifier applied to ip6 %s", v6);
    case 32:
      bpf_error(a1, "'l2' modifier applied to ip6 %s", v6);
    case 33:
      bpf_error(a1, "'iih' modifier applied to ip6 %s", v6);
    case 34:
      bpf_error(a1, "'snp' modifier applied to ip6 %s", v6);
    case 35:
      bpf_error(a1, "'csnp' modifier applied to ip6 %s", v6);
    case 36:
      bpf_error(a1, "'psnp' modifier applied to ip6 %s", v6);
    case 37:
      bpf_error(a1, "'lsp' modifier applied to ip6 %s", v6);
    case 38:
      bpf_error(a1, "'radio' modifier applied to ip6 %s", v6);
    case 39:
      bpf_error(a1, "'carp' modifier applied to ip6 %s", v6);
    default:
      abort();
  }
}

size_t gen_port(int *a1, int a2, int a3, int a4)
{
  v8 = gen_linktype(a1, 2048);
  if (a3 > 16)
  {
    if (a3 != 132 && a3 != 17)
    {
LABEL_10:
      abort();
    }
  }

  else
  {
    if (a3 == -1)
    {
      v10 = gen_portop(a1, a2, 6, a4);
      v9 = gen_portop(a1, a2, 17, a4);
      gen_or(v10, v9);
      v11 = gen_portop(a1, a2, 132, a4);
      gen_or(v11, v9);
      goto LABEL_9;
    }

    if (a3 != 6)
    {
      goto LABEL_10;
    }
  }

  v9 = gen_portop(a1, a2, a3, a4);
LABEL_9:
  gen_and(v8, v9);
  return v9;
}

size_t gen_port6(int *a1, int a2, int a3, int a4)
{
  v8 = gen_linktype(a1, 34525);
  if (a3 > 16)
  {
    if (a3 != 132 && a3 != 17)
    {
LABEL_10:
      abort();
    }
  }

  else
  {
    if (a3 == -1)
    {
      v10 = gen_portop6(a1, a2, 6, a4);
      v9 = gen_portop6(a1, a2, 17, a4);
      gen_or(v10, v9);
      v11 = gen_portop6(a1, a2, 132, a4);
      gen_or(v11, v9);
      goto LABEL_9;
    }

    if (a3 != 6)
    {
      goto LABEL_10;
    }
  }

  v9 = gen_portop6(a1, a2, a3, a4);
LABEL_9:
  gen_and(v8, v9);
  return v9;
}

size_t gen_portrange(int *a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v10 = gen_linktype(a1, 2048);
  if (a4 > 16)
  {
    if (a4 != 132 && a4 != 17)
    {
LABEL_10:
      abort();
    }
  }

  else
  {
    if (a4 == -1)
    {
      v12 = gen_portrangeop(a1, a2, a3, 6, a5);
      v11 = gen_portrangeop(a1, a2, a3, 17, a5);
      gen_or(v12, v11);
      v13 = gen_portrangeop(a1, a2, a3, 132, a5);
      gen_or(v13, v11);
      goto LABEL_9;
    }

    if (a4 != 6)
    {
      goto LABEL_10;
    }
  }

  v11 = gen_portrangeop(a1, a2, a3, a4, a5);
LABEL_9:
  gen_and(v10, v11);
  return v11;
}

size_t gen_portrange6(int *a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v10 = gen_linktype(a1, 34525);
  if (a4 > 16)
  {
    if (a4 != 132 && a4 != 17)
    {
LABEL_10:
      abort();
    }
  }

  else
  {
    if (a4 == -1)
    {
      v12 = gen_portrangeop6(a1, a2, a3, 6, a5);
      v11 = gen_portrangeop6(a1, a2, a3, 17, a5);
      gen_or(v12, v11);
      v13 = gen_portrangeop6(a1, a2, a3, 132, a5);
      gen_or(v13, v11);
      goto LABEL_9;
    }

    if (a4 != 6)
    {
      goto LABEL_10;
    }
  }

  v11 = gen_portrangeop6(a1, a2, a3, a4, a5);
LABEL_9:
  gen_and(v10, v11);
  return v11;
}

uint64_t lookup_proto(uint64_t a1, char *__s1, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        result = pcap_nametoeproto(__s1);
        if (result == -1)
        {
          result = pcap_nametollc(__s1);
          if (result == -1)
          {
            bpf_error(a1, "unknown ether proto '%s'");
          }
        }
      }

      return result;
    }

LABEL_11:
    result = pcap_nametoproto(__s1);
    if (result == -1)
    {
      bpf_error(a1, "unknown ip proto '%s'");
    }

    return result;
  }

  if (a3 == 2)
  {
    goto LABEL_11;
  }

  if (a3 != 24)
  {
    if (a3 != 17)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!strcmp(__s1, "esis"))
  {
    return 130;
  }

  if (!strcmp(__s1, "isis"))
  {
    return 131;
  }

  if (strcmp(__s1, "clnp"))
  {
    bpf_error(a1, "unknown osi proto '%s'");
  }

  return 129;
}

size_t gen_proto(int *a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    bpf_error(a1, "direction applied to 'proto'");
  }

  switch(a3)
  {
    case 0:
      v6 = gen_proto(a1, a2, 2, 0);
      v7 = gen_proto(a1, a2, 17, 0);
      gen_or(v6, v7);
      return v7;
    case 1:

      return gen_linktype(a1, a2);
    case 2:
      v8 = gen_linktype(a1, 2048);
      v9 = a1 + 79;
      v10 = a1[98] + 9;
      goto LABEL_15;
    case 3:
      bpf_error(a1, "arp does not encapsulate another protocol");
    case 4:
      bpf_error(a1, "rarp does not encapsulate another protocol");
    case 5:
      bpf_error(a1, "'sctp proto' is bogus");
    case 6:
      bpf_error(a1, "'tcp proto' is bogus");
    case 7:
      bpf_error(a1, "'udp proto' is bogus");
    case 8:
      bpf_error(a1, "'icmp proto' is bogus");
    case 9:
      bpf_error(a1, "'igmp proto' is bogus");
    case 10:
      bpf_error(a1, "'igrp proto' is bogus");
    case 11:
      bpf_error(a1, "AppleTalk encapsulation is not specifiable");
    case 12:
      bpf_error(a1, "DECNET encapsulation is not specifiable");
    case 13:
      bpf_error(a1, "LAT does not encapsulate another protocol");
    case 14:
      bpf_error(a1, "SCA does not encapsulate another protocol");
    case 15:
      bpf_error(a1, "MOPRC does not encapsulate another protocol");
    case 16:
      bpf_error(a1, "MOPDL does not encapsulate another protocol");
    case 17:
      v8 = gen_linktype(a1, 34525);
      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 6, 16);
      v15 = newchunk(a1, 288);
      *(v15 + 16) = 21;
      *(v15 + 152) = v15;
      *(v15 + 8) = absoffsetrel;
      *(v15 + 40) = 44;
      v16 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 40, 16);
      v7 = newchunk(a1, 288);
      *(v7 + 16) = 21;
      *(v7 + 152) = v7;
      *(v7 + 8) = v16;
      *(v7 + 40) = a2;
      gen_and(v15, v7);
      v17 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 6, 16);
      v18 = newchunk(a1, 288);
      *(v18 + 16) = 21;
      *(v18 + 152) = v18;
      *(v18 + 8) = v17;
      *(v18 + 40) = a2;
      gen_or(v18, v7);
      goto LABEL_16;
    case 18:
      bpf_error(a1, "'icmp6 proto' is bogus");
    case 19:
      bpf_error(a1, "'ah proto' is bogus");
    case 20:
      bpf_error(a1, "'esp proto' is bogus");
    case 21:
      bpf_error(a1, "'pim proto' is bogus");
    case 22:
      bpf_error(a1, "'vrrp proto' is bogus");
    case 23:
      bpf_error(a1, "'aarp proto' is bogus");
    case 24:
      v11 = a1[57];
      if (v11 == 104)
      {
        v8 = gen_linktype(a1, 65278);
        v9 = a1 + 79;
        v10 = a1[99] + 1;
      }

      else
      {
        if (v11 == 107)
        {
          v12 = a2 | 0x300;
          v13 = gen_load_absoffsetrel(a1, a1 + 70, 2, 8);
          v7 = newchunk(a1, 288);
          *(v7 + 16) = 21;
          *(v7 + 152) = v7;
          *(v7 + 8) = v13;
          *(v7 + 40) = v12;
          return v7;
        }

        v8 = gen_linktype(a1, 254);
        v10 = a1[99];
        v9 = a1 + 79;
      }

LABEL_15:
      v20 = gen_load_absoffsetrel(a1, v9, v10, 16);
      v7 = newchunk(a1, 288);
      *(v7 + 16) = 21;
      *(v7 + 152) = v7;
      *(v7 + 8) = v20;
      *(v7 + 40) = a2;
LABEL_16:
      gen_and(v8, v7);
      return v7;
    case 25:
      bpf_error(a1, "'esis proto' is bogus");
    case 26:
      v8 = gen_proto(a1, 131, 24, 0);
      v9 = a1 + 79;
      v10 = a1[99] + 4;
      goto LABEL_15;
    case 27:
      bpf_error(a1, "'clnp proto' is not supported");
    case 28:
      bpf_error(a1, "'stp proto' is bogus");
    case 29:
      bpf_error(a1, "'ipx proto' is bogus");
    case 30:
      bpf_error(a1, "'netbeui proto' is bogus");
    case 31:
      bpf_error(a1, "'l1 proto' is bogus");
    case 32:
      bpf_error(a1, "'l2 proto' is bogus");
    case 33:
      bpf_error(a1, "'iih proto' is bogus");
    case 34:
      bpf_error(a1, "'snp proto' is bogus");
    case 35:
      bpf_error(a1, "'csnp proto' is bogus");
    case 36:
      bpf_error(a1, "'psnp proto' is bogus");
    case 37:
      bpf_error(a1, "'lsp proto' is bogus");
    case 38:
      bpf_error(a1, "'radio proto' is bogus");
    case 39:
      bpf_error(a1, "'carp proto' is bogus");
    default:
      abort();
  }
}

size_t gen_protochain(int *a1, uint64_t a2, int a3)
{
  v81 = *MEMORY[0x29EDCA608];
  v6 = alloc_reg(a1);
  bzero(&v64, 0x318uLL);
  if (a3 == 17 || a3 == 2)
  {
    if (a1[79])
    {
      bpf_error(a1, "'protochain' not supported with variable length headers");
    }

    a1[61] = 1;
    v9 = newchunk(a1, 40);
    *v9 = 0;
    v63 = v9;
    if (a3 == 17)
    {
      v62 = gen_linktype(a1, 34525);
      v12 = 40;
      v13 = newchunk(a1, 40);
      *v13 = 48;
      v64 = v13;
      v13[6] = a1[80] + a1[98] + 6;
      v11 = newchunk(a1, 40);
      *v11 = 1;
      v65 = v11;
    }

    else
    {
      v62 = gen_linktype(a1, 2048);
      v10 = newchunk(a1, 40);
      *v10 = 48;
      v64 = v10;
      v10[6] = a1[80] + a1[98] + 9;
      v11 = newchunk(a1, 40);
      *v11 = 177;
      v65 = v11;
      v12 = a1[98] + a1[80];
    }

    v11[6] = v12;
    v14 = newchunk(a1, 40);
    *v14 = 21;
    v66 = v14;
    *(v14 + 24) = a2;
    *(v14 + 8) = 0;
    *(v66 + 16) = 0;
    v15 = newchunk(a1, 40);
    *v15 = 21;
    v67 = v15;
    *(v15 + 8) = 0;
    *(v67 + 16) = 0;
    v16 = v66;
    v17 = v67;
    *(v67 + 24) = 59;
    *(v16 + 16) = v17;
    v18 = newchunk(a1, 40);
    if (a3 == 17)
    {
      v19 = &v71;
      *v18 = 21;
      v68 = v18;
      *(v18 + 8) = 0;
      *(v68 + 16) = 0;
      v20 = v67;
      v21 = v68;
      *(v68 + 24) = 0;
      *(v20 + 16) = v21;
      v22 = newchunk(a1, 40);
      *v22 = 21;
      v69 = v22;
      *(v21 + 16) = v22;
      *(v69 + 1) = 0;
      *(v69 + 2) = 0;
      v23 = v69;
      v69[6] = 60;
      v24 = newchunk(a1, 40);
      *v24 = 21;
      v70 = v24;
      *(v23 + 2) = v24;
      *(v70 + 1) = 0;
      *(v70 + 2) = 0;
      v25 = v70;
      v70[6] = 43;
      v26 = newchunk(a1, 40);
      *v26 = 21;
      v71 = v26;
      *(v25 + 2) = v26;
      *(v71 + 1) = 0;
      *(v71 + 2) = 0;
      v71[6] = 44;
      v27 = newchunk(a1, 40);
      *v27 = 80;
      v72 = v27;
      v27[6] = a1[98] + a1[80];
      v28 = newchunk(a1, 40);
      *v28 = 2;
      v73 = v28;
      v28[6] = v6;
      v29 = newchunk(a1, 40);
      *v29 = 80;
      v74 = v29;
      v29[6] = a1[80] + a1[98] + 1;
      v30 = newchunk(a1, 40);
      *v30 = 4;
      v75 = v30;
      v30[6] = 1;
      v31 = newchunk(a1, 40);
      *v31 = 36;
      v76 = v31;
      v31[6] = 8;
      v32 = newchunk(a1, 40);
      *v32 = 12;
      v77 = v32;
      v32[6] = 0;
      v33 = newchunk(a1, 40);
      *v33 = 7;
      v78 = v33;
      v34 = newchunk(a1, 40);
      *v34 = 96;
      v79 = v34;
      *(v34 + 24) = v6;
      v35 = newchunk(a1, 40);
      v36 = 0;
      *v35 = 5;
      v80 = v35;
      v35[6] = -15;
      *(v34 + 16) = v35;
      v37 = v72;
      do
      {
        *(*(&v68 + v36) + 8) = v37;
        v36 += 8;
      }

      while (v36 != 32);
      v38 = 18;
    }

    else
    {
      *v18 = 4;
      v68 = v18;
      *(v18 + 24) = 0;
      *(v17 + 16) = v18;
      v38 = 6;
      v19 = &v63;
    }

    v39 = newchunk(a1, 40);
    *v39 = 21;
    (&v63)[v38] = v39;
    *(v39 + 8) = 0;
    *((&v63)[v38] + 2) = 0;
    v40 = (&v63)[v38];
    v40[6] = 51;
    if (a3 == 17)
    {
      *(*v19 + 16) = v40;
    }

    v41 = newchunk(a1, 40);
    *v41 = 135;
    (&v63)[v38 | 1] = v41;
    *((&v63)[v38] + 1) = v41;
    v42 = newchunk(a1, 40);
    *(&v63 + v38 + 2) = v42;
    *v42 = 80;
    v42[6] = a1[98] + a1[80];
    v43 = newchunk(a1, 40);
    *v43 = 2;
    *(&v63 + v38 + 3) = v43;
    *(v43 + 24) = v6;
    v44 = newchunk(a1, 40);
    *v44 = 135;
    (&v63)[v38 + 1] = v44;
    *(v43 + 8) = v44;
    v45 = newchunk(a1, 40);
    *v45 = 4;
    *(&v63 + v38 + 5) = v45;
    v45[6] = 1;
    v46 = newchunk(a1, 40);
    *v46 = 7;
    *(&v63 + v38 + 6) = v46;
    v47 = newchunk(a1, 40);
    *(&v63 + v38 + 7) = v47;
    *v47 = 80;
    v47[6] = a1[98] + a1[80];
    v48 = newchunk(a1, 40);
    *v48 = 4;
    (&v63)[v38 | 8] = v48;
    v48[6] = 2;
    v49 = newchunk(a1, 40);
    *v49 = 36;
    (&v63)[v38 | 9] = v49;
    v49[6] = 4;
    v50 = newchunk(a1, 40);
    *v50 = 7;
    *(&v63 + v38 + 10) = v50;
    v51 = newchunk(a1, 40);
    *v51 = 96;
    *(&v63 + v38 + 11) = v51;
    v51[6] = v6;
    v52 = newchunk(a1, 40);
    *v52 = 5;
    (&v63)[v38 + 3] = v52;
    v52[6] = -10 - v38;
    v53 = v38 + 13;
    v54 = newchunk(a1, 40);
    *v54 = 4;
    (&v63)[v53] = v54;
    v54[6] = 0;
    *(v67 + 8) = v54;
    v55 = (&v63)[v53];
    *((&v63)[v38] + 2) = v55;
    v56 = v63;
    *(v66 + 8) = v55;
    v57 = &v64;
    v58 = v53;
    do
    {
      v59 = *v57++;
      *(v56 + 4) = v59;
      v56 = v59;
      --v58;
    }

    while (v58);
    *((&v63)[v53] + 4) = 0;
    v8 = newchunk(a1, 288);
    *(v8 + 16) = 21;
    *(v8 + 152) = v8;
    *(v8 + 8) = v64;
    *(v8 + 40) = a2;
    a1[v6 + 100] = 0;
    gen_and(v62, v8);
  }

  else
  {
    if (a3)
    {
      bpf_error(a1, "bad protocol applied for 'protochain'");
    }

    v7 = gen_protochain(a1, a2, 2);
    v8 = gen_protochain(a1, a2, 17);
    gen_or(v7, v8);
  }

  v60 = *MEMORY[0x29EDCA608];
  return v8;
}

size_t gen_mcode(int *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v19 = 0;
  if (setjmp(a1))
  {
    return 0;
  }

  v11 = __pcap_atoin(a2, &v19 + 1);
  if (v11 < 0)
  {
    goto LABEL_18;
  }

  v13 = (HIDWORD(v19) << -v11);
  HIDWORD(v19) <<= -v11;
  if (!a3)
  {
    if (a4 >= 0x21)
    {
      bpf_error(a1, "mask length must be <= 32");
    }

    if (a4)
    {
      v18 = (-1 << -a4);
    }

    else
    {
      v18 = 0;
    }

    LODWORD(v19) = v18;
    if ((v13 & ~v18) != 0)
    {
      bpf_error(a1, "non-network bits set in %s/%d", v12);
    }

    v16 = v18;
    v17 = v13;
    goto LABEL_14;
  }

  v14 = __pcap_atoin(a3, &v19);
  if (v14 < 0)
  {
LABEL_18:
    bpf_error(a1, "invalid IPv4 address '%s'", v12);
  }

  v15 = (v19 << -v14);
  LODWORD(v19) = v15;
  if ((HIDWORD(v19) & ~v15) != 0)
  {
    bpf_error(a1, "non-network bits set in %s mask %s", v12);
  }

  v16 = v15;
  v17 = HIDWORD(v19);
LABEL_14:
  if (a5 != 2)
  {
    bpf_error(a1, "Mask syntax for networks only", v16);
  }

  return gen_host(a1, v17, v16, BYTE1(a5), BYTE2(a5));
}

size_t gen_ncode(int *a1, const char *a2, unsigned int a3, unsigned int a4)
{
  v22 = a3;
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2)
  {
    if (BYTE1(a4) == 12)
    {
      v8 = __pcap_atodn(a2, &v22);
      if (!v8)
      {
        bpf_error(a1, "malformed decnet address '%s'");
      }
    }

    else
    {
      v8 = __pcap_atoin(a2, &v22);
      if (v8 < 0)
      {
        bpf_error(a1, "invalid IPv4 address '%s'");
      }
    }

    v9 = v8;
  }

  else
  {
    v9 = 32;
  }

  v10 = BYTE2(a4);
  if (a4 > 4u)
  {
    if (a4 > 6u)
    {
      if (a4 == 7)
      {
        if (BYTE1(a4) >= 8u || ((0xE1u >> SBYTE1(a4)) & 1) == 0)
        {
          bpf_error(a1, "illegal qualifier of 'portrange'");
        }

        if (v22 < 0x10000)
        {
          v16 = dword_299802A08[(a4 >> 8) & 7];
          v17 = gen_portrange(a1, v22, v22, v16, BYTE2(a4));
          v18 = v17;
          v19 = gen_portrange6(a1, v22, v22, v16, v10);
LABEL_35:
          gen_or(v19, v17);
          return v18;
        }

LABEL_43:
        bpf_error(a1, "illegal port number %u > 65535");
      }

      if (a4 == 255)
      {
        syntax(a1);
      }
    }

    else
    {
      if (a4 == 5)
      {
        return gen_proto(a1, v22, BYTE1(a4), BYTE2(a4));
      }

      if (a4 == 6)
      {
        return gen_protochain(a1, v22, BYTE1(a4));
      }
    }

LABEL_49:
    abort();
  }

  if (a4 >= 3u)
  {
    if (a4 == 3)
    {
      if (BYTE1(a4) >= 8u || ((0xE1u >> SBYTE1(a4)) & 1) == 0)
      {
        bpf_error(a1, "illegal qualifier of 'port'");
      }

      if (v22 < 0x10000)
      {
        v20 = dword_299802A08[(a4 >> 8) & 7];
        v17 = gen_port(a1, v22, v20, BYTE2(a4));
        v18 = v17;
        v19 = gen_port6(a1, v22, v20, v10);
        goto LABEL_35;
      }

      goto LABEL_43;
    }

    if (a4 == 4)
    {
      bpf_error(a1, "'gateway' requires a name");
    }

    goto LABEL_49;
  }

  if (BYTE1(a4) == 12)
  {
    return gen_dnhostop(a1, v22, BYTE2(a4));
  }

  if (BYTE1(a4) == 1)
  {
    bpf_error(a1, "illegal link layer address");
  }

  if (a2 || a4 != 2)
  {
    v21 = -v9;
    v22 <<= v21;
    v15 = (-1 << v21);
    v14 = v22;
  }

  else if (v22 - 1 > 0xFFFFFE)
  {
    v15 = 0xFFFFFFFFLL;
    v14 = v22;
  }

  else
  {
    v11 = -1;
    v12 = v22;
    do
    {
      v13 = (v11 << 8);
      v11 <<= 8;
      v12 <<= 8;
    }

    while (v12 - 1 < 0xFFFFFF);
    v22 = v12;
    v14 = v12;
    v15 = v13;
  }

  return gen_host(a1, v14, v15, BYTE1(a4), BYTE2(a4));
}

size_t gen_mcode6(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, int a5)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a3)
  {
    bpf_error(a1, "no mask %s supported");
  }

  v11 = pcap_nametoaddrinfo(a2);
  if (!v11)
  {
    bpf_error(a1, "invalid ip6 address %s");
  }

  *(a1 + 264) = v11;
  if (v11->ai_next)
  {
    bpf_error(a1, "%s resolved to multiple address");
  }

  if (a4 >= 0x81)
  {
    bpf_error(a1, "mask length must be <= %u");
  }

  v12 = v11;
  ai_addr = v11->ai_addr;
  v15 = 0uLL;
  __memset_chk();
  if ((a4 & 7) != 0)
  {
    *(&v15 + (a4 >> 3)) = 255 << (8 - (a4 & 7));
  }

  if ((*&ai_addr->sa_data[6] & ~v15) != 0 || (*&ai_addr->sa_data[10] & ~*(&v15 + 4)) != 0 || (*&ai_addr[1].sa_data[2] & ~HIDWORD(v15)) != 0)
  {
    bpf_error(a1, "non-network bits set in %s/%d");
  }

  if (a5 >= 2u)
  {
    if (a5 != 2)
    {
      bpf_error(a1, "invalid qualifier against IPv6 address");
    }
  }

  else if (a4 != 128)
  {
    bpf_error(a1, "Mask syntax for networks only");
  }

  v14 = gen_host6(a1, &ai_addr->sa_data[6], &v15, BYTE1(a5), BYTE2(a5), a5);
  *(a1 + 264) = 0;
  freeaddrinfo(v12);
  return v14;
}

size_t gen_ecode(uint64_t a1, const char *a2, unint64_t a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if ((a3 & 0xFFFE) != 0x100)
  {
    bpf_error(a1, "ethernet address used in non-ether expression");
  }

  v7 = pcap_ether_aton(a2);
  *(a1 + 272) = v7;
  if (!v7)
  {
    bpf_error(a1, "malloc");
  }

  v8 = a3 >> 16;
  v9 = *(a1 + 228);
  if (v9 > 104)
  {
    v11 = (v9 - 105);
    if (v11 <= 0x3A)
    {
      if (((1 << (v9 - 105)) & 0x400000000404001) != 0)
      {
        goto LABEL_12;
      }

      if (v11 == 17)
      {
        v10 = gen_ipfchostop(a1, v7, BYTE2(a3));
        goto LABEL_14;
      }
    }

    if ((v9 - 240) < 2)
    {
LABEL_18:
      v13 = gen_prevlinkhdr_check(a1);
      v12 = gen_ehostop(a1, *(a1 + 272), v8);
      if (v13)
      {
        gen_and(v13, v12);
      }

      goto LABEL_20;
    }

    if (v9 != 192)
    {
      goto LABEL_22;
    }

LABEL_12:
    v10 = gen_wlanhostop(a1, v7, BYTE2(a3));
    goto LABEL_14;
  }

  if (v9 == 1)
  {
    goto LABEL_18;
  }

  if (v9 == 6)
  {
    v10 = gen_thostop(a1, v7, BYTE2(a3));
    goto LABEL_14;
  }

  if (v9 != 10)
  {
LABEL_22:
    free(v7);
    *(a1 + 272) = 0;
    bpf_error(a1, "ethernet addresses supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
  }

  v10 = gen_fhostop(a1, v7, BYTE2(a3));
LABEL_14:
  v12 = v10;
LABEL_20:
  free(*(a1 + 272));
  *(a1 + 272) = 0;
  return v12;
}

uint64_t sappend(uint64_t result, uint64_t a2)
{
  do
  {
    v2 = result;
    result = *(result + 32);
  }

  while (result);
  *(v2 + 32) = a2;
  return result;
}

uint64_t gen_load(int *a1, int a2, uint64_t a3, int a4)
{
  if (setjmp(a1))
  {
    return 0;
  }

  gen_load_internal(a1, a2, a3, a4);
  return a3;
}

uint64_t gen_load_internal(int *a1, int a2, uint64_t a3, int a4)
{
  v8 = alloc_reg(a1);
  a1[*(a3 + 16) + 100] = 0;
  switch(a4)
  {
    case 1:
      v9 = 80;
      break;
    case 2:
      v9 = 72;
      break;
    case 4:
      v9 = 64;
      break;
    default:
      bpf_error(a1, "data size must be 1, 2, or 4");
  }

  if (a2 <= 10)
  {
    if ((a2 - 5) >= 6)
    {
      if ((a2 - 2) >= 3)
      {
        if (a2 == 1)
        {
          v13 = gen_abs_offset_varpart(a1, a1 + 70);
          v66 = newchunk(a1, 40);
          if (v13)
          {
            *v66 = 96;
            v66[6] = *(a3 + 16);
            v67 = v13;
            do
            {
              v68 = v67;
              v67 = *(v67 + 4);
            }

            while (v67);
            *(v68 + 4) = v66;
            v69 = newchunk(a1, 40);
            *v69 = 12;
            v70 = v13;
            do
            {
              v71 = v70;
              v70 = *(v70 + 4);
            }

            while (v70);
            *(v71 + 4) = v69;
            v72 = newchunk(a1, 40);
            *v72 = 7;
            v73 = v13;
            do
            {
              v74 = v73;
              v73 = *(v73 + 4);
            }

            while (v73);
            *(v74 + 4) = v72;
          }

          else
          {
            *v66 = 97;
            v66[6] = *(a3 + 16);
            v13 = v66;
          }

          v75 = newchunk(a1, 40);
          *v75 = v9;
          v75[6] = a1[71];
          v76 = v13;
          do
          {
            v77 = v76;
            v76 = *(v76 + 4);
          }

          while (v76);
          *(v77 + 4) = v75;
          v78 = *(a3 + 8);
          do
          {
            v65 = v78;
            v78 = *(v78 + 32);
          }

          while (v78);
LABEL_87:
          *(v65 + 32) = v13;
          goto LABEL_57;
        }

LABEL_89:
        bpf_error(a1, "unsupported index operation");
      }

LABEL_25:
      v23 = gen_abs_offset_varpart(a1, a1 + 79);
      v24 = newchunk(a1, 40);
      if (v23)
      {
        *v24 = 96;
        v24[6] = *(a3 + 16);
        v25 = v23;
        do
        {
          v26 = v25;
          v25 = *(v25 + 4);
        }

        while (v25);
        *(v26 + 4) = v24;
        v27 = newchunk(a1, 40);
        *v27 = 12;
        v28 = v23;
        do
        {
          v29 = v28;
          v28 = *(v28 + 4);
        }

        while (v28);
        *(v29 + 4) = v27;
        v30 = newchunk(a1, 40);
        *v30 = 7;
        v31 = v23;
        do
        {
          v32 = v31;
          v31 = *(v31 + 4);
        }

        while (v31);
        *(v32 + 4) = v30;
      }

      else
      {
        *v24 = 97;
        v24[6] = *(a3 + 16);
        v23 = v24;
      }

      v51 = newchunk(a1, 40);
      *v51 = v9;
      v51[6] = a1[98] + a1[80];
      v52 = v23;
      do
      {
        v53 = v52;
        v52 = *(v52 + 4);
      }

      while (v52);
      *(v53 + 4) = v51;
      v54 = *(a3 + 8);
      do
      {
        v55 = v54;
        v54 = *(v54 + 32);
      }

      while (v54);
      *(v55 + 32) = v23;
      v49 = gen_proto_abbrev_internal(a1, a2);
      v50 = *a3;
      if (!*a3)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (a2 <= 20)
    {
      if ((a2 - 11) >= 7)
      {
        if (a2 == 18)
        {
          v10 = gen_linktype(a1, 34525);
          if (*a3)
          {
            gen_and(*a3, v10);
          }

          *a3 = v10;
          absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 6, 16);
          v12 = newchunk(a1, 288);
          *(v12 + 16) = 21;
          *(v12 + 152) = v12;
          *(v12 + 8) = absoffsetrel;
          *(v12 + 40) = 58;
          if (*a3)
          {
            gen_and(*a3, v12);
          }

          *a3 = v12;
          v13 = gen_abs_offset_varpart(a1, a1 + 79);
          v14 = newchunk(a1, 40);
          if (v13)
          {
            *v14 = 96;
            v14[6] = *(a3 + 16);
            v15 = v13;
            do
            {
              v16 = v15;
              v15 = *(v15 + 4);
            }

            while (v15);
            *(v16 + 4) = v14;
            v17 = newchunk(a1, 40);
            *v17 = 12;
            v18 = v13;
            do
            {
              v19 = v18;
              v18 = *(v18 + 4);
            }

            while (v18);
            *(v19 + 4) = v17;
            v20 = newchunk(a1, 40);
            *v20 = 7;
            v21 = v13;
            do
            {
              v22 = v21;
              v21 = *(v21 + 4);
            }

            while (v21);
            *(v22 + 4) = v20;
          }

          else
          {
            *v14 = 97;
            v14[6] = *(a3 + 16);
            v13 = v14;
          }

          v79 = newchunk(a1, 40);
          *v79 = v9;
          v79[6] = a1[80] + a1[98] + 40;
          v80 = v13;
          do
          {
            v81 = v80;
            v80 = *(v80 + 4);
          }

          while (v80);
          *(v81 + 4) = v79;
          v82 = *(a3 + 8);
          do
          {
            v65 = v82;
            v82 = *(v82 + 32);
          }

          while (v82);
          goto LABEL_87;
        }

        goto LABEL_89;
      }

      goto LABEL_25;
    }

    if ((a2 - 21) >= 2)
    {
      if (a2 == 38)
      {
        v60 = a1[57] - 119;
        if (v60 > 0x2C || ((1 << v60) & 0x100000000101) == 0)
        {
          bpf_error(a1, "radio information not present in capture");
        }

        v13 = newchunk(a1, 40);
        *v13 = 97;
        v13[6] = *(a3 + 16);
        v61 = newchunk(a1, 40);
        *v61 = v9;
        v62 = v13;
        do
        {
          v63 = v62;
          v62 = *(v62 + 4);
        }

        while (v62);
        *(v63 + 4) = v61;
        v64 = *(a3 + 8);
        do
        {
          v65 = v64;
          v64 = *(v64 + 32);
        }

        while (v64);
        goto LABEL_87;
      }

      if (a2 != 39)
      {
        goto LABEL_89;
      }
    }
  }

  v33 = gen_loadx_iphdrlen(a1);
  v34 = newchunk(a1, 40);
  *v34 = 96;
  v34[6] = *(a3 + 16);
  v35 = v33;
  do
  {
    v36 = v35;
    v35 = *(v35 + 4);
  }

  while (v35);
  *(v36 + 4) = v34;
  v37 = newchunk(a1, 40);
  *v37 = 12;
  v38 = v33;
  do
  {
    v39 = v38;
    v38 = *(v38 + 4);
  }

  while (v38);
  *(v39 + 4) = v37;
  v40 = newchunk(a1, 40);
  *v40 = 7;
  v41 = v33;
  do
  {
    v42 = v41;
    v41 = *(v41 + 4);
  }

  while (v41);
  *(v42 + 4) = v40;
  v43 = newchunk(a1, 40);
  *v43 = v9;
  v44 = v33;
  do
  {
    v45 = v44;
    v44 = *(v44 + 4);
  }

  while (v44);
  *(v45 + 4) = v43;
  v43[6] = a1[98] + a1[80];
  v46 = *(a3 + 8);
  do
  {
    v47 = v46;
    v46 = *(v46 + 32);
  }

  while (v46);
  *(v47 + 32) = v33;
  v48 = gen_proto_abbrev_internal(a1, a2);
  v49 = gen_ipfrag(a1);
  gen_and(v48, v49);
  if (*a3)
  {
    gen_and(*a3, v49);
  }

  v50 = gen_linktype(a1, 2048);
LABEL_55:
  gen_and(v50, v49);
LABEL_56:
  *a3 = v49;
LABEL_57:
  *(a3 + 16) = v8;
  v56 = newchunk(a1, 40);
  *v56 = 2;
  v56[6] = v8;
  v57 = *(a3 + 8);
  do
  {
    v58 = v57;
    v57 = *(v57 + 32);
  }

  while (v57);
  *(v58 + 32) = v56;
  return a3;
}

size_t gen_relation(int *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (setjmp(a1))
  {
    return 0;
  }

  else
  {
    return gen_relation_internal(a1, a2, a3, a4, a5);
  }
}

size_t gen_relation_internal(int *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = newchunk(a1, 40);
  *v10 = 97;
  v10[6] = *(a4 + 16);
  v11 = newchunk(a1, 40);
  *v11 = 96;
  v11[6] = *(a3 + 16);
  if (a2 != 16)
  {
    v16 = a2 | 0xD;
    v13 = newchunk(a1, 288);
    *(v13 + 16) = v16;
    *(v13 + 152) = v13;
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(v13 + 68) = *(v13 + 68) == 0;
    goto LABEL_8;
  }

  v12 = newchunk(a1, 40);
  *v12 = 28;
  v13 = newchunk(a1, 288);
  *(v13 + 16) = 21;
  *(v13 + 152) = v13;
  v14 = v11;
  do
  {
    v15 = v14;
    v14 = *(v14 + 4);
  }

  while (v14);
  *(v15 + 4) = v12;
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v17 = v10;
  do
  {
    v18 = v17;
    v17 = *(v17 + 4);
  }

  while (v17);
  *(v18 + 4) = v11;
  v19 = *(a4 + 8);
  v20 = v19;
  do
  {
    v21 = v20;
    v20 = *(v20 + 32);
  }

  while (v20);
  *(v21 + 32) = v10;
  v22 = *(a3 + 8);
  v23 = v22;
  do
  {
    v24 = v23;
    v23 = *(v23 + 32);
  }

  while (v23);
  *(v24 + 32) = v19;
  a1[*(a3 + 16) + 100] = 0;
  *(v13 + 8) = v22;
  a1[*(a4 + 16) + 100] = 0;
  v25 = *a4;
  if (*a3)
  {
    if (v25)
    {
      gen_and(*a3, v25);
    }

    else
    {
      v25 = *a3;
    }
  }

  else if (!v25)
  {
    return v13;
  }

  gen_and(v25, v13);
  return v13;
}

size_t gen_loadlen(int *a1)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v3 = alloc_reg(a1);
  v4 = newchunk(a1, 24);
  v5 = newchunk(a1, 40);
  *v5 = 128;
  v6 = newchunk(a1, 40);
  *v6 = 2;
  *(v5 + 32) = v6;
  v6[6] = v3;
  *(v4 + 8) = v5;
  result = v4;
  *(v4 + 16) = v3;
  return result;
}

uint64_t alloc_reg(uint64_t a1)
{
  v3 = a1 + 400;
  v4 = *(a1 + 464);
  v5 = -16;
  while (*(v3 + 4 * v4))
  {
    v6 = -(v4 + 1) < 0;
    v7 = -(v4 + 1) & 0xF;
    v4 = (v4 + 1) & 0xF;
    if (!v6)
    {
      v4 = -v7;
    }

    *(a1 + 464) = v4;
    if (__CFADD__(v5++, 1))
    {
      bpf_error(a1, "too many registers needed to evaluate expression", v1, v2);
    }
  }

  *(v3 + 4 * v4) = 1;
  return *(a1 + 464);
}

size_t newchunk(int *a1, uint64_t a2)
{
  result = newchunk_nolongjmp(a1, a2);
  if (!result)
  {
    longjmp(a1, 1);
  }

  return result;
}

size_t gen_loadi(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  else
  {
    return gen_loadi_internal(a1, a2);
  }
}

size_t gen_loadi_internal(int *a1, int a2)
{
  v4 = newchunk(a1, 24);
  v5 = alloc_reg(a1);
  v6 = newchunk(a1, 40);
  *v6 = 0;
  *(v6 + 24) = a2;
  v7 = newchunk(a1, 40);
  *v7 = 2;
  *(v6 + 32) = v7;
  v7[6] = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v5;
  return v4;
}

uint64_t gen_neg(int *a1, uint64_t a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = newchunk(a1, 40);
  *v5 = 96;
  v5[6] = *(a2 + 16);
  v6 = *(a2 + 8);
  do
  {
    v7 = v6;
    v6 = *(v6 + 32);
  }

  while (v6);
  *(v7 + 32) = v5;
  v8 = newchunk(a1, 40);
  *v8 = 132;
  v8[6] = 0;
  v9 = *(a2 + 8);
  do
  {
    v10 = v9;
    v9 = *(v9 + 32);
  }

  while (v9);
  *(v10 + 32) = v8;
  v11 = newchunk(a1, 40);
  *v11 = 2;
  v11[6] = *(a2 + 16);
  v12 = *(a2 + 8);
  do
  {
    v13 = v12;
    v12 = *(v12 + 32);
  }

  while (v12);
  *(v13 + 32) = v11;
  return a2;
}

uint64_t gen_arth(int *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2 == 144)
  {
    v10 = *(a4 + 8);
    if (!*v10 && !v10[6])
    {
      bpf_error(a1, "modulus by zero");
    }
  }

  else if (a2 == 48)
  {
    v9 = *(a4 + 8);
    if (!*v9 && !v9[6])
    {
      bpf_error(a1, "division by zero");
    }
  }

  else if ((a2 & 0xFFFFFFEF) == 0x60)
  {
    v11 = *(a4 + 8);
    if (!*v11 && v11[6] >= 0x20u)
    {
      bpf_error(a1, "shift by more than 31 bits");
    }
  }

  v12 = newchunk(a1, 40);
  *v12 = 97;
  v12[6] = *(a4 + 16);
  v13 = v12;
  v14 = newchunk(a1, 40);
  *v14 = 96;
  v14[6] = *(a3 + 16);
  v15 = v14;
  v16 = newchunk(a1, 40);
  *v16 = a2 | 0xC;
  v17 = v15;
  do
  {
    v18 = v17;
    v17 = *(v17 + 4);
  }

  while (v17);
  *(v18 + 4) = v16;
  v19 = v13;
  do
  {
    v20 = v19;
    v19 = *(v19 + 4);
  }

  while (v19);
  *(v20 + 4) = v15;
  v21 = *(a4 + 8);
  v22 = v21;
  do
  {
    v23 = v22;
    v22 = *(v22 + 32);
  }

  while (v22);
  *(v23 + 32) = v13;
  v24 = *(a3 + 8);
  do
  {
    v25 = v24;
    v24 = *(v24 + 32);
  }

  while (v24);
  *(v25 + 32) = v21;
  a1[*(a3 + 16) + 100] = 0;
  a1[*(a4 + 16) + 100] = 0;
  v26 = newchunk(a1, 40);
  *v26 = 2;
  v27 = alloc_reg(a1);
  v26[6] = v27;
  *(a3 + 16) = v27;
  v28 = *(a3 + 8);
  do
  {
    v29 = v28;
    v28 = *(v28 + 32);
  }

  while (v28);
  *(v29 + 32) = v26;
  return a3;
}

size_t gen_greater(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = newchunk(a1, 40);
  *v5 = 128;
  result = newchunk(a1, 288);
  *(result + 16) = 53;
  *(result + 152) = result;
  *(result + 8) = v5;
  *(result + 40) = a2;
  return result;
}

size_t gen_less(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = newchunk(a1, 40);
  *v5 = 128;
  result = newchunk(a1, 288);
  *(result + 16) = 37;
  *(result + 152) = result;
  *(result + 8) = v5;
  *(result + 40) = a2;
  *(result + 68) = *(result + 68) == 0;
  return result;
}

size_t gen_byteop(int *a1, int a2, int a3, int a4)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2 > 60)
  {
    switch(a2)
    {
      case '=':
        absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, a3, 16);
        result = newchunk(a1, 288);
        v12 = 21;
        break;
      case '>':
        absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, a3, 16);
        result = newchunk(a1, 288);
        v12 = 37;
        break;
      case '|':
        v9 = 68;
LABEL_15:
        v13 = v9;
        v14 = newchunk(a1, 40);
        *v14 = v13;
        v14[6] = a4;
        result = newchunk(a1, 288);
        *(result + 16) = 21;
        *(result + 152) = result;
        *(result + 8) = v14;
        goto LABEL_16;
      default:
        goto LABEL_17;
    }

    *(result + 16) = v12;
    *(result + 152) = result;
    *(result + 8) = absoffsetrel;
    *(result + 40) = a4;
    return result;
  }

  if (a2 == 38)
  {
    v9 = 84;
    goto LABEL_15;
  }

  if (a2 != 60)
  {
LABEL_17:
    abort();
  }

  v10 = gen_load_absoffsetrel(a1, a1 + 70, a3, 16);
  result = newchunk(a1, 288);
  *(result + 16) = 53;
  *(result + 152) = result;
  *(result + 8) = v10;
  *(result + 40) = a4;
LABEL_16:
  *(result + 68) = *(result + 68) == 0;
  return result;
}

size_t gen_broadcast(int *a1, unsigned int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2 < 2)
  {
    v5 = a1[57];
    if (v5 <= 104)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
LABEL_21:
          v11 = &unk_299802A00;
          v13 = a1;
          v12 = 1;
          v14 = 1;
          return gen_bcmp(v13, 1, v12, v14, v11);
        }

        if (v5 != 10)
        {
          goto LABEL_30;
        }

        v11 = gen_broadcast_ebroadcast;
        v12 = a1[64] + 1;
        v13 = a1;
LABEL_27:
        v14 = 6;
        return gen_bcmp(v13, 1, v12, v14, v11);
      }

      if (v5 == 1)
      {
LABEL_23:
        v15 = gen_prevlinkhdr_check(a1);
        v16 = gen_bcmp(a1, 1, 0, 6u, gen_broadcast_ebroadcast);
        if (v15)
        {
          gen_and(v15, v16);
        }

        return v16;
      }

      if (v5 != 6)
      {
LABEL_30:
        bpf_error(a1, "not a broadcast link");
      }
    }

    else
    {
      v6 = (v5 - 105);
      if (v6 > 0x3A)
      {
LABEL_22:
        if ((v5 - 240) < 2)
        {
          goto LABEL_23;
        }

        if (v5 == 192)
        {
          return gen_wlanhostop(a1, gen_broadcast_ebroadcast, 2);
        }

        goto LABEL_30;
      }

      if (((1 << (v5 - 105)) & 0x400000000404001) != 0)
      {
        return gen_wlanhostop(a1, gen_broadcast_ebroadcast, 2);
      }

      if (v6 != 17)
      {
        if (v6 == 24)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    v11 = gen_broadcast_ebroadcast;
    v13 = a1;
    v12 = 2;
    goto LABEL_27;
  }

  if (a2 != 2)
  {
    bpf_error(a1, "only link-layer/IP broadcast filters supported");
  }

  if (a1[60] == -1)
  {
    bpf_error(a1, "netmask not known, so 'ip broadcast' not supported");
  }

  v7 = gen_linktype(a1, 2048);
  v8 = a1[60];
  v9 = gen_ncmp(a1, 6, 16, 0, ~v8, 16, 0, 0);
  v10 = gen_ncmp(a1, 6, 16, 0, ~v8, 16, 0, ~v8);
  gen_or(v9, v10);
  gen_and(v7, v10);
  return v10;
}

size_t gen_linktype(uint64_t a1, int a2)
{
  v2 = a2;
  if (*(a1 + 248))
  {
    if (a2 == 2048)
    {
      v4 = 64;
    }

    else
    {
      if (a2 != 34525)
      {
        bpf_error(a1, "unsupported protocol over mpls");
      }

      v4 = 96;
    }

    v11 = gen_ncmp(a1, 6, -2, 16, 1, 16, 0, 1);
    v12 = gen_ncmp(a1, 6, 0, 16, 240, 16, 0, v4);
    v13 = v11;
LABEL_13:
    gen_and(v13, v12);
    return v12;
  }

  v5 = *(a1 + 228);
  if (v5 > 103)
  {
    switch(v5)
    {
      case 104:
        if (a2 == 254)
        {
          v31 = 65278;
        }

        else
        {
          v31 = a2;
        }

        absoffsetrel = gen_load_absoffsetrel(a1, (a1 + 328), 0, 8);
        v12 = newchunk(a1, 288);
        *(v12 + 16) = 21;
        *(v12 + 152) = v12;
        *(v12 + 8) = absoffsetrel;
        *(v12 + 40) = v31;
        return v12;
      case 105:
      case 119:
      case 127:
      case 163:
      case 192:
        v15 = gen_check_802_11_data_frame(a1);
        goto LABEL_20;
      case 106:
      case 110:
      case 111:
      case 112:
      case 115:
      case 116:
      case 118:
      case 120:
      case 121:
      case 124:
      case 125:
      case 126:
      case 128:
      case 138:
      case 141:
      case 142:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 184:
      case 185:
      case 188:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 216:
      case 217:
      case 218:
      case 219:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 231:
      case 235:
      case 236:
      case 237:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
        goto LABEL_95;
      case 107:
        switch(a2)
        {
          case 254:
            v48 = gen_load_absoffsetrel(a1, (a1 + 280), 2, 8);
            v38 = newchunk(a1, 288);
            *(v38 + 16) = 21;
            *(v38 + 152) = v38;
            *(v38 + 8) = v48;
            *(v38 + 40) = 897;
            v49 = gen_load_absoffsetrel(a1, (a1 + 280), 2, 8);
            v50 = newchunk(a1, 288);
            *(v50 + 16) = 21;
            *(v50 + 152) = v50;
            *(v50 + 8) = v49;
            *(v50 + 40) = 898;
            v51 = gen_load_absoffsetrel(a1, (a1 + 280), 2, 8);
            v12 = newchunk(a1, 288);
            *(v12 + 16) = 21;
            *(v12 + 152) = v12;
            *(v12 + 8) = v51;
            *(v12 + 40) = 899;
            gen_or(v50, v12);
            goto LABEL_92;
          case 34525:
            v47 = gen_load_absoffsetrel(a1, (a1 + 280), 2, 8);
            v20 = newchunk(a1, 288);
            v12 = v20;
            *(v20 + 16) = 21;
            *(v20 + 152) = v20;
            *(v20 + 8) = v47;
            v21 = 910;
            break;
          case 2048:
            v33 = gen_load_absoffsetrel(a1, (a1 + 280), 2, 8);
            v20 = newchunk(a1, 288);
            v12 = v20;
            *(v20 + 16) = 21;
            *(v20 + 152) = v20;
            *(v20 + 8) = v33;
            v21 = 972;
            break;
          default:
            goto LABEL_76;
        }

        break;
      case 108:
      case 109:
        goto LABEL_25;
      case 113:

        return gen_linux_sll_linktype(a1, a2);
      case 114:
        v30 = 32923;
        goto LABEL_65;
      case 117:
        if (a2 == 34525)
        {
          v46 = gen_load_absoffsetrel(a1, (a1 + 280), 1, 16);
          v20 = newchunk(a1, 288);
          v12 = v20;
          *(v20 + 16) = 21;
          *(v20 + 152) = v20;
          *(v20 + 8) = v46;
          v21 = 30;
        }

        else
        {
          if (a2 != 2048)
          {
            goto LABEL_76;
          }

          v36 = gen_load_absoffsetrel(a1, (a1 + 280), 1, 16);
          v20 = newchunk(a1, 288);
          v12 = v20;
          *(v20 + 16) = 21;
          *(v20 + 152) = v20;
          *(v20 + 8) = v36;
          v21 = 2;
        }

        break;
      case 122:
        goto LABEL_16;
      case 123:
        v15 = gen_atmfield_code_internal(a1, 53, 2, 16, 0);
LABEL_20:
        v16 = v15;
        v12 = gen_llc_linktype(a1, v2);
        goto LABEL_21;
      case 129:
        goto LABEL_34;
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 164:
      case 167:
      case 168:
      case 178:
      case 179:
      case 180:
      case 181:
      case 183:
      case 194:
      case 200:
      case 232:
      case 233:
      case 234:
      case 238:
        v6 = a1;
        v7 = 0;
        v8 = -256;
        v9 = 1296515840;
        goto LABEL_8;
      case 139:
      case 140:
        bpf_error(a1, "MTP2 link-layer type filtering not implemented");
      case 143:
        bpf_error(a1, "DOCSIS link-layer type filtering not implemented");
      case 144:
        bpf_error(a1, "IrDA link-layer type filtering not implemented");
      case 165:
        v6 = a1;
        v7 = 0;
        v8 = -65536;
        v9 = 1442775040;
        goto LABEL_8;
      case 166:
        goto LABEL_43;
      case 177:
        bpf_error(a1, "LAPD link-layer type filtering not implemented");
      case 182:
        bpf_error(a1, "Multi-link Frame Relay link-layer type filtering not implemented");
      case 186:
      case 189:
      case 220:
      case 249:
        bpf_error(a1, "USB link-layer type filtering not implemented");
      case 187:
      case 201:
        bpf_error(a1, "Bluetooth link-layer type filtering not implemented");
      case 190:
      case 227:
        bpf_error(a1, "CAN link-layer type filtering not implemented");
      case 191:
      case 195:
      case 215:
      case 230:
        goto LABEL_98;
      case 193:
        bpf_error(a1, "IEEE 802.16 link-layer type filtering not implemented");
      case 196:
        bpf_error(a1, "SITA link-layer type filtering not implemented");
      case 197:
        bpf_error(a1, "ERF link-layer type filtering not implemented");
      case 198:
        bpf_error(a1, "RAIF1 link-layer type filtering not implemented");
      case 199:
      case 209:
        bpf_error(a1, "IPMB link-layer type filtering not implemented");
      case 202:
        bpf_error(a1, "AX.25 link-layer type filtering not implemented");
      case 226:

        return gen_ipnet_linktype(a1, a2);
      case 228:
        if (a2 != 2048)
        {
          goto LABEL_76;
        }

        goto LABEL_66;
      case 229:
        v30 = 34525;
LABEL_65:
        if (a2 != v30)
        {
          goto LABEL_76;
        }

LABEL_66:
        v34 = a1;
        v35 = 1;
        goto LABEL_77;
      case 239:
        bpf_error(a1, "NFLOG link-layer type filtering not implemented");
      case 240:
      case 241:
        goto LABEL_28;
      default:
        if (v5 == 283)
        {
LABEL_98:
          bpf_error(a1, "IEEE 802.15.4 link-layer type filtering not implemented");
        }

        goto LABEL_95;
    }

LABEL_90:
    *(v20 + 40) = v21;
    return v12;
  }

  v14 = *(a1 + 228);
  switch(v5)
  {
    case 0:
LABEL_25:
      if (a2 == 34525)
      {
        if (*(*(a1 + 192) + 64))
        {
          v29 = gen_loopback_linktype(a1, 0x18u);
          v12 = gen_loopback_linktype(a1, 0x1Cu);
          gen_or(v29, v12);
          v27 = gen_loopback_linktype(a1, 0x1Eu);
          goto LABEL_93;
        }

        v17 = a1;
        v18 = 30;
      }

      else
      {
        if (a2 != 2048)
        {
          goto LABEL_76;
        }

        v17 = a1;
        v18 = 2;
      }

      return gen_loopback_linktype(v17, v18);
    case 1:
LABEL_28:
      if (*(a1 + 344))
      {

        return gen_ether_linktype(a1, a2);
      }

      v16 = gen_prevlinkhdr_check(a1);
      v12 = gen_ether_linktype(a1, v2);
      if (v16)
      {
LABEL_21:
        v13 = v16;
        goto LABEL_13;
      }

      return v12;
    case 2:
    case 3:
    case 4:
    case 5:
    case 13:
    case 14:
    case 17:
      goto LABEL_95;
    case 6:
    case 10:
    case 11:
    case 19:
LABEL_16:

      return gen_llc_linktype(a1, a2);
    case 7:
LABEL_34:
      if (a2 > 32820)
      {
        switch(a2)
        {
          case 32821:
            v42 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
            v20 = newchunk(a1, 288);
            v12 = v20;
            *(v20 + 16) = 21;
            *(v20 + 152) = v20;
            *(v20 + 8) = v42;
            v21 = 214;
            break;
          case 32923:
            v43 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
            v20 = newchunk(a1, 288);
            v12 = v20;
            *(v20 + 16) = 21;
            *(v20 + 152) = v20;
            *(v20 + 8) = v43;
            v21 = 221;
            break;
          case 34525:
            v19 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
            v20 = newchunk(a1, 288);
            v12 = v20;
            *(v20 + 16) = 21;
            *(v20 + 152) = v20;
            *(v20 + 8) = v19;
            v21 = 196;
            break;
          default:
            goto LABEL_76;
        }

        goto LABEL_90;
      }

      if (a2 == 2048)
      {
        v44 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
        v38 = newchunk(a1, 288);
        *(v38 + 16) = 21;
        *(v38 + 152) = v38;
        *(v38 + 8) = v44;
        *(v38 + 40) = 212;
        v45 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
        v40 = newchunk(a1, 288);
        v12 = v40;
        *(v40 + 16) = 21;
        *(v40 + 152) = v40;
        *(v40 + 8) = v45;
        v41 = 240;
      }

      else
      {
        if (a2 != 2054)
        {
          goto LABEL_76;
        }

        v37 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
        v38 = newchunk(a1, 288);
        *(v38 + 16) = 21;
        *(v38 + 152) = v38;
        *(v38 + 8) = v37;
        *(v38 + 40) = 213;
        v39 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 16);
        v40 = newchunk(a1, 288);
        v12 = v40;
        *(v40 + 16) = 21;
        *(v40 + 152) = v40;
        *(v40 + 8) = v39;
        v41 = 241;
      }

      *(v40 + 40) = v41;
LABEL_92:
      v27 = v38;
LABEL_93:
      gen_or(v27, v12);
      return v12;
    case 8:
    case 12:
    case 15:
      if (a2 == 34525)
      {
        v6 = a1;
        v7 = 16;
        v8 = 240;
        v9 = 96;
        goto LABEL_8;
      }

      if (a2 == 2048)
      {
        v6 = a1;
        v7 = 16;
        v8 = 240;
        v9 = 64;
LABEL_8:

        return gen_ncmp(v6, 1, 0, v7, v8, 16, 0, v9);
      }

LABEL_76:
      v34 = a1;
      v35 = 0;
LABEL_77:

      return gen_uncond(v34, v35);
    case 9:
      goto LABEL_43;
    case 16:
      if (a2 != 2048)
      {
        goto LABEL_43;
      }

      v22 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 8);
      v23 = newchunk(a1, 288);
      *(v23 + 16) = 21;
      *(v23 + 152) = v23;
      *(v23 + 8) = v22;
      *(v23 + 40) = 33;
      v24 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 8);
      v25 = newchunk(a1, 288);
      *(v25 + 16) = 21;
      *(v25 + 152) = v25;
      *(v25 + 8) = v24;
      *(v25 + 40) = 45;
      gen_or(v23, v25);
      v26 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 8);
      v12 = newchunk(a1, 288);
      *(v12 + 16) = 21;
      *(v12 + 152) = v12;
      *(v12 + 8) = v26;
      *(v12 + 40) = 47;
      v27 = v25;
      goto LABEL_93;
    case 18:
      bpf_error(a1, "PFSYNC link-layer type filtering not implemented");
    default:
      if ((v5 - 50) < 2)
      {
LABEL_43:
        v2 = ethertype_to_ppptype(a2);
      }

      else
      {
LABEL_95:
        if (*(a1 + 332) == -1)
        {
          pcap_datalink_val_to_description_or_dlt(v5);
          bpf_error(a1, "%s link-layer type filtering not implemented");
        }
      }

      v28 = gen_load_absoffsetrel(a1, (a1 + 328), 0, 8);
      v12 = newchunk(a1, 288);
      *(v12 + 16) = 21;
      *(v12 + 152) = v12;
      *(v12 + 8) = v28;
      *(v12 + 40) = v2;
      return v12;
  }
}

size_t gen_multicast(int *a1, unsigned int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v5 = gen_linktype(a1, 2048);
      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 16, 16);
      v7 = newchunk(a1, 288);
      v8 = v7;
      v9 = v7;
      *(v7 + 16) = 53;
      *(v7 + 152) = v7;
      *(v7 + 8) = absoffsetrel;
      v10 = 224;
      goto LABEL_12;
    }

    if (a2 == 17)
    {
      v5 = gen_linktype(a1, 34525);
      v6 = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 24, 16);
      v7 = newchunk(a1, 288);
      v8 = v7;
      v9 = v7;
      *(v7 + 16) = 21;
      *(v7 + 152) = v7;
      *(v7 + 8) = v6;
      v10 = 255;
LABEL_12:
      *(v7 + 40) = v10;
      v30 = v5;
      goto LABEL_13;
    }

LABEL_31:
    bpf_error(a1, "link-layer multicast filters supported only on ethernet/FDDI/token ring/ARCNET/802.11/ATM LANE/Fibre Channel");
  }

  v11 = a1[57];
  if (v11 > 104)
  {
    v12 = (v11 - 105);
    if (v12 > 0x3A)
    {
LABEL_25:
      if ((v11 - 240) >= 2)
      {
        if (v11 != 192)
        {
          goto LABEL_31;
        }

LABEL_10:
        v13 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
        v14 = newchunk(a1, 288);
        *(v14 + 16) = 69;
        *(v14 + 152) = v14;
        *(v14 + 40) = 1;
        *(v14 + 8) = v13;
        v15 = gen_load_absoffsetrel(a1, a1 + 70, 16, 16);
        v16 = newchunk(a1, 288);
        *(v16 + 16) = 69;
        *(v16 + 152) = v16;
        *(v16 + 40) = 1;
        *(v16 + 8) = v15;
        gen_and(v14, v16);
        v17 = gen_load_absoffsetrel(a1, a1 + 70, 1, 16);
        v18 = newchunk(a1, 288);
        *(v18 + 16) = 69;
        *(v18 + 152) = v18;
        *(v18 + 40) = 1;
        *(v18 + 8) = v17;
        *(v18 + 68) = *(v18 + 68) == 0;
        v19 = gen_load_absoffsetrel(a1, a1 + 70, 4, 16);
        v20 = newchunk(a1, 288);
        *(v20 + 16) = 69;
        *(v20 + 152) = v20;
        *(v20 + 40) = 1;
        *(v20 + 8) = v19;
        gen_and(v18, v20);
        gen_or(v20, v16);
        v21 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
        v22 = newchunk(a1, 288);
        *(v22 + 16) = 69;
        *(v22 + 152) = v22;
        *(v22 + 40) = 8;
        *(v22 + 8) = v21;
        gen_and(v22, v16);
        v23 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
        v24 = newchunk(a1, 288);
        *(v24 + 16) = 69;
        *(v24 + 152) = v24;
        *(v24 + 40) = 8;
        *(v24 + 8) = v23;
        *(v24 + 68) = *(v24 + 68) == 0;
        v25 = gen_load_absoffsetrel(a1, a1 + 70, 4, 16);
        v26 = newchunk(a1, 288);
        *(v26 + 16) = 69;
        *(v26 + 152) = v26;
        *(v26 + 40) = 1;
        *(v26 + 8) = v25;
        gen_and(v24, v26);
        gen_or(v26, v16);
        v27 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
        v28 = newchunk(a1, 288);
        *(v28 + 16) = 69;
        *(v28 + 152) = v28;
        *(v28 + 40) = 4;
        *(v28 + 8) = v27;
        *(v28 + 68) = *(v28 + 68) == 0;
        gen_and(v28, v16);
        return v16;
      }

LABEL_26:
      v33 = gen_prevlinkhdr_check(a1);
      v34 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
      v9 = newchunk(a1, 288);
      *(v9 + 16) = 69;
      *(v9 + 152) = v9;
      *(v9 + 40) = 1;
      *(v9 + 8) = v34;
      if (!v33)
      {
        return v9;
      }

      v30 = v33;
      v8 = v9;
LABEL_13:
      gen_and(v30, v8);
      return v9;
    }

    if (((1 << (v11 - 105)) & 0x400000000404001) != 0)
    {
      goto LABEL_10;
    }

    if (v12 != 17)
    {
      if (v12 == 24)
      {
        return gen_bcmp(a1, 1, 1, 1u, &unk_299802A00);
      }

      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (v11 <= 6)
  {
    if (v11 == 1)
    {
      goto LABEL_26;
    }

    if (v11 != 6)
    {
      goto LABEL_31;
    }

LABEL_28:
    v31 = a1;
    v32 = 2;
    return gen_mac_multicast(v31, v32);
  }

  if (v11 == 7)
  {
    return gen_bcmp(a1, 1, 1, 1u, &unk_299802A00);
  }

  if (v11 != 10)
  {
    goto LABEL_31;
  }

  v31 = a1;
  v32 = 1;
  return gen_mac_multicast(v31, v32);
}

size_t gen_mac_multicast(int *a1, int a2)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, a2, 16);
  result = newchunk(a1, 288);
  *(result + 16) = 69;
  *(result + 152) = result;
  *(result + 40) = 1;
  *(result + 8) = absoffsetrel;
  return result;
}

size_t gen_ifindex(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = a1[57];
  if (v5 != 276)
  {
    v7 = pcap_datalink_val_to_description_or_dlt(v5);
    bpf_error(a1, "ifindex not supported on %s", v7);
  }

  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 4, 0);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = absoffsetrel;
  *(result + 40) = a2;
  return result;
}

size_t gen_inbound(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v5 = a1[57];
  if (v5 <= 177)
  {
    v6 = (v5 - 117);
    if (v6 > 0x33)
    {
      goto LABEL_14;
    }

    if (((1 << (v5 - 117)) & 0xC8000001FE000) == 0)
    {
      if (v5 != 117)
      {
        if (v6 == 49)
        {
          absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
          result = newchunk(a1, 288);
          *(result + 16) = 21;
          *(result + 152) = result;
          *(result + 8) = absoffsetrel;
          if (!a2)
          {
            *(result + 40) = 0;
            return result;
          }

          goto LABEL_19;
        }

LABEL_14:
        if (v5 == 8)
        {
          v16 = gen_loadi_internal(a1, 0);
          gen_load_internal(a1, 1, v16, 1);
          v17 = gen_loadi_internal(a1, 0);
          return gen_relation_internal(a1, 16, v16, v17, a2);
        }

        if (v5 == 113)
        {
          v9 = 0;
          v10 = a1 + 70;
          v11 = a1;
          v12 = 8;
          goto LABEL_22;
        }

LABEL_30:
        v19 = pcap_datalink_val_to_description_or_dlt(v5);
        bpf_error(a1, "inbound/outbound not supported on %s", v19);
      }

      if (a2)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v18 = gen_load_absoffsetrel(a1, a1 + 70, 60, 16);
      result = newchunk(a1, 288);
      *(result + 16) = 21;
      *(result + 152) = result;
      *(result + 8) = v18;
LABEL_29:
      *(result + 40) = v13;
      return result;
    }

    return gen_ncmp(a1, 1, 3, 16, 1, 16, 0, a2 == 0);
  }

  v8 = (v5 - 178);
  if (v8 <= 0x3C)
  {
    if (((1 << (v5 + 78)) & 0x11C000000041002FLL) != 0)
    {
      return gen_ncmp(a1, 1, 3, 16, 1, 16, 0, a2 == 0);
    }

    if (v8 == 48)
    {
      v13 = 2;
      v14 = gen_load_absoffsetrel(a1, a1 + 70, 2, 8);
      result = newchunk(a1, 288);
      *(result + 16) = 21;
      *(result + 152) = result;
      *(result + 8) = v14;
      if (a2)
      {
LABEL_19:
        *(result + 40) = 1;
        return result;
      }

      goto LABEL_29;
    }
  }

  if (v5 != 276)
  {
    goto LABEL_30;
  }

  v10 = a1 + 70;
  v11 = a1;
  v9 = 10;
  v12 = 16;
LABEL_22:
  v15 = gen_load_absoffsetrel(v11, v10, v9, v12);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = v15;
  *(result + 40) = 4;
  if (!a2)
  {
    *(result + 68) = *(result + 68) == 0;
  }

  return result;
}

size_t gen_pf_ifname(int *a1, char *a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[57] != 117)
  {
    bpf_error(a1, "ifname supported only on PF linktype");
  }

  v5 = strlen(a2);
  if (v5 >= 0x10)
  {
    bpf_error(a1, "ifname interface names can only be %d characters");
  }

  return gen_bcmp(a1, 1, 4, v5, a2);
}

size_t gen_bcmp(int *a1, int a2, int a3, unsigned int a4, unsigned __int8 *a5)
{
  v6 = a4;
  if (a4 < 4)
  {
    v14 = 0;
  }

  else
  {
    v9 = 0;
    v10 = a3 - 4;
    v11 = a4 - 4;
    do
    {
      v12 = bswap32(*&a5[v11]);
      a = gen_load_a(a1, a2, v10 + v6, 0);
      v14 = newchunk(a1, 288);
      *(v14 + 16) = 21;
      *(v14 + 152) = v14;
      *(v14 + 8) = a;
      *(v14 + 40) = v12;
      if (v9)
      {
        gen_and(v9, v14);
      }

      v6 -= 4;
      v9 = v14;
      v15 = v11 > 3;
      v11 -= 4;
    }

    while (v15);
  }

  if (v6 >= 2)
  {
    v16 = v6 - 2;
    do
    {
      v17 = __rev16(*&a5[v16]);
      v18 = gen_load_a(a1, a2, a3 - 2 + v6, 8);
      v19 = newchunk(a1, 288);
      *(v19 + 16) = 21;
      *(v19 + 152) = v19;
      *(v19 + 8) = v18;
      *(v19 + 40) = v17;
      if (v14)
      {
        gen_and(v14, v19);
      }

      v6 -= 2;
      v14 = v19;
      v15 = v16 > 1;
      v16 -= 2;
    }

    while (v15);
    if (v6)
    {
      goto LABEL_14;
    }

    return v19;
  }

  v19 = v14;
  if (!v6)
  {
    return v19;
  }

LABEL_14:
  v20 = *a5;
  v21 = gen_load_a(a1, a2, a3, 16);
  v22 = newchunk(a1, 288);
  *(v22 + 16) = 21;
  *(v22 + 152) = v22;
  *(v22 + 8) = v21;
  *(v22 + 40) = v20;
  if (v19)
  {
    gen_and(v19, v22);
  }

  return v22;
}

size_t gen_pf_ruleset(int *a1, char *a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[57] != 117)
  {
    bpf_error(a1, "ruleset supported only on PF linktype");
  }

  v5 = strlen(a2);
  if (v5 >= 0x10)
  {
    bpf_error(a1, "ruleset names can only be %ld characters");
  }

  return gen_bcmp(a1, 1, 20, v5, a2);
}

size_t gen_pf_rnr(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[57] != 117)
  {
    bpf_error(a1, "rnr supported only on PF linktype");
  }

  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 36, 0);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = absoffsetrel;
  *(result + 40) = a2;
  return result;
}

size_t gen_pf_srnr(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[57] != 117)
  {
    bpf_error(a1, "srnr supported only on PF linktype");
  }

  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 40, 0);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = absoffsetrel;
  *(result + 40) = a2;
  return result;
}

size_t gen_pf_reason(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[57] != 117)
  {
    bpf_error(a1, "reason supported only on PF linktype");
  }

  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 3, 16);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = absoffsetrel;
  *(result + 40) = a2;
  return result;
}

size_t gen_pf_action(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[57] != 117)
  {
    bpf_error(a1, "action supported only on PF linktype");
  }

  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 2, 16);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = absoffsetrel;
  *(result + 40) = a2;
  return result;
}

size_t gen_p80211_type(uint64_t a1, int a2, int a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if ((*(a1 + 228) - 105) <= 0x3A)
  {
    v7 = ((1 << (*(a1 + 228) - 105)) & 0x400000000404001) == 0;
    *(a1 + 228);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    bpf_error(a1, "802.11 link-layer types supported only on 802.11");
  }

  return gen_ncmp(a1, 1, 0, 16, a3, 16, 0, a2);
}

size_t gen_p80211_fcdir(uint64_t a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if ((*(a1 + 228) - 105) <= 0x3A)
  {
    v5 = ((1 << (*(a1 + 228) - 105)) & 0x400000000404001) == 0;
    *(a1 + 228);
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    bpf_error(a1, "frame direction supported only with 802.11 headers");
  }

  return gen_ncmp(a1, 1, 1, 16, 3, 16, 0, a2);
}

size_t gen_acode(uint64_t a1, const char *a2, int a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v7 = *(a1 + 228);
  if (v7 != 129 && v7 != 7)
  {
    bpf_error(a1, "aid supported only on ARCnet");
  }

  if ((a3 & 0xFFFE) != 0x100)
  {
    bpf_error(a1, "ARCnet address used in non-arc expression");
  }

  v9 = pcap_ether_aton(a2);
  *(a1 + 272) = v9;
  if (!v9)
  {
    bpf_error(a1, "malloc");
  }

  v10 = v9;
  if (BYTE2(a3) < 3u)
  {
    if (BYTE2(a3))
    {
      if (BYTE2(a3) == 1)
      {
        v12 = 0;
        v11 = a1;
        goto LABEL_21;
      }

      if (BYTE2(a3) == 2)
      {
        v11 = a1;
        v12 = 1;
LABEL_21:
        v16 = gen_bcmp(v11, 1, v12, 1u, v10);
        goto LABEL_22;
      }

LABEL_37:
      abort();
    }

    goto LABEL_18;
  }

  if (BYTE2(a3) <= 3u)
  {
LABEL_18:
    v15 = gen_bcmp(a1, 1, 0, 1u, v9);
    v14 = gen_bcmp(a1, 1, 1, 1u, v10);
    gen_or(v15, v14);
    goto LABEL_19;
  }

  if (BYTE2(a3) >= 5u)
  {
    if (BYTE2(a3) <= 7u)
    {
      if (BYTE2(a3) != 5)
      {
        if (BYTE2(a3) != 6)
        {
          bpf_error(a1, "'addr3' and 'address3' are only supported on 802.11");
        }

        bpf_error(a1, "'addr2' and 'address2' are only supported on 802.11");
      }

      bpf_error(a1, "'addr1' and 'address1' are only supported on 802.11");
    }

    switch(BYTE2(a3))
    {
      case 8u:
        bpf_error(a1, "'addr4' and 'address4' are only supported on 802.11");
      case 9u:
        bpf_error(a1, "'ra' is only supported on 802.11");
      case 0xAu:
        bpf_error(a1, "'ta' is only supported on 802.11");
    }

    goto LABEL_37;
  }

  v13 = gen_bcmp(a1, 1, 0, 1u, v9);
  v14 = gen_bcmp(a1, 1, 1, 1u, v10);
  gen_and(v13, v14);
LABEL_19:
  v16 = v14;
LABEL_22:
  v17 = v16;
  free(*(a1 + 272));
  *(a1 + 272) = 0;
  return v17;
}

size_t gen_vlan(int *a1, unsigned int a2, int a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a1[62])
  {
    bpf_error(a1, "no VLAN match after MPLS");
  }

  v7 = a1[57];
  if (((v7 - 105) > 0x3A || ((1 << (v7 - 105)) & 0x400000000404001) == 0) && (v7 - 240) >= 2 && v7 != 1)
  {
    pcap_datalink_val_to_description_or_dlt(v7);
    bpf_error(a1, "no VLAN support for %s");
  }

  result = gen_vlan_no_bpf_extensions(a1, a2, a3);
  ++a1[63];
  return result;
}

size_t gen_vlan_no_bpf_extensions(int *a1, unsigned int a2, int a3)
{
  v6 = gen_linktype(a1, 33024);
  v7 = gen_linktype(a1, 34984);
  gen_or(v6, v7);
  v8 = gen_linktype(a1, 37120);
  gen_or(v7, v8);
  if (a3)
  {
    if (a2 >= 0x1000)
    {
      bpf_error(a1, "VLAN tag %u greater than maximum %u", a2, 4095);
    }

    v9 = gen_ncmp(a1, 6, 0, 8, 4095, 16, 0, a2);
    gen_and(v8, v9);
    v8 = v9;
  }

  a1[80] += 4;
  a1[83] += 4;
  return v8;
}

uint64_t gen_mpls(int32x2_t *a1, unsigned int a2, int a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (!a1[31].i32[0])
  {
    v7 = a1[28].i32[1];
    if (v7 > 239)
    {
      if ((v7 - 240) > 1)
      {
LABEL_9:
        pcap_datalink_val_to_description_or_dlt(v7);
        bpf_error(a1, "no MPLS support for %s");
      }
    }

    else if (v7 != 1)
    {
      if (v7 == 9)
      {
        v8 = a1;
        v9 = 641;
        goto LABEL_12;
      }

      if (v7 != 104)
      {
        goto LABEL_9;
      }
    }

    v8 = a1;
    v9 = 34887;
LABEL_12:
    v6 = gen_linktype(v8, v9);
    goto LABEL_13;
  }

  v6 = gen_ncmp(a1, 4, 2, 16, 1, 16, 0, 0);
LABEL_13:
  v10 = v6;
  if (a3)
  {
    if (a2 >= 0x100000)
    {
      bpf_error(a1, "MPLS label %u greater than maximum %u");
    }

    v11 = gen_ncmp(a1, 6, 0, 0, -4096, 16, 0, a2 << 12);
    gen_and(v10, v11);
    v10 = v11;
  }

  a1[49] = vadd_s32(a1[49], 0x400000004);
  ++a1[31].i32[0];
  return v10;
}

size_t gen_pppoed(int *a1)
{
  if (setjmp(a1))
  {
    return 0;
  }

  else
  {
    return gen_linktype(a1, 34915);
  }
}

size_t gen_pppoes(uint64_t a1, unsigned int a2, int a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v7 = gen_linktype(a1, 34916);
  if (a3)
  {
    if (a2 >= 0x10000)
    {
      bpf_error(a1, "PPPoE session number %u greater than maximum %u", a2, 0xFFFF);
    }

    v8 = gen_ncmp(a1, 6, 0, 0, 0xFFFF, 16, 0, a2);
    gen_and(v7, v8);
    v7 = v8;
  }

  *(a1 + 292) = *(a1 + 280);
  v9 = *(a1 + 228);
  *(a1 + 300) = *(a1 + 288);
  *(a1 + 228) = 9;
  *(a1 + 232) = v9;
  *(a1 + 280) = *(a1 + 316);
  v10 = *(a1 + 392) + *(a1 + 320);
  *(a1 + 284) = v10 + 6;
  v11 = *(a1 + 324);
  *(a1 + 288) = v11;
  *(a1 + 344) = 0;
  *(a1 + 336) = v11;
  *(a1 + 328) = *(a1 + 280);
  *(a1 + 320) = v10 + 8;
  *(a1 + 392) = 0;
  return v7;
}

size_t gen_geneve(uint64_t a1, unsigned int a2, int a3)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v7 = gen_geneve_check(a1, gen_port, 8, a2, a3);
  v8 = gen_loadx_iphdrlen(a1);
  v9 = newchunk(a1, 40);
  *v9 = 135;
  v10 = v8;
  do
  {
    v11 = v10;
    v10 = *(v10 + 4);
  }

  while (v10);
  *(v11 + 4) = v9;
  v12 = newchunk(a1, 288);
  *(v12 + 16) = 29;
  *(v12 + 152) = v12;
  *(v12 + 8) = v8;
  *(v12 + 40) = 0;
  gen_and(v7, v12);
  v13 = gen_geneve_check(a1, gen_port6, 9, a2, a3);
  v14 = gen_abs_offset_varpart(a1, (a1 + 316));
  v15 = newchunk(a1, 40);
  *v15 = 0;
  v15[6] = 40;
  if (v14)
  {
    v16 = v14;
    do
    {
      v17 = v16;
      v16 = *(v16 + 4);
    }

    while (v16);
    *(v17 + 4) = v15;
    v18 = newchunk(a1, 40);
    *v18 = 12;
    v18[6] = 0;
    v19 = v14;
    do
    {
      v20 = v19;
      v19 = *(v19 + 4);
    }

    while (v19);
    *(v20 + 4) = v18;
    v21 = v14;
  }

  else
  {
    v21 = v15;
  }

  v22 = v12;
  v23 = newchunk(a1, 40);
  *v23 = 7;
  v24 = v21;
  do
  {
    v25 = v24;
    v24 = *(v24 + 4);
  }

  while (v24);
  *(v25 + 4) = v23;
  v26 = newchunk(a1, 288);
  *(v26 + 16) = 29;
  *(v26 + 152) = v26;
  v27 = v26;
  *(v26 + 8) = v21;
  *(v26 + 40) = 0;
  gen_and(v13, v26);
  gen_or(v22, v26);
  v28 = newchunk(a1, 40);
  *v28 = 4;
  v28[6] = *(a1 + 320) + *(a1 + 392) + 8;
  v29 = v28;
  v30 = newchunk(a1, 40);
  *v30 = 7;
  v31 = v29;
  do
  {
    v32 = v31;
    v31 = *(v31 + 4);
  }

  while (v31);
  *(v32 + 4) = v30;
  v33 = newchunk(a1, 40);
  *v33 = 4;
  v33[6] = 2;
  v34 = v29;
  do
  {
    v35 = v34;
    v34 = *(v34 + 4);
  }

  while (v34);
  *(v35 + 4) = v33;
  *(a1 + 336) = alloc_reg(a1);
  *(a1 + 328) = 1;
  v36 = newchunk(a1, 40);
  *v36 = 2;
  v36[6] = *(a1 + 336);
  v37 = v29;
  do
  {
    v38 = v37;
    v37 = *(v37 + 4);
  }

  while (v37);
  *(v38 + 4) = v36;
  v39 = newchunk(a1, 40);
  *v39 = 80;
  v39[6] = 0;
  v40 = v29;
  do
  {
    v41 = v40;
    v40 = *(v40 + 4);
  }

  while (v40);
  *(v41 + 4) = v39;
  v42 = newchunk(a1, 40);
  *v42 = 84;
  v42[6] = 63;
  v43 = v29;
  do
  {
    v44 = v43;
    v43 = *(v43 + 4);
  }

  while (v43);
  *(v44 + 4) = v42;
  v45 = newchunk(a1, 40);
  *v45 = 36;
  v45[6] = 4;
  v46 = v29;
  do
  {
    v47 = v46;
    v46 = *(v46 + 4);
  }

  while (v46);
  *(v47 + 4) = v45;
  v48 = newchunk(a1, 40);
  *v48 = 4;
  v48[6] = 8;
  v49 = v29;
  do
  {
    v50 = v49;
    v49 = *(v49 + 4);
  }

  while (v49);
  *(v50 + 4) = v48;
  v51 = newchunk(a1, 40);
  *v51 = 12;
  v51[6] = 0;
  v52 = v29;
  do
  {
    v53 = v52;
    v52 = *(v52 + 4);
  }

  while (v52);
  *(v53 + 4) = v51;
  v54 = *(a1 + 228);
  *(a1 + 292) = *(a1 + 280);
  *(a1 + 300) = *(a1 + 288);
  *(a1 + 228) = 1;
  *(a1 + 232) = v54;
  *(a1 + 280) = 1;
  *(a1 + 288) = alloc_reg(a1);
  *(a1 + 344) = 0;
  v55 = newchunk(a1, 40);
  *v55 = 2;
  v55[6] = *(a1 + 288);
  v56 = v29;
  do
  {
    v57 = v56;
    v56 = *(v56 + 4);
  }

  while (v56);
  *(v57 + 4) = v55;
  *(a1 + 244) = 1;
  v58 = newchunk(a1, 40);
  *v58 = 72;
  v58[6] = 2;
  v59 = v29;
  do
  {
    v60 = v59;
    v59 = *(v59 + 4);
  }

  while (v59);
  *(v60 + 4) = v58;
  v61 = newchunk(a1, 40);
  *v61 = 97;
  v61[6] = *(a1 + 288);
  v62 = v29;
  do
  {
    v63 = v62;
    v62 = *(v62 + 4);
  }

  while (v62);
  *(v63 + 4) = v61;
  v64 = newchunk(a1, 40);
  *v64 = 21;
  v64[6] = 25944;
  v65 = v64;
  v66 = v29;
  do
  {
    v67 = v66;
    v66 = *(v66 + 4);
  }

  while (v66);
  *(v67 + 4) = v64;
  v68 = newchunk(a1, 40);
  *v68 = 135;
  v69 = v29;
  do
  {
    v70 = v69;
    v69 = *(v69 + 4);
  }

  while (v69);
  *(v70 + 4) = v68;
  *(v65 + 1) = v68;
  v71 = newchunk(a1, 40);
  *v71 = 4;
  v71[6] = 12;
  v72 = v29;
  do
  {
    v73 = v72;
    v72 = *(v72 + 4);
  }

  while (v72);
  *(v73 + 4) = v71;
  v74 = newchunk(a1, 40);
  *v74 = 2;
  v74[6] = *(a1 + 336);
  v75 = v29;
  do
  {
    v76 = v75;
    v75 = *(v75 + 4);
  }

  while (v75);
  *(v76 + 4) = v74;
  v77 = newchunk(a1, 40);
  *v77 = 4;
  v77[6] = 2;
  v78 = v29;
  do
  {
    v79 = v78;
    v78 = *(v78 + 4);
  }

  while (v78);
  *(v79 + 4) = v77;
  v80 = newchunk(a1, 40);
  *v80 = 7;
  v81 = v29;
  do
  {
    v82 = v81;
    v81 = *(v81 + 4);
  }

  while (v81);
  *(v82 + 4) = v80;
  *(a1 + 324) = alloc_reg(a1);
  *(a1 + 316) = 1;
  v83 = newchunk(a1, 40);
  *v83 = 3;
  v83[6] = *(a1 + 324);
  v84 = v29;
  do
  {
    v85 = v84;
    v84 = *(v84 + 4);
  }

  while (v84);
  *(v85 + 4) = v83;
  *(v65 + 2) = v83;
  *(a1 + 392) = 0;
  v86 = newchunk(a1, 40);
  *v86 = 0;
  v86[6] = 0;
  v87 = v86;
  v88 = newchunk(a1, 288);
  v89 = v88;
  *(v88 + 16) = 21;
  *(v88 + 152) = v88;
  v90 = v29;
  do
  {
    v91 = v90;
    v90 = *(v90 + 4);
  }

  while (v90);
  *(v91 + 4) = v87;
  *(v88 + 8) = v29;
  gen_and(v27, v88);
  *(a1 + 344) = 1;
  return v89;
}

size_t gen_atmfield_code(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (setjmp(a1))
  {
    return 0;
  }

  else
  {
    return gen_atmfield_code_internal(a1, a2, a3, a4, a5);
  }
}

size_t gen_atmfield_code_internal(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (a2 > 52)
  {
    if (a2 == 53)
    {
      v8 = a1[90];
      if (v8 != -1)
      {
        v9 = 16;
        v10 = 15;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    if (a2 == 54)
    {
      v11 = a1[97];
      if (v11 != -1)
      {
        v8 = v11 + 5;
LABEL_19:
        v9 = 16;
        goto LABEL_20;
      }

LABEL_24:
      abort();
    }

    if (a2 != 55)
    {
      goto LABEL_24;
    }

    if (!a1[85])
    {
      bpf_error(a1, "'callref' supported only on raw ATM", a3, a4, a5, a4, a5, a3);
    }

    v8 = a1[90];
LABEL_18:
    if (v8 != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (a2 == 51)
  {
    if (!a1[85])
    {
      bpf_error(a1, "'vpi' supported only on raw ATM", a3, a4, a5, a4, a5, a3);
    }

    v8 = a1[88];
    goto LABEL_18;
  }

  if (a2 != 52)
  {
    goto LABEL_24;
  }

  if (!a1[85])
  {
    bpf_error(a1, "'vci' supported only on raw ATM", a3, a4, a5, a4, a5, a3);
  }

  v8 = a1[89];
  if (v8 == -1)
  {
    goto LABEL_24;
  }

  v9 = 8;
LABEL_20:
  v10 = -1;
LABEL_21:

  return gen_ncmp(a1, 1, v8, v9, v10, v6, v5, v7);
}

double gen_atmtype_abbrev(uint64_t a1, int a2)
{
  if (!setjmp(a1))
  {
    if (a2 > 25)
    {
      if (a2 > 29)
      {
        if (a2 == 30)
        {
          if (!*(a1 + 340))
          {
            bpf_error(a1, "'lane' supported only on raw ATM");
          }

          gen_atmfield_code_internal(a1, 53, 1, 16, 0);
          *(a1 + 292) = *(a1 + 280);
          v9 = *(a1 + 228);
          *(a1 + 300) = *(a1 + 288);
          *(a1 + 228) = 1;
          *(a1 + 232) = v9;
          *(a1 + 280) = 0;
          v10 = *(a1 + 388);
          *(a1 + 284) = v10 + 2;
          *(a1 + 288) = -1;
          *(a1 + 344) = 0;
          *(a1 + 332) = v10 + 14;
          *(a1 + 320) = v10 + 16;
          *&result = 0x300000000;
          *(a1 + 392) = 0x300000000;
        }

        else
        {
          if (a2 != 31)
          {
            goto LABEL_30;
          }

          if (!*(a1 + 340))
          {
            bpf_error(a1, "'llc' supported only on raw ATM");
          }

          gen_atmfield_code_internal(a1, 53, 2, 16, 0);
          *(a1 + 228) = *(a1 + 232);
        }
      }

      else
      {
        if (a2 != 26)
        {
          if (a2 == 27)
          {
            if (!*(a1 + 340))
            {
              bpf_error(a1, "'ilmic' supported only on raw ATM");
            }

            v5 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
            v6 = a1;
            v7 = 16;
            goto LABEL_26;
          }

          goto LABEL_30;
        }

        if (!*(a1 + 340))
        {
          bpf_error(a1, "'sc' supported only on raw ATM");
        }

        gen_atmtype_sc(a1);
      }
    }

    else
    {
      if (a2 > 23)
      {
        if (a2 == 24)
        {
          if (!*(a1 + 340))
          {
            bpf_error(a1, "'oam4sc' supported only on raw ATM");
          }

          v5 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
          v6 = a1;
          v7 = 3;
        }

        else
        {
          if (!*(a1 + 340))
          {
            bpf_error(a1, "'oam4ec' supported only on raw ATM");
          }

          v5 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
          v6 = a1;
          v7 = 4;
        }

        goto LABEL_26;
      }

      if (a2 != 22)
      {
        if (a2 == 23)
        {
          if (!*(a1 + 340))
          {
            bpf_error(a1, "'bcc' supported only on raw ATM");
          }

          v5 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
          v6 = a1;
          v7 = 2;
LABEL_26:
          v8 = gen_atmfield_code_internal(v6, 52, v7, 16, 0);
          gen_and(v5, v8);
          return result;
        }

LABEL_30:
        abort();
      }

      if (!*(a1 + 340))
      {
        bpf_error(a1, "'metac' supported only on raw ATM");
      }

      gen_atmtype_metac(a1);
    }
  }

  return result;
}

size_t gen_atmtype_metac(int *a1)
{
  v2 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
  v3 = gen_atmfield_code_internal(a1, 52, 1, 16, 0);
  gen_and(v2, v3);
  return v3;
}

size_t gen_atmtype_sc(int *a1)
{
  v2 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
  v3 = gen_atmfield_code_internal(a1, 52, 5, 16, 0);
  gen_and(v2, v3);
  return v3;
}

size_t gen_mtp2type_abbrev(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2 > 24)
  {
    if (a2 != 25)
    {
      if (a2 != 26)
      {
        if (a2 == 27)
        {
          v12 = a1[57];
          if ((v12 - 139) >= 2 && v12 != 197)
          {
            bpf_error(a1, "'hmsu' supported only on MTP2_HSL");
          }

          v6 = a1[92];
          v7 = a1;
          v8 = 8;
          v9 = 65408;
          v10 = 32;
          v11 = 256;
          return gen_ncmp(v7, 0, v6, v8, v9, v10, 0, v11);
        }

        goto LABEL_31;
      }

      v20 = a1[57];
      if ((v20 - 139) >= 2 && v20 != 197)
      {
        bpf_error(a1, "'hlssu' supported only on MTP2_HSL");
      }

      v14 = gen_ncmp(a1, 0, a1[92], 8, 65408, 32, 1, 256);
      v15 = v14;
      v16 = a1[92];
      v17 = a1;
      v18 = 8;
      v19 = 65408;
LABEL_22:
      v21 = gen_ncmp(v17, 0, v16, v18, v19, 32, 0, 0);
      gen_and(v21, v14);
      return v15;
    }

    v23 = a1[57];
    if ((v23 - 139) >= 2 && v23 != 197)
    {
      bpf_error(a1, "'hfisu' supported only on MTP2_HSL");
    }

    v6 = a1[92];
    v7 = a1;
    v8 = 8;
    v9 = 65408;
  }

  else
  {
    if (a2 != 22)
    {
      if (a2 != 23)
      {
        if (a2 == 24)
        {
          v5 = a1[57];
          if ((v5 - 139) >= 2 && v5 != 197)
          {
            bpf_error(a1, "'msu' supported only on MTP2");
          }

          v6 = a1[91];
          v7 = a1;
          v8 = 16;
          v9 = 63;
          v10 = 32;
          v11 = 2;
          return gen_ncmp(v7, 0, v6, v8, v9, v10, 0, v11);
        }

LABEL_31:
        abort();
      }

      v13 = a1[57];
      if ((v13 - 139) >= 2 && v13 != 197)
      {
        bpf_error(a1, "'lssu' supported only on MTP2");
      }

      v14 = gen_ncmp(a1, 0, a1[91], 16, 63, 32, 1, 2);
      v15 = v14;
      v16 = a1[91];
      v17 = a1;
      v18 = 16;
      v19 = 63;
      goto LABEL_22;
    }

    v22 = a1[57];
    if ((v22 - 139) >= 2 && v22 != 197)
    {
      bpf_error(a1, "'fisu' supported only on MTP2");
    }

    v6 = a1[91];
    v7 = a1;
    v8 = 16;
    v9 = 63;
  }

  v10 = 16;
  v11 = 0;
  return gen_ncmp(v7, 0, v6, v8, v9, v10, 0, v11);
}

size_t gen_ncmp(int *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  a = gen_load_a(a1, a2, a3, a4);
  if (a5 != -1)
  {
    v14 = newchunk(a1, 40);
    *v14 = 84;
    v14[6] = a5;
    v15 = a;
    do
    {
      v16 = v15;
      v15 = *(v15 + 4);
    }

    while (v15);
    *(v16 + 4) = v14;
  }

  result = newchunk(a1, 288);
  *(result + 16) = a6 | 5;
  *(result + 152) = result;
  *(result + 8) = a;
  *(result + 40) = a8;
  if (a7)
  {
    if ((a6 & 0xFFFFFFEF) == 0x20)
    {
      *(result + 68) = *(result + 68) == 0;
    }
  }

  return result;
}

size_t gen_mtp3field_code(int *a1, int a2, unsigned int a3, int a4, int a5)
{
  if (setjmp(a1))
  {
    return 0;
  }

  v10 = a1[93];
  v11 = a1[94];
  v12 = a1[95];
  v13 = a1[96];
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      v14 = a1[93];
      if (a2 != 1)
      {
        v14 = a1[94];
        if (a2 != 2)
        {
LABEL_39:
          abort();
        }

        goto LABEL_11;
      }

LABEL_23:
      if (v10 == -1)
      {
        bpf_error(a1, "'sio' supported only on SS7", v14);
      }

      v15 = a3;
      if (a3 >= 0x100)
      {
        bpf_error(a1, "sio value %u too big; max value = 255", v14);
      }

      v16 = a1;
      v17 = 16;
      v18 = -1;
      return gen_ncmp(v16, 0, v14, v17, v18, a4, a5, v15);
    }

    v14 = a1[95];
    if (a2 != 3)
    {
      v14 = a1[96];
LABEL_19:
      if (v13 == -1)
      {
        bpf_error(a1, "'sls' supported only on SS7", v14);
      }

      if (a3 >= 0x10)
      {
        bpf_error(a1, "sls value %u too big; max value = 15", v14);
      }

      v15 = 16 * a3;
      v16 = a1;
      v17 = 16;
      v18 = 240;
      return gen_ncmp(v16, 0, v14, v17, v18, a4, a5, v15);
    }

    goto LABEL_27;
  }

  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 != 8)
      {
        goto LABEL_39;
      }

      v14 = (v13 + 3);
      goto LABEL_19;
    }

    v14 = (v12 + 3);
LABEL_27:
    if (v12 == -1)
    {
      bpf_error(a1, "'dpc' supported only on SS7", v14);
    }

    if (a3 >= 0x4000)
    {
      bpf_error(a1, "dpc value %u too big; max value = 16383", v14);
    }

    v15 = (a3 << 8) & 0x3F0000 | (a3 << 24);
    v16 = a1;
    v17 = 0;
    v18 = -12648448;
    return gen_ncmp(v16, 0, v14, v17, v18, a4, a5, v15);
  }

  if (a2 == 5)
  {
    v14 = (v10 + 3);
    goto LABEL_23;
  }

  v14 = (v11 + 3);
LABEL_11:
  if (v11 == -1)
  {
    bpf_error(a1, "'opc' supported only on SS7", v14);
  }

  if (a3 >= 0x4000)
  {
    bpf_error(a1, "opc value %u too big; max value = 16383", v14);
  }

  v15 = (a3 << 6) & 0xFF00 | (a3 >> 10) & 0xF | ((a3 & 3) << 22);
  v16 = a1;
  v17 = 0;
  v18 = 12648207;
  return gen_ncmp(v16, 0, v14, v17, v18, a4, a5, v15);
}

size_t gen_atmmulti_abbrev(int *a1, int a2)
{
  if (setjmp(a1))
  {
    return 0;
  }

  if (a2 > 69)
  {
    if (a2 == 70)
    {
      if (!a1[85])
      {
        bpf_error(a1, "'connectmsg' supported only on raw ATM");
      }

      v14 = gen_atmfield_code_internal(a1, 54, 5, 16, 0);
      v7 = gen_atmfield_code_internal(a1, 54, 2, 16, 0);
      gen_or(v14, v7);
      v15 = gen_atmfield_code_internal(a1, 54, 7, 16, 0);
      gen_or(v15, v7);
      v16 = gen_atmfield_code_internal(a1, 54, 15, 16, 0);
      gen_or(v16, v7);
      v17 = gen_atmfield_code_internal(a1, 54, 77, 16, 0);
      gen_or(v17, v7);
      v18 = gen_atmfield_code_internal(a1, 54, 90, 16, 0);
      gen_or(v18, v7);
      v11 = gen_atmtype_sc(a1);
      v13 = v7;
      goto LABEL_17;
    }

    if (a2 == 71)
    {
      if (!a1[85])
      {
        bpf_error(a1, "'metaconnect' supported only on raw ATM");
      }

      v5 = gen_atmfield_code_internal(a1, 54, 5, 16, 0);
      v6 = gen_atmfield_code_internal(a1, 54, 2, 16, 0);
      v7 = v6;
      gen_or(v5, v6);
      v8 = gen_atmfield_code_internal(a1, 54, 7, 16, 0);
      gen_or(v8, v6);
      v9 = gen_atmfield_code_internal(a1, 54, 77, 16, 0);
      gen_or(v9, v6);
      v10 = gen_atmfield_code_internal(a1, 54, 90, 16, 0);
      gen_or(v10, v6);
      v11 = gen_atmtype_metac(a1);
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (a2 == 28)
  {
    if (!a1[85])
    {
      bpf_error(a1, "'oam' supported only on raw ATM");
    }

    goto LABEL_13;
  }

  if (a2 != 29)
  {
LABEL_18:
    abort();
  }

  if (!a1[85])
  {
    bpf_error(a1, "'oamf4' supported only on raw ATM");
  }

LABEL_13:
  v12 = gen_atmfield_code_internal(a1, 52, 3, 16, 0);
  v6 = gen_atmfield_code_internal(a1, 52, 4, 16, 0);
  v7 = v6;
  gen_or(v12, v6);
  v11 = gen_atmfield_code_internal(a1, 51, 0, 16, 0);
LABEL_14:
  v13 = v6;
LABEL_17:
  gen_and(v11, v13);
  return v7;
}

size_t gen_check_802_11_data_frame(int *a1)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
  v3 = newchunk(a1, 288);
  *(v3 + 16) = 69;
  *(v3 + 152) = v3;
  *(v3 + 40) = 8;
  *(v3 + 8) = absoffsetrel;
  v4 = gen_load_absoffsetrel(a1, a1 + 70, 0, 16);
  v5 = newchunk(a1, 288);
  *(v5 + 16) = 69;
  *(v5 + 152) = v5;
  *(v5 + 40) = 4;
  *(v5 + 8) = v4;
  *(v5 + 68) = *(v5 + 68) == 0;
  gen_and(v5, v3);
  return v3;
}

_DWORD *gen_load_absoffsetrel(int *a1, _DWORD *a2, int a3, int a4)
{
  v8 = gen_abs_offset_varpart(a1, a2);
  v9 = newchunk(a1, 40);
  if (v8)
  {
    *v9 = a4 | 0x40;
    v9[6] = a2[1] + a3;
    v10 = v8;
    do
    {
      v11 = v10;
      v10 = *(v10 + 4);
    }

    while (v10);
    *(v11 + 4) = v9;
  }

  else
  {
    *v9 = a4 | 0x20;
    v9[6] = a2[1] + a3;
    return v9;
  }

  return v8;
}

_DWORD *gen_loadx_iphdrlen(int *a1)
{
  v2 = gen_abs_offset_varpart(a1, a1 + 79);
  v3 = newchunk(a1, 40);
  if (v2)
  {
    *v3 = 80;
    v3[6] = a1[98] + a1[80];
    v4 = v2;
    do
    {
      v5 = v4;
      v4 = *(v4 + 4);
    }

    while (v4);
    *(v5 + 4) = v3;
    v6 = newchunk(a1, 40);
    *v6 = 84;
    v6[6] = 15;
    v7 = v2;
    do
    {
      v8 = v7;
      v7 = *(v7 + 4);
    }

    while (v7);
    *(v8 + 4) = v6;
    v9 = newchunk(a1, 40);
    *v9 = 100;
    v9[6] = 2;
    v10 = v2;
    do
    {
      v11 = v10;
      v10 = *(v10 + 4);
    }

    while (v10);
    *(v11 + 4) = v9;
    v12 = newchunk(a1, 40);
    *v12 = 12;
    v13 = v2;
    do
    {
      v14 = v13;
      v13 = *(v13 + 4);
    }

    while (v13);
    *(v14 + 4) = v12;
    v15 = newchunk(a1, 40);
    *v15 = 7;
    v16 = v2;
    do
    {
      v17 = v16;
      v16 = *(v16 + 4);
    }

    while (v16);
    *(v17 + 4) = v15;
  }

  else
  {
    *v3 = 177;
    v3[6] = a1[98] + a1[80];
    return v3;
  }

  return v2;
}

_DWORD *gen_abs_offset_varpart(int *a1, _DWORD *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (a2[2] == -1)
  {
    a2[2] = alloc_reg(a1);
  }

  result = newchunk(a1, 40);
  *result = 97;
  result[6] = a2[2];
  return result;
}

size_t gen_hostop(int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  if (a4 >= 3)
  {
    if (a4 > 3)
    {
      if (a4 < 5)
      {
        v16 = gen_hostop(a1, a2, a3, 1, a5, a6, a7);
        v14 = gen_hostop(a1, a2, a3, 2, a5, v8, a7);
        v15 = v16;
        goto LABEL_9;
      }

      if (a4 <= 7)
      {
        if (a4 != 5)
        {
          if (a4 != 6)
          {
            bpf_error(a1, "'addr3' and 'address3' are not valid qualifiers for addresses other than 802.11 MAC addresses");
          }

          bpf_error(a1, "'addr2' and 'address2' are not valid qualifiers for addresses other than 802.11 MAC addresses");
        }

        bpf_error(a1, "'addr1' and 'address1' are not valid qualifiers for addresses other than 802.11 MAC addresses");
      }

      switch(a4)
      {
        case 8:
          bpf_error(a1, "'addr4' and 'address4' are not valid qualifiers for addresses other than 802.11 MAC addresses");
        case 9:
          bpf_error(a1, "'ra' is not a valid qualifier for addresses other than 802.11 MAC addresses");
        case 10:
          bpf_error(a1, "'ta' is not a valid qualifier for addresses other than 802.11 MAC addresses");
      }

LABEL_24:
      abort();
    }

LABEL_10:
    v17 = gen_hostop(a1, a2, a3, 1, a5, a6, a7);
    v14 = gen_hostop(a1, a2, a3, 2, a5, v8, a7);
    gen_or(v17, v14);
    return v14;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  if (a4 != 1)
  {
    LODWORD(v8) = a7;
    if (a4 != 2)
    {
      goto LABEL_24;
    }
  }

  v13 = gen_linktype(a1, a5);
  v14 = gen_ncmp(a1, 6, v8, 0, a3, 16, 0, a2);
  v15 = v13;
LABEL_9:
  gen_and(v15, v14);
  return v14;
}

size_t gen_dnhostop(int *a1, uint64_t a2, int a3)
{
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 < 5)
      {
        v7 = gen_dnhostop(a1, a2, 1);
        v8 = gen_dnhostop(a1, a2, 2);
LABEL_12:
        gen_and(v7, v8);
        return v8;
      }

      if (a3 <= 7)
      {
        if (a3 != 5)
        {
          if (a3 != 6)
          {
            bpf_error(a1, "'addr3' and 'address3' are not valid qualifiers for addresses other than 802.11 MAC addresses");
          }

          bpf_error(a1, "'addr2' and 'address2' are not valid qualifiers for addresses other than 802.11 MAC addresses");
        }

        bpf_error(a1, "'addr1' and 'address1' are not valid qualifiers for addresses other than 802.11 MAC addresses");
      }

      switch(a3)
      {
        case 8:
          bpf_error(a1, "'addr4' and 'address4' are not valid qualifiers for addresses other than 802.11 MAC addresses");
        case 9:
          bpf_error(a1, "'ra' is not a valid qualifier for addresses other than 802.11 MAC addresses");
        case 10:
          bpf_error(a1, "'ta' is not a valid qualifier for addresses other than 802.11 MAC addresses");
      }

      goto LABEL_26;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = 3;
      v6 = 15;
      goto LABEL_11;
    }

    if (a3 == 2)
    {
      v5 = 1;
      v6 = 7;
LABEL_11:
      v7 = gen_linktype(a1, 24579);
      v10 = gen_ncmp(a1, 6, 2, 8, 65287, 16, 0, 33030);
      v11 = bswap32(a2) >> 16;
      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, v6 + a1[98] + 3, 8);
      v8 = newchunk(a1, 288);
      *(v8 + 16) = 21;
      *(v8 + 152) = v8;
      *(v8 + 8) = absoffsetrel;
      *(v8 + 40) = v11;
      gen_and(v10, v8);
      v13 = gen_ncmp(a1, 6, 2, 16, 7, 16, 0, 6);
      v14 = gen_load_absoffsetrel(a1, a1 + 79, v6 + a1[98] + 2, 8);
      v15 = newchunk(a1, 288);
      *(v15 + 16) = 21;
      *(v15 + 152) = v15;
      *(v15 + 8) = v14;
      *(v15 + 40) = v11;
      gen_and(v13, v15);
      gen_or(v15, v8);
      v16 = gen_ncmp(a1, 6, 2, 8, 65287, 16, 0, 33026);
      v17 = gen_load_absoffsetrel(a1, a1 + 79, v5 + a1[98] + 3, 8);
      v18 = newchunk(a1, 288);
      *(v18 + 16) = 21;
      *(v18 + 152) = v18;
      *(v18 + 8) = v17;
      *(v18 + 40) = v11;
      gen_and(v16, v18);
      gen_or(v18, v8);
      v19 = gen_ncmp(a1, 6, 2, 16, 7, 16, 0, 2);
      v20 = gen_load_absoffsetrel(a1, a1 + 79, v5 + a1[98] + 2, 8);
      v21 = newchunk(a1, 288);
      *(v21 + 16) = 21;
      *(v21 + 152) = v21;
      *(v21 + 8) = v20;
      *(v21 + 40) = v11;
      gen_and(v19, v21);
      gen_or(v21, v8);
      goto LABEL_12;
    }

LABEL_26:
    abort();
  }

  v9 = gen_dnhostop(a1, a2, 1);
  v8 = gen_dnhostop(a1, a2, 2);
  gen_or(v9, v8);
  return v8;
}

size_t gen_hostop6(int *a1, unsigned int *a2, unsigned int *a3, int a4)
{
  if (a4 >= 3)
  {
    if (a4 > 3)
    {
      if (a4 < 5)
      {
        v8 = gen_hostop6(a1, a2, a3, 1);
        v9 = gen_hostop6(a1, a2, a3, 2);
        v10 = v8;
LABEL_12:
        gen_and(v10, v9);
        return v9;
      }

      if (a4 <= 7)
      {
        if (a4 != 5)
        {
          if (a4 != 6)
          {
            bpf_error(a1, "'addr3' and 'address3' are not valid qualifiers for addresses other than 802.11 MAC addresses");
          }

          bpf_error(a1, "'addr2' and 'address2' are not valid qualifiers for addresses other than 802.11 MAC addresses");
        }

        bpf_error(a1, "'addr1' and 'address1' are not valid qualifiers for addresses other than 802.11 MAC addresses");
      }

      switch(a4)
      {
        case 8:
          bpf_error(a1, "'addr4' and 'address4' are not valid qualifiers for addresses other than 802.11 MAC addresses");
        case 9:
          bpf_error(a1, "'ra' is not a valid qualifier for addresses other than 802.11 MAC addresses");
        case 10:
          bpf_error(a1, "'ta' is not a valid qualifier for addresses other than 802.11 MAC addresses");
      }

      goto LABEL_26;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v7 = 8;
      goto LABEL_11;
    }

    if (a4 == 2)
    {
      v7 = 24;
LABEL_11:
      v9 = gen_ncmp(a1, 6, v7 + 12, 0, bswap32(a3[3]), 16, 0, bswap32(a2[3]));
      v12 = gen_ncmp(a1, 6, v7 + 8, 0, bswap32(a3[2]), 16, 0, bswap32(a2[2]));
      gen_and(v12, v9);
      v13 = gen_ncmp(a1, 6, v7 | 4u, 0, bswap32(a3[1]), 16, 0, bswap32(a2[1]));
      gen_and(v13, v9);
      v14 = gen_ncmp(a1, 6, v7, 0, bswap32(*a3), 16, 0, bswap32(*a2));
      gen_and(v14, v9);
      v10 = gen_linktype(a1, 34525);
      goto LABEL_12;
    }

LABEL_26:
    abort();
  }

  v11 = gen_hostop6(a1, a2, a3, 1);
  v9 = gen_hostop6(a1, a2, a3, 2);
  gen_or(v11, v9);
  return v9;
}

size_t gen_portop(int *a1, int a2, int a3, int a4)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 9, 16);
  v9 = newchunk(a1, 288);
  *(v9 + 16) = 21;
  *(v9 + 152) = v9;
  *(v9 + 8) = absoffsetrel;
  *(v9 + 40) = a3;
  v10 = gen_ipfrag(a1);
  gen_and(v9, v10);
  if (a4 < 3)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v11 = a1;
        v12 = 0;
        goto LABEL_11;
      }

      if (a4 == 2)
      {
        v11 = a1;
        v12 = 2;
LABEL_11:
        a = gen_load_a(v11, 8, v12, 8);
        v16 = newchunk(a1, 288);
        *(v16 + 16) = 21;
        *(v16 + 152) = v16;
        *(v16 + 8) = a;
        *(v16 + 40) = a2;
        goto LABEL_12;
      }

LABEL_25:
      abort();
    }

    goto LABEL_9;
  }

  if (a4 <= 3)
  {
LABEL_9:
    v17 = gen_load_a(a1, 8, 0, 8);
    v18 = newchunk(a1, 288);
    *(v18 + 16) = 21;
    *(v18 + 152) = v18;
    *(v18 + 8) = v17;
    *(v18 + 40) = a2;
    v19 = gen_load_a(a1, 8, 2, 8);
    v16 = newchunk(a1, 288);
    *(v16 + 16) = 21;
    *(v16 + 152) = v16;
    *(v16 + 8) = v19;
    *(v16 + 40) = a2;
    gen_or(v18, v16);
    goto LABEL_12;
  }

  if (a4 >= 5)
  {
    if (a4 <= 7)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          bpf_error(a1, "'addr3' and 'address3' are not valid qualifiers for ports");
        }

        bpf_error(a1, "'addr2' and 'address2' are not valid qualifiers for ports");
      }

      bpf_error(a1, "'addr1' and 'address1' are not valid qualifiers for ports");
    }

    switch(a4)
    {
      case 8:
        bpf_error(a1, "'addr4' and 'address4' are not valid qualifiers for ports");
      case 9:
        bpf_error(a1, "'ra' is not a valid qualifier for ports");
      case 10:
        bpf_error(a1, "'ta' is not a valid qualifier for ports");
    }

    goto LABEL_25;
  }

  v13 = gen_load_a(a1, 8, 0, 8);
  v14 = newchunk(a1, 288);
  *(v14 + 16) = 21;
  *(v14 + 152) = v14;
  *(v14 + 8) = v13;
  *(v14 + 40) = a2;
  v15 = gen_load_a(a1, 8, 2, 8);
  v16 = newchunk(a1, 288);
  *(v16 + 16) = 21;
  *(v16 + 152) = v16;
  *(v16 + 8) = v15;
  *(v16 + 40) = a2;
  gen_and(v14, v16);
LABEL_12:
  gen_and(v10, v16);
  return v16;
}

size_t gen_ipfrag(int *a1)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 6, 8);
  result = newchunk(a1, 288);
  *(result + 16) = 69;
  *(result + 152) = result;
  *(result + 40) = 0x1FFF;
  *(result + 8) = absoffsetrel;
  *(result + 68) = *(result + 68) == 0;
  return result;
}

size_t gen_portrangeop(int *a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 9, 16);
  v11 = newchunk(a1, 288);
  *(v11 + 16) = 21;
  *(v11 + 152) = v11;
  *(v11 + 8) = absoffsetrel;
  *(v11 + 40) = a4;
  v12 = gen_ipfrag(a1);
  gen_and(v11, v12);
  if (a5 < 3)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v13 = a1;
        v14 = 0;
        goto LABEL_11;
      }

      if (a5 == 2)
      {
        v13 = a1;
        v14 = 2;
LABEL_11:
        v16 = gen_portrangeatom(v13, v14, a2, a3);
        goto LABEL_12;
      }

LABEL_25:
      abort();
    }

    goto LABEL_9;
  }

  if (a5 <= 3)
  {
LABEL_9:
    v17 = gen_portrangeatom(a1, 0, a2, a3);
    v16 = gen_portrangeatom(a1, 2, a2, a3);
    gen_or(v17, v16);
    goto LABEL_12;
  }

  if (a5 >= 5)
  {
    if (a5 <= 7)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          bpf_error(a1, "'addr3' and 'address3' are not valid qualifiers for port ranges");
        }

        bpf_error(a1, "'addr2' and 'address2' are not valid qualifiers for port ranges");
      }

      bpf_error(a1, "'addr1' and 'address1' are not valid qualifiers for port ranges");
    }

    switch(a5)
    {
      case 8:
        bpf_error(a1, "'addr4' and 'address4' are not valid qualifiers for port ranges");
      case 9:
        bpf_error(a1, "'ra' is not a valid qualifier for port ranges");
      case 10:
        bpf_error(a1, "'ta' is not a valid qualifier for port ranges");
    }

    goto LABEL_25;
  }

  v15 = gen_portrangeatom(a1, 0, a2, a3);
  v16 = gen_portrangeatom(a1, 2, a2, a3);
  gen_and(v15, v16);
LABEL_12:
  gen_and(v12, v16);
  return v16;
}

size_t gen_portrangeatom(int *a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  a = gen_load_a(a1, 8, a2, 8);
  v9 = newchunk(a1, 288);
  *(v9 + 16) = 53;
  *(v9 + 152) = v9;
  *(v9 + 8) = a;
  *(v9 + 40) = v7;
  v10 = gen_cmp_le(a1, 8, a2, v6);
  gen_and(v9, v10);
  return v10;
}

size_t gen_cmp_le(int *a1, int a2, int a3, int a4)
{
  a = gen_load_a(a1, a2, a3, 8);
  result = newchunk(a1, 288);
  *(result + 16) = 37;
  *(result + 152) = result;
  *(result + 8) = a;
  *(result + 40) = a4;
  *(result + 68) = *(result + 68) == 0;
  return result;
}

size_t gen_portrangeop6(int *a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a1[98] + 6, 16);
  v11 = newchunk(a1, 288);
  *(v11 + 16) = 21;
  *(v11 + 152) = v11;
  *(v11 + 8) = absoffsetrel;
  *(v11 + 40) = a4;
  if (a5 <= 1)
  {
    if (!a5)
    {
      goto LABEL_9;
    }

    if (a5 != 1)
    {
LABEL_13:
      abort();
    }

    v14 = a1;
    v15 = 0;
LABEL_11:
    v13 = gen_portrangeatom6(v14, v15, a2, a3);
    goto LABEL_12;
  }

  if (a5 == 2)
  {
    v14 = a1;
    v15 = 2;
    goto LABEL_11;
  }

  if (a5 == 3)
  {
LABEL_9:
    v16 = gen_portrangeatom6(a1, 0, a2, a3);
    v13 = gen_portrangeatom6(a1, 2, a2, a3);
    gen_or(v16, v13);
    goto LABEL_12;
  }

  if (a5 != 4)
  {
    goto LABEL_13;
  }

  v12 = gen_portrangeatom6(a1, 0, a2, a3);
  v13 = gen_portrangeatom6(a1, 2, a2, a3);
  gen_and(v12, v13);
LABEL_12:
  gen_and(v11, v13);
  return v13;
}

size_t gen_portrangeatom6(int *a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, a2 + a1[98] + 40, 8);
  v9 = newchunk(a1, 288);
  *(v9 + 16) = 53;
  *(v9 + 152) = v9;
  *(v9 + 8) = absoffsetrel;
  *(v9 + 40) = v7;
  v10 = gen_cmp_le(a1, 9, a2, v6);
  gen_and(v9, v10);
  return v10;
}

size_t gen_ether_linktype(int *a1, int a2)
{
  v27[1] = *MEMORY[0x29EDCA608];
  if (a2 <= 253)
  {
    if (a2 == 6)
    {
      goto LABEL_10;
    }

    if (a2 != 224)
    {
      if (a2 != 240)
      {
        goto LABEL_5;
      }

LABEL_10:
      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
      v10 = newchunk(a1, 288);
      *(v10 + 16) = 37;
      *(v10 + 152) = v10;
      *(v10 + 8) = absoffsetrel;
      *(v10 + 40) = 1500;
      *(v10 + 68) = *(v10 + 68) == 0;
      v11 = a2 | (a2 << 8);
      v12 = gen_load_absoffsetrel(a1, a1 + 79, 0, 8);
      v6 = newchunk(a1, 288);
      *(v6 + 16) = 21;
      *(v6 + 152) = v6;
      *(v6 + 8) = v12;
      *(v6 + 40) = v11;
      gen_and(v10, v6);
      goto LABEL_17;
    }

    v18 = gen_load_absoffsetrel(a1, a1 + 79, 0, 16);
    v19 = newchunk(a1, 288);
    *(v19 + 16) = 21;
    *(v19 + 152) = v19;
    *(v19 + 8) = v18;
    *(v19 + 40) = 224;
    v20 = gen_load_absoffsetrel(a1, a1 + 79, 0, 8);
    v6 = newchunk(a1, 288);
    *(v6 + 16) = 21;
    *(v6 + 152) = v6;
    *(v6 + 8) = v20;
    *(v6 + 40) = 0xFFFF;
    gen_or(v19, v6);
    v27[0] = 0x378100000003AAAALL;
    v21 = gen_bcmp(a1, 3, 0, 8u, v27);
    gen_or(v21, v6);
    v22 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v23 = newchunk(a1, 288);
    *(v23 + 16) = 37;
    *(v23 + 152) = v23;
    *(v23 + 8) = v22;
    *(v23 + 40) = 1500;
    *(v23 + 68) = *(v23 + 68) == 0;
    gen_and(v23, v6);
    v24 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v17 = newchunk(a1, 288);
    *(v17 + 16) = 21;
    *(v17 + 152) = v17;
    *(v17 + 8) = v24;
    *(v17 + 40) = 33079;
LABEL_16:
    gen_or(v17, v6);
    goto LABEL_17;
  }

  if (a2 == 33011 || a2 == 32923)
  {
    v13 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v14 = newchunk(a1, 288);
    *(v14 + 16) = 37;
    *(v14 + 152) = v14;
    *(v14 + 8) = v13;
    *(v14 + 40) = 1500;
    *(v14 + 68) = *(v14 + 68) == 0;
    if (a2 == 32923)
    {
      v15 = 0x9B8007000803AAAALL;
    }

    else
    {
      v15 = 0xF38000000003AAAALL;
    }

    v27[0] = v15;
    v6 = gen_bcmp(a1, 3, 0, 8u, v27);
    gen_and(v14, v6);
    v16 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v17 = newchunk(a1, 288);
    *(v17 + 16) = 21;
    *(v17 + 152) = v17;
    *(v17 + 8) = v16;
    *(v17 + 40) = a2;
    goto LABEL_16;
  }

  if (a2 == 254)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
  v5 = newchunk(a1, 288);
  v6 = v5;
  if (a2 > 0x5DC)
  {
    *(v5 + 16) = 21;
    *(v5 + 152) = v5;
    *(v5 + 8) = v4;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 16) = 37;
    *(v5 + 152) = v5;
    *(v5 + 8) = v4;
    *(v5 + 40) = 1500;
    *(v5 + 68) = *(v5 + 68) == 0;
    v7 = gen_load_absoffsetrel(a1, a1 + 82, 2, 16);
    v8 = newchunk(a1, 288);
    *(v8 + 16) = 21;
    *(v8 + 152) = v8;
    *(v8 + 8) = v7;
    *(v8 + 40) = a2;
    gen_and(v6, v8);
    v6 = v8;
  }

LABEL_17:
  v25 = *MEMORY[0x29EDCA608];
  return v6;
}

size_t gen_llc_linktype(int *a1, int a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  if (a2 > 239)
  {
    if (a2 != 240)
    {
      if (a2 == 32923)
      {
        v12[0] = 0x9B8007000803AAAALL;
        result = gen_bcmp(a1, 3, 0, 8u, v12);
        goto LABEL_15;
      }

      if (a2 != 254)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    v6 = a2 | (a2 << 8);
    absoffsetrel = gen_load_absoffsetrel(a1, a1 + 79, 0, 8);
    result = newchunk(a1, 288);
    *(result + 16) = 21;
    *(result + 152) = result;
    *(result + 8) = absoffsetrel;
    *(result + 40) = v6;
    goto LABEL_15;
  }

  if (a2 == 6)
  {
    goto LABEL_9;
  }

  if (a2 == 224)
  {
    v4 = gen_load_absoffsetrel(a1, a1 + 79, 0, 16);
    result = newchunk(a1, 288);
    *(result + 16) = 21;
    *(result + 152) = result;
    *(result + 8) = v4;
    *(result + 40) = 224;
    goto LABEL_15;
  }

LABEL_11:
  if (a2 > 0x5DC)
  {
    v8 = 6;
    v9 = 8;
  }

  else
  {
    v8 = 0;
    v9 = 16;
  }

  v10 = gen_load_absoffsetrel(a1, a1 + 79, v8, v9);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = v10;
  *(result + 40) = a2;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

size_t gen_linux_sll_linktype(int *a1, int a2)
{
  v27[1] = *MEMORY[0x29EDCA608];
  if (a2 <= 253)
  {
    if (a2 == 6)
    {
      goto LABEL_10;
    }

    if (a2 != 224)
    {
      if (a2 != 240)
      {
        goto LABEL_5;
      }

LABEL_10:
      absoffsetrel = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
      v10 = newchunk(a1, 288);
      *(v10 + 16) = 21;
      *(v10 + 152) = v10;
      *(v10 + 8) = absoffsetrel;
      *(v10 + 40) = 4;
      v11 = a2 | (a2 << 8);
      v12 = gen_load_absoffsetrel(a1, a1 + 79, 0, 8);
      v6 = newchunk(a1, 288);
      *(v6 + 16) = 21;
      *(v6 + 152) = v6;
      *(v6 + 8) = v12;
      *(v6 + 40) = v11;
      gen_and(v10, v6);
      goto LABEL_17;
    }

    v18 = gen_load_absoffsetrel(a1, a1 + 79, 0, 16);
    v19 = newchunk(a1, 288);
    *(v19 + 16) = 21;
    *(v19 + 152) = v19;
    *(v19 + 8) = v18;
    *(v19 + 40) = 224;
    v27[0] = 0x378100000003AAAALL;
    v6 = gen_bcmp(a1, 3, 0, 8u, v27);
    gen_or(v19, v6);
    v20 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v21 = newchunk(a1, 288);
    *(v21 + 16) = 21;
    *(v21 + 152) = v21;
    *(v21 + 8) = v20;
    *(v21 + 40) = 4;
    gen_and(v21, v6);
    v22 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v23 = newchunk(a1, 288);
    *(v23 + 16) = 21;
    *(v23 + 152) = v23;
    *(v23 + 8) = v22;
    *(v23 + 40) = 1;
    gen_or(v23, v6);
    v24 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v17 = newchunk(a1, 288);
    *(v17 + 16) = 21;
    *(v17 + 152) = v17;
    *(v17 + 8) = v24;
    *(v17 + 40) = 33079;
LABEL_16:
    gen_or(v17, v6);
    goto LABEL_17;
  }

  if (a2 == 33011 || a2 == 32923)
  {
    v13 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v14 = newchunk(a1, 288);
    *(v14 + 16) = 21;
    *(v14 + 152) = v14;
    *(v14 + 8) = v13;
    *(v14 + 40) = 4;
    if (a2 == 32923)
    {
      v15 = 0x9B8007000803AAAALL;
    }

    else
    {
      v15 = 0xF38000000003AAAALL;
    }

    v27[0] = v15;
    v6 = gen_bcmp(a1, 3, 0, 8u, v27);
    gen_and(v14, v6);
    v16 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
    v17 = newchunk(a1, 288);
    *(v17 + 16) = 21;
    *(v17 + 152) = v17;
    *(v17 + 8) = v16;
    *(v17 + 40) = a2;
    goto LABEL_16;
  }

  if (a2 == 254)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = gen_load_absoffsetrel(a1, a1 + 82, 0, 8);
  v5 = newchunk(a1, 288);
  v6 = v5;
  *(v5 + 16) = 21;
  *(v5 + 152) = v5;
  *(v5 + 8) = v4;
  if (a2 > 0x5DC)
  {
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 40) = 4;
    v7 = gen_load_absoffsetrel(a1, a1 + 70, a1[80], 16);
    v8 = newchunk(a1, 288);
    *(v8 + 16) = 21;
    *(v8 + 152) = v8;
    *(v8 + 8) = v7;
    *(v8 + 40) = a2;
    gen_and(v6, v8);
    v6 = v8;
  }

LABEL_17:
  v25 = *MEMORY[0x29EDCA608];
  return v6;
}
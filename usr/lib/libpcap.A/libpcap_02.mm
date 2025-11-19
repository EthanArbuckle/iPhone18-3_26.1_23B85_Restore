int pcap_offline_filter(const bpf_program *a1, const pcap_pkthdr *a2, const u_char *a3)
{
  bf_insns = a1->bf_insns;
  if (bf_insns)
  {
    LODWORD(bf_insns) = pcap_filter(bf_insns, a3, a2->len, a2->caplen);
  }

  return bf_insns;
}

pcap_t *__cdecl pcap_open_dead_with_tstamp_precision(int a1, int a2, u_int a3)
{
  v6 = malloc_type_malloc(0x498uLL, 0x10F0040B79691D9uLL);
  v7 = v6;
  if (v6)
  {
    if (a3 >= 2)
    {
      a3 = 0;
    }

    bzero(v6 + 8, 0x490uLL);
    *(v7 + 24) = a2;
    *(v7 + 25) = a1;
    *(v7 + 39) = a3;
    *(v7 + 100) = pcap_can_set_rfmon_dead;
    *v7 = pcap_read_dead;
    *(v7 + 101) = pcap_inject_dead;
    *(v7 + 103) = pcap_setfilter_dead;
    *(v7 + 104) = pcap_setdirection_dead;
    *(v7 + 105) = pcap_set_datalink_dead;
    *(v7 + 106) = pcap_getnonblock_dead;
    *(v7 + 107) = pcap_setnonblock_dead;
    *(v7 + 108) = pcap_stats_dead;
    *(v7 + 111) = pcap_cleanup_dead;
    *(v7 + 28) = 1;
  }

  return v7;
}

uint64_t pcap_read_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

uint64_t pcap_inject_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

uint64_t pcap_setfilter_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

uint64_t pcap_setdirection_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

uint64_t pcap_set_datalink_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

uint64_t pcap_getnonblock_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

uint64_t pcap_stats_not_initialized(uint64_t a1)
{
  if (*(a1 + 112))
  {
    strcpy((a1 + 208), "This operation isn't properly handled by that device");
  }

  else
  {
    strcpy((a1 + 208), "This handle hasn't been activated yet");
  }

  return 4294967293;
}

double pcap_ng_block_alloc(unint64_t a1)
{
  if (a1 <= 0x100000)
  {
    v2 = malloc_type_malloc(a1 + 112, 0xD4C8DB95uLL);
    if (v2)
    {
      result = 0.0;
      v2[5] = 0u;
      v2[6] = 0u;
      v2[3] = 0u;
      v2[4] = 0u;
      v2[1] = 0u;
      v2[2] = 0u;
      *v2 = 0u;
      *v2 = v2 + 7;
      *(v2 + 1) = a1;
    }
  }

  return result;
}

uint64_t pcap_ng_block_reset(uint64_t a1, int a2)
{
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v2 = 0xFFFFFFFFLL;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v3 = 0;
        *(a1 + 20) = 4;
      }

      else
      {
        *(a1 + 20) = 5;
        v3 = 12;
      }

      goto LABEL_25;
    }

    switch(a2)
    {
      case 6:
        v6 = 6;
        goto LABEL_22;
      case 10:
        v5 = 10;
        goto LABEL_24;
      case 168627466:
        *(a1 + 20) = 168627466;
        *(a1 + 40) = 16;
        *(a1 + 88) = 0x11A2B3C4DLL;
        v3 = -1;
        v4 = 96;
LABEL_26:
        *(a1 + v4) = v3;
        *(a1 + 80) = 0;
        *(a1 + 48) = 0u;
        *(a1 + 64) = 0u;
        pcapng_update_block_length(a1);
        return 0;
    }
  }

  else
  {
    if (a2 > 0)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          *(a1 + 20) = 3;
LABEL_17:
          v3 = 4;
          goto LABEL_25;
        }

        v6 = 2;
LABEL_22:
        *(a1 + 20) = v6;
        v3 = 20;
        goto LABEL_25;
      }

      v5 = 1;
LABEL_24:
      *(a1 + 20) = v5;
      v3 = 8;
      goto LABEL_25;
    }

    if (a2 == -2147483647)
    {
      *(a1 + 20) = -2147483647;
      goto LABEL_17;
    }

    if (a2 == -2147483646)
    {
      *(a1 + 20) = -2147483646;
      v3 = 16;
LABEL_25:
      v4 = 40;
      goto LABEL_26;
    }
  }

  return v2;
}

void *pcapng_update_block_length(void *result)
{
  v1 = result[5] + result[7] + result[9] + result[10] + 12;
  result[3] = v1;
  v2 = result[1];
  if (v1 > v2)
  {
    errx(70, "%s block len %lu greater than buffer size %lu", "pcapng_update_block_length", v1, v2);
  }

  return result;
}

uint64_t pcap_ng_get_section_header_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 168627466)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_interface_description_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 1)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_enhanced_packet_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 6)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_simple_packet_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 3)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_packet_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 2)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_process_information_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == -2147483647)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_os_event_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == -2147483646)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_get_decryption_secrets_fields(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 10)
    {
      result += 88;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_ng_block_packet_get_data_ptr(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 <= 0xA && ((1 << v1) & 0x44C) != 0 || v1 == -2147483646)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t pcap_ng_block_packet_get_data_len(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 <= 0xA && ((1 << v1) & 0x44C) != 0 || v1 == -2147483646)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t pcap_ng_block_packet_copy_data(uint64_t a1, void *__src, size_t __len)
{
  v3 = *(a1 + 20);
  if ((v3 > 0xA || ((1 << v3) & 0x44C) == 0) && v3 != -2147483646)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = __len;
  v8 = (__len + 3) & 0xFFFFFFFC;
  v9 = *(a1 + 8);
  if (*(a1 + 24) + v8 > v9)
  {
    warnx("%s block len %lu greater than buffer size %lu", "pcap_ng_block_packet_copy_data", *(a1 + 24), v9);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v11 = *(a1 + 72);
    if (*(a1 + 72) != 0)
    {
      if (v3 == 3)
      {
        v12 = 0;
      }

      else if (v3 == 4)
      {
        v12 = (*a1 + *(a1 + 40) + 8);
        if (!*(a1 + 68))
        {
          v12 += *(a1 + 56);
        }
      }

      else
      {
        v13 = *a1 + *(a1 + 40) + 8;
        if (!*(a1 + 68))
        {
          v13 += *(a1 + 56);
        }

        v12 = (v13 + v11);
      }

      memmove(&v12[v8 - *(a1 + 56)], v12, *(a1 + 80) + v11);
    }

    *(a1 + 68) = 0;
    v14 = (*a1 + *(a1 + 40) + 8);
    *(a1 + 48) = v14;
    memmove(v14, __src, v6);
    if (v8 != v6)
    {
      bzero((*(a1 + 48) + v6), v8 - v6);
    }

    *(a1 + 64) = v6;
    *(a1 + 56) = v8;
    pcapng_update_block_length(a1);
    return 0;
  }
}

uint64_t pcap_ng_block_packet_set_data(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 20);
  if ((v3 > 0xA || ((1 << v3) & 0x44C) == 0) && v3 != -2147483646)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 64) = a3;
  *(a1 + 68) = 1;
  *(a1 + 48) = a2;
  *(a1 + 56) = (a3 + 3) & 0xFFFFFFFC;
  pcapng_update_block_length(a1);
  return 0;
}

uint64_t pcap_ng_block_add_option_with_value(uint64_t a1, uint64_t a2, void *__src, size_t __len)
{
  if (*(a1 + 20) == 3)
  {
    warnx("%s options not supported for block type %u", a2, __src, __len);
    return 0xFFFFFFFFLL;
  }

  v4 = __len;
  v6 = (__len + 3) & 0x1FFFC;
  v7 = (v6 + 4);
  v8 = *a1 + *(a1 + 40) + 8;
  if (!*(a1 + 68))
  {
    v8 += *(a1 + 56);
  }

  if ((*(a1 + 24) + v7) > *(a1 + 8))
  {
    v16 = *(a1 + 24);
    warnx("%s block len %lu greater than buffer size %lu", a2, __src, __len);
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 80);
  v10 = (v8 + *(a1 + 72));
  v11 = (v10 + v9 - 4);
  if (!v9)
  {
    v11 = v10;
  }

  *v11 = a2;
  v11[1] = __len;
  v12 = v11 + 2;
  memmove(v11 + 2, __src, __len);
  if (v6 != v4)
  {
    bzero(v12 + v4, v6 - v4);
  }

  v13 = *(a1 + 80);
  if (!v13)
  {
    v13 = 4;
  }

  v14 = v13 + v7;
  *(a1 + 80) = v14;
  *(v10 + v14 - 4) = 0;
  pcapng_update_block_length(a1);
  return 0;
}

uint64_t pcap_ng_block_add_option_with_string(uint64_t a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);

  return pcap_ng_block_add_option_with_value(a1, a2, __s, v6);
}

uint64_t pcap_ng_block_get_option(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v18 = 0;
  v7 = *(a1 + 32);
  LODWORD(v18) = *(a1 + 20);
  if (v18 != 3)
  {
    v8 = *a1 + *(a1 + 40) + 8;
    if (!*(a1 + 68))
    {
      v8 += *(a1 + 56);
    }

    v6 = v8 + *(a1 + 72);
  }

  v17[0] = v6;
  v17[1] = v3;
  while (1)
  {
    result = get_from_block_data(v17, 4uLL, pcap_ng_block_get_option_errbuf);
    if (!result)
    {
      break;
    }

    v10 = bswap32(*result) >> 16;
    v11 = __rev16(HIWORD(*result));
    if (v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = HIWORD(*result);
    }

    if (v7)
    {
      v13 = v10;
    }

    else
    {
      v13 = *result;
    }

    v14 = get_from_block_data(v17, (v12 + 3) & 0x1FFFC, pcap_ng_block_get_option_errbuf);
    if (v12)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      return 0;
    }

    if (a2 == v13)
    {
      v16 = v14;
      *a3 = a2;
      *(a3 + 2) = v12;
      result = 1;
      *(a3 + 8) = v16;
      return result;
    }

    if (!v13)
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcapng_block_iterate_options(uint64_t a1, void (*a2)(uint64_t, void *, uint64_t), uint64_t a3)
{
  i = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v7 = 0;
    v22 = 0;
    v8 = *(a1 + 32);
    LODWORD(v22) = *(a1 + 20);
    if (v22 != 3)
    {
      v9 = *a1 + *(a1 + 40) + 8;
      if (!*(a1 + 68))
      {
        v9 += *(a1 + 56);
      }

      v7 = v9 + *(a1 + 72);
    }

    v10 = *(a1 + 80);
    v21[0] = v7;
    v21[1] = v10;
    v11 = get_from_block_data(v21, 4uLL, pcapng_block_iterate_options_errbuf);
    for (i = 0; v11; i = (i + 1))
    {
      v12 = *v11;
      v13 = __rev16(HIWORD(*v11));
      v14 = v8 ? v13 : HIWORD(*v11);
      v15 = get_from_block_data(v21, (v14 + 3) & 0x1FFFC, pcapng_block_iterate_options_errbuf);
      v20[0] = 0;
      if (v14 && v15 == 0)
      {
        break;
      }

      v17 = bswap32(v12) >> 16;
      if (!v8)
      {
        LOWORD(v17) = v12;
      }

      LOWORD(v20[0]) = v17;
      v18 = v17;
      WORD1(v20[0]) = v14;
      v20[1] = v15;
      a2(a1, v20, a3);
      if (!v18)
      {
        return (i + 1);
      }

      v11 = get_from_block_data(v21, 4uLL, pcapng_block_iterate_options_errbuf);
    }
  }

  return i;
}

uint64_t pcapng_block_iterate_name_records(uint64_t a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v3 = 0;
    v17 = 0;
    v4 = *(a1 + 32);
    LODWORD(v17) = *(a1 + 20);
    if (v17 == 4)
    {
      v3 = *a1 + *(a1 + 40) + 8;
      if (!*(a1 + 68))
      {
        v3 += *(a1 + 56);
      }
    }

    v2 = 0;
    v5 = *(a1 + 72);
    v16[0] = v3;
    v16[1] = v5;
    do
    {
      v6 = get_from_block_data(v16, 4uLL, pcapng_block_iterate_name_records_errbuf);
      if (!v6)
      {
        break;
      }

      v7 = bswap32(*v6) >> 16;
      v8 = __rev16(HIWORD(*v6));
      v9 = v4 ? v8 : HIWORD(*v6);
      v10 = v4 ? v7 : *v6;
      v11 = get_from_block_data(v16, (v9 + 3) & 0x1FFFC, pcapng_block_iterate_name_records_errbuf);
      v12 = v9 && v11 == 0;
      v13 = !v12;
      v2 = v12 ? v2 : (v2 + 1);
    }

    while (v13 && v10 != 0);
  }

  return v2;
}

uint64_t pcap_ng_block_add_name_record_with_ip4(uint64_t a1, void *__src, const char **a3)
{
  if (*(a1 + 20) == 4)
  {
    return pcap_ng_block_add_name_record_common(a1, 4uLL, __src, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pcap_ng_block_add_name_record_common(uint64_t a1, size_t __len, void *__src, const char **a4)
{
  if (*(a1 + 20) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 68);
  v9 = *a1 + *(a1 + 40) + 8;
  v10 = v9;
  if (!v8)
  {
    v10 = (v9 + *(a1 + 56));
  }

  v11 = *a4;
  if (*a4)
  {
    v12 = 0;
    v13 = a4 + 1;
    do
    {
      if (!*v11)
      {
        break;
      }

      v12 += strlen(v11) + 1;
      v14 = *v13++;
      v11 = v14;
    }

    while (v14);
  }

  else
  {
    v12 = 0;
  }

  v16 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = __len + v16 + 4;
  v18 = *(a1 + 8);
  if (*(a1 + 24) + v17 > v18)
  {
    warnx("%s block len %lu greater than buffer size %lu", "pcap_ng_block_add_name_record_common", *(a1 + 24), v18);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v19 = *(a1 + 80);
    if (v19)
    {
      if (!v8)
      {
        v9 += *(a1 + 56);
      }

      memmove((v9 + *(a1 + 72) + v17), (v9 + *(a1 + 72)), v19);
    }

    v20 = *(a1 + 72);
    if (v20)
    {
      v21 = (v10 + v20 - 4);
    }

    else
    {
      v21 = v10;
    }

    *v21 = 1;
    v21[1] = v16 + __len;
    v22 = (v21 + 2);
    memmove(v21 + 2, __src, __len);
    v23 = *a4;
    if (*a4)
    {
      v24 = a4 + 1;
      do
      {
        if (!*v23)
        {
          break;
        }

        v25 = strlen(v23) + 1;
        memmove(v22, v23, v25);
        __len += v25;
        v26 = *v24++;
        v23 = v26;
      }

      while (v26);
    }

    if (v16 != v12)
    {
      bzero(&v22[__len], v16 - v12);
    }

    *(a1 + 72) += v17;
    pcapng_update_block_length(a1);
    return 0;
  }
}

uint64_t pcap_ng_block_add_name_record_with_ip6(uint64_t a1, void *__src, const char **a3)
{
  if (*(a1 + 20) == 4)
  {
    return pcap_ng_block_add_name_record_common(a1, 0x10uLL, __src, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t *pcap_ng_externalize_block(unint64_t *result, unint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v4 = *(a3 + 24);
  if (v4 > a2)
  {
    return 0;
  }

  v5 = result;
  result = 0;
  __src = 0;
  *v5 = *(a3 + 20) | (v4 << 32);
  v6 = *(a3 + 20);
  if (v6 > 3)
  {
    if ((v6 - 4) >= 2)
    {
      if (v6 != 6)
      {
        if (v6 != 168627466)
        {
          return result;
        }

        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v6 <= 0)
    {
      if (v6 != -2147483647)
      {
        if (v6 != -2147483646)
        {
          return result;
        }

        if (!*(a3 + 100))
        {
          *(a3 + 100) = *(a3 + 64);
        }
      }

      goto LABEL_22;
    }

    if (v6 != 1)
    {
      if (v6 != 2)
      {
        if (!*(a3 + 88))
        {
          *(a3 + 88) = *(a3 + 64);
        }

        goto LABEL_22;
      }

LABEL_18:
      if (!*(a3 + 100))
      {
        *(a3 + 100) = *(a3 + 64);
      }

      if (!*(a3 + 104))
      {
        *(a3 + 104) = *(a3 + 64);
      }
    }
  }

LABEL_22:
  v7 = *(a3 + 40);
  if (v7)
  {
    memmove(v5 + 1, (a3 + 88), v7);
    v8 = *(a3 + 40) + 8;
  }

  else
  {
    v8 = 8;
  }

  if (*(a3 + 56))
  {
    v9 = *(a3 + 64);
    memmove(v5 + v8, *(a3 + 48), v9);
    v8 += *(a3 + 64);
    v10 = ((v9 + 3) & 0xFFFFFFFC) - v9;
    if (v10)
    {
      bzero(v5 + v8, v10);
      v8 += v10;
    }
  }

  v11 = *(a3 + 72);
  if (v11)
  {
    if (*(a3 + 20) == 4)
    {
      v12 = (*a3 + *(a3 + 40) + 8);
      if (!*(a3 + 68))
      {
        v12 += *(a3 + 56);
      }
    }

    else
    {
      v12 = 0;
    }

    memmove(v5 + v8, v12, v11);
    v13 = *(a3 + 72);
    v8 += v13;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a3 + 80);
  if (v14)
  {
    if (*(a3 + 20) == 3)
    {
      v15 = 0;
    }

    else
    {
      v16 = *a3 + *(a3 + 40) + 8;
      if (!*(a3 + 68))
      {
        v16 += *(a3 + 56);
      }

      v15 = (v16 + v13);
    }

    memmove(v5 + v8, v15, v14);
    v8 += *(a3 + 80);
  }

  __src = *(a3 + 24);
  memmove(v5 + v8, &__src, v8);
  return (v8 + 4);
}

ssize_t pcap_ng_dump_block(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v26 = 0;
  v25 = 0;
  v4 = *a2;
  v5 = *(a2 + 20);
  v6 = *(a2 + 24);
  *v4 = v5;
  v4[1] = v6;
  if (v5 <= 0xA)
  {
    if (((1 << v5) & 0x432) != 0)
    {
      goto LABEL_14;
    }

    if (v5 == 2 || v5 == 6)
    {
      if (!*(a2 + 100))
      {
        *(a2 + 100) = *(a2 + 64);
      }

      if (!*(a2 + 104))
      {
        *(a2 + 104) = *(a2 + 64);
      }

      goto LABEL_14;
    }
  }

  if (v5 + 0x7FFFFFFF >= 2 && v5 != 168627466)
  {
    result = 0;
    goto LABEL_34;
  }

LABEL_14:
  v8 = *(a2 + 40);
  if (v8)
  {
    memmove(v4 + 2, (a2 + 88), v8);
    v9 = *a2;
    v10 = *(a2 + 40);
  }

  else
  {
    v10 = 0;
    v9 = v4;
  }

  v11 = v10 + 8;
  v12 = v9 + v10 + 8;
  v13 = *(a2 + 56);
  if (*(a2 + 68))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 56);
  }

  v15 = &v12[v14];
  v17 = *(a2 + 72);
  v16 = *(a2 + 80);
  v18 = &v15[v17 + v16];
  *v18 = v4[1];
  v27.iov_base = v9;
  v27.iov_len = v11;
  if (v13)
  {
    v19 = *(a2 + 64);
    v28 = *(a2 + 48);
    v29 = v19;
    v20 = ((v19 + 3) & 0xFFFFFFFC) - v19;
    if (v20)
    {
      v30 = &v25;
      v31 = v20;
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = &v27 + v21;
  v22->iov_len = v17 + v16 + 4;
  if (v17)
  {
    if (*(a2 + 20) == 4)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v16)
  {
    if (*(a2 + 20) == 3)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }
  }

  v22->iov_base = v18;
  result = writev(*(*a1 + 18), &v27, v21 + 1);
LABEL_34:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcap_ng_block_internalize_common(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v6 = *(a2 + 56);
  }

  else
  {
    v6 = 0;
  }

  v8 = bswap32(*a3);
  v9 = bswap32(a3[1]);
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = a3[1];
  }

  if (v6)
  {
    v11 = v8;
  }

  else
  {
    v11 = *a3;
  }

  if ((v11 > 0xA || ((1 << v11) & 0x47E) == 0) && (v11 + 0x7FFFFFFF) >= 2)
  {
    if (v11 != 168627466)
    {
      snprintf((a2 + 208), 0x100uLL, "%s: Unknown block type length %u");
      return 0xFFFFFFFFLL;
    }

    pcap_ng_init_section_info(a2);
  }

  if (v10 > 0x100000)
  {
    snprintf((a2 + 208), 0x100uLL, "%s: Block total length %u is greater than 16 MB");
    return 0xFFFFFFFFLL;
  }

  v72 = 0;
  v14 = (v10 + 3) & 0x3FFFFC;
  v15 = *a1;
  if (!*a1)
  {
    if (v14 > 0x100000 || (v22 = malloc_type_malloc(v14 + 112, 0xD4C8DB95uLL)) == 0)
    {
      snprintf((a2 + 208), 0x100uLL, "%s: Unknown block type %u");
      return 0xFFFFFFFFLL;
    }

    v15 = v22;
    v22[5] = 0u;
    v22[6] = 0u;
    v22[3] = 0u;
    v22[4] = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
    *v22 = v22 + 7;
    *(v22 + 1) = v14;
  }

  *v15 = a3;
  *(v15 + 8) = v14;
  *(v15 + 16) = 1;
  pcap_ng_block_reset(v15, v11);
  *(v15 + 24) = v14;
  *(v15 + 32) = v6;
  v71[0] = (a3 + 2);
  v71[1] = v14 - 12;
  LODWORD(v72) = v11;
  if (v11 <= 3)
  {
    if (v11 > 0)
    {
      if (v11 == 1)
      {
        if (*(v15 + 20) == 1)
        {
          v46 = v15 + 88;
        }

        else
        {
          v46 = 0;
        }

        v47 = get_from_block_data(v71, 8uLL, (a2 + 208));
        if (v47)
        {
          v48 = *v47;
          *v46 = v48;
          v49 = v47[1];
          *(v46 + 2) = v49;
          v50 = *(v47 + 1);
          *(v46 + 4) = v50;
          if (v6)
          {
            *v46 = __rev16(v48);
            *(v46 + 2) = __rev16(v49);
            *(v46 + 4) = bswap32(v50);
          }

          goto LABEL_114;
        }

        goto LABEL_121;
      }

      if (v11 != 2)
      {
        v16 = *(v15 + 20);
        v17 = get_from_block_data(v71, 4uLL, (a2 + 208));
        if (v17)
        {
          v18 = (v15 + 88);
          if (v16 != 3)
          {
            v18 = 0;
          }

          v19 = *v17;
          v20 = bswap32(*v17);
          if (v6)
          {
            v19 = v20;
          }

          *v18 = v19;
          if (v14 - 16 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v14 - 16;
          }

LABEL_112:
          v65 = get_from_block_data(v71, (v21 + 3) & 0xFFFFFFFC, (a2 + 208));
          if (v65)
          {
            *(v15 + 64) = v21;
            *(v15 + 68) = 0;
            *(v15 + 48) = v65;
            *(v15 + 56) = (v21 + 3) & 0xFFFFFFFC;
            goto LABEL_114;
          }
        }

LABEL_121:
        if (!*a1)
        {
          free(v15);
        }

        return 0xFFFFFFFFLL;
      }

      if (*(v15 + 20) == 2)
      {
        v51 = v15 + 88;
      }

      else
      {
        v51 = 0;
      }

      v56 = get_from_block_data(v71, 0x14uLL, (a2 + 208));
      if (!v56)
      {
        goto LABEL_121;
      }

      v57 = *v56;
      *v51 = v57;
      v58 = v56[1];
      *(v51 + 2) = v58;
      v59 = *(v56 + 2);
      *(v51 + 4) = v59;
      if (v6)
      {
        *v51 = __rev16(v57);
        *(v51 + 2) = __rev16(v58);
        v59 = vrev32q_s8(v59);
        *(v51 + 4) = v59;
      }

      v55 = v59.i32[2];
LABEL_100:
      v60 = get_from_block_data(v71, (v55 + 3) & 0xFFFFFFFC, (a2 + 208));
      if (v60)
      {
        v61 = *(v51 + 12);
        *(v15 + 64) = v61;
        *(v15 + 68) = 0;
        *(v15 + 48) = v60;
        *(v15 + 56) = (v61 + 3) & 0xFFFFFFFC;
        goto LABEL_114;
      }

      goto LABEL_121;
    }

    if (v11 == -2147483647)
    {
      if (*(v15 + 20) == -2147483647)
      {
        v43 = (v15 + 88);
      }

      else
      {
        v43 = 0;
      }

      v44 = get_from_block_data(v71, 4uLL, (a2 + 208));
      if (v44)
      {
        v45 = *v44;
        *v43 = *v44;
        if (v6)
        {
          *v43 = bswap32(v45) >> 16;
        }

        goto LABEL_114;
      }

      goto LABEL_121;
    }

    if (v11 != -2147483646)
    {
      goto LABEL_121;
    }

    v29 = *(v15 + 20) == -2147483646 ? (v15 + 88) : 0;
    v30 = get_from_block_data(v71, 0x10uLL, (a2 + 208));
    if (!v30)
    {
      goto LABEL_121;
    }

    v31 = *v30;
    *v29 = *v30;
    if (v6)
    {
      v31 = vrev32q_s8(v31);
      *v29 = v31;
    }

    v32 = v31.u32[3];
    v33 = v14 - 28;
    goto LABEL_109;
  }

  if (v11 > 5)
  {
    if (v11 == 6)
    {
      if (*(v15 + 20) == 6)
      {
        v51 = v15 + 88;
      }

      else
      {
        v51 = 0;
      }

      v52 = get_from_block_data(v71, 0x14uLL, (a2 + 208));
      if (!v52)
      {
        goto LABEL_121;
      }

      v53 = *v52;
      *v51 = *v52;
      v54 = *(v52 + 16);
      *(v51 + 16) = v54;
      if (v6)
      {
        v53 = vrev32q_s8(v53);
        *v51 = v53;
        *(v51 + 16) = bswap32(v54);
      }

      v55 = v53.i32[3];
      goto LABEL_100;
    }

    if (v11 != 10)
    {
      if (v11 == 168627466)
      {
        v23 = *(v15 + 20) == 168627466 ? v15 + 88 : 0;
        v24 = get_from_block_data(v71, 0x10uLL, (a2 + 208));
        if (v24)
        {
          v25 = *v24;
          *v23 = *v24;
          v26 = *(v24 + 4);
          *(v23 + 4) = v26;
          v27 = *(v24 + 6);
          *(v23 + 6) = v27;
          v28 = *(v24 + 8);
          *(v23 + 8) = v28;
          if (v6)
          {
            *v23 = bswap32(v25);
            *(v23 + 4) = __rev16(v26);
            *(v23 + 6) = __rev16(v27);
            *(v23 + 8) = bswap64(v28);
          }

          goto LABEL_114;
        }
      }

      goto LABEL_121;
    }

    if (*(v15 + 20) == 10)
    {
      v62 = (v15 + 88);
    }

    else
    {
      v62 = 0;
    }

    v63 = get_from_block_data(v71, 8uLL, (a2 + 208));
    if (!v63)
    {
      goto LABEL_121;
    }

    v64 = *v63;
    v32 = v63[1];
    *v62 = *v63;
    v62[1] = v32;
    if (v6)
    {
      v32 = bswap32(v32);
      *v62 = bswap32(v64);
      v62[1] = v32;
    }

    v33 = v14 - 20;
LABEL_109:
    if (v33 >= v32)
    {
      v21 = v32;
    }

    else
    {
      v21 = v33;
    }

    goto LABEL_112;
  }

  if (v11 == 4)
  {
    while (1)
    {
      v38 = get_from_block_data(v71, 4uLL, (a2 + 208));
      if (!v38)
      {
        goto LABEL_121;
      }

      v39 = v38;
      v40 = *(v38 + 2);
      v41 = bswap32(v40) >> 16;
      if (v6)
      {
        LOWORD(v40) = v41;
      }

      v42 = (v40 + 3) & 0x1FFFC;
      if (!get_from_block_data(v71, v42, (a2 + 208)))
      {
        goto LABEL_121;
      }

      *(v15 + 72) += v42 + 4;
      if (!*v39)
      {
        goto LABEL_114;
      }
    }
  }

  if (*(v15 + 20) == 5)
  {
    v34 = v15 + 88;
  }

  else
  {
    v34 = 0;
  }

  v35 = get_from_block_data(v71, 0xCuLL, (a2 + 208));
  if (!v35)
  {
    goto LABEL_121;
  }

  v36 = *v35;
  *v34 = v36;
  v37 = *(v35 + 2);
  *(v34 + 4) = v37;
  if (v6)
  {
    *v34 = __rev16(v36);
    *(v34 + 4) = vrev32_s8(v37);
  }

  do
  {
LABEL_114:
    v66 = get_from_block_data(v71, 4uLL, (a2 + 208));
    if (!v66)
    {
      break;
    }

    v67 = v66;
    v68 = *(v66 + 2);
    v69 = bswap32(v68) >> 16;
    if (v6)
    {
      LOWORD(v68) = v69;
    }

    v70 = (v68 + 3) & 0x1FFFC;
    if (!get_from_block_data(v71, v70, (a2 + 208)))
    {
      goto LABEL_121;
    }

    *(v15 + 80) += v70 + 4;
  }

  while (*v67);
  result = 0;
  if (!*a1)
  {
    *a1 = v15;
  }

  return result;
}

uint64_t pcap_ng_block_alloc_with_raw_block(uint64_t a1, unsigned int *a2)
{
  v3 = 0;
  if (pcap_ng_block_internalize_common(&v3, a1, a2))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sf_cleanup(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != *MEMORY[0x29EDCA618])
  {
    fclose(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
  }

  pcap_freecode((a1 + 192));
}

uint64_t pcap_adjust_snapshot(int a1, uint64_t a2)
{
  if (a2 <= 0)
  {
    return max_snaplen_for_dlt(a1);
  }

  else
  {
    return a2;
  }
}

uint64_t pcap_fopen_offline_internal(FILE *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    v12 = 0;
    strcpy(a3, "Null FILE * pointer provided to savefile open routine");
    return v12;
  }

  v22 = 0;
  v8 = ftello(a1);
  v9 = fread(&__ptr, 1uLL, 4uLL, a1);
  if (v9 != 4)
  {
    v15 = v9;
    if (ferror(a1))
    {
      v16 = __error();
      pcap_fmt_errmsg_for_errno(a3, 0x100uLL, *v16, "error reading dump file");
    }

    else
    {
      snprintf(a3, 0x100uLL, "truncated dump file; tried to read %zu file header bytes, only got %zu", 4uLL, v15);
    }

LABEL_18:
    fseeko(a1, v8, 0);
    return 0;
  }

  if (!a4)
  {
    v17 = 0;
    v18 = 1;
    while (1)
    {
      v19 = v18;
      v10 = (*(&check_headers + v17))(&__ptr, a1, a2, a3, &v22, 0);
      v11 = pcap_offline_read;
      if (v10)
      {
        goto LABEL_5;
      }

      if (v22)
      {
        goto LABEL_18;
      }

      v18 = 0;
      v17 = 1;
      if ((v19 & 1) == 0)
      {
        *(a3 + 16) = 7627117;
        v20 = "unknown file format";
        goto LABEL_17;
      }
    }
  }

  v10 = pcap_ng_check_header(&__ptr, a1, a2, a3, &v22, 1);
  v11 = pcap_ng_offline_read;
  if (!v10)
  {
    if (!v22)
    {
      *(a3 + 15) = 6646889;
      v20 = "not a pcap-ng file";
LABEL_17:
      *a3 = *v20;
    }

    goto LABEL_18;
  }

LABEL_5:
  v12 = v10;
  v13 = v11;
  *(v10 + 64) = a1;
  *(v10 + 72) = 0;
  v14 = fileno(a1);
  *(v12 + 172) = 0;
  *(v12 + 176) = v14;
  *v12 = v13;
  *(v12 + 808) = sf_inject;
  *(v12 + 824) = install_bpf_program;
  *(v12 + 832) = sf_setdirection;
  *(v12 + 840) = 0;
  *(v12 + 848) = sf_getnonblock;
  *(v12 + 856) = sf_setnonblock;
  *(v12 + 864) = sf_stats;
  *(v12 + 880) = pcap_oneshot;
  *(v12 + 872) = pcap_breakloop_common;
  *(v12 + 112) = 1;
  return v12;
}

uint64_t pcap_ng_open_offline(uint64_t __filename, char *a2)
{
  if (!__filename)
  {
    strcpy(a2, "A null pointer was supplied as the file name");
    return __filename;
  }

  v3 = __filename;
  if (*__filename == 45 && !*(__filename + 1))
  {
    v4 = *MEMORY[0x29EDCA618];
  }

  else
  {
    v4 = fopen(__filename, "r");
    if (!v4)
    {
      v5 = __error();
      v6 = pcap_strerror(*v5);
      snprintf(a2, 0x100uLL, "%s: %s", v3, v6);
      return 0;
    }
  }

  __filename = pcap_fopen_offline_internal(v4, 0, a2, 1);
  if (!__filename && v4 != *MEMORY[0x29EDCA618])
  {
    fclose(v4);
    return 0;
  }

  return __filename;
}

uint64_t pcap_offline_read(uint64_t a1, int a2, void (*a3)(uint64_t, __int128 *, uint64_t), uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 44))
  {
    v5 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    do
    {
      v9 = (*(a1 + 8))(a1, &v14, &v13);
      if (v9)
      {
        if (v9 == 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = v9;
        }

        goto LABEL_15;
      }

      ++*(a1 + 912);
      v10 = *(a1 + 200);
      if (!v10 || pcap_filter(v10, v13, DWORD1(v15), v15))
      {
        a3(a4, &v14, v13);
        v5 = (v5 + 1);
        if (a2 >= 1 && v5 >= a2)
        {
          goto LABEL_15;
        }
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
    }

    while (!*(a1 + 44));
    if (v5)
    {
      goto LABEL_15;
    }
  }

  *(a1 + 44) = 0;
  v5 = 4294967294;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t pcap_ng_offline_read(uint64_t a1, int a2, void (*a3)(uint64_t, __int128 *, void), uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 44))
  {
    v5 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    do
    {
      v9 = (*(a1 + 8))(a1, &v14, &v13);
      if (v9)
      {
        if (v9 == 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = v9;
        }

        goto LABEL_18;
      }

      if (*(a1 + 200))
      {
        v10 = v13 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10 || bpf_filter())
      {
        a3(a4, &v14, *(a1 + 24));
        v5 = (v5 + 1);
        if (a2 >= 1 && v5 >= a2)
        {
          goto LABEL_18;
        }
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
    }

    while (!*(a1 + 44));
    if (v5)
    {
      goto LABEL_18;
    }
  }

  *(a1 + 44) = 0;
  v5 = 4294967294;
LABEL_18:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

_DWORD *pcap_check_header(unsigned int *a1, FILE *__stream, int a3, char *a4, _DWORD *a5)
{
  v9 = 0;
  *a5 = 0;
  v10 = *a1;
  if (*a1 <= -725372256)
  {
    if (v10 != -1582154675 && v10 != -1582119980 && v10 != -1582117580)
    {
      return v9;
    }

    v13 = 0;
    v14 = *a1;
LABEL_20:
    memset(v29, 0, sizeof(v29));
    if (fread(v29, 1uLL, 0x14uLL, __stream) != 20)
    {
      if (ferror(__stream))
      {
        v18 = __error();
        pcap_fmt_errmsg_for_errno(a4, 0x100uLL, *v18, "error reading dump file");
      }

      else
      {
        snprintf(a4, 0x100uLL, "truncated dump file; tried to read %zu file header bytes, only got %zu");
      }

      goto LABEL_66;
    }

    if (v10 != -1582154675 && v10 != -1582119980 && v10 != -1582117580)
    {
      LOWORD(v29[0]) = bswap32(LOWORD(v29[0])) >> 16;
      HIWORD(v29[0]) = bswap32(HIWORD(v29[0])) >> 16;
      *&v29[3] = vrev32_s8(*&v29[3]);
    }

    v17 = LOWORD(v29[0]);
    if (LOWORD(v29[0]) <= 1u)
    {
      v9 = 0;
      strcpy(a4, "archaic pcap savefile format");
LABEL_67:
      *a5 = 1;
      return v9;
    }

    v19 = HIWORD(v29[0]);
    if ((LOWORD(v29[0]) != 2 || HIWORD(v29[0]) >= 5u) && (LOWORD(v29[0]) != 543 || HIWORD(v29[0])))
    {
      snprintf(a4, 0x100uLL, "unsupported pcap savefile version %u.%u");
LABEL_66:
      v9 = 0;
      goto LABEL_67;
    }

    v20 = pcap_open_offline_common(a4, 0x4A8uLL, 1176);
    v9 = v20;
    if (!v20)
    {
      goto LABEL_67;
    }

    v20[14] = v13;
    v20[22] = v17;
    v20[23] = v19;
    v21 = v29[4];
    v22 = linktype_to_dlt(v29[4] & 0x3FFFFFF);
    v9[25] = v22;
    v9[26] = v21 & 0xFC000000;
    LODWORD(v23) = pcap_adjust_snapshot(v22, v29[3]);
    v9[24] = v23;
    *(v9 + 1) = pcap_next_packet;
    v24 = *(v9 + 6);
    v9[39] = a3;
    if (a3 == 1)
    {
      if (v14 != -1582154675)
      {
        v25 = 1;
        goto LABEL_44;
      }
    }

    else
    {
      if (a3)
      {
        snprintf(a4, 0x100uLL, "unknown time stamp resolution %u", a3);
LABEL_65:
        free(v9);
        goto LABEL_66;
      }

      if (v14 == -1582154675)
      {
        v25 = 2;
LABEL_44:
        *(v24 + 12) = v25;
        goto LABEL_45;
      }
    }

    *(v24 + 12) = 0;
LABEL_45:
    if (v17 == 543 || v19 <= 2)
    {
      v26 = 1;
    }

    else
    {
      if (v19 != 3)
      {
        *(v24 + 8) = 0;
        goto LABEL_52;
      }

      v26 = 2;
    }

    *(v24 + 8) = v26;
LABEL_52:
    if (v14 == -1582117580)
    {
      *v24 = 24;
      if (v9[25] == 1)
      {
        if (v23 > 2147483633)
        {
          LODWORD(v23) = 0x7FFFFFFF;
        }

        else
        {
          LODWORD(v23) = v23 + 14;
        }

        v9[24] = v23;
      }
    }

    else
    {
      *v24 = 16;
    }

    if (v23 >= 0x800)
    {
      v23 = 2048;
    }

    else
    {
      v23 = v23;
    }

    v9[5] = v23;
    v27 = malloc_type_malloc(v23, 0x617E0DDBuLL);
    *(v9 + 3) = v27;
    if (v27)
    {
      *(v9 + 120) = 0;
      v9[242] = 0;
      *(v9 + 61) = 0u;
      *(v9 + 125) = 0;
      *(v9 + 127) = 0;
      *(v9 + 126) = 0;
      *(v9 + 1024) = 0;
      *(v9 + 111) = sf_cleanup;
      return v9;
    }

    strcpy(a4, "out of memory");
    goto LABEL_65;
  }

  if (v10 == -725372255 || v10 == 1295823521 || v10 == 885895841)
  {
    v14 = bswap32(v10);
    v13 = 1;
    goto LABEL_20;
  }

  return v9;
}

uint64_t pcap_next_packet()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v41 = *MEMORY[0x29EDCA608];
  v6 = *(v0 + 48);
  __ptr = 0;
  v38 = 0;
  v39 = 0;
  v7 = *(v0 + 64);
  v8 = fread(&__ptr, 1uLL, *v6, v7);
  if (v8 == *v6)
  {
    *(v4 + 24) = 0u;
    *(v4 + 248) = 0u;
    *(v4 + 264) = 0u;
    *(v4 + 216) = 0u;
    *(v4 + 232) = 0u;
    *(v4 + 184) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 168) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 40) = 0u;
    v9 = v38;
    if (*(v5 + 56))
    {
      v9 = bswap32(v38);
      v10 = bswap32(HIDWORD(v38));
      v11 = bswap32(__ptr);
      v12 = bswap32(HIDWORD(__ptr));
    }

    else
    {
      v10 = HIDWORD(v38);
      v12 = HIDWORD(__ptr);
      v11 = __ptr;
    }

    *(v4 + 16) = v9;
    *(v4 + 20) = v10;
    *v4 = v11;
    *(v4 + 8) = v12;
    v15 = *(v6 + 12);
    if (v15 == 2)
    {
      v16 = v12 / 1000;
    }

    else
    {
      if (v15 != 1)
      {
LABEL_14:
        v17 = *(v6 + 8);
        if (v17 == 1 || v17 == 2 && v9 > v10)
        {
          *(v4 + 16) = v10;
          *(v4 + 20) = v9;
        }

        else
        {
          v10 = v9;
        }

        v18 = max_snaplen_for_dlt(*(v5 + 100));
        v19 = *(v4 + 16);
        LODWORD(v20) = *(v5 + 96);
        if (v10 > v18)
        {
          if (v19 <= v20)
          {
            max_snaplen_for_dlt(*(v5 + 100));
            snprintf((v5 + 208), 0x100uLL, "invalid packet capture length %u, bigger than maximum of %u");
          }

          else
          {
            v36 = *(v4 + 16);
            snprintf((v5 + 208), 0x100uLL, "invalid packet capture length %u, bigger than snaplen of %d");
          }

          goto LABEL_50;
        }

        if (v19 > v20)
        {
          v21 = *(v5 + 24);
          if (v19 <= *(v5 + 20))
          {
            goto LABEL_26;
          }

          v21 = malloc_type_realloc(v21, *(v5 + 96), 0x9A6D4462uLL);
          if (v21)
          {
            *(v5 + 24) = v21;
            *(v5 + 20) = v20;
            LODWORD(v20) = *(v5 + 96);
LABEL_26:
            v22 = fread(v21, 1uLL, v20, v7);
            v23 = *(v5 + 96);
            if (v22 == v23)
            {
              v24 = *(v4 + 16);
              v25 = (v24 - v23);
              if (v24 != v23)
              {
                while (1)
                {
                  v26 = v25 >= 0x1000 ? 4096 : v25;
                  v27 = fread(v40, 1uLL, v26, v7);
                  v22 += v27;
                  if (v27 != v26)
                  {
                    break;
                  }

                  v25 -= v26;
                  if (!v25)
                  {
                    LODWORD(v23) = *(v5 + 96);
                    goto LABEL_34;
                  }
                }

                if (!ferror(v7))
                {
                  v35 = *(v4 + 16);
                  goto LABEL_49;
                }

                goto LABEL_5;
              }

LABEL_34:
              *(v4 + 16) = v23;
              goto LABEL_45;
            }

            goto LABEL_48;
          }

LABEL_52:
          strcpy((v5 + 208), "out of memory");
          goto LABEL_50;
        }

        if (v19 <= *(v5 + 20))
        {
          v31 = *(v5 + 24);
        }

        else
        {
          v28 = (v19 - 1) | ((v19 - 1) >> 1) | (((v19 - 1) | ((v19 - 1) >> 1)) >> 2);
          v29 = v28 | (v28 >> 4) | ((v28 | (v28 >> 4)) >> 8);
          v30 = v29 | HIWORD(v29);
          if (v30 + 1 < v20)
          {
            v20 = (v30 + 1);
          }

          else
          {
            v20 = v20;
          }

          v31 = malloc_type_realloc(*(v5 + 24), v20, 0x9A6D4462uLL);
          if (!v31)
          {
            goto LABEL_52;
          }

          *(v5 + 24) = v31;
          *(v5 + 20) = v20;
          v19 = *(v4 + 16);
        }

        if (fread(v31, 1uLL, v19, v7) == *(v4 + 16))
        {
LABEL_45:
          v33 = *(v5 + 24);
          *v2 = v33;
          if (*(v5 + 56))
          {
            swap_pseudo_headers(*(v5 + 100), v4, v33);
          }

          result = 0;
          goto LABEL_51;
        }

LABEL_48:
        if (!ferror(v7))
        {
LABEL_49:
          snprintf((v5 + 208), 0x100uLL, "truncated dump file; tried to read %u captured bytes, only got %zu");
          goto LABEL_50;
        }

        goto LABEL_5;
      }

      v16 = 1000 * v12;
    }

    *(v4 + 8) = v16;
    goto LABEL_14;
  }

  v13 = v8;
  if (ferror(v7))
  {
LABEL_5:
    v14 = __error();
    pcap_fmt_errmsg_for_errno((v5 + 208), 0x100uLL, *v14, "error reading dump file");
LABEL_50:
    result = 0xFFFFFFFFLL;
    goto LABEL_51;
  }

  if (v13)
  {
    snprintf((v5 + 208), 0x100uLL, "truncated dump file; tried to read %zu header bytes, only got %zu");
    goto LABEL_50;
  }

  result = 1;
LABEL_51:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void pcap_dump(u_char *a1, const pcap_pkthdr *a2, const u_char *a3)
{
  v5 = *a1;
  tv_usec = a2->ts.tv_usec;
  v7[0] = a2->ts.tv_sec;
  v7[1] = tv_usec;
  v8 = *&a2->caplen;
  fwrite(v7, 0x10uLL, 1uLL, v5);
  fwrite(a3, a2->caplen, 1uLL, v5);
}

void *pcap_alloc_dumper(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040AD783C20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a2;
  }

  else
  {
    v6 = __error();
    v7 = strerror(*v6);
    snprintf((a1 + 208), 0x100uLL, "cannot allocate struct pcap_dumper, error %s", v7);
  }

  return v5;
}

pcap_dumper_t *__cdecl pcap_dump_open(pcap_t *a1, const char *a2)
{
  if (!*(a1 + 28))
  {
    snprintf(a1 + 208, 0x100uLL, "%s: not-yet-activated pcap_t passed to pcap_dump_open");
    return 0;
  }

  v4 = dlt_to_linktype(*(a1 + 25));
  if (v4 == -1)
  {
    v9 = *(a1 + 25);
    snprintf(a1 + 208, 0x100uLL, "%s: link-layer type %d isn't supported in savefiles");
    return 0;
  }

  if (!a2)
  {
    strcpy(a1 + 208, "A null pointer was supplied as the file name");
    return 0;
  }

  v5 = v4;
  v6 = *(a1 + 26);
  if (*a2 == 45 && !a2[1])
  {
    v8 = *MEMORY[0x29EDCA620];
    a2 = "standard output";
    goto LABEL_14;
  }

  v7 = fopen(a2, "wb");
  if (!v7)
  {
    v11 = __error();
    pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, *v11, "%s", a2);
    return 0;
  }

  v8 = v7;
LABEL_14:

  return pcap_setup_dump(a1, v6 | v5, v8, a2);
}

void *pcap_setup_dump(uint64_t a1, int a2, FILE *a3, const char *a4)
{
  v8 = pcap_alloc_dumper(a1, a3);
  if (v8)
  {
    v9 = *(a1 + 96);
    v10 = *(a1 + 156) == 1 ? -1582154675 : -1582119980;
    __ptr[0] = v10;
    __ptr[1] = 262146;
    v14 = 0;
    v15 = v9;
    v16 = a2;
    if (fwrite(__ptr, 0x18uLL, 1uLL, a3) != 1)
    {
      free(v8);
      v11 = __error();
      pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v11, "Can't write to %s", a4);
      if (*MEMORY[0x29EDCA620] != a3)
      {
        fclose(a3);
      }

      return 0;
    }
  }

  return v8;
}

pcap_dumper_t *__cdecl pcap_dump_fopen(pcap_t *a1, FILE *fp)
{
  v4 = dlt_to_linktype(*(a1 + 25));
  if (v4 == -1)
  {
    snprintf(a1 + 208, 0x100uLL, "stream: link-layer type %d isn't supported in savefiles", *(a1 + 25));
    return 0;
  }

  else
  {
    v5 = *(a1 + 26) | v4;

    return pcap_setup_dump(a1, v5, fp, "stream");
  }
}

pcap_dumper_t *__cdecl pcap_dump_open_append(pcap_t *a1, const char *a2)
{
  v4 = dlt_to_linktype(*(a1 + 25));
  if (v4 == -1)
  {
    snprintf(a1 + 208, 0x100uLL, "%s: link-layer type %d isn't supported in savefiles", a2, -1);
    return 0;
  }

  if (!a2)
  {
    v8 = 0;
    strcpy(a1 + 208, "A null pointer was supplied as the file name");
    return v8;
  }

  v5 = v4;
  if (*a2 != 45 || a2[1])
  {
    v6 = fopen(a2, "ab+");
    if (v6)
    {
      v7 = v6;
      v8 = pcap_alloc_dumper(a1, v6);
      if (fseek(v7, 0, 0) == -1)
      {
        v11 = *__error();
        pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, v11, "Can't seek to the beginning of %s");
        goto LABEL_50;
      }

      __ptr[0] = 0;
      __ptr[1] = 0;
      v21 = 0;
      v9 = fread(__ptr, 1uLL, 0x18uLL, v7);
      if (v9 != 24)
      {
        v14 = v9;
        if (ferror(v7))
        {
          v15 = *__error();
          pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, v15, "%s");
          goto LABEL_50;
        }

        v17 = feof(v7);
        if (v14 && v17)
        {
          snprintf(a1 + 208, 0x100uLL, "%s: truncated pcap file header");
          goto LABEL_50;
        }

        if (!v14)
        {
          if (sf_write_header(a1, v7, v5, *(a1 + 24)) == -1)
          {
            v19 = *__error();
            pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, v19, "Can't write to %s");
            goto LABEL_50;
          }

          goto LABEL_43;
        }
      }

      if (SLODWORD(__ptr[0]) <= -725372256)
      {
        if (SLODWORD(__ptr[0]) <= -1582119981)
        {
          if (LODWORD(__ptr[0]) != -1591002035)
          {
            if (LODWORD(__ptr[0]) == -1582154675)
            {
              if (*(a1 + 39) == 1)
              {
                goto LABEL_13;
              }

              goto LABEL_46;
            }

LABEL_47:
            snprintf(a1 + 208, 0x100uLL, "%s: not a pcap file");
            goto LABEL_50;
          }

LABEL_40:
          snprintf(a1 + 208, 0x100uLL, "%s: not a pcap file to which we can append");
          goto LABEL_50;
        }

        if (LODWORD(__ptr[0]) == -1582119980)
        {
          if (!*(a1 + 39))
          {
LABEL_13:
            if (WORD2(__ptr[0]) != 2 || HIWORD(__ptr[0]) != 4)
            {
              snprintf(a1 + 208, 0x100uLL, "%s: version is %u.%u, cannot append to file");
              goto LABEL_50;
            }

            if (v5 != HIDWORD(v21))
            {
              snprintf(a1 + 208, 0x100uLL, "%s: different linktype, cannot append to file");
              goto LABEL_50;
            }

            if (*(a1 + 24) == v21)
            {
LABEL_43:
              if (fseek(v7, 0, 2) == -1)
              {
                v18 = *__error();
                pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, v18, "Can't seek to the end of %s");
                goto LABEL_50;
              }

              return v8;
            }

            snprintf(a1 + 208, 0x100uLL, "%s: different snaplen, cannot append to file");
LABEL_50:
            pcap_dump_close(v8);
            return 0;
          }

LABEL_46:
          snprintf(a1 + 208, 0x100uLL, "%s: different time stamp precision, cannot append to file");
          goto LABEL_50;
        }

        v16 = -1582117580;
LABEL_35:
        if (LODWORD(__ptr[0]) != v16)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }

      if (SLODWORD(__ptr[0]) > 1295788960)
      {
        if (LODWORD(__ptr[0]) == 1295788961)
        {
          goto LABEL_40;
        }

        if (LODWORD(__ptr[0]) != 1295823521)
        {
          goto LABEL_47;
        }
      }

      else if (LODWORD(__ptr[0]) != -725372255)
      {
        v16 = 885895841;
        goto LABEL_35;
      }

      snprintf(a1 + 208, 0x100uLL, "%s: different byte order, cannot append to file");
      goto LABEL_50;
    }

    v10 = __error();
    pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, *v10, "%s", a2);
    return 0;
  }

  v12 = *MEMORY[0x29EDCA620];

  return pcap_setup_dump(a1, v4, v12, "standard output");
}

void pcap_dump_close(pcap_dumper_t *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      pcap_ng_free_block(v2);
      *(a1 + 2) = 0;
    }

    pcap_if_info_set_clear(a1 + 6);
    pcap_proc_info_set_clear(a1 + 12);
    fclose(*a1);

    free(a1);
  }
}

uint64_t sf_write_header(uint64_t a1, FILE *__stream, int a3, int a4)
{
  if (*(a1 + 156) == 1)
  {
    v4 = -1582154675;
  }

  else
  {
    v4 = -1582119980;
  }

  __ptr[0] = v4;
  __ptr[1] = 262146;
  v7 = 0;
  v8 = a4;
  v9 = a3;
  if (fwrite(__ptr, 0x18uLL, 1uLL, __stream) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

int pcap_dump_flush(pcap_dumper_t *a1)
{
  if (fflush(*a1) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_from_block_data(uint64_t *a1, unint64_t a2, char *__str)
{
  v3 = a1[1];
  v4 = v3 - a2;
  if (v3 >= a2)
  {
    v5 = *a1;
    *a1 += a2;
    a1[1] = v4;
  }

  else
  {
    snprintf(__str, 0x100uLL, "block of type %u in pcapng dump file is too short", *(a1 + 4));
    return 0;
  }

  return v5;
}

uint64_t pcap_ng_check_header(_DWORD *a1, FILE *__stream, int a3, __n128 *a4, _DWORD *a5, int a6)
{
  v12 = ftello(__stream);
  *a5 = 0;
  if (*a1 != 168627466)
  {
    return 0;
  }

  v13 = v12;
  __ptr = 0;
  if (fread(&__ptr, 1uLL, 4uLL, __stream) <= 3 || (v39 = 0, fread(&v39, 1uLL, 4uLL, __stream) <= 3))
  {
    if (ferror(__stream))
    {
      v14 = __error();
      pcap_fmt_errmsg_for_errno(a4, 0x100uLL, *v14, "error reading dump file");
LABEL_6:
      v15 = 0;
LABEL_7:
      *a5 = 1;
      return v15;
    }

    return 0;
  }

  if (v39 == 1295788826)
  {
    v17 = bswap32(0x4D3C2B1Au);
    v18 = bswap32(__ptr);
    v16 = 1;
  }

  else
  {
    if (v39 != 439041101)
    {
      return 0;
    }

    v16 = 0;
    v17 = 439041101;
    v18 = __ptr;
  }

  if (v18 - 1048577 <= 0xFFF0001A)
  {
    snprintf(a4, 0x100uLL, "Section Header Block in pcapng dump file has invalid length %zu < _%u_ < %u (BT_SHB_INSANE_MAX)", 0x1CuLL, v18, 0x100000);
    goto LABEL_6;
  }

  v35 = v17;
  v20 = pcap_open_offline_common(a4, 0x4B8uLL, 1176);
  v15 = v20;
  if (!v20)
  {
    goto LABEL_7;
  }

  v20[14] = v16;
  v21 = *(v20 + 6);
  if (a3)
  {
    if (a3 != 1)
    {
      snprintf(a4, 0x100uLL, "unknown time stamp resolution %u", a3);
LABEL_42:
      free(v15);
      goto LABEL_6;
    }

    v22 = 1000000000;
  }

  else
  {
    v22 = 1000000;
  }

  *v21 = v22;
  v20[39] = a3;
  if (v18 <= 0x800)
  {
    v23 = 2048;
  }

  else
  {
    v23 = v18;
  }

  *(v15 + 20) = v23;
  v24 = malloc_type_malloc(v23, 0x3885A9EFuLL);
  *(v15 + 24) = v24;
  if (!v24)
  {
    strcpy(a4, "out of memory");
    goto LABEL_42;
  }

  v25 = v21;
  v26 = v24;
  v34 = v25;
  *(v25 + 2) = 0x1000000;
  *v24 = 168627466;
  v24[1] = v18;
  v24[2] = v35;
  if (read_bytes(__stream, v24 + 3, v18 - 12, 1, a4) != -1)
  {
    v27 = *(v26 + 6);
    if (*(v15 + 56))
    {
      v27 = __rev16(v27);
      *(v26 + 6) = v27;
      *(v26 + 7) = bswap32(*(v26 + 7)) >> 16;
    }

    v28 = *(v26 + 7);
    if (v27 == 1 && (v28 | 2) == 2)
    {
      *v36 = 0;
      v37 = 0;
      v38 = 0;
      *(v15 + 88) = 1;
      *(v15 + 92) = v28;
      *(v15 + 156) = a3;
      while (1)
      {
        block = read_block(__stream, v15, v36, a4);
        if (block == -1)
        {
          break;
        }

        if (!block)
        {
          strcpy(a4, "the capture file has no Interface Description Blocks");
          break;
        }

        if ((v38 - 2) < 2 || v38 == 6)
        {
          strcpy(a4, "the capture file has a packet block before any Interface Description Blocks");
          break;
        }

        if (v38 == 1)
        {
          if (v37 <= 7)
          {
            snprintf(a4, 0x100uLL, "block of type %u in pcapng dump file is too short");
            break;
          }

          v31 = *v36;
          *v36 += 8;
          v37 -= 8;
          if (!v31)
          {
            break;
          }

          if (*(v15 + 56))
          {
            *v31 = bswap32(*v31) >> 16;
            *(v31 + 1) = bswap32(*(v31 + 1));
          }

          add_interface(v15, v31, v36, a4);
          if (!v32)
          {
            break;
          }

          v33 = linktype_to_dlt(*v31);
          *(v15 + 100) = v33;
          *(v15 + 96) = pcap_adjust_snapshot(v33, *(v31 + 1));
          *(v15 + 104) = 0;
          if (max_snaplen_for_dlt(*(v15 + 100)) + 131104 > *(v34 + 2))
          {
            *(v34 + 2) = max_snaplen_for_dlt(*(v15 + 100)) + 131104;
          }

          *(v15 + 8) = pcap_ng_next_packet;
          *(v15 + 888) = pcap_ng_cleanup;
          if (a6)
          {
            *(v15 + 8) = pcap_ng_next_block;
            if (v13 <= 3)
            {
              strcpy(a4, "bad file offset");
              break;
            }

            fseek(__stream, v13 - 4, 0);
            *(v15 + 100) = 151;
          }

          return v15;
        }
      }
    }

    else
    {
      snprintf(a4, 0x100uLL, "unsupported pcapng savefile version %u.%u");
    }
  }

  free(v34[3]);
  free(*(v15 + 24));
  free(v15);
  v15 = 0;
  *a5 = 1;
  return v15;
}

uint64_t read_bytes(FILE *__stream, void *__ptr, size_t a3, int a4, char *a5)
{
  v9 = 1;
  v10 = fread(__ptr, 1uLL, a3, __stream);
  if (v10 != a3)
  {
    v11 = v10;
    if (ferror(__stream))
    {
      v12 = __error();
      pcap_fmt_errmsg_for_errno(a5, 0x100uLL, *v12, "error reading dump file");
      return 0xFFFFFFFFLL;
    }

    if (a4 || v11)
    {
      snprintf(a5, 0x100uLL, "truncated pcapng dump file; tried to read %zu bytes, only got %zu", a3, v11);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  return v9;
}

uint64_t read_block(FILE *a1, uint64_t a2, uint64_t a3, char *a4)
{
  __ptr = 0;
  v8 = *(a2 + 48);
  result = read_bytes(a1, &__ptr, 8uLL, 0, a4);
  if (result >= 1)
  {
    if (*(a2 + 56))
    {
      __ptr = vrev32_s8(__ptr);
    }

    v10 = __ptr.u32[1];
    if (__ptr.i32[1] <= 0xBu)
    {
      snprintf(a4, 0x100uLL, "block in pcapng dump file has a length of %u < %zu");
      return 0xFFFFFFFFLL;
    }

    if ((__ptr.i8[4] & 3) != 0)
    {
      snprintf(a4, 0x100uLL, "block in pcapng dump file has a length of %u that is not a multiple of 4");
      return 0xFFFFFFFFLL;
    }

    if (*(a2 + 20) >= __ptr.i32[1])
    {
      v11 = *(a2 + 24);
    }

    else
    {
      if (__ptr.i32[1] > *(v8 + 8))
      {
        snprintf(a4, 0x100uLL, "pcapng block size %u > maximum %u");
        return 0xFFFFFFFFLL;
      }

      v11 = malloc_type_realloc(*(a2 + 24), __ptr.u32[1], 0xF8E5FCFBuLL);
      if (!v11)
      {
        strcpy(a4, "out of memory");
        return 0xFFFFFFFFLL;
      }

      *(a2 + 24) = v11;
    }

    *v11 = __ptr;
    v12 = *(a2 + 24);
    result = read_bytes(a1, (v12 + 8), v10 - 8, 1, a4);
    if (result != -1)
    {
      v13 = *(v12 + v10 - 4);
      if (*(a2 + 56))
      {
        v13 = bswap32(v13);
        *(v12 + v10 - 4) = v13;
      }

      if (v10 == v13)
      {
        *a3 = v12 + 8;
        *(a3 + 8) = v10 - 12;
        *(a3 + 16) = __ptr.i32[0];
        return 1;
      }

      strcpy(a4, "block total length in header and trailer don't match");
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

__n128 add_interface(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 *__str)
{
  v8 = *(a1 + 48);
  v9 = *(v8 + 3);
  v10 = *(v8 + 4);
  *(v8 + 3) = v9 + 1;
  if (v9 + 1 <= v10)
  {
    v13 = v8[3];
  }

  else
  {
    if (v10)
    {
      if ((v10 & 0x80000000) != 0 || (v11 = 2 * v10, v12 = 80 * v10, v12 < 2 * v10))
      {
        snprintf(__str, 0x100uLL, "more than %u interfaces in the file");
        return result;
      }

      v13 = malloc_type_realloc(v8[3], v12, 0x10000401089DE20uLL);
      if (!v13)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = malloc_type_malloc(0x28uLL, 0x10000401089DE20uLL);
      v11 = 1;
      if (!v13)
      {
LABEL_45:
        v34 = *(v8 + 3);
        snprintf(__str, 0x100uLL, "out of memory for per-interface information (%u interfaces)");
        return result;
      }
    }

    *(v8 + 4) = v11;
    v8[3] = v13;
    v9 = *(v8 + 3) - 1;
  }

  v15 = 1000000;
  v13[10 * v9] = *(a2 + 4);
  if (a3[1])
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      opthdr_from_block_data = get_opthdr_from_block_data(a1, a3, __str);
      if (!opthdr_from_block_data)
      {
        return result;
      }

      v21 = opthdr_from_block_data;
      v22 = get_from_block_data(a3, (opthdr_from_block_data[1] + 3) & 0x1FFFC, __str);
      if (!v22)
      {
        return result;
      }

      v23 = *v21;
      if (v23 == 9)
      {
        if (v21[1] != 1)
        {
          v41 = v21[1];
          snprintf(__str, 0x100uLL, "Interface Description Block has if_tsresol option with length %u != 1");
          return result;
        }

        if (v19)
        {
          v35 = "Interface Description Block has more than one if_tsresol option";
          goto LABEL_58;
        }

        v25 = *v22;
        if (v25 < 0)
        {
          v27 = v25 & 0x7F;
          if (v27 > 0x3F)
          {
            snprintf(__str, 0x100uLL, "Interface Description Block if_tsresol option resolution 2^-%u is too high");
            return result;
          }

          v17 = 1;
          v15 = 1 << v27;
        }

        else
        {
          v26 = *v22;
          if (v26 >= 0x14)
          {
            snprintf(__str, 0x100uLL, "Interface Description Block if_tsresol option resolution 10^-%u is too high");
            return result;
          }

          if (*v22)
          {
            v15 = 1;
            do
            {
              v15 *= 10;
              --v26;
            }

            while (v26);
            v17 = 0;
          }

          else
          {
            v17 = 0;
            v15 = 1;
          }
        }

        v19 = 1;
      }

      else if (v23 == 14)
      {
        if (v21[1] != 8)
        {
          v40 = v21[1];
          snprintf(__str, 0x100uLL, "Interface Description Block has if_tsoffset option with length %u != 8");
          return result;
        }

        if (v18)
        {
          __str[4].n128_u8[0] = 0;
          v35 = "Interface Description Block has more than one if_tsoffset option";
LABEL_58:
          v37 = *(v35 + 1);
          *__str = *v35;
          __str[1] = v37;
          result = *(v35 + 2);
          v38 = *(v35 + 3);
          __str[2] = result;
          __str[3] = v38;
          return result;
        }

        v24 = bswap64(*v22);
        if (*(a1 + 56))
        {
          v16 = v24;
        }

        else
        {
          v16 = *v22;
        }

        v18 = 1;
      }

      else if (!*v21)
      {
        if (!v21[1])
        {
          goto LABEL_38;
        }

        v39 = v21[1];
        snprintf(__str, 0x100uLL, "Interface Description Block has opt_endofopt option with length %u != 0");
        return result;
      }

      if (!a3[1])
      {
        goto LABEL_38;
      }
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_38:
  v28 = v8[3];
  v29 = *(v8 + 3) - 1;
  v30 = v28 + 40 * v29;
  *(v30 + 8) = v15;
  *(v30 + 32) = v16;
  v31 = *v8;
  if (v15 == *v8)
  {
    *(v28 + 40 * v29 + 16) = 0;
    return result;
  }

  if (v15 <= *v8)
  {
    if (!v17)
    {
      v36 = v28 + 40 * v29;
      *(v36 + 24) = v31 / v15;
      *(v36 + 16) = 1;
      return result;
    }

    v32 = v28 + 40 * v29;
    v33 = 3;
  }

  else
  {
    v32 = v28 + 40 * v29;
    if (v17)
    {
      v33 = 4;
    }

    else
    {
      *(v32 + 24) = v15 / v31;
      v33 = 2;
    }
  }

  *(v32 + 16) = v33;
  return result;
}

void pcap_ng_cleanup(uint64_t a1)
{
  free(*(*(a1 + 48) + 24));

  sf_cleanup(a1);
}

void *pcap_ng_dump_open(uint64_t a1, char *__filename)
{
  v2 = __filename;
  if (!*(a1 + 112))
  {
    snprintf((a1 + 208), 0x100uLL, "%s: not-yet-activated pcap_t passed to pcap_ng_dump_open");
    return 0;
  }

  if (*__filename != 45 || __filename[1])
  {
    v4 = fopen(__filename, "wb");
    if (v4)
    {
      v5 = v4;
      goto LABEL_10;
    }

    v6 = __error();
    pcap_strerror(*v6);
    snprintf((a1 + 208), 0x100uLL, "%s: %s");
    return 0;
  }

  v5 = *MEMORY[0x29EDCA620];
  v2 = "standard output";
LABEL_10:
  pcap_ng_init_section_info(a1);
  v8 = *(a1 + 100);
  if ((v8 | 2) == 0x97)
  {

    return pcap_alloc_dumper(a1, v5);
  }

  if (dlt_to_linktype(v8) == -1)
  {
    snprintf((a1 + 208), 0x100uLL, "%s: link-layer type %d isn't supported in savefiles", v2, *(a1 + 100));
    if (v5 != *MEMORY[0x29EDCA620])
    {
      fclose(v5);
    }

    return 0;
  }

  return pcap_ng_setup_dump(a1, v5);
}

void *pcap_ng_setup_dump(uint64_t a1, uint64_t a2)
{
  result = pcap_alloc_dumper(a1, a2);
  if (result)
  {
    v4 = result;
    if (pcap_ng_dump_shb(a1, result))
    {
      result = pcap_if_info_set_add((v4 + 24), *(a1 + 120), 0xFFFFFFFF, *(a1 + 100), *(a1 + 96), *(a1 + 1104), (a1 + 208));
      if (result)
      {
        if (pcap_ng_dump_if_info(a1, v4, *(v4 + 16), result))
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *pcap_ng_dump_fopen(uint64_t a1, uint64_t a2)
{
  if (dlt_to_linktype(*(a1 + 100)) == -1)
  {
    snprintf((a1 + 208), 0x100uLL, "stream: link-layer type %d isn't supported in savefiles", *(a1 + 100));
    return 0;
  }

  else
  {

    return pcap_ng_setup_dump(a1, a2);
  }
}

ssize_t pcap_ng_dump(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = pcap_ng_block_reset(*(a1 + 16), 6);
  if (!result)
  {
    enhanced_packet_fields = pcap_ng_get_enhanced_packet_fields(*(a1 + 16));
    *enhanced_packet_fields = 0;
    v8 = *(a2 + 16);
    *(enhanced_packet_fields + 12) = v8;
    *(enhanced_packet_fields + 4) = __ROR8__(*(a2 + 8) + 1000000 * *a2, 32);
    pcap_ng_block_packet_set_data(*(a1 + 16), a3, v8);
    v10 = *(a2 + 24);
    v9 = (a2 + 24);
    if (v10)
    {
      pcap_ng_block_add_option_with_string(*(a1 + 16), 1, v9);
    }

    v11 = *(a1 + 16);

    return pcap_ng_dump_block(a1, v11);
  }

  return result;
}

unsigned __int16 *get_opthdr_from_block_data(uint64_t a1, uint64_t *a2, char *a3)
{
  result = get_from_block_data(a2, 4uLL, a3);
  if (result)
  {
    if (*(a1 + 56))
    {
      *result = bswap32(*result) >> 16;
      result[1] = bswap32(result[1]) >> 16;
    }
  }

  return result;
}

uint64_t pcap_ng_next_internal(__n128 *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v5 = a1[3].n128_u64[0];
  if (!*v5)
  {
    strcpy(&a1[13], "internal error, check_header did not set user_tsresol");
    return 0xFFFFFFFFLL;
  }

  v9 = a1[4].n128_u64[0];
  *v54 = 0;
  v55 = 0;
  v56 = 0;
  do
  {
    while (1)
    {
      result = read_block(v9, a1, v54, &a1[13]);
      if (result == -1)
      {
        return result;
      }

      if (!result)
      {
        return 1;
      }

      v11 = v56;
      if (v56 <= 2)
      {
        break;
      }

      if (v56 != 168627466)
      {
        if (v56 == 3)
        {
          if (v55 <= 3)
          {
            goto LABEL_40;
          }

          if (!*v54)
          {
            return 0xFFFFFFFFLL;
          }

          v19 = 0;
          v20 = 0;
          v21 = v55 - 4;
          v22 = *v54 + 4;
          v23 = bswap32(**v54);
          if (a1[3].n128_u32[2])
          {
            v24 = v23;
          }

          else
          {
            v24 = **v54;
          }

          v25 = a1[6].n128_u32[0];
          if (v24 < v25)
          {
            v25 = v24;
          }

          *(a2 + 16) = v25;
          *(a2 + 20) = v24;
          goto LABEL_66;
        }

        if (v56 != 6)
        {
          goto LABEL_29;
        }

        if (v55 <= 0x13)
        {
LABEL_40:
          snprintf(&a1[13], 0x100uLL, "block of type %u in pcapng dump file is too short");
          return 0xFFFFFFFFLL;
        }

        v26 = *v54;
        if (!*v54)
        {
          return 0xFFFFFFFFLL;
        }

        v22 = *v54 + 20;
        v21 = v55 - 20;
        v19 = **v54;
        if (a1[3].n128_u32[2])
        {
          v19 = bswap32(v19);
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (v55 <= 0xF)
      {
        goto LABEL_40;
      }

      v12 = *v54;
      *v54 += 16;
      v55 -= 16;
      if (!v12)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = *v12;
      if (a1[3].n128_u32[2])
      {
        v13 = bswap32(v13);
        *v12 = v13;
        *(v12 + 2) = bswap32(*(v12 + 2)) >> 16;
      }

      if (v13 != 439041101)
      {
        if (v13 == 1295788826)
        {
          strcpy(&a1[13], "the file has sections with different byte orders");
        }

        else
        {
          strcpy(&a1[13], "the file has a section with a bad byte order magic field");
        }

        return 0xFFFFFFFFLL;
      }

      if (*(v12 + 2) != 1)
      {
        snprintf(&a1[13], 0x100uLL, "unknown pcapng savefile major version number %u");
        return 0xFFFFFFFFLL;
      }

      *(v5 + 12) = 0;
LABEL_29:
      if (!a4)
      {
        return 0;
      }
    }

    if (v56 != 1)
    {
      if (v56 != 2)
      {
        goto LABEL_29;
      }

      if (v55 <= 0x13)
      {
        goto LABEL_40;
      }

      v26 = *v54;
      v22 = *v54 + 20;
      v21 = v55 - 20;
      *v54 += 20;
      v55 -= 20;
      if (!v26)
      {
        return 0xFFFFFFFFLL;
      }

      v19 = *v26;
      if (a1[3].n128_u32[2])
      {
        v19 = __rev16(v19);
LABEL_63:
        v27 = vrev32_s8(*(v26 + 3));
        *(a2 + 16) = v27;
        v20 = bswap64(*(v26 + 1));
LABEL_65:
        v25 = v27.i32[0];
LABEL_66:
        ++a1[57].n128_u64[0];
        if (v19 >= *(v5 + 12))
        {
          snprintf(&a1[13], 0x100uLL, "a packet arrived on interface %u, but there's no Interface Description Block for that interface");
          return 0xFFFFFFFFLL;
        }

        v28 = *(v5 + 24) + 40 * v19;
        if (v25 > *v28)
        {
          v29 = a1[6].n128_u32[0];
          snprintf(&a1[13], 0x100uLL, "invalid packet capture length %u, bigger than snaplen of %d");
          return 0xFFFFFFFFLL;
        }

        v30 = *(v28 + 8);
        v31 = *(v28 + 32) + v20 / v30;
        v32 = v20 % v30;
        v33 = *(v28 + 16);
        if (v33 > 2)
        {
          if (v33 == 3 || v33 == 4)
          {
            v32 = *v5 * v32 / v30;
          }
        }

        else if (v33 == 1)
        {
          v32 *= *(v28 + 24);
        }

        else if (v33 == 2)
        {
          v32 /= *(v28 + 24);
        }

        *a2 = v31;
        *(a2 + 8) = v32;
        if (v21 < v25)
        {
          snprintf(&a1[13], 0x100uLL, "block of type %u in pcapng dump file is too short", v11);
          *a3 = 0;
          return 0xFFFFFFFFLL;
        }

        v34 = v22 + v25;
        v35 = v21 - v25;
        *v54 = v34;
        v55 = v35;
        *a3 = v22;
        if ((v25 & 3) != 0)
        {
          v36 = 4 - (v25 & 3);
          v37 = v35 >= v36;
          v38 = v35 - v36;
          if (!v37)
          {
            goto LABEL_40;
          }

          *v54 = v34 + v36;
          v55 = v38;
        }

        *(a2 + 24) = 0u;
        *(a2 + 248) = 0u;
        *(a2 + 264) = 0u;
        *(a2 + 216) = 0u;
        *(a2 + 232) = 0u;
        *(a2 + 184) = 0u;
        *(a2 + 200) = 0u;
        *(a2 + 152) = 0u;
        *(a2 + 168) = 0u;
        *(a2 + 120) = 0u;
        *(a2 + 136) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 104) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 40) = 0u;
        opthdr_from_block_data = get_opthdr_from_block_data(a1, v54, &a1[13]);
        if (!opthdr_from_block_data || *opthdr_from_block_data != 1 || !opthdr_from_block_data[1])
        {
LABEL_90:
          if (a1[3].n128_u32[2])
          {
            swap_pseudo_headers(a1[6].n128_u32[1], a2, *a3);
          }

          return 0;
        }

        if (v55 < ((opthdr_from_block_data[1] + 3) & 0x1FFFCu))
        {
          goto LABEL_40;
        }

        v40 = *v54;
        if (*v54)
        {
          v41 = **v54;
          v42 = *(*v54 + 16);
          v43 = *(*v54 + 48);
          *(a2 + 56) = *(*v54 + 32);
          *(a2 + 72) = v43;
          *(a2 + 24) = v41;
          *(a2 + 40) = v42;
          v44 = *(v40 + 4);
          v45 = *(v40 + 5);
          v46 = *(v40 + 7);
          *(a2 + 120) = *(v40 + 6);
          *(a2 + 136) = v46;
          *(a2 + 88) = v44;
          *(a2 + 104) = v45;
          v47 = *(v40 + 8);
          v48 = *(v40 + 9);
          v49 = *(v40 + 11);
          *(a2 + 184) = *(v40 + 10);
          *(a2 + 200) = v49;
          *(a2 + 152) = v47;
          *(a2 + 168) = v48;
          v50 = *(v40 + 12);
          v51 = *(v40 + 13);
          v52 = *(v40 + 15);
          *(a2 + 248) = *(v40 + 14);
          *(a2 + 264) = v52;
          *(a2 + 216) = v50;
          *(a2 + 232) = v51;
          goto LABEL_90;
        }

        return 0xFFFFFFFFLL;
      }

LABEL_64:
      v27 = *(v26 + 3);
      *(a2 + 16) = v27;
      v20 = v26[2] | (v26[1] << 32);
      goto LABEL_65;
    }

    if (v55 <= 7)
    {
      goto LABEL_40;
    }

    v14 = *v54;
    *v54 += 8;
    v55 -= 8;
    if (!v14)
    {
      return 0xFFFFFFFFLL;
    }

    if (a1[3].n128_u32[2])
    {
      *v14 = bswap32(*v14) >> 16;
      v14[1] = bswap32(v14[1]);
    }

    if (a4)
    {
      v15 = a1[6].n128_i32[1];
      if (v15 != *v14)
      {
        v53 = *v14;
        snprintf(&a1[13], 0x100uLL, "an interface has a type %u different from the type of the first interface");
        return 0xFFFFFFFFLL;
      }

      v16 = a1[6].n128_u32[0];
      if (v16 != pcap_adjust_snapshot(v15, v14[1]))
      {
        v18 = v14[1];
        snprintf(&a1[13], 0x100uLL, "an interface has a snapshot length %u different from the snapshot length of the first interface");
        return 0xFFFFFFFFLL;
      }
    }

    add_interface(a1, v14, v54, a1 + 13);
  }

  while (v17 && a4);
  if (v17)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pcap_parse()
{
  v127 = MEMORY[0x2A1C7C4A8]();
  *v128 = v0;
  v1 = 0u;
  v134[50] = *MEMORY[0x29EDCA608];
  v2 = v133;
  v131 = 0uLL;
  v132 = 0;
  v3 = 200;
  __src = v133;
  v4 = v134;
  v5 = v134;
  v130 = -2;
  while (2)
  {
    *v4 = v1;
    if (&v5[2 * v3 - 2] <= v4)
    {
      if (v3 >> 4 > 0x270 || ((2 * v3) >= 0x2710 ? (v3 = 10000) : (v3 *= 2), (v6 = malloc_type_malloc(26 * v3 + 23, 0x1000040BDFB0063uLL)) == 0))
      {
        bpf_set_error(*v128, "can't parse filter expression: %s", "memory exhausted");
        v46 = 2;
        goto LABEL_342;
      }

      v7 = v6;
      v8 = ((v4 - v5) >> 1) + 1;
      memcpy(v6, v5, 2 * v8);
      memcpy(&v7[24 * ((10923 * (2 * v3 + 23)) >> 18)], __src, 24 * v8);
      if (v5 != v134)
      {
        free(v5);
      }

      if (v3 <= v8)
      {
        v46 = 1;
        v5 = v7;
        goto LABEL_342;
      }

      v4 = &v7[2 * v8 - 2];
      v2 = &v7[24 * ((10923 * (2 * v3 + 23)) >> 18) - 24 + 24 * v8];
      __src = &v7[24 * ((10923 * (2 * v3 + 23)) >> 18)];
      v5 = v7;
    }

    v9 = yypact[v1];
    if (v9 == -217)
    {
      goto LABEL_28;
    }

    v10 = v130;
    if (v130 == -2)
    {
      v10 = pcap_lex(&v131, v127);
    }

    if (v10 < 1)
    {
      v11 = 0;
      v130 = 0;
    }

    else
    {
      v130 = v10;
      v11 = v10 > 0x17A ? 2 : yytranslate[v10];
    }

    v12 = v11 + v9;
    if ((v11 + v9) > 0x320 || v11 != yycheck[v12])
    {
LABEL_28:
      v14 = yydefact[v1];
      if (!v14)
      {
        goto LABEL_339;
      }

      goto LABEL_29;
    }

    v1 = yytable[v12];
    if (v1 <= 0)
    {
      if (!yytable[v12])
      {
LABEL_339:
        bpf_set_error(*v128, "can't parse filter expression: %s");
        goto LABEL_340;
      }

      v14 = -v1;
LABEL_29:
      v15 = yyr2[v14];
      v16 = &v2[-24 * v15];
      v17 = *(v16 + 3);
      v18 = *(v16 + 8);
      v19 = *(v16 + 9);
      v20 = *(v16 + 5);
      switch(v14)
      {
        case 2u:
          v40 = *(v16 + 9);
          v41 = *(v16 + 8);
          v42 = *(v16 + 5);
          v43 = finish_parse(*v128, *(v2 + 2));
          v20 = v42;
          v18 = v41;
          v19 = v40;
          if (v43 == -1)
          {
            break;
          }

          goto LABEL_307;
        case 4u:
          goto LABEL_221;
        case 6u:
        case 7u:
        case 0x1Bu:
          gen_and(*(v2 - 4), *(v2 + 2));
          goto LABEL_52;
        case 8u:
        case 9u:
        case 0x1Cu:
        case 0xC8u:
        case 0xDDu:
          gen_or(*(v2 - 4), *(v2 + 2));
          goto LABEL_52;
        case 0xAu:
        case 0xBu:
        case 0xEu:
        case 0x18u:
        case 0x19u:
          v17 = *(v2 - 3);
          v18 = *(v2 - 4);
          v19 = *(v2 - 3);
          v20 = *(v2 - 1);
          goto LABEL_307;
        case 0xDu:
          v126 = *(v16 + 9);
          v25 = v18;
          v67 = *v2;
          v26 = *(v2 - 6);
          v68 = *(v2 - 6);
          v69 = *v128;
          v122 = v122 & 0xFFFFFFFF00000000 | v26;
          goto LABEL_284;
        case 0xFu:
          v95 = *v2;
          if (!*v2)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v26 = *(v2 - 6);
          v117 = v117 & 0xFFFFFFFF00000000 | v26;
          v27 = gen_scode(*v128, v95, *(v2 - 6));
          if (!v27)
          {
            break;
          }

          goto LABEL_299;
        case 0x10u:
          v28 = *(v2 - 6);
          if (!v28)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v29 = *v2;
          v26 = *(v2 - 18);
          v30 = *(v2 - 18);
          v31 = *v128;
          v32 = 0;
          v116 = v116 & 0xFFFFFFFF00000000 | v26;
          goto LABEL_298;
        case 0x11u:
          v28 = *(v2 - 6);
          if (!v28)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v32 = *v2;
          v26 = *(v2 - 18);
          v30 = *(v2 - 18);
          v31 = *v128;
          v29 = 0;
          v121 = v121 & 0xFFFFFFFF00000000 | v26;
LABEL_298:
          v27 = gen_mcode(v31, v28, v32, v29, v30);
          if (v27)
          {
            goto LABEL_299;
          }

          break;
        case 0x12u:
          if (!*v2)
          {
            break;
          }

          v96 = *(v2 - 6);
          v97 = *(v2 - 6);
          if (v97 > 5)
          {
            if (v97 == 6)
            {
              bpf_set_error(*v128, "'protochain' modifier applied to ip host");
              break;
            }

            if (v97 == 7)
            {
              bpf_set_error(*v128, "'portrange' modifier applied to ip host");
              break;
            }
          }

          else
          {
            if (v97 == 3)
            {
              bpf_set_error(*v128, "'port' modifier applied to ip host");
              break;
            }

            if (v97 == 5)
            {
              bpf_set_error(*v128, "'proto' modifier applied to ip host");
              break;
            }
          }

          v37 = v19;
          v38 = v18;
          v114 = v114 & 0xFFFFFFFF00000000 | v96;
          v99 = gen_ncode(*v128, *v2, 0, v96);
          if (v99)
          {
            v20 = v99;
            v17 = v17 & 0xFFFFFFFF00000000 | v96;
LABEL_306:
            v18 = v38;
            v19 = v37;
            goto LABEL_307;
          }

          break;
        case 0x13u:
          v33 = *(v2 - 6);
          if (!v33)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v34 = *v2;
          v26 = *(v2 - 18);
          v35 = *(v2 - 18);
          v36 = *v128;
          v115 = v115 & 0xFFFFFFFF00000000 | v26;
          goto LABEL_103;
        case 0x14u:
          v33 = *v2;
          if (!*v2)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v26 = *(v2 - 6);
          v35 = *(v2 - 6);
          v36 = *v128;
          v34 = 128;
          v120 = v120 & 0xFFFFFFFF00000000 | v26;
LABEL_103:
          v27 = gen_mcode6(v36, v33, 0, v34, v35);
          if (!v27)
          {
            break;
          }

          goto LABEL_299;
        case 0x15u:
          v24 = *v2;
          if (!*v2)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v26 = *(v2 - 6);
          v119 = v119 & 0xFFFFFFFF00000000 | v26;
          v27 = gen_ecode(*v128, v24, v119);
          if (!v27)
          {
            break;
          }

          goto LABEL_299;
        case 0x16u:
          v98 = *v2;
          if (!*v2)
          {
            break;
          }

          v126 = *(v16 + 9);
          v25 = v18;
          v26 = *(v2 - 6);
          v118 = v118 & 0xFFFFFFFF00000000 | v26;
          v27 = gen_acode(*v128, v98, *(v2 - 6));
          if (!v27)
          {
            break;
          }

          goto LABEL_299;
        case 0x17u:
        case 0x20u:
          gen_not(*(v2 + 2));
          goto LABEL_52;
        case 0x1Du:
          v126 = *(v16 + 9);
          v25 = v18;
          v67 = *v2;
          v26 = *(v2 - 6);
          v68 = *(v2 - 6);
          v69 = *v128;
          v123 = v123 & 0xFFFFFFFF00000000 | v26;
LABEL_284:
          v27 = gen_ncode(v69, 0, v67, v68);
          if (!v27)
          {
            break;
          }

LABEL_299:
          v20 = v27;
          v17 = v17 & 0xFFFFFFFF00000000 | v26;
          v18 = v25;
          v19 = v126;
          goto LABEL_307;
        case 0x21u:
          v22 = v17 & 0xFFFFFFFFFF000000 | (*(v2 - 12) << 8) | (*(v2 - 6) << 16);
          goto LABEL_77;
        case 0x22u:
          v17 = v17 & 0xFFFFFFFFFF000000 | (*(v2 - 6) << 8) | (*v2 << 16);
          goto LABEL_307;
        case 0x23u:
        case 0x26u:
          v22 = v17 & 0xFFFFFFFFFF000000 | (*(v2 - 6) << 8);
LABEL_77:
          v23 = *v2;
          goto LABEL_184;
        case 0x24u:
          v22 = v17 & 0xFFFFFFFFFF000000 | (*(v2 - 6) << 8);
          v23 = 5;
          goto LABEL_184;
        case 0x25u:
          v17 = v17 & 0xFFFFFFFFFF000000 | (*(v2 - 6) << 8) | 6;
          goto LABEL_307;
        case 0x27u:
LABEL_52:
          v17 = *v2;
          v18 = *(v2 + 2);
          v19 = *(v2 + 3);
          v20 = *(v2 + 2);
          goto LABEL_307;
        case 0x28u:
          v20 = *(v2 - 1);
          v23 = *(v2 - 12);
          goto LABEL_183;
        case 0x29u:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v39 = gen_proto_abbrev(*v128, *v2);
          if (!v39)
          {
            break;
          }

          goto LABEL_287;
        case 0x2Au:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v39 = gen_relation(*v128, *(v2 - 6), *(v2 - 6), *v2, 0);
          if (!v39)
          {
            break;
          }

          goto LABEL_287;
        case 0x2Bu:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v46 = 1;
          v94 = gen_relation(*v128, *(v2 - 6), *(v2 - 6), *v2, 1);
          if (!v94)
          {
            goto LABEL_342;
          }

          v20 = v94;
          v17 |= 0xFFFFFFFFuLL;
          goto LABEL_306;
        case 0x2Cu:
          v20 = *v2;
          goto LABEL_221;
        case 0x2Du:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          gen_atmtype_abbrev(*v128, *v2);
          if (!v39)
          {
            break;
          }

          goto LABEL_287;
        case 0x2Eu:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v39 = gen_atmmulti_abbrev(*v128, *v2);
          if (!v39)
          {
            break;
          }

          goto LABEL_287;
        case 0x2Fu:
        case 0x31u:
          v20 = *(v2 + 2);
          goto LABEL_221;
        case 0x30u:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v39 = gen_mtp2type_abbrev(*v128, *v2);
          if (!v39)
          {
            break;
          }

LABEL_287:
          v20 = v39;
          v17 |= 0xFFFFFFFFuLL;
          goto LABEL_306;
        case 0x33u:
          v17 &= 0xFFFFFFFF00000000;
          goto LABEL_307;
        case 0x34u:
        case 0x40u:
        case 0x45u:
          v17 = v17 & 0xFFFFFFFF00000000 | 1;
          goto LABEL_307;
        case 0x35u:
        case 0x41u:
        case 0x46u:
          v17 = v17 & 0xFFFFFFFF00000000 | 2;
          goto LABEL_307;
        case 0x36u:
        case 0x37u:
        case 0x42u:
        case 0x47u:
          v17 = v17 & 0xFFFFFFFF00000000 | 3;
          goto LABEL_307;
        case 0x38u:
        case 0x39u:
        case 0x44u:
        case 0x48u:
          v17 = v17 & 0xFFFFFFFF00000000 | 4;
          goto LABEL_307;
        case 0x3Au:
        case 0x49u:
          v21 = 5;
          goto LABEL_275;
        case 0x3Bu:
        case 0x4Au:
          v17 = v17 & 0xFFFFFFFF00000000 | 6;
          goto LABEL_307;
        case 0x3Cu:
        case 0x43u:
        case 0x4Bu:
          v17 = v17 & 0xFFFFFFFF00000000 | 7;
          goto LABEL_307;
        case 0x3Du:
        case 0x4Cu:
          v17 = v17 & 0xFFFFFFFF00000000 | 8;
          goto LABEL_307;
        case 0x3Eu:
        case 0x4Du:
          v21 = 9;
          goto LABEL_275;
        case 0x3Fu:
        case 0x4Eu:
          v21 = 10;
          goto LABEL_275;
        case 0x4Fu:
          v21 = 21;
          goto LABEL_275;
        case 0x50u:
        case 0xB6u:
        case 0xC9u:
          v21 = 22;
          goto LABEL_275;
        case 0x51u:
          v21 = 39;
          goto LABEL_275;
        case 0x52u:
          v21 = 11;
          goto LABEL_275;
        case 0x53u:
        case 0xB7u:
        case 0xCAu:
          v21 = 23;
          goto LABEL_275;
        case 0x54u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0xC;
          goto LABEL_307;
        case 0x55u:
          v21 = 13;
          goto LABEL_275;
        case 0x56u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0xE;
          goto LABEL_307;
        case 0x57u:
        case 0x99u:
        case 0x9Cu:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x10;
          goto LABEL_307;
        case 0x58u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0xF;
          goto LABEL_307;
        case 0x59u:
          v21 = 17;
          goto LABEL_275;
        case 0x5Au:
          v21 = 18;
          goto LABEL_275;
        case 0x5Bu:
          v21 = 19;
          goto LABEL_275;
        case 0x5Cu:
          v21 = 20;
          goto LABEL_275;
        case 0x5Du:
        case 0xB9u:
        case 0xCBu:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x18;
          goto LABEL_307;
        case 0x5Eu:
        case 0xB8u:
        case 0xCCu:
          v21 = 25;
          goto LABEL_275;
        case 0x5Fu:
        case 0xBAu:
        case 0xCDu:
          v21 = 26;
          goto LABEL_275;
        case 0x60u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x1F;
          goto LABEL_307;
        case 0x61u:
        case 0x97u:
        case 0x9Au:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x20;
          goto LABEL_307;
        case 0x62u:
          v21 = 33;
          goto LABEL_275;
        case 0x63u:
          v21 = 37;
          goto LABEL_275;
        case 0x64u:
          v21 = 34;
          goto LABEL_275;
        case 0x65u:
          v21 = 36;
          goto LABEL_275;
        case 0x66u:
          v21 = 35;
          goto LABEL_275;
        case 0x67u:
        case 0xBBu:
        case 0xCEu:
          v21 = 27;
          goto LABEL_275;
        case 0x68u:
        case 0xBCu:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x1C;
          goto LABEL_307;
        case 0x69u:
        case 0xBDu:
          v21 = 29;
          goto LABEL_275;
        case 0x6Au:
        case 0xB5u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x1E;
          goto LABEL_307;
        case 0x6Bu:
        case 0xAEu:
          v21 = 38;
          goto LABEL_275;
        case 0x6Cu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_broadcast(*v128, *(v2 - 6));
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x6Du:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_multicast(*v128, *(v2 - 6));
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x6Eu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_less(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x6Fu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_greater(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x70u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_byteop(*v128, *(v2 - 6), *(v2 - 12), *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x71u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_inbound(*v128, 0);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x72u:
          v125 = *(v16 + 5);
          v44 = v19;
          v45 = v18;
          v46 = 1;
          v47 = gen_inbound(*v128, 1);
          if (!v47)
          {
            goto LABEL_342;
          }

          goto LABEL_161;
        case 0x73u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_ifindex(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x74u:
          v125 = *(v16 + 5);
          v44 = v19;
          v45 = v18;
          v46 = 1;
          v47 = gen_vlan(*v128, *v2, 1);
          if (v47)
          {
            goto LABEL_161;
          }

          goto LABEL_342;
        case 0x75u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_vlan(*v128, 0, 0);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x76u:
          v125 = *(v16 + 5);
          v44 = v19;
          v45 = v18;
          v46 = 1;
          v47 = gen_mpls(*v128, *v2, 1);
          if (!v47)
          {
            goto LABEL_342;
          }

          goto LABEL_161;
        case 0x77u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_mpls(*v128, 0, 0);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x78u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pppoed(*v128);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x79u:
          v125 = *(v16 + 5);
          v44 = v19;
          v45 = v18;
          v46 = 1;
          v47 = gen_pppoes(*v128, *v2, 1);
          if (!v47)
          {
            goto LABEL_342;
          }

          goto LABEL_161;
        case 0x7Au:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pppoes(*v128, 0, 0);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x7Bu:
          v125 = *(v16 + 5);
          v44 = v19;
          v45 = v18;
          v46 = 1;
          v47 = gen_geneve(*v128, *v2, 1);
          if (!v47)
          {
            goto LABEL_342;
          }

          goto LABEL_161;
        case 0x7Cu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_geneve(*v128, 0, 0);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x7Du:
        case 0x7Eu:
        case 0x7Fu:
          v17 = *v2;
          goto LABEL_307;
        case 0x80u:
          if (!*v2)
          {
            break;
          }

          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pf_ifname(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x81u:
          if (!*v2)
          {
            break;
          }

          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pf_ruleset(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x82u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pf_rnr(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x83u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pf_srnr(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x84u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pf_reason(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x85u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_pf_action(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x86u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v70 = *v2 | *(v2 - 12);
          goto LABEL_197;
        case 0x87u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v70 = *v2;
          v74 = *v128;
          v75 = 12;
          goto LABEL_198;
        case 0x88u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v70 = *v2;
LABEL_197:
          v74 = *v128;
          v75 = 252;
LABEL_198:
          v51 = gen_p80211_type(v74, v70, v75);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x89u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_p80211_fcdir(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x8Au:
          v23 = *v2;
          if ((v23 & 0xFFFFFFF3) == 0)
          {
            goto LABEL_183;
          }

          v113 = *v2;
          bpf_set_error(*v128, "invalid 802.11 type value 0x%02x");
          break;
        case 0x8Bu:
          if (!*v2)
          {
            break;
          }

          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v90 = str2tok(*v2, ieee80211_types);
          if (v90 != -1)
          {
            v17 = v17 & 0xFFFFFFFF00000000 | v90;
LABEL_250:
            v18 = v50;
            v19 = v49;
            v20 = v48;
            goto LABEL_307;
          }

          v109 = *v2;
          bpf_set_error(*v128, "unknown 802.11 type name %s");
          break;
        case 0x8Cu:
          v23 = *v2;
          if ((v23 & 0xFFFFFF0F) == 0)
          {
            goto LABEL_183;
          }

          v112 = *v2;
          bpf_set_error(*v128, "invalid 802.11 subtype value 0x%02x");
          break;
        case 0x8Du:
          v83 = *v2;
          if (!*v2)
          {
            break;
          }

          v84 = *(v2 - 12);
          if (v84)
          {
            v85 = &dword_29EF6D0D0;
            v86 = 3;
            while (--v86)
            {
              v87 = v85 + 4;
              v88 = *v85;
              v85 += 4;
              if (v84 == v88)
              {
                v125 = v20;
                v44 = v19;
                v45 = v18;
                v89 = *(v87 - 1);
                goto LABEL_319;
              }
            }

            bpf_set_error(*v128, "unknown 802.11 type");
          }

          else
          {
            v125 = v20;
            v44 = v19;
            v45 = v18;
            v89 = ieee80211_mgt_subtypes;
LABEL_319:
            v105 = str2tok(v83, v89);
            if (v105 != -1)
            {
              v17 = v17 & 0xFFFFFFFF00000000 | v105;
LABEL_162:
              v18 = v45;
              v19 = v44;
LABEL_163:
              v20 = v125;
              goto LABEL_307;
            }

            v110 = *v2;
            bpf_set_error(*v128, "unknown 802.11 subtype name %s");
          }

          break;
        case 0x8Eu:
          if (!*v2)
          {
            break;
          }

          v53 = *(v16 + 5);
          v124 = *(v16 + 8);
          v54 = str2tok(*v2, ieee80211_mgt_subtypes);
          if (v54 != -1)
          {
            v55 = &ieee80211_type_subtypes;
            goto LABEL_317;
          }

          v126 = v19;
          v17 |= 0xFFFFFFFFuLL;
          v103 = &ieee80211_type_subtypes;
          v104 = 3;
          do
          {
            if (!--v104)
            {
              bpf_set_error(*v128, "unknown 802.11 type name");
              goto LABEL_340;
            }

            v55 = v103 + 4;
            v54 = str2tok(*v2, *(v103 + 3));
            v103 = v55;
          }

          while (v54 == -1);
          v19 = v126;
LABEL_317:
          v17 = v17 & 0xFFFFFFFF00000000 | *v55 | v54;
LABEL_334:
          v18 = v124;
          v20 = v53;
LABEL_307:
          v100 = &v2[-24 * v15];
          *(v100 + 3) = v17;
          v2 = (v100 + 24);
          v4 -= 2 * v15;
          *(v2 + 2) = v18;
          *(v2 + 3) = v19;
          *(v2 + 2) = v20;
          v101 = yyr1[v14] - 141;
          v102 = *v4 + yypgoto[v101];
          if (v102 <= 0x320 && yycheck[v102] == *v4)
          {
            v1 = yytable[v102];
          }

          else
          {
            v1 = yydefgoto[v101];
          }

LABEL_311:
          v4 += 2;
          continue;
        case 0x8Fu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_llc(*v128);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x90u:
          v91 = *v2;
          if (!*v2)
          {
            break;
          }

          v53 = *(v16 + 5);
          v124 = *(v16 + 8);
          if (!pcap_strcasecmp(v91, "i"))
          {
            v93 = gen_llc_i(*v128);
            if (!v93)
            {
              break;
            }

            goto LABEL_333;
          }

          if (!pcap_strcasecmp(*v2, "s"))
          {
            v93 = gen_llc_s(*v128);
            if (!v93)
            {
              break;
            }

            goto LABEL_333;
          }

          if (!pcap_strcasecmp(*v2, "u"))
          {
            v93 = gen_llc_u(*v128);
            if (!v93)
            {
              break;
            }

            goto LABEL_333;
          }

          v92 = str2tok(*v2, llc_s_subtypes);
          if (v92 != -1)
          {
            v93 = gen_llc_s_subtype(*v128, v92);
            if (!v93)
            {
              break;
            }

            goto LABEL_333;
          }

          v106 = str2tok(*v2, llc_u_subtypes);
          if (v106 == -1)
          {
            v111 = *v2;
            bpf_set_error(*v128, "unknown LLC type name %s");
            break;
          }

          v93 = gen_llc_u_subtype(*v128, v106);
          if (v93)
          {
LABEL_333:
            v17 = v93;
            goto LABEL_334;
          }

          break;
        case 0x91u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_llc_s_subtype(*v128, 5);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x92u:
        case 0x94u:
          v23 = *v2;
          goto LABEL_183;
        case 0x93u:
          v52 = *v2;
          if (!*v2)
          {
            break;
          }

          v53 = *(v16 + 5);
          v124 = *(v16 + 8);
          if (!pcap_strcasecmp(v52, "nods"))
          {
            v17 &= 0xFFFFFFFF00000000;
            goto LABEL_334;
          }

          if (!pcap_strcasecmp(*v2, "tods"))
          {
            v17 = v17 & 0xFFFFFFFF00000000 | 1;
            goto LABEL_334;
          }

          if (!pcap_strcasecmp(*v2, "fromds"))
          {
            v17 = v17 & 0xFFFFFFFF00000000 | 2;
            goto LABEL_334;
          }

          if (!pcap_strcasecmp(*v2, "dstods"))
          {
            v17 = v17 & 0xFFFFFFFF00000000 | 3;
            goto LABEL_334;
          }

          bpf_set_error(*v128, "unknown 802.11 direction");
          break;
        case 0x95u:
          v71 = *v2;
          if (!*v2)
          {
            break;
          }

          v125 = *(v16 + 5);
          v126 = v19;
          v124 = v18;
          v72 = 0;
          v73 = off_29EF6D490;
          while (pcap_strcasecmp(v71, *v73))
          {
            --v72;
            ++v73;
            if (v72 == -17)
            {
              bpf_set_error(*v128, "unknown PF reason %s");
              goto LABEL_340;
            }
          }

          v17 = (v17 & 0xFFFFFFFF00000000) - v72;
          v18 = v124;
          v19 = v126;
          goto LABEL_163;
        case 0x96u:
          v64 = *v2;
          if (!*v2)
          {
            break;
          }

          v65 = *(v16 + 5);
          v124 = *(v16 + 8);
          if (pcap_strcasecmp(v64, "pass") && pcap_strcasecmp(v64, "accept"))
          {
            if (pcap_strcasecmp(v64, "drop") && pcap_strcasecmp(v64, "block"))
            {
              if (pcap_strcasecmp(v64, "rdr"))
              {
                if (pcap_strcasecmp(v64, "nat"))
                {
                  if (pcap_strcasecmp(v64, "binat"))
                  {
                    if (pcap_strcasecmp(v64, "nordr"))
                    {
                      bpf_set_error(*v128, "unknown PF action %s");
                      break;
                    }

                    v66 = 9;
                  }

                  else
                  {
                    v66 = 6;
                  }
                }

                else
                {
                  v66 = 4;
                }
              }

              else
              {
                v66 = 8;
              }
            }

            else
            {
              v66 = 1;
            }
          }

          else
          {
            v66 = 0;
          }

          v18 = v124;
          v20 = v65;
          v17 = v66 | v17 & 0xFFFFFFFF00000000;
          goto LABEL_307;
        case 0x98u:
        case 0x9Bu:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x30;
          goto LABEL_307;
        case 0x9Du:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_loadi(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0x9Fu:
          v125 = *(v16 + 5);
          v44 = v19;
          v45 = v18;
          v46 = 1;
          v47 = gen_load(*v128, *(v2 - 18), *(v2 - 3), 1);
          if (!v47)
          {
            goto LABEL_342;
          }

LABEL_161:
          v17 = v47;
          goto LABEL_162;
        case 0xA0u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_load(*v128, *(v2 - 30), *(v2 - 9), *(v2 - 6));
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0xA1u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 0;
          goto LABEL_248;
        case 0xA2u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 16;
          goto LABEL_248;
        case 0xA3u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 32;
          goto LABEL_248;
        case 0xA4u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 48;
          goto LABEL_248;
        case 0xA5u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 144;
          goto LABEL_248;
        case 0xA6u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 80;
          goto LABEL_248;
        case 0xA7u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 64;
          goto LABEL_248;
        case 0xA8u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 160;
          goto LABEL_248;
        case 0xA9u:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 96;
          goto LABEL_248;
        case 0xAAu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v56 = *(v2 - 6);
          v57 = *v2;
          v58 = *v128;
          v59 = 112;
LABEL_248:
          v51 = gen_arth(v58, v59, v56, v57);
          if (v51)
          {
            goto LABEL_249;
          }

          break;
        case 0xABu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_neg(*v128, *v2);
          if (!v51)
          {
            break;
          }

          goto LABEL_249;
        case 0xACu:
          v17 = *(v2 - 3);
          goto LABEL_307;
        case 0xADu:
          v48 = *(v16 + 5);
          v49 = *(v16 + 9);
          v50 = *(v16 + 8);
          v51 = gen_loadlen(*v128);
          if (!v51)
          {
            break;
          }

LABEL_249:
          v17 = v51;
          goto LABEL_250;
        case 0xAFu:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x7C;
          goto LABEL_307;
        case 0xB0u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x3C;
          goto LABEL_307;
        case 0xB1u:
          v17 = v17 & 0xFFFFFFFF00000000 | 0x3E;
          goto LABEL_307;
        case 0xB2u:
          v21 = 61;
          goto LABEL_275;
        case 0xB4u:
          v23 = *(v2 - 6);
LABEL_183:
          v22 = v17 & 0xFFFFFFFF00000000;
LABEL_184:
          v17 = v22 | v23;
          goto LABEL_307;
        case 0xBEu:
          v21 = 70;
          goto LABEL_275;
        case 0xBFu:
          v21 = 71;
LABEL_275:
          v17 = v17 & 0xFFFFFFFF00000000 | v21;
          goto LABEL_307;
        case 0xC0u:
          v81 = 0x3300000000;
          goto LABEL_230;
        case 0xC1u:
          v81 = 0x3400000000;
LABEL_230:
          v17 = v81 & 0xFFFFFFFF00000000 | v17;
          goto LABEL_307;
        case 0xC3u:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v60 = *(v2 - 11);
          v61 = *v2;
          v63 = *(v2 - 6);
          v62 = *v128;
          goto LABEL_206;
        case 0xC4u:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v46 = 1;
          v82 = gen_atmfield_code(*v128, *(v2 - 11), *v2, *(v2 - 6), 1);
          if (v82)
          {
            goto LABEL_242;
          }

          goto LABEL_342;
        case 0xC5u:
        case 0xDAu:
          v20 = *(v2 - 1);
LABEL_221:
          v17 |= 0xFFFFFFFFuLL;
          goto LABEL_307;
        case 0xC6u:
          v60 = *(v2 - 5);
          v17 = *(v16 + 3) | (v60 << 32);
          if (v60 - 51 > 1)
          {
            goto LABEL_307;
          }

          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v61 = *v2;
          v62 = *v128;
          v63 = 16;
LABEL_206:
          v80 = gen_atmfield_code(v62, v60, v61, v63, 0);
          if (v80)
          {
            goto LABEL_207;
          }

          break;
        case 0xCFu:
          v18 = 1;
          goto LABEL_307;
        case 0xD0u:
          v18 = 2;
          goto LABEL_307;
        case 0xD1u:
          v18 = 3;
          goto LABEL_307;
        case 0xD2u:
          v18 = 4;
          goto LABEL_307;
        case 0xD3u:
          v18 = 5;
          goto LABEL_307;
        case 0xD4u:
          v18 = 6;
          goto LABEL_307;
        case 0xD5u:
          v18 = 7;
          goto LABEL_307;
        case 0xD6u:
          v18 = 8;
          goto LABEL_307;
        case 0xD8u:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v76 = *(v2 - 10);
          v77 = *v2;
          v78 = *(v2 - 6);
          v79 = *v128;
          goto LABEL_203;
        case 0xD9u:
          v37 = *(v16 + 9);
          v38 = *(v16 + 8);
          v46 = 1;
          v82 = gen_mtp3field_code(*v128, *(v2 - 10), *v2, *(v2 - 6), 1);
          if (!v82)
          {
            goto LABEL_342;
          }

LABEL_242:
          v20 = v82;
          goto LABEL_306;
        case 0xDBu:
          v18 = *(v2 - 4);
          if ((v18 - 1) > 7)
          {
            goto LABEL_307;
          }

          v37 = *(v16 + 9);
          v77 = *v2;
          v79 = *v128;
          v38 = *(v2 - 4);
          v76 = v38;
          v78 = 16;
LABEL_203:
          v80 = gen_mtp3field_code(v79, v76, v77, v78, 0);
          if (!v80)
          {
            break;
          }

LABEL_207:
          v20 = v80;
          goto LABEL_306;
        default:
          goto LABEL_307;
      }

LABEL_340:
      v46 = 1;
      goto LABEL_342;
    }

    break;
  }

  if (v12 != 34)
  {
    if (v130)
    {
      v13 = -2;
    }

    else
    {
      v13 = 0;
    }

    v130 = v13;
    *(v2 + 24) = v131;
    *(v2 + 5) = v132;
    v2 += 24;
    goto LABEL_311;
  }

  v46 = 0;
LABEL_342:
  if (v5 != v134)
  {
    free(v5);
  }

  v107 = *MEMORY[0x29EDCA608];
  return v46;
}

uint64_t str2tok(unsigned __int8 *a1, unsigned int *a2)
{
  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2;
  while (pcap_strcasecmp(v3, a1))
  {
    v3 = *(v4 + 3);
    v4 += 4;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = *v4;
  if (result == -1)
  {
    abort();
  }

  return result;
}

uint64_t pcap_lex(uint64_t a1, uint64_t a2)
{
  *(a2 + 152) = a1;
  if (!*(a2 + 80))
  {
    *(a2 + 80) = 1;
    if (!*(a2 + 84))
    {
      *(a2 + 84) = 1;
    }

    if (!*(a2 + 8))
    {
      *(a2 + 8) = *MEMORY[0x29EDCA618];
    }

    if (!*(a2 + 16))
    {
      *(a2 + 16) = *MEMORY[0x29EDCA620];
    }

    v3 = *(a2 + 40);
    if (!v3 || (v4 = *(a2 + 24), (v5 = *(v3 + 8 * v4)) == 0))
    {
      pcap_ensure_buffer_stack(a2);
      buffer = pcap__create_buffer(*(a2 + 8), 0x4000, a2);
      v4 = *(a2 + 24);
      *(*(a2 + 40) + 8 * v4) = buffer;
      v3 = *(a2 + 40);
      v5 = *(v3 + 8 * v4);
    }

    *(a2 + 56) = *(v5 + 32);
    v7 = *(v5 + 16);
    *(a2 + 72) = v7;
    *(a2 + 136) = v7;
    *(a2 + 8) = **(v3 + 8 * v4);
    *(a2 + 48) = *v7;
  }

  v81 = (a2 + 72);
  v8 = (a2 + 120);
  v9 = yy_nxt;
LABEL_13:
  v10 = *(a2 + 72);
  *v10 = *(a2 + 48);
  previous_state = *(a2 + 84);
  v12 = v10;
  do
  {
LABEL_14:
    v13 = yy_ec[*v10];
    if (yy_accept[previous_state])
    {
      *(a2 + 112) = previous_state;
      *(a2 + 120) = v10;
    }

    v14 = previous_state;
    v15 = yy_base[previous_state] + v13;
    if (previous_state != yy_chk[v15])
    {
      do
      {
        v14 = yy_def[v14];
        if (v14 >= 1785)
        {
          v13 = *(&yy_meta + v13);
        }

        v15 = yy_base[v14] + v13;
      }

      while (yy_chk[v15] != v14);
    }

    previous_state = v9[v15];
    ++v10;
  }

  while (previous_state != 1784);
  while (1)
  {
    v16 = *(a2 + 112);
    v17 = v8;
LABEL_22:
    v18 = *v17;
    v19 = yy_accept[v16];
    *(a2 + 136) = v12;
    *(a2 + 64) = v18 - v12;
    *(a2 + 48) = *v18;
    *v18 = 0;
    *(a2 + 72) = v18;
LABEL_23:
    switch(v19)
    {
      case 0:
        *v18 = *(a2 + 48);
        continue;
      case 1:
        return 258;
      case 2:
        return 259;
      case 3:
      case 4:
        return 311;
      case 5:
        return 271;
      case 6:
        return 272;
      case 7:
        return 273;
      case 8:
        return 274;
      case 9:
        return 275;
      case 10:
        return 276;
      case 11:
        return 277;
      case 12:
        return 278;
      case 13:
        return 279;
      case 14:
        return 280;
      case 15:
        return 281;
      case 16:
        return 282;
      case 17:
        return 360;
      case 18:
        return 323;
      case 19:
        return 324;
      case 20:
        return 325;
      case 21:
        return 326;
      case 22:
        return 283;
      case 23:
        return 284;
      case 24:
        return 285;
      case 25:
        return 286;
      case 26:
        return 287;
      case 27:
        return 288;
      case 28:
        return 289;
      case 29:
        return 332;
      case 30:
      case 31:
        return 333;
      case 32:
      case 33:
        return 335;
      case 34:
        return 336;
      case 35:
        return 337;
      case 36:
        return 338;
      case 37:
        return 339;
      case 38:
        return 340;
      case 39:
        return 341;
      case 40:
        return 342;
      case 41:
        return 334;
      case 42:
        return 343;
      case 43:
        return 344;
      case 44:
        return 345;
      case 45:
        return 260;
      case 46:
        return 262;
      case 47:
        return 263;
      case 48:
        return 264;
      case 49:
        return 265;
      case 50:
        return 268;
      case 51:
        return 269;
      case 52:
        return 261;
      case 53:
        return 302;
      case 54:
        return 303;
      case 55:
        return 304;
      case 56:
        return 305;
      case 57:
        return 306;
      case 58:
        return 307;
      case 59:
        return 308;
      case 60:
        return 309;
      case 61:
        return 310;
      case 62:
        return 266;
      case 63:
        return 267;
      case 64:
        return 270;
      case 65:
        return 290;
      case 66:
        return 291;
      case 67:
        return 376;
      case 68:
        return 377;
      case 69:
        return 33;
      case 70:
        return 322;
      case 71:
        return 293;
      case 72:
        return 294;
      case 73:
        return 295;
      case 74:
        return 327;
      case 75:
        return 328;
      case 76:
        return 329;
      case 77:
        return 330;
      case 78:
        return 331;
      case 79:
        return 346;
      case 80:
        return 347;
      case 81:
        return 348;
      case 82:
        return 349;
      case 83:
        return 354;
      case 84:
        return 355;
      case 85:
        return 352;
      case 86:
        return 353;
      case 87:
        return 350;
      case 88:
        return 351;
      case 89:
        return 358;
      case 90:
        return 359;
      case 91:
        return 356;
      case 92:
        return 357;
      case 93:
        return 296;
      case 94:
        return 297;
      case 95:
        return 298;
      case 96:
        return 299;
      case 97:
        return 300;
      case 98:
        return 301;
      case 99:
        return 361;
      case 100:
      case 101:
        return 362;
      case 102:
        return 363;
      case 103:
        return 364;
      case 104:
        return 365;
      case 105:
        return 366;
      case 106:
        return 367;
      case 107:
        return 368;
      case 108:
        return 369;
      case 109:
        return 370;
      case 110:
        return 371;
      case 111:
        return 372;
      case 112:
        return 373;
      case 113:
        return 374;
      case 114:
        goto LABEL_13;
      case 115:
        return **(a2 + 136);
      case 116:
        return 312;
      case 117:
        return 313;
      case 118:
        return 314;
      case 119:
        return 61;
      case 120:
        return 320;
      case 121:
        return 321;
      case 122:
        **(a2 + 152) = sdup(*a2, *(a2 + 136));
        return 319;
      case 123:
        **(a2 + 152) = sdup(*a2, *(a2 + 136));
        return 316;
      case 124:
        v71 = *(a2 + 136);
        v72 = *(a2 + 152);
        v73 = *a2;

        return stou(v71, v72, v73);
      case 125:
        **(a2 + 152) = sdup(*a2, *(a2 + 136));
        return 317;
      case 126:
        v82 = 0;
        memset(&v83.ai_socktype, 0, 40);
        *&v83.ai_flags = 0x1E00000004;
        if (getaddrinfo(*(a2 + 136), 0, &v83, &v82))
        {
          bpf_set_error(*a2, "bogus IPv6 address %s", *(a2 + 136));
          v68 = 0;
        }

        else
        {
          freeaddrinfo(v82);
          v68 = sdup(*a2, *(a2 + 136));
        }

        **(a2 + 152) = v68;
        return 318;
      case 127:
        bpf_set_error(*a2, "bogus ethernet address %s", *(a2 + 136));
        **(a2 + 152) = 0;
        return 316;
      case 128:
      case 130:
      case 145:
        **(a2 + 152) = 0;
        return 292;
      case 129:
      case 146:
      case 147:
      case 177:
        v65 = *(a2 + 152);
        v66 = 1;
        goto LABEL_265;
      case 131:
      case 149:
        v65 = *(a2 + 152);
        v66 = 3;
        goto LABEL_265;
      case 132:
      case 150:
      case 179:
        v65 = *(a2 + 152);
        v66 = 4;
        goto LABEL_265;
      case 133:
        v65 = *(a2 + 152);
        v66 = 5;
        goto LABEL_265;
      case 134:
      case 180:
        v65 = *(a2 + 152);
        v66 = 8;
        goto LABEL_265;
      case 135:
        v65 = *(a2 + 152);
        v66 = 9;
        goto LABEL_265;
      case 136:
        v65 = *(a2 + 152);
        v66 = 10;
        goto LABEL_265;
      case 137:
        v65 = *(a2 + 152);
        v66 = 11;
        goto LABEL_265;
      case 138:
        v65 = *(a2 + 152);
        v66 = 12;
        goto LABEL_265;
      case 139:
      case 176:
        v65 = *(a2 + 152);
        v66 = 13;
        goto LABEL_265;
      case 140:
        v65 = *(a2 + 152);
        v66 = 14;
        goto LABEL_265;
      case 141:
        v65 = *(a2 + 152);
        v66 = 15;
        goto LABEL_265;
      case 142:
      case 181:
        v65 = *(a2 + 152);
        v66 = 16;
        goto LABEL_265;
      case 143:
        v65 = *(a2 + 152);
        v66 = 17;
        goto LABEL_265;
      case 144:
        v65 = *(a2 + 152);
        v66 = 18;
        goto LABEL_265;
      case 148:
      case 178:
        v65 = *(a2 + 152);
        v66 = 2;
        goto LABEL_265;
      case 151:
      case 184:
        v65 = *(a2 + 152);
        v66 = 128;
        goto LABEL_265;
      case 152:
        v65 = *(a2 + 152);
        v66 = 129;
        goto LABEL_265;
      case 153:
        v65 = *(a2 + 152);
        v66 = 130;
        goto LABEL_265;
      case 154:
        v65 = *(a2 + 152);
        v66 = 131;
        goto LABEL_265;
      case 155:
        v65 = *(a2 + 152);
        v66 = 132;
        goto LABEL_265;
      case 156:
        v65 = *(a2 + 152);
        v66 = 133;
        goto LABEL_265;
      case 157:
        v65 = *(a2 + 152);
        v66 = 134;
        goto LABEL_265;
      case 158:
        v65 = *(a2 + 152);
        v66 = 135;
        goto LABEL_265;
      case 159:
        v65 = *(a2 + 152);
        v66 = 136;
        goto LABEL_265;
      case 160:
        v65 = *(a2 + 152);
        v66 = 137;
        goto LABEL_265;
      case 161:
        v65 = *(a2 + 152);
        v66 = 138;
        goto LABEL_265;
      case 162:
        v65 = *(a2 + 152);
        v66 = 139;
        goto LABEL_265;
      case 163:
        v65 = *(a2 + 152);
        v66 = 140;
        goto LABEL_265;
      case 164:
        v65 = *(a2 + 152);
        v66 = 141;
        goto LABEL_265;
      case 165:
        v65 = *(a2 + 152);
        v66 = 142;
        goto LABEL_265;
      case 166:
        v65 = *(a2 + 152);
        v66 = 143;
        goto LABEL_265;
      case 167:
        v65 = *(a2 + 152);
        v66 = 144;
        goto LABEL_265;
      case 168:
        v65 = *(a2 + 152);
        v66 = 145;
        goto LABEL_265;
      case 169:
        v65 = *(a2 + 152);
        v66 = 146;
        goto LABEL_265;
      case 170:
        v65 = *(a2 + 152);
        v66 = 147;
        goto LABEL_265;
      case 171:
        v65 = *(a2 + 152);
        v66 = 148;
        goto LABEL_265;
      case 172:
        v65 = *(a2 + 152);
        v66 = 149;
        goto LABEL_265;
      case 173:
        v65 = *(a2 + 152);
        v66 = 151;
        goto LABEL_265;
      case 174:
        v65 = *(a2 + 152);
        v66 = 152;
        goto LABEL_265;
      case 175:
        v65 = *(a2 + 152);
        v66 = 153;
        goto LABEL_265;
      case 182:
        v65 = *(a2 + 152);
        v66 = 32;
        goto LABEL_265;
      case 183:
        v65 = *(a2 + 152);
        v66 = 64;
LABEL_265:
        *v65 = v66;
        return 292;
      case 185:
        v69 = *a2;
        v70 = *(a2 + 136);
        goto LABEL_147;
      case 186:
        v69 = *a2;
        v70 = (*(a2 + 136) + 1);
LABEL_147:
        **(a2 + 152) = sdup(v69, v70);
        return 315;
      case 187:
        return 375;
      case 188:
        fwrite(*(a2 + 136), *(a2 + 64), 1uLL, *(a2 + 16));
        goto LABEL_13;
      case 189:
        v77 = *(a2 + 136);
        v80 = v18;
        *v18 = *(a2 + 48);
        v20 = *(a2 + 40);
        v21 = *(a2 + 24);
        v22 = *(v20 + 8 * v21);
        if (*(v22 + 64))
        {
          v23 = *(a2 + 56);
        }

        else
        {
          v23 = *(v22 + 32);
          *(a2 + 56) = v23;
          *v22 = *(a2 + 8);
          v22 = *(v20 + 8 * v21);
          *(v22 + 64) = 1;
        }

        v24 = *v81;
        v25 = *(v22 + 8);
        if (*v81 > &v25[v23])
        {
          if (v24 > &v25[v23 + 1])
          {
            yy_fatal_error("fatal flex scanner internal error--end of buffer missed");
          }

          v26 = *(a2 + 136);
          if (*(v22 + 60))
          {
            v27 = ~v26 + v24;
            if (v27 >= 1)
            {
              v28 = ~v26 + v24;
              do
              {
                v29 = *v26++;
                *v25++ = v29;
                --v28;
              }

              while (v28);
              v22 = *(*(a2 + 40) + 8 * *(a2 + 24));
            }

            v78 = v27;
            v79 = v8;
            if (*(v22 + 64) == 2)
            {
              *(a2 + 56) = 0;
              goto LABEL_36;
            }

            v32 = ~v27;
            v33 = *(v22 + 24);
            v34 = v33 + ~v27;
            v75 = v27;
            if (!v34)
            {
              v35 = *v81;
              do
              {
                if (!*(v22 + 40))
                {
                  *(v22 + 8) = 0;
LABEL_273:
                  yy_fatal_error("fatal error - scanner input buffer overflow");
                }

                v36 = v12;
                v37 = *(v22 + 8);
                v38 = 2 * v33;
                *(v22 + 24) = v38;
                v39 = malloc_type_realloc(v37, v38 + 2, 0x46FFEC8BuLL);
                *(v22 + 8) = v39;
                if (!v39)
                {
                  goto LABEL_273;
                }

                v35 = &v39[v35 - v37];
                *(a2 + 72) = v35;
                v22 = *(*(a2 + 40) + 8 * *(a2 + 24));
                v33 = *(v22 + 24);
                v34 = v33 + v32;
                v12 = v36;
              }

              while (!(v33 + v32));
              v9 = yy_nxt;
            }

            v74 = v12;
            if (v34 >= 0x2000)
            {
              v40 = 0x2000;
            }

            else
            {
              v40 = v34;
            }

            if (*(v22 + 44))
            {
              v30 = 0;
              while (1)
              {
                v41 = getc(*(a2 + 8));
                if (v41 == -1 || v41 == 10)
                {
                  break;
                }

                *(*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v78 + v30++) = v41;
                if (v40 == v30)
                {
                  v30 = v40;
                  break;
                }
              }

              if (v41 == -1)
              {
                v45 = ferror(*(a2 + 8));
                v12 = v74;
                if (v45)
                {
LABEL_276:
                  yy_fatal_error("input in flex scanner failed");
                }
              }

              else
              {
                if (v41 == 10)
                {
                  *(*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v78 + v30++) = 10;
                }

                v12 = v74;
              }

              *(a2 + 56) = v30;
LABEL_68:
              v22 = *(*(a2 + 40) + 8 * *(a2 + 24));
              *(v22 + 32) = v30;
              if (v30)
              {
                v31 = 0;
                v27 = v75;
                goto LABEL_72;
              }

              v27 = v75;
              if (!v75)
              {
LABEL_71:
                v46 = v27;
                v47 = v12;
                pcap_restart(*(a2 + 8), a2);
                v27 = v46;
                v12 = v47;
                v30 = *(a2 + 56);
                v22 = *(*(a2 + 40) + 8 * *(a2 + 24));
                v31 = 1;
LABEL_72:
                v48 = v30 + v27;
                if (v48 <= *(v22 + 24))
                {
                  v56 = *(v22 + 8);
                }

                else
                {
                  v76 = v31;
                  v49 = v9;
                  v50 = v12;
                  v51 = v48 + (v30 >> 1);
                  v52 = malloc_type_realloc(*(v22 + 8), v51, 0x46FFEC8BuLL);
                  v53 = *(a2 + 40);
                  v54 = *(a2 + 24);
                  *(*(v53 + 8 * v54) + 8) = v52;
                  v55 = *(v53 + 8 * v54);
                  v56 = *(v55 + 8);
                  if (!v56)
                  {
                    yy_fatal_error("out of dynamic memory in yy_get_next_buffer()");
                  }

                  *(v55 + 24) = v51 - 2;
                  v48 = *(a2 + 56) + v78;
                  v12 = v50;
                  v9 = v49;
                  v31 = v76;
                }

                *(a2 + 56) = v48;
                *(v56 + v48) = 0;
                *(*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + *(a2 + 56) + 1) = 0;
                v57 = *(a2 + 40);
                v58 = *(a2 + 24);
                v26 = *(*(v57 + 8 * v58) + 8);
                *(a2 + 136) = v26;
                v8 = v79;
                if (v31 == 1)
                {
LABEL_77:
                  *(a2 + 88) = 0;
                  *(a2 + 72) = v26;
                  v19 = (*(a2 + 84) - 1) / 2 + 190;
                  v18 = v80;
                  goto LABEL_23;
                }

                if (!v31)
                {
                  *(a2 + 72) = &v26[~v77 + v80];
                  previous_state = yy_get_previous_state(a2);
                  v10 = *(a2 + 72);
                  v12 = *(a2 + 136);
                  goto LABEL_14;
                }

                v25 = *(*(v57 + 8 * v58) + 8);
                v23 = *(a2 + 56);
LABEL_81:
                *(a2 + 72) = &v25[v23];
                v16 = yy_get_previous_state(a2);
                v12 = *(a2 + 136);
                v17 = (a2 + 72);
                goto LABEL_22;
              }
            }

            else
            {
              *__error() = 0;
              v43 = fread((*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v75), 1uLL, v40, *(a2 + 8));
              v30 = v43;
              *(a2 + 56) = v43;
              v12 = v74;
              if (v43 << 32)
              {
                goto LABEL_68;
              }

              while (ferror(*(a2 + 8)))
              {
                if (*__error() != 4)
                {
                  goto LABEL_276;
                }

                *__error() = 0;
                clearerr(*(a2 + 8));
                v44 = fread((*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v78), 1uLL, v40, *(a2 + 8));
                v30 = v44;
                *(a2 + 56) = v44;
                if (v44 << 32)
                {
                  v12 = v74;
                  goto LABEL_68;
                }
              }

              v22 = *(*(a2 + 40) + 8 * *(a2 + 24));
              v12 = v74;
              v27 = v75;
LABEL_36:
              *(v22 + 32) = 0;
              if (!v27)
              {
                goto LABEL_71;
              }
            }

            v30 = 0;
            v31 = 2;
            *(v22 + 64) = 2;
            goto LABEL_72;
          }

          if (v24 - v26 == 1)
          {
            goto LABEL_77;
          }

          goto LABEL_81;
        }

        *(a2 + 72) = *(a2 + 136) + ~v77 + v80;
        v59 = yy_get_previous_state(a2);
        if (yy_accept[v59])
        {
          v60 = *(a2 + 72);
          *(a2 + 112) = v59;
          *(a2 + 120) = v60;
        }

        v61 = v59;
        v62 = yy_base[v59] + 1;
        if (v59 != yy_chk[v62])
        {
          do
          {
            v63 = yy_def[v61];
            v61 = v63;
            v62 = yy_base[v63] + 1;
          }

          while (v63 != yy_chk[v62]);
        }

        v64 = v9[v62];
        v12 = *(a2 + 136);
        if (v9[v62] && v64 != 1784)
        {
          previous_state = v64;
          v10 = (*v81 + 1);
          *v81 = v10;
          goto LABEL_14;
        }

        break;
      case 190:
        return 0;
      default:
        yy_fatal_error("fatal flex scanner internal error--no action found");
    }
  }
}

double pcap_ensure_buffer_stack(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x46FFEC8BuLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      yy_fatal_error("out of dynamic memory in yyensure_buffer_stack()");
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x8995397CuLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_299804010;
  }

  return result;
}

uint64_t pcap__create_buffer(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0x8995397CuLL);
  if (!v6 || (v7 = v6, v6[6] = a2, v8 = malloc_type_malloc(a2 + 2, 0x8995397CuLL), (*(v7 + 8) = v8) == 0))
  {
    yy_fatal_error("out of dynamic memory in yy_create_buffer()");
  }

  *(v7 + 40) = 1;
  pcap__init_buffer(v7, a1, a3);
  return v7;
}

uint64_t stou(unsigned __int8 *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (v3 != 48)
    {
      LOBYTE(v8) = *a1;
      v9 = 1;
      v3 = 0;
      while (1)
      {
        v10 = v8 - 48;
        if (v3 > 0x19999999 || v3 == 429496729 && v10 >= 6)
        {
          goto LABEL_28;
        }

        v3 = v10 + 10 * v3;
        v8 = a1[v9++];
        if (!v8)
        {
          goto LABEL_31;
        }
      }
    }

    v3 = a1[1];
    if (a1[1])
    {
      if (v3 != 88 && v3 != 120)
      {
        LOBYTE(v11) = a1[1];
        v12 = 2;
        v3 = 0;
        while ((v11 & 0xF8) == 0x30)
        {
          if (v3 >> 29)
          {
            goto LABEL_28;
          }

          v3 = (v11 - 48) | (8 * v3);
          v11 = a1[v12++];
          if (!v11)
          {
            goto LABEL_31;
          }
        }

        bpf_set_error(a3, "number %s contains non-octal digit");
        return 375;
      }

      LOBYTE(v4) = a1[2];
      if (v4)
      {
        v3 = 0;
        v5 = 3;
        while (!(v3 >> 28))
        {
          if ((v4 - 97) >= 6u)
          {
            v6 = -55;
          }

          else
          {
            v6 = -87;
          }

          if ((v4 - 48) >= 0xAu)
          {
            v7 = v6;
          }

          else
          {
            v7 = -48;
          }

          v3 = v7 + v4 + 16 * v3;
          v4 = a1[v5++];
          if (!v4)
          {
            goto LABEL_31;
          }
        }

LABEL_28:
        bpf_set_error(a3, "number %s overflows 32 bits");
        return 375;
      }

      v3 = 0;
    }
  }

LABEL_31:
  *a2 = v3;
  return 292;
}

uint64_t yy_get_previous_state(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[*v2];
      }

      else
      {
        v4 = 1u;
      }

      if (yy_accept[v1])
      {
        *(a1 + 112) = v1;
        *(a1 + 120) = v2;
      }

      v5 = v1;
      v6 = yy_base[v1] + v4;
      if (v1 != yy_chk[v6])
      {
        do
        {
          v5 = yy_def[v5];
          if (v5 >= 1785)
          {
            v4 = *(&yy_meta + v4);
          }

          v6 = yy_base[v5] + v4;
        }

        while (yy_chk[v6] != v5);
      }

      v1 = yy_nxt[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

int *pcap_restart(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (pcap_ensure_buffer_stack(a2), buffer = pcap__create_buffer(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = buffer, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = pcap__init_buffer(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 56) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 72) = v12;
  *(a2 + 136) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *pcap__init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  pcap__flush_buffer(a1, a3);
  *a1 = a2;
  *(a1 + 60) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

void pcap__switch_to_buffer(uint64_t a1, uint64_t a2)
{
  pcap_ensure_buffer_stack(a2);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = *(v4 + 8 * v5);
    if (v6 != a1)
    {
      if (v6)
      {
        **(a2 + 72) = *(a2 + 48);
        v4 = *(a2 + 40);
        v5 = *(a2 + 24);
        *(*(v4 + 8 * v5) + 16) = *(a2 + 72);
        *(*(v4 + 8 * v5) + 32) = *(a2 + 56);
      }

      *(v4 + 8 * v5) = a1;
      v7 = *(a2 + 40);
      v8 = *(v7 + 8 * v5);
      *(a2 + 56) = *(v8 + 32);
      v9 = *(v8 + 16);
      *(a2 + 72) = v9;
      *(a2 + 136) = v9;
      *(a2 + 8) = **(v7 + 8 * v5);
      *(a2 + 48) = *v9;
      *(a2 + 88) = 1;
    }
  }
}

void pcap__delete_buffer(void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a2 + 24));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1)
    {
      *(v3 + 8 * *(a2 + 24)) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t pcap__flush_buffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 56) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 72) = v6;
      *(a2 + 136) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void pcap_push_buffer_state(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    pcap_ensure_buffer_stack(a2);
    v4 = *(a2 + 40);
    v5 = *(a2 + 24);
    if (*(v4 + 8 * v5))
    {
      **(a2 + 72) = *(a2 + 48);
      v4 = *(a2 + 40);
      v6 = *(a2 + 24);
      *(*(v4 + 8 * v6) + 16) = *(a2 + 72);
      *(*(v4 + 8 * v6) + 32) = *(a2 + 56);
      v5 = v6 + 1;
      *(a2 + 24) = v6 + 1;
    }

    *(v4 + 8 * v5) = a1;
    v7 = *(a2 + 40);
    v8 = *(v7 + 8 * v5);
    *(a2 + 56) = *(v8 + 32);
    v9 = *(v8 + 16);
    *(a2 + 72) = v9;
    *(a2 + 136) = v9;
    *(a2 + 8) = **(v7 + 8 * v5);
    *(a2 + 48) = *v9;
    *(a2 + 88) = 1;
  }
}

void pcap_pop_buffer_state(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      pcap__delete_buffer(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 56) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 72) = v7;
          *(a1 + 136) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 88) = 1;
        }
      }
    }
  }
}

char *pcap__scan_buffer(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 < 2 || *(a1 + v3) || *(a1 + a2 - 1))
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x48uLL, 0x8995397CuLL);
  if (!v8)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_buffer()");
  }

  v5 = v8;
  *(v8 + 6) = v3;
  *(v8 + 1) = a1;
  *(v8 + 2) = a1;
  *v8 = 0;
  *(v8 + 4) = v3;
  *(v8 + 5) = 0;
  *(v8 + 12) = 1;
  *(v8 + 60) = 0;
  pcap__switch_to_buffer(v8, a3);
  return v5;
}

char *pcap__scan_string(char *a1, uint64_t a2)
{
  v4 = strlen(a1);

  return pcap__scan_bytes(a1, v4, a2);
}

char *pcap__scan_bytes(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(a2 + 2, 0x8995397CuLL);
  if (!v6)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_bytes()");
  }

  if (a2)
  {
    v7 = v6;
    v8 = a2;
    do
    {
      v9 = *a1++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *&v6[a2] = 0;
  result = pcap__scan_buffer(v6, a2 + 2, a3);
  if (!result)
  {
    yy_fatal_error("bad buffer in yy_scan_bytes()");
  }

  *(result + 10) = 1;
  return result;
}

uint64_t pcap_get_lineno(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8 * *(a1 + 24))) != 0)
  {
    return *(v2 + 52);
  }

  else
  {
    return 0;
  }
}

uint64_t pcap_get_column(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 8 * *(a1 + 24))) != 0)
  {
    return *(v2 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t pcap_set_lineno(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!v2 || (v3 = *(v2 + 8 * *(a2 + 24))) == 0)
  {
    yy_fatal_error("yyset_lineno called with no buffer");
  }

  *(v3 + 52) = result;
  return result;
}

uint64_t pcap_set_column(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!v2 || (v3 = *(v2 + 8 * *(a2 + 24))) == 0)
  {
    yy_fatal_error("yyset_column called with no buffer");
  }

  *(v3 + 56) = result;
  return result;
}

uint64_t pcap_lex_init(uint64_t *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0xA0uLL, 0x8995397CuLL);
    *a1 = v2;
    if (v2)
    {
      v3 = v2;
      result = 0;
      v3[8] = 0u;
      v3[9] = 0u;
      v3[6] = 0u;
      v3[7] = 0u;
      v3[4] = 0u;
      v3[5] = 0u;
      v3[2] = 0u;
      v3[3] = 0u;
      *v3 = 0u;
      v3[1] = 0u;
      v5 = *a1;
      *(v5 + 92) = 0;
      *(v5 + 96) = 0;
      *(v5 + 104) = 0;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      return result;
    }

    v6 = __error();
    v7 = 12;
  }

  else
  {
    v6 = __error();
    v7 = 22;
  }

  *v6 = v7;
  return 1;
}

uint64_t pcap_lex_init_extra(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = malloc_type_malloc(0xA0uLL, 0x8995397CuLL);
    *a2 = v4;
    if (v4)
    {
      v5 = v4;
      result = 0;
      v5[8] = 0u;
      v5[9] = 0u;
      v5[6] = 0u;
      v5[7] = 0u;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      **a2 = a1;
      v7 = *a2;
      *(v7 + 23) = 0;
      *(v7 + 24) = 0;
      v7[13] = 0;
      *(v7 + 1) = 0u;
      *(v7 + 3) = 0u;
      v7[5] = 0;
      v7[9] = 0;
      v7[10] = 0;
      return result;
    }

    v8 = __error();
    v9 = 12;
  }

  else
  {
    v8 = __error();
    v9 = 22;
  }

  *v8 = v9;
  return 1;
}

uint64_t pcap_lex_destroy(uint64_t a1)
{
  for (i = *(a1 + 40); i; i = *(a1 + 40))
  {
    if (!i[*(a1 + 24)])
    {
      break;
    }

    pcap__delete_buffer(i[*(a1 + 24)], a1);
    *(*(a1 + 40) + 8 * *(a1 + 24)) = 0;
    pcap_pop_buffer_state(a1);
  }

  free(i);
  *(a1 + 40) = 0;
  free(*(a1 + 104));
  free(a1);
  return 0;
}
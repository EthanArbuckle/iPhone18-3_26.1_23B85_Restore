uint64_t pdwriter_open_stream(FILE *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    pdwriter_open_stream_cold_1();
  }

  if (!a2)
  {
    pdwriter_open_stream_cold_1();
  }

  v6 = malloc_type_calloc(1uLL, 0x2C8uLL, 0x107004022D0B21BuLL);
  v7 = v6;
  if (v6)
  {
    v6[172] = 0;
    *(v6 + 5) = a1;
    json_init(v6, a1, 0, 2);
    *(v7 + 696) = -1;
    json_start_object(v7);
    json_member_str(v7, "$schema", "https://perfdata.apple.com/schema/draft-03.json", v8, v9, v10, v11, v12);
    json_member_str(v7, "!notice", "Please use perfdata.framework (Swift/Objective-C), perfdata.py (Python 2/3), or perfdata.lua (Lua) to parse this data.", v13, v14, v15, v16, v17);
    json_member_str(v7, "name", a2, v18, v19, v20, v21, v22);
    json_member_uint(v7, "version", a3, v23, v24, v25, v26, v27);
    emit_curtime_field(v7, "start_date");
    json_member_strf(v7, "generator", "perfdata.framework:perfdata-%s", v28, v29, v30, v31, v32, "122");
    v33 = getenv("PERFDATA_NOTES");
    if (v33)
    {
      json_member_str(v7, "notes", v33, v34, v35, v36, v37, v38);
    }
  }

  else
  {
    v39 = *__error();
    fclose(a1);
    *__error() = v39;
  }

  return v7;
}

uint64_t emit_curtime_field(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  time(&v12);
  v4 = gmtime(&v12);
  strftime(v13, 0x15uLL, "%FT%TZ", v4);
  result = json_member_str(a1, a2, v13, v5, v6, v7, v8, v9);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

FILE *pdwriter_open(const char *a1, uint64_t a2, uint64_t a3)
{
  result = fopen(a1, "w");
  if (result)
  {

    return pdwriter_open_stream(result, a2, a3);
  }

  return result;
}

uint64_t pdwriter_open_fd(int a1, uint64_t a2, uint64_t a3)
{
  v6 = fdopen(a1, "w");
  if (v6)
  {

    return pdwriter_open_stream(v6, a2, a3);
  }

  else
  {
    close(a1);
    return 0;
  }
}

uint64_t pdwriter_open_tmp(const char *a1, const char *a2, uint64_t a3, uint64_t a4, char *a5, size_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  bzero(v24, 0x400uLL);
  v11 = pdwriter_name(a1, a2, v24, 0x400uLL);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (v11 >= 0x401)
  {
LABEL_10:
    v15 = __error();
    result = 0;
    *v15 = 22;
    goto LABEL_17;
  }

  bzero(__str, 0x400uLL);
  v12 = getenv("TMPDIR");
  memset(&v22, 0, sizeof(v22));
  if (stat(v12, &v22) || (v22.st_mode & 0x4000) == 0)
  {
    v12 = 0;
  }

  v13 = "/tmp";
  if (v12)
  {
    v13 = v12;
  }

  v14 = snprintf(__str, 0x400uLL, "%s/%s.XXXXX%s", v13, v24, ".pdj");
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (v14 >= 0x401)
  {
    goto LABEL_10;
  }

  v17 = mkstemps(__str, 4);
  if (v17 < 0)
  {
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v18 = v17;
  if (fchmod(v17, 0x1A4u) == -1)
  {
    v20 = *__error();
    close(v18);
    unlink(__str);
    v21 = __error();
    result = 0;
    *v21 = v20;
  }

  else
  {
    if (a5)
    {
      strlcpy(a5, __str, a6);
    }

    result = pdwriter_open_fd(v18, v24, a3);
  }

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t pdwriter_name(const char *a1, const char *a2, char *a3, size_t a4)
{
  if (!a1)
  {
    pdwriter_open_stream_cold_1();
  }

  if (!a2)
  {
    pdwriter_open_stream_cold_1();
  }

  if (!a3)
  {
    pdwriter_open_stream_cold_1();
  }

  v8 = strcspn(a1, " \t\v\n");
  if (v8 == strlen(a1))
  {
    v9 = strcspn(a2, " \t\v\n");
    if (v9 == strlen(a2))
    {
      return snprintf(a3, a4, "%s.%s", a1, a2);
    }
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

void pdwriter_close(uint64_t a1)
{
  if ((*(a1 + 696) & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 688);
  if ((v2 - 2) < 2)
  {
    close_measurement(a1, 1);
LABEL_5:
    json_end_array(a1);
    json_end_array(a1);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((*(a1 + 705) & 1) == 0)
  {
    v3 = pdwriter_defer(a1, 0);
    config_emit(v3, v4, v5, v6, v7, v8, v9, v10);
    *(a1 + 705) = 1;
  }

  emit_curtime_field(a1, "end_date");
  for (i = 0; i != 640; i += 80)
  {
    v12 = a1 + i;
    pddefer_flush(a1 + i + 48, a1, 1);
    if (*(a1 + i + 121) == 1)
    {
      json_destroy(v12 + 56);
      fclose(*(v12 + 48));
      free(*(v12 + 104));
    }
  }

  json_end_object(a1);
  json_destroy(a1);
LABEL_13:
  fclose(*(a1 + 40));

  free(a1);
}

void close_measurement(uint64_t a1, int a2)
{
  pddefer_flush(a1 + 448, a1, a2);
  pddefer_flush(a1 + 528, a1, a2);
  pddefer_flush(a1 + 368, a1, a2);
  pddefer_flush(a1 + 208, a1, a2);
  pddefer_flush(a1 + 288, a1, a2);
  if (a2)
  {

    json_end_object(a1);
  }
}

uint64_t pdwriter_defer(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 80 * a2;
  v3 = v2 + 48;
  if ((*(v2 + 121) & 1) == 0)
  {
    v4 = &pddconfigs + 16 * a2;
    *(v2 + 96) = *v4;
    v5 = open_memstream((v2 + 104), (v2 + 112));
    *v3 = v5;
    if (!v5)
    {
      pdwriter_open_stream_cold_1();
    }

    json_init(v3 + 8, v5, *(v4 + 2), 2);
    *(v3 + 72) = v4[12];
    *(v3 + 73) = 1;
  }

  return v3 + 8;
}

uint64_t pdwriter_flush(uint64_t result)
{
  if ((*(result + 696) & 0x8000000000000000) == 0)
  {
    return result;
  }

  v20 = v1;
  v21 = v2;
  v3 = result;
  *(result + 696) = ftello(*(result + 40));
  v4 = *(v3 + 16);
  v18[0] = *v3;
  v18[1] = v4;
  v19 = *(v3 + 32);
  v5 = *(v3 + 688);
  if ((v5 - 2) < 2)
  {
    close_measurement(v3, 0);
    json_end_object(v18);
LABEL_5:
    json_end_array(v18);
    json_end_array(v18);
    goto LABEL_6;
  }

  if (v5 == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((*(v3 + 705) & 1) == 0)
  {
    v6 = pdwriter_defer(v3, 0);
    config_emit(v6, v7, v8, v9, v10, v11, v12, v13);
    *(v3 + 705) = 1;
  }

  emit_curtime_field(v18, "end_date");
  v14 = (v3 + 121);
  v15 = 8;
  v16 = (v3 + 121);
  do
  {
    v17 = *v16;
    v16 += 80;
    if (v17 == 1)
    {
      pddefer_flush((v14 - 73), v18, 0);
    }

    v14 = v16;
    --v15;
  }

  while (v15);
  json_end_object(v18);
  return fflush(*(v3 + 40));
}

void pddefer_flush(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 73) != 1 || ftello(*a1) < 1)
  {
    return;
  }

  fflush(*a1);
  v12 = *(a1 + 48);
  if (v12)
  {
    if (*(a1 + 72) == 1)
    {
      json_member_start_array(a2, v12, v6, v7, v8, v9, v10, v11);
    }

    else
    {
      json_member_start_object(a2, v12, v6, v7, v8, v9, v10, v11);
    }

    json_printf(a2, "\n%*s", *(a1 + 40) * *(a2 + 36), " ");
  }

  else
  {
    json_comma(a2);
  }

  fwrite(*(a1 + 56), *(a1 + 64), 1uLL, *a2);
  if (*(a1 + 48))
  {
    if (*(a1 + 72) != 1)
    {
      json_end_object(a2);
      if (!a3)
      {
        return;
      }

      goto LABEL_13;
    }

    json_end_array(a2);
  }

  if (!a3)
  {
    return;
  }

LABEL_13:
  json_reset(a1 + 8);
  v13 = *a1;

  rewind(v13);
}

uint64_t pdwriter_set_description(uint64_t a1, uint64_t a2)
{
  v3 = pdwriter_defer(a1, 0);

  return json_member_str(v3, "description", a2, v4, v5, v6, v7, v8);
}

uint64_t pdwriter_start_extension(uint64_t a1, char a2)
{
  if (*(a1 + 704) == 1)
  {
    pdwriter_start_extension_cold_1();
  }

  *(a1 + 704) = 1;
  v3 = pdwriter_defer(a1, 1u);
  json_member_start_object(v3, a2, v4, v5, v6, v7, v8, v9);
  return v3;
}

uint64_t pdwriter_end_extension(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 704) & 1) == 0)
  {
    pdwriter_end_extension_cold_1();
  }

  if (pdwriter_defer(a1, 1u) != a2)
  {
    pdwriter_open_stream_cold_1();
  }

  *(a1 + 704) = 0;
  v3 = pdwriter_defer(a1, 1u);

  return json_end_object(v3);
}

uint64_t pdwriter_apply_variable_str(uint64_t a1, char a2, uint64_t a3)
{
  v5 = pdwriter_defer(a1, 7u);

  return json_member_str(v5, a2, a3, v6, v7, v8, v9, v10);
}

uint64_t pdwriter_apply_variable_dbl(uint64_t a1, char a2, double a3)
{
  v5 = pdwriter_defer(a1, 7u);

  return json_member_dbl(v5, a2, v6, v7, v8, v9, v10, v11, a3);
}

uint64_t pdwriter_set_primary_metric(uint64_t a1, uint64_t a2)
{
  v3 = pdwriter_defer(a1, 0);

  return json_member_str(v3, "primary_metric", a2, v4, v5, v6, v7, v8);
}

uint64_t pdwriter_new_value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (!a1)
  {
    pdwriter_open_stream_cold_1();
  }

  if (!a2)
  {
    pdwriter_open_stream_cold_1();
  }

  if (!a3)
  {
    pdwriter_open_stream_cold_1();
  }

  new_measurement(a1, a2, a3, a4, a5, a6, a7, a8);
  json_member_dbl(a1, "value", v11, v12, v13, v14, v15, v16, a9);

  return json_multiline(a1);
}

uint64_t new_measurement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 696);
  if ((v11 & 0x8000000000000000) == 0)
  {
    fseeko(*(a1 + 40), v11, 0);
    *(a1 + 696) = -1;
  }

  v12 = *(a1 + 688);
  if ((v12 - 2) >= 2)
  {
    if (!v12)
    {
      json_member_start_array(a1, "data", a3, a4, a5, a6, a7, a8);
      json_start_array(a1);
    }
  }

  else
  {
    close_measurement(a1, 1);
  }

  *(a1 + 688) = 2;
  json_start_object(a1);
  json_member_str(a1, "metric", a2, v13, v14, v15, v16, v17);
  json_oneline(a1);
  result = json_member_str(a1, "unit", a3, v18, v19, v20, v21, v22);
  *(a1 + 688) = 2;
  return result;
}

uint64_t pdwriter_record_variable_str(uint64_t a1, char a2, uint64_t a3)
{
  check_measurement(a1);
  v6 = pdwriter_defer(a1, 2u);

  return json_member_str(v6, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t check_measurement(uint64_t result)
{
  if ((*(result + 688) & 0xFFFFFFFE) != 2)
  {
    check_measurement_cold_1();
  }

  v1 = result;
  v2 = *(result + 696);
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = fseeko(*(result + 40), v2, 0);
    *(v1 + 696) = -1;
  }

  return result;
}

uint64_t pdwriter_record_variable_dbl(uint64_t a1, char a2, double a3)
{
  check_measurement(a1);
  v6 = pdwriter_defer(a1, 2u);

  return json_member_dbl(v6, a2, v7, v8, v9, v10, v11, v12, a3);
}

uint64_t pdwriter_record_label_str(uint64_t a1, char a2, uint64_t a3)
{
  check_measurement(a1);
  v6 = pdwriter_defer(a1, 3u);

  return json_member_str(v6, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t pdwriter_record_label_dbl(uint64_t a1, char a2, double a3)
{
  check_measurement(a1);
  v6 = pdwriter_defer(a1, 3u);

  return json_member_dbl(v6, a2, v7, v8, v9, v10, v11, v12, a3);
}

uint64_t pdwriter_record_tag(uint64_t a1, char *a2)
{
  check_measurement(a1);
  if (pdtag_summary != a2 && pdtag_context != a2)
  {
    pdwriter_record_tag_cold_1();
  }

  v5 = pdwriter_defer(a1, 4u);

  return json_value_str(v5, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t pdwriter_record_larger_better(uint64_t a1)
{
  check_measurement(a1);

  return json_member_BOOL(a1, "larger_better", 1, v2, v3, v4, v5, v6);
}

uint64_t pdwriter_new_group(uint64_t result)
{
  v1 = result;
  v2 = *(result + 696);
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = fseeko(*(result + 40), v2, 0);
    *(v1 + 696) = -1;
  }

  if ((*(v1 + 688) & 0xFFFFFFFE) == 2)
  {
    close_measurement(v1, 1);
    json_end_array(v1);
    result = json_start_array(v1);
    *(v1 + 688) = 1;
  }

  return result;
}

uint64_t pdwriter_new_stats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  new_measurement(a1, a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 688) = 3;
  json_member_dbl(a1, "samples", v10, v11, v12, v13, v14, v15, a4);

  return json_multiline(a1);
}

uint64_t pdwriter_record_range(uint64_t a1, double a2, double a3)
{
  check_stats(a1);
  json_member_dbl(a1, "minimum", v6, v7, v8, v9, v10, v11, a2);

  return json_member_dbl(a1, "maximum", v12, v13, v14, v15, v16, v17, a3);
}

uint64_t check_stats(uint64_t result)
{
  if (*(result + 688) != 3)
  {
    check_stats_cold_1();
  }

  v1 = result;
  v2 = *(result + 696);
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = fseeko(*(result + 40), v2, 0);
    *(v1 + 696) = -1;
  }

  return result;
}

uint64_t pdwriter_record_mean(uint64_t a1, double a2, double a3)
{
  check_stats(a1);
  json_member_dbl(a1, "mean", v6, v7, v8, v9, v10, v11, a2);

  return json_member_dbl(a1, "std_dev", v12, v13, v14, v15, v16, v17, a3);
}

uint64_t pdwriter_record_median(uint64_t a1, double a2)
{
  check_stats(a1);

  return json_member_dbl(a1, "median", v4, v5, v6, v7, v8, v9, a2);
}

uint64_t pdwriter_record_percentile(uint64_t a1, double a2, double a3)
{
  if (a2 < 0.0 || a2 > 100.0)
  {
    pdwriter_open_stream_cold_1();
  }

  check_stats(a1);
  v7 = pdwriter_defer(a1, 5u);
  json_start_object(v7);
  json_oneline(v7);
  json_member_dbl(v7, "%", v8, v9, v10, v11, v12, v13, a2);
  json_member_dbl(v7, "value", v14, v15, v16, v17, v18, v19, a3);

  return json_end_object(v7);
}

uint64_t pdwriter_record_bucket(uint64_t a1, unint64_t a2, char *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  check_stats(a1);
  v14 = pdwriter_defer(a1, 6u);
  json_start_object(v14);
  json_oneline(v14);
  json_member_dbl(v14, ">=", v15, v16, v17, v18, v19, v20, a4);
  json_member_dbl(v14, "count", v21, v22, v23, v24, v25, v26, a2);
  if (a3)
  {
    json_member_strvf(v14, "label", a3, &a10, v27, v28, v29, v30);
  }

  return json_end_object(v14);
}

uint64_t config_emit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v191 = *MEMORY[0x277D85DE8];
  json_member_start_object(a1, "configuration", a3, a4, a5, a6, a7, a8);
  emit_sysctl_str(a1, "device_type", v9, v10, v11, v12, v13, v14, 6, 0, 2);
  v15 = MGCopyAnswer();
  if (!v15 || (v16 = v15, v17 = CFGetTypeID(v15), v17 != CFStringGetTypeID()))
  {
    config_emit_cold_5();
  }

  Length = CFStringGetLength(v16);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v20 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xC4432F5AuLL);
  if (!v20)
  {
    pdwriter_open_stream_cold_1();
  }

  v21 = v20;
  if (!CFStringGetCString(v16, v20, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    pdwriter_open_stream_cold_1();
  }

  json_member_str(a1, "product_type", v21, v22, v23, v24, v25, v26);
  CFRelease(v16);
  free(v21);
  emit_sysctlbyname_num(a1, "cpu_type", "hw.cputype");
  emit_sysctlbyname_num(a1, "cpu_subtype", "hw.cpusubtype");
  emit_sysctlbyname_num(a1, "cpu_family", "hw.cpufamily");
  emit_sysctlany_str(a1, "cpu_brand_string", 0, 0, "machdep.cpu.brand_string");
  emit_sysctlbyname_num(a1, "logical_cpus", "hw.logicalcpu_max");
  emit_sysctlbyname_num(a1, "physical_cpus", "hw.physicalcpu_max");
  v27 = IOServiceMatching("AppleARMPE");
  MatchingService = IOServiceGetMatchingService(0, v27);
  v29 = MEMORY[0x277CBECE8];
  if (MatchingService)
  {
    v30 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"chip-revision", *MEMORY[0x277CBECE8], 1u);
    v31 = v30;
    if (v30 && [v30 length])
    {
      strcpy(&out, "A0");
      v32 = *[v31 bytes];
      LOBYTE(out.f_bsize) = (v32 >> 4) + 65;
      BYTE1(out.f_bsize) = v32 & 0xF | 0x30;
      json_member_str(a1, "chip_revision", &out, v33, v34, v35, v36, v37);
    }
  }

  v38 = IORegistryEntryFromPath(0, "IODeviceTree:/chosen");
  if (v38)
  {
    v46 = v38;
    *uu = 0;
    LODWORD(v188.tv_sec) = 8;
    if (!MEMORY[0x277CA94E0](v38, "dram-size", uu, &v188))
    {
      json_member_dbl(a1, "memory_size", v47, v48, v49, v50, v51, v52, *uu);
    }

    memset(&out, 0, 128);
    v187 = 128;
    if (!MEMORY[0x277CA94E0](v46, "dram-vendor", &out, &v187))
    {
      json_member_str(a1, "dram_vendor", &out, v53, v54, v55, v56, v57);
    }

    v187 = 128;
    if (!MEMORY[0x277CA94E0](v46, "dram-type", &out, &v187))
    {
      json_member_str(a1, "dram_type", &out, v58, v59, v60, v61, v62);
    }

    IOObjectRelease(v46);
  }

  emit_sysctl_num(a1, v39, v40, v41, v42, v43, v44, v45, 6, 0, 7);
  emit_sysctlbyname_num(a1, "vm_pagesize", "vm.pagesize");
  emit_sysctlbyname_num(a1, "vm_pages", "vm.pages");
  emit_sysctlbyname_num(a1, "max_vnodes", "kern.maxvnodes");
  emit_sysctl_str(a1, "kernel_version", v63, v64, v65, v66, v67, v68, 1, 0, 4);
  emit_sysctl_str(a1, "build", v69, v70, v71, v72, v73, v74, 1, 0, 65);
  v75 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:@"/System/Library/CoreServices/SystemVersion.plist"];
  v76 = v75;
  if (v75)
  {
    [v75 open];
    v77 = [MEMORY[0x277CCAC58] propertyListWithStream:v76 options:0 format:0 error:0];
    if (v77)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = [v77 objectForKeyedSubscript:@"ReleaseType"];
        v79 = v78;
        if (v78)
        {
          v80 = [v78 UTF8String];
          json_member_str(a1, "release_type", v80, v81, v82, v83, v84, v85);
        }
      }
    }

    [v76 close];
  }

  v86 = os_variant_copy_description();
  if (v86)
  {
    v92 = v86;
    json_member_str(a1, "os_variant", v86, v87, v88, v89, v90, v91);
    free(v92);
  }

  emit_sysctlbyname_BOOL(a1, "thread_groups_supported", "kern.thread_groups_supported");
  emit_sysctlany_str(a1, "boot_args", 0, 0, "kern.bootargs");
  emit_sysctlbyname_BOOL(a1, "kernel_link_time_optimized", "kern.link_time_optimized");
  if (os_variant_allows_internal_security_policies())
  {
    getpid();
    v93 = *MEMORY[0x277D861D8];
    v186 = "hw.uuid";
    if (!sandbox_check())
    {
      memset(uu, 0, sizeof(uu));
      v188 = xmmword_2771F11A0;
      if (!gethostuuid(uu, &v188) && !uuid_is_null(uu))
      {
        memset(&out, 0, 37);
        uuid_unparse(uu, &out);
        json_member_str(a1, "device_uuid", &out, v94, v95, v96, v97, v98);
      }
    }
  }

  memset(&out, 0, 512);
  if (statfs("/", &out))
  {
    pdwriter_open_stream_cold_1();
  }

  if (!is_mul_ok(out.f_bsize, out.f_blocks))
  {
    pdwriter_open_stream_cold_1();
  }

  json_member_dbl(a1, "rootvol_size", v99, v100, v101, v102, v103, v104, (out.f_bsize * out.f_blocks));
  v105 = strrchr(out.f_mntfromname, 47);
  v106 = IOBSDNameMatching(0, 0, v105 + 1);
  v107 = IOServiceGetMatchingService(0, v106);
  if (v107)
  {
    v108 = v107;
    v109 = *v29;
    v110 = IORegistryEntrySearchCFProperty(v107, "IOService", @"Device Characteristics", *v29, 3u);
    v111 = v110;
    if (v110)
    {
      v112 = [v110 objectForKeyedSubscript:@"Medium Type"];
      v113 = [v112 isEqualToString:@"Solid State"];
      json_member_BOOL(a1, "rootvol_ssd", v113, v114, v115, v116, v117, v118);
    }

    v119 = IORegistryEntrySearchCFProperty(v108, "IOService", @"APFSComposited", v109, 3u);
    v125 = v119;
    if (v119)
    {
      v126 = [v119 BOOLValue];
    }

    else
    {
      v126 = 0;
    }

    json_member_BOOL(a1, "rootvol_fusion", v126, v120, v121, v122, v123, v124);
  }

  v127 = dyld_shared_cache_some_image_overridden();
  json_member_BOOL(a1, "dsc_overriding_images_present", v127, v128, v129, v130, v131, v132);
  v133 = _dyld_shared_cache_optimized();
  json_member_BOOL(a1, "dsc_optimized", v133, v134, v135, v136, v137, v138);
  json_member_BOOL(a1, "metadata_indexing_enabled", 0, v139, v140, v141, v142, v143);
  *&out.f_bsize = 0;
  if (!IOPSCopyPowerSourcesByTypePrecise())
  {
    if (*&out.f_bsize)
    {
      v144 = IOPSCopyPowerSourcesList(*&out.f_bsize);
      if (v144)
      {
        v145 = v144;
        Count = CFArrayGetCount(v144);
        json_member_uint(a1, "battery_count", Count, v147, v148, v149, v150, v151);
        ValueAtIndex = CFArrayGetValueAtIndex(v145, 0);
        v153 = IOPSGetPowerSourceDescription(*&out.f_bsize, ValueAtIndex);
        v154 = [v153 objectForKeyedSubscript:@"Battery Service State"];
        v155 = v154;
        if (v154)
        {
          v156 = [v154 intValue];
          json_member_BOOL(a1, "battery_service_needed", v156 != 0, v157, v158, v159, v160, v161);
          if ((v156 + 1) > 8)
          {
            v167 = "unnamed";
          }

          else
          {
            v167 = emit_battery_health_state_names[v156 + 1];
          }

          json_member_str(a1, "battery_service_state", v167, v162, v163, v164, v165, v166);
        }

        v168 = [v153 objectForKeyedSubscript:{@"Maximum Capacity Percent", v186}];
        v169 = v168;
        if (v168)
        {
          v170 = [v168 unsignedIntValue];
          json_member_uint(a1, "battery_max_capacity_percent", v170, v171, v172, v173, v174, v175);
        }

        if (MEMORY[0x282239988])
        {
          if (MEMORY[0x282239990])
          {
            if (MEMORY[0x282239998])
            {
              v176 = IOServiceMatching("AppleSMC");
              v177 = IOServiceGetMatchingService(0, v176);
              if (v177)
              {
                v178 = v177;
                if (SMCOpenConnection())
                {
                  *uu = 0;
                  if (!SMCReadKeyAsNumeric())
                  {
                    json_member_uint(a1, "battery_cycle_count", *uu, v179, v180, v181, v182, v183);
                  }

                  SMCCloseConnection();
                }

                IOObjectRelease(v178);
              }
            }
          }
        }
      }
    }
  }

  result = json_end_object(a1);
  v185 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t emit_sysctlbyname_num(uint64_t a1, char a2, char *a3)
{
  v12 = 0;
  v13 = 4;
  result = sysctlbyname(a3, &v12, &v13, 0, 0);
  if (!result)
  {
    return json_member_dbl(a1, a2, v6, v7, v8, v9, v10, v11, v12);
  }

  return result;
}

uint64_t emit_sysctl_num(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v21[0] = 4;
  v24 = 0;
  v23 = 0;
  v20[1] = &a9;
  v22[0] = a9;
  v22[1] = a11;
  v20[0] = 0;
  result = sysctl(v22, 2u, v20, v21, 0, 0);
  if (!result)
  {
    result = json_member_dbl(a1, "hw_pagesize", v13, v14, v15, v16, v17, v18, v20[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void emit_sysctl_str(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v12[0] = a9;
  v12[1] = a11;
  emit_sysctlany_str(a1, a2, 2u, v12, 0);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t emit_sysctlbyname_BOOL(uint64_t a1, char a2, char *a3)
{
  v12 = 0;
  v11 = 4;
  result = sysctlbyname(a3, &v12, &v11, 0, 0);
  if (!result)
  {
    return json_member_BOOL(a1, a2, v12 != 0, v6, v7, v8, v9, v10);
  }

  return result;
}

void emit_sysctlany_str(uint64_t a1, char a2, u_int a3, int *a4, char *a5)
{
  v22 = 0;
  if (a5)
  {
    sysctlbyname(a5, 0, &v22, 0, 0);
  }

  else
  {
    sysctl(a4, a3, 0, &v22, 0, 0);
  }

  if (v22)
  {
    v15 = malloc_type_malloc(v22 + 1, 0x747909F7uLL);
    if (!v15)
    {
      pdwriter_open_stream_cold_1();
    }

    v16 = v15;
    if (a5)
    {
      if (sysctlbyname(a5, v15, &v22, 0, 0))
      {
LABEL_9:
        free(v16);
        return;
      }
    }

    else if (sysctl(a4, a3, v15, &v22, 0, 0))
    {
      goto LABEL_9;
    }

    *(v16 + v22) = 0;
    json_member_str(a1, a2, v16, v17, v18, v19, v20, v21);
    goto LABEL_9;
  }

  json_member_str(a1, a2, &unk_2771F165E, v10, v11, v12, v13, v14);
}

_BYTE *pdunit_create(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_calloc(v2 + 2, 1uLL, 0x100004077774924uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = 35;
    strlcpy(v3 + 1, a1, v2 + 1);
  }

  return v4;
}

void pdunit_destroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

char *json_init(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 24) = 0;
  *(a1 + 28) = a3;
  v5 = new_printf_domain();
  *(a1 + 8) = v5;
  if (!v5)
  {
    pdwriter_open_stream_cold_1();
  }

  if (register_printf_domain_function(v5, 115, json_printf_s, json_printf_s_arginfo, 0))
  {
    pdwriter_open_stream_cold_1();
  }

  *(a1 + 16) = newlocale(2, "UTF-8", 0);

  return setlocale(2, "UTF-8");
}

uint64_t json_reset(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 28) = *(result + 32);
  return result;
}

uint64_t json_printf_s()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v15 = *MEMORY[0x277D85DE8];
  v5 = **v4;
  v6 = strlen(v5);
  v7 = *(v2 + 24);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    while (v8)
    {
      if (v8 >= 0x400)
      {
        v10 = 1024;
      }

      else
      {
        v10 = v8;
      }

      if (strsnvisx(v14, 0x1001uLL, v5, v10, 66, "\\\b\f\n\r\t") != -1)
      {
        v11 = fprintf_l(v3, *(v2 + 8), "%*s", v7, v14);
        v9 = (v11 + v9);
        v8 -= v10;
        v5 += v10;
        if (v11 != -1)
        {
          continue;
        }
      }

      v9 = 0xFFFFFFFFLL;
      break;
    }
  }

  else
  {
    v9 = fprintf_l(v3, *(v2 + 8), "%*s", *(v2 + 24), &unk_2771F165E);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t json_printf_s_arginfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    *a3 = 8;
  }

  return 1;
}

uint64_t json_destroy(uint64_t a1)
{
  json_printf(a1, "\n");
  free_printf_domain(*(a1 + 8));
  v2 = *(a1 + 16);

  return freelocale(v2);
}

uint64_t json_start_object(uint64_t a1)
{
  json_comma(a1);
  result = json_printf(a1, "%s", "{");
  ++*(a1 + 28);
  *(a1 + 24) = 256;
  return result;
}

uint64_t json_end_object(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (v1 <= *(a1 + 32))
  {
    pdwriter_open_stream_cold_1();
  }

  v3 = v1 - 1;
  *(a1 + 28) = v3;
  if (*(a1 + 26) == 1)
  {
    json_printf(a1, " ");
  }

  else
  {
    v5 = *(a1 + 36) * v3;
    json_printf(a1, "\n%*s");
  }

  result = json_printf(a1, "%s", "}");
  *(a1 + 26) = 0;
  *(a1 + 24) = 1;
  return result;
}

uint64_t json_start_array(uint64_t a1)
{
  json_comma(a1);
  result = json_printf(a1, "%s", "[");
  ++*(a1 + 28);
  *(a1 + 24) = 256;
  return result;
}

uint64_t json_end_array(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (v1 <= *(a1 + 32))
  {
    pdwriter_open_stream_cold_1();
  }

  v3 = v1 - 1;
  *(a1 + 28) = v3;
  if (*(a1 + 26) == 1)
  {
    json_printf(a1, " ");
  }

  else
  {
    v5 = *(a1 + 36) * v3;
    json_printf(a1, "\n%*s");
  }

  result = json_printf(a1, "%s", "]");
  *(a1 + 26) = 0;
  *(a1 + 24) = 1;
  return result;
}

uint64_t json_value_raw_internal(uint64_t a1, int a2, char *__format, va_list __ap)
{
  if (a2)
  {
    json_printf(a1, "");
    vfxprintf(*a1, *(a1 + 8), *(a1 + 16), __format, __ap);
    result = json_printf(a1, "");
  }

  else
  {
    result = vfxprintf(*a1, *(a1 + 8), *(a1 + 16), __format, __ap);
  }

  *(a1 + 24) = 1;
  return result;
}

uint64_t json_comma(uint64_t result)
{
  v1 = result;
  if (*(result + 25) == 1)
  {
    if (*(result + 26) == 1)
    {
      result = json_printf(result, " ");
    }

    else
    {
      v2 = (*(result + 36) * *(result + 28));
      result = json_printf(result, "\n%*s");
    }

    *(v1 + 25) = 0;
  }

  if (*(v1 + 24) == 1)
  {
    json_printf(v1, ",");
    if (*(v1 + 26) == 1)
    {

      return json_printf(v1, " ");
    }

    else
    {
      return json_printf(v1, "\n%*s", *(v1 + 36) * *(v1 + 28), &unk_2771F165E);
    }
  }

  return result;
}

uint64_t json_value_dbl(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (fabs(a2) == INFINITY)
  {
    pdwriter_open_stream_cold_1();
  }

  return json_value_raw(a1, 0, "%.17g", a5, a6, a7, a8, a9, SLOBYTE(a2));
}

uint64_t json_value_raw(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  json_comma(a1);
  result = vfxprintf(*a1, *(a1 + 8), *(a1 + 16), a3, &a9);
  *(a1 + 24) = 1;
  return result;
}

uint64_t json_value_BOOL(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = "false";
  if (a2)
  {
    v8 = "true";
  }

  return json_value_raw(a1, 0, "%s", a4, a5, a6, a7, a8, v8);
}

uint64_t json_key(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  result = json_printf(a1, ": ");
  *(a1 + 24) = 0;
  return result;
}

uint64_t json_member_str(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;
  return json_value_strf(a1, "%s", v10, v11, v12, v13, v14, v15, v8);
}

uint64_t json_member_dbl(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;

  return json_value_dbl(a1, a9, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t json_member_int(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;
  return json_value_raw(a1, 0, "%d", v10, v11, v12, v13, v14, v8);
}

uint64_t json_member_uint(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;
  return json_value_raw(a1, 0, "%u", v10, v11, v12, v13, v14, v8);
}

uint64_t json_member_BOOL(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;
  v15 = "false";
  if (v8)
  {
    v15 = "true";
  }

  return json_value_raw(a1, 0, "%s", v10, v11, v12, v13, v14, v15);
}

uint64_t json_member_strvf(uint64_t a1, char a2, char *a3, va_list a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;

  return json_value_raw_internal(a1, 1, a3, a4);
}

uint64_t json_member_start_array(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;
  json_comma(a1);
  result = json_printf(a1, "%s", "[");
  ++*(a1 + 28);
  *(a1 + 24) = 256;
  return result;
}

uint64_t json_member_start_object(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  json_value_strf(a1, "%s", a3, a4, a5, a6, a7, a8, a2);
  json_printf(a1, ": ");
  *(a1 + 24) = 0;
  json_comma(a1);
  result = json_printf(a1, "%s", "{");
  ++*(a1 + 28);
  *(a1 + 24) = 256;
  return result;
}

uint64_t handle_malformed_data(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v3 errorWithDomain:@"PDError" code:1 userInfo:v6];

    v8 = v7;
    *a1 = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t not_a_number(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = handle_malformed_data(a2, v6);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id expect_dictionary(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = [a1 objectForKeyedSubscript:a2];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = handle_malformed_data(a3, v7);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = v9;
  v9 = v10;
LABEL_6:

  return v10;
}

void sub_2771EE83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id strip_container_prefix(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 name];
  v6 = [v4 stringWithFormat:@"%@.", v5];

  if ([v3 hasPrefix:v6])
  {
    v7 = [v3 substringWithRange:{objc_msgSend(v6, "length"), objc_msgSend(v3, "length") - objc_msgSend(v6, "length")}];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

id get_metric_filter_metric(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:{@", "}];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v1;
  }

  else
  {
    v3 = [v1 substringWithRange:{0, v2}];
  }

  v4 = v3;

  return v4;
}

id get_metric_filter_variables(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [a1 componentsSeparatedByString:{@", "}];
  if ([v3 count] == 1)
  {
    v4 = MEMORY[0x277CBEC10];
  }

  else
  {
    v5 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v6 = objc_opt_new();
    if (get_metric_filter_variables_formatter_once != -1)
    {
      get_metric_filter_variables_cold_1();
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      obj = v7;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 rangeOfString:@"="];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (a2)
            {
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid metric filter component: %@", v12];
              v21 = MEMORY[0x277CCA9B8];
              v30 = *MEMORY[0x277CCA450];
              v31 = v20;
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
              *a2 = [v21 errorWithDomain:@"PDError" code:2 userInfo:v22];
            }

            v7 = obj;

            v4 = 0;
            goto LABEL_20;
          }

          v14 = v13;
          v15 = [v12 substringWithRange:{0, v13}];
          v16 = [v12 substringWithRange:{v14 + 1, objc_msgSend(v12, "length") + ~v14}];
          v17 = [get_metric_filter_variables_formatter numberFromString:v16];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v16;
          }

          [v6 setObject:v19 forKeyedSubscript:v15];
        }

        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v4 = v6;
LABEL_20:
  }

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __get_metric_filter_variables_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = get_metric_filter_variables_formatter;
  get_metric_filter_variables_formatter = v0;

  v2 = get_metric_filter_variables_formatter;

  return [v2 setNumberStyle:1];
}

void pdwriter_open_stream_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}
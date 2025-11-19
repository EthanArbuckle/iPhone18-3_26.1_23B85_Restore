uint64_t mfm_lock()
{
  if (mfm_arena)
  {
    return malloc_zone_error(64, 0, "exclaves lock not supported");
  }

  return result;
}

void mfm_reinit_lock()
{
  v0 = mfm_arena;
  if (mfm_arena)
  {
    *mfm_arena = 0;
    *(v0 + 8) = 0;
  }
}

uint64_t mfmi_enumerator(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  result = mfmi_read_zone(a1, a4, a5, &v28);
  if (result)
  {
    goto LABEL_28;
  }

  if ((a3 & 4) != 0)
  {
    v29 = a4;
    v30 = 0x8000;
    a6(a1, a2, 4, &v29, 1);
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_8;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v29 = a4 + 0x8000;
  v30 = 1015808;
  a6(a1, a2, 2, &v29, 1);
  if ((a3 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v12 = v28;
  if (!*(v28 + 24))
  {
    goto LABEL_27;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v12 + 256;
    v16 = (v13 + 1) >> 5;
    v17 = *(v12 + 256 + 8 * (v16 & 0x7FFFFFFFFFFFFFELL)) >> (v13 + 1);
    if (v17)
    {
      v18 = __clz(__rbit64(v17));
LABEL_12:
      v19 = v18 + 1;
      goto LABEL_13;
    }

    v22 = (v13 + 1) & 0x3F;
    v23 = v15 + 8 * (v16 & 0x7FFFFFFFFFFFFFELL);
    v24 = *(v23 + 16);
    if (!v24)
    {
      v25 = *(v15 + ((8 * v16) | 8));
      if (v22 < 0x31)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v23 + 24);
      }

      v18 = (((2 * v26) << (v22 ^ 0x3Fu)) | (v25 >> v22));
      goto LABEL_12;
    }

    v19 = __clz(__rbit64(v24)) - v22 + 65;
LABEL_13:
    if ((*(v15 + ((v13 >> 2) & 0x3FFFFFFFFFFFFFF0)) & (1 << v13) & *(v15 + ((v13 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8))) != 0)
    {
      v20 = v12;
      if (v14 == 32)
      {
        (a6)(a1, a2, 1, &v29);
        v14 = 0;
        v20 = v28;
      }

      v21 = &v29 + 2 * v14;
      *v21 = v12 + 16 * v13 + 0x8000 + a4 - v20;
      v21[1] = 16 * v19;
      ++v14;
      v12 = v20;
    }

    v13 += v19;
  }

  while (v13 < *(v12 + 24));
  if (v14)
  {
    (a6)(a1, a2, 1, &v29);
  }

LABEL_27:
  result = 0;
LABEL_28:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mfmi_good_size(uint64_t a1, unint64_t a2)
{
  v2 = (a2 & 0x7FF0) + 16;
  if ((a2 & 0xF) == 0)
  {
    v2 = a2;
  }

  if (a2 <= 0x4000)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mfmi_print_self(uint64_t a1, int a2)
{
  result = mfm_arena;
  if (mfm_arena)
  {
    return print_mfm_arena(mfm_arena, a2 != 0, malloc_report_simple);
  }

  return result;
}

uint64_t mfmi_force_lock()
{
  if (mfm_arena)
  {
    return malloc_zone_error(64, 0, "exclaves lock not supported");
  }

  return result;
}

uint64_t mfmi_force_unlock()
{
  if (mfm_arena)
  {
    return malloc_zone_error(64, 0, "exclaves lock not supported");
  }

  return result;
}

void mfmi_statistics_self(uint64_t a1, uint64_t a2)
{
  v2 = mfm_arena;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (v2)
  {
    v3 = *(v2 + 32);
    *a2 = *(v2 + 40);
    v4 = 16 * *(v2 + 16);
    *(a2 + 24) = 0x100000;
    v5 = ((((v3 >> 2) & 0x1FFFFFFFFFFFFFF8) + *MEMORY[0x277D85FA0] + 255) & -*MEMORY[0x277D85FA0]) + *(a2 + 16) + ((*MEMORY[0x277D85FA0] + 16 * v3 - 1) & -*MEMORY[0x277D85FA0]);
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }
}

uint64_t mfmi_locked()
{
  if (mfm_arena)
  {
    malloc_zone_error(64, 0, "exclaves lock not supported");
  }

  return 0;
}

void mfmi_reinit_lock()
{
  v0 = mfm_arena;
  if (mfm_arena)
  {
    *mfm_arena = 0;
    *(v0 + 8) = 0;
  }
}

uint64_t mfmi_print_task(uint64_t a1, unsigned int a2, const void *a3, uint64_t (*a4)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), uint64_t (*a5)(const char *, ...))
{
  v9 = 0;
  if (mfmi_read_zone(a1, a3, a4, &v9))
  {
    return a5("Failed to read ProbGuard zone at %p\n", a3);
  }

  else
  {
    return print_mfm_arena(v9, a2 > 1, a5);
  }
}

uint64_t mfmi_statistics_task(uint64_t a1, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), uint64_t a4)
{
  v9 = 0;
  result = mfmi_read_zone(a1, a2, a3, &v9);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (!result)
  {
    v6 = v9;
    v7 = *(v9 + 32);
    *a4 = *(v9 + 40);
    *(a4 + 24) = 0x100000;
    v8 = ((((v7 >> 2) & 0x1FFFFFFFFFFFFFF8) + *MEMORY[0x277D85FA0] + 255) & -*MEMORY[0x277D85FA0]) + *(a4 + 16) + ((*MEMORY[0x277D85FA0] + 16 * v7 - 1) & -*MEMORY[0x277D85FA0]);
    *(a4 + 8) = 16 * *(v6 + 16);
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t mfmi_read_zone(uint64_t task, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void *a4)
{
  v5 = a3;
  if (!a3)
  {
    if (task && !mach_task_is_self(task))
    {
      mfmi_read_zone_cold_1();
    }

    v5 = _malloc_default_reader;
  }

  return v5(task, a2, 0x100000, a4);
}

uint64_t _malloc_default_reader(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    mfmi_read_zone_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t print_mfm_arena(uint64_t a1, char a2, void (*a3)(const char *, ...))
{
  a3("mfm_arena info\n");
  a3(" address      : %p\n", a1);
  a3(" size         : %zd\n", 16 * *(a1 + 16));
  a3(" high water   : %zd\n", 16 * *(a1 + 24));
  v4 = a1 + 0x8000;
  a3(" arena        : [%p, %p)\n", (a1 + 0x8000), (a1 + 0x100000));
  a3("\n");
  a3("freelists\n");
  v5 = 0;
  v6 = a1 + 256;
  do
  {
    v7 = (a1 + 48 + 16 * v5);
    a3(" size %-8zd:\n", 16 << v5);
    v8 = (a1 + 16 * *v7);
    if (v8 != v7)
    {
      v9 = 16 * *v7;
      do
      {
        v10 = ((v9 - 0x8000) >> 4) + 1;
        v11 = v10 >> 5;
        v12 = (v10 >> 5) & 0x7FFFFFFFFFFFFFELL;
        v13 = *(v6 + 8 * v12) >> v10;
        if (v13)
        {
          v14 = __clz(__rbit64(v13)) + 1;
        }

        else
        {
          v15 = v10 & 0x3F;
          v16 = v6 + 8 * v12;
          v17 = *(v16 + 16);
          if (!v17)
          {
            v18 = *(v6 + ((8 * v11) | 8));
            if (v15 < 0x31)
            {
              v19 = 0;
            }

            else
            {
              v19 = *(v16 + 24);
            }

            v20 = (((2 * v19) << (v15 ^ 0x3Fu)) | (v18 >> v15)) + 1;
            a3("  [%p, %p) size=%zd\n", v8, &v8[2 * v20], 16 * v20);
            goto LABEL_7;
          }

          v14 = __clz(__rbit64(v17)) - v15 + 65;
        }

        a3("  [%p, %p) size=%zd\n", v8, &v8[2 * v14], 16 * v14);
LABEL_7:
        v9 = 16 * *v8;
        v8 = (a1 + v9);
      }

      while ((a1 + v9) != v7);
    }

    ++v5;
  }

  while (v5 != 11);
  result = (a3)("\n");
  if (a2)
  {
    a3("blocks\n");
    v22 = *(a1 + 24);
    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = (v23 + 1) >> 5;
        v25 = *(v6 + 8 * (v24 & 0x7FFFFFFFFFFFFFELL)) >> (v23 + 1);
        if (v25)
        {
          v26 = __clz(__rbit64(v25));
        }

        else
        {
          v29 = (v23 + 1) & 0x3F;
          v30 = v6 + 8 * (v24 & 0x7FFFFFFFFFFFFFELL);
          v31 = *(v30 + 16);
          if (v31)
          {
            v27 = __clz(__rbit64(v31)) - v29 + 65;
            goto LABEL_22;
          }

          v32 = *(v6 + ((8 * v24) | 8));
          if (v29 < 0x31)
          {
            v33 = 0;
          }

          else
          {
            v33 = *(v30 + 24);
          }

          v26 = (((2 * v33) << (v29 ^ 0x3Fu)) | (v32 >> v29));
        }

        v27 = v26 + 1;
LABEL_22:
        if ((*(v6 + ((v23 >> 2) & 0x3FFFFFFFFFFFFFF0)) & (1 << v23) & *(v6 + ((v23 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8))) != 0)
        {
          v28 = "*";
        }

        else
        {
          v28 = " *";
        }

        a3(" %c[%p, %p) size=%zd\n", *v28, (v4 + 16 * v23), (v4 + 16 * v23 + 16 * v27), 16 * v27);
        v23 += v27;
        v22 = *(a1 + 24);
      }

      while (v23 < v22);
    }

    a3("  [%p, %p) size=%zd (bump)\n", (v4 + 16 * v22), (a1 + 0x100000), 1015808 - 16 * v22);

    return (a3)("\n");
  }

  return result;
}

uint64_t xzm_segment_group_segment_foreach_span(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 2128;
  if (*(a1 + 36) != 1)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      return 0;
    }

    v8 = v3 + 80 * v7;
    while (1)
    {
      v9 = *(v3 + 64) & 0xF;
      if ((v9 - 5) < 5)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v11 = 0;
      do
      {
        v12 = v3 + v11 + 80;
        v13 = *(v3 + v11 + 144) & 0xF;
        v14 = v13 > 8 || ((1 << v13) & 0x1E4) == 0;
        v11 += 80;
      }

      while (v14 && v13 != 9 && v12 < v8);
      result = (*(a2 + 16))(a2, v3, -858993459 * (v11 >> 4));
      if (result)
      {
        return result;
      }

      v3 += v11;
LABEL_11:
      if (v3 >= v8)
      {
        return 0;
      }
    }

    v10 = *(v3 + 72);
LABEL_9:
    result = (*(a2 + 16))(a2, v3, v10);
    if (result)
    {
      return result;
    }

    v3 += 80 * v10;
    goto LABEL_11;
  }

  v4 = *(a1 + 2200);
  v5 = *(a2 + 16);

  return v5(a2, v3, v4);
}

uint64_t xzm_segment_table_foreach(int *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = a2;
  if (a4)
  {
    v8 = *a4;
    if (a2)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v8 = 0;
  if (!a2)
  {
LABEL_11:
    result = 0;
    if (a4)
    {
      *a4 = v8;
    }

    return result;
  }

LABEL_5:
  while (1)
  {
    v9 = *a1++;
    v10 = (v9 & 0x7FFFFFFF) << 15;
    if (v10 && v8 != v10)
    {
      result = (*(a3 + 16))(a3, v10);
      v8 = v10;
      if (result)
      {
        return result;
      }
    }

    if (!--v6)
    {
      goto LABEL_11;
    }
  }
}

uint64_t xzm_ptr_in_use_enumerator(uint64_t task, uint64_t a2, char a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void **), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v7 = a5;
  if (!a5)
  {
    if (task && !mach_task_is_self(task))
    {
      mfmi_read_zone_cold_1();
    }

    v7 = _malloc_default_reader_0;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  result = _xzm_introspect_map_zone_and_main(task, a4, v7, &v32, &v31, &v30);
  if (!result)
  {
    v13 = v30;
    v14 = v31;
    v15 = v30 == a4;
    if (v30 != a4 || (v16 = *(v31 + 448)) == 0 || (result = mfm_introspect(task, a2, a3, v16, v7, a6), !result))
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 0x40000000;
      v26[2] = __xzm_ptr_in_use_enumerator_block_invoke;
      v26[3] = &__block_descriptor_tmp;
      v28 = (a3 & 4) != 0;
      v29 = v15;
      v27 = task;
      v26[4] = a6;
      v26[5] = a2;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 0x40000000;
      v21[2] = __xzm_ptr_in_use_enumerator_block_invoke_3;
      v21[3] = &__block_descriptor_tmp_4;
      v23 = v28;
      v22 = task;
      v21[4] = a6;
      v21[5] = a2;
      v24 = (a3 & 2) != 0;
      v25 = a3 & 1;
      if (v13 == a4)
      {
        v17 = v18;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 0x40000000;
        v18[2] = __xzm_ptr_in_use_enumerator_block_invoke_4;
        v18[3] = &__block_descriptor_tmp_6;
        v20 = (a3 & 2) != 0;
        v19 = task;
        v18[4] = a6;
        v18[5] = a2;
      }

      else
      {
        v17 = 0;
      }

      return _xzm_introspect_enumerate(task, v7, a4, v32, v13, v14, a3 & 1, v26, &__block_literal_global, v21, v17);
    }
  }

  return result;
}

void xzm_print_task(uint64_t a1, uint64_t a2, const void *a3, uint64_t (*a4)(void), void (*a5)(const char *, ...))
{
  v102 = 0;
  v103 = 0;
  v101 = 0;
  if (!_xzm_introspect_map_zone_and_main(a1, a3, a4, &v103, &v102, &v101))
  {
    v9 = v101;
    a5("Begin xzone malloc JSON:\n");
    a5("{\n");
    a5("desc: xzone malloc, \n");
    a5("addr: %p, \n", a3);
    a5("segment_size: %zu, \n", 0x400000uLL);
    a5("slice_size: %zu, \n", 0x4000uLL);
    v10 = v103;
    a5("mzone: %d, \n", *(v103 + 208));
    a5("is_main: %d, \n", v9 == a3);
    a5("max_list_config: %d, \n", *(v10 + 248) & 3);
    a5("initial_slot_config: %d, \n", (*(v10 + 248) >> 2) & 3);
    a5("slot_initial_threshold: %u, \n", *(v10 + 288));
    a5("max_slot_config: %d, \n", (*(v10 + 248) >> 4) & 3);
    v97 = 0;
    v98 = &v97;
    v99 = 0x2000000000;
    v100 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x2000000000;
    v96 = 0;
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x2000000000;
    v92[3] = 0;
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 0x40000000;
    v90[2] = __xzm_print_block_invoke;
    v90[3] = &unk_27A70E770;
    v91 = a1;
    v90[4] = v92;
    v90[5] = &v97;
    v90[6] = &v93;
    v90[7] = a5;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2000000000;
    v89 = 1;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2000000000;
    v85 = 1;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 0x40000000;
    v75 = __xzm_print_block_invoke_2;
    v76 = &unk_27A70E798;
    v11 = v102;
    v80 = a5;
    v81 = v102;
    v78 = &v86;
    v79 = &v82;
    v77 = v90;
    if (v9 != a3)
    {
      v70 = v9;
LABEL_96:
      a5("spans: {\n");
      *(v87 + 24) = 1;
      *(v83 + 24) = 0;
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 0x40000000;
      v73[2] = __xzm_print_block_invoke_3;
      v73[3] = &unk_27A70E7C0;
      v73[5] = &v86;
      v73[6] = a5;
      v73[4] = v90;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 0x40000000;
      v72[2] = __xzm_print_block_invoke_4;
      v72[3] = &unk_27A70E7E8;
      v72[6] = a5;
      v72[7] = v11;
      v72[4] = v90;
      v72[5] = &v86;
      if (v9 == a3)
      {
        v63 = v71;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 0x40000000;
        v71[2] = __xzm_print_block_invoke_5;
        v71[3] = &unk_27A70E810;
        v71[6] = a5;
        v71[7] = v11;
        v71[4] = v90;
        v71[5] = &v86;
      }

      else
      {
        v63 = 0;
      }

      v64 = _xzm_introspect_enumerate(a1, a4, a3, v10, v70, v11, 0, v73, v74, v72, v63);
      v65 = v94[3];
      if (v65)
      {
        mach_vm_deallocate(*MEMORY[0x277D85F48], v65, 4 * v98[3]);
      }

      if (!v64)
      {
        a5("}\n");
        a5("}\n");
        a5("End xzone malloc JSON\n");
      }

      goto LABEL_103;
    }

    a5("bucketing_key: %016llx%016llx, \n", *(v102 + 424), *(v102 + 432));
    a5("guard_config: {\n");
    a5("    guards_enabled: %d, \n", *(v11 + 592));
    a5("    data_guards_enabled: %d, \n", *(v11 + 593));
    a5("    tiny_run_size: %d, \n", *(v11 + 594));
    a5("    tiny_guard_density: %d, \n", *(v11 + 595));
    a5("    small_run_size: %d, \n", *(v11 + 596));
    a5("    small_guard_density: %d \n", *(v11 + 597));
    a5("}, \n");
    a5("chunk_threshold: %u, \n", *(v11 + 459));
    a5("ptr_bucket_count: %d, \n", *(v11 + 458));
    a5("mte_config: {\n");
    a5("    enabled: %d, \n", *(v11 + 400));
    a5("    tag_data: %d, \n", *(v11 + 401));
    a5("    max_block_size: %d \n", *(v11 + 408));
    a5("}, \n");
    if ((*(v11 + 441) & 8) != 0)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    a5("defer_tiny: %s, \n", v12);
    if ((*(v11 + 441) & 4) != 0)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    a5("defer_small: %s, \n", v13);
    if ((*(v11 + 441) & 0x10) != 0)
    {
      v14 = "true";
    }

    else
    {
      v14 = "false";
    }

    a5("defer_large: %s, \n", v14);
    if ((*(v11 + 441) & 0x20) != 0)
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    a5("deallocate_segment: %s, \n", v15);
    if (*(v11 + 448))
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    a5("use_early_alloc: %s, \n", v16);
    a5("batch_size: %u, \n", *(v11 + 456));
    v17 = *(v11 + 632);
    if (v17)
    {
      v72[0] = 0;
      v71[0] = 0;
      if ((a4)(a1, v17, 64, v72))
      {
        goto LABEL_103;
      }

      if (*v72[0])
      {
        if ((a4)(a1, *v72[0], 16 * *(v72[0] + 8) + 112, v71))
        {
          goto LABEL_103;
        }

        v18 = v71[0];
        if (v71[0])
        {
          v67 = v9;
          a5("reclaim_buffer: { \n");
          a5("    buffer_len: %llu, \n", *(v18 + 16));
          a5("    max_len: %llu, \n", *(v18 + 20));
          a5("    sampling_period_abs: %llu, \n", *(v18 + 48));
          a5("    last_sample_abs: %llu, \n", *(v18 + 56));
          a5("    reclaimable_bytes: %llu, \n", *(v18 + 64));
          a5("    reclaimable_bytes_min: %llu, \n", *(v18 + 72));
          a5("    head: %llu, \n", *(v18 + 80));
          a5("    busy: %llu, \n", *(v18 + 88));
          a5("    tail: %llu, \n", *(v18 + 96));
          a5("    entries: [ \n");
          if (*(v18 + 16))
          {
            v19 = 0;
            v20 = (v18 + 124);
            do
            {
              a5("        { \n");
              a5("            id: %u, \n", v19);
              a5("            address: %p, \n", *(v20 - 12));
              a5("            size: %u, \n", *(v20 - 1));
              a5("            behavior: %u \n", *v20);
              a5("        }");
              if (v19 < (*(v18 + 16) - 1))
              {
                a5(",");
              }

              v20 += 16;
              a5(" \n");
              ++v19;
            }

            while (v19 < *(v18 + 16));
          }

          a5("    ] \n");
          v9 = v67;
        }
      }

      a5("}, \n");
    }

    a5("allocation_front_count: %u, \n", *(v11 + 447));
    a5("range_group_count: %u, \n", *(v11 + 442));
    a5("range_groups: {\n");
    v21 = *(v11 + 496);
    if (v101 <= v21)
    {
      v22 = *(v11 + 442);
      v23 = v21 - v101;
      if (!__CFADD__(v23, 112 * v22) && v23 + 112 * v22 <= *(v11 + 416))
      {
        v24 = v23 + v11;
        if (v24)
        {
          v70 = v101;
          v68 = v9;
          if (*(v11 + 442))
          {
            v25 = 0;
            v26 = v24 + 48;
            do
            {
              a5("    ");
              if (v25)
              {
                a5(", ");
              }

              a5("%d: {\n", v25);
              v27 = *(v26 - 48);
              v28 = "unknown";
              if (v27 == 2)
              {
                v28 = "pointer";
              }

              v50 = v27 == 0;
              v29 = "data";
              if (!v50)
              {
                v29 = v28;
              }

              a5("        id: %s, \n", v29);
              a5("        front: %d, \n", *(v26 - 47));
              a5("        lock: %u, \n", *(v26 - 32));
              a5("        base: %p, \n", *v26);
              a5("        size: %zu, \n", *(v26 + 8));
              a5("        skip_addr: %p, \n", *(v26 + 16));
              a5("        skip_size: %zu, \n", *(v26 + 24));
              a5("        next: %p, \n", *(v26 + 32));
              a5("        remaining: %zu, \n", *(v26 + 40));
              v30 = "down";
              if (!*(v26 + 48))
              {
                v30 = "up";
              }

              a5("        direction: %s\n", v30);
              a5("    }\n");
              ++v25;
              v26 += 112;
            }

            while (v25 < *(v11 + 442));
          }

          a5("}, \n");
          a5("segment_group_ids_count: %u, \n", *(v11 + 443));
          a5("segment_group_front_count: %u, \n", *(v11 + 444));
          a5("segment_group_count: %u, \n", *(v11 + 445));
          a5("segment_groups: {\n");
          v31 = *(v11 + 504);
          if (v70 <= v31)
          {
            v32 = *(v11 + 445);
            v33 = v31 - v70;
            if (!__CFADD__(v33, 544 * v32) && v33 + 544 * v32 <= *(v11 + 416))
            {
              v34 = v33 + v11;
              if (v33 + v11)
              {
                if (*(v11 + 445))
                {
                  v35 = 0;
                  while (1)
                  {
                    a5("    ");
                    if (v35)
                    {
                      a5(", ");
                    }

                    v36 = (v34 + 544 * v35);
                    a5("%d: {\n", v35);
                    v37 = *v36;
                    v38 = "unknown";
                    if (v37 <= 3)
                    {
                      v38 = (&off_27A70E848)[v37];
                    }

                    a5("        id: %s, \n", v38);
                    a5("        front: %d, \n", *(v36 + 1));
                    a5("        range_group: %p, \n", v36[6]);
                    a5("        segment_cache: { \n");
                    a5("            max_count: %u, \n", *(v36 + 256));
                    a5("            count: %u, \n", *(v36 + 257));
                    a5("            max_entry_slices: %u, \n", *(v36 + 129));
                    a5("            segments: { \n");
                    if (*(v36 + 257))
                    {
                      v39 = v36[62];
                      if (v39)
                      {
                        break;
                      }
                    }

LABEL_60:
                    a5("            } \n");
                    a5("        } \n");
                    a5("    }\n");
                    if (++v35 >= *(v11 + 445))
                    {
                      goto LABEL_61;
                    }
                  }

                  while (1)
                  {
                    v72[0] = 0;
                    if ((a4)(a1, v39, 22608, v72) || v75(v74, v39, v72[0], "                    "))
                    {
                      goto LABEL_103;
                    }

                    v39 = *(v72[0] + 40);
                    if (!v39)
                    {
                      goto LABEL_60;
                    }
                  }
                }

LABEL_61:
                a5("}, \n");
                a5("xzones: {\n");
                v40 = *(v11 + 216);
                if (v70 <= v40)
                {
                  v41 = *(v11 + 210);
                  v42 = v40 - v70;
                  v43 = v40 - v70 + (v41 << 7);
                  if (!__CFADD__(v40 - v70, v41 << 7))
                  {
                    v44 = *(v11 + 416);
                    if (v43 <= v44)
                    {
                      v66 = v42 + v11;
                      if (v42 + v11)
                      {
                        v45 = *(v11 + 224);
                        if (v70 <= v45)
                        {
                          v46 = v45 - v70;
                          v47 = __CFADD__(v45 - v70, 48 * *(v11 + 210) * *(v11 + 211));
                          v48 = v45 - v70 + 48 * *(v11 + 210) * *(v11 + 211);
                          if (!v47)
                          {
                            v49 = v46 + v11;
                            v69 = v49;
                            v50 = v48 > v44 || v49 == 0;
                            if (!v50)
                            {
                              v10 = v103;
                              if (*(v103 + 210) >= 2u)
                              {
                                v51 = 1;
                                do
                                {
                                  v52 = v66 + (v51 << 7);
                                  a5("    %d: {\n", v51);
                                  a5("        early_budget: %u, \n", *(v52 + 64));
                                  a5("        id: %d, \n", *(v52 + 104));
                                  a5("        bucket: %d, \n", *(v52 + 108));
                                  a5("        segment_group_id: %d, \n", *(v52 + 66));
                                  a5("        front: %d, \n", *(v52 + 67));
                                  if (*(v52 + 72) > 0x1000uLL)
                                  {
                                    LODWORD(v53) = *(v52 + 32);
                                  }

                                  else
                                  {
                                    v53 = (*v52 >> 57) & 0x3FLL;
                                  }

                                  a5("        batch_count: %u, \n", v53);
                                  a5("        block_size: %llu, \n", *(v52 + 72));
                                  a5("        chunk_count: %llu, \n", *(v52 + 96));
                                  a5("        chunk_capacity: %u, \n", *(v52 + 92));
                                  a5("        sequestered: %d,\n", *(v52 + 111) & 1);
                                  v54 = *(v52 + 109);
                                  v55 = "UNKNOWN";
                                  if (v54 <= 2)
                                  {
                                    v55 = (&off_27A70E830)[v54];
                                  }

                                  a5("        list_config: %s,\n", v55);
                                  v56 = *(v52 + 110);
                                  v57 = "UNKNOWN";
                                  if (v56 <= 2)
                                  {
                                    v57 = (&off_27A70E830)[v56];
                                  }

                                  a5("        slot_config: %s,\n", v57);
                                  a5("        allocation_slots: [\n");
                                  if (*(v10 + 211))
                                  {
                                    v58 = 0;
                                    do
                                    {
                                      v59 = (v69 + 48 * (v51 + v58 * *(v10 + 210)));
                                      a5("            {\n");
                                      if (*(v52 + 72) <= 0x1000uLL || *(v10 + 250) == 1)
                                      {
                                        a5("                atomic_value: 0x%llx,\n", *v59);
                                        a5("                xsg_locked: 0x%llx,\n", *v59 & 1);
                                        a5("                xsg_waiters: 0x%llx,\n", (*v59 >> 1) & 1);
                                        a5("                xsc_ptr: 0x%llx,\n", (*v59 >> 2) & 0x7FFFFFFFFFFFLL);
                                        a5("                operations: %lu,\n", *(v59 + 8));
                                        a5("                contentions: %lu,\n", *(v59 + 9) & 0xFFFFFF);
                                        if (HIBYTE(*(v59 + 9)) <= 2u)
                                        {
                                          v60 = *(&off_27A70E830 + ((*(v59 + 9) >> 21) & 0x7F8));
                                        }

                                        v61 = "                slot_config: %s,\n";
                                      }

                                      else
                                      {
                                        a5("                chunk: %p,\n", *v59);
                                        a5("                allocations: %lu,\n", *(v59 + 8));
                                        v62 = *(v59 + 9);
                                        v61 = "                contentions: %lu,\n";
                                      }

                                      a5(v61);
                                      a5("                last_chunk_empty_ts: %llu\n", v59[5]);
                                      a5("            }");
                                      if (*(v10 + 211) - 1 > v58)
                                      {
                                        a5(",");
                                      }

                                      a5("\n");
                                      ++v58;
                                    }

                                    while (v58 < *(v10 + 211));
                                  }

                                  a5("        ]\n");
                                  a5("    }");
                                  if (*(v10 + 210) - 1 > v51)
                                  {
                                    a5(",");
                                  }

                                  a5("\n");
                                  ++v51;
                                }

                                while (v51 < *(v10 + 210));
                              }

                              a5("}, \n");
                              v9 = v68;
                              goto LABEL_96;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_103:
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(v92, 8);
    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(&v97, 8);
  }
}

uint64_t _xzm_introspect_map_zone_and_main(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void **), void *a4, void *a5, void *a6)
{
  v10 = a2;
  v19 = 0;
  result = a3(a1, a2, 416, &v19);
  if (!result)
  {
    v13 = v19[25];
    if (v13 < 0x1A0)
    {
      return 5;
    }

    result = a3(a1, v10, v19[25], &v19);
    if (!result)
    {
      v18 = 0;
      v15 = v19;
      v16 = v19[30];
      if (v16)
      {
        result = a3(a1, v19[30], 640, &v18);
        if (result)
        {
          return result;
        }

        v17 = v18[52];
        if (v17 < 0x280)
        {
          return 5;
        }

        result = a3(a1, v16, v18[52], &v18);
        if (result)
        {
          return result;
        }

        v15 = v18;
        if (v17 < v18[52])
        {
          return 5;
        }

        v10 = v16;
      }

      else
      {
        v18 = v19;
        if (v19[52] != v13)
        {
          return 5;
        }
      }

      if (!v19)
      {
        _xzm_introspect_map_zone_and_main_cold_2(result, v14);
      }

      if (!v10)
      {
        _xzm_introspect_map_zone_and_main_cold_1();
      }

      result = 0;
      *a4 = v19;
      *a5 = v15;
      *a6 = v10;
    }
  }

  return result;
}

uint64_t _xzm_introspect_enumerate(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = a3 == a5;
  v17 = (a6 + 416);
  v18 = (a4 + 200);
  if (a3 == a5)
  {
    v18 = (a6 + 416);
  }

  v19 = *v18;
  if (a3 != a5)
  {
    goto LABEL_17;
  }

  v20 = *(a6 + 512);
  v21 = v20 - a3;
  if (v20 < a3)
  {
    return 5;
  }

  v22 = *(a6 + 446);
  v23 = 80 * *(a6 + 446);
  result = 5;
  v25 = __CFADD__(v21, v23);
  v26 = v21 + v23;
  if (v25)
  {
    return result;
  }

  if (v26 > *(a6 + 416))
  {
    return result;
  }

  v27 = v21 + a6;
  if (!v27)
  {
    return result;
  }

  if (!*(a6 + 446))
  {
LABEL_17:
    v33 = *(a6 + 520);
    v25 = v33 >= a5;
    v34 = v33 - a5;
    if (v25)
    {
      result = 5;
      if (v34 < 0xFFFFFFFFFFFF0000 && v34 + 0x10000 <= *v17)
      {
        v35 = v34 + a6;
        if (v34 + a6)
        {
          v36 = 0;
          v37 = 0;
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 0x40000000;
          v60 = ___xzm_introspect_enumerate_block_invoke;
          v61 = &unk_27A70E748;
          v58 = a1;
          v69 = a1;
          v66 = a4;
          v67 = a3;
          v68 = v19;
          v70 = a7;
          v62 = a9;
          v63 = a10;
          v71 = v16;
          v38 = a2;
          v64 = a11;
          v65 = a2;
          while (1)
          {
            v39 = (*(v35 + v36) & 0x7FFFFFFF) << 15;
            if (v39 && v37 != v39)
            {
              result = v60(v59, v39);
              v37 = v39;
              if (result)
              {
                break;
              }
            }

            v36 += 4;
            if (v36 == 0x10000)
            {
              v41 = *(a6 + 528);
              if (v41 >> 62)
              {
                return 5;
              }

              v42 = *(a6 + 536);
              result = 0;
              v25 = v42 >= a5;
              v43 = v42 - a5;
              if (v25 && !__CFADD__(v43, 4 * v41))
              {
                v44 = v58;
                if (v43 + 4 * v41 <= *v17)
                {
                  result = 0;
                  v45 = v43 + a6;
                  if (v43 + a6)
                  {
                    if (v41)
                    {
                      v46 = v38;
                      v47 = 0;
                      while (1)
                      {
                        v48 = *(v45 + 4 * v47);
                        if (v48)
                        {
                          break;
                        }

LABEL_48:
                        result = 0;
                        if (++v47 >= v41)
                        {
                          return result;
                        }
                      }

                      v72 = 0;
                      result = v46(v44, v48 << 16, 0x10000, &v72);
                      if (!result)
                      {
                        v49 = 0;
                        v50 = v72;
                        while (1)
                        {
                          v51 = (*(v50 + v49) & 0x7FFFFFFF) << 15;
                          if (v51 && v37 != v51)
                          {
                            result = v60(v59, v51);
                            v37 = v51;
                            if (result)
                            {
                              break;
                            }
                          }

                          v49 += 4;
                          if (v49 == 0x10000)
                          {
                            v41 = *(a6 + 528);
                            v46 = v38;
                            v44 = v58;
                            goto LABEL_48;
                          }
                        }
                      }
                    }
                  }
                }
              }

              return result;
            }
          }
        }
      }

      return result;
    }

    return 5;
  }

  v29 = 0;
  v55 = a3 == a5;
  v56 = a7;
  v53 = v27;
  v54 = v19;
  while (1)
  {
    v30 = a1;
    v31 = a2;
    v32 = v27 + 80 * v29;
    if (*(v32 + 40))
    {
      break;
    }

LABEL_16:
    ++v29;
    a2 = v31;
    a1 = v30;
    if (v29 >= v22)
    {
      goto LABEL_17;
    }
  }

  v57 = v29;
  while (1)
  {
    v72 = 0;
    result = v31(v30);
    if (result)
    {
      return result;
    }

    result = (*(a8 + 16))(a8, v72[1], *(v32 + 20), *(v32 + 16));
    if (result)
    {
      return result;
    }

    if (!*v72)
    {
      v22 = *(a6 + 446);
      v16 = v55;
      a7 = v56;
      v27 = v53;
      v19 = v54;
      v29 = v57;
      goto LABEL_16;
    }
  }
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 52) == 1 && *(a1 + 53) == 1)
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a2;
    v6[1] = a3;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 4, v6, 1);
  }

  return 0;
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a4 + 64) & 0xF;
  if (*(a1 + 52) == 1 && v13 == 8)
  {
    v18 = a2;
    v19 = 0x8000;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 4, &v18, 1);
  }

  v15 = *(a1 + 53);
  if ((v15 & 1) != 0 || *(a1 + 54) == 1)
  {
    v18 = a6;
    v19 = a5 << 14;
    if (v13 > 6 || ((1 << v13) & 0x64) == 0)
    {
      (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 3, &v18, 1);
    }

    else
    {
      if (v15)
      {
        (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 2, &v18, 1);
      }

      if (*(a1 + 54) == 1)
      {
        (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 1, a8, a9);
      }
    }
  }

  return 0;
}

uint64_t __xzm_ptr_in_use_enumerator_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (*(a1 + 52) == 1 && (*(a3 + 36) != 1 || (*(a4 + 64) & 0xF) != 8))
  {
    v9[2] = v6;
    v9[3] = v7;
    v9[0] = a6;
    v9[1] = a5 << 14;
    (*(a1 + 32))(*(a1 + 48), *(a1 + 40), 2, v9, 1);
  }

  return 0;
}

uint64_t _malloc_default_reader_0(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && !mach_task_is_self(a1))
  {
    mfmi_read_zone_cold_1();
  }

  *a4 = a2;
  return 0;
}

uint64_t ___xzm_introspect_enumerate_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  result = (*(a1 + 56))(*(a1 + 88), a2, 22608, &v18);
  if (!result)
  {
    v17 = 0;
    result = (*(a1 + 56))(*(a1 + 88), *(v18 + 56), *(v18 + 28) << 14, &v17);
    if (!result)
    {
      result = (*(*(a1 + 32) + 16))();
      if (!result)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___xzm_introspect_enumerate_block_invoke_2;
        v6[3] = &unk_27A70E720;
        v8 = v18;
        v9 = v17;
        v5 = *(a1 + 56);
        v10 = *(a1 + 64);
        v11 = *(a1 + 72);
        v15 = *(a1 + 92);
        v14 = *(a1 + 88);
        v12 = v5;
        v13 = a2;
        v16 = *(a1 + 93);
        v7 = *(a1 + 40);
        return xzm_segment_group_segment_foreach_span(v18, v6);
      }
    }
  }

  return result;
}

uint64_t ___xzm_introspect_enumerate_block_invoke_2()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v1;
  v59[2048] = *MEMORY[0x277D85DE8];
  v5 = *(v0 + 48);
  v6 = 0x3333333333334000 * ((v1 - v5 - 2128) >> 4);
  v7 = (v6 & 0x3FFFFFFFC000) + *(v5 + 56);
  v8 = *(v1 + 64) & 0xF;
  if (v8 - 5 < 4 || v8 == 2)
  {
    v10 = *(v0 + 64);
    if (*(v1 + 66) == *(v10 + 208))
    {
      v11 = 0;
      v12 = *(v0 + 56);
      if (v8 <= 6 && ((1 << v8) & 0x64) != 0)
      {
        v13 = *(v0 + 72);
        v14 = *(v10 + 216) + (*(v1 + 65) << 7);
        if (v13 > v14)
        {
LABEL_10:
          v15 = 5;
LABEL_14:
          v16 = *MEMORY[0x277D85DE8];
          return v15;
        }

        v18 = v14 - v13;
        v19 = __CFADD__(v14 - v13, 128);
        v20 = v14 - v13 + 128;
        v21 = v19;
        v15 = 5;
        v11 = v18 + v10;
        if (!(v18 + v10) || (v21 & 1) != 0 || v20 > *(v0 + 80))
        {
          goto LABEL_14;
        }
      }

      if (*(v0 + 108) == 1)
      {
        v22 = *(v0 + 96);
        v23 = *(v0 + 32);
        if (v8 <= 6 && ((1 << v8) & 0x64) != 0)
        {
          v24 = *(v11 + 92);
          v15 = 5;
          if (v24 > 0x400)
          {
            goto LABEL_14;
          }

          v25 = *(v11 + 72);
          v26 = v25;
          if ((v2 << 14) / v25 != v24)
          {
            goto LABEL_14;
          }

          if (v8 == 5)
          {
            v27 = v23;
            v57 = v22;
            bzero(v59, 0x4000uLL);
            if (v24)
            {
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v31 = *v4;
              do
              {
                if (((v31 >> v29) & 1) == 0)
                {
                  v32 = &v59[2 * v30];
                  *v32 = v7 + v28;
                  v32[1] = v25;
                  ++v30;
                }

                ++v29;
                v28 += v25;
              }

              while (v24 != v29);
              v30 = v30;
            }

            else
            {
              v30 = 0;
            }

            v39 = (*(v27 + 16))(v27, v57, v5, v4, v3, v7, v11, v59, v30);
            goto LABEL_65;
          }

          v40 = *v4;
          if ((~*v4 & 0x7FELL) == 0)
          {
            result = (*(v23 + 16))(v23, v22, v5, v4, v2, v7, v11, 0, 0);
            goto LABEL_38;
          }

          v56 = v23;
          v58 = v22;
          bzero(v59, 0x4000uLL);
          v41 = 0;
          v42 = 10;
          if (v26 <= 0x1000)
          {
            v42 = 4;
          }

          v43 = (v40 >> 11) & 0x7FF;
          v44 = v40 & 0x7FF;
          if (v44 <= 0x3FF && v43)
          {
            v41 = 0;
            v45 = v26 >> v42;
            do
            {
              if (v44 % v45)
              {
                break;
              }

              v46 = &v59[2 * (v44 / v45)];
              if (*v46)
              {
                break;
              }

              ++v41;
              *v46 = 1;
              if (v41 >= v43)
              {
                break;
              }

              v44 = *(v6 + v12 + (v44 << v42) + 8) & 0x7FFLL;
            }

            while (v44 < 0x400);
          }

          if ((v40 & 0xFC00000) == 0xFC00000)
          {
            goto LABEL_10;
          }

          v19 = v41 >= v43;
          v47 = v41 - v43;
          if (v19 || v43 > v24)
          {
            v47 = 0;
          }

          v49 = v47 + v24;
          if (v49)
          {
            v50 = 0;
            v51 = v59;
            v52 = v7;
            v53 = v56;
            do
            {
              v54 = *v51;
              v51 += 16;
              if ((v54 & 1) == 0)
              {
                v55 = &v59[2 * v50];
                *v55 = v52;
                v55[1] = v26;
                ++v50;
              }

              v52 += v26;
              --v49;
            }

            while (v49);
            v49 = v50;
          }

          else
          {
            v53 = v56;
          }

          v39 = (*(v53 + 16))(v53, v58, v5, v4, v3, v7, v11, v59, v49);
        }

        else
        {
          v59[0] = (v6 & 0x3FFFFFFFC000) + *(v5 + 56);
          v59[1] = v2 << 14;
          v39 = (*(v23 + 16))(v23, v22, v5, v4, v2, v7, 0, v59, 1);
        }

LABEL_65:
        v15 = v39;
        goto LABEL_14;
      }

      result = (*(*(v0 + 32) + 16))(*(v0 + 32), *(v0 + 96), v5, v1, v2, v7, v11, 0, 0);
LABEL_38:
      v38 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  if (*(v0 + 109) != 1 || *(v1 + 66))
  {
    v15 = 0;
    goto LABEL_14;
  }

  v33 = *(v0 + 96);
  v34 = *(*(v0 + 40) + 16);
  v35 = *MEMORY[0x277D85DE8];
  v36 = *(v0 + 40);
  v37 = (v6 & 0x3FFFFFFFC000) + *(v5 + 56);

  return v34(v36, v33, v5, v4, v2, v37);
}

uint64_t __xzm_print_block_invoke(uint64_t a1, mach_vm_offset_t address, unint64_t a3, const char *a4)
{
  result = *(a1 + 64);
  if (!result)
  {
    return result;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 24);
  v11 = MEMORY[0x277D85FA0];
  v12 = *MEMORY[0x277D85FA0];
  if (v10 > address || v10 + v12 * *(*(*(a1 + 40) + 8) + 24) < a3 + address)
  {
    *(v9 + 24) = address;
    v13 = a3 / v12;
    if (a3 % v12)
    {
      ++v13;
    }

    v14 = 0x400000 / v12;
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 24);
    if (v15 > v17)
    {
      v18 = *(*(*(a1 + 48) + 8) + 24);
      v19 = MEMORY[0x277D85F48];
      if (v18)
      {
        mach_vm_deallocate(*MEMORY[0x277D85F48], v18, 4 * v17);
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v16 = *(*(a1 + 40) + 8);
      }

      *(v16 + 24) = v15;
      result = mach_vm_allocate(*v19, (*(*(a1 + 48) + 8) + 24), 4 * *(*(*(a1 + 40) + 8) + 24), 1);
      if (result)
      {
        return result;
      }

      LODWORD(result) = *(a1 + 64);
    }

    dispositions_count = v15;
    if (a3 <= 0x400000)
    {
      v20 = 0x400000;
    }

    else
    {
      v20 = a3;
    }

    result = mach_vm_page_range_query(result, address, v20, *(*(*(a1 + 48) + 8) + 24), &dispositions_count);
    if (result)
    {
      return result;
    }
  }

  v28 = a4;
  (*(a1 + 56))("%s    dispositions: ", a4);
  if (*v11 <= a3)
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v24 = (address - *(*(*(a1 + 32) + 8) + 24)) / *v11;
    while (v24 < *(*(*(a1 + 40) + 8) + 24))
    {
      v25 = *(*(*(*(a1 + 48) + 8) + 24) + 4 * v24);
      if ((v25 & 8) != 0)
      {
        ++v21;
        v27 = "d";
      }

      else
      {
        v26 = v25 & 0x10;
        if (v26)
        {
          v27 = "s";
        }

        else
        {
          v27 = "c";
        }

        v22 += v26 >> 4;
      }

      (*(a1 + 56))(v27);
      ++v24;
      if (++v23 >= a3 / *v11)
      {
        goto LABEL_29;
      }
    }

    return 5;
  }

  else
  {
    v21 = 0;
    v22 = 0;
LABEL_29:
    (*(a1 + 56))(", \n");
    (*(a1 + 56))("%s    dirty_count: %zu, \n", v28, v21);
    (*(a1 + 56))("%s    swapped_count: %zu, \n", v28, v22);
    return 0;
  }
}

uint64_t __xzm_print_block_invoke_2(uint64_t a1, const void *a2, uint64_t a3, const char *a4)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 56))(", ");
  }

  (*(a1 + 56))("%s%p: {\n", a4, a2);
  (*(a1 + 56))("%s    addr: %p, \n", a4, a2);
  v8 = 0xF0F0F0F0F0F0F0F1 * ((*(a3 + 16) - *(*(a1 + 64) + 504)) >> 5);
  v9 = "unknown";
  if ((v8 & 0xFC) == 0)
  {
    v9 = (&off_27A70E848)[v8 & 3];
  }

  (*(a1 + 56))("%s    segment_group: %s, \n", a4, v9);
  (*(a1 + 56))("%s    body_addr: %p, \n", a4, *(a3 + 56));
  (*(a1 + 56))("%s    used: %u, \n", a4, *(a3 + 24));
  v10 = "huge_segment";
  if (*(a3 + 36) != 1)
  {
    v10 = "unknown";
  }

  if (*(a3 + 36))
  {
    v11 = v10;
  }

  else
  {
    v11 = "normal_segment";
  }

  (*(a1 + 56))("%s    kind: %s, \n", a4, v11);
  if (*(a3 + 64) == -1)
  {
    v12 = "%s    reclaim_id: -1, \n";
  }

  else
  {
    v15 = *(a3 + 64);
    v12 = "%s    reclaim_id: %llu, \n";
  }

  (*(a1 + 56))(v12);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v13 = *(a3 + 28) << 14;
    (*(*(a1 + 32) + 16))(*(a1 + 32), *(a3 + 56));
  }

  (*(a1 + 56))("%s    slice_count: %u, \n", a4, *(a3 + 28));
  (*(a1 + 56))("%s    slice_entry_count: %u \n", a4, *(a3 + 32));
  (*(a1 + 56))("%s}\n", a4);
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

uint64_t __xzm_print_block_invoke_3(uint64_t a1, const void *a2, int a3, unsigned int a4)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a2);
  (*(a1 + 48))("        addr: %p, \n", a2);
  if (a4 > 4)
  {
    v8 = "unknown slab";
  }

  else
  {
    v8 = (&off_27A70E868)[a4];
  }

  (*(a1 + 48))("        kind: %s, \n", v8);
  (*(*(a1 + 32) + 16))();
  (*(a1 + 48))("        size: %u \n", a3);
  (*(a1 + 48))("    }\n");
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

uint64_t __xzm_print_block_invoke_4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, const void *a6, uint64_t a7)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a6);
  (*(a1 + 48))("        addr: %p, \n", a6);
  (*(a1 + 48))("        metadata_addr: %p, \n", &a2[a4 - a3]);
  (*(a1 + 48))("        mzone: %d, \n", *(a4 + 66));
  (*(a1 + 48))("        xzone: %d, \n", *(a4 + 65));
  (*(a1 + 48))("        segment: %p, \n", a2);
  (*(a1 + 48))("        segment_group: %zu, \n", 0xF0F0F0F0F0F0F0F1 * ((*(a3 + 16) - *(*(a1 + 56) + 504)) >> 5));
  v14 = *(a4 + 64) & 0xF;
  if (v14 > 9)
  {
    v15 = "unknown";
  }

  else
  {
    v15 = (&off_27A70E890)[v14];
  }

  (*(a1 + 48))("        kind: %s, \n", v15);
  (*(a1 + 48))("        slice_count: %u, \n", a5);
  if (a7)
  {
    v16 = *(a7 + 72);
  }

  else
  {
    v16 = 0;
  }

  (*(a1 + 48))("        block_size: %u, \n", v16);
  (*(a1 + 48))("        in_use: 1, \n");
  (*(a1 + 48))("        slice_metadata: %p, \n", *(a3 + 0xFFFFFFFE66666668 * ((a4 - a3 - 2128) >> 4) + 72));
  v17 = (*(*(a1 + 32) + 16))();
  if (!v17)
  {
    if (v14 > 6 || ((1 << v14) & 0x64) == 0)
    {
      goto LABEL_17;
    }

    (*(a1 + 48))("        bucket: %u,\n", *(a7 + 108));
    switch(v14)
    {
      case 6:
        goto LABEL_15;
      case 5:
        (*(a1 + 48))("        free: 0x%x,\n", *a4);
        (*(a1 + 48))("        used: %u,\n", *(a4 + 4));
        v20 = *(a4 + 32);
        (*(a1 + 48))("        alloc_idx: %u,\n");
        break;
      case 2:
LABEL_15:
        (*(a1 + 48))("        meta: 0x%llx,\n", *a4);
        (*(a1 + 48))("        xca_alloc_head: 0x%llx,\n", *a4 & 0x7FF);
        (*(a1 + 48))("        xca_free_count: 0x%llx,\n", (*a4 >> 11) & 0x7FF);
        (*(a1 + 48))("        xca_alloc_idx: 0x%llx,\n", (*a4 >> 22) & 0x3F);
        (*(a1 + 48))("        xca_on_partial_list: 0x%llx,\n", (*a4 >> 28) & 1);
        (*(a1 + 48))("        xca_on_empty_list: 0x%llx,\n", (*a4 >> 29) & 1);
        (*(a1 + 48))("        xca_walk_locked: 0x%llx,\n", (*a4 >> 30) & 1);
        (*(a1 + 48))("        xca_head_seqno: 0x%llx,\n", (*a4 >> 31) & 0x1FFFLL);
        v19 = *a4 >> 44;
        (*(a1 + 48))("        xca_seqno: 0x%llx,\n");
        break;
    }

LABEL_17:
    (*(a1 + 48))("        is_preallocated: %d,\n", (*(a4 + 64) >> 6) & 1);
    (*(a1 + 48))("        is_pristine: %d\n", (*(a4 + 64) >> 4) & 1);
    (*(a1 + 48))("    }\n");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v17;
}

uint64_t __xzm_print_block_invoke_5(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, const void *a6)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a6);
  (*(a1 + 48))("        addr: %p, \n", a6);
  (*(a1 + 48))("        metadata_addr: %p, \n", &a2[a4 - a3]);
  (*(a1 + 48))("        mzone: %d, \n", *(a4 + 66));
  (*(a1 + 48))("        xzone: %d, \n", *(a4 + 65));
  (*(a1 + 48))("        segment: %p, \n", a2);
  (*(a1 + 48))("        segment_group: %zu, \n", 0xF0F0F0F0F0F0F0F1 * ((*(a3 + 16) - *(*(a1 + 56) + 504)) >> 5));
  v12 = *(a4 + 64) & 0xF;
  if (v12 > 9)
  {
    v13 = "unknown";
  }

  else
  {
    v13 = (&off_27A70E890)[v12];
  }

  (*(a1 + 48))("        kind: %s, \n", v13);
  (*(a1 + 48))("        slice_count: %u, \n", a5);
  (*(a1 + 48))("        slice_metadata: %p, \n", *(a3 + 0xFFFFFFFE66666668 * ((a4 - a3 - 2128) >> 4) + 72));
  v14 = (*(*(a1 + 32) + 16))();
  if (!v14)
  {
    (*(a1 + 48))("        is_preallocated: %d,\n", (*(a4 + 64) >> 6) & 1);
    (*(a1 + 48))("        in_use: 0 \n");
    (*(a1 + 48))("    }\n");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v14;
}

uint64_t _malloc_default_debug_sleep_time()
{
  if (malloc_error_sleep)
  {
    return 3600;
  }

  else
  {
    return 0;
  }
}

char *malloc_print_configure()
{
  v0 = getenv("MallocDebugReport");
  if (v0)
  {
    v1 = v0;
    if (MEMORY[0x277CA8090](v0, "stderr"))
    {
      if (MEMORY[0x277CA8090](v1, "crash"))
      {
        if (MEMORY[0x277CA8090](v1, "none"))
        {
          debug_mode = 2;
          malloc_printf("Unrecognized value for MallocDebugReport (%s) - using 'stderr'\n", v1);
        }

        else
        {
          debug_mode = 0;
        }

        goto LABEL_11;
      }

      v2 = 0x280A68000uLL;
      v3 = 1;
    }

    else
    {
      v2 = 0x280A68000;
      v3 = 2;
    }

    *(v2 + 812) = v3;
    goto LABEL_11;
  }

  if (isatty(2))
  {
    debug_mode = 2;
  }

LABEL_11:
  if (getenv("MallocErrorStop"))
  {
    malloc_error_stop = 1;
  }

  result = getenv("MallocErrorSleep");
  if (result)
  {
    malloc_error_sleep = 1;
  }

  return result;
}

uint64_t malloc_vreport(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  result = _simple_salloc();
  if (result)
  {
    if ((a1 & 0x20) == 0)
    {
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      getprogname();
      getpid();
      _simple_sprintf();
    }

    if (a3)
    {
      _simple_sprintf();
    }

    _simple_vsprintf();
    if ((a1 & 0x100) != 0)
    {
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      *array = 0u;
      v10 = backtrace(array, 50);
      if (v10)
      {
        v11 = v10;
        backtrace_image_offsets(array, &image_offsets, v10);
        if (v11 >= 1)
        {
          v12 = 0;
          p_image_offsets = &image_offsets;
          do
          {
            *uu1 = 0;
            v20 = 0;
            if (!v12 || uuid_compare(uu1, p_image_offsets->uuid))
            {
              uuid_copy(uu1, p_image_offsets->uuid);
              memset(out, 0, 37);
              uuid_unparse(p_image_offsets->uuid, out);
            }

            _simple_sappend();
            offset = p_image_offsets->offset;
            _simple_sprintf();
            ++v12;
            ++p_image_offsets;
          }

          while (v11 != v12);
        }
      }
    }

    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      _simple_put();
    }

    if (!(_malloc_no_asl_log | a1 & 0x10))
    {
      _simple_string();
      _simple_asl_log();
    }

    if ((a1 & 0x40) != 0)
    {
      result = _simple_string();
      v14 = result;
    }

    else
    {
      result = _simple_sfree();
      v14 = 0;
    }
  }

  else
  {
    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      if ((a1 & 0x20) == 0)
      {
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        getprogname();
        getpid();
        _simple_dprintf();
      }

      if (a3)
      {
        _simple_dprintf();
      }

      result = _simple_vdprintf();
    }

    if ((a1 & 0x40) != 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }
  }

  if ((a1 & 0xC0) != 0)
  {
    result = _malloc_put(a1, "*** set a breakpoint in malloc_error_break to debug\n");
    if (malloc_error_stop == 1)
    {
      _malloc_put(5u, "*** sending SIGSTOP to help debug\n");
      v15 = getpid();
      result = kill(v15, 17);
    }

    else if (a2)
    {
      _malloc_put(5u, "*** sleeping to help debug\n");
      result = sleep(a2);
    }
  }

  if ((a1 & 0x40) != 0)
  {
    qword_280A681E0 = v14;
    abort();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

ssize_t _malloc_put(unsigned int a1, const void *a2)
{
  result = _simple_salloc();
  if (result)
  {
    if ((a1 & 0x20) == 0)
    {
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      getprogname();
      getpid();
      _simple_sprintf();
    }

    _simple_sprintf();
    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      _simple_put();
    }

    if (_malloc_no_asl_log & ~(a1 >> 4))
    {
      _simple_string();
      _simple_asl_log();
    }

    return _simple_sfree();
  }

  else if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
  {
    if ((a1 & 0x20) == 0)
    {
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      getprogname();
      getpid();
      _simple_dprintf();
    }

    v5 = _platform_strlen();

    return write(2, a2, v5);
  }

  return result;
}

uint64_t malloc_report(unsigned int a1, uint64_t a2)
{
  if (malloc_error_sleep)
  {
    v3 = 3600;
  }

  else
  {
    v3 = 0;
  }

  return malloc_vreport(a1, v3, 0, 0, a2);
}

uint64_t malloc_report_simple(uint64_t a1)
{
  if (malloc_error_sleep)
  {
    v1 = 3600;
  }

  else
  {
    v1 = 0;
  }

  return malloc_vreport(0x30u, v1, 0, 0, a1);
}

uint64_t malloc_zone_error(__int16 a1, char a2, uint64_t a3)
{
  v3 = a2 ^ 1;
  if ((a1 & 0x100) == 0)
  {
    v3 = 1;
  }

  if ((((a1 & 0x40) == 0) & v3) != 0)
  {
    v4 = 147;
  }

  else
  {
    v4 = 67;
  }

  if (malloc_error_sleep)
  {
    v5 = 3600;
  }

  else
  {
    v5 = 0;
  }

  return malloc_vreport(v4, v5, 0, 0, a3);
}

void _xzm_introspect_map_zone_and_main_cold_2(const void *a1, int a2)
{
  qword_280A681E0 = "BUG IN LIBMALLOC: malloc assertion zone failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_frameworks/src/xzone/xzone_introspect.c:772)";
  __break(1u);
  _Block_object_dispose(a1, a2);
}
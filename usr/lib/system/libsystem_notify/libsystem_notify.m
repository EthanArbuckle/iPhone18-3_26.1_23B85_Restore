BOOL notify_is_valid_token(int val)
{
  v1 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v2 = os_set_32_ptr_find();
  v4 = v2 && (v3 = *(v1 + 448), v3 != v2) && (*(v2 - v3 + 27) & 8) == 0;
  os_unfair_lock_unlock((v1 + 104));
  return v4;
}

uint64_t sub_299E35B5C()
{
  v16[3] = *MEMORY[0x29EDCA608];
  if (*MEMORY[0x29EDCA698] == -1)
  {
    v0 = *(MEMORY[0x29EDCA698] + 8);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if ((++qword_2A18982A8 & 3) != 0)
  {
    goto LABEL_18;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(v0 + 8 * v2);
    if (v4 == 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_6;
    }

    v1 |= 1 << v2;
    if (v3)
    {
      if (v3 > 2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      memset(v16, 0, 24);
    }

    v16[v3++] = v4;
LABEL_6:
    ++v2;
  }

  while (v2 != 13);
  if (v1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("BUG IN LIBNOTIFY CLIENT: internal data structure corrupted [0x%04llx, 0x%llx, 0x%llx, 0x%llx]]", v6, v7, v8, v9, v10, v11, v12, v1);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "BUG IN LIBNOTIFY CLIENT: internal data structure corrupted [0x%04llx, 0x%llx, 0x%llx, 0x%llx]]", v7, v8, v9, v10, v11, v12, v1);
    }

    *(v0 + 96) = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v0 + 64) = v13;
    *(v0 + 80) = v13;
    *(v0 + 32) = v13;
    *(v0 + 48) = v13;
    *v0 = v13;
    *(v0 + 16) = v13;
  }

LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
  return v0;
}

uint32_t notify_check(int token, int *check)
{
  v4 = sub_299E35B5C();
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v12 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v12)
      {
        v11 = v12;
        if (v12 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
LABEL_66:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v14, v15, v16, v17, v18, v19, v20, "notify_check");
            goto LABEL_69;
          }

LABEL_68:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v15, v16, v17, v18, v19, v20, "notify_check");
          goto LABEL_69;
        }

        goto LABEL_69;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  if (check)
  {
    v6 = sub_299E36108();
    if (v6)
    {
      v7 = v6;
      if ((*(v6 + 24) & 0x80000000) != 0)
      {
        os_unfair_lock_lock_with_options();
        v21 = os_set_64_ptr_find();
        if (v21 && (v22 = *(v4 + 224), v22 != v21))
        {
          v27 = v21 - v22;
          v28 = *(*(v27 + 48) + 60);
          if (v28 == *(v27 + 72))
          {
            v29 = 0;
          }

          else
          {
            *(v27 + 72) = v28;
            v29 = 1;
          }

          v10 = 0;
          *check = v29;
        }

        else
        {
          v10 = 2;
        }

        os_unfair_lock_unlock((v4 + 344));
LABEL_64:
        v33 = *check;
        sub_299E3617C(v7);
        if (v10 < 0xB)
        {
          v11 = v10;
          goto LABEL_69;
        }

        v11 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_66;
        }

        goto LABEL_68;
      }

      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        return v6;
      }

      v8 = *(v7 + 24);
      if ((v8 & 0xF) == 1)
      {
        if (*(v4 + 592))
        {
          *check = 0;
          os_unfair_lock_lock_with_options();
          v9 = *(v4 + 592);
          if (*(v7 + 32) != *(v9 + 4 * *(v7 + 28)))
          {
            *check = 1;
            *(v7 + 32) = *(v9 + 4 * *(v7 + 28));
          }

          os_unfair_lock_unlock((v4 + 108));
          v10 = 0;
        }

        else
        {
          v10 = 32;
        }

        goto LABEL_64;
      }

      if (!*(v4 + 384))
      {
        v10 = sub_299E38CF8(v4);
        if (v10)
        {
          goto LABEL_64;
        }

        v8 = *(v7 + 24);
      }

      v23 = token;
      if ((v8 & 0x4000000) != 0)
      {
        v23 = *(*(v7 + 104) + 48);
      }

      v24 = *(v4 + 384);
      *&msg[20] = 0u;
      v36 = 0u;
      *&msg[4] = 0u;
      *&msg[24] = *MEMORY[0x29EDCA690];
      *&msg[32] = v23;
      special_reply_port = mig_get_special_reply_port();
      *&msg[8] = v24;
      *&msg[12] = special_reply_port;
      *msg = 5395;
      *&msg[16] = 0x3EA00000000;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
        v26 = *&msg[12];
      }

      else
      {
        v26 = special_reply_port;
      }

      v30 = mach_msg(msg, 3162115, 0x24u, 0x34u, v26, 0, 0);
      v31 = v30;
      if ((v30 - 268435458) <= 0xE && ((1 << (v30 - 2)) & 0x4003) != 0)
      {
        v10 = 33;
        goto LABEL_64;
      }

      if (v30)
      {
        mig_dealloc_special_reply_port();
        goto LABEL_61;
      }

      if (*&msg[20] == 71)
      {
        v31 = -308;
      }

      else if (*&msg[20] == 1102)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v31 = *&msg[32];
              if (!*&msg[32])
              {
                v10 = DWORD1(v36);
                *check = v36;
                goto LABEL_64;
              }

              goto LABEL_60;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v32 = 1;
            }

            else
            {
              v32 = *&msg[32] == 0;
            }

            if (v32)
            {
              v31 = -300;
            }

            else
            {
              v31 = *&msg[32];
            }

            goto LABEL_60;
          }
        }

        v31 = -300;
      }

      else
      {
        v31 = -301;
      }

LABEL_60:
      mach_msg_destroy(msg);
LABEL_61:
      if (v31)
      {
        v10 = 33;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_64;
    }

    v11 = 2;
  }

  else
  {
    v11 = 10;
  }

LABEL_69:
  LODWORD(v6) = v11;
  return v6;
}

uint64_t sub_299E36108()
{
  v0 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v1 = os_set_32_ptr_find();
  if (v1 && (v2 = *(v0 + 448), v2 != v1))
  {
    v3 = v1 - v2;
    atomic_fetch_add_explicit((v1 - v2 + 16), 1u, memory_order_relaxed);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((v0 + 104));
  return v3;
}

void sub_299E3617C(unsigned int *a1)
{
  v2 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  sub_299E361D0(v2, a1);

  os_unfair_lock_unlock(v2 + 26);
}

void sub_299E361D0(uint64_t a1, unsigned int *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner((a1 + 104));
  if (!a2)
  {
    goto LABEL_4;
  }

  v4 = atomic_fetch_add_explicit(a2 + 4, 0xFFFFFFFF, memory_order_release) - 1;
  if (v4 < 0)
  {
    goto LABEL_57;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  __dmb(9u);
  os_unfair_lock_assert_owner((a1 + 104));
  v6 = a2[5];
  if (os_set_32_ptr_delete() != a2 + 5)
  {
    __assert_rtn("_nc_table_delete_n", "table.c", 76, "os_set_delete(&t->set, key) == expected");
  }

  v7 = a2[5];
  v8 = a2[6];
  os_unfair_lock_assert_owner((a1 + 104));
  v9 = *(a2 + 13);
  v10 = *(v9 + 32);
  if (sub_299E3A6A8())
  {
    _dyld_get_image_uuid();
    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    v47 = a2[6];
    v45 = *(v9 + 32);
    v46 = a2[5];
    _os_log_simple();
  }

  v11 = a2[6];
  if ((v11 & 0x4000000) != 0)
  {
    os_unfair_lock_assert_owner((a1 + 104));
    os_unfair_lock_lock_with_options();
    v12 = *a2;
    v13 = *(a2 + 1);
    v14 = (*a2 + 8);
    if (!*a2)
    {
      v14 = (v9 + 16);
    }

    *v14 = v13;
    *v13 = v12;
    os_unfair_lock_unlock((v9 + 40));
    sub_299E361D0(a1, *(v9 + 24));
  }

  else if ((v11 & 0x8000000) != 0)
  {
    os_unfair_lock_lock_with_options();
    *(v9 + 48) = -1;
    *(v9 + 24) = 0;
    os_unfair_lock_unlock((v9 + 40));
    sub_299E3A700(*(a1 + 384), a2[5]);
  }

  v15 = a2[9];
  os_unfair_lock_assert_owner((a1 + 104));
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v16 = *(a1 + 512);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = *(a1 + 520);
  do
  {
    if (*(v18 + 4 * v17) == v15)
    {
      v19 = v17;
    }

    else
    {
      v19 = -1;
    }

    ++v17;
  }

  while (v17 < v16 && v19 == -1);
  if (v19 == -1)
  {
    goto LABEL_36;
  }

  v20 = *(a1 + 536);
  v21 = *(v20 + 4 * v19);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v23 < 0 == v22)
  {
    *(v20 + 4 * v19) = v23;
    if (v23)
    {
      goto LABEL_36;
    }
  }

  v24 = *(v18 + 4 * v19);
  close_NOCANCEL();
  v25 = *(*(a1 + 528) + 4 * v19);
  close_NOCANCEL();
  LODWORD(v26) = *(a1 + 512);
  if (v26 == 1)
  {
    v27 = *(a1 + 520);
LABEL_35:
    free(v27);
    *(a1 + 520) = 0;
    free(*(a1 + 528));
    *(a1 + 528) = 0;
    free(*(a1 + 536));
    *(a1 + 536) = 0;
    *(a1 + 512) = 0;
    goto LABEL_36;
  }

  v28 = v19 + 1;
  v29 = *(a1 + 520);
  if (v28 < v26)
  {
    v30 = v17 - 1;
    v31 = *(a1 + 528);
    v32 = *(a1 + 536);
    do
    {
      v29[v30] = v29[v28];
      *(v31 + 4 * v30) = *(v31 + 4 * v28);
      *(v32 + 4 * v30++) = *(v32 + 4 * v28++);
      v26 = *(a1 + 512);
    }

    while (v28 < v26);
  }

  *(a1 + 512) = v26 - 1;
  *(a1 + 520) = reallocf(v29, 4 * (v26 - 1));
  *(a1 + 528) = reallocf(*(a1 + 528), 4 * *(a1 + 512));
  v33 = reallocf(*(a1 + 536), 4 * *(a1 + 512));
  *(a1 + 536) = v33;
  v27 = *(a1 + 520);
  if (!v27 || !v33 || !*(a1 + 528))
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_299E3985C(a1, a2[11], a2[6]);
  if ((a2[6] & 0xF) == 7)
  {
    v34 = a2[10];
    if (v34)
    {
      sub_299E3985C(a1, v34, a2[6] | 0x20000000);
    }
  }

  free(*(a2 + 11));
  v35 = *(a2 + 7);
  if (v35)
  {
    dispatch_async_f(*(a2 + 6), v35, MEMORY[0x29EDCA5F0]);
  }

  *(a2 + 7) = 0;
  v36 = *(a2 + 6);
  if (v36)
  {
    dispatch_release(v36);
  }

  free(a2);
  os_unfair_lock_assert_owner((a1 + 104));
  if (!v9)
  {
    goto LABEL_46;
  }

  v37 = atomic_fetch_add_explicit((v9 + 44), 0xFFFFFFFF, memory_order_release) - 1;
  if (v37 < 0)
  {
LABEL_57:
    __assert_rtn("atomic_refcount_release", "notify_client.c", 294, "result >= 0");
  }

  if (!v37)
  {
    __dmb(9u);
    sub_299E3B0EC(a1, v9);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_56:
    sub_299E3C458(a1 + 128);
    goto LABEL_4;
  }

LABEL_46:
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_47:
  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
    __break(0xB001u);
  }

  if ((v8 & 0xC000000) == 0)
  {
    v38 = sub_299E3A700(*(a1 + 384), v7);
    if (v38 != -308 && v38 && v38 != 268435459)
    {
      sub_299E3D364(v38, "<- %s [%d] _notify_server_cancel_2 failed: 0x%08x\n", v39, v40, v41, v42, v43, v44, "registration_node_delete_locked");
    }
  }

LABEL_4:
  v5 = *MEMORY[0x29EDCA608];
}

uint32_t notify_post(const char *name)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = sub_299E35B5C();
  if ((*(v2 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 592);
    if (v3 && *v3 != *(v2 + 112))
    {
      v22 = sub_299E374A4(v2);
      os_unfair_lock_unlock((v2 + 104));
      if (v22)
      {
        if (v22 < 0xB)
        {
          v7 = v22;
        }

        else
        {
          v7 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v24, v25, v26, v27, v28, v29, v30, "notify_post");
          }

          else
          {
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v25, v26, v27, v28, v29, v30, "notify_post");
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 104));
    }
  }

  if (!name)
  {
    v7 = 1;
    goto LABEL_18;
  }

  if (!strncmp(name, "self.", 5uLL))
  {
    goto LABEL_10;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
LABEL_10:
    os_unfair_lock_lock_with_options();
    v4 = os_set_str_ptr_find();
    if (v4)
    {
      v5 = v4 - *(v2 + 160);
      if (v5)
      {
        if (*(v5 + 8))
        {
          ++*(v5 + 60);
          v6 = *v5;
          if (*v5)
          {
            do
            {
              sub_299E3C694((v2 + 128), v6);
              v6 = *v6;
            }

            while (v6);
          }
        }
      }
    }

    os_unfair_lock_unlock((v2 + 344));
    goto LABEL_16;
  }

  if (*(v2 + 384) || (v31 = sub_299E38CF8(v2)) == 0)
  {
    v10 = sub_299E35B5C();
    os_unfair_lock_lock_with_options();
    v11 = sub_299E378D0(v10, name, -1, 0);
    os_unfair_lock_unlock(v10 + 26);
    if (v11)
    {
      os_unfair_lock_lock_with_options();
      if ((*(v2 + 116) & 4) != 0)
      {
        v49 = *(v2 + 384);
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        if (sub_299E3F558(v49, name, byte_2A1898280))
        {
          sub_299E37728(v11);
          v14 = os_variant_has_internal_diagnostics();
          v7 = 1000000;
          if (v14)
          {
            goto LABEL_80;
          }

          goto LABEL_90;
        }

        goto LABEL_60;
      }

      v12 = *&v11->_os_unfair_lock_opaque;
      v13 = *(v2 + 384);
      if (*&v11->_os_unfair_lock_opaque != -2)
      {
        if (v12 == -1)
        {
          if (qword_2A1898288 != -1)
          {
            dispatch_once(&qword_2A1898288, &unk_2A2020580);
          }

          if (sub_299E383B0(v13, name, byte_2A1898280))
          {
            v7 = 1000000;
            sub_299E37728(v11);
            v14 = os_variant_has_internal_diagnostics();
            if (v14)
            {
              goto LABEL_80;
            }

LABEL_90:
            sub_299E3D364(v14, "Libnotify: %s failed with code %d (%d) on line %d", v16, v17, v18, v19, v20, v21, "notify_post");
            goto LABEL_18;
          }

          os_unfair_lock_assert_owner(v11 + 10);
          v44 = -2;
          goto LABEL_59;
        }

        if (qword_2A1898288 != -1)
        {
          v50 = *&v11->_os_unfair_lock_opaque;
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
          v12 = v50;
        }

        *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
        *&msg[1].msgh_remote_port = v12;
        msg[1].msgh_voucher_port = byte_2A1898280;
        *&msg[0].msgh_bits = 19;
        *&msg[0].msgh_voucher_port = 0x3F100000000;
        *&msg[0].msgh_remote_port = v13;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
        }

        if (mach_msg(msg, 2097153, 0x2Cu, 0, 0, 0, 0))
        {
          v7 = 1000000;
          sub_299E37728(v11);
          v14 = os_variant_has_internal_diagnostics();
          if (v14)
          {
            goto LABEL_80;
          }

          goto LABEL_90;
        }

LABEL_60:
        sub_299E37728(v11);
LABEL_16:
        v7 = 0;
        goto LABEL_18;
      }

      if (qword_2A1898288 != -1)
      {
        dispatch_once(&qword_2A1898288, &unk_2A2020580);
      }

      v42 = byte_2A1898280;
      memset(msg, 0, 512);
      *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v43 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, name, 512);
      }

      else
      {
        v43 = mig_strncpy(&msg[1].msgh_voucher_port, name, 512);
      }

      msg[1].msgh_remote_port = 0;
      msg[1].msgh_local_port = v43;
      v45 = (v43 + 3) & 0xFFFFFFFC;
      *(&msg[1].msgh_voucher_port + v45) = v42;
      special_reply_port = mig_get_special_reply_port();
      *&msg[0].msgh_remote_port = __PAIR64__(special_reply_port, v13);
      msg[0].msgh_bits = 5395;
      *&msg[0].msgh_voucher_port = 0x3F000000000;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
        msgh_local_port = msg[0].msgh_local_port;
      }

      else
      {
        msgh_local_port = special_reply_port;
      }

      v48 = mach_msg(msg, 3162115, v45 + 44, 0x38u, msgh_local_port, 0, 0);
      if ((v48 - 268435458) > 0xE || ((1 << (v48 - 2)) & 0x4003) == 0)
      {
        if (v48)
        {
          mig_dealloc_special_reply_port();
        }

        else if (msg[0].msgh_id != 1108 || (msg[0].msgh_bits & 0x80000000) != 0 || *&msg[0].msgh_size != 48 || msg[1].msgh_remote_port)
        {
          mach_msg_destroy(msg);
        }

        else
        {
          if (!msg[1].msgh_id)
          {
            v44 = *&msg[1].msgh_local_port;
            os_unfair_lock_assert_owner(v11 + 10);
            goto LABEL_59;
          }

          if (msg[1].msgh_id == 60)
          {
            os_unfair_lock_assert_owner(v11 + 10);
            v44 = -1;
LABEL_59:
            *&v11->_os_unfair_lock_opaque = v44;
            goto LABEL_60;
          }
        }
      }

      v7 = 1000000;
      sub_299E37728(v11);
      v14 = os_variant_has_internal_diagnostics();
      if (!v14)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v40 = *(v2 + 384);
      if ((*(v2 + 116) & 4) != 0)
      {
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        v41 = sub_299E3F558(v40, name, byte_2A1898280);
      }

      else
      {
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        v41 = sub_299E383B0(v40, name, byte_2A1898280);
      }

      if (!v41)
      {
        goto LABEL_16;
      }

      v7 = 1000000;
      v14 = os_variant_has_internal_diagnostics();
      if (!v14)
      {
        goto LABEL_90;
      }
    }

LABEL_80:
    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v15, v16, v17, v18, v19, v20, v21, "notify_post");
    goto LABEL_18;
  }

  v7 = v31;
  if (v31 >= 0xB)
  {
    v32 = os_variant_has_internal_diagnostics();
    if (v32)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v33, v34, v35, v36, v37, v38, v39, "notify_post");
    }

    else
    {
      sub_299E3D364(v32, "Libnotify: %s failed with code %d on line %d", v34, v35, v36, v37, v38, v39, "notify_post");
    }

    v7 = 1000000;
  }

LABEL_18:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint32_t notify_set_state(int token, uint64_t state64)
{
  v54 = 0;
  v53 = 0;
  v5 = sub_299E35B5C();
  if ((*(v5 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v6 = *(v5 + 592);
    if (v6 && *v6 != *(v5 + 112))
    {
      v16 = sub_299E374A4(v5);
      os_unfair_lock_unlock((v5 + 104));
      if (v16)
      {
        if (v16 < 0xB)
        {
          return v16;
        }

        v14 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v18, v19, v20, v21, v22, v23, v24, "notify_set_state");
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v19, v20, v21, v22, v23, v24, "notify_set_state");
        }

        return v14;
      }
    }

    else
    {
      os_unfair_lock_unlock((v5 + 104));
    }
  }

  v7 = sub_299E36108();
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *(v7 + 104);
  if (!v9)
  {
    sub_299E3617C(v7);
    return 2;
  }

  if ((*(v7 + 24) & 0x80000000) == 0)
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    v10 = byte_2A1898290 == 1;
    if (byte_2A1898290 == 1)
    {
      qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
      __break(0xB001u);
    }

    else
    {
      if (!*(v5 + 384))
      {
        v33 = sub_299E38CF8(v5);
        if (v33)
        {
          v14 = v33;
          sub_299E3617C(v8);
          if (v14 >= 0xB)
          {
            v34 = os_variant_has_internal_diagnostics();
            if (v34)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v35, v36, v37, v38, v39, v40, v41, "notify_set_state");
            }

            else
            {
              sub_299E3D364(v34, "Libnotify: %s failed with code %d on line %d", v36, v37, v38, v39, v40, v41, "notify_set_state");
            }

            return 1000000;
          }

          return v14;
        }
      }

      v54 = 0;
      v2 = *(v8 + 104);
      if ((*(v8 + 27) & 4) != 0)
      {
        token = *(v2 + 48);
      }

      os_unfair_lock_lock_with_options();
      v53 = *v2;
      os_unfair_lock_unlock((v2 + 40));
      if (v53 < 0xFFFFFFFFFFFFFFFELL)
      {
        v54 = 0;
        v29 = *(v5 + 384);
        if ((*(v5 + 116) & 4) != 0)
        {
          if (qword_2A1898288 != -1)
          {
            dispatch_once(&qword_2A1898288, &unk_2A2020580);
          }

          v30 = sub_299E3F918(v29, v53, state64, byte_2A1898280);
        }

        else
        {
          if (qword_2A1898288 != -1)
          {
            dispatch_once(&qword_2A1898288, &unk_2A2020580);
          }

          *&msg[24] = *MEMORY[0x29EDCA690];
          *&msg[32] = v53;
          *&msg[40] = state64;
          *&msg[48] = byte_2A1898280;
          *msg = 19;
          *&msg[16] = 0;
          *&msg[20] = 1019;
          *&msg[8] = v29;
          *&msg[12] = 0;
          if (MEMORY[0x2A1C7C4D8])
          {
            voucher_mach_msg_set(msg);
          }

          v30 = mach_msg(msg, 1, 0x34u, 0, 0, 0, 0);
        }

        v31 = v30;
        v32 = 0;
LABEL_73:
        if (v31 | v32)
        {
          sub_299E3617C(v8);
          if (v31)
          {
            v14 = 1000000;
            v45 = os_variant_has_internal_diagnostics();
            if (v45)
            {
              sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v46, v47, v48, v49, v50, v51, v52, "notify_set_state");
            }

            else
            {
              sub_299E3D364(v45, "Libnotify: %s failed with code %d (%d) on line %d", v47, v48, v49, v50, v51, v52, "notify_set_state");
            }

            return v14;
          }
        }

        else
        {
          v44 = mach_absolute_time();
          *(v8 + 72) = state64;
          *(v8 + 80) = v44;
          sub_299E3617C(v8);
        }

        return 0;
      }

      v11 = *(v5 + 116);
      LODWORD(v5) = *(v5 + 384);
      v10 = qword_2A1898288 == -1;
      if ((v11 & 4) == 0)
      {
        if (qword_2A1898288 != -1)
        {
          dispatch_once(&qword_2A1898288, &unk_2A2020580);
        }

        memset(&msg[20], 0, 32);
        *&msg[4] = 0u;
        *&msg[24] = *MEMORY[0x29EDCA690];
        *&msg[32] = token;
        *&msg[36] = state64;
        v56 = 0;
        *&msg[44] = byte_2A1898280;
        special_reply_port = mig_get_special_reply_port();
        *&msg[8] = v5;
        *&msg[12] = special_reply_port;
        *msg = 5395;
        *&msg[16] = 0x3FC00000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
          v13 = *&msg[12];
        }

        else
        {
          v13 = special_reply_port;
        }

        v42 = mach_msg(msg, 3162115, 0x30u, 0x38u, v13, 0, 0);
        v31 = v42;
        if ((v42 - 268435458) <= 0xE && ((1 << (v42 - 2)) & 0x4003) != 0)
        {
          goto LABEL_70;
        }

        if (v42)
        {
          mig_dealloc_special_reply_port();
LABEL_70:
          v32 = 0;
          goto LABEL_71;
        }

        if (*&msg[20] == 71)
        {
          v31 = -308;
        }

        else if (*&msg[20] == 1120)
        {
          if ((*msg & 0x80000000) == 0)
          {
            if (*&msg[4] == 48)
            {
              if (!*&msg[8])
              {
                v31 = *&msg[32];
                if (!*&msg[32])
                {
                  v53 = *&msg[36];
                  v32 = *&msg[44];
LABEL_71:
                  if (!(v31 | v32))
                  {
                    sub_299E3A8E8(v2, v53);
                    v32 = 0;
                    v31 = 0;
                  }

                  goto LABEL_73;
                }

                goto LABEL_69;
              }
            }

            else if (*&msg[4] == 36)
            {
              if (*&msg[8])
              {
                v43 = 1;
              }

              else
              {
                v43 = *&msg[32] == 0;
              }

              if (v43)
              {
                v31 = -300;
              }

              else
              {
                v31 = *&msg[32];
              }

              goto LABEL_69;
            }
          }

          v31 = -300;
        }

        else
        {
          v31 = -301;
        }

LABEL_69:
        mach_msg_destroy(msg);
        goto LABEL_70;
      }
    }

    if (!v10)
    {
      dispatch_once(&qword_2A1898288, &unk_2A2020580);
    }

    v31 = sub_299E3F998(v5, token, state64, &v53, &v54, byte_2A1898280);
    v32 = v54;
    goto LABEL_71;
  }

  v25 = *v9;
  os_unfair_lock_lock_with_options();
  v26 = os_set_64_ptr_find();
  if (v26 && (v27 = *(v5 + 192), v28 = (v26 - v27), v26 != v27))
  {
    if (v28[1])
    {
      v28[3] = state64;
      v14 = 0;
      v28[4] = mach_absolute_time();
    }

    else
    {
      v14 = 7;
    }
  }

  else
  {
    v14 = 1;
  }

  os_unfair_lock_unlock((v5 + 344));
  sub_299E3617C(v8);
  return v14;
}

uint64_t sub_299E374A4(uint64_t a1)
{
  if ((*(a1 + 116) & 2) == 0)
  {
    return 0;
  }

  sub_299E385CC(a1, 1);
  if (v1 == 57)
  {
    return 0;
  }

  v2 = v1;
  if (!v1)
  {
    os_set_32_ptr_foreach();
  }

  return v2;
}

void sub_299E37554(uint64_t a1, mach_msg_id_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  msg.msgh_remote_port = v3;
  *&msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_id = a2;
  if (mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0) == 268435460)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = sub_299E3DFD4;
    v9[3] = &unk_29F28F770;
    v9[4] = v4;
    if (*(v4 + 496) != -1)
    {
      dispatch_once((v4 + 496), v9);
    }

    v5 = *(v4 + 504);
    if (v5)
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = sub_299E3E00C;
      block[3] = &unk_29F28F790;
      v7 = v3;
      v8 = a2;
      dispatch_async(v5, block);
    }
  }
}

void sub_299E37690(uint64_t a1)
{
  is_valid_token = notify_is_valid_token(*(a1 + 56));
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  if (is_valid_token)
  {
    v4 = *(a1 + 56);
    (*(*(a1 + 32) + 16))();
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 48));
  v6 = *(a1 + 40);
  if (v6)
  {

    free(v6);
  }
}

void sub_299E37728(os_unfair_lock_s *a1)
{
  os_unfair_lock_unlock(a1 + 10);
  v2 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v3 = atomic_fetch_add_explicit(&a1[11], 0xFFFFFFFF, memory_order_release) - 1;
  if (v3 < 0)
  {
    __assert_rtn("atomic_refcount_release", "notify_client.c", 294, "result >= 0");
  }

  if (!v3)
  {
    __dmb(9u);
    sub_299E3B0EC(v2, a1);
  }

  os_unfair_lock_unlock(&v2[26]);
}

void sub_299E377C0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 24);
      if ((v3 & 0x800000) != 0)
      {
        *(a1 + 24) = v3 | 0x400000;
      }

      else
      {
        v4 = *(a1 + 20);
        v5 = _Block_copy(v2);
        v6 = *(a1 + 48);
        dispatch_retain(v6);
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = sub_299E37690;
        v8[3] = &unk_29F28F7D8;
        v9 = v4;
        v8[4] = v5;
        v8[5] = 0;
        v8[6] = v6;
        v7 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v8);
        dispatch_async(v6, v7);
        _Block_release(v7);
      }
    }
  }
}

void *sub_299E378D0(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  os_unfair_lock_assert_owner((a1 + 104));
  v8 = os_set_str_ptr_find();
  if (v8 && (v9 = *(a1 + 480), v9 != v8))
  {
    v10 = (v8 - v9);
    atomic_fetch_add_explicit((v8 - v9 + 44), 1u, memory_order_relaxed);
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040952A5435uLL);
    if (v10)
    {
      v11 = strlen(a2);
      if (_dyld_is_memory_immutable())
      {
        v12 = 0;
LABEL_10:
        v10[4] = a2;
        *(v10 + 53) = v12;
        *(v10 + 11) = 1;
        v10[1] = 0;
        *v10 = a3;
        v10[2] = v10 + 1;
        *(v10 + 12) = -1;
        *(v10 + 10) = 0;
        *(v10 + 52) = 0;
        os_set_str_ptr_insert();
        return v10;
      }

      v13 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
      if (v13)
      {
        v14 = v13;
        memcpy(v13, a2, v11 + 1);
        v12 = 1;
        a2 = v14;
        goto LABEL_10;
      }

      free(v10);
      return 0;
    }
  }

  return v10;
}

void sub_299E37A14(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (v1)
  {
    v2 = 4;
    do
    {
      v3 = v2;
      memset(v8, 0, sizeof(v8));
      if (mach_msg(v8, 258, 0, 0x20u, v1, 0, 0))
      {
        break;
      }

      v4 = sub_299E36108();
      if (v4)
      {
        v5 = v4;
        v6 = *(v4 + 104);
        if (v6)
        {
          os_unfair_lock_lock_with_options();
          if ((*(v5 + 27) & 8) != 0)
          {
            for (i = *(v6 + 8); i; i = *i)
            {
              if (i != v5)
              {
                sub_299E377C0(i);
              }
            }
          }

          else
          {
            sub_299E377C0(v5);
          }

          os_unfair_lock_unlock((v6 + 40));
        }

        sub_299E3617C(v5);
      }

      v2 = v3 - 1;
    }

    while (v3);
  }
}

uint32_t notify_get_state(int token, uint64_t *state64)
{
  v58 = *MEMORY[0x29EDCA608];
  v4 = sub_299E35B5C();
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v18 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v18)
      {
        if (v18 < 0xB)
        {
          v15 = v18;
        }

        else
        {
          v15 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v20, v21, v22, v23, v24, v25, v26, "notify_get_state");
          }

          else
          {
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v21, v22, v23, v24, v25, v26, "notify_get_state");
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  v6 = sub_299E36108();
  if (!v6)
  {
LABEL_18:
    v15 = 2;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *(v6 + 104);
  if (!v8)
  {
    sub_299E3617C(v6);
    goto LABEL_18;
  }

  if ((*(v6 + 24) & 0x80000000) == 0)
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 == 1)
    {
      qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
      __break(0xB001u);
    }

    if (!*(v4 + 384))
    {
      v33 = sub_299E38CF8(v4);
      if (v33)
      {
        v15 = v33;
        sub_299E3617C(v7);
        if (v15 >= 0xB)
        {
          v34 = os_variant_has_internal_diagnostics();
          if (v34)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v35, v36, v37, v38, v39, v40, v41, "notify_get_state");
          }

          else
          {
            sub_299E3D364(v34, "Libnotify: %s failed with code %d on line %d", v36, v37, v38, v39, v40, v41, "notify_get_state");
          }

          v15 = 1000000;
        }

        goto LABEL_19;
      }
    }

    v9 = *(v7 + 104);
    if ((*(v7 + 27) & 4) != 0)
    {
      token = *(v9 + 48);
    }

    os_unfair_lock_lock_with_options();
    v10 = *v9;
    os_unfair_lock_unlock((v9 + 40));
    v11 = *(v4 + 384);
    if (v10 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v12 = MEMORY[0x2A1C7C4D8];
      memset(&msg_4[16], 0, 44);
      *msg_4 = 0u;
      *&msg_4[20] = *MEMORY[0x29EDCA690];
      *&msg_4[28] = token;
      special_reply_port = mig_get_special_reply_port();
      *&msg_4[4] = v11;
      *&msg_4[8] = special_reply_port;
      msg = 5395;
      *&msg_4[12] = 0x3FA00000000;
      if (v12)
      {
        voucher_mach_msg_set(&msg);
        v14 = *&msg_4[8];
      }

      else
      {
        v14 = special_reply_port;
      }

      v42 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v14, 0, 0);
      v43 = v42;
      if ((v42 - 268435458) <= 0xE && ((1 << (v42 - 2)) & 0x4003) != 0)
      {
        sub_299E3617C(v7);
LABEL_90:
        v15 = 1000000;
        v48 = os_variant_has_internal_diagnostics();
        if (v48)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v49, v50, v51, v52, v53, v54, v55, "notify_get_state");
        }

        else
        {
          sub_299E3D364(v48, "Libnotify: %s failed with code %d (%d) on line %d", v50, v51, v52, v53, v54, v55, "notify_get_state");
        }

        goto LABEL_19;
      }

      if (v42)
      {
        mig_dealloc_special_reply_port();
LABEL_82:
        v47 = 0;
        goto LABEL_83;
      }

      if (*&msg_4[16] == 71)
      {
        v43 = -308;
      }

      else if (*&msg_4[16] == 1118)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 56)
          {
            if (!*&msg_4[4])
            {
              v43 = *&msg_4[28];
              if (!*&msg_4[28])
              {
                *state64 = *&msg_4[32];
                v10 = *&msg_4[40];
                v47 = *&msg_4[48];
LABEL_83:
                if (!(v43 | v47))
                {
                  sub_299E3A8E8(v9, v10);
                  sub_299E3617C(v7);
                  v15 = 0;
                  goto LABEL_19;
                }

                goto LABEL_89;
              }

              goto LABEL_81;
            }
          }

          else if (*msg_4 == 36)
          {
            if (*&msg_4[4])
            {
              v44 = 1;
            }

            else
            {
              v44 = *&msg_4[28] == 0;
            }

            if (v44)
            {
              v43 = -300;
            }

            else
            {
              v43 = *&msg_4[28];
            }

            goto LABEL_81;
          }
        }

        v43 = -300;
      }

      else
      {
        v43 = -301;
      }

LABEL_81:
      mach_msg_destroy(&msg);
      goto LABEL_82;
    }

    v30 = MEMORY[0x2A1C7C4D8];
    memset(&msg_4[16], 0, 36);
    *msg_4 = 0u;
    *&msg_4[20] = *MEMORY[0x29EDCA690];
    *&msg_4[28] = v10;
    v31 = mig_get_special_reply_port();
    *&msg_4[4] = v11;
    *&msg_4[8] = v31;
    msg = 5395;
    *&msg_4[12] = 0x3F900000000;
    if (v30)
    {
      voucher_mach_msg_set(&msg);
      v32 = *&msg_4[8];
    }

    else
    {
      v32 = v31;
    }

    v45 = mach_msg(&msg, 3162115, 0x28u, 0x38u, v32, 0, 0);
    v43 = v45;
    if ((v45 - 268435458) <= 0xE && ((1 << (v45 - 2)) & 0x4003) != 0)
    {
      goto LABEL_88;
    }

    if (v45)
    {
      mig_dealloc_special_reply_port();
LABEL_88:
      v47 = 0;
LABEL_89:
      sub_299E3617C(v7);
      if (!v43 && v47 < 0xB)
      {
        v15 = v47;
        goto LABEL_19;
      }

      goto LABEL_90;
    }

    if (*&msg_4[16] == 71)
    {
      v43 = -308;
    }

    else if (*&msg_4[16] == 1117)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 48)
        {
          if (!*&msg_4[4])
          {
            v43 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *state64 = *&msg_4[32];
              v47 = *&msg_4[40];
              goto LABEL_89;
            }

            goto LABEL_87;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v46 = 1;
          }

          else
          {
            v46 = *&msg_4[28] == 0;
          }

          if (v46)
          {
            v43 = -300;
          }

          else
          {
            v43 = *&msg_4[28];
          }

          goto LABEL_87;
        }
      }

      v43 = -300;
    }

    else
    {
      v43 = -301;
    }

LABEL_87:
    mach_msg_destroy(&msg);
    goto LABEL_88;
  }

  if (state64)
  {
    v27 = *v8;
    *state64 = 0;
    os_unfair_lock_lock_with_options();
    v28 = os_set_64_ptr_find();
    if (v28 && (v29 = *(v4 + 192), v29 != v28))
    {
      v15 = 0;
      *state64 = *(v28 - v29 + 24);
    }

    else
    {
      v15 = 1;
    }

    os_unfair_lock_unlock((v4 + 344));
  }

  else
  {
    v15 = 10;
  }

  sub_299E3617C(v7);
LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void notify_set_options(unsigned int a1)
{
  v2 = sub_299E35B5C();
  v3 = v2;
  if ((v2[29]._os_unfair_lock_opaque & 0x8000000) != 0)
  {
    if ((a1 & 0x4000000) == 0)
    {
      v2[30]._os_unfair_lock_opaque |= a1;
      return;
    }

    os_unfair_lock_lock_with_options();
    v3[29]._os_unfair_lock_opaque = v3[30]._os_unfair_lock_opaque;
    v3[96]._os_unfair_lock_opaque = v3[97]._os_unfair_lock_opaque;
  }

  else
  {
    if ((a1 & 0x8000000) == 0)
    {
      atomic_fetch_or_explicit(&v2[29], a1, memory_order_relaxed);

      sub_299E38CF8(v2);
      return;
    }

    os_unfair_lock_lock_with_options();
    __swp(v3 + 116, &v3[29]._os_unfair_lock_opaque);
    v3[30]._os_unfair_lock_opaque = v3 + 116;
    v3[97]._os_unfair_lock_opaque = v3[96]._os_unfair_lock_opaque;
    v3[96]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(v3 + 26);
}

uint64_t sub_299E381E4(char *a1, unsigned int *a2, NSObject *a3, const void *a4, int a5)
{
  v10 = sub_299E35B5C();
  if ((*(v10 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v11 = *(v10 + 592);
    if (v11 && *v11 != *(v10 + 112))
    {
      v17 = sub_299E374A4(v10);
      os_unfair_lock_unlock((v10 + 104));
      if (v17)
      {
        if (v17 < 0xB)
        {
          return v17;
        }

        v12 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    else
    {
      os_unfair_lock_unlock((v10 + 104));
    }
  }

  v12 = 10;
  if (a3 && a4)
  {
    notify_set_options(3u);
    v13 = sub_299E399D8(a1, a2, v10, a5);
    if (v13)
    {
      return v13;
    }

    v14 = *a2;
    v15 = sub_299E36108();
    if (v15)
    {
      v16 = v15;
      *(v15 + 48) = a3;
      dispatch_retain(a3);
      *(v16 + 56) = _Block_copy(a4);
      sub_299E3617C(v16);
      return 0;
    }

    v12 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
LABEL_16:
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v19, v20, v21, v22, v23, v24, v25, "_notify_register_dispatch_with_extra_mp");
      return v12;
    }

LABEL_18:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v20, v21, v22, v23, v24, v25, "_notify_register_dispatch_with_extra_mp");
  }

  return v12;
}

uint64_t sub_299E383B0(unsigned int a1, const char *a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(v11, 0, 480);
  v9 = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v5 = mig_strncpy_zerofill(v11 + 8, a2, 512);
  }

  else
  {
    v5 = mig_strncpy(v11 + 8, a2, 512);
  }

  LODWORD(v11[0]) = 0;
  DWORD1(v11[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v11 + v6 + 8) = a3;
  LODWORD(v9) = 19;
  *(&v9 + 1) = a1;
  *&v10 = 0x3F200000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v9);
  }

  result = mach_msg(&v9, 2097153, v6 + 44, 0, 0, 0, 0);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299E384EC(uint64_t a1)
{
  v2 = *MEMORY[0x29EDCA6A0];
  v3 = *(a1 + 40);
  result = bootstrap_look_up2();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint32_t notify_register_dispatch(const char *name, int *out_token, dispatch_queue_t queue, notify_handler_t handler)
{
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", v9, v10, v11, v12, v13, v14, v15, name);
  }

  return sub_299E381E4(name, out_token, queue, handler, 0);
}

void sub_299E385CC(uint64_t a1, int a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v32 = 0;
  if ((*(a1 + 116) & 0x8000000) != 0)
  {
    goto LABEL_42;
  }

  os_unfair_lock_assert_owner((a1 + 104));
  if (os_variant_has_internal_diagnostics() && (v4 = getenv("DarwinNotificationLogging")) != 0)
  {
    v5 = v4;
    if (*v4 == 49 && !v4[1])
    {
      *name = 0;
      *&name[8] = 0;
      v39 = 0;
      v40 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        *name = 0;
        *&name[8] = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        __lasts = 0;
        _dyld_get_shared_cache_range();
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      _os_log_simple();
      v6 = &unk_2A14EFDE0;
    }

    else
    {
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800400F6048E3uLL);
      *v6 = 0;
      os_set_str_ptr_init();
      v7 = strdup(v5);
      __lasts = 0;
      v30 = v7;
      v8 = strtok_r(v7, ",", &__lasts);
      if (v8)
      {
        v9 = v8;
        do
        {
          v10 = malloc_type_calloc(1uLL, 8uLL, 0x50040EE9192B6uLL);
          *v10 = strdup(v9);
          os_set_str_ptr_insert();
          *name = 0;
          *&name[8] = 0;
          v39 = 0;
          v40 = 0;
          if ((_dyld_get_image_uuid() & 1) == 0)
          {
            *name = 0;
            *&name[8] = 0;
          }

          if (_dyld_get_shared_cache_uuid())
          {
            v37 = 0;
            _dyld_get_shared_cache_range();
          }

          else
          {
            v39 = 0;
            v40 = 0;
          }

          _os_log_simple();
          v9 = strtok_r(0, ",", &__lasts);
        }

        while (v9);
      }

      free(v30);
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 584) = v6;
  if (_dispatch_is_multithreaded())
  {
    atomic_fetch_or_explicit((a1 + 116), 3u, memory_order_relaxed);
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1 && (*(a1 + 116) & 1) != 0)
  {
    if ((*(a1 + 392) + 1) <= 1)
    {
      *name = 0;
      v12 = mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, name);
      *(v34 + 6) = v12;
      if (!v12)
      {
        sub_299E3A47C(a1, *name);
      }
    }

    goto LABEL_42;
  }

  *(v34 + 6) = 0;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_299E384EC;
  block[3] = &unk_29F28F600;
  block[4] = &v33;
  block[5] = a1;
  if (*(a1 + 376) != -1)
  {
    dispatch_once((a1 + 376), block);
  }

  if (*(v34 + 6) || (v11 = *(a1 + 384), (v11 + 1) < 2))
  {
LABEL_42:
    _Block_object_dispose(&v33, 8);
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  v13 = *(a1 + 112);
  if (a2 != 1 && v13)
  {
LABEL_33:
    if (!*(a1 + 408) && (*(a1 + 116) & 2) != 0)
    {
      v14 = *(a1 + 112);
      if (v14)
      {
        global_queue = dispatch_get_global_queue(2, 0);
        v16 = dispatch_source_create(MEMORY[0x29EDCA5B0], v14, 0x80000000uLL, global_queue);
        *(a1 + 408) = v16;
        dispatch_source_set_event_handler_f(v16, sub_299E3D428);
        dispatch_resume(*(a1 + 408));
      }
    }

    if ((*(a1 + 116) & 1) != 0 && (*(a1 + 392) + 1) <= 1)
    {
      *name = 0;
      v17 = sub_299E3A2F0(*(a1 + 384), &v32, name);
      *(v34 + 6) = v17;
      if (!v17 && !v32)
      {
        sub_299E3A47C(a1, *name);
      }
    }

    goto LABEL_42;
  }

  LODWORD(v39) = 0;
  LODWORD(__lasts) = 0;
  *(a1 + 112) = 0;
  v43 = 0;
  v42 = 0u;
  memset(&name[4], 0, 32);
  special_reply_port = mig_get_special_reply_port();
  *&name[8] = v11;
  *&name[12] = special_reply_port;
  *name = 5395;
  *&name[16] = 0x3FF00000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(name);
    v20 = *&name[12];
  }

  else
  {
    v20 = special_reply_port;
  }

  v21 = mach_msg(name, 3227651, 0x18u, 0x38u, v20, 0, 0);
  v22 = v21;
  if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
  {
    *(v34 + 6) = v21;
LABEL_76:
    v24 = sub_299E3F3DC(*(a1 + 384), &v39, &__lasts, &v32);
    v25 = v34;
    *(v34 + 6) = v24;
    if (!v24)
    {
      atomic_fetch_or_explicit((a1 + 116), 7u, memory_order_relaxed);
      v24 = *(v25 + 6);
    }

    if (v24 || v32)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

  if (v21)
  {
    mig_dealloc_special_reply_port();
    goto LABEL_75;
  }

  if (*&name[20] == 71)
  {
    v22 = -308;
LABEL_74:
    mach_msg_destroy(name);
LABEL_75:
    *(v34 + 6) = v22;
    if (!v22)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  if (*&name[20] != 1123)
  {
    v22 = -301;
    goto LABEL_74;
  }

  if ((*name & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  if (*&name[4] != 48)
  {
    if (*&name[4] == 36)
    {
      if (*&name[8])
      {
        v23 = 1;
      }

      else
      {
        v23 = *&name[32] == 0;
      }

      if (v23)
      {
        v22 = -300;
      }

      else
      {
        v22 = *&name[32];
      }

      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (*&name[8])
  {
LABEL_73:
    v22 = -300;
    goto LABEL_74;
  }

  v22 = *&name[32];
  if (*&name[32])
  {
    goto LABEL_74;
  }

  LODWORD(__lasts) = DWORD1(v42);
  LODWORD(v39) = v42;
  v29 = DWORD2(v42);
  v32 = DWORD2(v42);
  *(v34 + 6) = 0;
  if (v29)
  {
    goto LABEL_42;
  }

LABEL_80:
  if (v39 > 2)
  {
    v26 = __lasts;
    *(a1 + 112) = __lasts;
    if (a2 == 1 && v26 == v13)
    {
      goto LABEL_42;
    }

    v27 = *(a1 + 408);
    if (v27)
    {
      dispatch_source_cancel(v27);
      dispatch_release(*(a1 + 408));
      *(a1 + 408) = 0;
    }

    if ((*(a1 + 392) + 1) >= 2)
    {
      v28 = *(a1 + 400);
      if (v28)
      {
        dispatch_source_cancel(v28);
        dispatch_release(*(a1 + 400));
        *(a1 + 400) = 0;
      }

      *(a1 + 392) = 0;
    }

    goto LABEL_33;
  }

  qword_2A14EFE08 = "BUG IN LIBNOTIFY: Unsupported protocol version";
  qword_2A14EFE38 = v39;
  __break(0xB001u);
}

uint64_t sub_299E38CF8(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock_with_options();
  sub_299E385CC(a1, 0);
  v3 = v2;
  os_unfair_lock_unlock(a1 + 26);
  return v3;
}

uint64_t sub_299E38D40(uint64_t a1)
{
  *(a1 + 96) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 104) = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 64) = v2;
  *(a1 + 80) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  *(a1 + 488) = 1;
  *(a1 + 396) = -1;
  os_set_str_ptr_init();
  *(a1 + 480) = 32;
  os_set_32_ptr_init();
  *(a1 + 448) = 20;

  return sub_299E38DCC(a1 + 128);
}

uint64_t sub_299E38DCC(uint64_t a1)
{
  *(a1 + 208) = 1;
  *(a1 + 216) = 0xFFFFFFFF00000000;
  os_set_str_ptr_init();
  *(a1 + 32) = 8;
  os_set_64_ptr_init();
  *(a1 + 64) = 16;
  os_set_64_ptr_init();
  *(a1 + 96) = 64;
  os_set_32_ptr_init();
  *(a1 + 128) = 8;
  os_set_32_ptr_init();
  *(a1 + 160) = 16;

  return MEMORY[0x2A1C759A0](a1 + 168, 0, 1);
}

uint32_t notify_register_check(const char *name, int *out_token)
{
  v82 = *MEMORY[0x29EDCA608];
  v4 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", v44, v45, v46, v47, v48, v49, v50, name);
  }

  v52 = 0;
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v17 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v17)
      {
        if (v17 >= 0xB)
        {
          v8 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_29;
          }

          goto LABEL_76;
        }

        v8 = v17;
LABEL_79:
        v42 = *MEMORY[0x29EDCA608];
        return v8;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  if ((*(v4 + 116) & 4) == 0)
  {
    if (!name)
    {
      v8 = 1;
      goto LABEL_79;
    }

    if (!out_token)
    {
      v8 = 10;
      goto LABEL_79;
    }

    *out_token = -1;
    if (!strncmp(name, "self.", 5uLL))
    {
      goto LABEL_13;
    }

    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 == 1)
    {
LABEL_13:
      v6 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
      v7 = sub_299E3BEA0((v4 + 128), name, v6, &v52);
      if (v7)
      {
        if (v7 >= 0xB)
        {
          v8 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_29;
          }

LABEL_76:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v11, v12, v13, v14, v15, v16, "notify_register_check");
          goto LABEL_79;
        }

        v8 = v7;
        goto LABEL_79;
      }

      v20 = sub_299E3A038(name, v52, v6, v6, -1, 0x80000002, -1, -1, 0, 0);
      if (v20)
      {
        v21 = v20;
        if (v20 >= 0xB)
        {
          v8 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (!has_internal_diagnostics)
          {
            goto LABEL_76;
          }

LABEL_29:
          v22 = "Libnotify: %s failed with code %d on line %d";
LABEL_68:
          sub_299E3D2E8(v22, v10, v11, v12, v13, v14, v15, v16, "notify_register_check");
          goto LABEL_79;
        }

        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v18 = *(v4 + 384);
    if (!v18)
    {
      v23 = sub_299E38CF8(v4);
      if (v23)
      {
        v8 = v23;
        if (v23 >= 0xB)
        {
          v24 = os_variant_has_internal_diagnostics();
          if (v24)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v25, v26, v27, v28, v29, v30, v31, "notify_register_check");
          }

          else
          {
            sub_299E3D364(v24, "Libnotify: %s failed with code %d on line %d", v26, v27, v28, v29, v30, v31, "notify_register_check");
          }

          v8 = 1000000;
        }

        goto LABEL_79;
      }

      v18 = *(v4 + 384);
    }

    v80 = 0u;
    v81 = 0u;
    v6 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[24] = *MEMORY[0x29EDCA690];
    if (MEMORY[0x2A1C7C4D0])
    {
      v19 = mig_strncpy_zerofill(&msg[40], name, 512);
    }

    else
    {
      v19 = mig_strncpy(&msg[40], name, 512);
    }

    *&msg[32] = 0;
    *&msg[36] = v19;
    v32 = (v19 + 3) & 0xFFFFFFFC;
    *&msg[v32 + 40] = v6;
    special_reply_port = mig_get_special_reply_port();
    *&msg[8] = __PAIR64__(special_reply_port, v18);
    *msg = 5395;
    *&msg[16] = 0x3F400000000;
    if (MEMORY[0x2A1C7C4D8])
    {
      voucher_mach_msg_set(msg);
      v34 = *&msg[12];
    }

    else
    {
      v34 = special_reply_port;
    }

    v35 = mach_msg(msg, 3162115, v32 + 44, 0x40u, v34, 0, 0);
    v36 = v35;
    if ((v35 - 268435458) <= 0xE && ((1 << (v35 - 2)) & 0x4003) != 0)
    {
LABEL_66:
      v8 = 1000000;
      v38 = os_variant_has_internal_diagnostics();
      if (!v38)
      {
        sub_299E3D364(v38, "Libnotify: %s failed with code %d (%d) on line %d", v11, v12, v13, v14, v15, v16, "notify_register_check");
        goto LABEL_79;
      }

      v22 = "Libnotify: %s failed with code %d (%d) on line %d";
      goto LABEL_68;
    }

    if (v35)
    {
      mig_dealloc_special_reply_port();
LABEL_65:
      if (v36)
      {
        goto LABEL_66;
      }

      v39 = 0;
      v40 = 0;
      goto LABEL_71;
    }

    if (*&msg[20] == 71)
    {
      v36 = -308;
    }

    else if (*&msg[20] == 1112)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 56)
        {
          if (!*&msg[8])
          {
            v36 = *&msg[32];
            if (!*&msg[32])
            {
              if (*&msg[52])
              {
                v8 = *&msg[52];
                if (*&msg[52] < 0xBu)
                {
                  goto LABEL_79;
                }

                v8 = 1000000;
                has_internal_diagnostics = os_variant_has_internal_diagnostics();
                if (has_internal_diagnostics)
                {
                  goto LABEL_29;
                }

                goto LABEL_76;
              }

              v40 = *&msg[36];
              v39 = *&msg[44];
              if (*&msg[36] == -1)
              {
                v41 = sub_299E3A038(name, *&msg[44], v6, v6, -1, 0x40000002u, -1, -1, 0, 0);
                goto LABEL_73;
              }

              v36 = *&msg[40];
LABEL_71:
              os_unfair_lock_lock_with_options();
              if (!*(v4 + 592))
              {
                if (!sub_299E3A77C(v40))
                {
                  v8 = 1000000;
                  os_unfair_lock_unlock((v4 + 104));
                  goto LABEL_79;
                }

                if (!*(v4 + 592))
                {
                  v8 = 1000000;
                  os_unfair_lock_unlock((v4 + 104));
                  has_internal_diagnostics = os_variant_has_internal_diagnostics();
                  if (has_internal_diagnostics)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_76;
                }
              }

              os_unfair_lock_unlock((v4 + 104));
              v41 = sub_299E3A038(name, v39, v6, v6, v36, 0x40000001u, -1, -1, 0, 0);
LABEL_73:
              v21 = v41;
              if (v41)
              {
                if (v41 >= 0xB)
                {
                  v8 = 1000000;
                  has_internal_diagnostics = os_variant_has_internal_diagnostics();
                  if (!has_internal_diagnostics)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_29;
                }

LABEL_78:
                v8 = v21;
                goto LABEL_79;
              }

LABEL_77:
              v8 = 0;
              *out_token = v6;
              goto LABEL_79;
            }

            goto LABEL_64;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v37 = 1;
          }

          else
          {
            v37 = *&msg[32] == 0;
          }

          if (v37)
          {
            v36 = -300;
          }

          else
          {
            v36 = *&msg[32];
          }

          goto LABEL_64;
        }
      }

      v36 = -300;
    }

    else
    {
      v36 = -301;
    }

LABEL_64:
    mach_msg_destroy(msg);
    goto LABEL_65;
  }

  v51 = *MEMORY[0x29EDCA608];

  return notify_register_plain(name, out_token);
}

uint64_t sub_299E395F4(const char *a1)
{
  v2 = sub_299E35B5C();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_299E396FC;
  block[3] = &unk_29F28F6E0;
  block[4] = v2;
  if (qword_2A18982A0 == -1)
  {
    if (!a1)
    {
      return 1;
    }
  }

  else
  {
    dispatch_once(&qword_2A18982A0, block);
    if (!a1)
    {
      return 1;
    }
  }

  if (*(v2 + 576) != 1)
  {
    return 1;
  }

  v3 = *(v2 + 568);
  if (v3)
  {
    v4 = (*(v2 + 560) + 8);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4 - 1;
      if (v5[v6] == 42)
      {
        if (!strncmp(a1, v5, v6))
        {
          return 1;
        }
      }

      else if (!strcmp(a1, v5))
      {
        return 1;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void sub_299E396FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_299E3B320;
  v2[3] = &unk_29F28F730;
  v2[4] = &v7;
  v2[5] = &v3;
  *(v1 + 576) = sub_299E397D8("com.apple.private.darwin-notification.introspect", v2);
  *(v1 + 568) = v4[3];
  *(v1 + 560) = v8[3];
  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v7, 8);
}

uint64_t sub_299E397D8(uint64_t a1, uint64_t a2)
{
  result = xpc_copy_entitlement_for_token();
  if (result)
  {
    v4 = result;
    v5 = (*(a2 + 16))(a2, result);
    xpc_release(v4);
    return v5;
  }

  return result;
}

uint64_t sub_299E3982C()
{
  result = sub_299E397D8("com.apple.developer.web-browser-engine.restrict.notifyd", &unk_2A2020560);
  byte_2A1898290 = result;
  return result;
}

void sub_299E3985C(uint64_t a1, mach_port_name_t a2, int a3)
{
  v6 = *(a1 + 552);
  os_unfair_lock_assert_owner((a1 + 104));
  if (a2)
  {
    if (*(a1 + 392) != a2)
    {
      v7 = *(a1 + 544);
      if (v7)
      {
        v8 = 0;
        v9 = (a1 + 544);
        for (i = v6; *i != a2; i += 12)
        {
          if (v7 == ++v8)
          {
            return;
          }
        }

        v11 = *(i + 1);
        if (v11 < 2)
        {
          if (i[8] == 1)
          {
            mach_port_destruct(*MEMORY[0x29EDCA6B0], a2, (4 * a3) >> 31, 0);
          }

          else if ((a3 & 0x20000000) != 0)
          {
            mach_port_deallocate(*MEMORY[0x29EDCA6B0], a2);
          }

          v12 = *v9 - 1;
          *v9 = v12;
          if (v12 != v8)
          {
            v13 = &v6[12 * v12];
            v14 = *v13;
            *(i + 2) = *(v13 + 2);
            *i = v14;
            LODWORD(v8) = *v9;
          }

          if (v8)
          {
            v15 = *(a1 + 548);
            if (v15 >= 5 && v8 <= v15 >> 2)
            {
              v16 = malloc_type_realloc(v6, 6 * v15, 0x100004005A209FEuLL);
              if (v16)
              {
                *(a1 + 552) = v16;
                *(a1 + 548) >>= 1;
              }
            }
          }

          else
          {
            free(v6);
            *v9 = 0;
            *(a1 + 552) = 0;
          }
        }

        else
        {
          *(i + 1) = v11 - 1;
        }
      }
    }
  }
}

uint64_t sub_299E399D8(char *__s1, unsigned int *a2, uint64_t a3, int a4)
{
  v60 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    __assert_rtn("notify_register_coalesced_registration", "notify_client.c", 3149, "globals");
  }

  if (!__s1)
  {
    __assert_rtn("notify_register_coalesced_registration", "notify_client.c", 3150, "name");
  }

  if (strncmp(__s1, "self.", 5uLL))
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 != 1)
    {
      if (!*(a3 + 384) || (*(a3 + 392) + 1) <= 1)
      {
        v10 = sub_299E38CF8(a3);
        if (v10)
        {
          v11 = v10;
          if ((v10 - 10) > 0xFFFFFFFD)
          {
LABEL_45:
            v44 = *MEMORY[0x29EDCA608];
            return v11;
          }

          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
LABEL_43:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v13, v14, v15, v16, v17, v18, v19, "notify_register_coalesced_registration");
            goto LABEL_45;
          }

LABEL_44:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v14, v15, v16, v17, v18, v19, "notify_register_coalesced_registration");
          goto LABEL_45;
        }
      }

      os_unfair_lock_lock_with_options();
      v20 = os_set_str_ptr_find();
      if (v20)
      {
        v21 = *(a3 + 480);
        if (v21 != v20)
        {
          if (*(v20 - v21 + 24))
          {
            v22 = 0;
            v23 = os_set_str_ptr_find() - *(a3 + 480);
            atomic_fetch_add_explicit((*(v23 + 24) + 16), 1u, memory_order_relaxed);
LABEL_51:
            os_unfair_lock_unlock((a3 + 104));
            v46 = atomic_fetch_add_explicit((a3 + 488), 1u, memory_order_relaxed) + 1;
            if ((a4 - 1) >= 0xFFFFFFFE)
            {
              v47 = 0;
            }

            else
            {
              v47 = a4;
            }

            v11 = sub_299E3A038(__s1, -1, v46, v46, -1, 0x44000007u, v47, -1, *(a3 + 384), v22);
            if ((v22 & 1) == 0)
            {
              sub_299E3617C(*(v23 + 24));
            }

            if (v11)
            {
              if (v11 >= 0xB)
              {
                v48 = os_variant_has_internal_diagnostics();
                if (v48)
                {
                  sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v49, v50, v51, v52, v53, v54, v55, "notify_register_coalesced_registration");
                }

                else
                {
                  sub_299E3D364(v48, "Libnotify: %s failed with code %d on line %d", v50, v51, v52, v53, v54, v55, "notify_register_coalesced_registration");
                }

                v11 = 1000000;
              }
            }

            else
            {
              v11 = 0;
              if (a2)
              {
                *a2 = v46;
              }
            }

            goto LABEL_45;
          }
        }
      }

      add_explicit = atomic_fetch_add_explicit((a3 + 488), 1u, memory_order_relaxed);
      v25 = *(a3 + 384);
      v26 = add_explicit + 1;
      memset(msg, 0, 512);
      *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v27 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, __s1, 512);
      }

      else
      {
        v27 = mig_strncpy(&msg[1].msgh_voucher_port, __s1, 512);
      }

      msg[1].msgh_remote_port = 0;
      msg[1].msgh_local_port = v27;
      v28 = (v27 + 3) & 0xFFFFFFFC;
      *(&msg[1].msgh_voucher_port + v28) = v26;
      msg[0].msgh_bits = 19;
      *&msg[0].msgh_remote_port = v25;
      *&msg[0].msgh_voucher_port = 0x40200000000;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
      }

      if (mach_msg(msg, 1, v28 + 44, 0, 0, 0, 0))
      {
        v11 = 1000000;
        os_unfair_lock_unlock((a3 + 104));
        v29 = os_variant_has_internal_diagnostics();
        if (v29)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v30, v31, v32, v33, v34, v35, v36, "notify_register_coalesced_registration");
        }

        else
        {
          sub_299E3D364(v29, "Libnotify: %s failed with code %d (%d) on line %d", v31, v32, v33, v34, v35, v36, "notify_register_coalesced_registration");
        }

        goto LABEL_45;
      }

      v37 = *(a3 + 392);
      os_unfair_lock_assert_owner((a3 + 104));
      v38 = os_set_32_ptr_find();
      if (!v38 || *(a3 + 448) == v38)
      {
        v39 = malloc_type_calloc(1uLL, 0x70uLL, 0x10B00400AF92624uLL);
        if (v39)
        {
          v40 = v39;
          v41 = sub_299E378D0(a3, __s1, -1, 1);
          if (v41)
          {
            v42 = v41;
            *(v40 + 4) = 1;
            *(v40 + 5) = v26;
            *(v40 + 16) = v26;
            *(v40 + 24) = xmmword_299E40200;
            *(v40 + 10) = -1;
            *(v40 + 11) = v37;
            *(v40 + 13) = v41;
            v41[3] = v40;
            *(v41 + 12) = v26;
            os_set_32_ptr_insert();
            v43 = v42[4];
            if (sub_299E3A6A8())
            {
              *&msg[0].msgh_bits = 0uLL;
              if ((_dyld_get_image_uuid() & 1) == 0)
              {
                *&msg[0].msgh_bits = 0uLL;
              }

              if (_dyld_get_shared_cache_uuid())
              {
                _dyld_get_shared_cache_range();
              }

              v58 = *(v40 + 6);
              v56 = v42[4];
              v57 = *(v40 + 5);
              _os_log_simple();
            }

            v45 = os_set_str_ptr_find();
            if (v45)
            {
              v23 = v45 - *(a3 + 480);
            }

            else
            {
              v23 = 0;
            }

            v22 = 1;
            goto LABEL_51;
          }

          free(v40);
        }
      }

      os_unfair_lock_unlock((a3 + 104));
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v11 = 1000000;
      if (has_internal_diagnostics)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }
  }

  v8 = *MEMORY[0x29EDCA608];

  return sub_299E3C0F8(__s1, (a3 + 392), 1073741825, a2, a3);
}

uint64_t sub_299E3A038(const char *a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6, int a7, int a8, int a9, char a10)
{
  v42 = *MEMORY[0x29EDCA608];
  v18 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  v19 = os_set_32_ptr_find();
  if (v19 && *(v18 + 448) != v19)
  {
    goto LABEL_19;
  }

  v20 = sub_299E378D0(v18, a1, a2, 1);
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  os_unfair_lock_lock_with_options();
  v22 = malloc_type_calloc(1uLL, 0x70uLL, 0x10B00400AF92624uLL);
  if (!v22)
  {
    sub_299E37728(v21);
LABEL_19:
    os_unfair_lock_unlock((v18 + 104));
    result = 14;
    goto LABEL_26;
  }

  v22[4] = 1;
  v41 = v22;
  v22[5] = a3;
  v23 = (v22 + 5);
  os_set_32_ptr_insert();
  v24 = a6 & 0xBFFFFFFF;
  if ((a6 & 0x4000000) == 0)
  {
    v24 = a6;
  }

  *(v23 + 1) = v24;
  *(v23 + 2) = a5;
  *(v23 + 3) = 0;
  *(v23 + 4) = a8;
  *(v23 + 5) = a7;
  *(v23 + 6) = a9;
  *(v23 + 11) = a4;
  *(v23 + 84) = v21;
  if ((v24 & 0x4000000) != 0 && (*(v18 + 116) & 1) != 0 && (v24 & 0xF) - 3 <= 4)
  {
    os_unfair_lock_assert_owner(v21 + 10);
    if ((a10 & 1) == 0)
    {
      v25 = *&v21[6]._os_unfair_lock_opaque;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 16), 1u, memory_order_relaxed);
      }
    }

    v26 = *&v21[4]._os_unfair_lock_opaque;
    *v41 = 0;
    *(v41 + 1) = v26;
    *v26 = v41;
    *&v21[4]._os_unfair_lock_opaque = v41;
  }

  if ((v21[13]._os_unfair_lock_opaque & 1) == 0 && v21[11]._os_unfair_lock_opaque == 500)
  {
    LOBYTE(v21[13]._os_unfair_lock_opaque) = 1;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("notify name %s has been registered %d times - this may be a leak", v28, v29, v30, v31, v32, v33, v34, a1);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "notify name %s has been registered %d times - this may be a leak", v29, v30, v31, v32, v33, v34, a1);
    }
  }

  v36 = *&v21[8]._os_unfair_lock_opaque;
  if (sub_299E3A6A8())
  {
    _dyld_get_image_uuid();
    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    v40 = v41[6];
    v38 = *&v21[8]._os_unfair_lock_opaque;
    v39 = v41[5];
    _os_log_simple();
  }

  os_unfair_lock_unlock(v21 + 10);
  os_unfair_lock_unlock((v18 + 104));
  result = 0;
LABEL_26:
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299E3A2F0(int a1, _DWORD *a2, _DWORD *a3)
{
  v14 = 0;
  v13 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x40100000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x3Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 1125)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v9 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg[32];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_24;
        }

        v9 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 52 && !*&msg[8] && WORD1(v13) << 16 == 0x100000)
        {
          v9 = 0;
          v10 = *&msg[28];
          *a2 = HIDWORD(v13);
          *a3 = v10;
          return v9;
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

void sub_299E3A47C(uint64_t a1, unsigned int a2)
{
  *(a1 + 392) = a2;
  v4 = a2;
  global_queue = dispatch_get_global_queue(2, 0);
  v6 = dispatch_source_create(MEMORY[0x29EDCA5A0], v4, 0, global_queue);
  *(a1 + 400) = v6;
  dispatch_set_context(v6, a1);
  dispatch_source_set_event_handler_f(*(a1 + 400), sub_299E37A14);
  v7 = *(a1 + 400);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = sub_299E3D988;
  handler[3] = &unk_29F28F620;
  v9 = a2;
  dispatch_source_set_cancel_handler(v7, handler);
  dispatch_resume(*(a1 + 400));
}

uint32_t notify_cancel(int token)
{
  v1 = sub_299E35B5C();
  if ((*(v1 + 116) & 2) == 0)
  {
LABEL_5:
    os_unfair_lock_lock_with_options();
    v3 = os_set_32_ptr_find();
    if (v3 && (v4 = *(v1 + 448), v5 = (v3 - v4), v3 != v4))
    {
      v7 = v5[6];
      if ((v7 & 0x1000000) == 0)
      {
        v5[6] = v7 | 0x1000000;
        sub_299E361D0(v1, v5);
      }

      os_unfair_lock_unlock((v1 + 104));
      return 0;
    }

    else
    {
      os_unfair_lock_unlock((v1 + 104));
      return 2;
    }
  }

  os_unfair_lock_lock_with_options();
  v2 = *(v1 + 592);
  if (!v2 || *v2 == *(v1 + 112))
  {
    os_unfair_lock_unlock((v1 + 104));
    goto LABEL_5;
  }

  v9 = sub_299E374A4(v1);
  os_unfair_lock_unlock((v1 + 104));
  if (!v9)
  {
    goto LABEL_5;
  }

  v6 = v9;
  if (v9 >= 0xB)
  {
    v6 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v11, v12, v13, v14, v15, v16, v17, "notify_cancel");
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v12, v13, v14, v15, v16, v17, "notify_cancel");
    }
  }

  return v6;
}

BOOL sub_299E3A6A8()
{
  v0 = *(sub_299E35B5C() + 584);
  if (!v0)
  {
    return 0;
  }

  if (*v0)
  {
    return 1;
  }

  return os_set_str_ptr_find() != 0;
}

uint64_t sub_299E3A700(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x29EDCA690];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 1016;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

BOOL sub_299E3A77C(unsigned int a1)
{
  v2 = sub_299E35B5C();
  v3 = shm_open("apple.shm.notification_center", 0, 0);
  if (v3 == -1)
  {
    if (*__error() != 1)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v7 = __error();
      v15 = *v7;
      if (has_internal_diagnostics)
      {
        sub_299E3D2E8("Libnotify: %s failed on line %d with errno %d", v8, v9, v10, v11, v12, v13, v14, "shm_attach");
      }

      else
      {
        sub_299E3D364(v7, "Libnotify: %s failed on line %d with errno %d", v9, v10, v11, v12, v13, v14, "shm_attach");
      }
    }

    return 0;
  }

  else
  {
    v4 = mmap(0, a1, 1, 1, v3, 0);
    v5 = v4 != -1;
    if (v4 == -1)
    {
      v16 = os_variant_has_internal_diagnostics();
      v17 = __error();
      v25 = *v17;
      if (v16)
      {
        sub_299E3D2E8("Libnotify: %s failed on line %d with errno %d", v18, v19, v20, v21, v22, v23, v24, "shm_attach");
      }

      else
      {
        sub_299E3D364(v17, "Libnotify: %s failed on line %d with errno %d", v19, v20, v21, v22, v23, v24, "shm_attach");
      }
    }

    else
    {
      *(v2 + 592) = v4;
    }

    close_NOCANCEL();
  }

  return v5;
}

void sub_299E3A8E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    os_unfair_lock_assert_owner((a1 + 40));
    *a1 = a2;

    os_unfair_lock_unlock((a1 + 40));
  }
}

uint32_t notify_register_mach_port(const char *name, mach_port_t *notify_port, int flags, int *out_token)
{
  v8 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", v53, v54, v55, v56, v57, v58, v59, name);
  }

  if ((*(v8 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v9 = *(v8 + 592);
    if (v9 && *v9 != *(v8 + 112))
    {
      v12 = sub_299E374A4(v8);
      os_unfair_lock_unlock((v8 + 104));
      if (v12)
      {
        if (v12 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            v21 = "notify_register_mach_port";
LABEL_20:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v14, v15, v16, v17, v18, v19, v20, v21);
            return v11;
          }

          v44 = "notify_register_mach_port";
LABEL_45:
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v15, v16, v17, v18, v19, v20, v44);
          return v11;
        }

        return v12;
      }
    }

    else
    {
      os_unfair_lock_unlock((v8 + 104));
    }
  }

  if (!name)
  {
    return 1;
  }

  if (!notify_port)
  {
    return 3;
  }

  if (strncmp(name, "self.", 5uLL))
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 != 1)
    {
      if (flags & 0x80000000) == 0 && (*(v8 + 116))
      {
        if ((flags & 1) == 0 && mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, notify_port))
        {
          v11 = 1000000;
          v22 = os_variant_has_internal_diagnostics();
          if (v22)
          {
            v30 = "notify_register_mach_port_via_dispatch";
LABEL_62:
            sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v23, v24, v25, v26, v27, v28, v29, v30);
            return v11;
          }

          v46 = "notify_register_mach_port_via_dispatch";
          goto LABEL_64;
        }

        v42 = *notify_port;
        if (*notify_port - 1 <= 0xFFFFFFFD)
        {
          v43 = MEMORY[0x29EDCA6B0];
          if (!mach_port_insert_right(*MEMORY[0x29EDCA6B0], *notify_port, *notify_port, 0x14u))
          {
            global_queue = dispatch_get_global_queue(2, 0);
            v60[0] = MEMORY[0x29EDCA5F8];
            v60[1] = 0x40000000;
            v60[2] = sub_299E37554;
            v60[3] = &unk_29F28F750;
            v61 = v42;
            v60[4] = v8;
            v48 = sub_299E381E4(name, out_token, global_queue, v60, *notify_port);
            v11 = v48;
            if ((flags & 1) != 0 || !v48)
            {
              if (!v48)
              {
                sub_299E3AFD4(v8, *notify_port, flags);
                v49 = *notify_port;
                v50 = *out_token;
              }
            }

            else
            {
              mach_port_destruct(*v43, v42, 0, 0);
            }

            return v11;
          }

          if ((flags & 1) == 0)
          {
            mach_port_destruct(*v43, v42, 0, 0);
          }
        }

        return 3;
      }

      if (!strncmp(name, "self.", 5uLL))
      {
        __assert_rtn("notify_register_mach_port_no_dispatch", "notify_client.c", 3045, "strncmp(name, SELF_PREFIX, SELF_PREFIX_LEN)");
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        goto LABEL_82;
      }

      if ((flags & 1) == 0 || *notify_port + 1 >= 2)
      {
        if (!*(v8 + 384))
        {
          v45 = sub_299E38CF8(v8);
          if (v45)
          {
            v12 = v45;
            if (v45 >= 0xB)
            {
              v11 = 1000000;
              has_internal_diagnostics = os_variant_has_internal_diagnostics();
              if (has_internal_diagnostics)
              {
                v21 = "notify_register_mach_port_no_dispatch";
                goto LABEL_20;
              }

              v44 = "notify_register_mach_port_no_dispatch";
              goto LABEL_45;
            }

            return v12;
          }
        }

        add_explicit = atomic_fetch_add_explicit((v8 + 488), 1u, memory_order_relaxed);
        v32 = add_explicit + 1;
        if (flags)
        {
          if (sub_299E3F050(*(v8 + 384), name, add_explicit + 1, *notify_port))
          {
LABEL_60:
            v22 = os_variant_has_internal_diagnostics();
            v11 = 1000000;
            if (v22)
            {
              v30 = "notify_register_mach_port_no_dispatch";
              goto LABEL_62;
            }

            v46 = "notify_register_mach_port_no_dispatch";
LABEL_64:
            sub_299E3D364(v22, "Libnotify: %s failed with code %d (%d) on line %d", v24, v25, v26, v27, v28, v29, v46);
            return v11;
          }

          v11 = sub_299E3A038(name, -1, v32, v32, -1, 3u, -1, -1, *notify_port, 0);
          if (v11)
          {
LABEL_71:
            if (v11 < 0xB)
            {
              return v11;
            }

            v34 = os_variant_has_internal_diagnostics();
            if (v34)
            {
LABEL_73:
              sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v35, v36, v37, v38, v39, v40, v41, "notify_register_mach_port_no_dispatch");
              return 1000000;
            }

LABEL_76:
            sub_299E3D364(v34, "Libnotify: %s failed with code %d on line %d", v36, v37, v38, v39, v40, v41, "notify_register_mach_port_no_dispatch");
            return 1000000;
          }
        }

        else
        {
          LODWORD(v60[0]) = 0;
          *notify_port = 0;
          v33 = sub_299E3F19C(*(v8 + 384), name, add_explicit + 1, v60, notify_port);
          v11 = v60[0];
          if (LODWORD(v60[0]))
          {
            if (!*notify_port)
            {
              if (LODWORD(v60[0]) < 0xB)
              {
                return v11;
              }

              v34 = os_variant_has_internal_diagnostics();
              if (v34)
              {
                goto LABEL_73;
              }

              goto LABEL_76;
            }

LABEL_82:
            __assert_rtn("notify_register_mach_port_no_dispatch", "notify_client.c", 3085, "*notify_port == MACH_PORT_NULL");
          }

          if (v33)
          {
            mach_port_destruct(*MEMORY[0x29EDCA6B0], *notify_port, 0, 0);
            goto LABEL_60;
          }

          v51 = sub_299E3A038(name, -1, v32, v32, -1, 3u, -1, -1, *notify_port, 0);
          if (v51)
          {
            v11 = v51;
            mach_port_destruct(*MEMORY[0x29EDCA6B0], *notify_port, 0, 0);
            goto LABEL_71;
          }
        }

        sub_299E3AFD4(v8, *notify_port, flags);
        v52 = *notify_port;
        v11 = 0;
        if (out_token)
        {
          *out_token = v32;
        }

        return v11;
      }

      return 3;
    }
  }

  return sub_299E3C0F8(name, notify_port, flags, out_token, v8);
}

void sub_299E3AFD4(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = a3;
    if ((a3 & 0x40000000) == 0)
    {
      os_unfair_lock_lock_with_options();
      v6 = *(a1 + 552);
      v7 = *(a1 + 544);
      if (v7)
      {
        v8 = *(a1 + 544);
        v9 = *(a1 + 552);
        while (*v9 != a2)
        {
          v9 += 3;
          if (!--v8)
          {
            goto LABEL_7;
          }
        }

        ++v9[1];
      }

      else
      {
LABEL_7:
        *(a1 + 544) = v7 + 1;
        v10 = *(a1 + 548);
        if (v7 >= v10)
        {
          v11 = v10 >= 4 ? 2 * v10 : 4;
          *(a1 + 548) = v11;
          v6 = reallocf(v6, 12 * v11);
          *(a1 + 552) = v6;
          if (!v6)
          {
            qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: Unable to allocate port array: possible notification registration leak";
            __break(0xB001u);
            return;
          }
        }

        v12 = &v6[12 * v7];
        *v12 = a2;
        *(v12 + 1) = 1;
        v12[8] = (v3 & 1) == 0;
      }

      os_unfair_lock_unlock((a1 + 104));
    }
  }
}

void sub_299E3B0EC(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1 + 26);
  sub_299E3B15C(&a1[114], *(a2 + 32), a2 + 32);
  if (*(a2 + 53) == 1)
  {
    free(*(a2 + 32));
  }

  free(a2);
}

uint64_t sub_299E3B15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_set_str_ptr_delete();
  if (result != a3)
  {
    __assert_rtn("_nc_table_delete", "table.c", 72, "os_set_delete(&t->set, key) == expected");
  }

  return result;
}

uint64_t sub_299E3B1A8()
{
  result = sub_299E397D8("com.apple.notify.root_access", &unk_2A20205A0);
  byte_2A1898280 = result;
  return result;
}

uint64_t notify_resume_pid(int a1)
{
  v2 = sub_299E35B5C();
  os_unfair_lock_opaque = v2[96]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
LABEL_2:
    v17 = *MEMORY[0x29EDCA690];
    v18 = a1;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1007;
    msg.msgh_remote_port = os_unfair_lock_opaque;
    msg.msgh_local_port = 0;
    if (MEMORY[0x2A1C7C4D8])
    {
      voucher_mach_msg_set(&msg);
    }

    if (!mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0))
    {
      return 0;
    }

    v4 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v7, v8, v9, v10, v11, v12, "notify_resume_pid");
    return v4;
  }

  v13 = v2;
  v14 = sub_299E38CF8(v2);
  if (!v14)
  {
    os_unfair_lock_opaque = v13[96]._os_unfair_lock_opaque;
    goto LABEL_2;
  }

  v4 = v14;
  if (v14 < 0xB)
  {
    return v4;
  }

  v4 = 1000000;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (!has_internal_diagnostics)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v6, v7, v8, v9, v10, v11, v12, "notify_resume_pid");
  return v4;
}

uint64_t sub_299E3B320(uint64_t a1, void *a2)
{
  result = MEMORY[0x29C2B29D0](a2);
  if (result != MEMORY[0x29EDCA9E0])
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: entitlement com.apple.private.darwin-notification.introspect must be a non-empty *array* of strings";
    __break(0xB001u);
    goto LABEL_7;
  }

  result = xpc_array_get_count(a2);
  if (!result)
  {
LABEL_7:
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: entitlement com.apple.private.darwin-notification.introspect must be a *non-empty* array of strings";
    __break(0xB001u);
    return result;
  }

  v5 = result;
  *(*(*(a1 + 32) + 8) + 24) = malloc_type_calloc(result, 0x10uLL, 0x1050040717B85FCuLL);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __assert_rtn("_notification_introspection_init_block_invoke", "notify_client.c", 1889, "exempt_notifications != NULL");
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  applier[0] = MEMORY[0x29EDCA5F8];
  applier[1] = 0x40000000;
  applier[2] = sub_299E3B474;
  applier[3] = &unk_29F28F708;
  applier[4] = *(a1 + 32);
  return xpc_array_apply(a2, applier);
}

uint64_t sub_299E3B474(uint64_t a1, uint64_t a2, void *a3)
{
  result = MEMORY[0x29C2B29D0](a3);
  if (result == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    length = xpc_string_get_length(a3);
    *(*(*(*(a1 + 32) + 8) + 24) + 16 * a2) = strdup(string_ptr);
    *(*(*(*(a1 + 32) + 8) + 24) + 16 * a2 + 8) = length;
    return 1;
  }

  else
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: entitlement com.apple.private.darwin-notification.introspect must be a non-empty array of *strings*";
    __break(0xB001u);
  }

  return result;
}

uint64_t notify_suspend_pid(int a1)
{
  v2 = sub_299E35B5C();
  os_unfair_lock_opaque = v2[96]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
LABEL_2:
    v17 = *MEMORY[0x29EDCA690];
    v18 = a1;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1006;
    msg.msgh_remote_port = os_unfair_lock_opaque;
    msg.msgh_local_port = 0;
    if (MEMORY[0x2A1C7C4D8])
    {
      voucher_mach_msg_set(&msg);
    }

    if (!mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0))
    {
      return 0;
    }

    v4 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v7, v8, v9, v10, v11, v12, "notify_suspend_pid");
    return v4;
  }

  v13 = v2;
  v14 = sub_299E38CF8(v2);
  if (!v14)
  {
    os_unfair_lock_opaque = v13[96]._os_unfair_lock_opaque;
    goto LABEL_2;
  }

  v4 = v14;
  if (v14 < 0xB)
  {
    return v4;
  }

  v4 = 1000000;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (!has_internal_diagnostics)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v6, v7, v8, v9, v10, v11, v12, "notify_suspend_pid");
  return v4;
}

void notify_monitor_file(int a1, const char *a2, int a3)
{
  v6 = sub_299E35B5C();
  if ((*(v6 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v7 = *(v6 + 592);
    if (v7 && *v7 != *(v6 + 112))
    {
      v10 = sub_299E374A4(v6);
      os_unfair_lock_unlock((v6 + 104));
      if (v10)
      {
        if (v10 < 0xB)
        {
          return;
        }

        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (!has_internal_diagnostics)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }
    }

    else
    {
      os_unfair_lock_unlock((v6 + 104));
    }
  }

  if (!a2)
  {
    return;
  }

  v8 = sub_299E36108();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
    __break(0xB001u);
    return;
  }

  if (*(v9 + 88))
  {
LABEL_12:
    sub_299E3617C(v9);
    return;
  }

  if (*(v6 + 384) || (v32 = sub_299E38CF8(v6)) == 0)
  {
    v19 = strdup(a2);
    if (v19)
    {
      v20 = v19;
      v21 = strlen(a2) + 1;
      if ((*(v9 + 27) & 4) != 0)
      {
        a1 = *(*(v9 + 104) + 48);
      }

      v22 = *(v6 + 384);
      v35 = a2;
      v36 = 16777472;
      v37 = v21;
      v38 = *MEMORY[0x29EDCA690];
      v39 = a1;
      v40 = v21;
      v41 = a3;
      *msg = 2147483667;
      *&msg[8] = v22;
      *&msg[12] = xmmword_299E40210;
      if (MEMORY[0x2A1C7C4D8])
      {
        voucher_mach_msg_set(msg);
      }

      v23 = mach_msg(msg, 1, 0x40u, 0, 0, 0, 0);
      *(v9 + 88) = v20;
      *(v9 + 96) = a3;
      sub_299E3617C(v9);
      if (v23)
      {
        v24 = os_variant_has_internal_diagnostics();
        if (v24)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v25, v26, v27, v28, v29, v30, v31, "notify_monitor_file");
        }

        else
        {
          sub_299E3D364(v24, "Libnotify: %s failed with code %d (%d) on line %d", v26, v27, v28, v29, v30, v31, "notify_monitor_file");
        }
      }

      return;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_40;
    }

LABEL_35:
    sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v12, v13, v14, v15, v16, v17, v18, "notify_monitor_file");
    return;
  }

  v33 = v32;
  sub_299E3617C(v9);
  if (v33 >= 0xB)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v13, v14, v15, v16, v17, v18, "notify_monitor_file");
  }
}

uint64_t notify_register_plain(const char *a1, _DWORD *a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = sub_299E35B5C();
  if ((sub_299E395F4(a1) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", v36, v37, v38, v39, v40, v41, v42, a1);
  }

  v43 = 0;
  if ((*(v4 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(v4 + 592);
    if (v5 && *v5 != *(v4 + 112))
    {
      v21 = sub_299E374A4(v4);
      os_unfair_lock_unlock((v4 + 104));
      if (v21)
      {
        if (v21 < 0xB)
        {
          goto LABEL_43;
        }

        v9 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (!has_internal_diagnostics)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 104));
    }
  }

  if (!a1)
  {
    v9 = 1;
    goto LABEL_45;
  }

  if (!strncmp(a1, "self.", 5uLL))
  {
    goto LABEL_11;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
LABEL_11:
    v6 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
    v7 = sub_299E3BEA0((v4 + 128), a1, v6, &v43);
    if (v7)
    {
      v8 = v7;
      if (v7 >= 0xB)
      {
        v9 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_22;
        }

LABEL_31:
        sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v12, v13, v14, v15, v16, v17, "notify_register_plain");
        goto LABEL_45;
      }
    }

    else
    {
      v22 = sub_299E3A038(a1, v43, v6, v6, -1, 0x80000002, -1, -1, 0, 0);
      if (!v22)
      {
        v9 = 0;
        *a2 = v6;
        goto LABEL_45;
      }

      v8 = v22;
      if (v22 >= 0xB)
      {
        v9 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }
    }

    v9 = v8;
    goto LABEL_45;
  }

  v18 = *(v4 + 384);
  if (!v18)
  {
    v23 = sub_299E38CF8(v4);
    if (!v23)
    {
      v18 = *(v4 + 384);
      goto LABEL_17;
    }

    v21 = v23;
    if (v23 < 0xB)
    {
      goto LABEL_43;
    }

    v9 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_31;
    }

LABEL_22:
    sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v11, v12, v13, v14, v15, v16, v17, "notify_register_plain");
    goto LABEL_45;
  }

LABEL_17:
  v19 = atomic_fetch_add_explicit((v4 + 488), 1u, memory_order_relaxed) + 1;
  memset(msg, 0, 512);
  *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v20 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, a1, 512);
  }

  else
  {
    v20 = mig_strncpy(&msg[1].msgh_voucher_port, a1, 512);
  }

  msg[1].msgh_remote_port = 0;
  msg[1].msgh_local_port = v20;
  v24 = (v20 + 3) & 0xFFFFFFFC;
  *(&msg[1].msgh_voucher_port + v24) = v19;
  msg[0].msgh_bits = 19;
  *&msg[0].msgh_remote_port = v18;
  *&msg[0].msgh_voucher_port = 0x3F300000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
  }

  if (!mach_msg(msg, 1, v24 + 44, 0, 0, 0, 0))
  {
    v33 = sub_299E3A038(a1, -1, v19, v19, -1, 0x40000002u, -1, -1, 0, 0);
    if (!v33)
    {
      v9 = 0;
      *a2 = v19;
      goto LABEL_45;
    }

    v21 = v33;
    if (v33 >= 0xB)
    {
      v9 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

LABEL_43:
    v9 = v21;
    goto LABEL_45;
  }

  v9 = 1000000;
  v25 = os_variant_has_internal_diagnostics();
  if (v25)
  {
    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v26, v27, v28, v29, v30, v31, v32, "notify_register_plain");
  }

  else
  {
    sub_299E3D364(v25, "Libnotify: %s failed with code %d (%d) on line %d", v27, v28, v29, v30, v31, v32, "notify_register_plain");
  }

LABEL_45:
  v34 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_299E3BEA0(os_unfair_lock_s *a1, const char *a2, unsigned int a3, void *a4)
{
  v11 = 0;
  os_unfair_lock_lock_with_options();
  v8 = sub_299E3BF34(a1, a2, a3, &v11);
  if (!v8)
  {
    v9 = v11;
    *(v11 + 79) = *(v11 + 79) & 0xF0 | 2;
    *a4 = *(*(v9 + 48) + 16);
  }

  os_unfair_lock_unlock(a1 + 54);
  return v8;
}

uint64_t sub_299E3BF34(uint64_t a1, const char *a2, unsigned int a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 7;
  }

  *a4 = 0;
  v8 = os_set_str_ptr_find();
  if (!v8 || (v9 = *(a1 + 32), v10 = v8 - v9, v8 == v9))
  {
    v11 = strlen(a2);
    v12 = malloc_type_calloc(1uLL, v11 + 73, 0x103004098686315uLL);
    if (!v12)
    {
      return 47;
    }

    v10 = v12;
    ++*(a1 + 224);
    v13 = v12 + 72;
    *(v10 + 8) = v13;
    memcpy(v13, a2, v11 + 1);
    v14 = *a1 + 1;
    *(v10 + 16) = *a1;
    *a1 = v14;
    *(v10 + 48) = -4294966477;
    *(v10 + 60) = 1;
    *v10 = 0;
    os_set_str_ptr_insert();
    os_set_64_ptr_insert();
  }

  ++*(v10 + 56);
  v15 = os_set_64_ptr_find();
  if ((!v15 || *(a1 + 96) == v15) && (v16 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040BED8B209uLL)) != 0)
  {
    v17 = v16;
    ++*(a1 + 232);
    v16[8] = a3;
    v16[6] = v10;
    v18 = *v10;
    *v16 = *v10;
    if (v18)
    {
      *(v18 + 8) = v16;
    }

    *v10 = v16;
    v16[1] = v10;
    os_set_64_ptr_insert();
    result = 0;
    *a4 = v17;
  }

  else
  {
    sub_299E3C590(a1, v10);
    return 48;
  }

  return result;
}

uint64_t sub_299E3C0F8(const char *a1, mach_port_name_t *name, int a3, unsigned int *a4, os_unfair_lock_s *a5)
{
  if (!a5)
  {
    __assert_rtn("notify_register_mach_port_self", "notify_client.c", 2942, "globals");
  }

  if (a3)
  {
    v20 = *name;
    if (v20 + 1 < 2 || mach_port_insert_right(*MEMORY[0x29EDCA6B0], v20, *name, 0x14u))
    {
      return 3;
    }
  }

  else
  {
    v10 = MEMORY[0x29EDCA6B0];
    if (mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, name))
    {
      v11 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (has_internal_diagnostics)
      {
        sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v13, v14, v15, v16, v17, v18, v19, "notify_register_mach_port_self");
      }

      else
      {
        sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d (%d) on line %d", v14, v15, v16, v17, v18, v19, "notify_register_mach_port_self");
      }

      return v11;
    }

    if (mach_port_insert_right(*v10, *name, *name, 0x14u))
    {
      mach_port_destruct(*v10, *name, 0, 0);
      return 3;
    }
  }

  add_explicit = atomic_fetch_add_explicit(&a5[122], 1u, memory_order_relaxed);
  v22 = *name;
  if (*name - 1 >= 0xFFFFFFFE)
  {
    v11 = 3;
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v23 = add_explicit + 1;
  v47 = 0;
  os_unfair_lock_lock_with_options();
  v24 = sub_299E3BF34(&a5[32], a1, v23, &v47);
  if (v24)
  {
    v11 = v24;
    os_unfair_lock_unlock(a5 + 86);
    if (a3)
    {
LABEL_19:
      if (v11 >= 0xB)
      {
        v25 = os_variant_has_internal_diagnostics();
        if (v25)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v26, v27, v28, v29, v30, v31, v32, "notify_register_mach_port_self");
        }

        else
        {
          sub_299E3D364(v25, "Libnotify: %s failed with code %d on line %d", v27, v28, v29, v30, v31, v32, "notify_register_mach_port_self");
        }

        return 1000000;
      }

      return v11;
    }

LABEL_18:
    mach_port_destruct(*MEMORY[0x29EDCA6B0], *name, 0, 0);
    goto LABEL_19;
  }

  v34 = v47;
  *(v47 + 79) = *(v47 + 79) & 0xF0 | 3;
  *(v34 + 56) = v22;
  v35 = *(*(v34 + 48) + 16);
  os_unfair_lock_unlock(a5 + 86);
  v36 = sub_299E3A038(a1, v35, v23, v23, -1, 0x80000003, -1, -1, *name, 0);
  if (v36)
  {
    v37 = v36;
    if ((a3 & 1) == 0)
    {
      mach_port_destruct(*MEMORY[0x29EDCA6B0], *name, 0, 0);
    }

    sub_299E3C458(&a5[32]);
    v11 = v37;
    if (v37 >= 0xB)
    {
      v11 = 1000000;
      v38 = os_variant_has_internal_diagnostics();
      if (v38)
      {
        sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v39, v40, v41, v42, v43, v44, v45, "notify_register_mach_port_self");
      }

      else
      {
        sub_299E3D364(v38, "Libnotify: %s failed with code %d on line %d", v40, v41, v42, v43, v44, v45, "notify_register_mach_port_self");
      }
    }
  }

  else
  {
    *a4 = v23;
    sub_299E3AFD4(a5, *name, a3);
    v46 = *name;
    return 0;
  }

  return v11;
}

void sub_299E3C458(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = os_set_64_ptr_find();
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = (v2 - v3);
    if (v2 != v3)
    {
      v5 = v4[6];
      v6 = *v4;
      v7 = v4[1];
      if (*v4)
      {
        *(v6 + 8) = v7;
      }

      *v7 = v6;
      sub_299E3C544(a1 + 72, v4[8], (v4 + 8));
      v8 = *(v4 + 79) & 0xF;
      if (v8 == 3)
      {
        mach_port_deallocate(*MEMORY[0x29EDCA6B0], *(v4 + 14));
      }

      else if (v8 == 4 && (v4[7] & 0x80000000) == 0)
      {
        close_NOCANCEL();
      }

      free(v4);
      ++*(a1 + 236);
      sub_299E3C590(a1, v5);
    }
  }

  os_unfair_lock_unlock((a1 + 216));
}

uint64_t sub_299E3C544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_set_64_ptr_delete();
  if (result != a3)
  {
    __assert_rtn("_nc_table_delete_64", "table.c", 80, "os_set_delete(&t->set, key) == expected");
  }

  return result;
}

void sub_299E3C590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 56);
    if (!v4 || (v5 = v4 - 1, (*(a2 + 56) = v5) == 0))
    {
      v6 = *(a1 + 212);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 192);
        while (1)
        {
          v9 = v7 + 1;
          if (v8[v7] == a2)
          {
            break;
          }

          ++v7;
          if (v6 == v9)
          {
            goto LABEL_16;
          }
        }

        if (v7 + 1 < v6)
        {
          do
          {
            *(*(a1 + 192) + 8 * (v9 - 1)) = *(*(a1 + 192) + 8 * v9);
            ++v9;
          }

          while (v6 != v9);
          v8 = *(a1 + 192);
        }

        v10 = v6 - 1;
        *(a1 + 212) = v10;
        if (v10)
        {
          v11 = reallocf(v8, 8 * v10);
        }

        else
        {
          free(v8);
          v11 = 0;
        }

        *(a1 + 192) = v11;
      }

LABEL_16:
      sub_299E3B15C(a1 + 8, *(a2 + 8), a2 + 8);
      *(a2 + 8) = 0;
      sub_299E3C544(a1 + 40, *(a2 + 16), a2 + 16);
      free(a2);
      ++*(a1 + 228);
    }
  }
}

void sub_299E3C694(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 79) & 0x20) != 0)
  {
    v9 = *(a2 + 79) | 0x40;
LABEL_38:
    *(a2 + 79) = v9;
    goto LABEL_39;
  }

  v4 = *(a2 + 68);
  v5 = os_set_32_ptr_find();
  if (!v5)
  {
    v8 = 0;
    v7 = *(a2 + 79);
    goto LABEL_7;
  }

  v6 = a1[20];
  v7 = *(a2 + 79);
  if (v6 == v5)
  {
    v8 = 0;
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v8 = v5 - v6;
  if (*(v8 + 20))
  {
    ++*(a2 + 78);
    v9 = v7 | 0x60;
    goto LABEL_38;
  }

  v10 = 0;
LABEL_8:
  v11 = v7 & 0xF;
  if (v11 <= 4)
  {
    if (v11 != 3)
    {
      if (v11 != 4 || (*(a2 + 56) & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      LODWORD(v33[0]) = bswap32(*(a2 + 64));
      if (write_NOCANCEL() != 4)
      {
        v13 = *(a2 + 56);
        close_NOCANCEL();
        *(a2 + 56) = -1;
LABEL_39:
        v31 = *MEMORY[0x29EDCA608];
        return;
      }

      goto LABEL_36;
    }

    v15 = *(a2 + 56);
  }

  else
  {
    if (v11 != 7)
    {
      if (v11 == 6)
      {
        v16 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v16, "Notification", *(*(a2 + 48) + 8));
        v17 = *(*(a2 + 48) + 16);
        v18 = os_set_64_ptr_find();
        if (v18)
        {
          v19 = a1[8];
          if (v19 != v18)
          {
            xpc_dictionary_set_uint64(v16, "_State", *(v18 - v19 + 24));
          }
        }

        v20 = a1[25];
        v21 = *(a2 + 56);
        v22 = xpc_event_publisher_fire_noboost();
        xpc_release(v16);
        if (v22)
        {
          if (v22 == 55 && (*(a2 + 80) & 1) == 0)
          {
            *(a2 + 80) = 1;
            memset(v33, 0, sizeof(v33));
            v23 = *(a2 + 56);
            if (xpc_get_service_identifier_for_token())
            {
              if (os_variant_has_internal_diagnostics())
              {
                sub_299E3D2E8("BUG IN CLIENT OF NOTIFYD: %s has not dequeued the last %d messages", v24, v25, v26, v27, v28, v29, v30, v33);
              }
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        if (v11 != 5)
        {
LABEL_37:
          v9 = v7 & 0x3F;
          goto LABEL_38;
        }

        v12 = *(a2 + 68);
        if (!v12)
        {
          v12 = getpid();
        }

        if (kill(v12, *(a2 + 56)))
        {
          goto LABEL_39;
        }
      }

LABEL_36:
      v7 = *(a2 + 79);
      goto LABEL_37;
    }

    if (v10)
    {
      goto LABEL_39;
    }

    v14 = *(v8 + 24);
    if (!v14)
    {
      goto LABEL_39;
    }

    v15 = *(v14 + 8);
  }

  v32 = *MEMORY[0x29EDCA608];

  sub_299E3C93C(a1, a2, v15);
}

uint64_t sub_299E3C93C(uint64_t a1, uint64_t a2, mach_port_t a3)
{
  v6 = os_set_32_ptr_find();
  if (v6 && (v7 = *(a1 + 128), v7 != v6))
  {
    v8 = v6 - v7;
    if (*(v6 - v7 + 12))
    {
      result = 0;
      ++*(a2 + 78);
      v13 = *(a2 + 79) | 0x60;
      goto LABEL_16;
    }

    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  if ((*(a1 + 208) & 2) != 0)
  {
    v10 = 145;
  }

  else
  {
    v10 = 17;
  }

  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_remote_port = a3;
  msg.msgh_local_port = 0;
  v11 = *(a2 + 64);
  msg.msgh_voucher_port = 0;
  msg.msgh_id = v11;
  result = mach_msg(&msg, v10, 0x18u, 0, 0, 0, 0);
  if (!result)
  {
    v13 = *(a2 + 79) & 0x3F;
LABEL_16:
    *(a2 + 79) = v13;
    return result;
  }

  if (result != 268435460)
  {
    return 46;
  }

  mach_msg_destroy(&msg);
  if ((*(a1 + 208) & 2) == 0)
  {
    return 45;
  }

  ++*(a2 + 78);
  *(a2 + 79) |= 0xE0u;
  result = 0;
  if ((v9 & 1) == 0)
  {
    *(v8 + 12) |= 1u;
  }

  return result;
}

uint32_t notify_resume(int token)
{
  v2 = sub_299E35B5C();
  if ((*(v2 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 592);
    if (v3 && *v3 != *(v2 + 112))
    {
      v18 = sub_299E374A4(v2);
      os_unfair_lock_unlock((v2 + 104));
      if (v18)
      {
        if (v18 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (!has_internal_diagnostics)
          {
LABEL_33:
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v21, v22, v23, v24, v25, v26, "notify_resume");
            goto LABEL_62;
          }

          goto LABEL_25;
        }

LABEL_34:
        v11 = v18;
        goto LABEL_62;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 104));
    }
  }

  v4 = sub_299E36108();
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 24) & 0x80000000) != 0)
    {
      v12 = *(v4 + 20);
      os_unfair_lock_lock_with_options();
      v13 = os_set_64_ptr_find();
      if (v13)
      {
        v14 = *(v2 + 224);
        v15 = v13 - v14;
        if (v13 != v14)
        {
          if (!*(v15 + 78) || (v16 = *(v15 + 78) - 1, (*(v15 + 78) = v16) == 0))
          {
            v17 = *(v15 + 79);
            *(v15 + 79) = v17 & 0x5F;
            if ((v17 & 0x40) != 0)
            {
              sub_299E3C694((v2 + 128), v15);
            }
          }
        }
      }

      os_unfair_lock_unlock((v2 + 344));
    }

    else
    {
      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        return v4;
      }

      if (!*(v2 + 384))
      {
        v27 = sub_299E38CF8(v2);
        if (v27)
        {
          v18 = v27;
          sub_299E3617C(v5);
          if (v18 >= 0xB)
          {
            v11 = 1000000;
            has_internal_diagnostics = os_variant_has_internal_diagnostics();
            if (!has_internal_diagnostics)
            {
              goto LABEL_33;
            }

LABEL_25:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v20, v21, v22, v23, v24, v25, v26, "notify_resume");
            goto LABEL_62;
          }

          goto LABEL_34;
        }
      }

      v6 = *(v5 + 104);
      os_unfair_lock_lock_with_options();
      v7 = *(v5 + 24);
      if ((v7 & 0x4000000) == 0)
      {
        os_unfair_lock_unlock((*(v5 + 104) + 40));
        v8 = *(v2 + 384);
        memset(&msg_4[16], 0, 28);
        *msg_4 = 0u;
        *&msg_4[20] = *MEMORY[0x29EDCA690];
        *&msg_4[28] = token;
        special_reply_port = mig_get_special_reply_port();
        *&msg_4[4] = v8;
        *&msg_4[8] = special_reply_port;
        msg = 5395;
        *&msg_4[12] = 0x3ED00000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(&msg);
          v10 = *&msg_4[8];
        }

        else
        {
          v10 = special_reply_port;
        }

        v28 = mach_msg(&msg, 3162115, 0x24u, 0x30u, v10, 0, 0);
        v29 = v28;
        if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
        {
          sub_299E3617C(v5);
          goto LABEL_58;
        }

        if (v28)
        {
          mig_dealloc_special_reply_port();
          goto LABEL_57;
        }

        if (*&msg_4[16] == 71)
        {
          v29 = -308;
        }

        else if (*&msg_4[16] == 1105)
        {
          if ((msg & 0x80000000) == 0)
          {
            if (*msg_4 == 40)
            {
              if (!*&msg_4[4])
              {
                v29 = *&msg_4[28];
                if (!*&msg_4[28])
                {
                  v39 = v5;
                  v11 = *&msg_4[32];
                  sub_299E3617C(v39);
                  if (v11 < 0xB)
                  {
                    goto LABEL_62;
                  }

LABEL_58:
                  v31 = os_variant_has_internal_diagnostics();
                  if (v31)
                  {
                    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v32, v33, v34, v35, v36, v37, v38, "notify_resume");
                  }

                  else
                  {
                    sub_299E3D364(v31, "Libnotify: %s failed with code %d (%d) on line %d", v33, v34, v35, v36, v37, v38, "notify_resume");
                  }

                  v11 = 1000000;
                  goto LABEL_62;
                }

                goto LABEL_56;
              }
            }

            else if (*msg_4 == 36)
            {
              if (*&msg_4[4])
              {
                v30 = 1;
              }

              else
              {
                v30 = *&msg_4[28] == 0;
              }

              if (v30)
              {
                v29 = -300;
              }

              else
              {
                v29 = *&msg_4[28];
              }

              goto LABEL_56;
            }
          }

          v29 = -300;
        }

        else
        {
          v29 = -301;
        }

LABEL_56:
        mach_msg_destroy(&msg);
LABEL_57:
        sub_299E3617C(v5);
        if (v29)
        {
          goto LABEL_58;
        }

LABEL_29:
        v11 = 0;
        goto LABEL_62;
      }

      *(v5 + 24) = v7 & 0xFF3FFFFF;
      os_unfair_lock_unlock((*(v5 + 104) + 40));
      if ((v7 & 0x400000) != 0)
      {
        sub_299E377C0(v5);
      }
    }

    sub_299E3617C(v5);
    goto LABEL_29;
  }

  v11 = 2;
LABEL_62:
  LODWORD(v4) = v11;
  return v4;
}

uint32_t notify_suspend(int token)
{
  v2 = sub_299E35B5C();
  if ((*(v2 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 592);
    if (v3 && *v3 != *(v2 + 112))
    {
      v18 = sub_299E374A4(v2);
      os_unfair_lock_unlock((v2 + 104));
      if (v18)
      {
        if (v18 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (!has_internal_diagnostics)
          {
LABEL_30:
            sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v21, v22, v23, v24, v25, v26, "notify_suspend");
            goto LABEL_59;
          }

          goto LABEL_23;
        }

LABEL_31:
        v11 = v18;
        goto LABEL_59;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 104));
    }
  }

  v4 = sub_299E36108();
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 24) & 0x80000000) != 0)
    {
      v12 = *(v4 + 20);
      os_unfair_lock_lock_with_options();
      v13 = os_set_64_ptr_find();
      if (v13)
      {
        v14 = *(v2 + 224);
        if (v14 != v13)
        {
          v15 = v13 - v14;
          *(v15 + 79) |= 0x20u;
          v16 = *(v15 + 78);
          if (v16 != 255)
          {
            *(v15 + 78) = v16 + 1;
          }
        }
      }

      v17 = (v2 + 344);
    }

    else
    {
      if (qword_2A1898298 != -1)
      {
        dispatch_once(&qword_2A1898298, &unk_2A2020540);
      }

      if (byte_2A1898290 == 1)
      {
        qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
        __break(0xB001u);
        return v4;
      }

      if (!*(v2 + 384))
      {
        v27 = sub_299E38CF8(v2);
        if (v27)
        {
          v18 = v27;
          sub_299E3617C(v5);
          if (v18 >= 0xB)
          {
            v11 = 1000000;
            has_internal_diagnostics = os_variant_has_internal_diagnostics();
            if (!has_internal_diagnostics)
            {
              goto LABEL_30;
            }

LABEL_23:
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v20, v21, v22, v23, v24, v25, v26, "notify_suspend");
            goto LABEL_59;
          }

          goto LABEL_31;
        }
      }

      v6 = *(v5 + 104);
      os_unfair_lock_lock_with_options();
      v7 = *(v5 + 24);
      if ((v7 & 0x4000000) == 0)
      {
        os_unfair_lock_unlock((*(v5 + 104) + 40));
        v8 = *(v2 + 384);
        memset(&msg_4[16], 0, 28);
        *msg_4 = 0u;
        *&msg_4[20] = *MEMORY[0x29EDCA690];
        *&msg_4[28] = token;
        special_reply_port = mig_get_special_reply_port();
        *&msg_4[4] = v8;
        *&msg_4[8] = special_reply_port;
        msg = 5395;
        *&msg_4[12] = 0x3EC00000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(&msg);
          v10 = *&msg_4[8];
        }

        else
        {
          v10 = special_reply_port;
        }

        v28 = mach_msg(&msg, 3162115, 0x24u, 0x30u, v10, 0, 0);
        v29 = v28;
        if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
        {
          sub_299E3617C(v5);
          goto LABEL_55;
        }

        if (v28)
        {
          mig_dealloc_special_reply_port();
          goto LABEL_54;
        }

        if (*&msg_4[16] == 71)
        {
          v29 = -308;
        }

        else if (*&msg_4[16] == 1104)
        {
          if ((msg & 0x80000000) == 0)
          {
            if (*msg_4 == 40)
            {
              if (!*&msg_4[4])
              {
                v29 = *&msg_4[28];
                if (!*&msg_4[28])
                {
                  v39 = v5;
                  v11 = *&msg_4[32];
                  sub_299E3617C(v39);
                  if (v11 < 0xB)
                  {
                    goto LABEL_59;
                  }

LABEL_55:
                  v31 = os_variant_has_internal_diagnostics();
                  if (v31)
                  {
                    sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v32, v33, v34, v35, v36, v37, v38, "notify_suspend");
                  }

                  else
                  {
                    sub_299E3D364(v31, "Libnotify: %s failed with code %d (%d) on line %d", v33, v34, v35, v36, v37, v38, "notify_suspend");
                  }

                  v11 = 1000000;
                  goto LABEL_59;
                }

                goto LABEL_53;
              }
            }

            else if (*msg_4 == 36)
            {
              if (*&msg_4[4])
              {
                v30 = 1;
              }

              else
              {
                v30 = *&msg_4[28] == 0;
              }

              if (v30)
              {
                v29 = -300;
              }

              else
              {
                v29 = *&msg_4[28];
              }

              goto LABEL_53;
            }
          }

          v29 = -300;
        }

        else
        {
          v29 = -301;
        }

LABEL_53:
        mach_msg_destroy(&msg);
LABEL_54:
        sub_299E3617C(v5);
        if (v29)
        {
          goto LABEL_55;
        }

LABEL_26:
        v11 = 0;
        goto LABEL_59;
      }

      *(v5 + 24) = v7 | 0x800000;
      v17 = (*(v5 + 104) + 40);
    }

    os_unfair_lock_unlock(v17);
    sub_299E3617C(v5);
    goto LABEL_26;
  }

  v11 = 2;
LABEL_59:
  LODWORD(v4) = v11;
  return v4;
}

void sub_299E3D2E8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0;
  if (getpid() != 1)
  {
    vasprintf(&v10, a1, &a9);
    if (v10)
    {
      os_fault_with_payload();
      free(v10);
    }
  }
}

void sub_299E3D364(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, a2, &a9);
  if (v10[0])
  {
    _simple_asl_log();
    v9 = v10[0];
  }

  else
  {
    v9 = 0;
  }

  free(v9);
}

double _notify_fork_child()
{
  v0 = sub_299E35B5C();
  sub_299E38D40(v0);
  if (*(v0 + 384) || _dispatch_is_fork_of_multithreaded_parent())
  {
    *(v0 + 116) = 0x8000000;
  }

  sub_299E38DCC(v0 + 128);
  *(v0 + 384) = 0;
  *(v0 + 112) = 0;
  *(v0 + 512) = 0;
  *(v0 + 592) = 0;
  result = 0.0;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  return result;
}

void sub_299E3D428()
{
  v0 = sub_299E35B5C();
  os_unfair_lock_lock_with_options();
  sub_299E374A4(v0);

  os_unfair_lock_unlock(v0 + 26);
}

uint64_t sub_299E3D474(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x29EDCA608];
  v53 = -1;
  v52 = -1;
  v3 = *(*(a2 + 104) + 32);
  v49 = sub_299E35B5C();
  if (*(a2 + 24) < 0x40000000)
  {
    goto LABEL_52;
  }

  v54 = 0;
  v4 = geteuid();
  if (v4)
  {
    v5 = v4;
    if (!strncmp(v3, "user.uid.", 9uLL))
    {
      snprintf(msg, 0x3FuLL, "%s%d", "user.uid.", v5);
      v37 = strlen(msg);
      if (strncmp(v3, msg, v37) || v3[v37] && v3[v37] != 46)
      {
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v39 = geteuid();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("BUG IN LIBNOTIFY CLIENT: registration held for restricted name %s with process uid %d", v40, v41, v42, v43, v44, v45, v46, v3);
        }

        else
        {
          sub_299E3D364(v39, "BUG IN LIBNOTIFY CLIENT: registration held for restricted name %s with process uid %d", v41, v42, v43, v44, v45, v46, v3);
        }
      }
    }
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    v51 = strlen(v6) + 1;
  }

  else
  {
    v51 = 0;
  }

  v7 = *(a2 + 24) & 0xF;
  v8 = -51;
  v48 = v3;
  while (1)
  {
    v9 = *(v49 + 384);
    v10 = *(a2 + 20);
    if ((*(v49 + 116) & 4) != 0)
    {
      v25 = v7 == 5 ? *(a2 + 40) : 0;
      v22 = sub_299E3F690(v9, v3, v10, v7, v25, *(a2 + 28), *(a2 + 72), *(a2 + 80), *(a2 + 88), v51, *(a2 + 96), &v53, &v52, &v54);
    }

    else
    {
      if (v7 == 5)
      {
        v11 = *(a2 + 40);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 28);
      v50 = *(a2 + 72);
      v13 = *(a2 + 88);
      v14 = *(a2 + 96);
      memset(v61, 0, 448);
      v56 = 0x14000000000000;
      v60 = 0;
      memset(msg, 0, sizeof(msg));
      *&msg[24] = 2;
      v57 = v13;
      v58 = 16777472;
      v59 = v51;
      v60 = *MEMORY[0x29EDCA690];
      if (MEMORY[0x2A1C7C4D0])
      {
        v15 = mig_strncpy_zerofill(v61 + 8, v3, 512);
      }

      else
      {
        v15 = mig_strncpy(v61 + 8, v3, 512);
      }

      v16 = MEMORY[0x2A1C7C4D8];
      LODWORD(v61[0]) = 0;
      DWORD1(v61[0]) = v15;
      v17 = (v15 + 3) & 0xFFFFFFFC;
      v18 = &msg[v17 - 512];
      *(v18 + 146) = v10;
      *(v18 + 147) = v7;
      *(v18 + 148) = v11;
      *(v18 + 149) = v12;
      *(v18 + 600) = v50;
      *(v18 + 154) = v51;
      *(v18 + 155) = v14;
      special_reply_port = mig_get_special_reply_port();
      *&msg[8] = __PAIR64__(special_reply_port, v9);
      *msg = -2147478253;
      *&msg[16] = 0x3FE00000000;
      if (v16)
      {
        voucher_mach_msg_set(msg);
        v20 = *&msg[12];
      }

      else
      {
        v20 = special_reply_port;
      }

      v21 = mach_msg(msg, 3227651, v17 + 112, 0x3Cu, v20, 0, 0);
      v22 = v21;
      if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
      {
        v3 = v48;
        goto LABEL_39;
      }

      v3 = v48;
      if (v21)
      {
        mig_dealloc_special_reply_port();
        goto LABEL_39;
      }

      if (*&msg[20] == 71)
      {
        v22 = -308;
        goto LABEL_38;
      }

      if (*&msg[20] != 1122)
      {
        v22 = -301;
        goto LABEL_38;
      }

      if ((*msg & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      if (*&msg[4] != 52)
      {
        if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v23 = 1;
          }

          else
          {
            v23 = v56 == 0;
          }

          if (v23)
          {
            v22 = -300;
          }

          else
          {
            v22 = v56;
          }
        }

        else
        {
LABEL_37:
          v22 = -300;
        }

LABEL_38:
        mach_msg_destroy(msg);
        goto LABEL_39;
      }

      if (*&msg[8])
      {
        goto LABEL_37;
      }

      v22 = v56;
      if (v56)
      {
        goto LABEL_38;
      }

      v52 = v57;
      v53 = HIDWORD(v56);
      v54 = v58;
    }

LABEL_39:
    if (!v22)
    {
      break;
    }

    usleep_NOCANCEL();
    if (__CFADD__(v8++, 1))
    {
      __assert_rtn("_notify_lib_regenerate_registration", "notify_client.c", 1495, "kstatus == KERN_SUCCESS");
    }
  }

  if (v54 > 0x39 || ((1 << v54) & 0x208000000000001) == 0)
  {
    v28 = os_variant_has_internal_diagnostics();
    v36 = *(a2 + 20);
    v47 = *(a2 + 24);
    if (v28)
    {
      sub_299E3D2E8("Libnotify: _notify_server_regnerate failed for name %s with status %d (flags: %x, token %d)", v29, v30, v31, v32, v33, v34, v35, v3);
    }

    else
    {
      sub_299E3D364(v28, "Libnotify: _notify_server_regnerate failed for name %s with status %d (flags: %x, token %d)", v30, v31, v32, v33, v34, v35, v3);
    }
  }

  *(a2 + 28) = v53;
  **(a2 + 104) = v52;
LABEL_52:
  v26 = *MEMORY[0x29EDCA608];
  return 1;
}

uint32_t notify_register_signal(const char *name, int sig, int *out_token)
{
  v54 = *MEMORY[0x29EDCA608];
  v6 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", v44, v45, v46, v47, v48, v49, v50, name);
  }

  if ((*(v6 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v7 = *(v6 + 592);
    if (v7 && *v7 != *(v6 + 112))
    {
      v23 = sub_299E374A4(v6);
      os_unfair_lock_unlock((v6 + 104));
      if (v23)
      {
        if (v23 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_31;
          }

          goto LABEL_51;
        }

        goto LABEL_39;
      }
    }

    else
    {
      os_unfair_lock_unlock((v6 + 104));
    }
  }

  if (!name)
  {
    v11 = 1;
    goto LABEL_52;
  }

  if (strncmp(name, "self.", 5uLL))
  {
    if (qword_2A1898298 != -1)
    {
      dispatch_once(&qword_2A1898298, &unk_2A2020540);
    }

    if (byte_2A1898290 != 1)
    {
      if (*(v6 + 116))
      {
        global_queue = dispatch_get_global_queue(2, 0);
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 0x40000000;
        handler[2] = sub_299E3DF9C;
        handler[3] = &unk_29F28F5D8;
        v52 = sig;
        v29 = notify_register_dispatch(name, out_token, global_queue, handler);
        if (v29 < 0xB)
        {
          v11 = v29;
          goto LABEL_52;
        }

        v11 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

      v20 = *(v6 + 384);
      if (v20)
      {
        goto LABEL_18;
      }

      v30 = sub_299E38CF8(v6);
      if (!v30)
      {
        v20 = *(v6 + 384);
LABEL_18:
        v21 = atomic_fetch_add_explicit((v6 + 488), 1u, memory_order_relaxed) + 1;
        memset(msg, 0, 512);
        *&msg[1].msgh_bits = *MEMORY[0x29EDCA690];
        if (MEMORY[0x2A1C7C4D0])
        {
          v22 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, name, 512);
        }

        else
        {
          v22 = mig_strncpy(&msg[1].msgh_voucher_port, name, 512);
        }

        msg[1].msgh_remote_port = 0;
        msg[1].msgh_local_port = v22;
        v31 = (v22 + 3) & 0xFFFFFFFC;
        v32 = msg + v31;
        *(v32 + 10) = v21;
        *(v32 + 11) = sig;
        msg[0].msgh_bits = 19;
        *&msg[0].msgh_remote_port = v20;
        *&msg[0].msgh_voucher_port = 0x3F500000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
        }

        if (mach_msg(msg, 1, v31 + 48, 0, 0, 0, 0))
        {
          v11 = 1000000;
          v33 = os_variant_has_internal_diagnostics();
          if (v33)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v34, v35, v36, v37, v38, v39, v40, "notify_register_signal");
          }

          else
          {
            sub_299E3D364(v33, "Libnotify: %s failed with code %d (%d) on line %d", v35, v36, v37, v38, v39, v40, "notify_register_signal");
          }

          goto LABEL_52;
        }

        v41 = sub_299E3A038(name, -1, v21, v21, -1, 0x40000005u, sig, -1, 0, 0);
        if (!v41)
        {
          v11 = 0;
          *out_token = v21;
          goto LABEL_52;
        }

        v27 = v41;
        if (v41 >= 0xB)
        {
          v11 = 1000000;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (has_internal_diagnostics)
          {
            goto LABEL_31;
          }

          goto LABEL_51;
        }

LABEL_50:
        v11 = v27;
        goto LABEL_52;
      }

      v23 = v30;
      if (v30 >= 0xB)
      {
        v11 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

LABEL_39:
      v11 = v23;
      goto LABEL_52;
    }
  }

  v8 = atomic_fetch_add_explicit((v6 + 488), 1u, memory_order_relaxed) + 1;
  *&msg[0].msgh_bits = 0;
  os_unfair_lock_lock_with_options();
  v9 = sub_299E3BF34(v6 + 128, name, v8, msg);
  if (!v9)
  {
    v24 = *&msg[0].msgh_bits;
    *(*&msg[0].msgh_bits + 79) = *(*&msg[0].msgh_bits + 79) & 0xF0 | 5;
    *(v24 + 68) = 0;
    *(v24 + 56) = sig;
    v25 = *(*(v24 + 48) + 16);
    os_unfair_lock_unlock((v6 + 344));
    v26 = sub_299E3A038(name, v25, v8, v8, -1, 0x80000005, sig, -1, 0, 0);
    if (!v26)
    {
      v11 = 0;
      *out_token = v8;
      goto LABEL_52;
    }

    v27 = v26;
    if (v26 >= 0xB)
    {
      v11 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (has_internal_diagnostics)
      {
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v10 = v9;
  os_unfair_lock_unlock((v6 + 344));
  if (v10 >= 0xB)
  {
    v11 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
LABEL_31:
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v13, v14, v15, v16, v17, v18, v19, "notify_register_signal");
      goto LABEL_52;
    }

LABEL_51:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v14, v15, v16, v17, v18, v19, "notify_register_signal");
    goto LABEL_52;
  }

  v11 = v10;
LABEL_52:
  v42 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_299E3DF9C(uint64_t a1)
{
  v2 = getpid();
  v3 = *(a1 + 32);

  return kill(v2, v3);
}

dispatch_queue_t sub_299E3DFD4(uint64_t a1)
{
  result = dispatch_queue_create("com.apple.notify.background.local.notification", 0);
  *(*(a1 + 32) + 504) = result;
  return result;
}

uint64_t sub_299E3E00C(uint64_t a1)
{
  v1 = *(a1 + 36);
  msg.msgh_remote_port = *(a1 + 32);
  msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = v1;
  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint32_t notify_register_file_descriptor(const char *name, int *notify_fd, int flags, int *out_token)
{
  v5 = flags;
  v69 = *MEMORY[0x29EDCA608];
  v8 = sub_299E35B5C();
  if ((sub_299E395F4(name) & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    sub_299E3D2E8("LIBNOTIFY INTROSPECT: registering for non-exempt notification %s", v58, v59, v60, v61, v62, v63, v64, name);
  }

  if ((*(v8 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v9 = *(v8 + 592);
    if (v9 && *v9 != *(v8 + 112))
    {
      v14 = sub_299E374A4(v8);
      os_unfair_lock_unlock((v8 + 104));
      if (v14)
      {
        if (v14 < 0xB)
        {
          goto LABEL_60;
        }

        v10 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
LABEL_22:
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v16, v17, v18, v19, v20, v21, v22, "notify_register_file_descriptor");
          goto LABEL_61;
        }

        goto LABEL_46;
      }
    }

    else
    {
      os_unfair_lock_unlock((v8 + 104));
    }
  }

  if (!name)
  {
    v10 = 1;
    goto LABEL_61;
  }

  if (!notify_fd)
  {
    goto LABEL_16;
  }

  if ((v5 & 1) == 0)
  {
    if ((pipe(v68) & 0x80000000) == 0)
    {
      *notify_fd = v68[0];
      goto LABEL_24;
    }

    v10 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      goto LABEL_22;
    }

LABEL_46:
    sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v17, v18, v19, v20, v21, v22, "notify_register_file_descriptor");
    goto LABEL_61;
  }

  v11 = *(v8 + 512);
  if (!v11)
  {
LABEL_16:
    v10 = 4;
    goto LABEL_61;
  }

  v12 = 0;
  v13 = *(v8 + 520);
  while (*(v13 + 4 * v12) != *notify_fd)
  {
    if (v11 == ++v12)
    {
      goto LABEL_16;
    }
  }

  v23 = 4 * v12;
  v68[0] = *(v13 + v23);
  v68[1] = *(*(v8 + 528) + v23);
LABEL_24:
  if (!strncmp(name, "self.", 5uLL))
  {
    goto LABEL_28;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
LABEL_28:
    v24 = atomic_fetch_add_explicit((v8 + 488), 1u, memory_order_relaxed) + 1;
    v25 = v68[1];
    aBlock[0] = 0;
    os_unfair_lock_lock_with_options();
    v26 = sub_299E3BF34(v8 + 128, name, v24, aBlock);
    if (v26)
    {
      v14 = v26;
      os_unfair_lock_unlock((v8 + 344));
      if ((v5 & 1) == 0)
      {
        close_NOCANCEL();
        close_NOCANCEL();
      }

      if (v14 >= 0xB)
      {
        v10 = 1000000;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (!has_internal_diagnostics)
        {
          goto LABEL_46;
        }

        goto LABEL_22;
      }

LABEL_60:
      v10 = v14;
      goto LABEL_61;
    }

    v36 = aBlock[0];
    *(aBlock[0] + 79) = *(aBlock[0] + 79) & 0xF0 | 4;
    *(v36 + 56) = v25;
    v37 = *(*(v36 + 48) + 16);
    os_unfair_lock_unlock((v8 + 344));
    v38 = sub_299E3A038(name, v37, v24, v24, -1, 0x80000004, -1, *notify_fd, 0, 0);
    if (v38)
    {
      if (v38 < 0xB)
      {
        v10 = v38;
        goto LABEL_61;
      }

      v10 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    *out_token = v24;
LABEL_52:
    sub_299E3E71C(v68[0], v68[1]);
    v10 = 0;
    goto LABEL_61;
  }

  if (*(v8 + 116))
  {
    v40 = v68[0];
    v39 = v68[1];
    v41 = sub_299E35B5C();
    if (*(v41 + 392))
    {
      v10 = sub_299E399D8(name, out_token, v41, 0);
      if (!v10)
      {
        v42 = *out_token;
        v43 = sub_299E36108();
        if (v43)
        {
          v44 = v43;
          *(v43 + 20) = *out_token;
          *(v43 + 36) = v40;
          global_queue = dispatch_get_global_queue(2, 0);
          *(v44 + 48) = global_queue;
          dispatch_retain(global_queue);
          v46 = bswap32(*(v44 + 20));
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 0x40000000;
          aBlock[2] = sub_299E3E85C;
          aBlock[3] = &unk_29F28F7B0;
          v66 = v39;
          v67 = v46;
          *(v44 + 56) = _Block_copy(aBlock);
          sub_299E3617C(v44);
          goto LABEL_52;
        }

        v10 = 18;
        if (v5)
        {
          goto LABEL_65;
        }

LABEL_64:
        close_NOCANCEL();
        close_NOCANCEL();
LABEL_65:
        if (v10 >= 0xB)
        {
          v50 = os_variant_has_internal_diagnostics();
          if (v50)
          {
            sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v51, v52, v53, v54, v55, v56, v57, "notify_register_file_descriptor");
          }

          else
          {
            sub_299E3D364(v50, "Libnotify: %s failed with code %d on line %d", v52, v53, v54, v55, v56, v57, "notify_register_file_descriptor");
          }

          v10 = 1000000;
        }

        goto LABEL_61;
      }
    }

    else
    {
      v10 = 19;
    }

    if (v5)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (!*(v8 + 384))
  {
    v47 = sub_299E38CF8(v8);
    if (v47)
    {
      v14 = v47;
      if ((v5 & 1) == 0)
      {
        close_NOCANCEL();
        close_NOCANCEL();
      }

      if (v14 < 0xB)
      {
        goto LABEL_60;
      }

      v10 = 1000000;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }
  }

  if ((fileport_makeport() & 0x80000000) != 0)
  {
    if ((v5 & 1) == 0)
    {
      close_NOCANCEL();
      close_NOCANCEL();
    }

    v10 = 1000000;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_46;
    }

    goto LABEL_22;
  }

  v27 = atomic_fetch_add_explicit((v8 + 488), 1u, memory_order_relaxed) + 1;
  if (sub_299E3EF04(*(v8 + 384), name, v27, 0))
  {
    if ((v5 & 1) == 0)
    {
      close_NOCANCEL();
      close_NOCANCEL();
    }

    v28 = os_variant_has_internal_diagnostics();
    v10 = 1000000;
    if (v28)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d (%d) on line %d", v29, v30, v31, v32, v33, v34, v35, "notify_register_file_descriptor");
    }

    else
    {
      sub_299E3D364(v28, "Libnotify: %s failed with code %d (%d) on line %d", v30, v31, v32, v33, v34, v35, "notify_register_file_descriptor");
    }
  }

  else
  {
    v10 = sub_299E3A038(name, -1, v27, -1, -1, 4u, -1, *notify_fd, 0, 0);
    if (!v10)
    {
      *out_token = v27;
      sub_299E3E71C(v68[0], v68[1]);
    }
  }

LABEL_61:
  v48 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_299E3E71C(int a1, int a2)
{
  v4 = sub_299E35B5C();
  if (((a2 | a1) & 0x80000000) == 0)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    v6 = *(v5 + 512);
    v7 = *(v5 + 520);
    if (!v6)
    {
      goto LABEL_14;
    }

    v8 = 0;
    do
    {
      if (v7[v8] == a1)
      {
        v9 = v8;
      }

      else
      {
        v9 = -1;
      }

      ++v8;
    }

    while (v9 == -1 && v8 < v6);
    if (v9 == -1)
    {
LABEL_14:
      *(v5 + 512) = v6 + 1;
      *(v5 + 520) = reallocf(v7, 4 * (v6 + 1));
      *(v5 + 528) = reallocf(*(v5 + 528), 4 * *(v5 + 512));
      v11 = reallocf(*(v5 + 536), 4 * *(v5 + 512));
      *(v5 + 536) = v11;
      v12 = *(v5 + 520);
      if (v12 && v11 && (v13 = *(v5 + 528)) != 0)
      {
        *(v12 + 4 * v6) = a1;
        *(v13 + 4 * v6) = a2;
        v11[v6] = 1;
      }

      else
      {
        free(*(v5 + 520));
        *(v5 + 520) = 0;
        free(*(v5 + 528));
        *(v5 + 528) = 0;
        free(*(v5 + 536));
        *(v5 + 536) = 0;
        *(v5 + 512) = 0;
      }
    }

    else
    {
      ++*(*(v5 + 536) + 4 * v9);
    }

    os_unfair_lock_unlock((v5 + 104));
  }
}

void notify_peek(uint64_t a1, _DWORD *a2)
{
  v3 = sub_299E35B5C();
  if ((*(v3 + 116) & 2) != 0)
  {
    os_unfair_lock_lock_with_options();
    v4 = *(v3 + 592);
    if (v4 && *v4 != *(v3 + 112))
    {
      v10 = sub_299E374A4(v3);
      os_unfair_lock_unlock((v3 + 104));
      if (v10)
      {
        if (v10 < 0xB)
        {
          return;
        }

        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
LABEL_22:
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v12, v13, v14, v15, v16, v17, v18, "notify_peek");
          return;
        }

LABEL_30:
        sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d", v13, v14, v15, v16, v17, v18, "notify_peek");
        return;
      }
    }

    else
    {
      os_unfair_lock_unlock((v3 + 104));
    }
  }

  v5 = sub_299E36108();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if ((*(v5 + 24) & 0x80000000) != 0)
  {
    if (a2)
    {
      os_unfair_lock_lock_with_options();
      v8 = os_set_64_ptr_find();
      if (v8)
      {
        v9 = *(v3 + 224);
        if (v9 != v8)
        {
          *a2 = *(*(v8 - v9 + 48) + 60);
        }
      }

      os_unfair_lock_unlock((v3 + 344));
    }

    goto LABEL_28;
  }

  if (qword_2A1898298 != -1)
  {
    dispatch_once(&qword_2A1898298, &unk_2A2020540);
  }

  if (byte_2A1898290 == 1)
  {
    qword_2A14EFE08 = "BUG IN CLIENT OF LIBNOTIFY: loopback mode enabled but process wants to IPC to notifyd";
    __break(0xB001u);
    return;
  }

  if ((v6[6] & 0xF) != 1)
  {
    goto LABEL_28;
  }

  v7 = *(v3 + 592);
  if (!v7)
  {
    sub_299E3617C(v6);
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  *a2 = *(v7 + 4 * v6[7]);
LABEL_28:
  sub_299E3617C(v6);
}

uint64_t notify_get_event(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  if ((byte_2A14EFF48 & 1) == 0)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("Libnotify client using deprecated function notify_get_event; this function does nothing", v7, v8, v9, v10, v11, v12, v13, v15);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "Libnotify client using deprecated function notify_get_event; this function does nothing", v8, v9, v10, v11, v12, v13, v15);
    }

    byte_2A14EFF48 = 1;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t notify_simple_post(char *name)
{
  if ((byte_2A14EFF49 & 1) == 0)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      sub_299E3D2E8("Libnotify client using deprecated function notify_simple_post, use notify_post instead", v3, v4, v5, v6, v7, v8, v9, v11);
    }

    else
    {
      sub_299E3D364(has_internal_diagnostics, "Libnotify client using deprecated function notify_simple_post, use notify_post instead", v4, v5, v6, v7, v8, v9, v11);
    }

    byte_2A14EFF49 = 1;
  }

  return notify_post(name);
}

uint64_t notify_dump_status()
{
  v0 = sub_299E35B5C();
  v1 = v0;
  if (v0[96]._os_unfair_lock_opaque || (v5 = sub_299E38CF8(v0), !v5))
  {
    if ((creat_NOCANCEL() & 0x80000000) == 0)
    {
      if ((fileport_makeport() & 0x80000000) != 0)
      {
        close_NOCANCEL();
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d (fileport_status: %d)", v26, v27, v28, v29, v30, v31, v32, "notify_dump_status");
        }

        else
        {
          sub_299E3D364(has_internal_diagnostics, "Libnotify: %s failed with code %d on line %d (fileport_status: %d)", v27, v28, v29, v30, v31, v32, "notify_dump_status");
        }
      }

      else
      {
        os_unfair_lock_opaque = v1[96]._os_unfair_lock_opaque;
        *&msg[20] = 0u;
        *&msg[4] = 0;
        *&msg[24] = 1;
        *&msg[28] = 0;
        v44 = 1114112;
        special_reply_port = mig_get_special_reply_port();
        *&msg[8] = os_unfair_lock_opaque;
        *&msg[12] = special_reply_port;
        *msg = -2147478253;
        *&msg[16] = 0x40000000000;
        if (MEMORY[0x2A1C7C4D8])
        {
          voucher_mach_msg_set(msg);
          v4 = *&msg[12];
        }

        else
        {
          v4 = special_reply_port;
        }

        v33 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v4, 0, 0);
        if ((v33 - 268435458) > 0xE || ((1 << (v33 - 2)) & 0x4003) == 0)
        {
          if (v33)
          {
            mig_dealloc_special_reply_port();
          }

          else
          {
            if (*&msg[20] == 1124 && (*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8] && !*&msg[32])
            {
              close_NOCANCEL();
              return 0;
            }

            mach_msg_destroy(msg);
          }
        }

        close_NOCANCEL();
        v34 = os_variant_has_internal_diagnostics();
        if (v34)
        {
          sub_299E3D2E8("Libnotify: %s failed with code %d on line %d (kstatus: %d)", v35, v36, v37, v38, v39, v40, v41, "notify_dump_status");
        }

        else
        {
          sub_299E3D364(v34, "Libnotify: %s failed with code %d on line %d (kstatus: %d)", v36, v37, v38, v39, v40, v41, "notify_dump_status");
        }
      }

      return 1000000;
    }

    v6 = 1000000;
    v15 = os_variant_has_internal_diagnostics();
    v16 = __error();
    v24 = *v16;
    if (v15)
    {
      sub_299E3D2E8("Libnotify: %s failed with code %d on line %d (errno: %d)", v17, v18, v19, v20, v21, v22, v23, "notify_dump_status");
    }

    else
    {
      sub_299E3D364(v16, "Libnotify: %s failed with code %d on line %d (errno: %d)", v18, v19, v20, v21, v22, v23, "notify_dump_status");
    }
  }

  else
  {
    v6 = v5;
    if (v5 >= 0xB)
    {
      v6 = 1000000;
      v7 = os_variant_has_internal_diagnostics();
      if (v7)
      {
        sub_299E3D2E8("Libnotify: %s failed with code %d on line %d", v8, v9, v10, v11, v12, v13, v14, "notify_dump_status");
      }

      else
      {
        sub_299E3D364(v7, "Libnotify: %s failed with code %d on line %d", v9, v10, v11, v12, v13, v14, "notify_dump_status");
      }
    }
  }

  return v6;
}

uint64_t sub_299E3EF04(unsigned int a1, const char *a2, int a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  memset(v14, 0, 464);
  memset(&v10, 0, sizeof(v10));
  v11 = 1;
  v12 = a4;
  DWORD1(v13) = 1114112;
  *(&v13 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v6 = mig_strncpy_zerofill(v14 + 8, a2, 512);
  }

  else
  {
    v6 = mig_strncpy(v14 + 8, a2, 512);
  }

  LODWORD(v14[0]) = 0;
  DWORD1(v14[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *(v14 + v7 + 8) = a3;
  v10.msgh_bits = -2147483629;
  *&v10.msgh_remote_port = a1;
  *&v10.msgh_voucher_port = 0x3F600000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v10);
  }

  result = mach_msg(&v10, 1, v7 + 60, 0, 0, 0, 0);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299E3F050(unsigned int a1, const char *a2, int a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  memset(v14, 0, 464);
  memset(&v10, 0, sizeof(v10));
  v11 = 1;
  v12 = a4;
  DWORD1(v13) = 1310720;
  *(&v13 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v6 = mig_strncpy_zerofill(v14 + 8, a2, 512);
  }

  else
  {
    v6 = mig_strncpy(v14 + 8, a2, 512);
  }

  LODWORD(v14[0]) = 0;
  DWORD1(v14[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *(v14 + v7 + 8) = a3;
  v10.msgh_bits = -2147483629;
  *&v10.msgh_remote_port = a1;
  *&v10.msgh_voucher_port = 0x3F700000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v10);
  }

  result = mach_msg(&v10, 1, v7 + 60, 0, 0, 0, 0);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299E3F19C(unsigned int a1, const char *a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v50 = *MEMORY[0x29EDCA608];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *(&v19 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v9 = mig_strncpy_zerofill(&v20 + 8, a2, 512);
  }

  else
  {
    v9 = mig_strncpy(&v20 + 8, a2, 512);
  }

  LODWORD(v20) = 0;
  DWORD1(v20) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  *(&v20 + v10 + 8) = a3;
  special_reply_port = mig_get_special_reply_port();
  *(&v18 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v18) = 5395;
  *&v19 = 0x40300000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v18);
    v12 = HIDWORD(v18);
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(&v18, 3162115, v10 + 44, 0x3Cu, v12, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (DWORD1(v19) == 71)
      {
        v14 = 4294966988;
      }

      else if (DWORD1(v19) == 1127)
      {
        if ((v18 & 0x80000000) == 0)
        {
          if (DWORD1(v18) == 36)
          {
            v14 = 4294966996;
            if (v20)
            {
              if (DWORD2(v18))
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = v20;
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_26;
        }

        v14 = 4294966996;
        if (DWORD2(v19) == 1 && *(&v18 + 4) == 52 && WORD3(v20) << 16 == 0x100000)
        {
          v14 = 0;
          v15 = HIDWORD(v19);
          *a4 = v21;
          *a5 = v15;
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v18);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v16 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_299E3F3DC(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v17 = 0;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x40400000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x18u, 0x38u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 1128)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 48)
          {
            if (!*&msg[8])
            {
              v11 = *&msg[32];
              if (!*&msg[32])
              {
                v14 = DWORD1(v16);
                *a2 = v16;
                *a3 = v14;
                *a4 = DWORD2(v16);
                return v11;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v12 = 1;
            }

            else
            {
              v12 = *&msg[32] == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  return v11;
}

uint64_t sub_299E3F558(unsigned int a1, const char *a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(v11, 0, 480);
  v9 = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v5 = mig_strncpy_zerofill(v11 + 8, a2, 512);
  }

  else
  {
    v5 = mig_strncpy(v11 + 8, a2, 512);
  }

  LODWORD(v11[0]) = 0;
  DWORD1(v11[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v11 + v6 + 8) = a3;
  LODWORD(v9) = 19;
  *(&v9 + 1) = a1;
  *&v10 = 0x40500000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v9);
  }

  result = mach_msg(&v9, 1, v6 + 44, 0, 0, 0, 0);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299E3F690(unsigned int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, _DWORD *a12, void *a13, int *a14)
{
  v39 = *MEMORY[0x29EDCA608];
  memset(v38, 0, 448);
  v33 = 0x14000000000000;
  v37 = 0;
  v31 = 0u;
  v32 = 0u;
  DWORD2(v32) = 2;
  v34 = a9;
  v35 = 16777472;
  v36 = a10;
  v37 = *MEMORY[0x29EDCA690];
  if (MEMORY[0x2A1C7C4D0])
  {
    v21 = mig_strncpy_zerofill(v38 + 8, a2, 512);
  }

  else
  {
    v21 = mig_strncpy(v38 + 8, a2, 512);
  }

  LODWORD(v38[0]) = 0;
  DWORD1(v38[0]) = v21;
  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = &v31 + v22;
  *(v23 + 18) = a3;
  *(v23 + 19) = a4;
  *(v23 + 20) = a5;
  *(v23 + 21) = a6;
  *(v23 + 11) = a7;
  *(v23 + 12) = a8;
  *(v23 + 26) = a10;
  *(v23 + 27) = a11;
  special_reply_port = mig_get_special_reply_port();
  *(&v31 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v31) = -2147478253;
  *&v32 = 0x40600000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v31);
    v25 = HIDWORD(v31);
  }

  else
  {
    v25 = special_reply_port;
  }

  v26 = mach_msg(&v31, 3162115, v22 + 112, 0x3Cu, v25, 0, 0);
  v27 = v26;
  if ((v26 - 268435458) > 0xE || ((1 << (v26 - 2)) & 0x4003) == 0)
  {
    if (!v26)
    {
      if (DWORD1(v32) == 71)
      {
        v27 = 4294966988;
      }

      else if (DWORD1(v32) == 1130)
      {
        if ((v31 & 0x80000000) == 0)
        {
          if (DWORD1(v31) == 52)
          {
            if (!DWORD2(v31))
            {
              v27 = v33;
              if (!v33)
              {
                *a12 = HIDWORD(v33);
                *a13 = v34;
                *a14 = v35;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v31) == 36)
          {
            if (DWORD2(v31))
            {
              v28 = 1;
            }

            else
            {
              v28 = v33 == 0;
            }

            if (v28)
            {
              v27 = 4294966996;
            }

            else
            {
              v27 = v33;
            }

            goto LABEL_26;
          }
        }

        v27 = 4294966996;
      }

      else
      {
        v27 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v31);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v29 = *MEMORY[0x29EDCA608];
  return v27;
}

uint64_t sub_299E3F918(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x29EDCA690];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 1031;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
}

uint64_t sub_299E3F998(int a1, int a2, uint64_t a3, void *a4, _DWORD *a5, int a6)
{
  *&msg[20] = 0u;
  v16 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x29EDCA690];
  *&msg[32] = a2;
  *&v16 = a3;
  v17 = 0;
  DWORD2(v16) = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x40800000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(msg);
    v10 = *&msg[12];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(msg, 3162115, 0x30u, 0x38u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&msg[20] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&msg[20] == 1132)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 48)
          {
            if (!*&msg[8])
            {
              v12 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v16;
                *a5 = DWORD2(v16);
                return v12;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v13 = 1;
            }

            else
            {
              v13 = *&msg[32] == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}
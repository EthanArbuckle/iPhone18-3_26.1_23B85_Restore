uint64_t mach_zone_get_btlog_records(unsigned int a1, _OWORD *a2, void *a3, _DWORD *a4)
{
  *v15 = NDR_record;
  v7 = a2[3];
  v17 = a2[2];
  v18 = v7;
  v19 = a2[4];
  v8 = a2[1];
  *&v15[8] = *a2;
  v16 = v8;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x7000001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0xEA00000000;
  v10 = mach_msg2_internal(&v14, 0x200000003, 0x7000001513, __PAIR64__(reply_port, a1), 0xEA00000000, (reply_port << 32), 0x40, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v14.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (v14.msgh_id == 334)
      {
        if ((v14.msgh_bits & 0x80000000) == 0)
        {
          if (v14.msgh_size == 36)
          {
            v11 = 4294966996;
            if (*&v15[8])
            {
              if (v14.msgh_remote_port)
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&v15[8];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_21;
        }

        v11 = 4294966996;
        if (*v15 == 1 && *&v14.msgh_size == 56 && v15[15] == 1)
        {
          v12 = *&v15[16] >> 7;
          if (*&v15[16] >> 7 == DWORD1(v16))
          {
            v11 = 0;
            *a3 = *&v15[4];
            *a4 = v12;
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v11;
}

uint64_t _kernelrpc_mach_port_names(unsigned int a1, void *a2, unsigned int *a3, void *a4, _DWORD *a5)
{
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x1800001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v17.msgh_voucher_port = 0xC8000000000;
  v11 = mach_msg2_internal(&v17, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xC8000000000, (reply_port << 32), 0x54, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v17.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (v17.msgh_id == 3300)
      {
        if ((v17.msgh_bits & 0x80000000) != 0)
        {
          v12 = 4294966996;
          if (v18 == 2 && v17.msgh_size == 76 && !v17.msgh_remote_port && HIBYTE(v18) == 1 && HIBYTE(v19) == 1)
          {
            v14 = v19 >> 2;
            if (v19 >> 2 == v20[3])
            {
              v15 = v20[0] >> 2;
              if (v20[0] >> 2 == v20[4])
              {
                v12 = 0;
                *a2 = *(&v18 + 4);
                *a3 = v14;
                *a4 = *(&v19 + 4);
                *a5 = v15;
                return v12;
              }
            }
          }
        }

        else if (v17.msgh_size == 36)
        {
          v12 = 4294966996;
          if (DWORD2(v18))
          {
            if (v17.msgh_remote_port)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = DWORD2(v18);
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&v17);
      return v12;
    }

    mig_dealloc_reply_port(v17.msgh_local_port);
  }

  return v12;
}

uint64_t _kernelrpc_mach_port_type(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xC8100000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC8100000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 3301)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_rename(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC8200000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC8200000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3302)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_allocate_name(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC8300000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC8300000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3303)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_allocate(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xC8400000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC8400000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 3304)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_destroy(unsigned int a1, unsigned int a2)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = a2;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v8.msgh_voucher_port = 0xC8500000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC8500000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (v8.msgh_id == 3305)
    {
      v5 = 4294966996;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

uint64_t _kernelrpc_mach_port_deallocate(unsigned int a1, unsigned int a2)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = a2;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v8.msgh_voucher_port = 0xC8600000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC8600000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (v8.msgh_id == 3306)
    {
      v5 = 4294966996;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

uint64_t _kernelrpc_mach_port_mod_refs(unsigned int a1, unsigned int a2, int a3, int a4)
{
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2C00001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xC8800000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, a1), 0xC8800000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 3308)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_set_mscount(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC8A00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC8A00000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3310)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_get_set_status(unsigned int a1, int a2, void *a3, _DWORD *a4)
{
  v16 = 0;
  v15 = 0;
  v18 = 0;
  v17 = 0;
  *v14 = NDR_record;
  *&v14[8] = a2;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2400001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0xC8B00000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC8B00000000, (reply_port << 32), 0x40, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 3311)
      {
        if ((v13.msgh_bits & 0x80000000) != 0)
        {
          v9 = 4294966996;
          if (*v14 == 1 && *&v13.msgh_size == 56 && BYTE3(v15) == 1)
          {
            v11 = HIDWORD(v15) >> 2;
            if (HIDWORD(v15) >> 2 == v17)
            {
              v9 = 0;
              *a3 = *&v14[4];
              *a4 = v11;
              return v9;
            }
          }
        }

        else if (v13.msgh_size == 36)
        {
          v9 = 4294966996;
          if (*&v14[8])
          {
            if (v13.msgh_remote_port)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&v14[8];
            }
          }
        }

        else
        {
          v9 = 4294966996;
        }
      }

      else
      {
        v9 = 4294966995;
      }

      mach_msg_destroy(&v13);
      return v9;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v9;
}

uint64_t _kernelrpc_mach_port_move_member(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC8C00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC8C00000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3312)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_insert_right(unsigned int a1, int a2, int a3, unsigned __int8 a4)
{
  v11 = 1;
  v12 = a3;
  v13 = 0;
  v14 = a4 << 16;
  v15 = NDR_record;
  v16 = a2;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3480001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xC8E00000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3480001513, __PAIR64__(reply_port, a1), 0xC8E00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 3314)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v13;
        if (!v13)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_set_seqno(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC9000000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC9000000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3316)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_get_attributes(unsigned int a1, unsigned int a2, mach_msg_size_t a3, void *a4, int *a5)
{
  v18 = NDR_record;
  v19 = a2;
  v20 = a3;
  v8 = *a5;
  if (*a5 >= 0x11)
  {
    v8 = 17;
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v21 = v8;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x2C00001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v17.msgh_voucher_port = 0xC9100000000;
  v10 = mach_msg2_internal(&v17, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, a1), 0xC9100000000, (reply_port << 32), 0x74, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(v17.msgh_local_port);
      return v11;
    }

    if (v17.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (v17.msgh_id == 3317)
    {
      if ((v17.msgh_bits & 0x80000000) == 0)
      {
        if (v17.msgh_size - 109 <= 0xFFFFFFBA)
        {
          if (v19)
          {
            v12 = v17.msgh_remote_port == 0;
          }

          else
          {
            v12 = 0;
          }

          if (v12 && v17.msgh_size == 36)
          {
            v11 = v19;
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_24;
        }

        if (!v17.msgh_remote_port)
        {
          v11 = v19;
          if (v19)
          {
            goto LABEL_24;
          }

          v15 = v20;
          if (v20 <= 0x11 && v20 <= (v17.msgh_size - 40) >> 2 && v17.msgh_size == 4 * v20 + 40)
          {
            v16 = *a5;
            if (v20 <= v16)
            {
              memmove(a4, &v21, 4 * v20);
              v11 = 0;
              *a5 = v15;
            }

            else
            {
              memmove(a4, &v21, 4 * v16);
              *a5 = v15;
              return 4294966989;
            }

            return v11;
          }
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v17);
  }

  return v11;
}

uint64_t _kernelrpc_mach_port_allocate_qos(unsigned int a1, unsigned int a2, uint64_t *a3, _DWORD *a4)
{
  v18 = 0;
  v17 = 0;
  v14 = NDR_record;
  v15 = a2;
  v16 = *a3;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2C00001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0xC9300000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, a1), 0xC9300000000, (reply_port << 32), 0x38, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 3319)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 48)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *a3 = v16;
              *a4 = v17;
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v15 == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_23;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

uint64_t _kernelrpc_mach_port_allocate_full(unsigned int a1, int a2, int a3, uint64_t *a4, int *a5)
{
  v14 = 1;
  v15 = a3;
  *&v16 = 0x13000000000000;
  *(&v16 + 1) = NDR_record;
  v17 = a2;
  v18 = *a4;
  v19 = *a5;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x4080001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0xC9400000000;
  v9 = mach_msg2_internal(&v13, 0x200000003, 0x4080001513, __PAIR64__(reply_port, a1), 0xC9400000000, ((reply_port << 32) | 1), 0x38, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v13.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (v13.msgh_id == 3320)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 48)
          {
            if (!v13.msgh_remote_port)
            {
              v10 = v16;
              if (!v16)
              {
                *a4 = *(&v16 + 4);
                *a5 = HIDWORD(v16);
                return v10;
              }

              goto LABEL_20;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = v16 == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = v16;
            }

            goto LABEL_20;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v13);
      return v10;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v10;
}

uint64_t _kernelrpc_task_set_port_space(unsigned int a1, unsigned int a2)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = a2;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v8.msgh_voucher_port = 0xC9500000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC9500000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (v8.msgh_id == 3321)
    {
      v5 = 4294966996;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

uint64_t _kernelrpc_mach_port_get_srights(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xC9600000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC9600000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 3322)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_space_info(unsigned int a1, uint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  reply_port = mig_get_reply_port();
  *&v19.msgh_bits = 0x1800001513;
  *&v19.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v19.msgh_voucher_port = 0xC9700000000;
  v13 = mach_msg2_internal(&v19, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xC9700000000, (reply_port << 32), 0x6C, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (v19.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (v19.msgh_id == 3323)
      {
        if ((v19.msgh_bits & 0x80000000) != 0)
        {
          v14 = 4294966996;
          if (v20 == 2 && *&v19.msgh_size == 100 && HIBYTE(v20) == 1 && HIBYTE(v21) == 1)
          {
            v16 = v21 / 0x1C;
            if (v21 / 0x1C == DWORD1(v22[2]))
            {
              v17 = LODWORD(v22[0]) / 0x24;
              if (LODWORD(v22[0]) / 0x24 == DWORD2(v22[2]))
              {
                v14 = 0;
                *a2 = *(v22 + 12);
                *(a2 + 16) = *(&v22[1] + 12);
                *a3 = *(&v20 + 4);
                *a4 = v16;
                *a5 = *(&v21 + 4);
                *a6 = v17;
                return v14;
              }
            }
          }
        }

        else if (v19.msgh_size == 36)
        {
          v14 = 4294966996;
          if (DWORD2(v20))
          {
            if (v19.msgh_remote_port)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = DWORD2(v20);
            }
          }
        }

        else
        {
          v14 = 4294966996;
        }
      }

      else
      {
        v14 = 4294966995;
      }

      mach_msg_destroy(&v19);
      return v14;
    }

    mig_dealloc_reply_port(v19.msgh_local_port);
  }

  return v14;
}

uint64_t _kernelrpc_mach_port_dnrequest_info(unsigned int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v18 = 0;
  v17 = 0;
  v15 = NDR_record;
  v16 = a2;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2400001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0xC9800000000;
  v8 = mach_msg2_internal(&v14, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC9800000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v9;
    }

    if (v14.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v14.msgh_id == 3324)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 44)
        {
          if (!v14.msgh_remote_port)
          {
            v9 = v16;
            if (!v16)
            {
              v13 = HIDWORD(v17);
              *a3 = v17;
              *a4 = v13;
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v16 == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v16;
          }

          goto LABEL_23;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v9;
}

uint64_t _kernelrpc_mach_port_kernel_object(unsigned int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v18 = 0;
  v17 = 0;
  v15 = NDR_record;
  v16 = a2;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2400001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0xC9900000000;
  v8 = mach_msg2_internal(&v14, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xC9900000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v9;
    }

    if (v14.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v14.msgh_id == 3325)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 44)
        {
          if (!v14.msgh_remote_port)
          {
            v9 = v16;
            if (!v16)
            {
              v13 = HIDWORD(v17);
              *a3 = v17;
              *a4 = v13;
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v16 == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v16;
          }

          goto LABEL_23;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v9;
}

uint64_t _kernelrpc_mach_port_insert_member(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC9A00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC9A00000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3326)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_extract_member(unsigned int a1, unsigned int a2, int a3)
{
  v12 = a3;
  v13 = 0;
  v10 = NDR_record;
  v11 = a2;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xC9B00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0xC9B00000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3327)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_construct(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = 1;
  v14 = a2;
  v15 = 0x1801000100;
  v16 = NDR_record;
  v17 = a3;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x3C80001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xC9F00000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, a1), 0xC9F00000000, ((reply_port << 32) | 1), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v8;
    }

    if (v12.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v12.msgh_id == 3331)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 40)
        {
          if (!v12.msgh_remote_port)
          {
            v8 = HIDWORD(v14);
            if (!HIDWORD(v14))
            {
              *a4 = v15;
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = HIDWORD(v14) == 0;
          }

          if (v10)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = HIDWORD(v14);
          }

          goto LABEL_23;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v8;
}

uint64_t _kernelrpc_mach_port_destruct(unsigned int a1, unsigned int a2, int a3, uint64_t a4)
{
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3000001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xCA000000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0xCA000000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 3332)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_guard(unsigned int a1, unsigned int a2, uint64_t a3, int a4)
{
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3000001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xCA100000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0xCA100000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 3333)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_unguard(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v10 = NDR_record;
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2C00001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xCA200000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, a1), 0xCA200000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 3334)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_space_basic_info(unsigned int a1, uint64_t a2)
{
  memset(v11, 0, 44);
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x1800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xCA300000000;
  v5 = mach_msg2_internal(&v10, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xCA300000000, (reply_port << 32), 0x44, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v6;
    }

    if (v10.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v10.msgh_id == 3335)
    {
      if ((v10.msgh_bits & 0x80000000) == 0)
      {
        if (v10.msgh_size == 60)
        {
          if (!v10.msgh_remote_port)
          {
            v6 = DWORD2(v11[0]);
            if (!DWORD2(v11[0]))
            {
              *a2 = *(v11 + 12);
              *(a2 + 16) = *(&v11[1] + 12);
              return v6;
            }

            goto LABEL_23;
          }
        }

        else if (v10.msgh_size == 36)
        {
          if (v10.msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = DWORD2(v11[0]) == 0;
          }

          if (v8)
          {
            v6 = 4294966996;
          }

          else
          {
            v6 = DWORD2(v11[0]);
          }

          goto LABEL_23;
        }
      }

      v6 = 4294966996;
    }

    else
    {
      v6 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v10);
  }

  return v6;
}

uint64_t _kernelrpc_mach_port_special_reply_port_reset_link(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xCA400000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xCA400000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 3336)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_guard_with_flags(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xCA500000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, a1), 0xCA500000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 3337)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_swap_guard(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v11 = NDR_record;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xCA600000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, a1), 0xCA600000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 3338)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

uint64_t _kernelrpc_mach_port_kobject_description(unsigned int a1, unsigned int a2, _DWORD *a3, void *a4, _BYTE *a5)
{
  memset(v22, 0, 460);
  v21 = 0u;
  v19 = NDR_record;
  v20 = a2;
  reply_port = mig_get_reply_port();
  *&v18.msgh_bits = 0x2400001513;
  *&v18.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v18.msgh_voucher_port = 0xCA700000000;
  v10 = mach_msg2_internal(&v18, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xCA700000000, (reply_port << 32), 0x240, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v18.msgh_local_port);
    return v11;
  }

  if (v18.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_22:
    mach_msg_destroy(&v18);
    return v11;
  }

  if (v18.msgh_id != 3339)
  {
    v11 = 4294966995;
    goto LABEL_22;
  }

  if ((v18.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (v18.msgh_size - 569 <= 0xFFFFFDFE)
  {
    if (v20)
    {
      v12 = v18.msgh_remote_port == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12 && v18.msgh_size == 36)
    {
      v11 = v20;
    }

    else
    {
      v11 = 4294966996;
    }

    goto LABEL_22;
  }

  if (v18.msgh_remote_port)
  {
LABEL_21:
    v11 = 4294966996;
    goto LABEL_22;
  }

  v11 = v20;
  if (v20)
  {
    goto LABEL_22;
  }

  v11 = 4294966996;
  if (LODWORD(v22[0]) > 0x200 || v18.msgh_size - 56 < LODWORD(v22[0]) || v18.msgh_size != ((LOWORD(v22[0]) + 3) & 0x7FC) + 56)
  {
    goto LABEL_22;
  }

  *a3 = v21;
  *a4 = *(&v21 + 4);
  v15 = v22 + 4;
  v16 = 511;
  while (1)
  {
    v17 = *v15;
    *a5 = v17;
    if (!v17)
    {
      break;
    }

    ++a5;
    ++v15;
    if (!--v16)
    {
      v11 = 0;
      *a5 = 0;
      return v11;
    }
  }

  return 0;
}

uint64_t _kernelrpc_mach_port_get_service_port_info(unsigned int a1, unsigned int a2, _OWORD *a3)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
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
  v22 = 0u;
  v21 = 0u;
  v19 = NDR_record;
  v20 = a2;
  reply_port = mig_get_reply_port();
  *&v18.msgh_bits = 0x2400001513;
  *&v18.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v18.msgh_voucher_port = 0xCA900000000;
  v6 = mach_msg2_internal(&v18, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xCA900000000, (reply_port << 32), 0x12C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v18.msgh_id == 71)
      {
        v7 = 4294966988;
      }

      else if (v18.msgh_id == 3341)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 292)
          {
            if (!v18.msgh_remote_port)
            {
              v7 = v20;
              if (!v20)
              {
                v10 = v34;
                a3[12] = v33;
                a3[13] = v10;
                v11 = v36;
                a3[14] = v35;
                a3[15] = v11;
                v12 = v30;
                a3[8] = v29;
                a3[9] = v12;
                v13 = v32;
                a3[10] = v31;
                a3[11] = v13;
                v14 = v26;
                a3[4] = v25;
                a3[5] = v14;
                v15 = v28;
                a3[6] = v27;
                a3[7] = v15;
                v16 = v22;
                *a3 = v21;
                a3[1] = v16;
                v17 = v24;
                a3[2] = v23;
                a3[3] = v17;
                return v7;
              }

              goto LABEL_20;
            }
          }

          else if (v18.msgh_size == 36)
          {
            if (v18.msgh_remote_port)
            {
              v8 = 1;
            }

            else
            {
              v8 = v20 == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = v20;
            }

            goto LABEL_20;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v18);
      return v7;
    }

    mig_dealloc_reply_port(v18.msgh_local_port);
  }

  return v7;
}

uint64_t _kernelrpc_mach_vm_allocate(unsigned int a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *a2;
  v14 = NDR_record;
  *&v15 = v6;
  *(&v15 + 1) = a3;
  v16 = a4;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x3400001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0x12C000000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x3400001513, __PAIR64__(reply_port, a1), 0x12C000000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 4900)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 44)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *a2 = *(&v15 + 4);
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v15 == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_23;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

uint64_t _kernelrpc_mach_vm_deallocate(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v10 = NDR_record;
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3000001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0x12C100000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0x12C100000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (v9.msgh_id == 4901)
    {
      v6 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

uint64_t _kernelrpc_mach_vm_protect(unsigned int a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v12 = NDR_record;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x3800001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0x12C200000000;
  v7 = mach_msg2_internal(&v11, 0x200000003, 0x3800001513, __PAIR64__(reply_port, a1), 0x12C200000000, (reply_port << 32), 0x2C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 4902)
    {
      v8 = 4294966996;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v8 = v13;
        if (!v13)
        {
          return v8;
        }
      }
    }

    else
    {
      v8 = 4294966995;
    }

    mach_msg_destroy(&v11);
  }

  return v8;
}

kern_return_t mach_vm_inherit(vm_map_t target_task, mach_vm_address_t address, mach_vm_size_t size, vm_inherit_t new_inheritance)
{
  v11 = NDR_record;
  v12 = address;
  v13 = size;
  v14 = new_inheritance;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12C300000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12C300000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4903)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t mach_vm_read_list(vm_map_read_t target_task, mach_vm_read_entry_t data_list, natural_t count)
{
  v13 = NDR_record;
  memmove(&v14, data_list, 0x1000uLL);
  v15[1023] = count;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x102400001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v12.msgh_voucher_port = 0x12C500000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x102400001513, __PAIR64__(reply_port, target_task), 0x12C500000000, (reply_port << 32), 0x102C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v8;
    }

    if (v12.msgh_id == 71)
    {
      v8 = -308;
    }

    else if (v12.msgh_id == 4905)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 4132)
        {
          if (!v12.msgh_remote_port)
          {
            v8 = v14;
            if (!v14)
            {
              memmove(data_list, v15, 0x1000uLL);
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v8 = -300;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_23;
        }
      }

      v8 = -300;
    }

    else
    {
      v8 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v8;
}

kern_return_t mach_vm_write(vm_map_t target_task, mach_vm_address_t address, vm_offset_t data, mach_msg_type_number_t dataCnt)
{
  v10 = 1;
  v11 = data;
  v12 = 16777472;
  v13 = dataCnt;
  v14 = NDR_record;
  v15 = address;
  v16 = dataCnt;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x4080001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v9.msgh_voucher_port = 0x12C600000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x4080001513, __PAIR64__(reply_port, target_task), 0x12C600000000, ((reply_port << 32) | 1), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v7;
    }

    if (v9.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v9.msgh_id == 4906)
    {
      v7 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v7 = HIDWORD(v11);
        if (!HIDWORD(v11))
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

kern_return_t mach_vm_copy(vm_map_t target_task, mach_vm_address_t source_address, mach_vm_size_t size, mach_vm_address_t dest_address)
{
  v11 = NDR_record;
  v12 = source_address;
  v13 = size;
  v14 = dest_address;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12C700000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3800001513, __PAIR64__(reply_port, target_task), 0x12C700000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4907)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t mach_vm_msync(vm_map_t target_task, mach_vm_address_t address, mach_vm_size_t size, vm_sync_t sync_flags)
{
  v11 = NDR_record;
  v12 = address;
  v13 = size;
  v14 = sync_flags;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12C900000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12C900000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4909)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t mach_vm_behavior_set(vm_map_t target_task, mach_vm_address_t address, mach_vm_size_t size, vm_behavior_t new_behavior)
{
  v11 = NDR_record;
  v12 = address;
  v13 = size;
  v14 = new_behavior;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12CA00000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12CA00000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4910)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t mach_vm_machine_attribute(vm_map_t target_task, mach_vm_address_t address, mach_vm_size_t size, vm_machine_attribute_t attribute, vm_machine_attribute_val_t *value)
{
  v15 = NDR_record;
  v16 = address;
  v17 = size;
  v7 = *value;
  v18 = attribute;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x3800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v14.msgh_voucher_port = 0x12CC00000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x3800001513, __PAIR64__(reply_port, target_task), 0x12CC00000000, (reply_port << 32), 0x30, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v10;
    }

    if (v14.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v14.msgh_id == 4912)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v10 = v16;
            if (!v16)
            {
              *value = HIDWORD(v16);
              return v10;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = v16 == 0;
          }

          if (v12)
          {
            v10 = -300;
          }

          else
          {
            v10 = v16;
          }

          goto LABEL_23;
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v10;
}

uint64_t _kernelrpc_mach_vm_remap(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, _DWORD *a9, _DWORD *a10, int a11)
{
  v21 = 1;
  v22 = a6;
  *&v23 = 0x13000000000000;
  v13 = *a2;
  *(&v23 + 1) = NDR_record;
  v24 = v13;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a7;
  v29 = a8;
  v30 = a11;
  reply_port = mig_get_reply_port();
  *&v20.msgh_bits = 0x5C80001513;
  *&v20.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v20.msgh_voucher_port = 0x12CD00000000;
  v15 = mach_msg2_internal(&v20, 0x200000003, 0x5C80001513, __PAIR64__(reply_port, a1), 0x12CD00000000, ((reply_port << 32) | 1), 0x3C, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v20.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (v20.msgh_id == 4913)
      {
        if ((v20.msgh_bits & 0x80000000) == 0)
        {
          if (v20.msgh_size == 52)
          {
            if (!v20.msgh_remote_port)
            {
              v16 = v23;
              if (!v23)
              {
                *a2 = *(&v23 + 4);
                v19 = v24;
                *a9 = HIDWORD(v23);
                *a10 = v19;
                return v16;
              }

              goto LABEL_20;
            }
          }

          else if (v20.msgh_size == 36)
          {
            if (v20.msgh_remote_port)
            {
              v17 = 1;
            }

            else
            {
              v17 = v23 == 0;
            }

            if (v17)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = v23;
            }

            goto LABEL_20;
          }
        }

        v16 = 4294966996;
      }

      else
      {
        v16 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v20);
      return v16;
    }

    mig_dealloc_reply_port(v20.msgh_local_port);
  }

  return v16;
}

kern_return_t mach_vm_page_query(vm_map_read_t target_map, mach_vm_offset_t offset, integer_t *disposition, integer_t *ref_count)
{
  v18 = 0;
  v16 = offset;
  v17 = 0;
  v15 = NDR_record;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, target_map);
  *&v14.msgh_voucher_port = 0x12CE00000000;
  v8 = mach_msg2_internal(&v14, 0x200000003, 0x2800001513, __PAIR64__(reply_port, target_map), 0x12CE00000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v9;
    }

    if (v14.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v14.msgh_id == 4914)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 44)
        {
          if (!v14.msgh_remote_port)
          {
            v9 = v16;
            if (!v16)
            {
              v13 = v17;
              *disposition = HIDWORD(v16);
              *ref_count = v13;
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v16 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = v16;
          }

          goto LABEL_23;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v9;
}

kern_return_t mach_make_memory_entry(vm_map_t target_task, vm_size_t *size, vm_offset_t offset, vm_prot_t permission, mem_entry_name_port_t *object_handle, mem_entry_name_port_t parent_entry)
{
  v15 = 1;
  v16 = parent_entry;
  v17 = 0x13000000000000;
  v9 = *size;
  v18 = NDR_record;
  v19 = v9;
  v20 = offset;
  v21 = permission;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x4480001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v14.msgh_voucher_port = 0x12D100000000;
  v11 = mach_msg2_internal(&v14, 0x200000003, 0x4480001513, __PAIR64__(reply_port, target_task), 0x12D100000000, ((reply_port << 32) | 1), 0x40, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v14.msgh_id == 71)
      {
        v12 = -308;
      }

      else if (v14.msgh_id == 4917)
      {
        if ((v14.msgh_bits & 0x80000000) == 0)
        {
          if (v14.msgh_size == 36)
          {
            v12 = -300;
            if (v17)
            {
              if (v14.msgh_remote_port)
              {
                v12 = -300;
              }

              else
              {
                v12 = v17;
              }
            }
          }

          else
          {
            v12 = -300;
          }

          goto LABEL_21;
        }

        v12 = -300;
        if (v15 == 1 && v14.msgh_size == 56 && !v14.msgh_remote_port && HIWORD(v17) << 16 == 1114112)
        {
          v12 = 0;
          *size = v19;
          *object_handle = v16;
          return v12;
        }
      }

      else
      {
        v12 = -301;
      }

LABEL_21:
      mach_msg_destroy(&v14);
      return v12;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v12;
}

kern_return_t mach_vm_page_info(vm_map_read_t target_task, mach_vm_address_t address, vm_page_info_flavor_t flavor, vm_page_info_t info, mach_msg_type_number_t *infoCnt)
{
  v18 = NDR_record;
  v19 = address;
  v8 = *infoCnt;
  if (*infoCnt >= 0x20)
  {
    v8 = 32;
  }

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20[0] = flavor;
  v20[1] = v8;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x3000001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v17.msgh_voucher_port = 0x12D300000000;
  v10 = mach_msg2_internal(&v17, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target_task), 0x12D300000000, (reply_port << 32), 0xB0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(v17.msgh_local_port);
      return v11;
    }

    if (v17.msgh_id == 71)
    {
      v11 = -308;
    }

    else if (v17.msgh_id == 4919)
    {
      if ((v17.msgh_bits & 0x80000000) == 0)
      {
        if (v17.msgh_size - 169 <= 0xFFFFFF7E)
        {
          if (v19)
          {
            v12 = v17.msgh_remote_port == 0;
          }

          else
          {
            v12 = 0;
          }

          if (v12 && v17.msgh_size == 36)
          {
            v11 = v19;
          }

          else
          {
            v11 = -300;
          }

          goto LABEL_24;
        }

        if (!v17.msgh_remote_port)
        {
          v11 = v19;
          if (v19)
          {
            goto LABEL_24;
          }

          v15 = HIDWORD(v19);
          if (HIDWORD(v19) <= 0x20 && HIDWORD(v19) <= (v17.msgh_size - 40) >> 2 && v17.msgh_size == 4 * HIDWORD(v19) + 40)
          {
            v16 = *infoCnt;
            if (HIDWORD(v19) <= v16)
            {
              memmove(info, v20, 4 * HIDWORD(v19));
              v11 = 0;
              *infoCnt = v15;
            }

            else
            {
              memmove(info, v20, 4 * v16);
              *infoCnt = v15;
              return -307;
            }

            return v11;
          }
        }
      }

      v11 = -300;
    }

    else
    {
      v11 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v17);
  }

  return v11;
}

kern_return_t mach_vm_page_range_query(vm_map_read_t target_map, mach_vm_offset_t address, mach_vm_size_t size, mach_vm_address_t dispositions, mach_vm_size_t *dispositions_count)
{
  v14 = NDR_record;
  *&v15 = address;
  *(&v15 + 1) = size;
  v16 = dispositions;
  v17 = *dispositions_count;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x4000001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, target_map);
  *&v13.msgh_voucher_port = 0x12D400000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x4000001513, __PAIR64__(reply_port, target_map), 0x12D400000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v13.msgh_id == 4920)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 44)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *dispositions_count = *(&v15 + 4);
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v15 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_23;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

uint64_t mach_vm_deferred_reclamation_buffer_allocate(unsigned int a1, void *a2, void *a3, unsigned int a4, int a5)
{
  *&v17[4] = 0;
  *&v17[12] = 0;
  v18 = 0;
  v15 = NDR_record;
  v16 = a4;
  *v17 = a5;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0x12D600000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0x12D600000000, (reply_port << 32), 0x3C, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v10;
    }

    if (v14.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v14.msgh_id == 4922)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 52)
        {
          if (!v14.msgh_remote_port)
          {
            v10 = v16;
            if (!v16)
            {
              *a2 = *v17;
              *a3 = *&v17[8];
              return v10;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = v16 == 0;
          }

          if (v12)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = v16;
          }

          goto LABEL_23;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v10;
}

uint64_t mach_vm_deferred_reclamation_buffer_flush(unsigned int a1, unsigned int a2, void *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0x12D700000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0x12D700000000, (reply_port << 32), 0x34, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 4923)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 44)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

uint64_t mach_vm_deferred_reclamation_buffer_resize(unsigned int a1, unsigned int a2, void *a3)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = a2;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0x12DA00000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0x12DA00000000, (reply_port << 32), 0x34, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v11.msgh_id == 4926)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 44)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *a3 = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

uint64_t _kernelrpc_mach_vm_update_pointers_with_remote_tags(unsigned int a1, const void *a2, unsigned int a3, void *a4, int *a5)
{
  memset(v21, 0, 480);
  memset(&reply_port, 0, sizeof(reply_port));
  v20 = NDR_record;
  if (a3 > 0x400)
  {
    return 4294966989;
  }

  v10 = 8 * a3;
  memmove(v21 + 4, a2, v10);
  LODWORD(v21[0]) = a3;
  v11 = *a5;
  if (*a5 >= 0x400)
  {
    v11 = 1024;
  }

  *(&reply_port + v10 + 36) = v11;
  v12 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v10 + 40;
  *&reply_port.msgh_remote_port = __PAIR64__(v12, a1);
  *&reply_port.msgh_voucher_port = 0x12DB00000000;
  v13 = mach_msg2_internal(&reply_port, 0x200000003, (((((v10 + 40) >> 3) & 0xFFFFFFF) << 35) | 0x1513), __PAIR64__(v12, a1), 0x12DB00000000, (v12 << 32), 0x2030, 0);
  v5 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (v13)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (reply_port.msgh_id == 4927)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size - 8233 <= 0xFFFFDFFE)
        {
          if (LODWORD(v21[0]))
          {
            v14 = reply_port.msgh_remote_port == 0;
          }

          else
          {
            v14 = 0;
          }

          if (v14 && reply_port.msgh_size == 36)
          {
            v5 = LODWORD(v21[0]);
          }

          else
          {
            v5 = 4294966996;
          }

          goto LABEL_26;
        }

        if (!reply_port.msgh_remote_port)
        {
          v5 = LODWORD(v21[0]);
          if (LODWORD(v21[0]))
          {
            goto LABEL_26;
          }

          v17 = DWORD1(v21[0]);
          if (DWORD1(v21[0]) <= 0x400 && DWORD1(v21[0]) <= (reply_port.msgh_size - 40) >> 3 && reply_port.msgh_size == 8 * DWORD1(v21[0]) + 40)
          {
            v18 = *a5;
            if (DWORD1(v21[0]) <= v18)
            {
              memmove(a4, v21 + 8, 8 * DWORD1(v21[0]));
              v5 = 0;
              *a5 = v17;
              return v5;
            }

            memmove(a4, v21 + 8, 8 * v18);
            *a5 = v17;
            return 4294966989;
          }
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
  }

  return v5;
}

uint64_t mach_vm_deferred_reclamation_buffer_query(unsigned int a1, void *a2, void *a3)
{
  v13 = 0;
  memset(&v12[24], 0, 32);
  reply_port = mig_get_reply_port();
  *v12 = 0x1800001513;
  *&v12[8] = __PAIR64__(reply_port, a1);
  *&v12[16] = 0x12DC00000000;
  v7 = mach_msg2_internal(v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0x12DC00000000, (reply_port << 32), 0x3C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&v12[12]);
      return v8;
    }

    if (*&v12[20] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&v12[20] == 4928)
    {
      if ((*v12 & 0x80000000) == 0)
      {
        if (*&v12[4] == 52)
        {
          if (!*&v12[8])
          {
            v8 = *&v12[32];
            if (!*&v12[32])
            {
              *a2 = *&v12[36];
              *a3 = *&v12[44];
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (*&v12[4] == 36)
        {
          if (*&v12[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&v12[32] == 0;
          }

          if (v10)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&v12[32];
          }

          goto LABEL_23;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(v12);
  }

  return v8;
}

uint64_t mach_notify_port_deleted(mach_port_t a1, int a2)
{
  v5 = NDR_record;
  v6 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 65;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  return mach_msg_overwrite(&msg, 1, 0x24u, 0, 0, 0, 0, 0, v3);
}

uint64_t mach_notify_port_destroyed(int a1, int a2)
{
  v6 = 0;
  *&msg[4] = 0u;
  v5 = a2;
  v7 = 0x100000;
  *msg = -2147483630;
  *&msg[8] = a1;
  *&msg[20] = 0x100000045;
  return mach_msg_overwrite(msg, 1, 0x28u, 0, 0, 0, 0, 0, v3);
}

uint64_t mach_notify_no_senders(mach_port_t a1, int a2)
{
  v5 = NDR_record;
  v6 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 70;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  return mach_msg_overwrite(&msg, 1, 0x24u, 0, 0, 0, 0, 0, v3);
}

uint64_t mach_notify_send_once(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 18;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x4700000000;
  return mach_msg_overwrite(&msg, 1, 0x18u, 0, 0, 0, 0, 0, v2);
}

uint64_t mach_notify_dead_name(mach_port_t a1, int a2)
{
  v5 = NDR_record;
  v6 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 72;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  return mach_msg_overwrite(&msg, 1, 0x24u, 0, 0, 0, 0, 0, v3);
}

kern_return_t processor_set_statistics(processor_set_name_t pset, processor_set_flavor_t flavor, processor_set_info_t info_out, mach_msg_type_number_t *info_outCnt)
{
  v17 = NDR_record;
  v7 = *info_outCnt;
  v20[1] = 0;
  v20[2] = 0;
  if (v7 >= 5)
  {
    v7 = 5;
  }

  v20[0] = 0;
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, pset);
  *&v16.msgh_voucher_port = 0xFA000000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, pset), 0xFA000000000, (reply_port << 32), 0x44, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 4100)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 61 <= 0xFFFFFFEA)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 5 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *info_outCnt;
            if (v19 <= v15)
            {
              memmove(info_out, v20, 4 * v19);
              v10 = 0;
              *info_outCnt = v14;
            }

            else
            {
              memmove(info_out, v20, 4 * v15);
              *info_outCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t processor_set_destroy(processor_set_t set)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, set);
  *&v7.msgh_voucher_port = 0xFA100000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, set), 0xFA100000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 4101)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t processor_set_max_priority(processor_set_t processor_set, int max_priority, BOOLean_t change_threads)
{
  v12 = change_threads;
  v13 = 0;
  v10 = NDR_record;
  v11 = max_priority;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, processor_set);
  *&v9.msgh_voucher_port = 0xFA200000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, processor_set), 0xFA200000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 4102)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t processor_set_policy_enable(processor_set_t processor_set, int policy)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = policy;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, processor_set);
  *&v8.msgh_voucher_port = 0xFA300000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, processor_set), 0xFA300000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 4103)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t processor_set_policy_disable(processor_set_t processor_set, int policy, BOOLean_t change_threads)
{
  v12 = change_threads;
  v13 = 0;
  v10 = NDR_record;
  v11 = policy;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, processor_set);
  *&v9.msgh_voucher_port = 0xFA400000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2800001513, __PAIR64__(reply_port, processor_set), 0xFA400000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 4104)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t processor_set_threads(processor_set_t processor_set, thread_act_array_t *thread_list, mach_msg_type_number_t *thread_listCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, processor_set);
  *&v12.msgh_voucher_port = 0xFA600000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, processor_set), 0xFA600000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 4106)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIWORD(v13) == 529)
          {
            v10 = v14;
            if (v14 == HIDWORD(v14))
            {
              v8 = 0;
              *thread_list = *(&v13 + 4);
              *thread_listCnt = v10;
              return v8;
            }
          }
        }

        else if (v12.msgh_size == 36)
        {
          v8 = -300;
          if (DWORD2(v13))
          {
            if (v12.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = DWORD2(v13);
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v8;
}

kern_return_t processor_set_policy_control(processor_set_t pset, processor_set_flavor_t flavor, processor_set_info_t policy_info, mach_msg_type_number_t policy_infoCnt, BOOLean_t change)
{
  memset(v15, 0, sizeof(v15));
  memset(&reply_port, 0, sizeof(reply_port));
  v14 = NDR_record;
  LODWORD(v15[0]) = flavor;
  if (policy_infoCnt > 5)
  {
    return -307;
  }

  v9 = 4 * policy_infoCnt;
  memmove(v15 + 8, policy_info, v9);
  DWORD1(v15[0]) = policy_infoCnt;
  *(&reply_port + v9 + 40) = change;
  v10 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v9 + 44;
  *&reply_port.msgh_remote_port = __PAIR64__(v10, pset);
  *&reply_port.msgh_voucher_port = 0xFA700000000;
  v11 = mach_msg2_internal(&reply_port, 0x200000003, (((((v9 + 44) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(v10, pset), 0xFA700000000, (v10 << 32), 0x2C, 0);
  v5 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (reply_port.msgh_id == 4107)
    {
      v5 = -300;
      if ((reply_port.msgh_bits & 0x80000000) == 0 && reply_port.msgh_size == 36 && !reply_port.msgh_remote_port)
      {
        v5 = v15[0];
        if (!LODWORD(v15[0]))
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&reply_port);
  }

  return v5;
}

kern_return_t processor_set_stack_usage(processor_set_t pset, unsigned int *ltotal, vm_size_t *space, vm_size_t *resident, vm_size_t *maxusage, vm_offset_t *maxstack)
{
  v24 = 0;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  reply_port = mig_get_reply_port();
  *&v20.msgh_bits = 0x1800001513;
  *&v20.msgh_remote_port = __PAIR64__(reply_port, pset);
  *&v20.msgh_voucher_port = 0xFA800000000;
  v13 = mach_msg2_internal(&v20, 0x200000003, 0x1800001513, __PAIR64__(reply_port, pset), 0xFA800000000, (reply_port << 32), 0x50, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (v13)
    {
      mig_dealloc_reply_port(v20.msgh_local_port);
      return v14;
    }

    if (v20.msgh_id == 71)
    {
      v14 = -308;
    }

    else if (v20.msgh_id == 4108)
    {
      if ((v20.msgh_bits & 0x80000000) == 0)
      {
        if (v20.msgh_size == 72)
        {
          if (!v20.msgh_remote_port)
          {
            v14 = DWORD2(v21);
            if (!DWORD2(v21))
            {
              *ltotal = HIDWORD(v21);
              v18 = *(&v22 + 1);
              *space = v22;
              *resident = v18;
              v19 = v23;
              *maxusage = v23;
              *maxstack = *(&v19 + 1);
              return v14;
            }

            goto LABEL_23;
          }
        }

        else if (v20.msgh_size == 36)
        {
          if (v20.msgh_remote_port)
          {
            v16 = 1;
          }

          else
          {
            v16 = DWORD2(v21) == 0;
          }

          if (v16)
          {
            v14 = -300;
          }

          else
          {
            v14 = DWORD2(v21);
          }

          goto LABEL_23;
        }
      }

      v14 = -300;
    }

    else
    {
      v14 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v20);
  }

  return v14;
}

kern_return_t processor_set_info(processor_set_name_t set_name, int flavor, host_t *host, processor_set_info_t info_out, mach_msg_type_number_t *info_outCnt)
{
  v18 = NDR_record;
  v9 = *info_outCnt;
  if (*info_outCnt >= 5)
  {
    v9 = 5;
  }

  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v19 = flavor;
  v20 = v9;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x2800001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, set_name);
  *&v17.msgh_voucher_port = 0xFA900000000;
  v11 = mach_msg2_internal(&v17, 0x200000003, 0x2800001513, __PAIR64__(reply_port, set_name), 0xFA900000000, (reply_port << 32), 0x50, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(v17.msgh_local_port);
      return v12;
    }

    if (v17.msgh_id == 71)
    {
      v12 = -308;
    }

    else if (v17.msgh_id == 4109)
    {
      if ((v17.msgh_bits & 0x80000000) == 0)
      {
        if (v17.msgh_size == 36)
        {
          v12 = -300;
          if (v19)
          {
            if (v17.msgh_remote_port)
            {
              v12 = -300;
            }

            else
            {
              v12 = v19;
            }
          }
        }

        else
        {
          v12 = -300;
        }

        goto LABEL_27;
      }

      v12 = -300;
      if (*&v18.mig_vers == 1 && v17.msgh_size - 52 <= 0x14 && !v17.msgh_remote_port && HIWORD(v20) << 16 == 1114112)
      {
        v13 = DWORD2(v21[0]);
        if (DWORD2(v21[0]) <= 5 && (v17.msgh_size - 52) >> 2 >= DWORD2(v21[0]))
        {
          v14 = 4 * DWORD2(v21[0]);
          if (v17.msgh_size == 4 * DWORD2(v21[0]) + 52)
          {
            *host = *&v18.int_rep;
            v15 = *info_outCnt;
            if (v13 <= v15)
            {
              memmove(info_out, v21 + 12, v14);
              v12 = 0;
              *info_outCnt = v13;
            }

            else
            {
              memmove(info_out, v21 + 12, 4 * v15);
              *info_outCnt = v13;
              return -307;
            }

            return v12;
          }
        }
      }
    }

    else
    {
      v12 = -301;
    }

LABEL_27:
    mach_msg_destroy(&v17);
  }

  return v12;
}

kern_return_t processor_set_tasks_with_flavor(processor_set_t processor_set, mach_task_flavor_t flavor, task_array_t *task_list, mach_msg_type_number_t *task_listCnt)
{
  v16 = 0;
  v15 = 0;
  v18 = 0;
  v17 = 0;
  *v14 = NDR_record;
  *&v14[8] = flavor;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2400001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, processor_set);
  *&v13.msgh_voucher_port = 0xFAA00000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2400001513, __PAIR64__(reply_port, processor_set), 0xFAA00000000, (reply_port << 32), 0x40, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = -308;
      }

      else if (v13.msgh_id == 4110)
      {
        if ((v13.msgh_bits & 0x80000000) != 0)
        {
          v9 = -300;
          if (*v14 == 1 && *&v13.msgh_size == 56 && WORD1(v15) == 529)
          {
            v11 = HIDWORD(v15);
            if (HIDWORD(v15) == v17)
            {
              v9 = 0;
              *task_list = *&v14[4];
              *task_listCnt = v11;
              return v9;
            }
          }
        }

        else if (v13.msgh_size == 36)
        {
          v9 = -300;
          if (*&v14[8])
          {
            if (v13.msgh_remote_port)
            {
              v9 = -300;
            }

            else
            {
              v9 = *&v14[8];
            }
          }
        }

        else
        {
          v9 = -300;
        }
      }

      else
      {
        v9 = -301;
      }

      mach_msg_destroy(&v13);
      return v9;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v9;
}

kern_return_t processor_start(processor_t processor)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, processor);
  *&v7.msgh_voucher_port = 0xBB800000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, processor), 0xBB800000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3100)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t processor_exit(processor_t processor)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, processor);
  *&v7.msgh_voucher_port = 0xBB900000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, processor), 0xBB900000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3101)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t processor_info(processor_t processor, processor_flavor_t flavor, host_t *host, processor_info_t processor_info_out, mach_msg_type_number_t *processor_info_outCnt)
{
  v18 = NDR_record;
  v9 = *processor_info_outCnt;
  if (*processor_info_outCnt >= 0x14)
  {
    v9 = 20;
  }

  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v19 = flavor;
  v20 = v9;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x2800001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, processor);
  *&v17.msgh_voucher_port = 0xBBA00000000;
  v11 = mach_msg2_internal(&v17, 0x200000003, 0x2800001513, __PAIR64__(reply_port, processor), 0xBBA00000000, (reply_port << 32), 0x8C, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(v17.msgh_local_port);
      return v12;
    }

    if (v17.msgh_id == 71)
    {
      v12 = -308;
    }

    else if (v17.msgh_id == 3102)
    {
      if ((v17.msgh_bits & 0x80000000) == 0)
      {
        if (v17.msgh_size == 36)
        {
          v12 = -300;
          if (v19)
          {
            if (v17.msgh_remote_port)
            {
              v12 = -300;
            }

            else
            {
              v12 = v19;
            }
          }
        }

        else
        {
          v12 = -300;
        }

        goto LABEL_27;
      }

      v12 = -300;
      if (*&v18.mig_vers == 1 && v17.msgh_size - 52 <= 0x50 && !v17.msgh_remote_port && HIWORD(v20) << 16 == 1114112)
      {
        v13 = DWORD2(v21[0]);
        if (DWORD2(v21[0]) <= 0x14 && (v17.msgh_size - 52) >> 2 >= DWORD2(v21[0]))
        {
          v14 = 4 * DWORD2(v21[0]);
          if (v17.msgh_size == 4 * DWORD2(v21[0]) + 52)
          {
            *host = *&v18.int_rep;
            v15 = *processor_info_outCnt;
            if (v13 <= v15)
            {
              memmove(processor_info_out, v21 + 12, v14);
              v12 = 0;
              *processor_info_outCnt = v13;
            }

            else
            {
              memmove(processor_info_out, v21 + 12, 4 * v15);
              *processor_info_outCnt = v13;
              return -307;
            }

            return v12;
          }
        }
      }
    }

    else
    {
      v12 = -301;
    }

LABEL_27:
    mach_msg_destroy(&v17);
  }

  return v12;
}

kern_return_t processor_control(processor_t processor, processor_info_t processor_cmd, mach_msg_type_number_t processor_cmdCnt)
{
  v11 = NDR_record;
  if (processor_cmdCnt > 0x14)
  {
    return -307;
  }

  memset(v13, 0, sizeof(v13));
  v6 = 4 * processor_cmdCnt;
  memmove(v13, processor_cmd, 4 * processor_cmdCnt);
  v12 = processor_cmdCnt;
  reply_port = mig_get_reply_port();
  v10.msgh_bits = 5395;
  v10.msgh_size = v6 + 36;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, processor);
  *&v10.msgh_voucher_port = 0xBBB00000000;
  v8 = mach_msg2_internal(&v10, 0x200000003, (((((v6 + 36) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, processor), 0xBBB00000000, (reply_port << 32), 0x2C, 0);
  v3 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v3;
    }

    if (v10.msgh_id == 71)
    {
      v3 = -308;
    }

    else if (v10.msgh_id == 3103)
    {
      v3 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v3 = v12;
        if (!v12)
        {
          return v3;
        }
      }
    }

    else
    {
      v3 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v3;
}

kern_return_t processor_assign(processor_t processor, processor_set_t new_set, BOOLean_t wait)
{
  v10 = 1;
  v11 = new_set;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = wait;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, processor);
  *&v9.msgh_voucher_port = 0xBBC00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, processor), 0xBBC00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3104)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = v12;
        if (!v12)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t processor_get_assignment(processor_t processor, processor_set_name_t *assigned_set)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, processor);
  *&v9.msgh_voucher_port = 0xBBD00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, processor), 0xBBD00000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3105)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *assigned_set = HIDWORD(v10);
            return v6;
          }
        }

        else if (v9.msgh_size == 36)
        {
          v6 = -300;
          if (v11)
          {
            if (v9.msgh_remote_port)
            {
              v6 = -300;
            }

            else
            {
              v6 = v11;
            }
          }
        }

        else
        {
          v6 = -300;
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v9);
      return v6;
    }

    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  return v6;
}

kern_return_t netname_check_in(mach_port_t server_port, netname_name_t port_name, mach_port_t signature, mach_port_t port_id)
{
  v5 = 0;
  v20 = 0u;
  v23 = 0;
  v24 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = 2;
  v19 = signature;
  DWORD1(v20) = 1245184;
  DWORD2(v20) = port_id;
  v21 = 1245184;
  v22 = NDR_record;
  v6 = port_name == 0;
  v7 = 68;
  memset(&msg, 0, sizeof(msg));
  do
  {
    if (v6)
    {
      v8 = 0;
      v6 = 1;
    }

    else
    {
      v9 = *port_name++;
      v8 = v9;
      v6 = v9 == 0;
      if (!v9)
      {
        v5 = v7 - 67;
      }
    }

    *(&msg.msgh_bits + v7++) = v8;
  }

  while (v7 != 147);
  *(&msg.msgh_bits + v7) = 0;
  if (!v6)
  {
    v5 = 80;
  }

  v23 = 0;
  LODWORD(v24) = v5;
  v10 = (v5 + 3) & 0xFFFFFFFC;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = server_port;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x41000000000;
  v12 = mach_msg_overwrite(&msg, 3, v10 + 68, 0x2Cu, reply_port, 0, 0, 0, v16);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = -308;
    }

    else if (msg.msgh_id == 1140)
    {
      v13 = -300;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v13 = v20;
        if (!v20)
        {
          return v13;
        }
      }
    }

    else
    {
      v13 = -301;
    }

    mach_msg_destroy(&msg);
  }

  return v13;
}

kern_return_t netname_look_up(mach_port_t server_port, netname_name_t host_name, netname_name_t port_name, mach_port_t *port_id)
{
  v6 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 0u;
  v26 = NDR_record;
  v7 = host_name == 0;
  v8 = 40;
  memset(&msg, 0, sizeof(msg));
  do
  {
    if (v7)
    {
      v9 = 0;
      v7 = 1;
    }

    else
    {
      v10 = *host_name++;
      v9 = v10;
      v7 = v10 == 0;
      if (!v10)
      {
        v6 = v8 - 39;
      }
    }

    *(&msg.msgh_bits + v8++) = v9;
  }

  while (v8 != 119);
  v11 = 0;
  *(&msg.msgh_bits + v8) = 0;
  if (!v7)
  {
    v6 = 80;
  }

  LODWORD(v27) = 0;
  DWORD1(v27) = v6;
  v12 = (v6 + 3) & 0xFFFFFFFC;
  v13 = v28 + v12;
  v14 = port_name == 0;
  for (i = 1; i != 80; ++i)
  {
    if (v14)
    {
      v16 = 0;
      v14 = 1;
    }

    else
    {
      v17 = *port_name++;
      v16 = v17;
      v14 = v17 == 0;
      if (!v17)
      {
        v11 = i;
      }
    }

    *v13++ = v16;
  }

  if (!v14)
  {
    v11 = 80;
  }

  *v13 = 0;
  v18 = v12 + ((v11 + 3) & 0xFFFFFFFC);
  *(&v27 + v12 + 8) = 0;
  *(&v27 + v12 + 12) = v11;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = server_port;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x41100000000;
  v20 = mach_msg_overwrite(&msg, 3, v18 + 48, 0x30u, reply_port, 0, 0, 0, v24);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = -308;
      }

      else if (msg.msgh_id == 1141)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = -300;
          if (*&v26.mig_vers == 1 && msg.msgh_size == 40 && !msg.msgh_remote_port && WORD3(v27) << 16 == 1114112)
          {
            v21 = 0;
            *port_id = *&v26.int_rep;
            return v21;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = -300;
          if (v27)
          {
            if (msg.msgh_remote_port)
            {
              v21 = -300;
            }

            else
            {
              v21 = v27;
            }
          }
        }

        else
        {
          v21 = -300;
        }
      }

      else
      {
        v21 = -301;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

kern_return_t netname_check_out(mach_port_t server_port, netname_name_t port_name, mach_port_t signature)
{
  v4 = 0;
  v19 = 0x13000000000000;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v17 = 1;
  v18 = signature;
  v20 = NDR_record;
  v5 = port_name == 0;
  v6 = 56;
  memset(&msg, 0, sizeof(msg));
  do
  {
    if (v5)
    {
      v7 = 0;
      v5 = 1;
    }

    else
    {
      v8 = *port_name++;
      v7 = v8;
      v5 = v8 == 0;
      if (!v8)
      {
        v4 = v6 - 55;
      }
    }

    *(&msg.msgh_bits + v6++) = v7;
  }

  while (v6 != 135);
  *(&msg.msgh_bits + v6) = 0;
  if (!v5)
  {
    v4 = 80;
  }

  LODWORD(v21) = 0;
  DWORD1(v21) = v4;
  v9 = (v4 + 3) & 0xFFFFFFFC;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = server_port;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x41200000000;
  v11 = mach_msg_overwrite(&msg, 3, v9 + 56, 0x2Cu, reply_port, 0, 0, 0, v15);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v12;
    }

    if (msg.msgh_id == 71)
    {
      v12 = -308;
    }

    else if (msg.msgh_id == 1142)
    {
      v12 = -300;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v12 = v19;
        if (!v19)
        {
          return v12;
        }
      }
    }

    else
    {
      v12 = -301;
    }

    mach_msg_destroy(&msg);
  }

  return v12;
}

kern_return_t netname_version(mach_port_t server_port, netname_name_t version)
{
  msg_4 = 0;
  memset(&msg_16[4], 0, 112);
  msg_8 = server_port;
  msg_12 = mig_get_reply_port();
  msg = 5395;
  *msg_16 = 0x41300000000;
  v3 = mach_msg_overwrite(&msg, 3, 0x18u, 0x84u, msg_12, 0, 0, 0, v11);
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    return v4;
  }

  if (v3)
  {
    mig_dealloc_reply_port(msg_12);
    return v4;
  }

  if (*&msg_16[4] == 71)
  {
    v4 = -308;
LABEL_22:
    mach_msg_destroy(&msg);
    return v4;
  }

  if (*&msg_16[4] != 1143)
  {
    v4 = -301;
    goto LABEL_22;
  }

  if (msg < 0)
  {
    goto LABEL_21;
  }

  if ((msg_4 - 125) <= 0xFFFFFFAE)
  {
    if (*&msg_16[16])
    {
      v5 = msg_8 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5 && msg_4 == 36)
    {
      v4 = *&msg_16[16];
    }

    else
    {
      v4 = -300;
    }

    goto LABEL_22;
  }

  if (msg_8)
  {
LABEL_21:
    v4 = -300;
    goto LABEL_22;
  }

  v4 = *&msg_16[16];
  if (*&msg_16[16])
  {
    goto LABEL_22;
  }

  v4 = -300;
  if (*&msg_16[24] > 0x50u || (msg_4 - 44) < *&msg_16[24] || msg_4 != ((msg_16[24] + 3) & 0xFC) + 44)
  {
    goto LABEL_22;
  }

  v8 = &msg_16[28];
  v9 = 79;
  while (1)
  {
    v10 = *v8;
    *version = v10;
    if (!v10)
    {
      break;
    }

    ++version;
    ++v8;
    if (!--v9)
    {
      v4 = 0;
      *version = 0;
      return v4;
    }
  }

  return 0;
}

kern_return_t task_create(task_t target_task, ledger_array_t ledgers, mach_msg_type_number_t ledgersCnt, BOOLean_t inherit_memory, task_t *child_task)
{
  v12 = 1;
  v13 = ledgers;
  v14 = 34799616;
  v15 = ledgersCnt;
  v16 = NDR_record;
  v17 = ledgersCnt;
  v18 = inherit_memory;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x3C80001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v11.msgh_voucher_port = 0xD4800000000;
  v8 = mach_msg2_internal(&v11, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, target_task), 0xD4800000000, ((reply_port << 32) | 1), 0x30, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v11.msgh_id == 71)
      {
        v9 = -308;
      }

      else if (v11.msgh_id == 3500)
      {
        if ((v11.msgh_bits & 0x80000000) == 0)
        {
          if (v11.msgh_size == 36)
          {
            v9 = -300;
            if (HIDWORD(v13))
            {
              if (v11.msgh_remote_port)
              {
                v9 = -300;
              }

              else
              {
                v9 = HIDWORD(v13);
              }
            }
          }

          else
          {
            v9 = -300;
          }

          goto LABEL_20;
        }

        v9 = -300;
        if (v12 == 1 && *&v11.msgh_size == 40 && HIWORD(v14) << 16 == 1114112)
        {
          v9 = 0;
          *child_task = v13;
          return v9;
        }
      }

      else
      {
        v9 = -301;
      }

LABEL_20:
      mach_msg_destroy(&v11);
      return v9;
    }

    mig_dealloc_reply_port(v11.msgh_local_port);
  }

  return v9;
}

kern_return_t task_terminate(task_t target_task)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v7.msgh_voucher_port = 0xD4900000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_task), 0xD4900000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3501)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

uint64_t _kernelrpc_mach_ports_register3(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v12 = 0x13000000000000;
  v16 = 0x13000000000000;
  v10 = 3;
  v11 = a2;
  v13 = a3;
  v14 = 1245184;
  v15 = a4;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x4080001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v9.msgh_voucher_port = 0xD4B00000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x4080001513, __PAIR64__(reply_port, a1), 0xD4B00000000, ((reply_port << 32) | 3), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v7;
    }

    if (v9.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v9.msgh_id == 3503)
    {
      v7 = 4294966996;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

uint64_t _kernelrpc_mach_ports_lookup3(unsigned int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x1800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0xD4C00000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0xD4C00000000, (reply_port << 32), 0x48, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v14.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (v14.msgh_id == 3504)
      {
        if ((v14.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (v15 == 3 && v14.msgh_size == 64 && !v14.msgh_remote_port && HIWORD(v15) << 16 == 1114112 && WORD5(v16) << 16 == 1114112 && WORD3(v17) << 16 == 1114112)
          {
            v10 = 0;
            v12 = v16;
            *a2 = DWORD1(v15);
            *a3 = v12;
            *a4 = HIDWORD(v16);
            return v10;
          }
        }

        else if (v14.msgh_size == 36)
        {
          v10 = 4294966996;
          if (DWORD2(v15))
          {
            if (v14.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = DWORD2(v15);
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v10;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v10;
}

kern_return_t task_set_info(task_t target_task, task_flavor_t flavor, task_info_t task_info_in, mach_msg_type_number_t task_info_inCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (task_info_inCnt > 0x5E)
  {
    return -307;
  }

  v16 = 0;
  v7 = 4 * task_info_inCnt;
  memset(v15, 0, sizeof(v15));
  memmove(v15, task_info_in, 4 * task_info_inCnt);
  v14 = task_info_inCnt;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7 + 40;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v11.msgh_voucher_port = 0xD4E00000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, (((((v7 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, target_task), 0xD4E00000000, (reply_port << 32), 0x2C, 0);
  v4 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v4;
    }

    if (v11.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v11.msgh_id == 3506)
    {
      v4 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (!v13)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

kern_return_t task_suspend(task_read_t target_task)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v7.msgh_voucher_port = 0xD4F00000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_task), 0xD4F00000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3507)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t task_resume(task_read_t target_task)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v7.msgh_voucher_port = 0xD5000000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_task), 0xD5000000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3508)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t thread_create(task_t parent_task, thread_act_t *child_act)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, parent_task);
  *&v9.msgh_voucher_port = 0xD5300000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, parent_task), 0xD5300000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3511)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *child_act = HIDWORD(v10);
            return v6;
          }
        }

        else if (v9.msgh_size == 36)
        {
          v6 = -300;
          if (v11)
          {
            if (v9.msgh_remote_port)
            {
              v6 = -300;
            }

            else
            {
              v6 = v11;
            }
          }
        }

        else
        {
          v6 = -300;
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v9);
      return v6;
    }

    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  return v6;
}

kern_return_t thread_create_running(task_t parent_task, thread_state_flavor_t flavor, thread_state_t new_state, mach_msg_type_number_t new_stateCnt, thread_act_t *child_act)
{
  v14 = NDR_record;
  v15 = flavor;
  if (new_stateCnt > 0x510)
  {
    return -307;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v9 = 4 * new_stateCnt;
  memmove(v17, new_state, 4 * new_stateCnt);
  v16 = new_stateCnt;
  reply_port = mig_get_reply_port();
  v13.msgh_bits = 5395;
  v13.msgh_size = v9 + 40;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, parent_task);
  *&v13.msgh_voucher_port = 0xD5400000000;
  v11 = mach_msg2_internal(&v13, 0x200000003, (((((v9 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, parent_task), 0xD5400000000, (reply_port << 32), 0x30, 0);
  v5 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v13.msgh_id == 71)
      {
        v5 = -308;
      }

      else if (v13.msgh_id == 3512)
      {
        if ((v13.msgh_bits & 0x80000000) != 0)
        {
          v5 = -300;
          if (*&v14.mig_vers == 1 && v13.msgh_size == 40 && !v13.msgh_remote_port && HIWORD(v16) << 16 == 1114112)
          {
            v5 = 0;
            *child_act = *&v14.int_rep;
            return v5;
          }
        }

        else if (v13.msgh_size == 36)
        {
          v5 = -300;
          if (v15)
          {
            if (v13.msgh_remote_port)
            {
              v5 = -300;
            }

            else
            {
              v5 = v15;
            }
          }
        }

        else
        {
          v5 = -300;
        }
      }

      else
      {
        v5 = -301;
      }

      mach_msg_destroy(&v13);
      return v5;
    }

    mig_dealloc_reply_port(v13.msgh_local_port);
  }

  return v5;
}

kern_return_t lock_set_create(task_t task, lock_set_t *new_lock_set, int n_ulocks, int policy)
{
  v15 = 0;
  v12 = NDR_record;
  v13 = n_ulocks;
  v14 = policy;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2800001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v11.msgh_voucher_port = 0xD5800000000;
  v7 = mach_msg2_internal(&v11, 0x200000003, 0x2800001513, __PAIR64__(reply_port, task), 0xD5800000000, (reply_port << 32), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v11.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v11.msgh_id == 3516)
      {
        if ((v11.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (*&v12.mig_vers == 1 && *&v11.msgh_size == 40 && HIWORD(v14) << 16 == 1114112)
          {
            v8 = 0;
            *new_lock_set = *&v12.int_rep;
            return v8;
          }
        }

        else if (v11.msgh_size == 36)
        {
          v8 = -300;
          if (v13)
          {
            if (v11.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = v13;
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_reply_port(v11.msgh_local_port);
  }

  return v8;
}

kern_return_t lock_set_destroy(task_t task, lock_set_t lock_set)
{
  v11 = 0x13000000000000;
  v9 = 1;
  v10 = lock_set;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD5900000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD5900000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3517)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_policy_set(task_policy_set_t task, task_policy_flavor_t flavor, task_policy_t policy_info, mach_msg_type_number_t policy_infoCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (policy_infoCnt > 0x10)
  {
    return -307;
  }

  memset(v15, 0, sizeof(v15));
  v7 = 4 * policy_infoCnt;
  memmove(v15, policy_info, 4 * policy_infoCnt);
  v14 = policy_infoCnt;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7 + 40;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v11.msgh_voucher_port = 0xD5C00000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, (((((v7 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, task), 0xD5C00000000, (reply_port << 32), 0x2C, 0);
  v4 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v4;
    }

    if (v11.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v11.msgh_id == 3520)
    {
      v4 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (!v13)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

kern_return_t task_sample(task_t task, mach_port_t reply)
{
  v11 = 0x14000000000000;
  v9 = 1;
  v10 = reply;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD5E00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD5E00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3522)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_policy(task_t task, policy_t policy, policy_base_t base, mach_msg_type_number_t baseCnt, BOOLean_t set_limit, BOOLean_t change)
{
  memset(v18, 0, sizeof(v18));
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = NDR_record;
  v19 = 0;
  LODWORD(v18[0]) = policy;
  if (baseCnt > 5)
  {
    return -307;
  }

  v11 = 4 * baseCnt;
  memmove(v18 + 8, base, v11);
  DWORD1(v18[0]) = baseCnt;
  v12 = &reply_port + v11;
  *(v12 + 10) = set_limit;
  *(v12 + 11) = change;
  v13 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v11 + 48;
  *&reply_port.msgh_remote_port = __PAIR64__(v13, task);
  *&reply_port.msgh_voucher_port = 0xD5F00000000;
  v14 = mach_msg2_internal(&reply_port, 0x200000003, (((((v11 + 48) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(v13, task), 0xD5F00000000, (v13 << 32), 0x2C, 0);
  v6 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (v14)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v6;
    }

    if (reply_port.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (reply_port.msgh_id == 3523)
    {
      v6 = -300;
      if ((reply_port.msgh_bits & 0x80000000) == 0 && reply_port.msgh_size == 36 && !reply_port.msgh_remote_port)
      {
        v6 = v18[0];
        if (!LODWORD(v18[0]))
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&reply_port);
  }

  return v6;
}

kern_return_t task_set_emulation(task_t target_port, vm_address_t routine_entry_pt, int routine_number)
{
  v10 = NDR_record;
  v11 = routine_entry_pt;
  v12 = routine_number;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x2C00001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, target_port);
  *&v9.msgh_voucher_port = 0xD6000000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, target_port), 0xD6000000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3524)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t task_get_emulation_vector(task_t task, int *vector_start, emulation_vector_t *emulation_vector, mach_msg_type_number_t *emulation_vectorCnt)
{
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x1800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v14.msgh_voucher_port = 0xD6100000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD6100000000, (reply_port << 32), 0x44, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (v14.msgh_id == 71)
      {
        v10 = -308;
      }

      else if (v14.msgh_id == 3525)
      {
        if ((v14.msgh_bits & 0x80000000) != 0)
        {
          v10 = -300;
          if (v15 == 1 && v14.msgh_size == 60 && !v14.msgh_remote_port && HIBYTE(v15) == 1)
          {
            v12 = v16[0] >> 3;
            if (v16[0] >> 3 == v16[4])
            {
              v10 = 0;
              *vector_start = v16[3];
              *emulation_vector = *(&v15 + 4);
              *emulation_vectorCnt = v12;
              return v10;
            }
          }
        }

        else if (v14.msgh_size == 36)
        {
          v10 = -300;
          if (DWORD2(v15))
          {
            if (v14.msgh_remote_port)
            {
              v10 = -300;
            }

            else
            {
              v10 = DWORD2(v15);
            }
          }
        }

        else
        {
          v10 = -300;
        }
      }

      else
      {
        v10 = -301;
      }

      mach_msg_destroy(&v14);
      return v10;
    }

    mig_dealloc_reply_port(v14.msgh_local_port);
  }

  return v10;
}

kern_return_t task_set_emulation_vector(task_t task, int vector_start, emulation_vector_t emulation_vector, mach_msg_type_number_t emulation_vectorCnt)
{
  v10 = 1;
  v11 = emulation_vector;
  v12 = 16777472;
  v13 = 8 * emulation_vectorCnt;
  v14 = NDR_record;
  v15 = vector_start;
  v16 = emulation_vectorCnt;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3C80001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD6200000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, task), 0xD6200000000, ((reply_port << 32) | 1), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v7;
    }

    if (v9.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v9.msgh_id == 3526)
    {
      v7 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v7 = HIDWORD(v11);
        if (!HIDWORD(v11))
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

kern_return_t task_set_ras_pc(task_t target_task, vm_address_t basepc, vm_address_t boundspc)
{
  v10 = NDR_record;
  v11 = basepc;
  v12 = boundspc;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3000001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v9.msgh_voucher_port = 0xD6300000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target_task), 0xD6300000000, (reply_port << 32), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3527)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v6 = v11;
        if (!v11)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t task_zone_info(task_inspect_t target_task, mach_zone_name_array_t *names, mach_msg_type_number_t *namesCnt, task_zone_info_array_t *info, mach_msg_type_number_t *infoCnt)
{
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  reply_port = mig_get_reply_port();
  *&v17.msgh_bits = 0x1800001513;
  *&v17.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v17.msgh_voucher_port = 0xD6400000000;
  v11 = mach_msg2_internal(&v17, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_task), 0xD6400000000, (reply_port << 32), 0x54, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v17.msgh_id == 71)
      {
        v12 = -308;
      }

      else if (v17.msgh_id == 3528)
      {
        if ((v17.msgh_bits & 0x80000000) != 0)
        {
          v12 = -300;
          if (v18 == 2 && v17.msgh_size == 76 && !v17.msgh_remote_port && HIBYTE(v18) == 1 && HIBYTE(v19) == 1)
          {
            v14 = v19 / 0x50;
            if (v19 / 0x50 == v20[3])
            {
              v15 = v20[0] / 0x58u;
              if (v20[0] / 0x58u == v20[4])
              {
                v12 = 0;
                *names = *(&v18 + 4);
                *namesCnt = v14;
                *info = *(&v19 + 4);
                *infoCnt = v15;
                return v12;
              }
            }
          }
        }

        else if (v17.msgh_size == 36)
        {
          v12 = -300;
          if (DWORD2(v18))
          {
            if (v17.msgh_remote_port)
            {
              v12 = -300;
            }

            else
            {
              v12 = DWORD2(v18);
            }
          }
        }

        else
        {
          v12 = -300;
        }
      }

      else
      {
        v12 = -301;
      }

      mach_msg_destroy(&v17);
      return v12;
    }

    mig_dealloc_reply_port(v17.msgh_local_port);
  }

  return v12;
}

kern_return_t task_assign(task_t task, processor_set_t new_set, BOOLean_t assign_threads)
{
  v10 = 1;
  v11 = new_set;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = assign_threads;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD6500000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, task), 0xD6500000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3529)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = v12;
        if (!v12)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t task_assign_default(task_t task, BOOLean_t assign_threads)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = assign_threads;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD6600000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD6600000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3530)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_get_assignment(task_inspect_t task, processor_set_name_t *assigned_set)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD6700000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD6700000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3531)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *assigned_set = HIDWORD(v10);
            return v6;
          }
        }

        else if (v9.msgh_size == 36)
        {
          v6 = -300;
          if (v11)
          {
            if (v9.msgh_remote_port)
            {
              v6 = -300;
            }

            else
            {
              v6 = v11;
            }
          }
        }

        else
        {
          v6 = -300;
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v9);
      return v6;
    }

    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  return v6;
}

kern_return_t task_set_policy(task_t task, processor_set_t pset, policy_t policy, policy_base_t base, mach_msg_type_number_t baseCnt, policy_limit_t limit, mach_msg_type_number_t limitCnt, BOOLean_t change)
{
  v24 = 0x13000000000000;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  memset(&reply_port, 0, sizeof(reply_port));
  v22 = 1;
  v23 = pset;
  v25 = NDR_record;
  LODWORD(v26[0]) = policy;
  if (baseCnt > 5)
  {
    return -307;
  }

  v13 = 4 * baseCnt;
  memmove(v26 + 8, base, v13);
  DWORD1(v26[0]) = baseCnt;
  if (limitCnt > 1)
  {
    return -307;
  }

  v16 = 4 * limitCnt;
  v17 = &reply_port + v13 + v16;
  memmove(&reply_port + v13 + 60, limit, v16);
  *(&reply_port + v13 + 56) = limitCnt;
  v18 = v13 + 4 * limitCnt + 64;
  *(v17 + 15) = change;
  v19 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v18;
  *&reply_port.msgh_remote_port = __PAIR64__(v19, task);
  *&reply_port.msgh_voucher_port = 0xD6800000000;
  v20 = mach_msg2_internal(&reply_port, 0x200000003, ((v18 << 32) | 0x80001513), __PAIR64__(v19, task), 0xD6800000000, (v22 | (v19 << 32)), 0x2C, 0);
  v14 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (v20)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v14;
    }

    if (reply_port.msgh_id == 71)
    {
      v14 = -308;
    }

    else if (reply_port.msgh_id == 3532)
    {
      v14 = -300;
      if ((reply_port.msgh_bits & 0x80000000) == 0 && reply_port.msgh_size == 36 && !reply_port.msgh_remote_port)
      {
        v14 = v24;
        if (!v24)
        {
          return v14;
        }
      }
    }

    else
    {
      v14 = -301;
    }

    mach_msg_destroy(&reply_port);
  }

  return v14;
}

kern_return_t task_get_state(task_read_t task, thread_state_flavor_t flavor, thread_state_t old_state, mach_msg_type_number_t *old_stateCnt)
{
  v17 = NDR_record;
  v7 = *old_stateCnt;
  if (*old_stateCnt >= 0x510)
  {
    v7 = 1296;
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v16.msgh_voucher_port = 0xD6900000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, task), 0xD6900000000, (reply_port << 32), 0x1470, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 3533)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 5225 <= 0xFFFFEBBE)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 0x510 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *old_stateCnt;
            if (v19 <= v15)
            {
              memmove(old_state, v20, 4 * v19);
              v10 = 0;
              *old_stateCnt = v14;
            }

            else
            {
              memmove(old_state, v20, 4 * v15);
              *old_stateCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t task_set_state(task_t task, thread_state_flavor_t flavor, thread_state_t new_state, mach_msg_type_number_t new_stateCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (new_stateCnt > 0x510)
  {
    return -307;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v7 = 4 * new_stateCnt;
  memmove(v15, new_state, 4 * new_stateCnt);
  v14 = new_stateCnt;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7 + 40;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v11.msgh_voucher_port = 0xD6A00000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, (((((v7 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, task), 0xD6A00000000, (reply_port << 32), 0x2C, 0);
  v4 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v4;
    }

    if (v11.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v11.msgh_id == 3534)
    {
      v4 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (!v13)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

kern_return_t task_set_phys_footprint_limit(task_t task, int new_limit, int *old_limit)
{
  v15 = 0;
  v14 = 0;
  v12 = NDR_record;
  v13 = new_limit;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x2400001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v11.msgh_voucher_port = 0xD6B00000000;
  v6 = mach_msg2_internal(&v11, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD6B00000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v7;
    }

    if (v11.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v11.msgh_id == 3535)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v7 = v13;
            if (!v13)
            {
              *old_limit = v14;
              return v7;
            }

            goto LABEL_23;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v7 = -300;
          }

          else
          {
            v7 = v13;
          }

          goto LABEL_23;
        }
      }

      v7 = -300;
    }

    else
    {
      v7 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v11);
  }

  return v7;
}

kern_return_t task_purgable_info(task_inspect_t task, task_purgable_info_t *stats)
{
  v10 = 0;
  memset(&v9[1], 0, 288);
  reply_port = mig_get_reply_port();
  *&v9[0].msgh_bits = 0x1800001513;
  *&v9[0].msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9[0].msgh_voucher_port = 0xD6E00000000;
  v5 = mach_msg2_internal(v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD6E00000000, (reply_port << 32), 0x13C, 0);
  msgh_remote_port = v5;
  if (v5 - 268435458 > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9[0].msgh_id == 71)
      {
        msgh_remote_port = -308;
      }

      else if (v9[0].msgh_id == 3538)
      {
        if ((v9[0].msgh_bits & 0x80000000) == 0)
        {
          if (v9[0].msgh_size == 308)
          {
            if (!v9[0].msgh_remote_port)
            {
              msgh_remote_port = v9[1].msgh_remote_port;
              if (!v9[1].msgh_remote_port)
              {
                memmove(stats, &v9[1].msgh_local_port, 0x110uLL);
                return msgh_remote_port;
              }

              goto LABEL_20;
            }
          }

          else if (v9[0].msgh_size == 36)
          {
            if (v9[0].msgh_remote_port)
            {
              v7 = 1;
            }

            else
            {
              v7 = v9[1].msgh_remote_port == 0;
            }

            if (v7)
            {
              msgh_remote_port = -300;
            }

            else
            {
              msgh_remote_port = v9[1].msgh_remote_port;
            }

            goto LABEL_20;
          }
        }

        msgh_remote_port = -300;
      }

      else
      {
        msgh_remote_port = -301;
      }

LABEL_20:
      mach_msg_destroy(v9);
      return msgh_remote_port;
    }

    mig_dealloc_reply_port(v9[0].msgh_local_port);
  }

  return msgh_remote_port;
}

kern_return_t task_get_mach_voucher(task_read_t task, mach_voucher_selector_t which, ipc_voucher_t *voucher)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = which;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v10.msgh_voucher_port = 0xD6F00000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD6F00000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 3539)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *voucher = *&v11.int_rep;
            return v7;
          }
        }

        else if (v10.msgh_size == 36)
        {
          v7 = -300;
          if (v12)
          {
            if (v10.msgh_remote_port)
            {
              v7 = -300;
            }

            else
            {
              v7 = v12;
            }
          }
        }

        else
        {
          v7 = -300;
        }
      }

      else
      {
        v7 = -301;
      }

      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v7;
}

kern_return_t task_set_mach_voucher(task_t task, ipc_voucher_t voucher)
{
  v11 = 0x13000000000000;
  v9 = 1;
  v10 = voucher;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD7000000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD7000000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3540)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_swap_mach_voucher(task_t task, ipc_voucher_t new_voucher, ipc_voucher_t *old_voucher)
{
  v13 = 0;
  v14 = 0;
  v11 = 2;
  v12 = new_voucher;
  v5 = *old_voucher;
  HIDWORD(v13) = 1245184;
  LODWORD(v14) = v5;
  v15 = 1245184;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3480001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v10.msgh_voucher_port = 0xD7100000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3480001513, __PAIR64__(reply_port, task), 0xD7100000000, ((reply_port << 32) | 2), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v10.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v10.msgh_id == 3541)
      {
        if ((v10.msgh_bits & 0x80000000) == 0)
        {
          if (v10.msgh_size == 36)
          {
            v8 = -300;
            if (v13)
            {
              if (v10.msgh_remote_port)
              {
                v8 = -300;
              }

              else
              {
                v8 = v13;
              }
            }
          }

          else
          {
            v8 = -300;
          }

          goto LABEL_21;
        }

        v8 = -300;
        if (v11 == 1 && v10.msgh_size == 40 && !v10.msgh_remote_port && HIWORD(v13) << 16 == 1114112)
        {
          v8 = 0;
          *old_voucher = v12;
          return v8;
        }
      }

      else
      {
        v8 = -301;
      }

LABEL_21:
      mach_msg_destroy(&v10);
      return v8;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v8;
}

kern_return_t task_generate_corpse(task_read_t task, mach_port_t *corpse_task_port)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD7200000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD7200000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3542)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *corpse_task_port = HIDWORD(v10);
            return v6;
          }
        }

        else if (v9.msgh_size == 36)
        {
          v6 = -300;
          if (v11)
          {
            if (v9.msgh_remote_port)
            {
              v6 = -300;
            }

            else
            {
              v6 = v11;
            }
          }
        }

        else
        {
          v6 = -300;
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v9);
      return v6;
    }

    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  return v6;
}

kern_return_t task_map_corpse_info(task_t task, task_read_t corspe_task, vm_address_t *kcd_addr_begin, uint32_t *kcd_size)
{
  v16 = 0x13000000000000uLL;
  v17 = 0;
  v14 = 1;
  v15 = corspe_task;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2880001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v13.msgh_voucher_port = 0xD7300000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD7300000000, ((reply_port << 32) | 1), 0x38, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v13.msgh_id == 3543)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 48)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v16;
            if (!v16)
            {
              *kcd_addr_begin = *(&v16 + 4);
              *kcd_size = HIDWORD(v16);
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v16 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = v16;
          }

          goto LABEL_23;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

kern_return_t task_register_dyld_image_infos(task_t task, dyld_kernel_image_info_array_t dyld_images, mach_msg_type_number_t dyld_imagesCnt)
{
  v10 = 1;
  v11 = dyld_images;
  v12 = 16777472;
  v13 = 40 * dyld_imagesCnt;
  v14 = NDR_record;
  v15 = dyld_imagesCnt;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3880001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD7400000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3880001513, __PAIR64__(reply_port, task), 0xD7400000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3544)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = HIDWORD(v11);
        if (!HIDWORD(v11))
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t task_unregister_dyld_image_infos(task_t task, dyld_kernel_image_info_array_t dyld_images, mach_msg_type_number_t dyld_imagesCnt)
{
  v10 = 1;
  v11 = dyld_images;
  v12 = 16777472;
  v13 = 40 * dyld_imagesCnt;
  v14 = NDR_record;
  v15 = dyld_imagesCnt;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3880001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD7500000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3880001513, __PAIR64__(reply_port, task), 0xD7500000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3545)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = HIDWORD(v11);
        if (!HIDWORD(v11))
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t task_get_dyld_image_infos(task_read_t task, dyld_kernel_image_info_array_t *dyld_images, mach_msg_type_number_t *dyld_imagesCnt)
{
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v12.msgh_voucher_port = 0xD7600000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD7600000000, (reply_port << 32), 0x40, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v12.msgh_id == 3546)
      {
        if ((v12.msgh_bits & 0x80000000) != 0)
        {
          v8 = -300;
          if (v13 == 1 && *&v12.msgh_size == 56 && HIBYTE(v13) == 1)
          {
            v10 = v14 / 0x28;
            if (v14 / 0x28 == HIDWORD(v14))
            {
              v8 = 0;
              *dyld_images = *(&v13 + 4);
              *dyld_imagesCnt = v10;
              return v8;
            }
          }
        }

        else if (v12.msgh_size == 36)
        {
          v8 = -300;
          if (DWORD2(v13))
          {
            if (v12.msgh_remote_port)
            {
              v8 = -300;
            }

            else
            {
              v8 = DWORD2(v13);
            }
          }
        }

        else
        {
          v8 = -300;
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_reply_port(v12.msgh_local_port);
  }

  return v8;
}

kern_return_t task_register_dyld_shared_cache_image_info(task_t task, dyld_kernel_image_info_t *dyld_cache_image, BOOLean_t no_cache, BOOLean_t private_cache)
{
  v11 = NDR_record;
  v5 = *&dyld_cache_image->fsobjid.fid_objno;
  v12 = *dyld_cache_image->uuid;
  v13 = v5;
  load_addr = dyld_cache_image->load_addr;
  v15 = no_cache;
  v16 = private_cache;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x5000001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v10.msgh_voucher_port = 0xD7700000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x5000001513, __PAIR64__(reply_port, task), 0xD7700000000, (reply_port << 32), 0x2C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v8;
    }

    if (v10.msgh_id == 71)
    {
      v8 = -308;
    }

    else if (v10.msgh_id == 3547)
    {
      v8 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v8 = v12;
        if (!v12)
        {
          return v8;
        }
      }
    }

    else
    {
      v8 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v8;
}

kern_return_t task_register_dyld_set_dyld_state(task_t task, uint8_t dyld_state)
{
  v11 = 0;
  v9 = NDR_record;
  LOBYTE(v10) = dyld_state;
  *(&v10 + 1) = 0;
  HIBYTE(v10) = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD7800000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD7800000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3548)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_register_dyld_get_process_state(task_t task, dyld_kernel_process_info_t *dyld_process_state)
{
  memset(v13, 0, 92);
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x1800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v12.msgh_voucher_port = 0xD7900000000;
  v5 = mach_msg2_internal(&v12, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD7900000000, (reply_port << 32), 0x74, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v6;
    }

    if (v12.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v12.msgh_id == 3549)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 108)
        {
          if (!v12.msgh_remote_port)
          {
            v6 = DWORD2(v13[0]);
            if (!DWORD2(v13[0]))
            {
              v10 = *(&v13[1] + 12);
              v11 = *(&v13[3] + 12);
              *&dyld_process_state->cache_image_info.load_addr = *(&v13[2] + 12);
              *&dyld_process_state->imageCount = v11;
              *&dyld_process_state->private_cache = *(&v13[4] + 12);
              *dyld_process_state->cache_image_info.uuid = *(v13 + 12);
              *&dyld_process_state->cache_image_info.fsobjid.fid_objno = v10;
              return v6;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = DWORD2(v13[0]) == 0;
          }

          if (v8)
          {
            v6 = -300;
          }

          else
          {
            v6 = DWORD2(v13[0]);
          }

          goto LABEL_23;
        }
      }

      v6 = -300;
    }

    else
    {
      v6 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v6;
}

kern_return_t task_inspect(task_inspect_t task, task_inspect_flavor_t flavor, task_inspect_info_t info_out, mach_msg_type_number_t *info_outCnt)
{
  v17 = NDR_record;
  v7 = *info_outCnt;
  v20[1] = 0;
  v20[2] = 0;
  if (v7 >= 4)
  {
    v7 = 4;
  }

  v20[0] = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v16.msgh_voucher_port = 0xD7B00000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, task), 0xD7B00000000, (reply_port << 32), 0x40, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 3551)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 57 <= 0xFFFFFFEE)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 4 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *info_outCnt;
            if (v19 <= v15)
            {
              memmove(info_out, v20, 4 * v19);
              v10 = 0;
              *info_outCnt = v14;
            }

            else
            {
              memmove(info_out, v20, 4 * v15);
              *info_outCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t task_get_exc_guard_behavior(task_inspect_t task, task_exc_guard_behavior_t *behavior)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x1800001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v10.msgh_voucher_port = 0xD7C00000000;
  v5 = mach_msg2_internal(&v10, 0x200000003, 0x1800001513, __PAIR64__(reply_port, task), 0xD7C00000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v6;
    }

    if (v10.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v10.msgh_id == 3552)
    {
      if ((v10.msgh_bits & 0x80000000) == 0)
      {
        if (v10.msgh_size == 40)
        {
          if (!v10.msgh_remote_port)
          {
            v6 = v12;
            if (!v12)
            {
              *behavior = HIDWORD(v12);
              return v6;
            }

            goto LABEL_23;
          }
        }

        else if (v10.msgh_size == 36)
        {
          if (v10.msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = v12 == 0;
          }

          if (v8)
          {
            v6 = -300;
          }

          else
          {
            v6 = v12;
          }

          goto LABEL_23;
        }
      }

      v6 = -300;
    }

    else
    {
      v6 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v10);
  }

  return v6;
}

kern_return_t task_set_exc_guard_behavior(task_t task, task_exc_guard_behavior_t behavior)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = behavior;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD7D00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD7D00000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3553)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_dyld_process_info_notify_register(task_read_t target_task, mach_port_t notify)
{
  v11 = 0x14000000000000;
  v9 = 1;
  v10 = notify;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v8.msgh_voucher_port = 0xD8000000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, target_task), 0xD8000000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3556)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_dyld_process_info_notify_deregister(task_read_t target_task, mach_port_name_t notify)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = notify;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v8.msgh_voucher_port = 0xD8300000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, target_task), 0xD8300000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3559)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_get_exception_ports_info(mach_port_t port, exception_mask_t exception_mask, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_info_array_t old_handlers_info, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
{
  memset(v35, 0, 476);
  v33 = NDR_record;
  v34 = exception_mask;
  reply_port = mig_get_reply_port();
  *&v32.msgh_bits = 0x2400001513;
  *&v32.msgh_remote_port = __PAIR64__(reply_port, port);
  *&v32.msgh_voucher_port = 0xD8400000000;
  v14 = mach_msg2_internal(&v32, 0x200000003, 0x2400001513, __PAIR64__(reply_port, port), 0xD8400000000, (reply_port << 32), 0x2B0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v32.msgh_id == 71)
      {
        v15 = -308;
      }

      else if (v32.msgh_id == 3560)
      {
        if ((v32.msgh_bits & 0x80000000) == 0)
        {
          if (v32.msgh_size - 681 <= 0xFFFFFD7E)
          {
            if (v34)
            {
              v16 = v32.msgh_remote_port == 0;
            }

            else
            {
              v16 = 0;
            }

            if (v16 && v32.msgh_size == 36)
            {
              v15 = v34;
            }

            else
            {
              v15 = -300;
            }

            goto LABEL_22;
          }

          if (!v32.msgh_remote_port)
          {
            v15 = v34;
            if (v34)
            {
              goto LABEL_22;
            }

            if (LODWORD(v35[0]) <= 0x20)
            {
              v15 = -300;
              if (LODWORD(v35[0]) <= (v32.msgh_size - 40) >> 2)
              {
                v19 = (4 * LODWORD(v35[0]));
                v20 = v19 + 40;
                if (v32.msgh_size >= (v19 + 40))
                {
                  v21 = v32.msgh_size - v19;
                  if (LODWORD(v35[0]) <= (v32.msgh_size - v19 - 40) >> 3)
                  {
                    v22 = 8 * LODWORD(v35[0]);
                    if (v21 >= 8 * LODWORD(v35[0]) + 40)
                    {
                      v23 = v21 - v22;
                      if (LODWORD(v35[0]) <= (v23 - 40) >> 2 && v23 >= v20)
                      {
                        v24 = v23 - v19;
                        if (LODWORD(v35[0]) <= (v24 - 40) >> 2 && v24 == v20)
                        {
                          v25 = &v32 + v19 - 128;
                          v26 = &v25[v22 - 256];
                          v27 = v26 + v19 - 128;
                          v28 = masks;
                          v29 = (4 * LODWORD(v35[0]));
                          v30 = 8 * LODWORD(v35[0]);
                          v31 = v35[0];
                          memmove(v28, v35 + 4, v29);
                          *masksCnt = v31;
                          memmove(old_handlers_info, v25 + 168, v30);
                          memmove(old_behaviors, (v26 + 424), v29);
                          memmove(old_flavors, (v27 + 552), v29);
                          return 0;
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_22;
            }
          }
        }

        v15 = -300;
      }

      else
      {
        v15 = -301;
      }

LABEL_22:
      mach_msg_destroy(&v32);
      return v15;
    }

    mig_dealloc_reply_port(v32.msgh_local_port);
  }

  return v15;
}

kern_return_t task_test_sync_upcall(task_t task, mach_port_t port)
{
  v11 = 0x13000000000000;
  v9 = 1;
  v10 = port;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD8500000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD8500000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3561)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_set_corpse_forking_behavior(task_t task, task_corpse_forking_behavior_t behavior)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = behavior;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD8600000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xD8600000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3562)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t task_test_async_upcall_propagation(task_t task, mach_port_t port, int qos, int iotier)
{
  v10 = 1;
  v11 = port;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = qos;
  v15 = iotier;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3880001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v9.msgh_voucher_port = 0xD8700000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x3880001513, __PAIR64__(reply_port, task), 0xD8700000000, ((reply_port << 32) | 1), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v7;
    }

    if (v9.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v9.msgh_id == 3563)
    {
      v7 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

kern_return_t task_map_kcdata_object_64(task_t task, kcdata_object_t kcdata_object, mach_vm_address_t *kcd_addr_begin, mach_vm_size_t *kcd_size)
{
  *v16 = 0x13000000000000;
  *&v16[8] = 0;
  v17 = 0;
  *&v16[16] = 0;
  v14 = 1;
  v15 = kcdata_object;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x2880001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v13.msgh_voucher_port = 0xD8800000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD8800000000, ((reply_port << 32) | 1), 0x3C, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v13.msgh_id == 3564)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 52)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = *v16;
            if (!*v16)
            {
              *kcd_addr_begin = *&v16[4];
              *kcd_size = *&v16[12];
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = *v16 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = *v16;
          }

          goto LABEL_23;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

uint64_t task_register_hardened_exception_handler(unsigned int a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = 1;
  v13 = a6;
  v14 = 0x13000000000000;
  v15 = NDR_record;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  reply_port = mig_get_reply_port();
  *&v11.msgh_bits = 0x4080001513;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v11.msgh_voucher_port = 0xD8900000000;
  v8 = mach_msg2_internal(&v11, 0x200000003, 0x4080001513, __PAIR64__(reply_port, a1), 0xD8900000000, ((reply_port << 32) | 1), 0x2C, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v9;
    }

    if (v11.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v11.msgh_id == 3565)
    {
      v9 = 4294966996;
      if ((v11.msgh_bits & 0x80000000) == 0 && *&v11.msgh_size == 36)
      {
        v9 = v14;
        if (!v14)
        {
          return v9;
        }
      }
    }

    else
    {
      v9 = 4294966995;
    }

    mach_msg_destroy(&v11);
  }

  return v9;
}

kern_return_t thread_terminate(thread_act_t target_act)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001511;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v7.msgh_voucher_port = 0xE1000000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001511, __PAIR64__(reply_port, target_act), 0xE1000000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3700)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t act_get_state(thread_read_t target_act, int flavor, thread_state_t old_state, mach_msg_type_number_t *old_stateCnt)
{
  v17 = NDR_record;
  v7 = *old_stateCnt;
  if (*old_stateCnt >= 0x510)
  {
    v7 = 1296;
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = flavor;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v16.msgh_voucher_port = 0xE1100000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, target_act), 0xE1100000000, (reply_port << 32), 0x1470, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v16.msgh_local_port);
      return v10;
    }

    if (v16.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v16.msgh_id == 3701)
    {
      if ((v16.msgh_bits & 0x80000000) == 0)
      {
        if (v16.msgh_size - 5225 <= 0xFFFFEBBE)
        {
          if (v18)
          {
            v11 = v16.msgh_remote_port == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11 && v16.msgh_size == 36)
          {
            v10 = v18;
          }

          else
          {
            v10 = -300;
          }

          goto LABEL_24;
        }

        if (!v16.msgh_remote_port)
        {
          v10 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          v14 = v19;
          if (v19 <= 0x510 && v19 <= (v16.msgh_size - 40) >> 2 && v16.msgh_size == 4 * v19 + 40)
          {
            v15 = *old_stateCnt;
            if (v19 <= v15)
            {
              memmove(old_state, v20, 4 * v19);
              v10 = 0;
              *old_stateCnt = v14;
            }

            else
            {
              memmove(old_state, v20, 4 * v15);
              *old_stateCnt = v14;
              return -307;
            }

            return v10;
          }
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v16);
  }

  return v10;
}

kern_return_t act_set_state(thread_act_t target_act, int flavor, thread_state_t new_state, mach_msg_type_number_t new_stateCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (new_stateCnt > 0x510)
  {
    return -307;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v7 = 4 * new_stateCnt;
  memmove(v15, new_state, 4 * new_stateCnt);
  v14 = new_stateCnt;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7 + 40;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v11.msgh_voucher_port = 0xE1200000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, (((((v7 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, target_act), 0xE1200000000, (reply_port << 32), 0x2C, 0);
  v4 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v4;
    }

    if (v11.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v11.msgh_id == 3702)
    {
      v4 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (!v13)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

kern_return_t thread_set_state(thread_act_t target_act, thread_state_flavor_t flavor, thread_state_t new_state, mach_msg_type_number_t new_stateCnt)
{
  v12 = NDR_record;
  v13 = flavor;
  if (new_stateCnt > 0x510)
  {
    return -307;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v7 = 4 * new_stateCnt;
  memmove(v15, new_state, 4 * new_stateCnt);
  v14 = new_stateCnt;
  reply_port = mig_get_reply_port();
  v11.msgh_bits = 5395;
  v11.msgh_size = v7 + 40;
  *&v11.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v11.msgh_voucher_port = 0xE1400000000;
  v9 = mach_msg2_internal(&v11, 0x200000003, (((((v7 + 40) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(reply_port, target_act), 0xE1400000000, (reply_port << 32), 0x2C, 0);
  v4 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v4;
    }

    if (v11.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v11.msgh_id == 3704)
    {
      v4 = -300;
      if ((v11.msgh_bits & 0x80000000) == 0 && v11.msgh_size == 36 && !v11.msgh_remote_port)
      {
        v4 = v13;
        if (!v13)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v11);
  }

  return v4;
}

kern_return_t thread_abort(thread_act_t target_act)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v7.msgh_voucher_port = 0xE1700000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_act), 0xE1700000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3707)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t thread_abort_safely(thread_act_t target_act)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v7.msgh_voucher_port = 0xE1800000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, target_act), 0xE1800000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3708)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t thread_depress_abort(thread_act_t thread)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v7.msgh_voucher_port = 0xE1900000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, thread), 0xE1900000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3709)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t thread_get_special_port(thread_inspect_t thr_act, int which_port, mach_port_t *special_port)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = which_port;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, thr_act);
  *&v10.msgh_voucher_port = 0xE1A00000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, thr_act), 0xE1A00000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 3710)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *special_port = *&v11.int_rep;
            return v7;
          }
        }

        else if (v10.msgh_size == 36)
        {
          v7 = -300;
          if (v12)
          {
            if (v10.msgh_remote_port)
            {
              v7 = -300;
            }

            else
            {
              v7 = v12;
            }
          }
        }

        else
        {
          v7 = -300;
        }
      }

      else
      {
        v7 = -301;
      }

      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v7;
}

kern_return_t thread_set_special_port(thread_act_t thr_act, int which_port, mach_port_t special_port)
{
  v10 = 1;
  v11 = special_port;
  v12 = 0x13000000000000;
  v13 = NDR_record;
  v14 = which_port;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x3480001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, thr_act);
  *&v9.msgh_voucher_port = 0xE1B00000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x3480001513, __PAIR64__(reply_port, thr_act), 0xE1B00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v6;
    }

    if (v9.msgh_id == 71)
    {
      v6 = -308;
    }

    else if (v9.msgh_id == 3711)
    {
      v6 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && v9.msgh_size == 36 && !v9.msgh_remote_port)
      {
        v6 = v12;
        if (!v12)
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v6;
}

kern_return_t thread_swap_exception_ports(thread_act_t thread, exception_mask_t exception_mask, mach_port_t new_port, exception_behavior_t behavior, thread_state_flavor_t new_flavor, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_array_t old_handlers, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
{
  memset(v59, 0, 96);
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
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
  v36 = 0;
  v30 = 0;
  v28 = 1;
  v29 = new_port;
  v31 = 1245184;
  v32 = NDR_record;
  v33 = exception_mask;
  v34 = behavior;
  v35 = new_flavor;
  reply_port = mig_get_reply_port();
  *&v27.msgh_bits = 0x3C80001513;
  *&v27.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v27.msgh_voucher_port = 0xE1F00000000;
  v15 = mach_msg2_internal(&v27, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, thread), 0xE1F00000000, ((reply_port << 32) | 1), 0x330, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (v27.msgh_id == 71)
      {
        v16 = -308;
      }

      else if (v27.msgh_id == 3715)
      {
        if ((v27.msgh_bits & 0x80000000) != 0)
        {
          v16 = -300;
          if (v28 != 32 || v27.msgh_size - 424 > 0x180 || v27.msgh_remote_port)
          {
            goto LABEL_23;
          }

          v17 = &v29;
          v18 = 36;
          while (!*(&v27.msgh_bits + v18 + 3))
          {
            v18 += 12;
            if (v18 == 420)
            {
              v19 = v59[1];
              if (v59[1] > 0x20u)
              {
                break;
              }

              v16 = -300;
              if (v59[1] <= (v27.msgh_size - 424) >> 2)
              {
                v21 = (4 * v59[1]);
                v22 = v21 + 424;
                if (v27.msgh_size >= (v21 + 424))
                {
                  v23 = v27.msgh_size - v21;
                  if (v59[1] <= (v27.msgh_size - v21 - 424) >> 2 && v23 >= v22)
                  {
                    v24 = v23 - v21;
                    if (v59[1] <= (v24 - 424) >> 2 && v24 == v22)
                    {
                      v25 = &v27 + v21 - 128;
                      memmove(masks, &v59[2], (4 * v59[1]));
                      *masksCnt = v19;
                      if (v19)
                      {
                        do
                        {
                          v26 = *v17;
                          v17 += 3;
                          *old_handlers++ = v26;
                          --v19;
                        }

                        while (v19);
                      }

                      memmove(old_behaviors, v25 + 552, v21);
                      memmove(old_flavors, &v25[v21 + 552], v21);
                      return 0;
                    }
                  }
                }
              }

              goto LABEL_23;
            }
          }
        }

        else if (v27.msgh_size == 36)
        {
          v16 = -300;
          if (v30)
          {
            if (v27.msgh_remote_port)
            {
              v16 = -300;
            }

            else
            {
              v16 = v30;
            }
          }

          goto LABEL_23;
        }

        v16 = -300;
      }

      else
      {
        v16 = -301;
      }

LABEL_23:
      mach_msg_destroy(&v27);
      return v16;
    }

    mig_dealloc_reply_port(v27.msgh_local_port);
  }

  return v16;
}

kern_return_t thread_sample(thread_act_t thread, mach_port_t reply)
{
  v11 = 0x14000000000000;
  v9 = 1;
  v10 = reply;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v8.msgh_voucher_port = 0xE2300000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, thread), 0xE2300000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3719)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t etap_trace_thread(thread_act_t target_act, BOOLean_t trace_status)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = trace_status;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, target_act);
  *&v8.msgh_voucher_port = 0xE2400000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, target_act), 0xE2400000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3720)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t thread_assign(thread_act_t thread, processor_set_t new_set)
{
  v11 = 0x13000000000000;
  v9 = 1;
  v10 = new_set;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v8.msgh_voucher_port = 0xE2500000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, thread), 0xE2500000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3721)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t thread_assign_default(thread_act_t thread)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001513;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v7.msgh_voucher_port = 0xE2600000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001513, __PAIR64__(reply_port, thread), 0xE2600000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = -308;
    }

    else if (v7.msgh_id == 3722)
    {
      v4 = -300;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = -301;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

kern_return_t thread_get_assignment(thread_inspect_t thread, processor_set_name_t *assigned_set)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x1800001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, thread);
  *&v9.msgh_voucher_port = 0xE2700000000;
  v5 = mach_msg2_internal(&v9, 0x200000003, 0x1800001513, __PAIR64__(reply_port, thread), 0xE2700000000, (reply_port << 32), 0x30, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (v9.msgh_id == 71)
      {
        v6 = -308;
      }

      else if (v9.msgh_id == 3723)
      {
        if ((v9.msgh_bits & 0x80000000) != 0)
        {
          v6 = -300;
          if (v10 == 1 && *&v9.msgh_size == 40 && HIWORD(v11) << 16 == 1114112)
          {
            v6 = 0;
            *assigned_set = HIDWORD(v10);
            return v6;
          }
        }

        else if (v9.msgh_size == 36)
        {
          v6 = -300;
          if (v11)
          {
            if (v9.msgh_remote_port)
            {
              v6 = -300;
            }

            else
            {
              v6 = v11;
            }
          }
        }

        else
        {
          v6 = -300;
        }
      }

      else
      {
        v6 = -301;
      }

      mach_msg_destroy(&v9);
      return v6;
    }

    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  return v6;
}

uint64_t _kernelrpc_thread_set_policy(unsigned int a1, int a2, int a3, void *__src, unsigned int a5, const void *a6, unsigned int a7)
{
  v19 = 0x13000000000000;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = 1;
  v18 = a2;
  v20 = NDR_record;
  LODWORD(v21[0]) = a3;
  if (a5 > 5)
  {
    return 4294966989;
  }

  v11 = 4 * a5;
  memmove(v21 + 8, __src, v11);
  DWORD1(v21[0]) = a5;
  if (a7 > 1)
  {
    return 4294966989;
  }

  memmove(&reply_port + v11 + 60, a6, 4 * a7);
  *(&reply_port + v11 + 56) = a7;
  v14 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v11 + 4 * a7 + 60;
  *&reply_port.msgh_remote_port = __PAIR64__(v14, a1);
  *&reply_port.msgh_voucher_port = 0xE2800000000;
  v15 = mach_msg2_internal(&reply_port, 0x200000003, ((reply_port.msgh_size << 32) | 0x80001513), __PAIR64__(v14, a1), 0xE2800000000, (v17 | (v14 << 32)), 0x2C, 0);
  v12 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (v15)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v12;
    }

    if (reply_port.msgh_id == 71)
    {
      v12 = 4294966988;
    }

    else if (reply_port.msgh_id == 3724)
    {
      v12 = 4294966996;
      if ((reply_port.msgh_bits & 0x80000000) == 0 && reply_port.msgh_size == 36 && !reply_port.msgh_remote_port)
      {
        v12 = v19;
        if (!v19)
        {
          return v12;
        }
      }
    }

    else
    {
      v12 = 4294966995;
    }

    mach_msg_destroy(&reply_port);
  }

  return v12;
}

kern_return_t thread_get_mach_voucher(thread_read_t thr_act, mach_voucher_selector_t which, ipc_voucher_t *voucher)
{
  v14 = 0;
  v13 = 0;
  v11 = NDR_record;
  v12 = which;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x2400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, thr_act);
  *&v10.msgh_voucher_port = 0xE2900000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x2400001513, __PAIR64__(reply_port, thr_act), 0xE2900000000, (reply_port << 32), 0x30, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (v10.msgh_id == 71)
      {
        v7 = -308;
      }

      else if (v10.msgh_id == 3725)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v7 = -300;
          if (*&v11.mig_vers == 1 && *&v10.msgh_size == 40 && WORD1(v13) << 16 == 1114112)
          {
            v7 = 0;
            *voucher = *&v11.int_rep;
            return v7;
          }
        }

        else if (v10.msgh_size == 36)
        {
          v7 = -300;
          if (v12)
          {
            if (v10.msgh_remote_port)
            {
              v7 = -300;
            }

            else
            {
              v7 = v12;
            }
          }
        }

        else
        {
          v7 = -300;
        }
      }

      else
      {
        v7 = -301;
      }

      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v7;
}

kern_return_t thread_set_mach_voucher(thread_act_t thr_act, ipc_voucher_t voucher)
{
  v11 = 0x13000000000000;
  v9 = 1;
  v10 = voucher;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, thr_act);
  *&v8.msgh_voucher_port = 0xE2A00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, thr_act), 0xE2A00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3726)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t thread_swap_mach_voucher(thread_act_t thr_act, ipc_voucher_t new_voucher, ipc_voucher_t *old_voucher)
{
  v13 = 0;
  v14 = 0;
  v11 = 2;
  v12 = new_voucher;
  v5 = *old_voucher;
  HIDWORD(v13) = 1245184;
  LODWORD(v14) = v5;
  v15 = 1245184;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3480001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, thr_act);
  *&v10.msgh_voucher_port = 0xE2B00000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3480001513, __PAIR64__(reply_port, thr_act), 0xE2B00000000, ((reply_port << 32) | 2), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v10.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v10.msgh_id == 3727)
      {
        if ((v10.msgh_bits & 0x80000000) == 0)
        {
          if (v10.msgh_size == 36)
          {
            v8 = -300;
            if (v13)
            {
              if (v10.msgh_remote_port)
              {
                v8 = -300;
              }

              else
              {
                v8 = v13;
              }
            }
          }

          else
          {
            v8 = -300;
          }

          goto LABEL_21;
        }

        v8 = -300;
        if (v11 == 1 && v10.msgh_size == 40 && !v10.msgh_remote_port && HIWORD(v13) << 16 == 1114112)
        {
          v8 = 0;
          *old_voucher = v12;
          return v8;
        }
      }

      else
      {
        v8 = -301;
      }

LABEL_21:
      mach_msg_destroy(&v10);
      return v8;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v8;
}

kern_return_t thread_convert_thread_state(thread_act_t thread, int direction, thread_state_flavor_t flavor, thread_state_t in_state, mach_msg_type_number_t in_stateCnt, thread_state_t out_state, mach_msg_type_number_t *out_stateCnt)
{
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0;
  v26 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v22 = NDR_record;
  v23 = direction;
  v24 = flavor;
  if (in_stateCnt > 0x510)
  {
    return -307;
  }

  v12 = 4 * in_stateCnt;
  memmove(&v25 + 4, in_state, v12);
  LODWORD(v25) = in_stateCnt;
  v13 = *out_stateCnt;
  if (*out_stateCnt >= 0x510)
  {
    v13 = 1296;
  }

  *(&reply_port + v12 + 44) = v13;
  v14 = mig_get_reply_port();
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = v12 + 48;
  *&reply_port.msgh_remote_port = __PAIR64__(v14, thread);
  *&reply_port.msgh_voucher_port = 0xE2C00000000;
  v15 = mach_msg2_internal(&reply_port, 0x200000003, (((((v12 + 48) >> 2) & 0x1FFFFFFF) << 34) | 0x1513), __PAIR64__(v14, thread), 0xE2C00000000, (v14 << 32), 0x1470, 0);
  v7 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (v15)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v7;
    }

    if (reply_port.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (reply_port.msgh_id == 3728)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size - 5225 <= 0xFFFFEBBE)
        {
          if (v23)
          {
            v16 = reply_port.msgh_remote_port == 0;
          }

          else
          {
            v16 = 0;
          }

          if (v16 && reply_port.msgh_size == 36)
          {
            v7 = v23;
          }

          else
          {
            v7 = -300;
          }

          goto LABEL_26;
        }

        if (!reply_port.msgh_remote_port)
        {
          v7 = v23;
          if (v23)
          {
            goto LABEL_26;
          }

          v19 = v24;
          if (v24 <= 0x510 && v24 <= (reply_port.msgh_size - 40) >> 2 && reply_port.msgh_size == 4 * v24 + 40)
          {
            v20 = *out_stateCnt;
            if (v24 <= v20)
            {
              memmove(out_state, &v25, 4 * v24);
              v7 = 0;
              *out_stateCnt = v19;
              return v7;
            }

            memmove(out_state, &v25, 4 * v20);
            *out_stateCnt = v19;
            return -307;
          }
        }
      }

      v7 = -300;
    }

    else
    {
      v7 = -301;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
  }

  return v7;
}

kern_return_t thread_get_exception_ports_info(mach_port_t port, exception_mask_t exception_mask, exception_mask_array_t masks, mach_msg_type_number_t *masksCnt, exception_handler_info_array_t old_handlers_info, exception_behavior_array_t old_behaviors, exception_flavor_array_t old_flavors)
{
  memset(v35, 0, 476);
  v33 = NDR_record;
  v34 = exception_mask;
  reply_port = mig_get_reply_port();
  *&v32.msgh_bits = 0x2400001513;
  *&v32.msgh_remote_port = __PAIR64__(reply_port, port);
  *&v32.msgh_voucher_port = 0xE2E00000000;
  v14 = mach_msg2_internal(&v32, 0x200000003, 0x2400001513, __PAIR64__(reply_port, port), 0xE2E00000000, (reply_port << 32), 0x2B0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v32.msgh_id == 71)
      {
        v15 = -308;
      }

      else if (v32.msgh_id == 3730)
      {
        if ((v32.msgh_bits & 0x80000000) == 0)
        {
          if (v32.msgh_size - 681 <= 0xFFFFFD7E)
          {
            if (v34)
            {
              v16 = v32.msgh_remote_port == 0;
            }

            else
            {
              v16 = 0;
            }

            if (v16 && v32.msgh_size == 36)
            {
              v15 = v34;
            }

            else
            {
              v15 = -300;
            }

            goto LABEL_22;
          }

          if (!v32.msgh_remote_port)
          {
            v15 = v34;
            if (v34)
            {
              goto LABEL_22;
            }

            if (LODWORD(v35[0]) <= 0x20)
            {
              v15 = -300;
              if (LODWORD(v35[0]) <= (v32.msgh_size - 40) >> 2)
              {
                v19 = (4 * LODWORD(v35[0]));
                v20 = v19 + 40;
                if (v32.msgh_size >= (v19 + 40))
                {
                  v21 = v32.msgh_size - v19;
                  if (LODWORD(v35[0]) <= (v32.msgh_size - v19 - 40) >> 3)
                  {
                    v22 = 8 * LODWORD(v35[0]);
                    if (v21 >= 8 * LODWORD(v35[0]) + 40)
                    {
                      v23 = v21 - v22;
                      if (LODWORD(v35[0]) <= (v23 - 40) >> 2 && v23 >= v20)
                      {
                        v24 = v23 - v19;
                        if (LODWORD(v35[0]) <= (v24 - 40) >> 2 && v24 == v20)
                        {
                          v25 = &v32 + v19 - 128;
                          v26 = &v25[v22 - 256];
                          v27 = v26 + v19 - 128;
                          v28 = masks;
                          v29 = (4 * LODWORD(v35[0]));
                          v30 = 8 * LODWORD(v35[0]);
                          v31 = v35[0];
                          memmove(v28, v35 + 4, v29);
                          *masksCnt = v31;
                          memmove(old_handlers_info, v25 + 168, v30);
                          memmove(old_behaviors, (v26 + 424), v29);
                          memmove(old_flavors, (v27 + 552), v29);
                          return 0;
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_22;
            }
          }
        }

        v15 = -300;
      }

      else
      {
        v15 = -301;
      }

LABEL_22:
      mach_msg_destroy(&v32);
      return v15;
    }

    mig_dealloc_reply_port(v32.msgh_local_port);
  }

  return v15;
}

uint64_t thread_adopt_exception_handler(unsigned int a1, int a2, int a3, int a4, int a5)
{
  v11 = 1;
  v12 = a2;
  v13 = 0x13000000000000;
  v14 = NDR_record;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3C80001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v10.msgh_voucher_port = 0xE2F00000000;
  v7 = mach_msg2_internal(&v10, 0x200000003, 0x3C80001513, __PAIR64__(reply_port, a1), 0xE2F00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v8;
    }

    if (v10.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v10.msgh_id == 3731)
    {
      v8 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v8 = v13;
        if (!v13)
        {
          return v8;
        }
      }
    }

    else
    {
      v8 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

  return v8;
}

kern_return_t vm_inherit(vm_map_t target_task, vm_address_t address, vm_size_t size, vm_inherit_t new_inheritance)
{
  v11 = NDR_record;
  v12 = address;
  v13 = size;
  v14 = new_inheritance;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12C300000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12C300000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4903)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t vm_read_list(vm_map_read_t target_task, vm_read_entry_t data_list, natural_t count)
{
  v13 = NDR_record;
  memmove(&v14, data_list, 0x1000uLL);
  v15[1023] = count;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x102400001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v12.msgh_voucher_port = 0x12C500000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x102400001513, __PAIR64__(reply_port, target_task), 0x12C500000000, (reply_port << 32), 0x102C, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v8;
    }

    if (v12.msgh_id == 71)
    {
      v8 = -308;
    }

    else if (v12.msgh_id == 4905)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 4132)
        {
          if (!v12.msgh_remote_port)
          {
            v8 = v14;
            if (!v14)
            {
              memmove(data_list, v15, 0x1000uLL);
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v8 = -300;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_23;
        }
      }

      v8 = -300;
    }

    else
    {
      v8 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v8;
}

kern_return_t vm_write(vm_map_t target_task, vm_address_t address, vm_offset_t data, mach_msg_type_number_t dataCnt)
{
  v10 = 1;
  v11 = data;
  v12 = 16777472;
  v13 = dataCnt;
  v14 = NDR_record;
  v15 = address;
  v16 = dataCnt;
  reply_port = mig_get_reply_port();
  *&v9.msgh_bits = 0x4080001513;
  *&v9.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v9.msgh_voucher_port = 0x12C600000000;
  v6 = mach_msg2_internal(&v9, 0x200000003, 0x4080001513, __PAIR64__(reply_port, target_task), 0x12C600000000, ((reply_port << 32) | 1), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v9.msgh_local_port);
      return v7;
    }

    if (v9.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v9.msgh_id == 4906)
    {
      v7 = -300;
      if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
      {
        v7 = HIDWORD(v11);
        if (!HIDWORD(v11))
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v9);
  }

  return v7;
}

kern_return_t vm_msync(vm_map_t target_task, vm_address_t address, vm_size_t size, vm_sync_t sync_flags)
{
  v11 = NDR_record;
  v12 = address;
  v13 = size;
  v14 = sync_flags;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12C900000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12C900000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4909)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t vm_behavior_set(vm_map_t target_task, vm_address_t address, vm_size_t size, vm_behavior_t new_behavior)
{
  v11 = NDR_record;
  v12 = address;
  v13 = size;
  v14 = new_behavior;
  reply_port = mig_get_reply_port();
  *&v10.msgh_bits = 0x3400001513;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v10.msgh_voucher_port = 0x12CA00000000;
  v6 = mach_msg2_internal(&v10, 0x200000003, 0x3400001513, __PAIR64__(reply_port, target_task), 0x12CA00000000, (reply_port << 32), 0x2C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v10.msgh_local_port);
      return v7;
    }

    if (v10.msgh_id == 71)
    {
      v7 = -308;
    }

    else if (v10.msgh_id == 4910)
    {
      v7 = -300;
      if ((v10.msgh_bits & 0x80000000) == 0 && v10.msgh_size == 36 && !v10.msgh_remote_port)
      {
        v7 = v12;
        if (!v12)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = -301;
    }

    mach_msg_destroy(&v10);
  }

  return v7;
}

kern_return_t vm_machine_attribute(vm_map_t target_task, vm_address_t address, vm_size_t size, vm_machine_attribute_t attribute, vm_machine_attribute_val_t *value)
{
  v15 = NDR_record;
  v16 = address;
  v17 = size;
  v7 = *value;
  v18 = attribute;
  v19 = v7;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x3800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v14.msgh_voucher_port = 0x12CC00000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x3800001513, __PAIR64__(reply_port, target_task), 0x12CC00000000, (reply_port << 32), 0x30, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v10;
    }

    if (v14.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v14.msgh_id == 4912)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v10 = v16;
            if (!v16)
            {
              *value = HIDWORD(v16);
              return v10;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = v16 == 0;
          }

          if (v12)
          {
            v10 = -300;
          }

          else
          {
            v10 = v16;
          }

          goto LABEL_23;
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v10;
}

kern_return_t vm_map_page_query(vm_map_read_t target_map, vm_offset_t offset, integer_t *disposition, integer_t *ref_count)
{
  v18 = 0;
  v16 = offset;
  v17 = 0;
  v15 = NDR_record;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, target_map);
  *&v14.msgh_voucher_port = 0x12CE00000000;
  v8 = mach_msg2_internal(&v14, 0x200000003, 0x2800001513, __PAIR64__(reply_port, target_map), 0x12CE00000000, (reply_port << 32), 0x34, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v9;
    }

    if (v14.msgh_id == 71)
    {
      v9 = -308;
    }

    else if (v14.msgh_id == 4914)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 44)
        {
          if (!v14.msgh_remote_port)
          {
            v9 = v16;
            if (!v16)
            {
              v13 = v17;
              *disposition = HIDWORD(v16);
              *ref_count = v13;
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v16 == 0;
          }

          if (v11)
          {
            v9 = -300;
          }

          else
          {
            v9 = v16;
          }

          goto LABEL_23;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v9;
}

kern_return_t vm_region_recurse_64(vm_map_read_t target_task, vm_address_t *address, vm_size_t *size, natural_t *nesting_depth, vm_region_recurse_info_t info, mach_msg_type_number_t *infoCnt)
{
  v12 = *address;
  v25 = NDR_record;
  *v26 = v12;
  v13 = *infoCnt;
  if (*infoCnt >= 0x13)
  {
    v13 = 19;
  }

  v14 = *nesting_depth;
  *&v27[4] = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  *&v26[8] = v14;
  *v27 = v13;
  reply_port = mig_get_reply_port();
  *&v24.msgh_bits = 0x3000001513;
  *&v24.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v24.msgh_voucher_port = 0x12CF00000000;
  v16 = mach_msg2_internal(&v24, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target_task), 0x12CF00000000, (reply_port << 32), 0x90, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(v24.msgh_local_port);
      return v17;
    }

    if (v24.msgh_id == 71)
    {
      v17 = -308;
    }

    else if (v24.msgh_id == 4915)
    {
      if ((v24.msgh_bits & 0x80000000) == 0)
      {
        if (v24.msgh_size - 137 <= 0xFFFFFFB2)
        {
          if (*v26)
          {
            v18 = v24.msgh_remote_port == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && v24.msgh_size == 36)
          {
            v17 = *v26;
          }

          else
          {
            v17 = -300;
          }

          goto LABEL_24;
        }

        if (!v24.msgh_remote_port)
        {
          v17 = *v26;
          if (*v26)
          {
            goto LABEL_24;
          }

          v21 = *&v27[12];
          if (*&v27[12] <= 0x13u && *&v27[12] <= (v24.msgh_size - 60) >> 2)
          {
            v22 = 4 * *&v27[12];
            if (v24.msgh_size == 4 * *&v27[12] + 60)
            {
              *address = *&v26[4];
              *size = *v27;
              *nesting_depth = *&v27[8];
              v23 = *infoCnt;
              if (v21 <= v23)
              {
                memmove(info, &v27[16], v22);
                v17 = 0;
                *infoCnt = v21;
              }

              else
              {
                memmove(info, &v27[16], 4 * v23);
                *infoCnt = v21;
                return -307;
              }

              return v17;
            }
          }
        }
      }

      v17 = -300;
    }

    else
    {
      v17 = -301;
    }

LABEL_24:
    mach_msg_destroy(&v24);
  }

  return v17;
}

kern_return_t vm_region_64(vm_map_read_t target_task, vm_address_t *address, vm_size_t *size, vm_region_flavor_t flavor, vm_region_info_t info, mach_msg_type_number_t *infoCnt, mach_port_t *object_name)
{
  v13 = *address;
  v24 = NDR_record;
  v25 = v13;
  v14 = *infoCnt;
  if (*infoCnt >= 0xA)
  {
    v14 = 10;
  }

  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v26 = flavor;
  v27 = v14;
  reply_port = mig_get_reply_port();
  *&v23.msgh_bits = 0x3000001513;
  *&v23.msgh_remote_port = __PAIR64__(reply_port, target_task);
  *&v23.msgh_voucher_port = 0x12D000000000;
  v16 = mach_msg2_internal(&v23, 0x200000003, 0x3000001513, __PAIR64__(reply_port, target_task), 0x12D000000000, (reply_port << 32), 0x74, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(v23.msgh_local_port);
      return v17;
    }

    if (v23.msgh_id == 71)
    {
      v17 = -308;
    }

    else if (v23.msgh_id == 4916)
    {
      if ((v23.msgh_bits & 0x80000000) == 0)
      {
        if (v23.msgh_size == 36)
        {
          v17 = -300;
          if (v25)
          {
            if (v23.msgh_remote_port)
            {
              v17 = -300;
            }

            else
            {
              v17 = v25;
            }
          }
        }

        else
        {
          v17 = -300;
        }

        goto LABEL_27;
      }

      v17 = -300;
      if (*&v24.mig_vers == 1 && v23.msgh_size - 68 <= 0x28 && !v23.msgh_remote_port && HIWORD(v25) << 16 == 1114112)
      {
        v18 = v29[0];
        if (LODWORD(v29[0]) <= 0xA && (v23.msgh_size - 68) >> 2 >= LODWORD(v29[0]))
        {
          v19 = 4 * LODWORD(v29[0]);
          if (v23.msgh_size == 4 * LODWORD(v29[0]) + 68)
          {
            v20 = *(&v28 + 1);
            *address = v28;
            *size = v20;
            v21 = *infoCnt;
            if (v18 <= v21)
            {
              memmove(info, v29 + 4, v19);
              v17 = 0;
              *infoCnt = v18;
              *object_name = *&v24.int_rep;
            }

            else
            {
              memmove(info, v29 + 4, 4 * v21);
              *infoCnt = v18;
              return -307;
            }

            return v17;
          }
        }
      }
    }

    else
    {
      v17 = -301;
    }

LABEL_27:
    mach_msg_destroy(&v23);
  }

  return v17;
}

uint64_t _kernelrpc_vm_purgable_control(unsigned int a1, uint64_t a2, int a3, int *a4)
{
  v14 = NDR_record;
  v15 = a2;
  v6 = *a4;
  v16 = a3;
  v17 = v6;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 0x3000001513;
  *&v13.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v13.msgh_voucher_port = 0x12D200000000;
  v8 = mach_msg2_internal(&v13, 0x200000003, 0x3000001513, __PAIR64__(reply_port, a1), 0x12D200000000, (reply_port << 32), 0x30, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v9;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 4918)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = v15;
            if (!v15)
            {
              *a4 = HIDWORD(v15);
              return v9;
            }

            goto LABEL_23;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = v15 == 0;
          }

          if (v11)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v15;
          }

          goto LABEL_23;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v13);
  }

  return v9;
}

uint64_t _kernelrpc_vm_remap_new(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, int *a9, int *a10, int a11)
{
  v22 = 1;
  v23 = a6;
  *&v24 = 0x13000000000000;
  v13 = *a2;
  *(&v24 + 1) = NDR_record;
  v25 = v13;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a7;
  v14 = *a9;
  v30 = a8;
  v31 = v14;
  v32 = *a10;
  v33 = a11;
  reply_port = mig_get_reply_port();
  *&v21.msgh_bits = 0x6480001513;
  *&v21.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v21.msgh_voucher_port = 0x12D500000000;
  v16 = mach_msg2_internal(&v21, 0x200000003, 0x6480001513, __PAIR64__(reply_port, a1), 0x12D500000000, ((reply_port << 32) | 1), 0x3C, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (!v16)
    {
      if (v21.msgh_id == 71)
      {
        v17 = 4294966988;
      }

      else if (v21.msgh_id == 4921)
      {
        if ((v21.msgh_bits & 0x80000000) == 0)
        {
          if (v21.msgh_size == 52)
          {
            if (!v21.msgh_remote_port)
            {
              v17 = v24;
              if (!v24)
              {
                *a2 = *(&v24 + 4);
                v20 = v25;
                *a9 = HIDWORD(v24);
                *a10 = v20;
                return v17;
              }

              goto LABEL_20;
            }
          }

          else if (v21.msgh_size == 36)
          {
            if (v21.msgh_remote_port)
            {
              v18 = 1;
            }

            else
            {
              v18 = v24 == 0;
            }

            if (v18)
            {
              v17 = 4294966996;
            }

            else
            {
              v17 = v24;
            }

            goto LABEL_20;
          }
        }

        v17 = 4294966996;
      }

      else
      {
        v17 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v21);
      return v17;
    }

    mig_dealloc_reply_port(v21.msgh_local_port);
  }

  return v17;
}

kern_return_t mach_memory_entry_purgable_control(mem_entry_name_port_t mem_entry, vm_purgable_t control, int *state)
{
  v16 = 0;
  v13 = NDR_record;
  v5 = *state;
  v14 = control;
  v15 = v5;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x2800001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, mem_entry);
  *&v12.msgh_voucher_port = 0x132400000000;
  v7 = mach_msg2_internal(&v12, 0x200000003, 0x2800001513, __PAIR64__(reply_port, mem_entry), 0x132400000000, (reply_port << 32), 0x30, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v8;
    }

    if (v12.msgh_id == 71)
    {
      v8 = -308;
    }

    else if (v12.msgh_id == 5000)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 40)
        {
          if (!v12.msgh_remote_port)
          {
            v8 = v14;
            if (!v14)
            {
              *state = v15;
              return v8;
            }

            goto LABEL_23;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = v14 == 0;
          }

          if (v10)
          {
            v8 = -300;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_23;
        }
      }

      v8 = -300;
    }

    else
    {
      v8 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v12);
  }

  return v8;
}

kern_return_t mach_memory_entry_access_tracking(mem_entry_name_port_t mem_entry, int *access_tracking, uint32_t *access_tracking_reads, uint32_t *access_tracking_writes)
{
  v19 = 0;
  v18 = 0;
  v20 = 0;
  v16 = NDR_record;
  v17 = *access_tracking;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 0x2400001513;
  *&v15.msgh_remote_port = __PAIR64__(reply_port, mem_entry);
  *&v15.msgh_voucher_port = 0x132500000000;
  v9 = mach_msg2_internal(&v15, 0x200000003, 0x2400001513, __PAIR64__(reply_port, mem_entry), 0x132500000000, (reply_port << 32), 0x38, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v15.msgh_local_port);
      return v10;
    }

    if (v15.msgh_id == 71)
    {
      v10 = -308;
    }

    else if (v15.msgh_id == 5001)
    {
      if ((v15.msgh_bits & 0x80000000) == 0)
      {
        if (v15.msgh_size == 48)
        {
          if (!v15.msgh_remote_port)
          {
            v10 = v17;
            if (!v17)
            {
              v14 = HIDWORD(v18);
              *access_tracking = v18;
              *access_tracking_reads = v14;
              *access_tracking_writes = v19;
              return v10;
            }

            goto LABEL_23;
          }
        }

        else if (v15.msgh_size == 36)
        {
          if (v15.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = v17 == 0;
          }

          if (v12)
          {
            v10 = -300;
          }

          else
          {
            v10 = v17;
          }

          goto LABEL_23;
        }
      }

      v10 = -300;
    }

    else
    {
      v10 = -301;
    }

LABEL_23:
    mach_msg_destroy(&v15);
  }

  return v10;
}

uint64_t mach_memory_entry_get_page_counts(unsigned int a1, void *a2, void *a3, void *a4)
{
  memset(v15, 0, 44);
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x1800001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0x132700000000;
  v9 = mach_msg2_internal(&v14, 0x200000003, 0x1800001513, __PAIR64__(reply_port, a1), 0x132700000000, (reply_port << 32), 0x44, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v10;
    }

    if (v14.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v14.msgh_id == 5003)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 60)
        {
          if (!v14.msgh_remote_port)
          {
            v10 = DWORD2(v15[0]);
            if (!DWORD2(v15[0]))
            {
              *a2 = *(v15 + 12);
              *a3 = *(&v15[1] + 4);
              *a4 = *(&v15[1] + 12);
              return v10;
            }

            goto LABEL_23;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = DWORD2(v15[0]) == 0;
          }

          if (v12)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = DWORD2(v15[0]);
          }

          goto LABEL_23;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_23:
    mach_msg_destroy(&v14);
  }

  return v10;
}

uint64_t mach_eventlink_create(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  memset(v17, 0, sizeof(v17));
  v15 = NDR_record;
  v16 = a2;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 0x2400001513;
  *&v14.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v14.msgh_voucher_port = 0xAEDA800000000;
  v6 = mach_msg2_internal(&v14, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xAEDA800000000, (reply_port << 32), 0x3C, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      return v7;
    }

    if (v14.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v14.msgh_id == 716300)
    {
      if ((v14.msgh_bits & 0x80000000) != 0)
      {
        v7 = 4294966996;
        if (*&v15.mig_vers != 2 || *&v14.msgh_size != 52)
        {
          goto LABEL_25;
        }

        v9 = v17;
        for (i = 1; ; i = 0)
        {
          v11 = i;
          if (*(v9 + 1) << 16 != 1114112)
          {
            break;
          }

          v9 = (v9 + 12);
          if ((v11 & 1) == 0)
          {
            v7 = 0;
            v12 = HIDWORD(v17[0]);
            *a3 = *&v15.int_rep;
            a3[1] = v12;
            return v7;
          }
        }
      }

      else if (v14.msgh_size == 36)
      {
        v7 = 4294966996;
        if (v16)
        {
          if (v14.msgh_remote_port)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v16;
          }
        }

        goto LABEL_25;
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_25:
    mach_msg_destroy(&v14);
  }

  return v7;
}

uint64_t mach_eventlink_destroy(unsigned int a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  reply_port = mig_get_reply_port();
  *&v7.msgh_bits = 0x1800001511;
  *&v7.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v7.msgh_voucher_port = 0xAEDA900000000;
  v3 = mach_msg2_internal(&v7, 0x200000003, 0x1800001511, __PAIR64__(reply_port, a1), 0xAEDA900000000, (reply_port << 32), 0x2C, 0);
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
      return v4;
    }

    if (v7.msgh_id == 71)
    {
      v4 = 4294966988;
    }

    else if (v7.msgh_id == 716301)
    {
      v4 = 4294966996;
      if ((v7.msgh_bits & 0x80000000) == 0 && *&v7.msgh_size == 36)
      {
        v4 = v9;
        if (!v9)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = 4294966995;
    }

    mach_msg_destroy(&v7);
  }

  return v4;
}

uint64_t mach_eventlink_associate(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = 1;
  v14 = a2;
  v15 = 0x13000000000000;
  v16 = NDR_record;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 0x5480001513;
  *&v12.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v12.msgh_voucher_port = 0xAEDAA00000000;
  v9 = mach_msg2_internal(&v12, 0x200000003, 0x5480001513, __PAIR64__(reply_port, a1), 0xAEDAA00000000, ((reply_port << 32) | 1), 0x2C, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v10;
    }

    if (v12.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v12.msgh_id == 716302)
    {
      v10 = 4294966996;
      if ((v12.msgh_bits & 0x80000000) == 0 && v12.msgh_size == 36 && !v12.msgh_remote_port)
      {
        v10 = v15;
        if (!v15)
        {
          return v10;
        }
      }
    }

    else
    {
      v10 = 4294966995;
    }

    mach_msg_destroy(&v12);
  }

  return v10;
}

uint64_t mach_eventlink_disassociate(unsigned int a1, unsigned int a2)
{
  v11 = 0;
  v9 = NDR_record;
  v10 = a2;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2400001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v8.msgh_voucher_port = 0xAEDAB00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2400001513, __PAIR64__(reply_port, a1), 0xAEDAB00000000, (reply_port << 32), 0x2C, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (v8.msgh_id == 716303)
    {
      v5 = 4294966996;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v10;
        if (!v10)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

kern_return_t mach_voucher_extract_attr_content(ipc_voucher_t voucher, mach_voucher_attr_key_t key, mach_voucher_attr_content_t content, mach_msg_type_number_t *contentCnt)
{
  v17 = NDR_record;
  v7 = *contentCnt;
  if (*contentCnt >= 0x1000)
  {
    v7 = 4096;
  }

  memset(&__n[4], 0, 472);
  v18 = key;
  *__n = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, voucher);
  *&v16.msgh_voucher_port = 0x151800000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, voucher), 0x151800000000, (reply_port << 32), 0x1030, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    return v10;
  }

  if (v9)
  {
    mig_dealloc_reply_port(v16.msgh_local_port);
    return v10;
  }

  if (v16.msgh_id == 71)
  {
    v10 = -308;
LABEL_24:
    mach_msg_destroy(&v16);
    return v10;
  }

  if (v16.msgh_id != 5500)
  {
    v10 = -301;
    goto LABEL_24;
  }

  if ((v16.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v16.msgh_size - 4137 <= 0xFFFFEFFE)
  {
    if (v18)
    {
      v11 = v16.msgh_remote_port == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && v16.msgh_size == 36)
    {
      v10 = v18;
    }

    else
    {
      v10 = -300;
    }

    goto LABEL_24;
  }

  if (v16.msgh_remote_port)
  {
LABEL_23:
    v10 = -300;
    goto LABEL_24;
  }

  v10 = v18;
  if (v18)
  {
    goto LABEL_24;
  }

  v14 = *__n;
  v10 = -300;
  if (*__n > 0x1000u || v16.msgh_size - 40 < *__n || v16.msgh_size != ((*__n + 3) & 0x3FFC) + 40)
  {
    goto LABEL_24;
  }

  v15 = *contentCnt;
  if (*__n <= v15)
  {
    memmove(content, &__n[4], *__n);
    v10 = 0;
    *contentCnt = v14;
  }

  else
  {
    memmove(content, &__n[4], v15);
    *contentCnt = v14;
    return -307;
  }

  return v10;
}

uint64_t _kernelrpc_mach_voucher_extract_attr_recipe(unsigned int a1, unsigned int a2, void *a3, int *a4)
{
  v17 = NDR_record;
  v7 = *a4;
  if (*a4 >= 0x1000)
  {
    v7 = 4096;
  }

  memset(&__n[4], 0, 472);
  v18 = a2;
  *__n = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, a1);
  *&v16.msgh_voucher_port = 0x151900000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, a1), 0x151900000000, (reply_port << 32), 0x1030, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    return v10;
  }

  if (v9)
  {
    mig_dealloc_reply_port(v16.msgh_local_port);
    return v10;
  }

  if (v16.msgh_id == 71)
  {
    v10 = 4294966988;
LABEL_24:
    mach_msg_destroy(&v16);
    return v10;
  }

  if (v16.msgh_id != 5501)
  {
    v10 = 4294966995;
    goto LABEL_24;
  }

  if ((v16.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v16.msgh_size - 4137 <= 0xFFFFEFFE)
  {
    if (v18)
    {
      v11 = v16.msgh_remote_port == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && v16.msgh_size == 36)
    {
      v10 = v18;
    }

    else
    {
      v10 = 4294966996;
    }

    goto LABEL_24;
  }

  if (v16.msgh_remote_port)
  {
LABEL_23:
    v10 = 4294966996;
    goto LABEL_24;
  }

  v10 = v18;
  if (v18)
  {
    goto LABEL_24;
  }

  v14 = *__n;
  v10 = 4294966996;
  if (*__n > 0x1000u || v16.msgh_size - 40 < *__n || v16.msgh_size != ((*__n + 3) & 0x3FFC) + 40)
  {
    goto LABEL_24;
  }

  v15 = *a4;
  if (*__n <= v15)
  {
    memmove(a3, &__n[4], *__n);
    v10 = 0;
    *a4 = v14;
  }

  else
  {
    memmove(a3, &__n[4], v15);
    *a4 = v14;
    return 4294966989;
  }

  return v10;
}

kern_return_t mach_voucher_extract_all_attr_recipes(ipc_voucher_t voucher, mach_voucher_attr_raw_recipe_array_t recipes, mach_msg_type_number_t *recipesCnt)
{
  v16 = NDR_record;
  v6 = *recipesCnt;
  v32 = 0u;
  v33 = 0u;
  if (v6 >= 0x1400)
  {
    v6 = 5120;
  }

  v34 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = 0uLL;
  memset(v46, 0, sizeof(v46));
  *__n = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v17 = v6;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 0x2400001513;
  *&v15.msgh_remote_port = __PAIR64__(reply_port, voucher);
  *&v15.msgh_voucher_port = 0x151A00000000;
  v8 = mach_msg2_internal(&v15, 0x200000003, 0x2400001513, __PAIR64__(reply_port, voucher), 0x151A00000000, (reply_port << 32), 0x1430, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v9;
  }

  if (v15.msgh_id == 71)
  {
    v9 = -308;
LABEL_24:
    mach_msg_destroy(&v15);
    return v9;
  }

  if (v15.msgh_id != 5502)
  {
    v9 = -301;
    goto LABEL_24;
  }

  if ((v15.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v15.msgh_size - 5161 <= 0xFFFFEBFE)
  {
    if (v17)
    {
      v10 = v15.msgh_remote_port == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && v15.msgh_size == 36)
    {
      v9 = v17;
    }

    else
    {
      v9 = -300;
    }

    goto LABEL_24;
  }

  if (v15.msgh_remote_port)
  {
LABEL_23:
    v9 = -300;
    goto LABEL_24;
  }

  v9 = v17;
  if (v17)
  {
    goto LABEL_24;
  }

  v13 = __n[0];
  v9 = -300;
  if (LODWORD(__n[0]) > 0x1400 || v15.msgh_size - 40 < LODWORD(__n[0]) || v15.msgh_size != ((LOWORD(__n[0]) + 3) & 0x3FFC) + 40)
  {
    goto LABEL_24;
  }

  v14 = *recipesCnt;
  if (LODWORD(__n[0]) <= v14)
  {
    memmove(recipes, __n + 4, LODWORD(__n[0]));
    v9 = 0;
    *recipesCnt = v13;
  }

  else
  {
    memmove(recipes, __n + 4, v14);
    *recipesCnt = v13;
    return -307;
  }

  return v9;
}

kern_return_t mach_voucher_debug_info(ipc_space_read_t task, mach_port_name_t voucher_name, mach_voucher_attr_raw_recipe_array_t recipes, mach_msg_type_number_t *recipesCnt)
{
  v17 = NDR_record;
  v7 = *recipesCnt;
  if (*recipesCnt >= 0x1400)
  {
    v7 = 5120;
  }

  memset(&__n[4], 0, 472);
  v18 = voucher_name;
  *__n = v7;
  reply_port = mig_get_reply_port();
  *&v16.msgh_bits = 0x2800001513;
  *&v16.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v16.msgh_voucher_port = 0x151C00000000;
  v9 = mach_msg2_internal(&v16, 0x200000003, 0x2800001513, __PAIR64__(reply_port, task), 0x151C00000000, (reply_port << 32), 0x1430, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    return v10;
  }

  if (v9)
  {
    mig_dealloc_reply_port(v16.msgh_local_port);
    return v10;
  }

  if (v16.msgh_id == 71)
  {
    v10 = -308;
LABEL_24:
    mach_msg_destroy(&v16);
    return v10;
  }

  if (v16.msgh_id != 5504)
  {
    v10 = -301;
    goto LABEL_24;
  }

  if ((v16.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (v16.msgh_size - 5161 <= 0xFFFFEBFE)
  {
    if (v18)
    {
      v11 = v16.msgh_remote_port == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && v16.msgh_size == 36)
    {
      v10 = v18;
    }

    else
    {
      v10 = -300;
    }

    goto LABEL_24;
  }

  if (v16.msgh_remote_port)
  {
LABEL_23:
    v10 = -300;
    goto LABEL_24;
  }

  v10 = v18;
  if (v18)
  {
    goto LABEL_24;
  }

  v14 = *__n;
  v10 = -300;
  if (*__n > 0x1400u || v16.msgh_size - 40 < *__n || v16.msgh_size != ((*__n + 3) & 0x3FFC) + 40)
  {
    goto LABEL_24;
  }

  v15 = *recipesCnt;
  if (*__n <= v15)
  {
    memmove(recipes, &__n[4], *__n);
    v10 = 0;
    *recipesCnt = v14;
  }

  else
  {
    memmove(recipes, &__n[4], v15);
    *recipesCnt = v14;
    return -307;
  }

  return v10;
}

void abort(void)
{
  v0 = getpid();
  __kill(v0, 6);
  _exit(1);
}

void abort_with_payload_wrapper_internal(void *a1, void *a2, void *a3, void *a4, void *a5, unint64_t a6)
{
  v16 = 32;
  sigprocmask(2, &v16, 0);
  __abort_with_payload(a1, a2, a3, a4, a5, a6, v12, v13);
  v14 = getpid();
  terminate_with_payload(v14, a1, a2, a3, a4, a5, (a6 | 0x200), v15);
  __break(1u);
}
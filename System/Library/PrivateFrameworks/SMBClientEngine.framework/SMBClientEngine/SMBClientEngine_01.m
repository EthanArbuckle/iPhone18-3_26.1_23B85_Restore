void smb2_smb_parse_create_str(void *a1, int a2, UInt8 **a3)
{
  LODWORD(size) = 0;
  if (md_get_uint32le(a1, &size))
  {
    return;
  }

  if (a2)
  {
    v6 = 2048;
  }

  else
  {
    v6 = 510;
  }

  if (!size)
  {
    *a3 = 0;
    return;
  }

  if (size > v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_create_str_cold_4(&size);
    }

    return;
  }

  v7 = malloc_type_malloc(size, 0x52565EA4uLL);
  if (v7)
  {
    v8 = v7;
    if (md_get_mem(a1, v7, size, 0))
    {
LABEL_26:
      free(v8);
      return;
    }

    v9 = size;
    v13 = size;
    if (a2)
    {
      v12 = 9 * size + 1;
      v10 = malloc_type_malloc(v12, 0x4ADEC192uLL);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_25;
      }

      bzero(v10, 9 * v9 + 1);
      if (!smb_convert_network_to_path(v8, v9, v11, &v12, 92, 32, 1))
      {
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_create_str_cold_1();
      }

      free(v11);
    }

    else
    {
      v11 = smbfs_ntwrkname_tolocal(v8, &v13, 1);
      if (v11)
      {
LABEL_25:
        *a3 = v11;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_create_str_cold_2();
      }
    }

    v11 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_parse_create_str_cold_3(&size);
  }
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(result + 4) = a4;
  *(result + 12) = 1024;
  *(result + 14) = a2;
  *(result + 18) = 1024;
  *(result + 20) = a3;
  return result;
}

uint64_t piston_hexdump(const char *a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  result = printf("%s: %s %p length %ld \n", a1, a2, a3, a4);
  v23 = a3;
  if (a3)
  {
    if (v4 >= 1)
    {
      v7 = 0;
      v8 = v4 & 0x7FFFFFFF;
      v22 = v4;
      do
      {
        v9 = snprintf(__str, 0x200uLL, "%6.6x - ", v7);
        v10 = 0;
        v11 = &__str[v9];
        v12 = (512 - v9);
        do
        {
          if (v7 + v10 >= v8)
          {
            v14 = snprintf(v11, v12, "   ");
          }

          else
          {
            v13 = v23[v7 + v10];
            v14 = snprintf(v11, v12, "%2.2x ");
          }

          v11 += v14;
          v12 = (&__str[v12] - v11);
          ++v10;
        }

        while (v10 != 16);
        v15 = 0;
        v16 = &v11[snprintf(v11, v12, " ")];
        v17 = (&__str[v12] - v16);
        v18 = &v23[v7];
        do
        {
          if (v7 + v15 < v8)
          {
            if (v18[v15] - 26 > 0x63)
            {
              v19 = snprintf(v16, v17, ".");
            }

            else
            {
              v21 = v18[v15];
              v19 = snprintf(v16, v17, "%c");
            }

            v16 += v19;
            v17 = (&__str[v17] - v16);
          }

          ++v15;
        }

        while (v15 != 16);
        printf("%s \n", __str);
        v7 += 16;
      }

      while (v7 < v22);
    }

    result = puts(" ");
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void piston_lease_break_ack(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 sock];

  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_lease_break_ack_cold_2();
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    v6[2](v6, 57);
    goto LABEL_8;
  }

  if (smb2_smb_lease_break_ack(v5, a2, v6) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_lease_break_ack_cold_1();
  }

LABEL_8:
}

uint64_t smb2_smb_lease_break_ack(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 getShare:*a2];
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_lease_break_ack_cold_2(a2);
      if (v6)
      {
        goto LABEL_9;
      }
    }

    else if (v6)
    {
LABEL_9:
      v9 = 22;
      v6[2](v6, 22);
      v11 = 0;
      goto LABEL_19;
    }

    v11 = 0;
    v9 = 22;
    goto LABEL_19;
  }

  v22 = 0;
  v9 = smb2_rq_alloc(18, [v7 tree_id], objc_msgSend(v7, "isEncrypted"), 0, v5, &v22);
  v10 = v22;
  v11 = v10;
  if (!v9)
  {
    v12 = [(SMB_rq *)v10 smb_rq_getrequest];
    mb_put_uint16le(v12, 36);
    mb_put_uint16le(v12, 0);
    mb_put_uint32le(v12, 0);
    mb_put_uint64le(v12, *(a2 + 1));
    mb_put_uint64le(v12, *(a2 + 2));
    mb_put_uint32le(v12, a2[6]);
    mb_put_uint64le(v12, 0);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __smb2_smb_lease_break_ack_block_invoke;
    v18 = &unk_279B4F628;
    v13 = v6;
    v20 = v13;
    v21 = a2;
    v11 = v11;
    v19 = v11;
    v9 = smb_rq_simple_block(v5, v11, &v15);
    if (!v9)
    {
LABEL_16:

      goto LABEL_19;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_lease_break_ack_cold_1();
      if (!v11)
      {
LABEL_14:
        if (v13)
        {
          v13[2](v13, v9);
        }

        goto LABEL_16;
      }
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    [(SMB_rq *)v11 smb_rq_done:v15];
    goto LABEL_14;
  }

  if (v10)
  {
    [(SMB_rq *)v10 smb_rq_done];
  }

  if (v6)
  {
    v6[2](v6, v9);
  }

LABEL_19:

  return v9;
}

void __smb2_smb_lease_break_ack_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  v5 = (a1 + 32);
  v6 = [*(a1 + 32) sr_ntstatus];
  v8 = *(a1 + 48);
  v7 = a1 + 48;
  *(v8 + 28) = v6;
  if (!a2)
  {
    v9 = [*v5 smb_rq_getreply];
    uint16le = md_get_uint16le(v9, &v15 + 1);
    if (uint16le)
    {
LABEL_5:
      a2 = uint16le;
      goto LABEL_6;
    }

    if (HIWORD(v15) == 36)
    {
      uint16le = md_get_uint16le(v9, &v15);
      if (uint16le)
      {
        goto LABEL_5;
      }

      uint16le = md_get_uint32le(v9, 0);
      if (uint16le)
      {
        goto LABEL_5;
      }

      uint16le = md_get_uint64le(v9, &v13);
      if (uint16le)
      {
        goto LABEL_5;
      }

      *(*v7 + 32) = v13;
      uint16le = md_get_uint64le(v9, &v13);
      if (uint16le)
      {
        goto LABEL_5;
      }

      v11 = v13;
      v12 = *v7;
      v12[5] = v13;
      if (v12[1] == v12[4] && v12[2] == v11)
      {
        uint16le = md_get_uint32le(v9, &v14);
        if (!uint16le)
        {
          *(*v7 + 48) = v14;
          uint16le = md_get_uint64le(v9, 0);
        }

        goto LABEL_5;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __smb2_smb_lease_break_ack_block_invoke_cold_3(v7);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_lease_break_ack_block_invoke_cold_2(&v15 + 1);
    }

    a2 = 72;
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __smb2_smb_lease_break_ack_block_invoke_cold_1(v5);
  }

LABEL_6:
  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, a2);
  }
}

uint64_t smb2_smb_parse_lease_break(void *a1, void *a2)
{
  v3 = a1;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v4 = [v3 sock];
  v5 = [v4 getEventHandler];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_lease_break_cold_4();
    }

    mbuf_freem(a2);
LABEL_8:
    v8 = 0;
    goto LABEL_19;
  }

  v6 = objc_alloc_init(SMBPistonEvents);
  if (v6)
  {
    v7 = v6;
    v34 = 0;
    v8 = smb2_rq_alloc(18, 0, 0, 0, v3, &v34);
    v9 = v34;
    v10 = v9;
    if (v8)
    {
      mbuf_freem(a2);
LABEL_18:

      goto LABEL_19;
    }

    v38 = [(SMB_rq *)v9 smb_rq_getreply];
    md_initm(v38, a2);
    v11 = smb2_rq_parse_header(v10, &v38);
    if (v11)
    {
      v8 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_lease_break_cold_1();
      }

      goto LABEL_17;
    }

    uint16le = md_get_uint16le(v38, &v37 + 1);
    if (uint16le)
    {
LABEL_16:
      v8 = uint16le;
LABEL_17:
      [(SMB_rq *)v10 smb_rq_done];
      goto LABEL_18;
    }

    if (HIWORD(v37) == 44)
    {
      uint16le = md_get_uint16le(v38, &v37);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v14 = v37;
      uint16le = md_get_uint32le(v38, &v36);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v15 = v36;
      uint16le = md_get_uint64le(v38, &v35);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v16 = v35;
      uint16le = md_get_uint64le(v38, &v35);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v17 = v35;
      uint16le = md_get_uint32le(v38, &v36);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v18 = v36;
      uint16le = md_get_uint32le(v38, &v36);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v19 = v36;
      uint16le = md_get_uint32le(v38, 0);
      if (uint16le)
      {
        goto LABEL_16;
      }

      uint16le = md_get_uint32le(v38, 0);
      if (uint16le)
      {
        goto LABEL_16;
      }

      uint16le = md_get_uint32le(v38, 0);
      if (uint16le)
      {
        goto LABEL_16;
      }

      v28[0] = v14;
      v28[1] = 0;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      [(SMBPistonEvents *)v7 setLeaseBreak:v28];
      v20 = [v3 sock];
      v21 = [v20 recv_queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __smb2_smb_parse_lease_break_block_invoke;
      block[3] = &unk_279B4F8A8;
      v25 = v3;
      v26 = v7;
      v27 = v10;
      v22 = v10;
      v23 = v7;
      dispatch_async(v21, block);

      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_lease_break_cold_2(&v37 + 1);
    }

    [(SMB_rq *)v10 smb_rq_done];

    v8 = 72;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_lease_break_cold_3();
    }

    mbuf_freem(a2);
    v8 = 12;
  }

LABEL_19:

  return v8;
}

uint64_t __smb2_smb_parse_lease_break_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sock];
  [v2 callEventHandler:8 contextPtr:*(a1 + 40) returnValue:0];

  v3 = *(a1 + 48);

  return [v3 smb_rq_done];
}

void piston_lock(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 pd];
  v8 = [v7 sock];

  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_lock_cold_4();
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    else if (!v6)
    {
      goto LABEL_28;
    }

    v6[2](v6, 57);
    goto LABEL_28;
  }

  v9 = v5;
  v10 = v6;
  v11 = *a2;
  if (v11 < 3)
  {
    v12 = dword_2642C0A70[v11];
    v13 = [v9 treeID];
    v14 = [v9 onEncryptedShare];
    v15 = [v9 pd];
    v29 = 0;
    v16 = smb2_rq_alloc(10, v13, v14, 0, v15, &v29);
    v17 = v29;

    if (v16)
    {
      if (v17)
      {
        [(SMB_rq *)v17 smb_rq_done];
      }

      if (v10)
      {
        v10[2](v10, v16);
      }

      goto LABEL_25;
    }

    [(SMB_rq *)v17 smb_rq_set_extflag:8];
    v18 = [(SMB_rq *)v17 smb_rq_getrequest];
    mb_put_uint16le(v18, 48);
    mb_put_uint16le(v18, 1);
    mb_put_uint32le(v18, 0);
    mb_put_uint64le(v18, [v9 fid]);
    [v9 fid];
    mb_put_uint64le(v18, v19);
    mb_put_uint64le(v18, *(a2 + 1));
    mb_put_uint64le(v18, *(a2 + 2));
    mb_put_uint32le(v18, v12);
    mb_put_uint32le(v18, 0);
    v20 = [v9 pd];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __smb2_smb_lock_block_invoke;
    v25 = &unk_279B4F628;
    v21 = v10;
    v27 = v21;
    v28 = a2;
    v17 = v17;
    v26 = v17;
    v16 = smb_rq_simple_block(v20, v17, &v22);

    if (!v16)
    {
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_lock_cold_2();
      if (!v17)
      {
LABEL_18:
        if (v21)
        {
          v21[2](v21, v16);
        }

LABEL_20:

        goto LABEL_25;
      }
    }

    else if (!v17)
    {
      goto LABEL_18;
    }

    [(SMB_rq *)v17 smb_rq_done:v22];
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_lock_cold_1();
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_24:
    v17 = 0;
    LODWORD(v16) = 22;
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_13:
  LODWORD(v16) = 22;
  v10[2](v10, 22);
  v17 = 0;
LABEL_25:

  if (v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_lock_cold_3();
  }

LABEL_28:
}

void __smb2_smb_lock_block_invoke(uint64_t a1, uint64_t uint16le)
{
  v8 = 0;
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v5 + 16) + 24) = [v6 sr_ntstatus];
  if (uint16le)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_lock_block_invoke_cold_1(v5);
    }
  }

  else
  {
    v7 = [*v5 smb_rq_getreply];
    uint16le = md_get_uint16le(v7, &v8 + 1);
    if (!uint16le)
    {
      if (HIWORD(v8) == 4)
      {
        uint16le = md_get_uint16le(v7, &v8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __smb2_smb_lock_block_invoke_cold_2(&v8 + 1);
        }

        uint16le = 72;
      }
    }
  }

  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, uint16le);
  }
}

void piston_ioctl(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  if (smb2_smb_ioctl(a1, a2, a3, a4, a7, a5, a6, a8, a9, 0, a10))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_ioctl_cold_1();
    }
  }
}

uint64_t smb2_smb_ioctl(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, SMB_rq **a10, void *a11)
{
  v86 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = a2;
  v66 = a5;
  v68 = a6;
  v67 = a7;
  v65 = a8;
  v20 = a11;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  __n = 0;
  v80 = 0;
  v21 = v18;
  v22 = v21;
  if (v19)
  {
    v23 = [v19 pd];

    v24 = [v19 treeID];
    v25 = [v19 onEncryptedShare];
    v26 = 0;
  }

  else
  {
    v27 = [v21 getShare:a3];
    v26 = v27;
    if (!v27)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_ioctl_cold_17();
      }

      if (v20)
      {
        v30 = 22;
        v20[2](v20, 22);
        v26 = 0;
        v32 = 0;
      }

      else
      {
        v26 = 0;
        v32 = 0;
        v30 = 22;
      }

      v23 = v22;
      goto LABEL_156;
    }

    v24 = [v27 tree_id];
    v25 = [v26 isEncrypted];
    v23 = v22;
  }

  v28 = [v23 sock];
  v29 = v28 == 0;

  if (v29)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_ioctl_cold_16();
    }

    if (v20)
    {
      v20[2](v20, 57);
    }

    v32 = 0;
    v30 = 100;
    goto LABEL_156;
  }

  v78 = 0;
  v30 = smb2_rq_alloc(11, v24, v25, 0, v23, &v78);
  v31 = v78;
  v32 = v31;
  if (!v30)
  {
    v33 = [(SMB_rq *)v31 smb_rq_getrequest];
    mb_put_uint16le(v33, 57);
    mb_put_uint16le(v33, 0);
    v64 = (a4 + 4);
    mb_put_uint32le(v33, *(a4 + 4));
    v34 = *(a4 + 4);
    if (v34 == 393620 || v34 == 1311236 || v34 == 1114136 || a10)
    {
      v35 = -1;
      mb_put_uint64le(v33, -1);
    }

    else
    {
      mb_put_uint64le(v33, [v19 fid]);
      [v19 fid];
      v35 = v49;
    }

    mb_put_uint64le(v33, v35);
    v36 = *v64;
    if (*v64 > 1163286)
    {
      if (v36 > 1311235)
      {
        if (v36 == 1311236)
        {
          [(SMB_rq *)v32 smb_rq_set_srflags:1024];
          v45 = *(a4 + 22);
          mb_put_uint32le(v33, 120);
          mb_put_uint32le(v33, 2 * v45 + 24);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, 40);
          mb_put_uint32le(v33, 1);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, *(a4 + 16));
          *mb_reserve(v33, 0x10uLL) = *(a4 + 40);
          mb_put_uint16le(v33, *(a4 + 20));
          mb_put_uint16le(v33, *(a4 + 22));
          if (*(a4 + 22))
          {
            v46 = 0;
            do
            {
              mb_put_uint16le(v33, *(a4 + 24 + 2 * v46++));
            }

            while (v46 < *(a4 + 22));
          }

          goto LABEL_74;
        }

        if (v36 == 1327346)
        {
          if (v68)
          {
            v40 = [v68 length];
            mb_put_uint32le(v33, 120);
            mb_put_uint32le(v33, v40);
            mb_put_uint32le(v33, 0);
            mb_put_uint32le(v33, 0);
            mb_put_uint32le(v33, 0);
            mb_put_uint32le(v33, [v67 length]);
            mb_put_uint32le(v33, 1);
            mb_put_uint32le(v33, 0);
            v41 = v68;
            mb_put_mem(v33, [v68 bytes], v40, 0);
            if ((*([v23 getSessionPtr] + 560) & 0x40) != 0)
            {
              [(SMB_rq *)v32 smb_rq_set_srflags:512];
            }

            goto LABEL_74;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_ioctl_cold_2();
          }

          if (!v32)
          {
            goto LABEL_141;
          }

          goto LABEL_140;
        }

        goto LABEL_84;
      }

      if (v36 == 1163287)
      {
        if (v68 && v67)
        {
          if ([v68 length])
          {
            mb_put_uint32le(v33, 120);
            mb_put_uint32le(v33, [v68 length]);
            mb_put_uint32le(v33, 0);
            mb_put_uint32le(v33, 0);
            mb_put_uint32le(v33, 0);
            mb_put_uint32le(v33, [v67 length]);
            mb_put_uint32le(v33, 1);
            mb_put_uint32le(v33, 0);
            v44 = v68;
            mb_put_mem(v33, [v68 bytes], objc_msgSend(v68, "length"), 0);
            goto LABEL_74;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_ioctl_cold_8();
          }

          if (!v32)
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_ioctl_cold_9();
          }

          if (!v32)
          {
            goto LABEL_141;
          }
        }

        goto LABEL_140;
      }

      if (v36 != 1310840)
      {
LABEL_84:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_ioctl_cold_15(v64);
        }

        if (!v32)
        {
          goto LABEL_141;
        }

        goto LABEL_140;
      }

      if (!v67)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_ioctl_cold_1();
        }

        if (!v32)
        {
          goto LABEL_141;
        }

        goto LABEL_140;
      }

      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      v38 = [v67 length];
    }

    else
    {
      if (v36 <= 589991)
      {
        if (v36 == 393620)
        {
          if (!v66 || !v67)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_smb_ioctl_cold_14();
            }

            if (!v32)
            {
              goto LABEL_148;
            }

            goto LABEL_147;
          }

          cstring_len = smb_get_cstring_len(v66, &__n + 1);
          v43 = HIDWORD(__n);
          mb_put_uint32le(v33, 120);
          mb_put_uint32le(v33, v43 + 4);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, 0);
          mb_put_uint32le(v33, [v67 length]);
          mb_put_uint32le(v33, 1);
          mb_put_uint32le(v33, 0);
          mb_put_uint16le(v33, *(a4 + 8));
          if (cstring_len)
          {
            v30 = mb_put_mem(v33, cstring_len, HIDWORD(__n), 0);
            if (v30)
            {
              if (v32)
              {
                [(SMB_rq *)v32 smb_rq_done];
              }

              if (v20)
              {
                goto LABEL_170;
              }

              goto LABEL_156;
            }

            mb_put_uint16le(v33, 0);
            goto LABEL_74;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_ioctl_cold_13();
          }

          if (v32)
          {
LABEL_147:
            [(SMB_rq *)v32 smb_rq_done];
          }

LABEL_148:
          v30 = 22;
          if (v20)
          {
            v20[2](v20, 22);
          }

          goto LABEL_156;
        }

        if (v36 == 589988)
        {
          if (v66)
          {
            v37 = smb_get_cstring_len(v66, &__n);
            if ((__n - 32761) <= 0xFFFF8007)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_smb_ioctl_cold_3();
              }

              if (!v32)
              {
                goto LABEL_141;
              }

              goto LABEL_140;
            }

            v51 = v37;
            v80 = 2 * __n + 2;
            v52 = malloc_type_malloc(v80, 0xC0223181uLL);
            v53 = v52;
            if (v52)
            {
              bzero(v52, v80);
              v30 = smb_convert_path_to_network(v51, __n, v53, &v80, 92, 32, 1);
              if (v30)
              {
                free(v53);
                if (v32)
                {
                  [(SMB_rq *)v32 smb_rq_done];
                }

                if (v20)
                {
                  goto LABEL_170;
                }

                goto LABEL_156;
              }

              [(SMB_rq *)v32 smb_rq_set_extflag:8];
              v61 = v80;
              mb_put_uint32le(v33, 120);
              LODWORD(__src) = 2 * v61 + 12;
              mb_put_uint32le(v33, (2 * v61 + 12) + 8);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 1);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, -1610612724);
              mb_put_uint16le(v33, __src);
              mb_put_uint16le(v33, 0);
              mb_put_uint16le(v33, 0);
              mb_put_uint16le(v33, v61);
              mb_put_uint16le(v33, v61);
              mb_put_uint16le(v33, v61);
              mb_put_uint32le(v33, *v53 != 92);
              mb_put_mem(v33, v53, v61, 0);
              mb_put_mem(v33, v53, v61, 0);
              free(v53);
LABEL_74:
              if (a10)
              {
                smb2_rq_align8(v32);
                [(SMB_rq *)v32 smb_rq_set_srflags:256];
                v47 = v32;
                v30 = 0;
                *a10 = v32;
              }

              else if (v20)
              {
                v69[0] = MEMORY[0x277D85DD0];
                v69[1] = 3221225472;
                v69[2] = __smb2_smb_ioctl_block_invoke;
                v69[3] = &unk_279B4F718;
                v48 = v20;
                v75 = v48;
                v77 = a4;
                v32 = v32;
                v70 = v32;
                v76 = &v81;
                v23 = v23;
                v71 = v23;
                v72 = v66;
                v73 = v68;
                v74 = v67;
                v30 = smb_rq_simple_block(v23, v32, v69);
                if (v30)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    smb2_smb_ioctl_cold_11();
                  }

                  if (v32)
                  {
                    [(SMB_rq *)v32 smb_rq_done];
                  }

                  v48[2](v48, v30);
                }
              }

              else
              {
                v30 = smb_rq_simple(v23, v32);
                *(a4 + 12) = [(SMB_rq *)v32 sr_ntstatus];
                if (v30)
                {
                  if (*v64 == 1327346 && v30 == 22)
                  {
                    v50 = [(SMB_rq *)v32 smb_rq_getreply];
                    v82[3] = v50;
                    smb2_smb_parse_ioctl_internal(v23, v50, a4, v66, v67);
                    v30 = 22;
                  }

                  else
                  {
                    v57 = MEMORY[0x277D86220];
                    v58 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                    {
                      smb2_smb_ioctl_cold_12(buf, v30, [(SMB_rq *)v32 sr_ntstatus]);
                    }
                  }
                }

                else
                {
                  v56 = [(SMB_rq *)v32 smb_rq_getreply];
                  v82[3] = v56;
                  v30 = smb2_smb_parse_ioctl_internal(v23, v56, a4, v66, v67);
                }

                [(SMB_rq *)v32 smb_rq_done];
              }

              goto LABEL_156;
            }

            if (v32)
            {
              [(SMB_rq *)v32 smb_rq_done];
            }

LABEL_162:
            v30 = 12;
            if (v20)
            {
              v20[2](v20, 12);
            }

            goto LABEL_156;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_ioctl_cold_4();
          }

          if (v32)
          {
            goto LABEL_147;
          }

          goto LABEL_148;
        }

        goto LABEL_84;
      }

      if (v36 != 589992)
      {
        if (v36 == 1114136)
        {
          if (!v65)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_smb_ioctl_cold_7();
            }

            if (!v32)
            {
              goto LABEL_148;
            }

            goto LABEL_147;
          }

          v39 = smb_get_cstring_len(v65, &__n);
          if (!v39)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_smb_ioctl_cold_6();
            }

            if (!v32)
            {
              goto LABEL_148;
            }

            goto LABEL_147;
          }

          if ((__n - 32761) > 0xFFFF8007)
          {
            v80 = 2 * __n + 2;
            v54 = malloc_type_malloc(v80, 0xDC9DB7BCuLL);
            __src = v54;
            v55 = v54;
            if (v54)
            {
              bzero(v54, v80);
              v30 = smb_convert_path_to_network(v39, __n, v55, &v80, 92, 32, 1);
              if (v30)
              {
                free(__src);
                if (v32)
                {
                  [(SMB_rq *)v32 smb_rq_done];
                }

                if (v20)
                {
                  goto LABEL_170;
                }

                goto LABEL_156;
              }

              v62 = v80;
              mb_put_uint32le(v33, 120);
              mb_put_uint32le(v33, v62 + 14);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 0);
              mb_put_uint32le(v33, 1);
              mb_put_uint32le(v33, 0);
              mb_put_uint64le(v33, a9);
              mb_put_uint32le(v33, v80);
              mb_put_uint8(v33, a9 != 0);
              mb_put_uint8(v33, 0);
              v30 = mb_put_mem(v33, __src, v80, 0);
              free(__src);
              if (v30)
              {
                if (v32)
                {
                  [(SMB_rq *)v32 smb_rq_done];
                }

                if (v20)
                {
                  goto LABEL_170;
                }

                goto LABEL_156;
              }

              goto LABEL_74;
            }

            if (v32)
            {
              [(SMB_rq *)v32 smb_rq_done];
            }

            goto LABEL_162;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_ioctl_cold_5();
          }

          if (!v32)
          {
            goto LABEL_141;
          }

LABEL_140:
          [(SMB_rq *)v32 smb_rq_done];
LABEL_141:
          v30 = 72;
          if (v20)
          {
            v20[2](v20, 72);
          }

          goto LABEL_156;
        }

        goto LABEL_84;
      }

      if (!v66)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_ioctl_cold_4();
        }

        if (!v32)
        {
          goto LABEL_148;
        }

        goto LABEL_147;
      }

      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      mb_put_uint32le(v33, 0);
      v38 = 0x10000;
    }

    mb_put_uint32le(v33, v38);
    mb_put_uint32le(v33, 1);
    mb_put_uint32le(v33, 0);
    goto LABEL_74;
  }

  if (v31)
  {
    [(SMB_rq *)v31 smb_rq_done];
  }

  if (v20)
  {
LABEL_170:
    v20[2](v20, v30);
  }

LABEL_156:

  _Block_object_dispose(&v81, 8);
  v59 = *MEMORY[0x277D85DE8];
  return v30;
}

void piston_validate_negotiate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2020000000;
  v25 = 0;
  v9 = [v7 getSessionPtr];
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_validate_negotiate_cold_4();
    }

    v13 = v24[0];
    v14 = 22;
LABEL_11:
    *(v13 + 24) = v14;
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v9 + 552) & 0xC07000) != 0x1000)
  {
    v14 = 0;
    *(v24[0] + 24) = 0;
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v11 = [v7 sock];

  if (v11)
  {
    *(a2 + 16) = *(v10 + 172);
    *(a2 + 40) = *(v10 + 176);
    v12 = *(v10 + 194);
    *(a2 + 20) = *(v10 + 192);
    if (v12 >= 6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_validate_negotiate_cold_2((v10 + 194));
      }

      v13 = v24[0];
      v14 = 12;
      goto LABEL_11;
    }

    *(a2 + 22) = v12;
    if (v12)
    {
      v15 = 0;
      do
      {
        *(a2 + 24 + 2 * v15) = *(v10 + 196 + 2 * v15);
        ++v15;
      }

      while (v15 < *(v10 + 194));
    }

    *(a2 + 4) = 1311236;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __piston_validate_negotiate_block_invoke;
    v18[3] = &unk_279B4F8D0;
    v20 = &v23;
    v21 = a2;
    v22 = v10;
    v16 = v8;
    v19 = v16;
    v17 = smb2_smb_ioctl(v7, 0, a3, a2, 0, 0, 0, 0, 0, 0, v18);
    *(v24[0] + 24) = v17;
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_validate_negotiate_cold_1(v24);
        if (v16)
        {
LABEL_26:
          if (*(v24[0] + 24))
          {
            v16[2](v16);
          }
        }
      }

      else if (v16)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_validate_negotiate_cold_3();
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v8)
  {
LABEL_17:
    v14 = 57;
LABEL_18:
    (*(v8 + 2))(v8, v14);
  }

LABEL_19:
  _Block_object_dispose(&v23, 8);
}

void sub_26429B660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __piston_validate_negotiate_block_invoke(void *a1, int a2)
{
  v3 = a1 + 5;
  *(*(a1[5] + 8) + 24) = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 24);
  if (!v5)
  {
    v9 = a1[6];
    v8 = a1[7];
    if (*(v9 + 56) != *(v8 + 76))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_validate_negotiate_block_invoke_cold_2();
      }

      goto LABEL_23;
    }

    if (*(v9 + 40) != *(v8 + 92) || *(v9 + 48) != *(v8 + 100))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_validate_negotiate_block_invoke_cold_3();
      }

      goto LABEL_23;
    }

    if (*(v9 + 60) != *(v8 + 108))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_validate_negotiate_block_invoke_cold_4();
      }

      goto LABEL_23;
    }

    v12 = *(v9 + 64);
    if (v12 > 767)
    {
      if (v12 == 768)
      {
        if ((*(v8 + 553) & 0x18) != 0)
        {
          goto LABEL_24;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        goto LABEL_23;
      }

      if (v12 == 770)
      {
        if ((*(v8 + 553) & 0x90) != 0)
        {
          goto LABEL_24;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v12 == 514)
      {
        if ((*(v8 + 553) & 0x30) != 0)
        {
          goto LABEL_24;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        goto LABEL_23;
      }

      if (v12 == 528)
      {
        if ((*(v8 + 553) & 0x50) != 0)
        {
          goto LABEL_24;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_48:
          __piston_validate_negotiate_block_invoke_cold_5();
        }

LABEL_23:
        *(*(*v3 + 8) + 24) = 80;
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_validate_negotiate_block_invoke_cold_9();
    }

    goto LABEL_23;
  }

  if (v5 == 45 || v5 == 22)
  {
    if (piston_log_level)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_validate_negotiate_block_invoke_cold_1(v3);
      }

      v4 = *(*v3 + 8);
    }

    *(v4 + 24) = 0;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __piston_validate_negotiate_block_invoke_cold_10(v3);
  }

LABEL_24:
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(*v3 + 8) + 24));
  }

  return result;
}

uint64_t smb2_smb_parse_ioctl_internal(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v11 = [a1 getSessionPtr];
  uint16le = md_get_uint16le(a2, &v28 + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  if (HIWORD(v28) != 49)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_ioctl_internal_cold_1(&v28 + 1);
    }

    goto LABEL_21;
  }

  uint16le = md_get_uint16le(a2, &v28);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v27);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint64le(a2, &v25);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint64le(a2, &v26);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v24 + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v24);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v23 + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v23);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v22 + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &v22);
  if (uint16le)
  {
    goto LABEL_2;
  }

  if (v27 <= 1163286)
  {
    v13 = 0;
    if (v27 <= 589991)
    {
      if (v27 != 393620)
      {
        v15 = 589988;
        goto LABEL_35;
      }

      goto LABEL_48;
    }

    if (v27 != 589992)
    {
      v15 = 1114136;
LABEL_35:
      if (v27 == v15)
      {
        goto LABEL_3;
      }

      goto LABEL_71;
    }

    uint16le = smb2_smb_parse_get_reparse_point(v11, v9, a2);
LABEL_2:
    v13 = uint16le;
    goto LABEL_3;
  }

  if (v27 <= 1311235)
  {
    if (v27 == 1163287)
    {
LABEL_48:
      v16 = piston_log_level;
      if (v24 && piston_log_level)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_ioctl_internal_cold_4(&v24);
        }

        v16 = piston_log_level;
      }

      if (HIDWORD(v22) && v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_ioctl_internal_cold_10(&v22 + 1);
      }

      if (HIDWORD(v23))
      {
        HIDWORD(v23) -= 112;
        uint16le = md_get_mem(a2, 0, HIDWORD(v23), 0);
        if (uint16le)
        {
          goto LABEL_2;
        }
      }

      v17 = v23;
      if (v23)
      {
        if ([v10 length] >= v17)
        {
          v18 = v23;
        }

        else
        {
          v18 = [v10 length];
        }

        if (md_get_mem(a2, [v10 bytes], v18, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_ioctl_internal_cold_11();
          }

          v13 = 12;
        }

        else
        {
          v13 = 0;
        }

        [v10 setLength:v18];
      }

      else
      {
        [v10 setLength:0];
        v13 = 0;
      }

      goto LABEL_3;
    }

    if (v27 == 1310840)
    {
      if (v24 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_ioctl_internal_cold_4(&v24);
      }

      if (v23 == 32)
      {
        if (!HIDWORD(v23) || (HIDWORD(v23) -= 112, uint16le = md_get_mem(a2, 0, HIDWORD(v23), 0), !uint16le))
        {
          uint16le = smb2_smb_parse_get_resume_key(a2, v10);
        }

        goto LABEL_2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_ioctl_internal_cold_8(&v23);
      }

LABEL_21:
      v13 = 72;
      goto LABEL_3;
    }

    goto LABEL_71;
  }

  if (v27 == 1311236)
  {
    v19 = v23;
    if (v23 != 24 && piston_log_level)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_ioctl_internal_cold_2(&v23);
      }

      v19 = v23;
    }

    if (v19 > 0x17)
    {
      uint16le = md_get_uint32le(a2, &v20);
      if (!uint16le)
      {
        *(a3 + 56) = v20;
        uint16le = md_get_mem(a2, (a3 + 40), 0x10uLL, 0);
        if (!uint16le)
        {
          uint16le = md_get_uint16le(a2, &v21);
          if (!uint16le)
          {
            *(a3 + 60) = v21;
            *(a3 + 62) = 1;
            uint16le = md_get_uint16le(a2, (a3 + 64));
          }
        }
      }

      goto LABEL_2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_ioctl_internal_cold_3(&v23);
    }

    goto LABEL_21;
  }

  if (v27 != 1327346)
  {
LABEL_71:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_ioctl_internal_cold_12(&v27);
    }

    goto LABEL_21;
  }

  if (v24 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_parse_ioctl_internal_cold_4(&v24);
  }

  if (v23 != 12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_ioctl_internal_cold_5(&v23);
    }

    goto LABEL_21;
  }

  v13 = smb2_smb_parse_copychunk_response(a2, v10);
  if (v13 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_parse_ioctl_internal_cold_6();
  }

LABEL_3:

  return v13;
}

void __smb2_smb_ioctl_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x266734A50](*(a1 + 72));
  v5 = (a1 + 32);
  v6 = [*(a1 + 32) sr_ntstatus];
  v7 = *(a1 + 88);
  *(v7 + 12) = v6;
  if (a2)
  {
    if (a2 == 22 && *(v7 + 4) == 1327346)
    {
      *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
      smb2_smb_parse_ioctl_internal(*(a1 + 40), *(*(*(a1 + 80) + 8) + 24), *(a1 + 88), *(a1 + 48), *(a1 + 64));
      a2 = 22;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_ioctl_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    a2 = smb2_smb_parse_ioctl_internal(*(a1 + 40), *(*(*(a1 + 80) + 8) + 24), *(a1 + 88), *(a1 + 48), *(a1 + 64));
  }

  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, a2);
  }
}

uint64_t smb2_smb_parse_ioctl(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 pd];
  v15 = v14;
  if (v14)
  {
    v16 = smb2_smb_parse_ioctl_internal(v14, a2, a3, v11, v13);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_ioctl_cold_1();
    }

    v16 = 22;
  }

  return v16;
}

void piston_server_copy_file(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if ((*([v13 getSessionPtr] + 560) & 0x40) == 0 || (*(objc_msgSend(v13, "getSessionPtr") + 584) & 2) == 0)
  {
    v39 = a6;
    v40 = a5;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v49 = 0;
    v50 = 0;
    v21 = [v17 getShare:a2];
    if (v21)
    {
      v41 = v14;
      v22 = [[SMBNode alloc] init:v17];
      if (!v22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_server_copy_file_cold_1();
        }

        v20[2](v20, 12);
        v22 = 0;
      }

      v42 = v19;
      v44 = v22;
      v23 = [v22 commonInit:v17 onShareID:a2];
      if (v23)
      {
        v24 = v23;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_server_copy_file_cold_2();
        }

        v20[2](v20, v24);
      }

      v25 = [[SMBNode alloc] init:v17];
      if (!v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_server_copy_file_cold_3();
        }

        v20[2](v20, 12);
      }

      v43 = v18;
      v26 = [v25 commonInit:v17 onShareID:a2];
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_server_copy_file_cold_2();
        }

        v20[2](v20, v27);
      }

      v28 = malloc_type_malloc(0x18uLL, 0x1010040113C0ABBuLL);
      if (v28)
      {
        v29 = v28;
        if (([v21 file_system_attrs] & 0x40000) != 0)
        {
          fid = smb2_smb_create_fid(v44, v43, 0, 137, 1, 1, 1, 0, 0, 0, 0);
          if (fid)
          {
            v31 = fid;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_server_copy_file_cold_5();
            }

            free(v29);
            v20[2](v20, v31);

            v14 = v41;
            v19 = v42;
            goto LABEL_46;
          }

          v32 = smb2fs_smb_listxattrs(v44, &v50, &v49);
          if (v32)
          {
            v33 = v32;
            v19 = v42;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_server_copy_file_cold_6();
            }
          }

          else
          {
            v34 = smb2_smb_close_fid(v44, 0, 0);
            v19 = v42;
            if (!v34)
            {
              *v29 = 0;
              v29[1] = 0;
              v29[2] = 0;
              v35 = v50;
              v38 = v49;
              v45[0] = MEMORY[0x277D85DD0];
              v45[1] = 3221225472;
              v45[2] = __smb2fs_smb_copyfile_win_block_invoke;
              v45[3] = &unk_279B4F8F8;
              v47 = v50;
              v48 = v29;
              v46 = v20;
              v36 = v29;
              v18 = v43;
              v37 = v35;
              v19 = v42;
              smb2fs_smb_copyfile_win_xattr(v17, a2, v43, v42, v40, v36, v37, v38, 0, 0, v39, v45);

              v14 = v41;
              goto LABEL_47;
            }

            v33 = v34;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_server_copy_file_cold_7();
            }
          }

          if (v50)
          {
            free(v50);
          }

          free(v29);
          v20[2](v20, v33);
        }

        else
        {
          v19 = v42;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_server_copy_file_cold_8();
          }

          free(v29);
          v20[2](v20, 45);
        }
      }

      else
      {
        v19 = v42;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_server_copy_file_cold_9();
        }

        v20[2](v20, 12);
      }

      v14 = v41;
LABEL_46:
      v18 = v43;
      goto LABEL_47;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_server_copy_file_cold_10();
      if (!v20)
      {
        goto LABEL_47;
      }
    }

    else if (!v20)
    {
LABEL_47:

      goto LABEL_48;
    }

    v20[2](v20, 22);
    goto LABEL_47;
  }

  smb2fs_smb_copyfile_stream(v13, a2, v14, v15, a5, 1, 0, 0, v16);
LABEL_48:
}

void smb2fs_smb_copyfile_stream(void *a1, uint64_t a2, void *a3, void *a4, char a5, int a6, uint64_t a7, int a8, void *a9)
{
  v96 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = v15;
  v19 = a9;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(v83, 0, sizeof(v83));
  v20 = [v15 getShare:a2];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    v23 = [[SMBNode alloc] init:v18];
    v24 = v18;
    v65 = v18;
    if (v23)
    {
      v25 = v23;
      v63 = v17;
      v26 = [v23 commonInit:v24 onShareID:a2];
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2fs_smb_copyfile_stream_cold_1();
        }

        v19[2](v19, v27);
      }

      v28 = [[SMBNode alloc] init:v65];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 commonInit:v65 onShareID:a2];
        v21 = v22;
        if (v30)
        {
          v31 = v30;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2fs_smb_copyfile_stream_cold_1();
          }

          v19[2](v19, v31);
        }

        if (a7)
        {
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a7 encoding:4];
        }

        else
        {
          v32 = 0;
        }

        fid = smb2_smb_create_fid(v25, v16, v32, 137, 1, 1, 1, 2 * (a8 != 0), v83, 0, 0);
        if (fid)
        {
          v34 = fid;
          if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2fs_smb_copyfile_stream_cold_3();
          }

LABEL_45:
          v19[2](v19, v34);

LABEL_46:
          v17 = v63;
          goto LABEL_47;
        }

        v35 = *(&v84 + 1);
        if (a5)
        {
          v36 = 2;
        }

        else
        {
          v36 = 5;
        }

        if (a8)
        {
          v37 = 3;
        }

        else
        {
          v37 = 1;
        }

        if (a8)
        {
          v38 = 5;
        }

        else
        {
          v38 = v36;
        }

        v39 = smb2_smb_create_fid(v29, v63, v32, 407, 1, 0, v38, v37, 0, 0, 0);
        if (v39)
        {
          v34 = v39;
          if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2fs_smb_copyfile_stream_cold_4();
          }

          if (smb2_smb_close_fid(v25, 0, 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2fs_smb_copyfile_stream_cold_5();
          }

          goto LABEL_45;
        }

        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v67 = __smb2fs_smb_copyfile_stream_block_invoke;
        v68 = &unk_279B4F948;
        v73 = a6;
        v41 = v29;
        v69 = v41;
        v58 = v35;
        v72 = v35;
        v42 = v25;
        v70 = v42;
        v74 = 0x100000001;
        v71 = v19;
        v61 = v65;
        v43 = v42;
        v62 = v41;
        v60 = v66;
        v44 = objc_alloc_init(MEMORY[0x277CBEB28]);
        if (v44)
        {
          v45 = malloc_type_malloc(0x1A0uLL, 0x9527E659uLL);
          if (v45)
          {
            v46 = v45;
            v59 = v43;
            v45[24] = 0u;
            v45[25] = 0u;
            v45[22] = 0u;
            v45[23] = 0u;
            v45[20] = 0u;
            v45[21] = 0u;
            v45[18] = 0u;
            v45[19] = 0u;
            v45[16] = 0u;
            v45[17] = 0u;
            v45[14] = 0u;
            v45[15] = 0u;
            v45[12] = 0u;
            v45[13] = 0u;
            v45[10] = 0u;
            v45[11] = 0u;
            v45[8] = 0u;
            v45[9] = 0u;
            v45[6] = 0u;
            v45[7] = 0u;
            v45[4] = 0u;
            v45[5] = 0u;
            v45[2] = 0u;
            v45[3] = 0u;
            *v45 = 0u;
            v45[1] = 0u;
            v47 = malloc_type_malloc(0x60uLL, 0x1000040718B784FuLL);
            if (v47)
            {
              v48 = v47;
              v47[4] = 0u;
              v47[5] = 0u;
              v47[2] = 0u;
              v47[3] = 0u;
              *v47 = 0u;
              v47[1] = 0u;
              *(v47 + 1) = 1310840;
              [v44 setLength:32];
              v49 = smb2_smb_ioctl(0, v59, 0, v48, 0, 0, v44, 0, 0, 0, 0);
              if (v49)
              {
                v50 = v49;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2fs_smb_copyfile_stream_cold_6();
                }

                v51 = 0;
                goto LABEL_70;
              }

              if ([v44 length] <= 0x17)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2fs_smb_copyfile_stream_cold_9(v44);
                }

                v51 = 0;
                v50 = 72;
                goto LABEL_70;
              }

              [v44 getBytes:&v94 length:24];
              *(v48 + 4) = 1327346;
              [v44 setLength:12];
              *v46 = v94;
              v46[2] = v95;
              *(v46 + 7) = 0;
              if (a6 == 1)
              {
                v53 = objc_alloc_init(MEMORY[0x277CBEB28]);
                if (v53)
                {
                  v51 = v53;
                  [v53 appendBytes:v46 length:32];
                  *(v46 + 6) = 0;
                  v75 = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __smb2fs_smb_copychunks_block_invoke;
                  v78 = &unk_279B4F970;
                  v54 = v44;
                  v79 = v54;
                  v81 = v48;
                  v82 = v46;
                  v52 = v60;
                  v80 = v60;
                  v50 = smb2_smb_ioctl(v61, v62, 0, v48, 0, v51, v54, 0, 0, 0, &v75);

                  v43 = v59;
                  if (!v50)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_71;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2fs_smb_copyfile_stream_cold_8();
                }

                goto LABEL_65;
              }

              v55 = malloc_type_malloc(0x20uLL, 0x1000040F6D918ACuLL);
              if (v55)
              {
                v56 = v55;
                *v55 = v58;
                v55[1] = 0;
                v55[2] = 0x10000000000000;
                v55[3] = 16;
                v75 = MEMORY[0x277D85DD0];
                v76 = 3221225472;
                v77 = __smb2fs_smb_copychunks_block_invoke_3;
                v78 = &unk_279B4F8F8;
                v80 = v55;
                v81 = v46;
                v79 = v60;
                v57 = v56;
                v52 = v60;
                smb2fs_smb_copychunks_win(v61, v62, v58, v46, v57, v48, &v75);

                v51 = 0;
                v43 = v59;
                goto LABEL_73;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
LABEL_64:
              smb2fs_smb_copyfile_stream_cold_7();
            }

LABEL_65:
            v51 = 0;
            v50 = 12;
LABEL_70:
            v43 = v59;
            v52 = v60;
LABEL_71:
            free(v46);
            goto LABEL_72;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2fs_smb_copyfile_stream_cold_7();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2fs_smb_copyfile_stream_cold_8();
        }

        v51 = 0;
        v50 = 12;
        v52 = v60;
LABEL_72:
        v67(v52, v50);
LABEL_73:

        goto LABEL_46;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_copyfile_stream_cold_13();
      }

      v19[2](v19, 12);

      v17 = v63;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_copyfile_stream_cold_14();
      }

      v19[2](v19, 12);
    }

    v21 = v22;
LABEL_47:
    v18 = v65;
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2fs_smb_copyfile_stream_cold_15();
    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_16;
  }

  if (v19)
  {
LABEL_16:
    v19[2](v19, 22);
  }

LABEL_48:

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t smb2fs_smb_check_copyfile(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  memset(v10, 0, sizeof(v10));
  v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v3 = v2;
  if (v2)
  {
    DWORD1(v10[0]) = 1310840;
    [v2 setLength:32];
    v4 = smb2_smb_ioctl(0, v1, 0, v10, 0, 0, v3, 0, 0, 0, 0);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_check_copyfile_cold_1();
      }
    }

    else if ([v3 length] > 0x17)
    {
      v6 = [v1 pd];
      v7 = [v6 getSessionPtr];
      *(v7 + 560) |= 0x800uLL;

      v5 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_check_copyfile_cold_2(v3);
      }

      v5 = 72;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_check_copyfile_cold_3();
    }

    v5 = 12;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t smb2_smb_parse_get_reparse_point(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = 0;
  size = 0;
  v19 = 0;
  v18 = 0;
  uint32le = md_get_uint32le(a3, &v21 + 1);
  if (uint32le)
  {
    goto LABEL_2;
  }

  if (HIDWORD(v21) != -1610612724)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_get_reparse_point_cold_1(&v21 + 1);
    }

    mem = 72;
    goto LABEL_3;
  }

  uint32le = md_get_uint16le(a3, &size + 3);
  if (uint32le)
  {
    goto LABEL_2;
  }

  uint32le = md_get_uint16le(a3, &size + 2);
  if (uint32le)
  {
    goto LABEL_2;
  }

  uint32le = md_get_uint16le(a3, &size + 1);
  if (uint32le)
  {
    goto LABEL_2;
  }

  uint32le = md_get_uint16le(a3, &size);
  if (uint32le)
  {
    goto LABEL_2;
  }

  uint32le = md_get_uint16le(a3, &v19 + 1);
  if (uint32le)
  {
    goto LABEL_2;
  }

  uint32le = md_get_uint16le(a3, &v19);
  if (uint32le)
  {
    goto LABEL_2;
  }

  uint32le = md_get_uint32le(a3, &v21);
  if (uint32le)
  {
    goto LABEL_2;
  }

  v9 = size;
  if (!size || *(a1 + 80) < size)
  {
    goto LABEL_14;
  }

  if (WORD1(size))
  {
    uint32le = md_get_mem(a3, 0, WORD1(size), 0);
    if (!uint32le)
    {
      v9 = size;
      goto LABEL_21;
    }

LABEL_2:
    mem = uint32le;
    goto LABEL_3;
  }

LABEL_21:
  v10 = malloc_type_malloc(v9, 0xC2964113uLL);
  if (!v10)
  {
LABEL_14:
    mem = 12;
    goto LABEL_3;
  }

  v11 = v10;
  mem = md_get_mem(a3, v10, size, 0);
  if (!mem)
  {
    v12 = 9 * size + 1;
    v18 = v12;
    v13 = malloc_type_malloc(v12, 0xFF60EE0EuLL);
    if (v13)
    {
      v14 = v13;
      bzero(v13, v12);
      v15 = smb_convert_network_to_path(v11, size, v14, &v18, 92, 32, 1);
      mem = v15;
      if (v5 && !v15)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [v16 initWithCString:v14 encoding:{4, v18}];
        [v5 setString:v17];
      }

      free(v14);
    }

    else
    {
      mem = 12;
    }
  }

  free(v11);
LABEL_3:

  return mem;
}

uint64_t smb2_smb_parse_get_resume_key(void *a1, void *a2)
{
  v3 = a2;
  mem = md_get_mem(a1, [v3 bytes], 0x20uLL, 0);
  if (mem)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_get_resume_key_cold_1();
    }

    mem = 12;
  }

  [v3 setLength:32];

  return mem;
}

uint64_t smb2_smb_parse_copychunk_response(void *a1, void *a2)
{
  v3 = a2;
  mem = md_get_mem(a1, [v3 bytes], 0xCuLL, 0);
  if (mem)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_copychunk_response_cold_1();
    }

    mem = 12;
  }

  [v3 setLength:12];

  return mem;
}

void smb2fs_smb_copyfile_win_xattr(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, void *a12)
{
  v19 = a1;
  v20 = a3;
  v21 = a4;
  v22 = a12;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __smb2fs_smb_copyfile_win_xattr_block_invoke;
  v27[3] = &unk_279B4F920;
  v32 = a6;
  v33 = a8;
  v37 = a2;
  v28 = v19;
  v29 = v20;
  v34 = a7;
  v35 = a5;
  v36 = a11;
  v30 = v21;
  v31 = v22;
  v23 = v22;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  smb2fs_smb_copyfile_stream(v26, a2, v25, v24, a5, 0, a9, a10, v27);
}

uint64_t __smb2fs_smb_copyfile_win_block_invoke(void *a1, int a2)
{
  if (a2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __smb2fs_smb_copyfile_win_block_invoke_cold_1();
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    free(v4);
  }

  return (*(a1[4] + 16))();
}

uint64_t __smb2fs_smb_copyfile_win_xattr_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2fs_smb_copyfile_win_xattr_block_invoke_cold_1();
    }

    return (*(*(a1 + 56) + 16))();
  }

  v4 = *(a1 + 64);
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[2] + 1;
    v7 = v4[1] - v6;
    v4[1] = v7;
    v4[2] = v6;
    if (v7)
    {
      *v4 = v5 + v6;
      v8 = *(a1 + 64);
      v9 = *v8;
      v10 = strnlen(*v8, *(v8 + 8));
      *(v8 + 16) = v10;
      v11 = *(a1 + 96);
      return smb2fs_smb_copyfile_win_xattr(*(a1 + 32), *(a1 + 104), *(a1 + 40), *(a1 + 48), *(a1 + 88), v8, *(a1 + 80), *(a1 + 72), v9, v10, v11, *(a1 + 56));
    }

    return (*(*(a1 + 56) + 16))();
  }

  v12 = *(a1 + 72);
  v4[1] = v12;
  if (!v12)
  {
    return (*(*(a1 + 56) + 16))();
  }

  v13 = *(a1 + 80);
  *v4 = v13;
  v14 = *(a1 + 64);
  v15 = *v14;
  v16 = strnlen(*v14, v12);
  *(v14 + 16) = v16;
  v17 = *(a1 + 96);
  return smb2fs_smb_copyfile_win_xattr(*(a1 + 32), *(a1 + 104), *(a1 + 40), *(a1 + 48), *(a1 + 88), v14, v13, *(a1 + 72), v15, v16, v17, *(a1 + 56));
}

uint64_t __smb2fs_smb_copyfile_stream_block_invoke(uint64_t a1, int a2)
{
  tv_sec = 0;
  v5 = 0;
  if (a2)
  {
    if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2fs_smb_copyfile_stream_block_invoke_cold_1();
    }

    return (*(*(a1 + 48) + 16))();
  }

  if (*(a1 + 64))
  {
    goto LABEL_6;
  }

  if (smb2fs_smb_set_eof(*(a1 + 32), *(a1 + 56)))
  {
    if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2fs_smb_copyfile_stream_block_invoke_cold_2();
    }
  }

  else
  {
    v6.tv_sec = 0;
    *&v6.tv_usec = 0;
    gettimeofday(&v6, 0);
    tv_sec = v6.tv_sec;
    v5 = 1000 * v6.tv_usec;
    if (!smb2fs_smb_setfattrNT(*(a1 + 32), 0, 0, &tv_sec, 0))
    {
LABEL_6:
      if (*(a1 + 68) == 1 && smb2_smb_close_fid(*(a1 + 40), 0, 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __smb2fs_smb_copyfile_stream_block_invoke_cold_4();
      }

      if (*(a1 + 72) == 1 && smb2_smb_close_fid(*(a1 + 32), 0, 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __smb2fs_smb_copyfile_stream_block_invoke_cold_5();
      }

      return (*(*(a1 + 48) + 16))();
    }

    if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2fs_smb_copyfile_stream_block_invoke_cold_3();
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __smb2fs_smb_copychunks_block_invoke(uint64_t a1, int a2)
{
  if (a2 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __smb2fs_smb_copychunks_block_invoke_cold_1();
  }

  if ([*(a1 + 32) length] <= 0xB && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __smb2fs_smb_copychunks_block_invoke_cold_2((a1 + 32));
  }

  v3 = *(*(a1 + 48) + 12);
  if (v3)
  {
    if (piston_log_level)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __smb2fs_smb_copychunks_block_invoke_cold_3((a1 + 48));
      }

      v3 = *(*(a1 + 48) + 12);
    }

    piston_ntstatus_to_errno(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    free(v4);
  }

  return (*(*(a1 + 40) + 16))();
}

void smb2fs_smb_copychunks_win(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v17 = v16;
  if (v16)
  {
    v29 = a3;
    v30 = v13;
    [v16 setLength:12];
    LODWORD(a3) = 0;
    v18 = 0;
    v19 = *(a5 + 6);
    v21 = *a5;
    v20 = a5[1];
    if (v19 && v21)
    {
      a3 = 0;
      v18 = 0;
      v22 = *(a5 + 5);
      v23 = (a4 + 52);
      v24 = a5[1];
      v25 = v24;
      v26 = *a5;
      do
      {
        if (v26 <= v22)
        {
          v27 = v26;
        }

        else
        {
          v27 = v22;
        }

        *(v23 - 1) = v27;
        *v23 = 0;
        *(v23 - 5) = v25;
        *(v23 - 3) = v24;
        v18 += v27;
        if (++a3 >= v19)
        {
          break;
        }

        v25 += v27;
        v24 += v27;
        v23 += 6;
        v26 -= v27;
      }

      while (v26);
    }

    *a5 = v21 - v18;
    a5[1] = v18 + v20;
    *(a4 + 24) = a3;
    v28 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if (!v28)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_copychunks_win_cold_1();
      }

      v15[2](v15, 0);
    }

    [v28 appendBytes:a4 length:(24 * a3 + 32)];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __smb2fs_smb_copychunks_win_block_invoke;
    v31[3] = &unk_279B4F998;
    v42 = a3;
    v36 = a5;
    v37 = v18;
    v38 = a6;
    v32 = v17;
    v13 = v30;
    v39 = v29;
    v40 = a4;
    v33 = v30;
    v34 = v14;
    v41 = a4;
    v35 = v15;
    smb2_smb_ioctl(0, v34, 0, a6, 0, v28, v32, 0, 0, 0, v31);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_copychunks_win_cold_1();
    }

    v15[2](v15, 12);
  }
}

uint64_t __smb2fs_smb_copychunks_block_invoke_3(void *a1, int a2)
{
  if (a2 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __smb2fs_smb_copychunks_block_invoke_3_cold_1();
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    free(v4);
  }

  return (*(a1[4] + 16))();
}

uint64_t __smb2fs_smb_copychunks_win_block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v15 = 0;
  v14 = 0;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2fs_smb_copychunks_win_block_invoke_cold_1(a1);
    }

    if (*(*(a1 + 80) + 12) != -1073741811)
    {
      return (*(*(a1 + 56) + 16))();
    }
  }

  if ([*(a1 + 32) length] > 0xB)
  {
    [*(a1 + 32) getBytes:&v14 length:12];
    v4 = *(*(a1 + 80) + 12);
    if (v4)
    {
      if (v4 == -1073741811)
      {
        v5 = *(a1 + 64);
        if (!v5[4])
        {
          v9 = HIDWORD(v14);
          v10 = v5[5];
          if (HIDWORD(v14) < v10)
          {
            v5[5] = HIDWORD(v14);
            v10 = v9;
          }

          v11 = v15 / v10;
          if (v11 >= v14)
          {
            v11 = v14;
          }

          v5[6] = v11;
          v5[4] = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __smb2fs_smb_copychunks_win_block_invoke_cold_4((a1 + 64));
          }

          v12 = *(a1 + 88);
          v13 = *(a1 + 64);
          *v13 = v12;
          v13[1] = 0;
          if (!v12)
          {
            return (*(*(a1 + 56) + 16))();
          }

          goto LABEL_19;
        }
      }

      if (piston_log_level)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __smb2fs_smb_copychunks_win_block_invoke_cold_5((a1 + 80));
        }

        v4 = *(*(a1 + 80) + 12);
      }

      v2 = piston_ntstatus_to_errno(v4);
    }

    else
    {
      if (v14 != *(*(a1 + 96) + 24))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __smb2fs_smb_copychunks_win_block_invoke_cold_2(&v14);
        }

        return (*(*(a1 + 56) + 16))();
      }

      if (*(a1 + 72) != v15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __smb2fs_smb_copychunks_win_block_invoke_cold_3(&v15);
        }

        return (*(*(a1 + 56) + 16))();
      }
    }

    if (v2 || !**(a1 + 64))
    {
      return (*(*(a1 + 56) + 16))();
    }

LABEL_19:
    v6 = *(a1 + 80);
    v7 = *(a1 + 56);
    return smb2fs_smb_copychunks_win(*(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 104));
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __smb2fs_smb_copychunks_win_block_invoke_cold_6((a1 + 32));
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t *OUTLINED_FUNCTION_6@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t smb2_smb_echo(void *a1)
{
  v1 = a1;
  v2 = [v1 sock];

  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_echo_cold_2();
    }

    v3 = 57;
    goto LABEL_14;
  }

  v16 = 0;
  v3 = smb2_rq_alloc(13, 0, 0, 0, v1, &v16);
  v4 = v16;
  v5 = v4;
  if (!v3)
  {
    v17.tv_sec = 0;
    *&v17.tv_usec = 0;
    v6 = [(SMB_rq *)v4 smb_rq_getrequest];
    mb_put_uint16le(v6, 4);
    mb_put_uint16le(v6, 0);
    gettimeofday(&v17, 0);
    tv_sec = v17.tv_sec;
    v8 = 1000 * v17.tv_usec;
    v9 = [v1 sock];
    [v9 setLast_echo:{tv_sec, v8}];

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __smb2_smb_echo_block_invoke;
    v14 = &unk_279B4F9C0;
    v5 = v5;
    v15 = v5;
    v3 = smb_rq_simple_block(v1, v5, &v11);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_echo_cold_1();
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v5)
      {
LABEL_11:
        [(SMB_rq *)v5 smb_rq_done:v11];
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v4)
  {
    [(SMB_rq *)v4 smb_rq_done];
LABEL_13:
  }

LABEL_14:

  return v3;
}

void *__smb2_smb_echo_block_invoke(uint64_t a1, int a2)
{
  v5 = 0;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_echo_block_invoke_cold_1(a1);
    }
  }

  else
  {
    v3 = [*(a1 + 32) smb_rq_getreply];
    if (!md_get_uint16le(v3, &v5 + 1))
    {
      if (HIWORD(v5) == 4)
      {
        md_get_uint16le(v3, &v5);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __smb2_smb_echo_block_invoke_cold_2(&v5 + 1);
      }
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result smb_rq_done];
  }

  return result;
}

uint64_t smb2_rq_credit_increment(void *a1)
{
  v7 = a1;
  v1 = [v7 sr_sessionp];
  if ([v7 sr_rspcreditsgranted])
  {
    v2 = [v7 sr_command];
    if ((v2 - 2) >= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          pthread_mutex_lock((v1 + 608));
          atomic_fetch_add((v1 + 684), [v7 sr_rspcreditsgranted]);
        }

        else
        {
          pthread_mutex_lock((v1 + 608));
          atomic_fetch_add((v1 + 680), [v7 sr_rspcreditsgranted]);
          v3 = atomic_load((v1 + 680));
          v4 = atomic_load((v1 + 688));
          if (v4 < v3)
          {
            if (v3 >= 0xFFFF)
            {
              v3 = 0xFFFF;
            }

            atomic_store(v3, (v1 + 688));
          }

          if (atomic_load((v1 + 692)))
          {
            atomic_fetch_add((v1 + 692), 0xFFFFFFFF);
            pthread_cond_signal((v1 + 696));
          }
        }

        pthread_mutex_unlock((v1 + 608));
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void smb_rq_bend(void *a1)
{
  v1 = a1;
  if ([v1 sr_bcount])
  {
    v2 = ([v1 smb_rq_getrequest] + 24);
    v3 = *v2;
    if (*v2 >= 0x10000)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb_rq_bend_cold_1(v2);
      }

      LOWORD(v3) = -1;
    }

    *[v1 sr_bcount] = v3;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb_rq_bend_cold_2();
  }
}

void smb_rq_bend32(void *a1)
{
  v1 = a1;
  if ([v1 sr_lcount])
  {
    v2 = ([v1 smb_rq_getrequest] + 24);
    v3 = *v2;
    if (HIDWORD(*v2))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb_rq_bend32_cold_1(v2);
      }

      LODWORD(v3) = 0xFFFFFFF;
    }

    *[v1 sr_lcount] = v3;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb_rq_bend32_cold_2();
  }
}

void smb_rq_bstart(void *a1)
{
  v1 = a1;
  v2 = [v1 smb_rq_getrequest];
  [v1 setSr_bcount:{mb_reserve(v2, 2uLL)}];

  *(v2 + 24) = 0;
}

void smb_rq_cancel_all_requests(pthread_mutex_t *a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = smb_rq_find(a1, v9, 0, 0, 0, 0, 1);
  if (v12)
  {
    v13 = v12;
    do
    {
      if (([v13 sr_extflags] & 2) == 0)
      {
        [v13 smb_rq_set_extflag:16];
        smb_rq_dequeue(a1, v9, a3, v10, v13);
        if (([v13 sr_extflags] & 4) != 0)
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __smb_rq_cancel_all_requests_block_invoke;
          v15[3] = &unk_279B4F9E8;
          v16 = v13;
          v17 = 57;
          dispatch_async(v11, v15);
        }
      }

      v14 = smb_rq_find(a1, v9, 0, 0, 0, 0, 1);

      v13 = v14;
    }

    while (v14);
  }
}

id smb_rq_find(pthread_mutex_t *a1, void *a2, uint64_t a3, _BOOL4 *a4, uint64_t *a5, void *a6, char a7)
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v54.tv_sec = 0;
  *&v54.tv_usec = 0;
  pthread_mutex_lock(a1);
  v12 = [v11 count];
  if (!v12)
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    pthread_mutex_unlock(a1);
    v38 = 0;
    goto LABEL_56;
  }

  v14 = v12;
  v47 = a1;
  v48 = a4;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v49 = 0;
  v51 = 0;
  v52 = 0;
  v18 = 0;
  *&v13 = 136315650;
  v46 = v13;
  v19 = a5;
  while (1)
  {
    v20 = v16;
    v16 = [v11 objectAtIndexedSubscript:{v18, v46}];

    if (v16)
    {
      break;
    }

LABEL_29:
    if (v14 == ++v18)
    {
      goto LABEL_39;
    }
  }

  if (([v16 sr_flags] & 2) == 0)
  {
    if (!v17)
    {
      goto LABEL_9;
    }

    v21 = [v16 sr_credit_timesent];
    v23 = v52 <= v21;
    if (v52 == v21)
    {
      v23 = v51 <= v22;
    }

    if (!v23)
    {
LABEL_9:
      v49 = [v16 sr_messageid];
      v24 = [v16 sr_credit_timesent];
      v51 = v25;
      v52 = v24;
    }

    v17 = 1;
  }

  if ((a7 & 1) == 0)
  {
    if ([v16 sr_messageid] != a3)
    {
LABEL_15:
      v27 = [v16 sr_extflags];
      if (a6 && (v27 & 4) != 0 && ([v16 sr_flags] & 2) == 0 && (objc_msgSend(v16, "sr_flags") & 0x200) == 0)
      {
        gettimeofday(&v54, 0);
        tv_usec = v54.tv_usec;
        v29 = -121;
        if (v54.tv_usec >= 0)
        {
          v29 = -120;
        }

        v30 = v29 + v54.tv_sec;
        v31 = [v16 sr_timesent];
        v33 = v30 <= v31;
        if (v30 == v31)
        {
          v34 = 1000 * tv_usec;
          if (tv_usec < 0)
          {
            v34 += 1000000000;
          }

          v33 = v34 <= v32;
        }

        v19 = a5;
        if (!v33)
        {
          [v16 smb_rq_set_extflag:4];
          [v16 setSr_extflags:{objc_msgSend(v16, "sr_extflags") & 0xFFFFFFFBLL}];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v36 = [v16 sr_command];
            v37 = [v16 sr_messageid];
            *buf = v46;
            v56 = "smb_rq_find";
            v57 = 1024;
            v58 = v36;
            v59 = 2048;
            v60 = v37;
            _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Timed out waiting on the response for <0x%x> message_id = <%lld> \n", buf, 0x1Cu);
          }

          v35 = v16;
          *a6 = v16;
        }
      }

      goto LABEL_29;
    }

    v26 = v16;

    if (v19)
    {
      v15 = v26;
      goto LABEL_15;
    }

    pthread_mutex_unlock(v47);
    v15 = v26;
LABEL_44:
    v41 = v48;
    if (!v48)
    {
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  v39 = v16;

  v15 = v39;
  v19 = a5;
LABEL_39:
  pthread_mutex_unlock(v47);
  if (!v19)
  {
    goto LABEL_44;
  }

  if (v17)
  {
    v41 = v48;
    v40 = v49;
  }

  else
  {
    v41 = v48;
    v40 = v49;
    if (v15)
    {
      v40 = [v15 sr_messageid];
    }
  }

  *a5 = v40;
  if (v41)
  {
LABEL_48:
    v43 = v14 == 1 && v15 != 0;
    *v41 = v43;
  }

LABEL_55:
  v38 = v15;

LABEL_56:
  v44 = *MEMORY[0x277D85DE8];

  return v38;
}

void smb_rq_dequeue(pthread_mutex_t *a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  v11 = a2;
  v9 = a4;
  v10 = a5;
  pthread_mutex_lock(a1);
  [v11 removeObjectIdenticalTo:v10];

  if (*a3 == 1 && ![v11 count])
  {
    *a3 = 0;
    dispatch_suspend(v9);
  }

  pthread_mutex_unlock(a1);
}

void smb_rq_empty_queue(pthread_mutex_t *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  pthread_mutex_lock(a1);
  v4 = [v3 lastObject];
  if (v4)
  {
    v6 = v4;
    v7 = MEMORY[0x277D86220];
    *&v5 = 136315650;
    v12 = v5;
    do
    {
      [v3 removeLastObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 sr_messageid];
        v10 = [v6 sr_command];
        *buf = v12;
        v14 = "smb_rq_empty_queue";
        v15 = 2048;
        v16 = v9;
        v17 = 1024;
        v18 = v10;
        _os_log_error_impl(&dword_264287000, v7, OS_LOG_TYPE_ERROR, "%s: rqp with message ID <%lld> cmd <%d> left on queue \n", buf, 0x1Cu);
      }

      [v6 smb_rq_done];
      v8 = [v3 lastObject];

      v6 = v8;
    }

    while (v8);
  }

  pthread_mutex_unlock(a1);

  v11 = *MEMORY[0x277D85DE8];
}

void smb_rq_enqueue(pthread_mutex_t *a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  object = a4;
  v9 = a5;
  v10 = a2;
  pthread_mutex_lock(a1);
  [v10 addObject:v9];

  if (!*a3)
  {
    *a3 = 1;
    dispatch_resume(object);
  }

  pthread_mutex_unlock(a1);
}

id smb_rq_find_cmpd(pthread_mutex_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  pthread_mutex_lock(a1);
  v8 = [v7 count];
  if (!v8)
  {
    if (a4)
    {
      *a4 = 0;
    }

    pthread_mutex_unlock(a1);
    v17 = 0;
    goto LABEL_19;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v11;
    v11 = [v7 objectAtIndexedSubscript:v10];

    if (v11)
    {
      break;
    }

LABEL_9:
    if (++v10 == v9)
    {
      v13 = 0;
      v17 = 0;
      goto LABEL_12;
    }
  }

  v13 = v11;
  v14 = [v13 sr_next_rqp];
  if (!v14)
  {
LABEL_8:

    goto LABEL_9;
  }

  v15 = v14;
  while ([v15 sr_messageid] != a3)
  {
    v16 = [v15 sr_next_rqp];

    v15 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  v17 = v15;
LABEL_12:
  pthread_mutex_unlock(a1);
  if (a4 && v17)
  {
    v18 = v13;
    *a4 = v13;
  }

LABEL_19:

  return v17;
}

void smb_rq_handle_async_pending(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 smb_rq_set_extflag:32];
  [v3 setSr_rspasyncid:*(a2 + 32)];
  [v3 setSr_rspcreditsgranted:*(a2 + 14)];
  smb2_rq_credit_increment(v3);
  smb_rq_set_time_sent(v3, 1);
}

void smb_rq_set_time_sent(void *a1, int a2)
{
  v5 = a1;
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  tv_sec = v6.tv_sec;
  v4 = 1000 * v6.tv_usec;
  if (!a2)
  {
    [v5 setSr_credit_timesent:{v6.tv_sec, 1000 * v6.tv_usec}];
  }

  [v5 setSr_timesent:{tv_sec, v4}];
}

uint64_t smb_rq_simple(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 smb_rq_set_srflags:2048];
  if ([v3 sr_command] == 2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  v6 = smb_rq_simple_timed(v4, v3, v5);

  return v6;
}

uint64_t smb_rq_simple_timed(void *a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x2020000000;
  v26 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [v5 sock];
  v9 = v8 == 0;

  if (v9)
  {
    v12 = 57;
  }

  else
  {
    [v6 setSr_timeout:a3];
    if (([v6 sr_flags] & 0x800) != 0)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __smb_rq_simple_timed_block_invoke;
      v21 = &unk_279B4FA10;
      v23 = &v24;
      v22 = v7;
      [v6 setSr_callback:&v18];
    }

    v10 = [v5 sock];
    v11 = [v10 sendRequest:v6];
    *(v25[0] + 24) = v11;

    if (*(v25[0] + 24))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb_rq_simple_timed_cold_1(v25);
      }
    }

    else if (([v6 sr_flags] & 0x800) != 0)
    {
      if ([v6 sr_timeout])
      {
        v13 = dispatch_time(0, 1000000000 * [v6 sr_timeout]);
        if (dispatch_semaphore_wait(v7, v13))
        {
          v14 = MEMORY[0x277D86220];
          v15 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            smb_rq_simple_timed_cold_2([v6 sr_command], buf, objc_msgSend(v6, "sr_timeout"));
          }

          *(v25[0] + 24) = 60;
        }
      }

      else
      {
        dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    v12 = *(v25[0] + 24);
  }

  _Block_object_dispose(&v24, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_26429F5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t smb_rq_simple_block(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 sock];

  if (v8)
  {
    [v6 setSr_callback:v7];
    [v6 setSr_timeout:0];
    v9 = [v5 sock];
    v10 = [v9 sendRequest:v6];

    if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_rq_simple_block_cold_1();
    }
  }

  else
  {
    v10 = 57;
  }

  return v10;
}

uint64_t smb2_rq_align8(void *a1)
{
  result = [a1 smb_rq_getrequest];
  v2 = *(result + 32) & 7;
  if (v2)
  {

    return mb_put_mem(result, 0, 8 - v2, 3);
  }

  return result;
}

uint64_t smb2_rq_alloc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5, SMB_rq **a6)
{
  v76 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = [v11 getSessionPtr];
  v13 = objc_alloc_init(SMB_rq);
  v14 = v13;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_alloc_cold_4();
    }

    v18 = 12;
    goto LABEL_64;
  }

  [(SMB_rq *)v13 setSr_command:a1];
  [(SMB_rq *)v14 setSr_creditcharge:1];
  [(SMB_rq *)v14 setSr_creditsrequested:1];
  [(SMB_rq *)v14 setSr_rqtreeid:0];
  [(SMB_rq *)v14 setSr_rqsessionid:*(v12 + 568)];
  [(SMB_rq *)v14 setWriteData:0];
  [(SMB_rq *)v14 setWriteLen:0];
  [(SMB_rq *)v14 setSr_pd:v11];
  [(SMB_rq *)v14 smb_rq_set_extflag:1];
  [(SMB_rq *)v14 setSr_sessionp:v12];
  [(SMB_rq *)v14 setOnEncryptedShare:a3];
  v15 = v14;
  v63.tv_sec = 0;
  v63.tv_nsec = 0;
  v62.tv_sec = 0;
  *&v62.tv_usec = 0;
  v16 = [(SMB_rq *)v15 sr_sessionp];
  pthread_mutex_lock((v16 + 608));
  v17 = [(SMB_rq *)v15 sr_command];
  if (v17 <= 1)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_13;
      }

      [(SMB_rq *)v15 setSr_creditsrequested:256];
    }

    else
    {
      [(SMB_rq *)v15 setSr_creditcharge:0];
      [(SMB_rq *)v15 setSr_creditsrequested:0];
      atomic_store(0, (v16 + 680));
      atomic_store(0, (v16 + 684));
      atomic_store(0, (v16 + 688));
    }
  }

  else if ((v17 - 2) >= 2)
  {
    if (v17 == 18)
    {
LABEL_17:
      v60 = a4;
      v61 = a6;
      v19 = MEMORY[0x277D86220];
LABEL_18:
      while (1)
      {
        v20 = atomic_load((v16 + 680));
        if (v20 >= 1)
        {
          if (!*(v16 + 744))
          {
            break;
          }

          v21 = atomic_load((v16 + 672));
          v22 = *(v16 + 752);
          v23 = atomic_load((v16 + 672));
          v24 = v21 <= v22 ? v23 + ~v22 : v23 - *(v16 + 752);
          if (v24 <= v20)
          {
            break;
          }
        }

        if ([(SMB_rq *)v15 sr_command]== 13 || ([(SMB_rq *)v15 sr_extflags]& 0x80000000) != 0)
        {
          v18 = 55;
          goto LABEL_40;
        }

        if (piston_log_level && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v30 = atomic_load((v16 + 688));
          v31 = atomic_load((v16 + 672));
          v32 = *(v16 + 752);
          v33 = atomic_load((v16 + 692));
          *buf = 136316418;
          v65 = "smb2_rq_credit_decrement";
          v66 = 1024;
          v67 = v20;
          v68 = 1024;
          v69 = v30;
          v70 = 2048;
          v71 = v31;
          v72 = 2048;
          v73 = v32;
          v74 = 1024;
          v75 = v33;
          _os_log_error_impl(&dword_264287000, v19, OS_LOG_TYPE_ERROR, "%s: Wait for credits curr %d max %d curr ID %lld pending ID %lld session_credits_wait %d\n", buf, 0x32u);
        }

        v25 = 60;
        while (1)
        {
          atomic_fetch_add((v16 + 692), 1u);
          v63 = xmmword_2642C0A90;
          gettimeofday(&v62, 0);
          v63.tv_sec += v62.tv_sec;
          v63.tv_nsec += 1000 * v62.tv_usec;
          v26 = pthread_cond_timedwait((v16 + 696), (v16 + 608), &v63);
          if (v26 != 60 && v26 != 35)
          {
            break;
          }

          if (atomic_load((v16 + 692)))
          {
            atomic_fetch_add((v16 + 692), 0xFFFFFFFF);
          }

          v28 = atomic_load((v16 + 680));
          if (v28 > 0)
          {
            break;
          }

          if (!--v25)
          {
            v29 = atomic_load((v16 + 680));
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v34 = atomic_load((v16 + 688));
              v35 = atomic_load((v16 + 672));
              v36 = *(v16 + 752);
              v37 = atomic_load((v16 + 692));
              *buf = 136316418;
              v65 = "smb2_rq_credit_decrement";
              v66 = 1024;
              v67 = v29;
              v68 = 1024;
              v69 = v34;
              v70 = 2048;
              v71 = v35;
              v72 = 2048;
              v73 = v36;
              v74 = 1024;
              v75 = v37;
              _os_log_error_impl(&dword_264287000, v19, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for credits curr %d max %d curr ID %lld pending ID %lld session_credits_wait %d\n", buf, 0x32u);
            }

            pthread_mutex_unlock((v16 + 608));
            pthread_mutex_lock((v16 + 608));
            goto LABEL_18;
          }
        }
      }

      a2 = a2;
      if (v60)
      {
        v38 = *v60;
        v39 = v15;
        v40 = [(SMB_rq *)v39 sr_sessionp];
        if (v38 > 0x10000)
        {
          v41 = atomic_load((v40 + 680));
          if (v41 >= 11)
          {
            if ((((v38 - 1) >> 16) + 1) + 10 <= v41)
            {
              v42 = ((v38 - 1) >> 16) + 1;
            }

            else
            {
              v38 = (v41 - 10) << 16;
              v42 = v41 - 10;
            }

            [(SMB_rq *)v39 setSr_creditcharge:v42];
          }

          else
          {
            v38 = 0x10000;
          }
        }

        *v60 = v38;
      }

      atomic_fetch_add((v16 + 680), [(SMB_rq *)v15]);
      v43 = atomic_load((v16 + 680));
      a6 = v61;
      if (v43 <= 65534)
      {
        [(SMB_rq *)v15 setSr_creditsrequested:256];
        if (v43 < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_rq_alloc_cold_1();
        }
      }

      goto LABEL_54;
    }

LABEL_13:
    if ((*(v16 + 553) & 0x10) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_rq_alloc_cold_3(v15);
      }

      v18 = 73;
LABEL_40:
      pthread_mutex_unlock((v16 + 608));

      [(SMB_rq *)v15 setSr_creditcharge:0];
      goto LABEL_59;
    }

    goto LABEL_17;
  }

LABEL_54:
  pthread_mutex_unlock((v16 + 608));

  v44 = [(SMB_rq *)v15 sr_command];
  if (v44 > 0xD || ((1 << v44) & 0x300F) == 0)
  {
    [(SMB_rq *)v15 setSr_rqtreeid:a2];
  }

  v45 = [(SMB_rq *)v15 smb_rq_getrequest];
  v46 = [(SMB_rq *)v15 smb_rq_getreply];
  mb_done(v45);
  md_done(v46);
  v48 = mb_init(v45);
  if (v47)
  {
    v18 = v47;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_alloc_cold_2();
    }

LABEL_59:
    [(SMB_rq *)v15 smb_rq_done];
    goto LABEL_64;
  }

  v49 = [(SMB_rq *)v15 sr_flags];
  mb_put_mem(v45, "\xFESMB", 4uLL, 0);
  mb_put_uint16le(v45, 64);
  [(SMB_rq *)v15 setSr_creditchargep:mb_reserve(v45, 2uLL)];
  v50 = [(SMB_rq *)v15 sr_creditcharge];
  *[(SMB_rq *)v15 sr_creditchargep]= v50;
  mb_put_uint32le(v45, 0);
  mb_put_uint16le(v45, [(SMB_rq *)v15 sr_command]);
  [(SMB_rq *)v15 setSr_creditreqp:mb_reserve(v45, 2uLL)];
  v51 = [(SMB_rq *)v15 sr_creditsrequested];
  *[(SMB_rq *)v15 sr_creditreqp]= v51;
  [(SMB_rq *)v15 setSr_flagsp:mb_reserve(v45, 4uLL)];
  v52 = [(SMB_rq *)v15 sr_rqflags];
  if ((v49 & 2) != 0)
  {
    [(SMB_rq *)v15 setSr_rqflags:v52 | 2];
    v54 = [(SMB_rq *)v15 sr_rqflags];
    *[(SMB_rq *)v15 sr_flagsp]= v54;
    [(SMB_rq *)v15 setSr_nextcmdp:mb_reserve(v45, 4uLL)];
    v55 = [(SMB_rq *)v15 sr_nextcmd];
    *[(SMB_rq *)v15 sr_nextcmdp]= v55;
    [(SMB_rq *)v15 setSr_messageidp:mb_reserve(v45, 8uLL)];
    *[(SMB_rq *)v15 sr_messageidp]= 0;
    mb_put_uint64le(v45, 0);
  }

  else
  {
    *[(SMB_rq *)v15 sr_flagsp]= v52;
    [(SMB_rq *)v15 setSr_nextcmdp:mb_reserve(v45, 4uLL)];
    v53 = [(SMB_rq *)v15 sr_nextcmd];
    *[(SMB_rq *)v15 sr_nextcmdp]= v53;
    [(SMB_rq *)v15 setSr_messageidp:mb_reserve(v45, 8uLL)];
    *[(SMB_rq *)v15 sr_messageidp]= 0;
    mb_put_uint32le(v45, 65279);
    mb_put_uint32le(v45, [(SMB_rq *)v15 sr_rqtreeid]);
  }

  mb_put_uint64le(v45, [(SMB_rq *)v15 sr_rqsessionid]);
  [(SMB_rq *)v15 setSr_rqsigp:mb_reserve(v45, 0x10uLL)];
  v56 = [(SMB_rq *)v15 sr_rqsigp];
  *v56 = 0;
  *(v56 + 1) = 0;
  v57 = v15;
  v18 = 0;
  *a6 = v15;
LABEL_64:

  v58 = *MEMORY[0x277D85DE8];
  return v18;
}

void smb2_rq_bstart(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 smb_rq_getrequest];
  [v3 setSr_bcount:a2];

  *(v4 + 24) = 0;
}

void smb2_rq_bstart32(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 smb_rq_getrequest];
  [v3 setSr_lcount:a2];

  *(v4 + 24) = 0;
}

uint64_t smb2_rq_credit_start(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock((a1 + 608));
  v4 = (a1 + 680);
  if (a2)
  {
    atomic_fetch_add(v4, a2);
  }

  else
  {
    v5 = atomic_load((a1 + 684));
    atomic_fetch_add(v4, v5);
  }

  v6 = atomic_load((a1 + 680));
  atomic_store(v6, (a1 + 688));
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  if (atomic_load((a1 + 692)))
  {
    atomic_fetch_add((a1 + 692), 0xFFFFFFFF);
    pthread_cond_signal((a1 + 696));
  }

  return pthread_mutex_unlock((a1 + 608));
}

uint64_t smb2_rq_message_id_increment(void *a1)
{
  v1 = a1;
  v2 = [v1 sr_sessionp];
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_message_id_increment_cold_2();
    }

    goto LABEL_13;
  }

  v3 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_message_id_increment_cold_1();
    }

LABEL_13:
    v10 = 12;
    goto LABEL_16;
  }

  pthread_mutex_lock((v2 + 608));
  if ([v1 sr_command])
  {
    v4 = [v1 sr_flags];
    atomic_fetch_add((v3 + 672), [v1 sr_creditcharge]);
    [v1 setSr_messageid:?];
    v5 = [v1 sr_messageid];
    *[v1 sr_messageidp] = v5;
    if ((v4 & 0x100) != 0)
    {
      v6 = [v1 sr_next_rqp];
      if (v6)
      {
        v7 = v6;
        do
        {
          atomic_fetch_add((v3 + 672), [v7 sr_creditcharge]);
          [v7 setSr_messageid:?];
          v8 = [v7 sr_messageid];
          *[v7 sr_messageidp] = v8;
          v9 = [v7 sr_next_rqp];

          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    atomic_fetch_add((v3 + 672), 1uLL);
    [v1 setSr_messageid:?];
    v11 = [v1 sr_messageid];
    *[v1 sr_messageidp] = v11;
  }

  pthread_mutex_unlock((v3 + 608));
  v10 = 0;
LABEL_16:

  return v10;
}

uint64_t smb2_rq_next_command(void *a1, void *a2, void *a3)
{
  v5 = *a2 + [a1 sr_rspnextcmd];
  *a2 = v5;
  v6 = v5 - a3[3];
  if (v6 < 1)
  {
    return 0;
  }

  mem = md_get_mem(a3, 0, v6, 0);
  if (mem && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_rq_next_command_cold_1();
  }

  return mem;
}

uint64_t smb2_rq_parse_header(void *a1, __int128 **a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 sr_sessionp];
  v5 = [v3 sr_command];
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (v3)
  {
    v6 = v5;
    v7 = *a2;
    v8 = (*a2)[1];
    v24 = **a2;
    v25 = v8;
    uint32le = md_get_uint32le(v7, &v31);
    if (uint32le)
    {
      goto LABEL_4;
    }

    uint32le = md_get_uint16le(*a2, &v30);
    if (uint32le)
    {
      goto LABEL_4;
    }

    if (v30 == 64)
    {
      uint32le = md_get_uint16le(*a2, &v29);
      if (uint32le)
      {
        goto LABEL_4;
      }

      uint32le = md_get_uint32le(*a2, &v23);
      if (uint32le)
      {
        goto LABEL_4;
      }

      [v3 setSr_ntstatus:v23];
      uint32le = md_get_uint16le(*a2, &v28);
      if (uint32le)
      {
        goto LABEL_4;
      }

      uint32le = md_get_uint16le(*a2, &v22);
      if (uint32le)
      {
        goto LABEL_4;
      }

      [v3 setSr_rspcreditsgranted:v22];
      smb2_rq_credit_increment(v3);
      uint32le = md_get_uint32le(*a2, &v23);
      if (uint32le)
      {
        goto LABEL_4;
      }

      [v3 setSr_rspflags:v23];
      uint32le = md_get_uint32le(*a2, &v23);
      if (uint32le)
      {
        goto LABEL_4;
      }

      [v3 setSr_rspnextcmd:v23];
      uint32le = md_get_uint64le(*a2, &v27);
      if (uint32le)
      {
        goto LABEL_4;
      }

      v16 = [v3 sr_rspflags];
      v17 = *a2;
      if ((v16 & 2) == 0)
      {
        uint32le = md_get_uint32le(v17, &v23);
        if (uint32le)
        {
          goto LABEL_4;
        }

        [v3 setSr_rsppid:v23];
        uint32le = md_get_uint32le(*a2, &v23);
        if (uint32le)
        {
          goto LABEL_4;
        }

        [v3 setSr_rsptreeid:v23];
        goto LABEL_32;
      }

      uint32le = md_get_uint64le(v17, &v26);
      if (uint32le)
      {
        goto LABEL_4;
      }

      v18 = v26;
      if (v18 == [v3 sr_rspasyncid])
      {
LABEL_32:
        uint32le = md_get_uint64le(*a2, &v21);
        if (!uint32le)
        {
          [v3 setSr_rspsessionid:v21];
          uint32le = md_get_mem(*a2, __dst, 0x10uLL, 0);
          if (!uint32le)
          {
            v19 = *(v4 + 552);
            if ((v19 & 0x28800) == 0)
            {
              goto LABEL_43;
            }

            if ((*(v4 + 68) & 4) != 0)
            {
              if (!v6)
              {
LABEL_43:
                if ((v19 & 8) != 0 || ([v3 sr_flags] & 0x400) != 0)
                {
                  uint32le = smb2_rq_verify(v3, &v24, __dst);
                  if (uint32le)
                  {
                    goto LABEL_4;
                  }
                }
              }
            }

            else
            {
              if (v6 <= 3 && v6 != 2)
              {
                goto LABEL_43;
              }

              if (![v3 onEncryptedShare])
              {
                v19 = *(v4 + 552);
                goto LABEL_43;
              }
            }

            v10 = piston_ntstatus_to_errno([v3 sr_ntstatus]);
            v20 = [v3 sr_ntstatus];
            if (v20 == -1073740964)
            {
              if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_rq_parse_header_cold_3(v3);
              }
            }

            else if (v20 == -1073741670 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_rq_parse_header_cold_4(v3);
            }

            goto LABEL_8;
          }
        }

LABEL_4:
        v10 = uint32le;
        goto LABEL_8;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_rq_parse_header_cold_2(&v27, &v26, v3);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_parse_header_cold_1(&v30);
    }

    v10 = 72;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_rq_parse_header_cold_5();
  }

  v10 = 12;
LABEL_8:
  v11 = [v3 sr_command];
  if (v10 == 16 && v11 == 5)
  {
    v13 = 35;
  }

  else
  {
    v13 = v10;
  }

  [v3 setReplyError:v13];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void piston_smb3_derive_keys(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 getSessionPtr];
    if (v3)
    {
      v4 = v3;
      *(v3 + 260) = 0;
      *(v3 + 488) = 0;
      *(v3 + 528) = 0;
      memset(&ctx, 0, sizeof(ctx));
      __buf = 0;
      v5 = v3 + 224;
      CCHmacInit(&ctx, 1u, *(v3 + 216), *(v3 + 224));
      arc4random_buf(&__buf, 8uLL);
      CCHmacUpdate(&ctx, &__buf, 8uLL);
      CCHmacFinal(&ctx, &macOut);
      *(v5 + 312) = macOut;
      if (*(v5 - 8))
      {
        if (*v5 > 0xFu)
        {
          if ((*(v4 + 554) & 2) != 0)
          {
            *ctx.ctx = *"SMBSigningKey";
          }

          else
          {
            macOut = *"SmbSign";
            *ctx.ctx = *"SMB2AESCMAC";
          }

          if (piston_smb3_kdf_hmac_sha256())
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_smb3_derive_keys_cold_1();
            }
          }

          else
          {
            *(v4 + 260) = 16;
            *(v4 + 456) = 0;
            *(v4 + 464) = 0;
            *(v4 + 488) = 0;
            if ((*(v4 + 554) & 2) != 0)
            {
              strcpy(&ctx, "SMBC2SCipherKey");
              if (*(v4 + 492) - 3 > 1)
              {
                v11 = *(v4 + 216);
                v12 = *(v4 + 224);
                v8 = 16;
              }

              else
              {
                v9 = *(v4 + 232);
                v10 = *(v4 + 240);
                v8 = 32;
              }
            }

            else
            {
              macOut = *"ServerIn ";
              *ctx.ctx = *"SMB2AESCCM";
              v6 = *(v4 + 216);
              v7 = *(v4 + 224);
              v8 = 16;
            }

            if (piston_smb3_kdf_hmac_sha256())
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                piston_smb3_derive_keys_cold_2();
              }
            }

            else
            {
              *(v4 + 488) = v8;
              if ((*(v4 + 554) & 2) != 0)
              {
                strcpy(&ctx, "SMBS2CCipherKey");
                if (*(v4 + 492) - 3 > 1)
                {
                  v18 = *(v4 + 216);
                  v19 = *(v4 + 224);
                  v15 = 16;
                }

                else
                {
                  v16 = *(v4 + 232);
                  v17 = *(v4 + 240);
                  v15 = 32;
                }
              }

              else
              {
                macOut = *"ServerOut";
                *ctx.ctx = *"SMB2AESCCM";
                v13 = *(v4 + 216);
                v14 = *(v4 + 224);
                v15 = 16;
              }

              if (piston_smb3_kdf_hmac_sha256())
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  piston_smb3_derive_keys_cold_3();
                }
              }

              else
              {
                *(v4 + 528) = v15;
              }
            }
          }
        }

        else if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_smb3_derive_keys_cold_4(v5);
        }
      }

      else if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_smb3_derive_keys_cold_5();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_smb3_derive_keys_cold_6();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_smb3_derive_keys_cold_7();
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t piston_smb3_kdf_hmac_sha256()
{
  CtrHmac = CCKDFParametersCreateCtrHmac();
  if (!CtrHmac)
  {
    CtrHmac = CCDeriveKey();
    CCKDFParametersDestroy();
  }

  return CtrHmac;
}

double smb_reset_sig(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    free(v2);
    *(a1 + 216) = 0;
  }

  *(a1 + 224) = 0;
  v3 = *(a1 + 232);
  if (v3)
  {
    free(v3);
    *(a1 + 232) = 0;
  }

  *(a1 + 240) = 0;
  *(a1 + 252) = 0;
  *(a1 + 244) = 0;
  *(a1 + 260) = 0;
  result = 0.0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  return result;
}

uint64_t smb2_rq_sign(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 sr_sessionp];
  v3 = [v1 sr_command];
  if (!v1)
  {
    if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_sign_cold_5();
    }

    goto LABEL_44;
  }

  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_sign_cold_4();
    }

    goto LABEL_44;
  }

  if (v3 < 2)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (!*(v2 + 216))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_rq_sign_cold_3();
    }

LABEL_44:
    v4 = 22;
    goto LABEL_45;
  }

  v5 = *(v2 + 552) & 0x28800;
  v35 = v1;
  v6 = v1;
  v7 = &piston_log_level;
  v8 = MEMORY[0x277D86220];
  do
  {
    v9 = v6;
    v10 = v9;
    if (v5)
    {
      v11 = [v9 sr_sessionp];
      v12 = [v10 sr_rqsigp];
      if (v12)
      {
        v13 = *(v11 + 260);
        if (v13 > 0xF)
        {
          v23 = v12;
          v24 = v5;
          v25 = v7;
          *v12 = 0;
          v12[1] = 0;
          v26 = [v10 sr_flagsp];
          *v26 |= 8u;
          v27 = [v10 smb_rq_getrequest];
          v28 = *v27;
          if (*v27)
          {
            v29 = 0;
            do
            {
              v29 += mbuf_len(v28);
              v28 = mbuf_next(v28);
            }

            while (v28);
          }

          else
          {
            v29 = 0;
          }

          if ([v10 sr_command] == 9)
          {
            v30 = [v10 writeLen];
            v31 = [v10 writeData];
            v32 = [v31 bytes];
          }

          else
          {
            v30 = 0;
            v32 = 0;
          }

          smb3_get_signature(v11, v10, v27, 0, v29, v32, v30, ([v10 sr_flags] >> 8) & 1, v23);
          v7 = v25;
          v5 = v24;
          v8 = MEMORY[0x277D86220];
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          buf.ctx[0] = 136315394;
          *&buf.ctx[1] = "smb3_sign";
          LOWORD(buf.ctx[3]) = 1024;
          *(&buf.ctx[3] + 2) = v13;
          _os_log_error_impl(&dword_264287000, v8, OS_LOG_TYPE_ERROR, "%s: smb3 keylen %u\n", &buf, 0x12u);
        }
      }

      else if (*v7 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        smb2_rq_sign_cold_1(v36, &v37);
      }
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
      v14 = [v9 sr_sessionp];
      v15 = [v10 sr_rqsigp];
      data = 0;
      if (v15)
      {
        v16 = v15;
        memset(macOut, 0, sizeof(macOut));
        *v15 = 0;
        v15[1] = 0;
        v17 = [v10 sr_flagsp];
        *v17 |= 8u;
        v18 = [v10 smb_rq_getrequest];
        CCHmacInit(&buf, 2u, *(v14 + 216), *(v14 + 224));
        for (i = *v18; i; i = mbuf_next(i))
        {
          v20 = mbuf_data(i);
          v21 = mbuf_len(i);
          CCHmacUpdate(&buf, v20, v21);
        }

        if ([v10 sr_command] == 9)
        {
          v22 = [v10 writeData];
          CCHmacUpdate(&buf, [v22 bytes], objc_msgSend(v10, "writeLen"));

          if (([v10 sr_flags] & 0x100) != 0 && (objc_msgSend(v10, "writeLen") & 7) != 0)
          {
            CCHmacUpdate(&buf, &data, 8 - ([v10 writeLen] & 7));
          }
        }

        CCHmacFinal(&buf, macOut);
        *v16 = macOut[0];
      }

      else if (*v7 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        smb2_rq_sign_cold_2(v38, &v39);
      }
    }

    v6 = [v10 sr_next_rqp];
  }

  while (v6);
  v4 = 0;
  v1 = v35;
LABEL_45:

  v33 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t smb2_rq_verify(void *a1, uint64_t a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 sr_sessionp];
  v7 = [v5 sr_command];
  if (v5)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_rq_verify_cold_19();
      }

      goto LABEL_24;
    }

    v8 = v7;
    LODWORD(v9) = [v5 sr_rspnextcmd];
    if ((*(v6 + 552) & 8) == 0 && ([v5 sr_flags] & 0x400) == 0)
    {
      if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_rq_verify_cold_18();
      }

      goto LABEL_24;
    }

    v10 = 0;
    if (!*(v6 + 216) || v8 == 18 || v8 < 2)
    {
      goto LABEL_25;
    }

    v11 = *(v6 + 552);
    if ((v11 & 0x800000) != 0)
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    v12 = v11 & 0x28800;
    v13 = v5;
    v14 = v13;
    if (v12)
    {
      v15 = [v13 sr_sessionp];
      if (v15)
      {
        v16 = v15;
        if (*(v15 + 260) > 0xFu)
        {
          v55 = v14;
          v27 = *(a2 + 8);
          v28 = mbuf_data(v27);
          v29 = mbuf_len(v27);
          v30 = *(a2 + 8);
          if (v30)
          {
            v31 = v29 + v28 - *(a2 + 16);
            v32 = 48;
            while (1)
            {
              if (v30 != *(a2 + 8))
              {
                v31 = mbuf_len(v30);
              }

              if (v32 < v31)
              {
                break;
              }

              v30 = mbuf_next(v30);
              v32 -= v31;
              if (!v30)
              {
                goto LABEL_39;
              }
            }

            v54 = v16;
            v33 = 16;
            while (1)
            {
              v34 = v30 == *(a2 + 8) ? *(a2 + 16) : mbuf_data(v30);
              v35 = v33 >= v31 - v32 ? v31 - v32 : v33;
              bzero((v34 + v32), v35);
              v33 -= v35;
              v36 = mbuf_next(v30);
              if (!v36)
              {
                break;
              }

              v30 = v36;
              v31 = mbuf_len(v36);
              v32 = 0;
              if (!v33)
              {
                goto LABEL_105;
              }
            }

            if (!v33)
            {
LABEL_105:
              if (v9)
              {
                v9 = v9;
                v49 = v54;
                v14 = v55;
              }

              else
              {
                v50 = *(a2 + 8);
                v51 = mbuf_data(v50);
                v9 = mbuf_len(v50) + v51 - *(a2 + 16);
                v52 = mbuf_next(v50);
                v49 = v54;
                v14 = v55;
                if (v52)
                {
                  v53 = v52;
                  do
                  {
                    v9 += mbuf_len(v53);
                    v53 = mbuf_next(v53);
                  }

                  while (v53);
                }
              }

              smb3_get_signature(v49, v14, 0, a2, v9, 0, 0, 0, &ctx);
              v17 = timingsafe_bcmp(a3, &ctx, 0x10uLL);
              if (v17 && piston_log_level && (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) || !smb2_rq_verify_cold_2(v14)) && (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) || !smb2_rq_verify_cold_3(&ctx)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_rq_verify_cold_4(a3);
              }

              goto LABEL_46;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_rq_verify_cold_1();
            }
          }

          else
          {
LABEL_39:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_rq_verify_cold_5();
            }
          }

          goto LABEL_41;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_rq_verify_cold_6();
        }

        v17 = 80;
        goto LABEL_46;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_rq_verify_cold_7();
      }
    }

    else
    {
      memset(&ctx, 0, sizeof(ctx));
      v20 = [v13 sr_sessionp];
      if (v20)
      {
        v21 = v20;
        v55 = v14;
        v22 = *(a2 + 8);
        v23 = mbuf_data(v22);
        v24 = mbuf_len(v22) + v23 - *(a2 + 16);
        v25 = mbuf_len(v22);
        v26 = mbuf_len(v22) - v24;
        if (v26 > v25)
        {
          if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_rq_verify_cold_8();
          }

          goto LABEL_41;
        }

        if (v9)
        {
          v9 = v9;
        }

        else
        {
          v37 = mbuf_next(v22);
          v9 = v24;
          if (v37)
          {
            v38 = v37;
            v9 = v24;
            do
            {
              v9 += mbuf_len(v38);
              v38 = mbuf_next(v38);
            }

            while (v38);
          }
        }

        if (v9 <= 0x3F)
        {
          if (!piston_log_level)
          {
            goto LABEL_41;
          }

          v14 = v55;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_rq_verify_cold_14();
          }

LABEL_70:
          v17 = 72;
          goto LABEL_46;
        }

        data[0] = 0;
        data[1] = 0;
        CCHmacInit(&ctx, 2u, *(v21 + 216), *(v21 + 224));
        v39 = 48;
        while (1)
        {
          if (v24)
          {
            if (v26 > v25)
            {
              if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_rq_verify_cold_8();
              }

              goto LABEL_41;
            }
          }

          else
          {
            v40 = mbuf_next(v22);
            if (!v40)
            {
              if (!piston_log_level)
              {
                goto LABEL_41;
              }

              v14 = v55;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_rq_verify_cold_11();
              }

              goto LABEL_70;
            }

            v22 = v40;
            v24 = mbuf_len(v40);
            v25 = mbuf_len(v22);
            v26 = 0;
          }

          if (v39 >= v24)
          {
            v41 = v24;
          }

          else
          {
            v41 = v39;
          }

          v42 = mbuf_data(v22);
          CCHmacUpdate(&ctx, (v42 + v26), v41);
          v26 += v41;
          v24 -= v41;
          v9 -= v41;
          v39 -= v41;
          if (!v39)
          {
            v43 = 16;
            CCHmacUpdate(&ctx, data, 0x10uLL);
            while (1)
            {
              if (v24)
              {
                if (v26 > v25)
                {
                  if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_41;
                }
              }

              else
              {
                v44 = mbuf_next(v22);
                if (!v44)
                {
                  if (!piston_log_level)
                  {
                    goto LABEL_41;
                  }

                  v14 = v55;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    smb2_rq_verify_cold_11();
                  }

                  goto LABEL_70;
                }

                v22 = v44;
                v24 = mbuf_len(v44);
                v25 = mbuf_len(v22);
                v26 = 0;
              }

              if (v43 >= v24)
              {
                v45 = v24;
              }

              else
              {
                v45 = v43;
              }

              v26 += v45;
              v24 -= v45;
              v9 -= v45;
              v43 -= v45;
              if (!v43)
              {
                if (!v9)
                {
LABEL_101:
                  CCHmacFinal(&ctx, macOut);
                  v17 = timingsafe_bcmp(a3, macOut, 0x10uLL);
                  goto LABEL_42;
                }

                while (1)
                {
                  if (v24)
                  {
                    if (v26 > v25)
                    {
                      if (!piston_log_level || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_41;
                      }

LABEL_124:
                      smb2_rq_verify_cold_8();
LABEL_41:
                      v17 = 72;
LABEL_42:
                      v14 = v55;
LABEL_46:

                      if (v17)
                      {
                        if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          smb2_rq_verify_cold_17(v14);
                        }

                        v10 = 80;
                        goto LABEL_25;
                      }

                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    v46 = mbuf_next(v22);
                    if (!v46)
                    {
                      if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        smb2_rq_verify_cold_11();
                      }

                      goto LABEL_41;
                    }

                    v22 = v46;
                    v24 = mbuf_len(v46);
                    v25 = mbuf_len(v22);
                    v26 = 0;
                  }

                  if (v9 >= v24)
                  {
                    v47 = v24;
                  }

                  else
                  {
                    v47 = v9;
                  }

                  v48 = mbuf_data(v22);
                  CCHmacUpdate(&ctx, (v48 + v26), v47);
                  v26 += v47;
                  v24 -= v47;
                  v9 -= v47;
                  if (!v9)
                  {
                    goto LABEL_101;
                  }
                }
              }
            }
          }
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_rq_verify_cold_16();
      }
    }

    v17 = 22;
    goto LABEL_46;
  }

  if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_rq_verify_cold_20();
  }

  v10 = 22;
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t smb3_rq_encrypt(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v32 = 0;
  v2 = [v1 sr_sessionp];
  v35 = 0uLL;
  v34 = 0uLL;
  cryptorRef[1] = 0;
  dataOutMoved = 0;
  dataOut[0] = 0;
  dataOut[1] = 0;
  cryptorRef[0] = 0;
  if (*(v2 + 492) - 1 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_rq_encrypt_cold_1((v2 + 492));
    }

    *(v2 + 492) = 1;
  }

  v3 = [v1 smb_rq_getrequest];
  v4 = [v1 sr_flags];
  v5 = mb_detach(v3);
  if ((v4 & 0x100) != 0)
  {
    v6 = [v1 sr_next_rqp];
    if (v6)
    {
      v7 = v6;
      do
      {
        v8 = mb_detach([v7 smb_rq_getrequest]);
        v5 = mbuf_concatenate(v5, v8);
        v9 = [v7 sr_next_rqp];

        v7 = v9;
      }

      while (v9);
    }

    m_fixhdr(v5);
  }

  v32 = 0;
  if (*(v2 + 488))
  {
    if (mbuf_gethdr(0, 1, &v32))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_rq_encrypt_cold_2();
      }

      v10 = 55;
      goto LABEL_32;
    }

    v11 = mbuf_data(v32);
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0;
    *v11 = 1112364029;
    pthread_mutex_lock(v2);
    v12 = *(v2 + 544);
    *(v2 + 544) = v12 + 1;
    if (v12 == -1)
    {
      *(v2 + 544) = 1;
      ++*(v2 + 536);
    }

    pthread_mutex_unlock(v2);
    v35 = *(v2 + 536);
    v13 = *(v2 + 492);
    if (v13 > 2)
    {
      if (v13 != 3)
      {
        if (v13 != 4)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    else if (v13 != 1)
    {
      if (v13 != 2)
      {
LABEL_28:
        *(v11 + 20) = v35;
        chain_len = mbuf_get_chain_len(v5);
        if (HIDWORD(chain_len))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_rq_encrypt_cold_17();
          }

          goto LABEL_31;
        }

        *(v11 + 36) = chain_len;
        *(v11 + 42) = 1;
        *(v11 + 44) = [v1 sr_rqsessionid];
        mbuf_setlen(v32, 52);
        v17 = *(v2 + 492);
        if (v17 > 2)
        {
          if (v17 != 3)
          {
            if (v17 != 4)
            {
LABEL_94:
              v32 = mbuf_concatenate(v32, v5);
              m_fixhdr(v32);
              mb_initm(v3, v32);
              v10 = 0;
LABEL_34:
              if (cryptorRef[0])
              {
                CCCryptorRelease(cryptorRef[0]);
              }

              goto LABEL_36;
            }

            goto LABEL_43;
          }
        }

        else if (v17 != 1)
        {
          if (v17 != 2)
          {
            goto LABEL_94;
          }

LABEL_43:
          if (CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, (v2 + 456), *(v2 + 488), 0, 0, 0, 0, cryptorRef))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
LABEL_31:
              v10 = 80;
LABEL_32:
              mbuf_freem(v5);
              if (v32)
              {
                mbuf_freem(v32);
              }

              goto LABEL_34;
            }

LABEL_45:
            smb3_rq_encrypt_cold_3();
            goto LABEL_31;
          }

          if (CCCryptorAddParameter())
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

LABEL_51:
            smb3_rq_encrypt_cold_6();
            goto LABEL_31;
          }

          if (CCCryptorAddParameter())
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

LABEL_57:
            smb3_rq_encrypt_cold_7();
            goto LABEL_31;
          }

          if (v5)
          {
            v18 = v5;
            while (1)
            {
              v19 = mbuf_len(v18);
              if (v19)
              {
                v20 = v19;
                v21 = cryptorRef[0];
                v22 = mbuf_data(v18);
                v23 = mbuf_data(v18);
                if (CCCryptorUpdate(v21, v22, v20, v23, v20, &dataOutMoved))
                {
                  break;
                }
              }

              v18 = mbuf_next(v18);
              if (!v18)
              {
                goto LABEL_66;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            goto LABEL_76;
          }

LABEL_66:
          if (CCCryptorGCMFinalize())
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb3_rq_encrypt_cold_16();
            }

            goto LABEL_31;
          }

LABEL_93:
          *(v11 + 4) = v34;
          goto LABEL_94;
        }

        if (CCCryptorCreateWithMode(0, 0xCu, 0, 0, 0, (v2 + 456), *(v2 + 488), 0, 0, 0, 0, cryptorRef))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }

        if (CCCryptorAddParameter())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_rq_encrypt_cold_4();
          }

          goto LABEL_31;
        }

        if (CCCryptorAddParameter())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_rq_encrypt_cold_5();
          }

          goto LABEL_31;
        }

        if (CCCryptorAddParameter())
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          goto LABEL_51;
        }

        if (CCCryptorAddParameter())
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          goto LABEL_57;
        }

        if (v5)
        {
          v24 = v5;
          while (1)
          {
            v25 = mbuf_len(v24);
            if (v25)
            {
              v26 = v25;
              v27 = cryptorRef[0];
              v28 = mbuf_data(v24);
              v29 = mbuf_data(v24);
              if (CCCryptorUpdate(v27, v28, v26, v29, v26, &dataOutMoved))
              {
                break;
              }
            }

            v24 = mbuf_next(v24);
            if (!v24)
            {
              goto LABEL_82;
            }
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

LABEL_76:
          smb3_rq_encrypt_cold_8();
          goto LABEL_31;
        }

LABEL_82:
        if (CCCryptorFinal(cryptorRef[0], dataOut, 0x10uLL, &dataOutMoved))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_rq_encrypt_cold_9();
          }

          goto LABEL_31;
        }

        if (dataOutMoved)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_rq_encrypt_cold_10(&dataOutMoved);
          }

          goto LABEL_31;
        }

        if (CCCryptorGetParameter())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_rq_encrypt_cold_11();
          }

          goto LABEL_31;
        }

        goto LABEL_93;
      }

LABEL_26:
      HIDWORD(v35) = 0;
      goto LABEL_28;
    }

    HIBYTE(v35) = 0;
    *(&v35 + 11) = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb3_rq_encrypt_cold_18();
  }

  v10 = 22;
LABEL_36:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t smb3_msg_decrypt(uint64_t a1, void **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  cryptorRef = 0;
  v26 = 0;
  *v28 = 0uLL;
  dataOutMoved = 0;
  dataOut[0] = 0;
  dataOut[1] = 0;
  if (*(a1 + 492) - 1 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_msg_decrypt_cold_1((a1 + 492));
    }

    *(a1 + 492) = 1;
  }

  v26 = 0;
  if (!*(a1 + 528))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_msg_decrypt_cold_22();
    }

    goto LABEL_13;
  }

  v4 = *a2;
  if (mbuf_split(*a2, 0x34uLL, 0, &v26))
  {
LABEL_10:
    v7 = 72;
    goto LABEL_14;
  }

  v5 = mbuf_data(v4);
  v6 = v5;
  if (*v5 != 1112364029)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_msg_decrypt_cold_2(v6);
    }

    goto LABEL_10;
  }

  if (*(v5 + 42) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_msg_decrypt_cold_3();
    }

    goto LABEL_13;
  }

  if (*(v5 + 44) != *(a1 + 568))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_msg_decrypt_cold_4((a1 + 568));
    }

    goto LABEL_13;
  }

  v10 = *(v5 + 36);
  v11 = *(a1 + 492);
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        goto LABEL_87;
      }

      goto LABEL_29;
    }

LABEL_32:
    if (CCCryptorCreateWithMode(1u, 0xCu, 0, 0, 0, (a1 + 494), *(a1 + 528), 0, 0, 0, 0, &cryptorRef))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

    if (CCCryptorAddParameter())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_msg_decrypt_cold_6();
      }

      goto LABEL_13;
    }

    if (CCCryptorAddParameter())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_msg_decrypt_cold_7();
      }

      goto LABEL_13;
    }

    if (CCCryptorAddParameter())
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }

    if (CCCryptorAddParameter())
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }

    v18 = v26;
    if (!v26)
    {
LABEL_66:
      if (CCCryptorFinal(cryptorRef, dataOut, 0x10uLL, &dataOutMoved))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb3_msg_decrypt_cold_11();
        }
      }

      else if (dataOutMoved)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb3_msg_decrypt_cold_12(&dataOutMoved);
        }
      }

      else if (CCCryptorGetParameter())
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb3_msg_decrypt_cold_13();
        }
      }

      else
      {
        if (!cc_cmp_safe())
        {
          goto LABEL_87;
        }

        if (piston_log_level)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_msg_decrypt_cold_14();
          }

          if (piston_log_level)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb3_msg_decrypt_cold_15(v6 + 4, v6);
            }

            if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb3_msg_decrypt_cold_16(v28);
            }
          }
        }
      }

      goto LABEL_13;
    }

    while (1)
    {
      v19 = mbuf_len(v18);
      if (v19)
      {
        v20 = v19;
        v21 = cryptorRef;
        v22 = mbuf_data(v18);
        v23 = mbuf_data(v18);
        if (CCCryptorUpdate(v21, v22, v20, v23, v20, &dataOutMoved))
        {
          break;
        }
      }

      v18 = mbuf_next(v18);
      if (!v18)
      {
        goto LABEL_66;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

LABEL_61:
    smb3_msg_decrypt_cold_10();
    goto LABEL_13;
  }

  if (v11 == 1)
  {
    goto LABEL_32;
  }

  if (v11 != 2)
  {
LABEL_87:
    v7 = 0;
    *a2 = v26;
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  if (!CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, (a1 + 494), *(a1 + 528), 0, 0, 0, 0, &cryptorRef))
  {
    if (CCCryptorAddParameter())
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

LABEL_37:
      smb3_msg_decrypt_cold_8();
      goto LABEL_13;
    }

    if (CCCryptorAddParameter())
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

LABEL_43:
      smb3_msg_decrypt_cold_9();
      goto LABEL_13;
    }

    v12 = v26;
    if (!v26)
    {
LABEL_51:
      *v28 = *(v6 + 4);
      if (!CCCryptorGCMFinalize())
      {
        goto LABEL_87;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_msg_decrypt_cold_21();
      }

      goto LABEL_13;
    }

    while (1)
    {
      v13 = mbuf_len(v12);
      if (v13)
      {
        v14 = v13;
        v15 = cryptorRef;
        v16 = mbuf_data(v12);
        v17 = mbuf_data(v12);
        if (CCCryptorUpdate(v15, v16, v14, v17, v14, &dataOutMoved))
        {
          break;
        }
      }

      v12 = mbuf_next(v12);
      if (!v12)
      {
        goto LABEL_51;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_31:
    smb3_msg_decrypt_cold_5();
  }

LABEL_13:
  v7 = 80;
LABEL_14:
  v4 = v26;
  if (v26)
  {
LABEL_15:
    mbuf_freem(v4);
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t smb3_verify_session_setup(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  ccaes_cbc_encrypt_mode();
  v6 = *(a1 + 264);
  if (!a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_verify_session_setup_cold_9();
    }

    goto LABEL_8;
  }

  if (a3 > 0x40)
  {
    if (*(a1 + 260) > 0xFu)
    {
      v10 = *(a2 + 48);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      if (v6 == 2)
      {
        if (CCCryptorGCMOneshotEncrypt())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_verify_session_setup_cold_1();
          }

          goto LABEL_8;
        }
      }

      else
      {
        if (v6 != 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_verify_session_setup_cold_6();
          }

          goto LABEL_8;
        }

        if (cccmac_one_shot_generate())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_verify_session_setup_cold_2();
          }

          goto LABEL_8;
        }
      }

      *v11 = v9;
      result = cc_cmp_safe();
      if (!result)
      {
        goto LABEL_9;
      }

      if (piston_log_level)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb3_verify_session_setup_cold_3();
        }

        if (piston_log_level)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_verify_session_setup_cold_4(v11);
          }

          if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb3_verify_session_setup_cold_5(&v10);
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_verify_session_setup_cold_7();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb3_verify_session_setup_cold_8();
  }

LABEL_8:
  result = 80;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t smb311_pre_auth_integrity_hash_init(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  if (a1)
  {
    memset(&v11, 0, sizeof(v11));
    CC_SHA512_Init(&v11);
    if (a2)
    {
      v6 = (a1 + 328);
    }

    else
    {
      v6 = v12;
    }

    CC_SHA512_Update(&v11, v6, 0x40u);
    for (; a3; a3 = mbuf_next(a3))
    {
      if (mbuf_len(a3))
      {
        v7 = mbuf_data(a3);
        v8 = mbuf_len(a3);
        CC_SHA512_Update(&v11, v7, v8);
      }
    }

    CC_SHA512_Final((a1 + 392), &v11);
    result = 0;
  }

  else
  {
    result = 22;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t smb311_pre_auth_integrity_hash_update(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  memset(&v7, 0, sizeof(v7));
  CC_SHA512_Init(&v7);
  CC_SHA512_Update(&v7, (a1 + 392), 0x40u);
  for (; a2; a2 = mbuf_next(a2))
  {
    if (mbuf_len(a2))
    {
      v4 = mbuf_data(a2);
      v5 = mbuf_len(a2);
      CC_SHA512_Update(&v7, v4, v5);
    }
  }

  CC_SHA512_Final((a1 + 392), &v7);
  return 0;
}

uint64_t smb311_pre_auth_integrity_hash_print(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

void smb3_get_signature(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, void *a9)
{
  v36 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v34 = 0u;
  v35 = 0u;
  v32 = 0;
  v33 = 0;
  v17 = *(a1 + 264);
  cryptorRef = 0;
  v31 = 0;
  if (!a9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_get_signature_cold_12();
    }

    goto LABEL_76;
  }

  if (!(a3 | a4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_get_signature_cold_11();
    }

    goto LABEL_76;
  }

  if (*(a1 + 260) <= 0xFu)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_get_signature_cold_10((a1 + 260));
    }

    goto LABEL_76;
  }

  *a9 = 0;
  a9[1] = 0;
  v18 = (a4 + 8);
  if (!a4)
  {
    v18 = a3;
  }

  v19 = *v18;
  v29 = v17;
  if (v17 == 2)
  {
    if (CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, (a1 + 244), *(a1 + 260), 0, 0, 0, 0, &cryptorRef))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_get_signature_cold_1();
      }

      goto LABEL_74;
    }

    v31 = [v16 sr_messageid];
    if (a4)
    {
      LODWORD(v32) = v32 | 1;
    }

    if ([v16 sr_command] == 12)
    {
      LODWORD(v32) = v32 | 2;
    }

    if (CCCryptorGCMSetIV())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_get_signature_cold_2();
      }

      goto LABEL_74;
    }

    v21 = 0;
  }

  else
  {
    if (v17 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_get_signature_cold_9();
      }

      goto LABEL_74;
    }

    v20 = *(a1 + 260);
    v21 = CCAESCmacCreate();
    if (!v21)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_get_signature_cold_8();
      }

      goto LABEL_74;
    }
  }

  v27 = v21;
  if (!v19)
  {
LABEL_48:
    v25 = v27;
    if (!a6 || !a7)
    {
      goto LABEL_59;
    }

    if (v29 == 1)
    {
      CCAESCmacUpdate();
    }

    else if (CCCryptorGCMAddAAD())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_get_signature_cold_4();
      }

      goto LABEL_72;
    }

    if (a8 && (a7 & 7) != 0)
    {
      if (v29 == 1)
      {
        CCAESCmacUpdate();
LABEL_60:
        CCAESCmacFinal();
        goto LABEL_67;
      }

      if (CCCryptorGCMAddAAD())
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb3_get_signature_cold_5();
        }

        goto LABEL_72;
      }
    }

    else
    {
LABEL_59:
      if (v29 == 1)
      {
        goto LABEL_60;
      }
    }

    if (CCCryptorGCMFinalize())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb3_get_signature_cold_6();
      }

      goto LABEL_72;
    }

LABEL_67:
    if (a4 && a5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb3_get_signature_cold_7();
    }

    *a9 = v34;
    goto LABEL_72;
  }

  v28 = v19;
  while (1)
  {
    if (a4 && v19 == v28)
    {
      v22 = mbuf_data(v19);
      v23 = mbuf_len(v19) + v22 - *(a4 + 16);
    }

    else
    {
      v23 = mbuf_len(v19);
      mbuf_data(v19);
    }

    v24 = a5 >= v23 ? v23 : a5;
    if (v29 != 1)
    {
      break;
    }

    CCAESCmacUpdate();
LABEL_27:
    if (a4 == 0 || a5 == 0 || (a5 -= v24) != 0)
    {
      v19 = mbuf_next(v19);
      if (v19)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  if (!CCCryptorGCMAddAAD())
  {
    goto LABEL_27;
  }

  v25 = v27;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb3_get_signature_cold_2();
  }

LABEL_72:
  if (v25)
  {
    CCAESCmacDestroy();
  }

LABEL_74:
  if (cryptorRef)
  {
    CCCryptorGCMReset();
    CCCryptorRelease(cryptorRef);
  }

LABEL_76:

  v26 = *MEMORY[0x277D85DE8];
}

unsigned __int8 *OUTLINED_FUNCTION_3_4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  v7 = result[4];
  v8 = result[5];
  v9 = result[6];
  v10 = result[7];
  v11 = result[8];
  v12 = result[9];
  return result;
}

char *OUTLINED_FUNCTION_6_0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  v7 = result[4];
  v8 = result[5];
  v9 = result[6];
  v10 = result[7];
  v11 = result[8];
  v12 = result[9];
  return result;
}

void piston_flush(void *a1, _WORD *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 pd];
  v8 = [v7 sock];

  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_flush_cold_3();
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else if (!v6)
    {
      goto LABEL_20;
    }

    v6[2](v6, 57);
    goto LABEL_20;
  }

  v9 = v5;
  v10 = v6;
  v11 = [v9 treeID];
  v12 = [v9 onEncryptedShare];
  v13 = [v9 pd];
  v28 = 0;
  v14 = smb2_rq_alloc(7, v11, v12, 0, v13, &v28);
  v15 = v28;

  if (v14)
  {
    if (v15)
    {
      [(SMB_rq *)v15 smb_rq_done];
    }

    if (v10)
    {
      v10[2](v10, v14);
    }

    goto LABEL_17;
  }

  v16 = [(SMB_rq *)v15 smb_rq_getrequest];
  mb_put_uint16le(v16, 24);
  mb_put_uint16le(v16, -(*a2 & 1));
  mb_put_uint32le(v16, 0);
  mb_put_uint64le(v16, [v9 fid]);
  [v9 fid];
  mb_put_uint64le(v16, v17);
  v18 = [v9 pd];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __smb2_smb_flush_block_invoke;
  v24 = &unk_279B4F628;
  v19 = v10;
  v26 = v19;
  v27 = a2;
  v20 = v15;
  v25 = v20;
  v14 = smb_rq_simple_block(v18, v20, &v21);

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_flush_cold_1();
      if (!v20)
      {
LABEL_14:
        if (v19)
        {
          v19[2](v19, v14);
        }

        goto LABEL_16;
      }
    }

    else if (!v20)
    {
      goto LABEL_14;
    }

    [(SMB_rq *)v20 smb_rq_done:v21];
    goto LABEL_14;
  }

LABEL_16:

LABEL_17:
  if (v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_flush_cold_2();
  }

LABEL_20:
}

void __smb2_smb_flush_block_invoke(uint64_t a1, uint64_t uint16le)
{
  v8 = 0;
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v5 + 16) + 4) = [v6 sr_ntstatus];
  if (uint16le)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_flush_block_invoke_cold_1(v5);
    }
  }

  else
  {
    v7 = [*v5 smb_rq_getreply];
    uint16le = md_get_uint16le(v7, &v8 + 1);
    if (!uint16le)
    {
      if (HIWORD(v8) == 4)
      {
        uint16le = md_get_uint16le(v7, &v8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __smb2_smb_flush_block_invoke_cold_2(&v8 + 1);
        }

        uint16le = 72;
      }
    }
  }

  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, uint16le);
  }
}

void sub_2642A3C74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_2642A5648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_2642A5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 56), 8);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(a1);
}

void sub_2642A60CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void piston_gss_reset(gss_cred_id_t *cred_handle)
{
  minor_status = 0;
  v2 = cred_handle + 15;
  if (cred_handle[15])
  {
    gss_delete_sec_context(&minor_status, v2, 0);
    *v2 = 0;
  }

  if (cred_handle[16])
  {
    gss_destroy_cred(&minor_status, cred_handle + 16);
    cred_handle[16] = 0;
  }

  v3 = cred_handle[18];
  if (v3)
  {
    free(v3);
    cred_handle[18] = 0;
  }

  cred_handle[17] = 0;
  v4 = cred_handle[20];
  if (v4)
  {
    free(v4);
    cred_handle[20] = 0;
  }

  cred_handle[19] = 0;
}

uint64_t piston_gss_parse_server_mechs(uint64_t a1)
{
  output_token.length = 0;
  output_token.value = 0;
  memset(v16, 0, sizeof(v16));
  memset(v14, 0, sizeof(v14));
  v15 = 0u;
  if (!*(a1 + 144))
  {
    return 589824;
  }

  minor_status = 0;
  v2 = gss_decapsulate_token((a1 + 136), MEMORY[0x277CCAF40], &output_token);
  if (!v2)
  {
    v3 = decode_NegotiationToken(output_token.value, output_token.length, v16, 0);
    if (v3)
    {
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_gss_parse_server_mechs_cold_1();
      }

      v4 = decode_NegotiationTokenWin(output_token.value, output_token.length, v14, 0);
      if (v4)
      {
        v2 = v4;
        if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_gss_parse_server_mechs_cold_2();
        }

        v5 = 0;
        goto LABEL_44;
      }

      if (LODWORD(v14[0]) != 1)
      {
        gss_release_buffer(&minor_status, &output_token);
        v5 = 0;
        v2 = 589824;
        goto LABEL_48;
      }

      p_value = v14 + 1;
      if (*(&v15 + 1))
      {
        if (**(&v15 + 1))
        {
          if ((piston_log_level & 4) != 0)
          {
            v7 = ***(&v15 + 1);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_gss_parse_server_mechs_cold_3();
            }
          }
        }
      }

      v5 = 0;
    }

    else
    {
      if (LODWORD(v16[0].length) != 1)
      {
        v5 = 1;
        v2 = 589824;
LABEL_44:
        gss_release_buffer(&minor_status, &output_token);
        goto LABEL_49;
      }

      p_value = &v16[0].value;
      v5 = 1;
    }

    if (*p_value)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = p_value[1];
        v2 = der_print_heim_oid();
        if (!v2)
        {
          break;
        }

LABEL_41:
        ++v9;
        v8 += 16;
        if (v9 >= *p_value)
        {
          goto LABEL_47;
        }
      }

      if (!strcmp(0, "1.2.840.48018.1.2.2"))
      {
        v11 = 1;
      }

      else if (!strcmp(0, "1.2.840.113554.1.2.2"))
      {
        v11 = 2;
      }

      else if (!strcmp(0, "1.2.752.43.14.3"))
      {
        v11 = 4;
      }

      else if (!strcmp(0, "1.3.6.1.5.5.14"))
      {
        v11 = 8;
      }

      else if (!strcmp(0, "1.3.6.1.4.1.311.2.2.10"))
      {
        v11 = 16;
      }

      else if (!strcmp(0, "1.3.5.1.5.2.7"))
      {
        v11 = 32;
      }

      else
      {
        if (strcmp(0, "1.3.6.1.5.2.5"))
        {
LABEL_40:
          free(0);
          goto LABEL_41;
        }

        v11 = 64;
      }

      *(a1 + 112) |= v11;
      goto LABEL_40;
    }

    v2 = 589824;
LABEL_47:
    gss_release_buffer(&minor_status, &output_token);
    if (!v3)
    {
      goto LABEL_49;
    }

LABEL_48:
    free_NegotiationTokenWin(v14);
LABEL_49:
    if (v5)
    {
      free_NegotiationToken(v16);
    }
  }

  return v2;
}

uint64_t piston_gss_transact(void *a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v1 = a1;
  *minor_status = 0;
  ret_flags = 0;
  output_name = 0;
  actual_mech_type = 0;
  input_name_buffer.length = 0;
  input_name_buffer.value = 0;
  v2 = [v1 getSessionPtr];
  v3 = [v1 sock];

  if (v3)
  {
    v4 = *(v2 + 560);
    if ((v4 & 0x200000) != 0)
    {
      v5 = MEMORY[0x277CCAF18];
    }

    else if ((v4 & 0x400000) != 0)
    {
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_gss_transact_cold_1();
      }

      v5 = MEMORY[0x277CCAF10];
    }

    else
    {
      v5 = MEMORY[0x277CCAF38];
    }

    if (*(v2 + 128))
    {
      goto LABEL_14;
    }

    v15 = [v1 userName];

    if (!v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_gss_transact_cold_38();
      }

      goto LABEL_61;
    }

    if (gss_oid_equal(v5, MEMORY[0x277CCAF18]))
    {
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_gss_transact_cold_2();
      }

      v16 = v1;
      output_cred_handle.__sig = 0;
      error[0] = 0;
      v17 = [v16 getSessionPtr];
      if (!gss_oid_equal(v5, MEMORY[0x277CCAF18]))
      {
        v26 = 0;
        v25 = 0;
        v30 = 983040;
LABEL_166:

        goto LABEL_167;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = [v16 userName];
      v20 = [v16 realm];
      v21 = [v18 stringWithFormat:@"%@@%@", v19, v20];
      v22 = GSSCreateName(v21, MEMORY[0x277CCAF00], error);

      if (!v22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_gss_transact_cold_12(error);
        }

        v25 = 0;
        v26 = 0;
        v30 = 983040;
        goto LABEL_164;
      }

      v23 = CFUUIDCreate(0);
      desired_name = v22;
      if (!v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_gss_transact_cold_11();
        }

        v25 = 0;
        v26 = 0;
        v30 = 983040;
        goto LABEL_163;
      }

      v24 = v23;
      v25 = CFUUIDCreateString(0, v23);
      if (!v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_gss_transact_cold_10();
        }

        v26 = 0;
        v30 = 983040;
        goto LABEL_162;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"XCACHE:%@", v25];
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_gss_transact_cold_3();
      }

      v27 = [MEMORY[0x277CBEB38] dictionary];
      if (!v27)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_gss_transact_cold_9();
        }

        v30 = 983040;
        goto LABEL_161;
      }

      v28 = [v16 password];
      [v27 setObject:v28 forKey:@"kGSSICPassword"];

      [v27 setObject:v26 forKey:@"kGSSICKerberosCacheName"];
      v29 = gss_aapl_initial_cred(desired_name, MEMORY[0x277CCAF18], v27, &output_cred_handle, error);
      if (v29)
      {
        v30 = v29;
        v31 = piston_gss_error(v29, 0, v5);
        v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          if (v32)
          {
            piston_gss_transact_cold_4();
          }

          free(v31);
        }

        else if (v32)
        {
          piston_gss_transact_cold_5();
        }
      }

      else
      {
        if (output_cred_handle.__sig)
        {
          v65 = GSSCredentialCopyUUID(output_cred_handle.__sig);
          if (v65)
          {
            v66 = v65;
            if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_gss_transact_cold_6();
            }

            CFRelease(v66);
            v30 = 0;
            *(v17 + 128) = output_cred_handle.__sig;
            goto LABEL_161;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_gss_transact_cold_7();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_gss_transact_cold_8();
        }

        v30 = 0;
      }

LABEL_161:

LABEL_162:
      CFRelease(v24);
LABEL_163:
      CFRelease(desired_name);
LABEL_164:
      if (error[0])
      {
        CFRelease(error[0]);
      }

      goto LABEL_166;
    }

    v40 = v1;
    *status_value = 0u;
    memset(&v94, 0, sizeof(v94));
    memset(&output_cred_handle, 0, sizeof(output_cred_handle));
    LODWORD(rctx) = 0;
    v41 = [v40 getSessionPtr];
    v92 = 0;
    v89 = 0;
    v42 = pthread_mutex_init(&output_cred_handle, 0);
    if (v42)
    {
      printf("pthread_mutex_init failed <%d> \n", v42);
LABEL_81:
      v30 = 851968;
      goto LABEL_167;
    }

    v51 = pthread_cond_init(&v94, 0);
    if (v51)
    {
      printf("pthread_cond_init failed <%d> \n", v51);
      pthread_mutex_destroy(&output_cred_handle);
      goto LABEL_81;
    }

    status_value[0] = 0;
    if ((*(v41 + 554) & 0x840) == 0)
    {
      v70 = [v40 realm];
      if (!v70 || (v71 = v70, [v40 realm], v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "length"), v72, v71, !v73))
      {
        if (gss_oid_equal(v5, MEMORY[0x277CCAF10]))
        {
          [v40 setRealm:@"WELLKNOWN:COM.APPLE.LKDC"];
        }

        if (gss_oid_equal(v5, MEMORY[0x277CCAF18]))
        {
          v74 = piston_gss_get_realm();
          [v40 setRealm:v74];
        }
      }
    }

    v54 = [v40 userName];
    cstring_len = smb_get_cstring_len(v54, &v92);

    v56 = [v40 password];
    v57 = smb_get_cstring_len(v56, &v89 + 1);

    v58 = [v40 realm];
    v59 = smb_get_cstring_len(v58, &v89);

    error[0] = 1;
    error[1] = cstring_len;
    error[2] = v59;
    error[3] = v57;
    error[4] = 0;
    v60 = __ApplePrivate_gss_acquire_cred_ex_f();
    if (v60)
    {
      v30 = v60;
      v61 = piston_gss_error(v60, rctx, v5);
      v62 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v61)
      {
        if (v62)
        {
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      if (!v62)
      {
        goto LABEL_176;
      }
    }

    else
    {
      pthread_mutex_lock(&output_cred_handle);
      while (!status_value[0])
      {
        v75 = pthread_cond_wait(&v94, &output_cred_handle);
        if (v75)
        {
          v76 = v75;
          v77 = strerror(v75);
          printf("pthread_cond_wait failed <%s (%d)> \n", v77, v76);
          status_value[1] = 851968;
        }
      }

      pthread_mutex_unlock(&output_cred_handle);
      v30 = status_value[1];
      if (!status_value[1])
      {
        *(v41 + 128) = *&status_value[2];
        goto LABEL_176;
      }

      LODWORD(rctx) = 0;
      v61 = piston_gss_error(status_value[1], 0, v5);
      v78 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v61)
      {
        if (v78)
        {
LABEL_140:
          piston_gss_transact_cold_13();
        }

LABEL_141:
        free(v61);
LABEL_176:
        pthread_mutex_destroy(&output_cred_handle);
        pthread_cond_destroy(&v94);
LABEL_167:

        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_gss_transact_cold_17();
          }

          goto LABEL_170;
        }

LABEL_14:
        if (gss_oid_equal(v5, MEMORY[0x277CCAF18]))
        {
          v7 = MEMORY[0x277CCACA8];
          v8 = [v1 sock];
          v9 = [v8 serverName];
          v10 = [v7 stringWithFormat:@"cifs@%@", v9];

          if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_gss_transact_cold_18(v10);
          }

          value = [v10 cStringUsingEncoding:4];
          input_name_buffer.value = value;
        }

        else
        {
          if (gss_oid_equal(v5, MEMORY[0x277CCAF10]))
          {
            input_name_buffer.length = 39;
            input_name_buffer.value = "cifs/localhost@WELLKNOWN:COM.APPLE.LKDC";
            v12 = gss_import_name(&minor_status[1], &input_name_buffer, MEMORY[0x277CCAF20], &output_name);
            if (v12)
            {
LABEL_20:
              v13 = piston_gss_error(v12, minor_status[1], MEMORY[0x277CCAF40]);
              v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v13)
              {
                if (v14)
                {
                  piston_gss_transact_cold_20();
                }

                free(v13);
              }

              else if (v14)
              {
                piston_gss_transact_cold_21();
              }

              goto LABEL_61;
            }

LABEL_44:
            inited = gss_init_sec_context(&minor_status[1], *(v2 + 128), (v2 + 120), output_name, MEMORY[0x277CCAF40], 0x2Au, 0xFFFFFFFF, 0, (v2 + 136), &actual_mech_type, (v2 + 152), &ret_flags, 0);
            if (inited == 1)
            {
              if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                piston_gss_transact_cold_22();
              }

              v6 = 35;
              goto LABEL_171;
            }

            v34 = inited;
            if (inited)
            {
              v43 = piston_gss_error(inited, minor_status[1], MEMORY[0x277CCAF40]);
              if (v43)
              {
                v44 = v43;
                printf("%s: gss_init_sec_context failed <%s> \n", "piston_gss_transact", v43);
                free(v44);
              }

              else
              {
                printf("%s: gss_init_sec_context failed <0x%x> \n", "piston_gss_transact", v34);
              }

              goto LABEL_170;
            }

            if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              piston_gss_transact_cold_23();
            }

            if (*(v2 + 152) >= 0x401uLL)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                piston_gss_transact_cold_37((v2 + 152));
              }

              goto LABEL_61;
            }

            v45 = actual_mech_type;
            v46 = v1;
            v92 = 0;
            error[0] = 0;
            rctx = 0;
            v47 = [v46 getSessionPtr];
            if (gss_oid_equal(v45, MEMORY[0x277CCAF38]))
            {
              v48 = gss_inquire_sec_context_by_oid(&v92, *(v47 + 120), MEMORY[0x277CCAF30], error);
              if (v48)
              {
                v49 = piston_gss_error(v48, v92, v45);
                v50 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                if (!v49)
                {
                  if (v50)
                  {
                    piston_gss_transact_cold_25();
                  }

                  goto LABEL_193;
                }

                if (v50)
                {
                  piston_gss_transact_cold_24();
                }

                goto LABEL_92;
              }

              v63 = error[0];
              v64 = *error[0];
              if (!*error[0])
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  piston_gss_transact_cold_26();
                }

                goto LABEL_193;
              }

              if (v64 != 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                LODWORD(output_cred_handle.__sig) = 136315394;
                *(&output_cred_handle.__sig + 4) = "piston_gss_get_sessionkey";
                *&output_cred_handle.__opaque[4] = 2048;
                *&output_cred_handle.__opaque[6] = v64;
                _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Multiple keys received [%ld], using first key though.\n", &output_cred_handle, 0x16u);
                v63 = error[0];
              }

              piston_set_session_key(v46, *(*(v63 + 1) + 8), **(v63 + 1));
              gss_release_buffer_set(&v92, error);
LABEL_183:

              if (gss_oid_equal(actual_mech_type, MEMORY[0x277CCAF38]))
              {
                output_cred_handle.__sig = 0;
                if (gss_inquire_sec_context_by_oid(minor_status, *(v2 + 120), MEMORY[0x277CCAF08], &output_cred_handle))
                {
                  if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    piston_gss_transact_cold_33(minor_status);
                  }
                }

                else
                {
                  if (**(*(output_cred_handle.__sig + 8) + 8))
                  {
                    *(v2 + 552) |= 0x8000000uLL;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      piston_gss_transact_cold_34();
                    }
                  }

                  else if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    piston_gss_transact_cold_35();
                  }

                  gss_release_buffer_set(minor_status, &output_cred_handle);
                }
              }

              v6 = 0;
              goto LABEL_171;
            }

            if (!gss_oid_equal(v45, MEMORY[0x277CCAF10]) && !gss_oid_equal(v45, MEMORY[0x277CCAF18]))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                piston_gss_transact_cold_36();
              }

              goto LABEL_193;
            }

            v52 = gss_krb5_export_lucid_sec_context(&v92, (v47 + 120), 1u, &rctx);
            if (v52)
            {
              v49 = piston_gss_error(v52, v92, v45);
              v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (!v49)
              {
                if (v53)
                {
                  piston_gss_transact_cold_28();
                }

                goto LABEL_193;
              }

              if (v53)
              {
                piston_gss_transact_cold_27();
              }

LABEL_92:
              free(v49);
LABEL_193:

LABEL_170:
              v6 = 80;
LABEL_171:
              if (output_name)
              {
                gss_release_name(&minor_status[1], &output_name);
              }

              goto LABEL_173;
            }

            v67 = rctx;
            if (*rctx == 1)
            {
              if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                piston_gss_transact_cold_30(v67);
              }

              v68 = v67[8];
              if (v68 == 1)
              {
                v69 = 22;
                if (!v67[16])
                {
                  v69 = 18;
                }

                goto LABEL_179;
              }

              if (!v68)
              {
                if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  piston_gss_transact_cold_31();
                }

                v69 = 12;
LABEL_179:
                v82 = &v67[v69];
                if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  piston_gss_transact_cold_32(v82);
                }

                piston_set_session_key(v46, *(v82 + 1), *(v82 + 1));
                gss_krb5_free_lucid_sec_context(&v92, rctx);
                goto LABEL_183;
              }

              v79 = v67;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                piston_gss_transact_cold_29();
              }

              v79 = 0;
            }

            gss_krb5_free_lucid_sec_context(&v92, v79);
            goto LABEL_193;
          }

          if (!gss_oid_equal(v5, MEMORY[0x277CCAF38]))
          {
LABEL_61:
            v6 = 22;
            goto LABEL_171;
          }

          v35 = MEMORY[0x277CCACA8];
          v36 = [v1 sock];
          v37 = [v36 serverName];
          v10 = [v35 stringWithFormat:@"cifs@%@", v37];

          if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_gss_transact_cold_18(v10);
          }

          v38 = [v1 sock];
          v39 = [v38 serverName];
          input_name_buffer.value = [v39 cStringUsingEncoding:4];

          value = input_name_buffer.value;
        }

        input_name_buffer.length = strlen(value);
        v12 = gss_import_name(&minor_status[1], &input_name_buffer, MEMORY[0x277CCAEF8], &output_name);

        if (v12)
        {
          goto LABEL_20;
        }

        goto LABEL_44;
      }

      if (!v78)
      {
        goto LABEL_176;
      }
    }

    piston_gss_transact_cold_14();
    goto LABEL_176;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_gss_transact_cold_39();
  }

  v6 = 57;
LABEL_173:

  v80 = *MEMORY[0x277D85DE8];
  return v6;
}

char *piston_gss_error(OM_uint32 status_value, OM_uint32 a2, gss_OID mech_type)
{
  status_string.value = 0;
  *message_content = 0;
  v7 = 0;
  buffer.length = 0;
  status_string.length = 0;
  buffer.value = 0;
  if (!(gss_display_status(&message_content[1], status_value, 1, mech_type, message_content, &status_string) >> 16))
  {
    message_content[0] = 0;
    if (!(gss_display_status(&message_content[1], a2, 2, mech_type, message_content, &buffer) >> 16) && (asprintf(&v7, "gss-code: %lu %.*s -- mech-code: %lu %.*s", status_value, SLODWORD(status_string.length), status_string.value, a2, SLODWORD(buffer.length), buffer.value) < 0 || !v7))
    {
      v7 = 0;
    }
  }

  gss_release_buffer(&message_content[1], &status_string);
  gss_release_buffer(&message_content[1], &buffer);
  return v7;
}

id piston_gss_get_realm()
{
  v6 = 0;
  v7 = 0;
  inited = krb5_init_context(&v7);
  if (inited)
  {
    printf("%s: krb5_init_context failed <%d> \n", "piston_gss_get_realm", inited);
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  default_realm = krb5_get_default_realm(v7, &v6);
  if (default_realm)
  {
    error_message = krb5_get_error_message(v7, default_realm);
    printf("%s: krb5_get_default_realm failed <%s> \n", "piston_gss_get_realm", error_message);
    krb5_free_error_message(v7, error_message);
    goto LABEL_5;
  }

  MEMORY[0x266734690](v7);
  if (!v6)
  {
    goto LABEL_5;
  }

  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v5 initWithCString:v6 encoding:4];
LABEL_6:

  return v3;
}

uint64_t piston_gss_acquire_cred_complete(uint64_t a1, int a2, uint64_t a3, uint64_t a4, gss_OID_set_desc_struct *a5)
{
  set = a5;
  minor_status = 0;
  gss_release_oid_set(&minor_status, &set);
  *(a1 + 120) = a4;
  *(a1 + 116) = a2;
  pthread_mutex_lock(a1);
  *(a1 + 112) = 1;
  pthread_cond_signal((a1 + 64));
  return pthread_mutex_unlock(a1);
}

void piston_negotiate(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a7;
  v17 = [v13 sock];

  if (v17)
  {
    [v13 setSock:0];
  }

  v18 = objc_alloc_init(SMBSocket);
  [v13 setSock:v18];
  v19 = [v13 sock];

  if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_negotiate_cold_5();
      if (!v16)
      {
        goto LABEL_37;
      }
    }

    else if (!v16)
    {
      goto LABEL_37;
    }

    v16[2](v16, 12);
    goto LABEL_37;
  }

  if (v14 | v15)
  {
    v20 = [v13 sock];
    [v20 setPort:a4];

    if (!v14)
    {
LABEL_30:
      if (v15)
      {
        v42 = [v13 sock];
        [v42 setNetBiosName:v15];
      }

      v43 = [v13 sock];
      [v43 setConnectTimeOut:a5];

      v44 = [v13 sock];
      v45 = [v44 openSocket:v13];

      if (v45)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_negotiate_cold_3();
        }

        [v13 setSock:0];
        if (v16)
        {
          v16[2](v16, v45);
        }
      }

      else
      {
        v46 = [v13 sock];
        v47 = [v46 signing_queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __piston_negotiate_block_invoke;
        block[3] = &unk_279B4FC38;
        v51 = v13;
        v52 = v16;
        v53 = a6;
        dispatch_async(v47, block);
      }

      goto LABEL_37;
    }

    if ([v14 containsString:@"["] && objc_msgSend(v14, "containsString:", @"]") && objc_msgSend(v14, "characterAtIndex:", 0) == 91)
    {
      v21 = @"]";
    }

    else
    {
      v21 = @":";
      if (![v14 containsString:@":"])
      {
        goto LABEL_28;
      }
    }

    v22 = [v14 componentsSeparatedByString:v21];
    if (v22)
    {
      v23 = v22;
      v49 = a6;
      v24 = [v22 firstObject];
      if (v24)
      {
        v25 = v24;
        v26 = [v23 firstObject];
        v27 = [v26 length];

        if (v27)
        {
          v28 = [v23 firstObject];
          v29 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"["];
          v30 = [v28 stringByTrimmingCharactersInSet:v29];

          if (v30 && [v30 length])
          {
            v31 = [v13 sock];
            [v31 setServerName:v30];

            v32 = [v23 objectAtIndex:1];
            if (v32 && (v33 = v32, [v23 objectAtIndex:1], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "length"), v34, v33, v35))
            {
              v36 = [v23 objectAtIndex:1];
              v37 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":"];
              v38 = [v36 stringByTrimmingCharactersInSet:v37];

              if (v38 && [v38 length])
              {
                v48 = objc_alloc_init(MEMORY[0x277CCABB8]);
                v39 = [v48 numberFromString:v38];
                v40 = [v39 unsignedShortValue];

                v41 = [v13 sock];
                [v41 setPort:v40];

                v38 = 0;
              }

              a6 = v49;
            }

            else
            {
              a6 = v49;
            }

            goto LABEL_29;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_negotiate_cold_1();
            if (!v16)
            {
              goto LABEL_49;
            }
          }

          else if (!v16)
          {
LABEL_49:

            goto LABEL_50;
          }

          v16[2](v16, 22);
          goto LABEL_49;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_negotiate_cold_2();
        if (!v16)
        {
          goto LABEL_50;
        }
      }

      else if (!v16)
      {
LABEL_50:

        goto LABEL_37;
      }

      v16[2](v16, 22);
      goto LABEL_50;
    }

LABEL_28:
    v23 = [v13 sock];
    [v23 setServerName:v14];
LABEL_29:

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_negotiate_cold_4();
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  if (v16)
  {
LABEL_7:
    v16[2](v16, 22);
  }

LABEL_37:
}

void __piston_negotiate_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getSessionPtr];
  v3 = [*(a1 + 32) sock];
  v4 = [v3 connectSocket];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_negotiate_block_invoke_cold_1();
    }

    [*(a1 + 32) setSock:0];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }

    v6 = 0;
    goto LABEL_18;
  }

  v7 = *(v2 + 64);
  v8 = *(a1 + 32);
  v52 = 0;
  v9 = smb2_rq_alloc(0, 0, 0, 0, v8, &v52);
  v10 = v52;
  v6 = v10;
  if (v9)
  {
    if (v10)
    {
      [(SMB_rq *)v10 smb_rq_done];
    }

LABEL_10:
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *(v11 + 16);
LABEL_17:
    v12();
    goto LABEL_18;
  }

  v13 = [(SMB_rq *)v10 smb_rq_getrequest];
  mb_put_uint16le(v13, 36);
  if (!smb2_smb_get_client_dialects(v2, 0, (v2 + 194), (v2 + 196), 0x10uLL))
  {
    mb_put_uint16le(v13, *(v2 + 194));
    client_security_mode = smb2_smb_get_client_security_mode(v2);
    *(v2 + 192) = client_security_mode;
    mb_put_uint16le(v13, client_security_mode);
    mb_put_uint16le(v13, 0);
    client_capabilities = smb2_smb_get_client_capabilities(v2);
    *(v2 + 172) = client_capabilities;
    mb_put_uint32le(v13, client_capabilities);
    *mb_reserve(v13, 0x10uLL) = *(v2 + 176);
    v18 = mb_reserve(v13, 4uLL);
    v19 = mb_reserve(v13, 2uLL);
    mb_put_uint16le(v13, 0);
    if (*(v2 + 194))
    {
      v20 = 0;
      do
      {
        mb_put_uint16le(v13, *(v2 + 196 + 2 * v20++));
        v21 = *(v2 + 194);
      }

      while (v20 < v21);
      v22 = 2 * v21 + 36;
    }

    else
    {
      v22 = 36;
    }

    if ((*(v2 + 555) & 0x40) != 0)
    {
      goto LABEL_28;
    }

    v23 = v22 & 6;
    if ((v22 & 6) != 0)
    {
      v24 = 8 - v23;
      mb_put_mem(v13, 0, (8 - v23), 3);
      v22 += v24;
    }

    if ((*(v2 + 561) & 0x10) == 0)
    {
LABEL_28:
      *v18 = 0;
      *v19 = 0;
      goto LABEL_29;
    }

    v44 = v19;
    v31 = [*(a1 + 32) sock];
    v32 = [v31 serverName];
    v33 = [v32 cStringUsingEncoding:4];

    if (!v33)
    {
      v34 = [*(a1 + 32) sock];
      v33 = [v34 getIPv4IPv6DotName];
    }

    *v18 = v22 + 64;
    v53 = 0;
    arc4random_buf((v2 + 296), 0x20uLL);
    mb_put_uint16le(v13, 1);
    mb_put_uint16le(v13, 38);
    mb_put_uint32le(v13, 0);
    mb_put_uint16le(v13, 1);
    mb_put_uint16le(v13, 32);
    mb_put_uint16le(v13, 1);
    mb_put_mem(v13, (v2 + 296), 0x20uLL, 0);
    mb_put_mem(v13, 0, 2uLL, 3);
    v35 = *(v2 + 560);
    v36 = vaddvq_s32((*&vshlq_u32(vdupq_n_s32(v35), xmmword_2642C0B20) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    if (!v36)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v55 = "smb2_smb_add_negotiate_contexts";
        _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: No encryption algorithm set? Assuming AES-128-CCM \n", buf, 0xCu);
        v35 = *(v2 + 560);
      }

      *(v2 + 560) = v35 | 0x1000000;
      LOWORD(v36) = 1;
    }

    v37 = 2 * v36 + 2;
    mb_put_uint16le(v13, 2);
    mb_put_uint16le(v13, v37 & 0xFFFE);
    mb_put_uint32le(v13, 0);
    mb_put_uint16le(v13, v36);
    v38 = *(v2 + 560);
    if ((v38 & 0x8000000) != 0)
    {
      mb_put_uint16le(v13, 4);
      v38 = *(v2 + 560);
      if ((v38 & 0x4000000) == 0)
      {
LABEL_44:
        if ((v38 & 0x2000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_53;
      }
    }

    else if ((v38 & 0x4000000) == 0)
    {
      goto LABEL_44;
    }

    mb_put_uint16le(v13, 3);
    v38 = *(v2 + 560);
    if ((v38 & 0x2000000) == 0)
    {
LABEL_45:
      if ((v38 & 0x1000000) == 0)
      {
LABEL_47:
        if ((v37 & 6) != 0)
        {
          mb_put_mem(v13, 0, 8 - (v37 & 6u), 3);
        }

        mb_put_uint16le(v13, 3);
        mb_put_uint16le(v13, 10);
        mb_put_uint32le(v13, 0);
        mb_put_uint16le(v13, 1);
        mb_put_uint16le(v13, 0);
        mb_put_uint32le(v13, 0);
        mb_put_uint16le(v13, 0);
        mb_put_mem(v13, 0, 6uLL, 3);
        mb_put_uint16le(v13, 8);
        mb_put_uint16le(v13, 6);
        mb_put_uint32le(v13, 0);
        mb_put_uint16le(v13, 2);
        mb_put_uint16le(v13, 2);
        mb_put_uint16le(v13, 1);
        mb_put_mem(v13, 0, 2uLL, 3);
        mb_put_uint16le(v13, 5);
        v39 = mb_reserve(v13, 2uLL);
        mb_put_uint32le(v13, 0);
        if (v33)
        {
          v40 = strlen(v33);
          v41 = v13;
          v42 = v33;
        }

        else
        {
          v42 = "UnknownServer";
          v41 = v13;
          v40 = 13;
        }

        v43 = smb_put_dmem(v41, v42, v40, 0, 1, &v53);
        *v39 = v53;
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __piston_negotiate_block_invoke_cold_2();
          }

          goto LABEL_10;
        }

        *v44 = 5;
LABEL_29:
        *(v2 + 552) |= 0x1000uLL;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __piston_negotiate_block_invoke_9;
        v45[3] = &unk_279B4FC10;
        v25 = *(a1 + 32);
        v26 = *(a1 + 40);
        v27 = *(a1 + 48);
        v47 = v26;
        v48 = v27;
        v6 = v6;
        v49 = v2;
        v50 = 0;
        v51 = v7;
        v46 = v6;
        v28 = smb_rq_simple_block(v25, v6, v45);
        if (!v28)
        {
LABEL_35:

          goto LABEL_18;
        }

        v29 = v28;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_negotiate_block_invoke_cold_3();
          if (!v6)
          {
LABEL_33:
            v30 = *(a1 + 40);
            if (v30)
            {
              (*(v30 + 16))(v30, v29);
            }

            goto LABEL_35;
          }
        }

        else if (!v6)
        {
          goto LABEL_33;
        }

        [(SMB_rq *)v6 smb_rq_done];
        goto LABEL_33;
      }

LABEL_46:
      mb_put_uint16le(v13, 1);
      goto LABEL_47;
    }

LABEL_53:
    mb_put_uint16le(v13, 2);
    if ((*(v2 + 560) & 0x1000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v6)
  {
    [(SMB_rq *)v6 smb_rq_done];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v12 = *(v14 + 16);
    goto LABEL_17;
  }

LABEL_18:

  v15 = *MEMORY[0x277D85DE8];
}

void __piston_negotiate_block_invoke_9(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  v5 = (a1 + 32);
  **(a1 + 48) = [*(a1 + 32) sr_ntstatus];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_negotiate_block_invoke_9_cold_1((a1 + 32));
    }

LABEL_17:
    v11 = 45;
    goto LABEL_18;
  }

  v6 = *v5;
  size = 0;
  v31 = 0;
  v7 = [v6 sr_sessionp];
  v8 = [v6 smb_rq_getreply];
  if (md_get_uint16le(v8, &size + 3))
  {
    goto LABEL_14;
  }

  if (HIWORD(size) != 65)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_negotiate_block_invoke_9_cold_2();
    }

    goto LABEL_14;
  }

  if (md_get_uint16le(v8, (v7 + 108)))
  {
LABEL_14:

LABEL_15:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_negotiate_block_invoke_9_cold_6(a1);
    }

    goto LABEL_17;
  }

  v9 = *(v7 + 108);
  if (v9)
  {
    *(v7 + 552) |= 4uLL;
  }

  if ((v9 & 2) != 0)
  {
    v10 = *(v7 + 552);
    goto LABEL_24;
  }

  v10 = *(v7 + 552);
  if (*(v7 + 561))
  {
LABEL_24:
    v10 |= 8uLL;
  }

  *(v7 + 552) = v10 | 3;
  if (md_get_uint16le(v8, (v7 + 70)))
  {
    goto LABEL_14;
  }

  v13 = *(v7 + 70);
  if (v13 > 0x2FF)
  {
    switch(v13)
    {
      case 0x300u:
        v14 = 6144;
        break;
      case 0x311u:
        v14 = 135168;
        break;
      case 0x302u:
        v14 = 36864;
        break;
      default:
        goto LABEL_37;
    }
  }

  else
  {
    switch(v13)
    {
      case 0x202u:
        v14 = 12288;
        break;
      case 0x210u:
        v14 = 20480;
        break;
      case 0x2FFu:
        v14 = 4096;
        break;
      default:
LABEL_37:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_negotiate_block_invoke_9_cold_5();
        }

        goto LABEL_14;
    }
  }

  *(v7 + 552) |= v14;
  if (md_get_uint16le(v8, &size) || md_get_mem(v8, (v7 + 92), 0x10uLL, 0) || md_get_uint32le(v8, (v7 + 76)))
  {
    goto LABEL_14;
  }

  v15 = *(v7 + 76);
  if ((v15 & 2) != 0)
  {
    v16 = 0;
  }

  else
  {
    if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v34 = "smb2_smb_parse_negotiate";
      _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Server does not support leasing but supports dir leases? Disabling dir leases. \n", buf, 0xCu);
      v15 = *(v7 + 76);
    }

    *(v7 + 76) = v15 & 0xFFFFFFDF;
    v16 = (v15 & 2) == 0;
  }

  if ((*(v7 + 553) & 0xC8) != 0 && !v16)
  {
    v17 = [v6 sr_pd];
    v18 = [v17 sock];
    v19 = [v18 resp_wait_timeout];

    if (v19 <= 0x2C)
    {
      v20 = [v6 sr_pd];
      v21 = [v20 sock];
      [v21 setResp_wait_timeout:45];

      if (piston_log_level)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_negotiate_block_invoke_9_cold_3(v6);
        }
      }
    }
  }

  if (md_get_uint32le(v8, (v7 + 80)) || md_get_uint32le(v8, (v7 + 84)) || md_get_uint32le(v8, (v7 + 88)) || md_get_mem(v8, __dst, 8uLL, 0) || md_get_mem(v8, v35, 8uLL, 0) || md_get_uint16le(v8, &size + 2) || md_get_uint16le(v8, &size + 1) || md_get_uint32le(v8, &v31))
  {
    goto LABEL_14;
  }

  if (WORD2(size))
  {
    WORD2(size) -= 128;
    if (md_get_mem(v8, 0, WORD2(size), 0))
    {
      goto LABEL_14;
    }

    v22 = WORD2(size) + 64;
  }

  else
  {
    v22 = 64;
  }

  v23 = *(v7 + 144);
  if (v23)
  {
    free(v23);
    *(v7 + 144) = 0;
  }

  *(v7 + 136) = 0;
  if (WORD1(size))
  {
    v24 = malloc_type_malloc(WORD1(size), 0xF288B77uLL);
    *(v7 + 144) = v24;
    if (v24)
    {
      v25 = WORD1(size);
      *(v7 + 136) = WORD1(size);
      if (!md_get_mem(v8, v24, v25, 0))
      {
        piston_gss_parse_server_mechs(v7);
        v26 = 0;
        v22 += WORD1(size);
        goto LABEL_76;
      }

      goto LABEL_14;
    }

    v26 = 12;
  }

  else
  {
    v26 = 0;
  }

LABEL_76:
  if ((*(v7 + 554) & 2) != 0)
  {
    v26 = smb2_smb_parse_negotiate_contexts(v7, v8, v22, v31, size);
  }

  if (v26)
  {
    goto LABEL_15;
  }

  if (*(a1 + 68) == 1 && *(a1 + 72) != *(*(a1 + 56) + 64) && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __piston_negotiate_block_invoke_9_cold_4((a1 + 72), a1 + 56);
  }

  v27 = *(a1 + 48);
  v11 = 0;
  if (v27)
  {
    v28 = *(a1 + 56);
    *(v27 + 4) = *(v28 + 108);
    *(v27 + 6) = *(v28 + 70);
    *(v27 + 16) = *(v28 + 92);
    v30 = *(a1 + 48);
    v29 = *(a1 + 56);
    *(v30 + 32) = *(v29 + 76);
    *(v30 + 48) = *(v29 + 112);
  }

LABEL_18:
  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t smb2_smb_parse_negotiate_contexts(uint64_t a1, __n128 *a2, int a3, int a4, int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_negotiate_contexts_cold_4();
    }

    goto LABEL_49;
  }

  if (a4)
  {
    result = md_get_mem(a2, 0, (a4 - a3 - 64), 0);
    if (result)
    {
      goto LABEL_50;
    }
  }

  v9 = MEMORY[0x277D86220];
  while (1)
  {
    md_shadow_copy(a2, v14);
    result = md_get_uint16le(v14, &v21 + 1);
    if (result)
    {
      goto LABEL_50;
    }

    result = md_get_uint16le(v14, &v21);
    if (result)
    {
      goto LABEL_50;
    }

    result = md_get_uint32le(v14, 0);
    if (result)
    {
      goto LABEL_50;
    }

    if (HIWORD(v21) > 5u)
    {
      if (HIWORD(v21) - 6 < 2)
      {
        goto LABEL_41;
      }

      if (HIWORD(v21) == 8)
      {
        result = md_get_uint16le(v14, &v15 + 1);
        if (result)
        {
          goto LABEL_50;
        }

        if (HIWORD(v15) == 1)
        {
          result = md_get_uint16le(v14, &v15);
          if (result)
          {
            goto LABEL_50;
          }

          if (v15 - 3 > 0xFFFFFFFD)
          {
            *(a1 + 264) = v15;
            goto LABEL_41;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_negotiate_contexts_cold_2(&v15);
          }

LABEL_49:
          result = 22;
          goto LABEL_50;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_negotiate_contexts_cold_1(&v15 + 1);
        }

LABEL_56:
        result = 72;
        goto LABEL_50;
      }

LABEL_35:
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "smb2_smb_parse_negotiate_contexts";
        v24 = 1024;
        v25 = HIWORD(v21);
        _os_log_error_impl(&dword_264287000, v9, OS_LOG_TYPE_ERROR, "%s: Unknown context type: 0x%x\n", buf, 0x12u);
      }

      goto LABEL_41;
    }

    if (HIWORD(v21) == 1)
    {
      break;
    }

    if (HIWORD(v21) == 2)
    {
      result = md_get_uint16le(v14, &v19);
      if (result)
      {
        goto LABEL_50;
      }

      if (v19 != 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_negotiate_contexts_cold_3(&v19);
        }

        goto LABEL_56;
      }

      result = md_get_uint16le(v14, &v18 + 1);
      if (result)
      {
        goto LABEL_50;
      }

      *(a1 + 492) = HIWORD(v18);
    }

    else
    {
      if (HIWORD(v21) != 3)
      {
        goto LABEL_35;
      }

      result = md_get_uint16le(v14, &v18);
      if (result)
      {
        goto LABEL_50;
      }

      result = md_get_uint16le(v14, 0);
      if (result)
      {
        goto LABEL_50;
      }

      result = md_get_uint32le(v14, &v16);
      if (result)
      {
        goto LABEL_50;
      }

      if (v18)
      {
        v10 = 0;
        do
        {
          result = md_get_uint16le(v14, &v17);
          if (result)
          {
            goto LABEL_50;
          }
        }

        while (++v10 < v18);
      }
    }

LABEL_41:
    if (!--a5)
    {
      result = 0;
      goto LABEL_50;
    }

    if ((v21 & 7) != 0)
    {
      v12 = ((v21 + 8) & 0xFFF8) + 8;
    }

    else
    {
      v12 = v21 + 8;
    }

    LOWORD(v21) = v12;
    result = md_get_mem(a2, 0, v12, 0);
    if (result)
    {
      goto LABEL_50;
    }
  }

  result = md_get_uint16le(v14, &v20 + 1);
  if (result)
  {
    goto LABEL_50;
  }

  result = md_get_uint16le(v14, &v20);
  if (result)
  {
    goto LABEL_50;
  }

  if (!HIWORD(v20))
  {
LABEL_33:
    result = md_get_mem(v14, 0, v20, 0);
    if (result)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v11 = 0;
  while (1)
  {
    result = md_get_uint16le(v14, &v19 + 1);
    if (result)
    {
      break;
    }

    if (++v11 >= HIWORD(v20))
    {
      goto LABEL_33;
    }
  }

LABEL_50:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void piston_set_info_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_set_info_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_set_info_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_set_info_cold_2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2_smb_set_info_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_set_info_cold_4(uint8_t *buf, int a2, int a3)
{
  *buf = 136315650;
  *(buf + 4) = "smb2_smb_set_info";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Reply failed <%d> ntStatus <0x%x> \n", buf, 0x18u);
}

void smb2_smb_set_info_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 24);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __smb2_smb_set_info_block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_ntstatus];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __smb2_smb_set_info_block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 8) + 24);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2fs_smb_set_delete_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 84);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2fs_smb_set_eof_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 84);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2fs_smb_setfattrNT_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 84);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2fs_smb_setfattrNT_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 shareID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void smb2fs_smb_setfattrNT_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_read_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_read_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_read_one_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_write_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_write_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_write_one_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_write_one_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_write_one_cold_3(void *a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 length];
  v3 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
  v9 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_read_one_cold_1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_read_one_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_write_one_cold_1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __smb2_smb_read_one_block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_ntstatus];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __smb2_smb_write_one_block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_ntstatus];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void piston_query_dir_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_query_dir_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: sock is NULL. \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_dir_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_dir_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: path is NULL\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_dir_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_dir_cold_4(uint8_t *buf, int a2, int a3)
{
  *buf = 136315650;
  *(buf + 4) = "smb2_smb_query_dir";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Reply failed <%d> ntStatus <0x%x> \n", buf, 0x18u);
}

void smb2_smb_query_dir_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: outputBuffer is NULL \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_query_dir_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting struct size\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_query_dir_cold_2(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_query_dir_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting output buffer offset\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_query_dir_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting output buffer len\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_query_dir_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting output buffer offset bytes\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_query_dir_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __smb2_smb_query_dir_block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_ntstatus];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void piston_change_notify_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_change_notify_cold_2(uint8_t *buf, int a2, int a3)
{
  *buf = 136315650;
  *(buf + 4) = "smb2_smb_change_notify";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Reply failed <%d> ntStatus <0x%x> \n", buf, 0x18u);
}

void piston_change_notify_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_change_notify_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_change_notify_cold_1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void smb2_smb_parse_change_notify_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __smb2_smb_change_notify_block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_ntstatus];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void piston_query_info_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_info_cold_1(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_info_cold_2(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_info_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_info_cold_4(uint8_t *buf, int a2, int a3)
{
  *buf = 136315650;
  *(buf + 4) = "smb2_smb_query_info";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Reply failed <%d> ntStatus <0x%x> \n", buf, 0x18u);
}

void smb2_smb_query_info_cold_5(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_info_cold_6(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void smb2_smb_query_info_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void piston_query_share_info_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __piston_query_share_info_block_invoke_cold_7(unsigned int *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}
void piston_set_info(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v9 pd];
  v14 = [v13 sock];

  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_set_info_cold_2();
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else if (!v12)
    {
      goto LABEL_8;
    }

    v12[2](v12, 57);
    goto LABEL_8;
  }

  if (smb2_smb_set_info(v9, a2, v10, v11, 0, v12) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_set_info_cold_1();
  }

LABEL_8:
}

uint64_t smb2_smb_set_info(void *a1, uint64_t a2, void *a3, void *a4, SMB_rq **a5, void *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a3;
  v52 = a4;
  v13 = a6;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v62 = 0;
  v63[0] = &v62;
  v63[1] = 0x2020000000;
  v64 = 0;
  memset(__src, 0, 20);
  v60 = 0;
  v14 = [v11 treeID];
  v15 = [v11 onEncryptedShare];
  v16 = [v11 pd];
  v59 = 0;
  uint16le = smb2_rq_alloc(17, v14, v15, 0, v16, &v59);
  v18 = v59;

  if (!uint16le)
  {
    v19 = [(SMB_rq *)v18 smb_rq_getrequest];
    mb_put_uint16le(v19, 33);
    mb_put_uint8(v19, *(a2 + 4));
    mb_put_uint8(v19, *(a2 + 5));
    v20 = mb_reserve(v19, 4uLL);
    mb_put_uint16le(v19, 96);
    mb_put_uint16le(v19, 0);
    mb_put_uint32le(v19, *(a2 + 8));
    if (a5)
    {
      v21 = -1;
      mb_put_uint64le(v19, -1);
    }

    else
    {
      mb_put_uint64le(v19, [v11 fid]);
      [v11 fid];
      v21 = v22;
    }

    mb_put_uint64le(v19, v21);
    v23 = *(a2 + 5);
    if (v23 > 0x12)
    {
      if (v23 - 19 >= 2)
      {
        goto LABEL_25;
      }

      *v20 = 8;
      mb_put_uint64le(v19, *(a2 + 32));
    }

    else
    {
      if (v23 != 4)
      {
        if (v23 == 10)
        {
          cstring_len = smb_get_cstring_len(v52, &v60);
          mb_put_uint8(v19, *(a2 + 80) & 1);
          v25 = mb_reserve(v19, 7uLL);
          *(v25 + 3) = 0;
          *v25 = 0;
          mb_put_uint64le(v19, 0);
          v26 = mb_reserve(v19, 4uLL);
          if (cstring_len)
          {
            v27 = v26;
            smb2_rq_bstart32(v18, v26);
            uint16le = smb2fs_fullpath(v19, cstring_len, v60, 0, 0, 32);
            if (uint16le)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_smb_set_info_cold_1();
              }

              if (v18)
              {
                [(SMB_rq *)v18 smb_rq_done];
              }

              if (v13)
              {
                goto LABEL_5;
              }

              goto LABEL_77;
            }

            smb_rq_bend32(v18);
            mb_put_mem(v19, 0, 4uLL, 3);
            *v20 = *v27 + 24;
            goto LABEL_37;
          }

          if (v18)
          {
            [(SMB_rq *)v18 smb_rq_done];
          }

          if (v13)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }

        if (v23 == 13)
        {
          *v20 = 1;
          mb_put_uint8(v19, *(a2 + 32) == 1);
LABEL_37:
          [(SMB_rq *)v18 smb_rq_set_extflag:8];
          goto LABEL_38;
        }

LABEL_25:
        if (*(a2 + 4) == 3)
        {
          goto LABEL_37;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_set_info_cold_2((a2 + 5));
        }

        if (v18)
        {
          [(SMB_rq *)v18 smb_rq_done];
        }

        if (v13)
        {
LABEL_31:
          uint16le = 22;
          v13[2](v13, 22);
          goto LABEL_77;
        }

LABEL_35:
        uint16le = 22;
        goto LABEL_77;
      }

      *v20 = 40;
      mb_put_uint64le(v19, *(a2 + 40));
      mb_put_uint64le(v19, *(a2 + 48));
      mb_put_uint64le(v19, *(a2 + 56));
      mb_put_uint64le(v19, *(a2 + 64));
      mb_put_uint32le(v19, *(a2 + 72));
      mb_put_uint32le(v19, 0);
    }

LABEL_38:
    if (*(a2 + 4) == 3)
    {
      v28 = v12;
      v29 = [v12 bytes];
      v30 = v29;
      memset(__src + 1, 0, 19);
      LOBYTE(__src[0]) = 1;
      v31 = *(v29 + 4);
      v32 = 20;
      v33 = *(v29 + 8);
      if (v33)
      {
        HIDWORD(__src[0]) = 20;
        v32 = 4 * *(v33 + 1) + 28;
      }

      v34 = *(v29 + 16);
      if (v34)
      {
        LODWORD(__src[1]) = v32;
        v32 += 4 * *(v34 + 1) + 8;
      }

      v35 = *(v29 + 24);
      if (v35)
      {
        v36 = v31 | 0x8A10;
        HIDWORD(__src[1]) = v32;
        v32 += *(v35 + 2);
      }

      else
      {
        v36 = v31 | 0x8000;
      }

      v37 = *(v29 + 32);
      if (v37)
      {
        v36 |= 0x504u;
        LODWORD(__src[2]) = v32;
        v32 += *(v37 + 2);
      }

      *v20 = v32;
      WORD1(__src[0]) = v36;
      mb_put_mem(v19, __src, 0x14uLL, 0);
      v38 = v30[1];
      if (v38)
      {
        mb_put_mem(v19, v38, 4 * *(v38 + 1) + 8, 0);
      }

      v39 = v30[2];
      if (v39)
      {
        mb_put_mem(v19, v39, 4 * *(v39 + 1) + 8, 0);
      }

      v40 = v30[3];
      if (v40)
      {
        mb_put_mem(v19, v40, *(v40 + 2), 0);
      }

      v41 = v30[4];
      if (v41)
      {
        mb_put_mem(v19, v41, *(v41 + 2), 0);
      }
    }

    if (a5)
    {
      smb2_rq_align8(v18);
      [(SMB_rq *)v18 smb_rq_set_srflags:256];
      v42 = v18;
      uint16le = 0;
      *a5 = v18;
    }

    else if (v13)
    {
      v43 = [v11 pd];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __smb2_smb_set_info_block_invoke;
      v53[3] = &unk_279B4F5D8;
      v44 = v13;
      v55 = v44;
      v58 = a2;
      v45 = v18;
      v54 = v45;
      v56 = &v65;
      v57 = &v62;
      uint16le = smb_rq_simple_block(v43, v45, v53);

      if (uint16le)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_set_info_cold_3();
        }

        if (v45)
        {
          [(SMB_rq *)v45 smb_rq_done];
        }

        v44[2](v44, uint16le);
      }
    }

    else
    {
      v46 = [v11 pd];
      uint16le = smb_rq_simple(v46, v18);

      *(a2 + 84) = [(SMB_rq *)v18 sr_ntstatus];
      if (uint16le)
      {
        v47 = MEMORY[0x277D86220];
        v48 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          smb2_smb_set_info_cold_4(buf, uint16le, [(SMB_rq *)v18 sr_ntstatus]);
        }
      }

      else
      {
        v49 = [(SMB_rq *)v18 smb_rq_getreply];
        v66[3] = v49;
        uint16le = md_get_uint16le(v49, (v63[0] + 24));
        if (!uint16le)
        {
          if (*(v63[0] + 24) == 2)
          {
            uint16le = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_smb_set_info_cold_5(v63);
            }

            uint16le = 72;
          }
        }
      }

      [(SMB_rq *)v18 smb_rq_done];
    }

    goto LABEL_77;
  }

  if (v18)
  {
    [(SMB_rq *)v18 smb_rq_done];
  }

  if (v13)
  {
LABEL_5:
    v13[2](v13, uint16le);
  }

LABEL_77:
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v65, 8);

  v50 = *MEMORY[0x277D85DE8];
  return uint16le;
}

void sub_26428868C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void __smb2_smb_set_info_block_invoke(uint64_t a1, uint64_t uint16le)
{
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  v5 = (a1 + 32);
  *(*(a1 + 64) + 84) = [*(a1 + 32) sr_ntstatus];
  if (uint16le)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_set_info_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v8 = *(a1 + 56);
    v7 = a1 + 56;
    uint16le = md_get_uint16le(v6, (*(v8 + 8) + 24));
    if (!uint16le)
    {
      if (*(*(*v7 + 8) + 24) == 2)
      {
        uint16le = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __smb2_smb_set_info_block_invoke_cold_2(v7);
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

uint64_t smb2fs_smb_set_delete(void *a1)
{
  v4 = 0;
  memset(&v3[3], 0, 32);
  memset(v3, 0, 32);
  WORD2(v3[0]) = 3329;
  v3[2] = 1uLL;
  v1 = smb2_smb_set_info(a1, v3, 0, 0, 0, 0);
  if (v1 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2fs_smb_set_delete_cold_1(v3);
  }

  return v1;
}

uint64_t smb2fs_smb_set_eof(void *a1, unint64_t a2)
{
  v5 = 0;
  memset(&v4[3], 0, 32);
  memset(v4, 0, 32);
  WORD2(v4[0]) = 5121;
  v4[2] = a2;
  v2 = smb2_smb_set_info(a1, v4, 0, 0, 0, 0);
  if (v2 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2fs_smb_set_eof_cold_1(v4);
  }

  return v2;
}

uint64_t smb2fs_smb_setfattrNT(void *a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1;
  v10 = [v9 pd];
  v11 = [v10 getShare:{objc_msgSend(v9, "shareID")}];

  if (v11)
  {
    v20 = 0;
    if (a3)
    {
      smb_time_local2NT(a3, &v20, [v11 fstype] == 1);
      a3 = v20;
    }

    v20 = 0;
    if (a5)
    {
      smb_time_local2NT(a5, &v20, [v11 fstype] == 1);
      a5 = v20;
    }

    v20 = 0;
    if (a4)
    {
      smb_time_local2NT(a4, &v20, [v11 fstype] == 1);
      a4 = v20;
    }

    WORD2(v14) = 1025;
    *(&v15 + 1) = a3;
    v16 = a5;
    v17 = a4;
    v18 = 0;
    v19 = a2;
    v12 = smb2_smb_set_info(v9, &v14, 0, 0, 0, 0);
    if (v12 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_setfattrNT_cold_1(&v14);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_setfattrNT_cold_2(v9);
    }

    if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_setfattrNT_cold_3();
    }

    v12 = 22;
  }

  return v12;
}

void piston_read(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  v11 = [v8 pd];
  v12 = [v11 sock];

  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_read_cold_2();
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (!v10)
    {
      goto LABEL_8;
    }

    v10[2](v10, 57);
    goto LABEL_8;
  }

  if (smb2_smb_read_one(v8, a2, v9, 0, v10) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_read_cold_1();
  }

LABEL_8:
}

uint64_t smb2_smb_read_one(void *a1, uint64_t a2, void *a3, SMB_rq **a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = *(a2 + 16);
  v13 = [v9 pd];
  v14 = *([v13 getSessionPtr] + 84);

  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v39 = v15;
  v16 = [v9 treeID];
  v17 = [v9 onEncryptedShare];
  v18 = [v9 pd];
  v38 = 0;
  v19 = smb2_rq_alloc(8, v16, v17, &v39, v18, &v38);
  v20 = v38;

  if (!v19)
  {
    if (v12 >= v39)
    {
      v21 = v12 - v39;
    }

    else
    {
      v21 = 0;
    }

    v22 = [(SMB_rq *)v20 smb_rq_getrequest];
    mb_put_uint16le(v22, 49);
    mb_put_uint16le(v22, 0);
    mb_put_uint32le(v22, v39);
    mb_put_uint64le(v22, *a2);
    if (a4)
    {
      v23 = -1;
      mb_put_uint64le(v22, -1);
    }

    else
    {
      mb_put_uint64le(v22, [v9 fid]);
      [v9 fid];
      v23 = v24;
    }

    mb_put_uint64le(v22, v23);
    mb_put_uint32le(v22, 1);
    mb_put_uint32le(v22, 0);
    mb_put_uint32le(v22, v21);
    mb_put_uint32le(v22, 0);
    mb_put_uint8(v22, 0);
    if (a4)
    {
      smb2_rq_align8(v20);
      [(SMB_rq *)v20 smb_rq_set_srflags:256];
      v25 = v20;
      v19 = 0;
      *a4 = v20;
      goto LABEL_24;
    }

    v26 = [v9 pd];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __smb2_smb_read_one_block_invoke;
    v33 = &unk_279B4F600;
    v27 = v11;
    v36 = v27;
    v37 = a2;
    v28 = v20;
    v34 = v28;
    v35 = v10;
    v19 = smb_rq_simple_block(v26, v28, &v30);

    if (!v19)
    {
LABEL_23:

      goto LABEL_24;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_read_one_cold_1();
      if (!v28)
      {
LABEL_21:
        if (v27)
        {
          (*(v27 + 2))(v27, v19);
        }

        goto LABEL_23;
      }
    }

    else if (!v28)
    {
      goto LABEL_21;
    }

    [(SMB_rq *)v28 smb_rq_done:v30];
    goto LABEL_21;
  }

  if (v20)
  {
    [(SMB_rq *)v20 smb_rq_done];
  }

  if (v11)
  {
    (*(v11 + 2))(v11, v19);
  }

LABEL_24:

  return v19;
}

void piston_write(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a1;
  v9 = a4;
  v10 = a5;
  v11 = [v8 pd];
  v12 = [v11 sock];

  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_write_cold_2();
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (!v10)
    {
      goto LABEL_8;
    }

    v10[2](v10, 57);
    goto LABEL_8;
  }

  if (smb2_smb_write_one(v8, a2, v9, 0, v10) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_write_cold_1();
  }

LABEL_8:
}

uint64_t smb2_smb_write_one(void *a1, uint64_t a2, void *a3, SMB_rq **a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = *(a2 + 16);
  v13 = [v9 pd];
  v14 = [v13 getSessionPtr];

  v15 = *(v14 + 88);
  if (v15 >= v12)
  {
    v15 = v12;
  }

  v38 = v15;
  v16 = [v9 treeID];
  v17 = [v9 onEncryptedShare];
  v18 = [v9 pd];
  v37 = 0;
  v19 = smb2_rq_alloc(9, v16, v17, &v38, v18, &v37);
  v20 = v37;

  if (v19)
  {
    goto LABEL_4;
  }

  if (v12 >= v38)
  {
    v21 = v12 - v38;
  }

  else
  {
    v21 = 0;
  }

  v22 = [v10 length];
  if (v22 >= v38)
  {
    v24 = [(SMB_rq *)v20 smb_rq_getrequest];
    mb_put_uint16le(v24, 49);
    mb_put_uint16le(v24, 112);
    mb_put_uint32le(v24, v38);
    mb_put_uint64le(v24, *a2);
    if (a4)
    {
      v25 = -1;
      mb_put_uint64le(v24, -1);
    }

    else
    {
      mb_put_uint64le(v24, [v9 fid]);
      [v9 fid];
      v25 = v26;
    }

    mb_put_uint64le(v24, v25);
    mb_put_uint32le(v24, 0);
    mb_put_uint32le(v24, v21);
    mb_put_uint32le(v24, 0);
    mb_put_uint32le(v24, *(a2 + 20));
    if ([(SMB_rq *)v20 onEncryptedShare])
    {
      v27 = [v10 bytes];
      v28 = mb_put_mem(v24, v27, v38, 0);
      if (v28)
      {
        v19 = v28;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_write_one_cold_1();
        }

LABEL_4:
        if (v20)
        {
          [(SMB_rq *)v20 smb_rq_done];
        }

        if (v11)
        {
          v11[2](v11, v19);
        }

        goto LABEL_17;
      }
    }

    else
    {
      [(SMB_rq *)v20 setWriteData:v10];
      [(SMB_rq *)v20 setWriteLen:v38];
    }

    if (a4)
    {
      smb2_rq_align8(v20);
      [(SMB_rq *)v20 smb_rq_set_srflags:256];
      v29 = v20;
      v19 = 0;
      *a4 = v20;
      goto LABEL_17;
    }

    v30 = [v9 pd];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __smb2_smb_write_one_block_invoke;
    v33[3] = &unk_279B4F628;
    v31 = v11;
    v35 = v31;
    v36 = a2;
    v32 = v20;
    v34 = v32;
    v19 = smb_rq_simple_block(v30, v32, v33);

    if (!v19)
    {
LABEL_35:

      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_write_one_cold_2();
      if (!v32)
      {
LABEL_33:
        if (v31)
        {
          v31[2](v31, v19);
        }

        goto LABEL_35;
      }
    }

    else if (!v32)
    {
      goto LABEL_33;
    }

    [(SMB_rq *)v32 smb_rq_done];
    goto LABEL_33;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  smb2_smb_write_one_cold_3(v10, &v38);
  if (v20)
  {
LABEL_14:
    [(SMB_rq *)v20 smb_rq_done];
  }

LABEL_15:
  v19 = 22;
  if (v11)
  {
    v11[2](v11, 22);
  }

LABEL_17:

  return v19;
}

uint64_t smb2_smb_parse_read_one(void *a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v7 = 0;
  v8 = 0;
  result = md_get_uint16le(a1, &v10);
  if (!result)
  {
    if (v10 == 17)
    {
      result = md_get_uint8(a1, &v9 + 1);
      if (!result)
      {
        result = md_get_uint8(a1, &v9);
        if (!result)
        {
          result = md_get_uint32le(a1, &v7);
          if (!result)
          {
            result = md_get_uint32le(a1, &v8);
            if (!result)
            {
              result = md_get_uint32le(a1, &v8);
              if (!result)
              {
                if (!HIBYTE(v9) || (HIBYTE(v9) -= 80, result = md_get_mem(a1, 0, HIBYTE(v9), 0), !result))
                {
                  if (v7)
                  {
                    v5 = *(a2 + 16);
                    if (v7 >= v5)
                    {
                      v6 = v5;
                    }

                    else
                    {
                      v6 = v7;
                    }

                    result = md_get_mem(a1, *(a2 + 8), v6, 0);
                    if (result)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        smb2_smb_parse_read_one_cold_2();
                      }

                      result = 12;
                    }

                    *(a2 + 28) = v6;
                  }

                  else
                  {
                    result = 0;
                    *(a2 + 28) = 0;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_read_one_cold_1(&v10);
      }

      return 72;
    }
  }

  return result;
}

uint64_t smb2_smb_parse_write_one(void *a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  result = md_get_uint16le(a1, &v7 + 1);
  if (!result)
  {
    if (HIWORD(v7) == 17)
    {
      result = md_get_uint16le(a1, &v7);
      if (!result)
      {
        result = md_get_uint32le(a1, &v5);
        if (!result)
        {
          *(a2 + 28) = v5;
          result = md_get_uint32le(a1, &v6);
          if (!result)
          {
            return md_get_uint32le(a1, &v6);
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_write_one_cold_1(&v7 + 1);
      }

      return 72;
    }
  }

  return result;
}

void __smb2_smb_read_one_block_invoke(uint64_t a1, uint64_t one)
{
  v4 = MEMORY[0x266734A50](*(a1 + 48));
  v5 = (a1 + 32);
  *(*(a1 + 56) + 24) = [*(a1 + 32) sr_ntstatus];
  if (one)
  {
    if (one != 96 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_read_one_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    one = smb2_smb_parse_read_one([*(a1 + 32) smb_rq_getreply], *(a1 + 56));
  }

  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, one);
  }
}

void __smb2_smb_write_one_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  v5 = (a1 + 32);
  *(*(a1 + 48) + 24) = [*(a1 + 32) sr_ntstatus];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_write_one_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    a2 = smb2_smb_parse_write_one([*(a1 + 32) smb_rq_getreply], *(a1 + 48));
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

void piston_query_dir(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v9 pd];
  v14 = [v13 sock];

  if (!v14)
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      piston_query_dir_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else if (!v12)
    {
      goto LABEL_8;
    }

    v12[2](v12, 57);
    goto LABEL_8;
  }

  if (smb2_smb_query_dir(v9, a2, v10, v11, 0, 0, v12) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_query_dir_cold_1();
  }

LABEL_8:
}

unint64_t smb2_smb_query_dir(void *a1, uint64_t a2, void *a3, void *a4, SMB_rq **a5, SMB_rq **a6, void *a7)
{
  v67 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v53 = a3;
  v14 = a4;
  v15 = a7;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v61 = 0;
  if (!v14)
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v22)
    {
      smb2_smb_query_dir_cold_5(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    if (v15)
    {
      dir = 22;
      v15[2](v15, 22);
      v21 = 0;
      goto LABEL_37;
    }

    v21 = 0;
    goto LABEL_14;
  }

  HIDWORD(v61) = [v14 length];
  cstring_len = smb_get_cstring_len(v53, &v61);
  v17 = [v13 treeID];
  v18 = [v13 onEncryptedShare];
  v19 = [v13 pd];
  v60 = 0;
  dir = smb2_rq_alloc(14, v17, v18, &v61 + 1, v19, &v60);
  v21 = v60;

  if (!dir)
  {
    if (a5)
    {
      v30 = v21;
      *a5 = v21;
    }

    v31 = [(SMB_rq *)v21 smb_rq_getrequest];
    mb_put_uint16le(v31, 33);
    mb_put_uint8(v31, *a2);
    mb_put_uint8(v31, *(a2 + 1));
    mb_put_uint32le(v31, *(a2 + 4));
    if (a6)
    {
      v32 = -1;
      mb_put_uint64le(v31, -1);
    }

    else
    {
      mb_put_uint64le(v31, [v13 fid]);
      [v13 fid];
      v32 = v33;
    }

    mb_put_uint64le(v31, v32);
    mb_put_uint16le(v31, 96);
    v34 = mb_reserve(v31, 2uLL);
    mb_put_uint32le(v31, SHIDWORD(v61));
    if (!v61)
    {
      *v34 = 0;
      mb_put_uint16le(v31, 0);
      goto LABEL_29;
    }

    smb2_rq_bstart(v21, v34);
    if (cstring_len)
    {
      dir = smb2fs_fullpath(v31, cstring_len, v61, 0, 0, *(a2 + 8));
      if (dir)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_query_dir_cold_1();
        }

        if (v15)
        {
          goto LABEL_4;
        }

        goto LABEL_37;
      }

      smb_rq_bend(v21);
LABEL_29:
      if (a6)
      {
        smb2_rq_align8(v21);
        [(SMB_rq *)v21 smb_rq_set_srflags:256];
        v43 = v21;
        dir = 0;
        *a6 = v21;
      }

      else if (v15)
      {
        v44 = [v13 pd];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __smb2_smb_query_dir_block_invoke;
        v54[3] = &unk_279B4F650;
        v45 = v15;
        v57 = v45;
        v59 = a2;
        v21 = v21;
        v55 = v21;
        v58 = &v62;
        v56 = v14;
        dir = smb_rq_simple_block(v44, v21, v54);

        if (dir)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_query_dir_cold_3();
          }

          v45[2](v45, dir);
        }
      }

      else
      {
        v48 = [v13 pd];
        dir = smb_rq_simple(v48, v21);

        *(a2 + 12) = [(SMB_rq *)v21 sr_ntstatus];
        if (dir)
        {
          if (dir != 2)
          {
            v49 = MEMORY[0x277D86220];
            v50 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              smb2_smb_query_dir_cold_4(buf, dir, [(SMB_rq *)v21 sr_ntstatus]);
            }
          }
        }

        else
        {
          v51 = [(SMB_rq *)v21 smb_rq_getreply];
          v63[3] = v51;
          dir = smb2_smb_parse_query_dir(v51, v52, v14, 0);
        }
      }

      goto LABEL_37;
    }

    v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v35)
    {
      smb2_smb_query_dir_cold_2(v35, v36, v37, v38, v39, v40, v41, v42);
    }

    if (v15)
    {
      dir = 22;
      v15[2](v15, 22);
      goto LABEL_37;
    }

LABEL_14:
    dir = 22;
    goto LABEL_37;
  }

  if (v15)
  {
LABEL_4:
    v15[2](v15, dir);
  }

LABEL_37:
  _Block_object_dispose(&v62, 8);

  v46 = *MEMORY[0x277D85DE8];
  return dir;
}

void sub_264289E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t smb2_smb_parse_query_dir(void *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v6 = a3;
  v49 = 0;
  v50 = 0;
  uint16le = md_get_uint16le(a1, &v50 + 1);
  if (uint16le)
  {
    v8 = uint16le;
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      smb2_smb_parse_query_dir_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else if (HIWORD(v50) == 9)
  {
    v17 = md_get_uint16le(a1, &v50);
    if (v17)
    {
      v8 = v17;
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        smb2_smb_parse_query_dir_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    else
    {
      uint32le = md_get_uint32le(a1, &v49);
      if (uint32le)
      {
        v8 = uint32le;
        v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v28)
        {
          smb2_smb_parse_query_dir_cold_4(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      else
      {
        if (a4)
        {
          *a4 = v49;
        }

        if (v50 && (LOWORD(v50) = v50 - 72, mem = md_get_mem(a1, 0, v50, 0), mem))
        {
          v8 = mem;
          v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v37)
          {
            smb2_smb_parse_query_dir_cold_5(v37, v38, v39, v40, v41, v42, v43, v44);
          }
        }

        else
        {
          v8 = v49;
          if (v49)
          {
            if ([v6 length] >= v8)
            {
              v45 = v49;
            }

            else
            {
              v45 = [v6 length];
            }

            v48 = v45;
            if (md_get_mem(a1, [v6 bytes], v45, 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_query_dir_cold_6();
              }

              v8 = 12;
            }

            else
            {
              v8 = 0;
            }

            v46 = v6;
            v47 = v48;
          }

          else
          {
            v46 = v6;
            v47 = 0;
          }

          [v46 setLength:v47];
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_query_dir_cold_2(&v50 + 1);
    }

    v8 = 72;
  }

  return v8;
}

void __smb2_smb_query_dir_block_invoke(uint64_t a1, unint64_t dir)
{
  v4 = MEMORY[0x266734A50](*(a1 + 48));
  v5 = (a1 + 32);
  *(*(a1 + 64) + 12) = [*(a1 + 32) sr_ntstatus];
  if (dir)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_query_dir_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    dir = smb2_smb_parse_query_dir(*(*(*(a1 + 56) + 8) + 24), v6, *(a1 + 40), 0);
  }

  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, dir);
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void piston_change_notify(void *a1, _DWORD *a2, __int16 a3, int a4, void *a5, void *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v36 = a5;
  v11 = a6;
  v12 = [v10 pd];
  v13 = [v12 sock];

  if (v13)
  {
    v14 = v10;
    v15 = v36;
    v16 = v11;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = v15;
    v17 = [v15 length];
    if (v17 >= 0xA0000)
    {
      v18 = 655360;
    }

    else
    {
      v18 = v17;
    }

    v38 = v18;
    v19 = [v14 treeID];
    v20 = [v14 onEncryptedShare];
    v21 = [v14 pd];
    v37 = 0;
    v22 = smb2_rq_alloc(15, v19, v20, &v38, v21, &v37);
    v23 = v37;

    if (v22)
    {
      if (v23)
      {
        [(SMB_rq *)v23 smb_rq_done];
      }

      if (v16)
      {
        v16[2](v16, v22);
      }
    }

    else
    {
      v24 = [(SMB_rq *)v23 smb_rq_getrequest];
      mb_put_uint16le(v24, 32);
      mb_put_uint16le(v24, a3);
      mb_put_uint32le(v24, v38);
      mb_put_uint64le(v24, [v14 fid]);
      [v14 fid];
      mb_put_uint64le(v24, v25);
      mb_put_uint32le(v24, a4);
      mb_put_uint32le(v24, 0);
      [(SMB_rq *)v23 smb_rq_set_srflags:2];
      if (v16)
      {
        v26 = [v14 pd];
        *buf = MEMORY[0x277D85DD0];
        v44 = 3221225472;
        v45 = __smb2_smb_change_notify_block_invoke;
        v46 = &unk_279B4F650;
        v27 = v16;
        v49 = v27;
        v51 = a2;
        v28 = v23;
        v47 = v28;
        v50 = &v39;
        v48 = v35;
        v22 = smb_rq_simple_block(v26, v28, buf);

        if (v22)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_change_notify_cold_1();
          }

          if (v28)
          {
            [(SMB_rq *)v28 smb_rq_done];
          }

          v27[2](v27, v22);
        }
      }

      else
      {
        v29 = [v14 pd];
        LODWORD(v22) = smb_rq_simple(v29, v23);

        *a2 = [(SMB_rq *)v23 sr_ntstatus];
        if (v22)
        {
          v30 = MEMORY[0x277D86220];
          v31 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            piston_change_notify_cold_2(buf, v22, [(SMB_rq *)v23 sr_ntstatus]);
          }
        }

        else
        {
          v32 = [(SMB_rq *)v23 smb_rq_getreply];
          v40[3] = v32;
          LODWORD(v22) = smb2_smb_parse_change_notify(v32, v35);
        }

        [(SMB_rq *)v23 smb_rq_done];
      }
    }

    _Block_object_dispose(&v39, 8);

    if (v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_change_notify_cold_3();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_change_notify_cold_4();
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 57);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_26428C28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t smb2_smb_parse_change_notify(void *a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = 0;
  uint16le = md_get_uint16le(a1, &v12 + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  if (HIWORD(v12) == 9)
  {
    uint16le = md_get_uint16le(a1, &v12);
    if (uint16le || (uint16le = md_get_uint32le(a1, &v11), uint16le) || v12 && (LOWORD(v12) = v12 - 72, uint16le = md_get_mem(a1, 0, v12, 0), uint16le))
    {
LABEL_2:
      v5 = uint16le;
      goto LABEL_3;
    }

    v5 = v11;
    if (v11)
    {
      if ([v3 length] >= v5)
      {
        v7 = v11;
      }

      else
      {
        v7 = [v3 length];
      }

      v10 = v7;
      if (md_get_mem(a1, [v3 bytes], v7, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_change_notify_cold_2();
        }

        v5 = 12;
      }

      else
      {
        v5 = 0;
      }

      v8 = v3;
      v9 = v10;
    }

    else
    {
      v8 = v3;
      v9 = 0;
    }

    [v8 setLength:v9];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_change_notify_cold_1(&v12 + 1);
    }

    v5 = 72;
  }

LABEL_3:

  return v5;
}

void __smb2_smb_change_notify_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x266734A50](*(a1 + 48));
  v5 = (a1 + 32);
  **(a1 + 64) = [*(a1 + 32) sr_ntstatus];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_change_notify_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    a2 = smb2_smb_parse_change_notify(*(*(*(a1 + 56) + 8) + 24), *(a1 + 40));
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

void piston_query_info(void *a1, unsigned __int8 *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (smb2_smb_query_info(a1, a2, a3, a4, a5, a6, 0, a7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_query_info_cold_1();
    }
  }
}

uint64_t smb2_smb_query_info(void *a1, unsigned __int8 *a2, void *a3, void *a4, void *a5, void *a6, SMB_rq **a7, void *a8)
{
  v62 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v44 = a3;
  v45 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v56 = 0;
  v19 = [v15 pd];
  v20 = [v19 sock];
  LODWORD(a6) = v20 == 0;

  if (a6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_query_info_cold_7();
    }

    if (v18)
    {
      v18[2](v18, 57);
    }

    v22 = 0;
    info = 100;
  }

  else
  {
    if (v17)
    {
      v56 = [v17 length];
    }

    if (v16)
    {
      v21 = [v16 length];
    }

    else
    {
      v21 = 0;
    }

    v24 = *a2;
    if (v24 == 3)
    {
      if (a2[1])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_query_info_cold_1(a2 + 1);
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (v24 == 2)
      {
        v26 = a2[1];
        if (v26 != 5 && v26 != 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_query_info_cold_2(a2 + 1);
          }

          goto LABEL_39;
        }
      }

      else
      {
        if (v24 != 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_query_info_cold_6(a2);
          }

          goto LABEL_39;
        }

        v25 = a2[1];
        if (v25 > 0x3B || ((1 << v25) & 0x801000010444040) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_query_info_cold_5(a2 + 1);
          }

LABEL_39:
          if (v18)
          {
            info = 22;
            v18[2](v18, 22);
            v22 = 0;
          }

          else
          {
            v22 = 0;
            info = 22;
          }

          goto LABEL_61;
        }
      }

      v56 = 0x10000;
    }

    v27 = [v15 treeID];
    v28 = [v15 onEncryptedShare];
    v29 = [v15 pd];
    v55 = 0;
    info = smb2_rq_alloc(16, v27, v28, &v56, v29, &v55);
    v22 = v55;

    if (info)
    {
      if (v22)
      {
        [(SMB_rq *)v22 smb_rq_done];
      }

      if (v18)
      {
        v18[2](v18, info);
      }
    }

    else
    {
      v30 = [(SMB_rq *)v22 smb_rq_getrequest];
      mb_put_uint16le(v30, 41);
      mb_put_uint8(v30, *a2);
      mb_put_uint8(v30, a2[1]);
      mb_put_uint32le(v30, v56);
      if (v21)
      {
        v31 = 104;
      }

      else
      {
        v31 = 0;
      }

      mb_put_uint16le(v30, v31);
      mb_put_uint16le(v30, 0);
      mb_put_uint32le(v30, v21);
      mb_put_uint32le(v30, *(a2 + 1));
      mb_put_uint32le(v30, *(a2 + 2));
      if (a7)
      {
        v32 = -1;
        mb_put_uint64le(v30, -1);
      }

      else
      {
        mb_put_uint64le(v30, [v15 fid]);
        [v15 fid];
        v32 = v33;
      }

      mb_put_uint64le(v30, v32);
      if (v21)
      {
        v34 = v16;
        mb_put_mem(v30, [v16 bytes], v21, 0);
      }

      if (a7)
      {
        smb2_rq_align8(v22);
        [(SMB_rq *)v22 smb_rq_set_srflags:256];
        v35 = v22;
        info = 0;
        *a7 = v22;
      }

      else if (v18)
      {
        v36 = [v15 pd];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __smb2_smb_query_info_block_invoke;
        v46[3] = &unk_279B4F718;
        v37 = v18;
        v52 = v37;
        v54 = a2;
        v22 = v22;
        v47 = v22;
        v53 = &v57;
        v48 = v15;
        v49 = v44;
        v50 = v45;
        v51 = v17;
        info = smb_rq_simple_block(v36, v22, v46);

        if (info)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_query_info_cold_3();
          }

          if (v22)
          {
            [(SMB_rq *)v22 smb_rq_done];
          }

          v37[2](v37, info);
        }
      }

      else
      {
        v38 = [v15 pd];
        info = smb_rq_simple(v38, v22);

        *(a2 + 3) = [(SMB_rq *)v22 sr_ntstatus];
        if (info)
        {
          v39 = MEMORY[0x277D86220];
          v40 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            smb2_smb_query_info_cold_4(buf, info, [(SMB_rq *)v22 sr_ntstatus]);
          }
        }

        else
        {
          v41 = [(SMB_rq *)v22 smb_rq_getreply];
          v58[3] = v41;
          info = smb2_smb_parse_query_info(v15, v41, a2, v44, v45, v17);
        }

        [(SMB_rq *)v22 smb_rq_done];
      }
    }
  }

LABEL_61:
  _Block_object_dispose(&v57, 8);

  v42 = *MEMORY[0x277D85DE8];
  return info;
}

void sub_26428CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void piston_query_share_info(void *a1, int a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 sock];

  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_query_share_info_cold_1();
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    else if (!v14)
    {
      goto LABEL_6;
    }

    v14[2](v14, 57);
    goto LABEL_6;
  }

  v16 = [v11 sock];
  v17 = [v16 signing_queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __piston_query_share_info_block_invoke;
  v18[3] = &unk_279B4F6F0;
  v19 = v11;
  v24 = a2;
  v20 = v12;
  v23 = a3;
  v21 = v13;
  v22 = v14;
  dispatch_async(v17, v18);

LABEL_6:
}

void __piston_query_share_info_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  bzero(v32, 0x470uLL);
  bzero(v31, 0x470uLL);
  v2 = [*(a1 + 32) getShare:*(a1 + 72)];
  if (v2)
  {
    v3 = [[SMBNode alloc] init:*(a1 + 32)];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 commonInit:*(a1 + 32) onShareID:*(a1 + 72)];
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_query_share_info_block_invoke_cold_1();
        }

LABEL_6:
        v7 = 0;
        goto LABEL_13;
      }

      v10 = *([*(a1 + 32) getSessionPtr] + 560);
      v11 = [v2 fstype];
      v13 = (*([*(a1 + 32) getSessionPtr] + 560) & 0x800) == 0 && v11 == 0;
      if ((v10 & 0xC0) != 0)
      {
        v14 = 1;
      }

      else
      {
        v14 = 17;
      }

      fid = smb2_smb_create_fid(v4, 0, 0, 1048705, 2, 7, 1, v14, 0, 0, 0);
      if (fid)
      {
        v6 = fid;
        if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_query_share_info_block_invoke_cold_2();
        }

        goto LABEL_6;
      }

      *v31 = 770;
      info = smb2_smb_query_info(v4, v31, 0, 0, 0, 0, 0, 0);
      if (info)
      {
        v6 = info;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_query_share_info_block_invoke_cold_3();
        }

LABEL_32:
        v7 = 0;
LABEL_48:
        if (smb2_smb_close_fid(v4, 0, 0) && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_query_share_info_block_invoke_cold_5();
        }

        goto LABEL_13;
      }

      if (!v11)
      {
        *v32 = 1282;
        v25 = smb2_smb_query_info(v4, v32, 0, 0, 0, 0, 0, 0);
        if (v25)
        {
          v6 = v25;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __piston_query_share_info_block_invoke_cold_4();
          }

          goto LABEL_32;
        }

        if (v13)
        {
          smb2fs_smb_check_copyfile(v4);
        }
      }

      if ((*([*(a1 + 32) getSessionPtr] + 560) & 0x40) != 0)
      {
        if (*([*(a1 + 32) getSessionPtr] + 584))
        {
          v18 = 5;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFDFFLL | (((*([*(a1 + 32) getSessionPtr] + 584) >> 4) & 1) << 9);
        v20 = v19 & 0xFFFFFFFFFFFFFFF7 | (8 * ((*([*(a1 + 32) getSessionPtr] + 584) >> 1) & 1));
        v21 = v20 & 0xFFFFFFFFFFFFFFEFLL | (16 * ((*([*(a1 + 32) getSessionPtr] + 584) >> 2) & 1));
        v22 = v21 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*([*(a1 + 32) getSessionPtr] + 584) >> 3) & 1));
        v23 = v22 & 0xFFFFFFFFFFFFFFBFLL | ((*([*(a1 + 32) getSessionPtr] + 592) & 1) << 6);
        v24 = v23 & 0xFFFFFFFFFFFFFF7FLL | (((*([*(a1 + 32) getSessionPtr] + 592) >> 1) & 1) << 7);
        v17 = v24 | (*([*(a1 + 32) getSessionPtr] + 592) << 6) & 0x100;
        if (*([*(a1 + 32) getSessionPtr] + 600))
        {
          v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:*(objc_msgSend(*(a1 + 32) encoding:{"getSessionPtr") + 600), 4}];
          [*(a1 + 40) setString:v7];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
        v17 = 0;
      }

      v26 = (*([*(a1 + 32) getSessionPtr] + 560) >> 10) & 2 | v17;
      *(*(a1 + 64) + 16) = [v2 fstype];
      v27 = [v2 file_system_name];

      if (v27)
      {
        v28 = *(a1 + 48);
        v29 = [v2 file_system_name];
        [v28 setString:v29];
      }

      *(*(a1 + 64) + 20) = [v2 file_system_attrs];
      *(*(a1 + 64) + 24) = [v2 max_component_name_len];
      [v2 statfs_lock];
      *(*(a1 + 64) + 28) = [v2 fs_block_size];
      *(*(a1 + 64) + 32) = [v2 fs_iosize];
      *(*(a1 + 64) + 40) = [v2 fs_blocks];
      *(*(a1 + 64) + 48) = [v2 fs_blocks_free];
      *(*(a1 + 64) + 56) = [v2 fs_blocks_avail];
      *(*(a1 + 64) + 64) = [v2 fs_files];
      *(*(a1 + 64) + 72) = [v2 fs_files_free];
      [v2 statfs_unlock];
      v6 = 0;
      v30 = *(a1 + 64);
      *v30 = 0;
      *(v30 + 8) = v26;
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_query_share_info_block_invoke_cold_6();
    }

    v7 = 0;
    v4 = 0;
    v6 = 12;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_query_share_info_block_invoke_cold_7((a1 + 72));
    }

    v7 = 0;
    v4 = 0;
    v6 = 22;
  }

LABEL_13:
  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t smb2_smb_parse_query_info(void *a1, void *a2, unsigned __int8 *a3, void *a4, void *a5, void *a6)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 pd];
  v16 = [v15 getSessionPtr];

  v39 = 0;
  size = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v40 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v33 = 0;
  uint16le = md_get_uint16le(a2, &v39 + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  if (HIWORD(v39) != 9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_query_info_cold_1(&v39 + 1);
    }

    mem = 72;
    goto LABEL_3;
  }

  uint16le = md_get_uint16le(a2, &v39);
  if (uint16le)
  {
    goto LABEL_2;
  }

  uint16le = md_get_uint32le(a2, &size + 1);
  if (uint16le)
  {
    goto LABEL_2;
  }

  if (v39)
  {
    LOWORD(v39) = v39 - 72;
    uint16le = md_get_mem(a2, 0, v39, 0);
    if (uint16le)
    {
      goto LABEL_2;
    }
  }

  v21 = *a3;
  if (v21 == 1 && a3[1] == 22)
  {
    uint16le = smb2_smb_parse_file_stream_info(v11, a2, a3, v12, v14, SHIDWORD(size));
    goto LABEL_2;
  }

  if (!HIDWORD(size))
  {
LABEL_62:
    mem = 0;
    goto LABEL_3;
  }

  if (v21 == 3)
  {
    uint16le = smb2_smb_parse_security(a2, v14, HIDWORD(size));
    goto LABEL_2;
  }

  if (v21 == 2)
  {
    v26 = a3[1];
    if (v26 == 3)
    {
      uint16le = smb2_smb_parse_fs_size(v11, a2, a3);
      goto LABEL_2;
    }

    if (v26 == 5)
    {
      uint16le = smb2_smb_parse_fs_attr(v11, a2, a3);
      goto LABEL_2;
    }

    goto LABEL_62;
  }

  if (v21 != 1)
  {
    goto LABEL_62;
  }

  mem = 0;
  v22 = a3[1];
  if (v22 > 0x15)
  {
    if (a3[1] <= 0x2Fu)
    {
      if (v22 == 22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_query_info_cold_2();
        }

        goto LABEL_62;
      }

      if (v22 != 28)
      {
        goto LABEL_3;
      }

      uint16le = md_get_uint64le(a2, &v34);
      if (uint16le)
      {
        goto LABEL_2;
      }

      uint16le = md_get_uint16le(a2, &v35);
      if (uint16le)
      {
        goto LABEL_2;
      }

      uint16le = md_get_uint8(a2, &v35 + 2);
      if (uint16le)
      {
        goto LABEL_2;
      }

      uint16le = md_get_uint8(a2, &v35 + 3);
      if (uint16le)
      {
        goto LABEL_2;
      }

      uint16le = md_get_uint8(a2, &v35 + 4);
      if (uint16le)
      {
        goto LABEL_2;
      }

      uint16le = md_get_mem(a2, &v35 + 5, 3uLL, 0);
      if (uint16le)
      {
        goto LABEL_2;
      }

      if (v14)
      {
        v23 = &v34;
        v24 = v14;
        v25 = 16;
LABEL_58:
        [v24 appendBytes:v23 length:v25];
        goto LABEL_62;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_query_info_cold_3();
      }

      goto LABEL_70;
    }

    if (v22 != 48)
    {
      if (v22 != 59)
      {
        goto LABEL_3;
      }

      uint16le = md_get_uint64le(a2, &v40);
      if (uint16le)
      {
        goto LABEL_2;
      }

      uint16le = md_get_mem(a2, v41, 0x10uLL, 0);
      if (uint16le)
      {
        goto LABEL_2;
      }

      if (v14)
      {
        v23 = &v40;
        v24 = v14;
        v25 = 24;
        goto LABEL_58;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_query_info_cold_3();
      }

LABEL_70:
      mem = 22;
      goto LABEL_3;
    }

    uint16le = md_get_uint32le(a2, &size);
    if (uint16le)
    {
      goto LABEL_2;
    }

    v27 = size;
    if (!size)
    {
      if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_query_info_cold_7();
      }

      goto LABEL_62;
    }

    if (size >> 4 >= 0xFFF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_query_info_cold_6(&size);
      }

      goto LABEL_70;
    }

    v36 = size;
    v28 = malloc_type_malloc(size, 0x487268C0uLL);
    if (!v28)
    {
      mem = 12;
      goto LABEL_3;
    }

    v29 = v28;
    bzero(v28, v27);
    mem = md_get_mem(a2, v29, v27, 0);
    if (!mem)
    {
      v31 = smbfs_ntwrkname_tolocal(v29, &v36, 1);
      if (v31)
      {
        v32 = v31;
        if (v14)
        {
          [v14 appendBytes:v31 length:v36];
          mem = 0;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_query_info_cold_3();
          }

          mem = 22;
        }

        free(v29);
        v30 = v32;
        goto LABEL_82;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_query_info_cold_5();
      }

      mem = 22;
    }

    v30 = v29;
LABEL_82:
    free(v30);
    goto LABEL_3;
  }

  if (v22 != 6)
  {
    if (v22 != 14)
    {
      if (v22 != 18)
      {
        goto LABEL_3;
      }

      uint16le = smb2_smb_parse_file_all_info(v16, a2, v13);
      goto LABEL_2;
    }

    uint16le = md_get_uint64le(a2, &v33);
    if (uint16le)
    {
LABEL_2:
      mem = uint16le;
      goto LABEL_3;
    }

    if (v14)
    {
      v23 = &v33;
      v24 = v14;
      v25 = 8;
      goto LABEL_58;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_query_info_cold_3();
    }

    goto LABEL_70;
  }

  mem = md_get_uint64le(a2, &v37);
  if (!mem)
  {
    *(a3 + 141) = v37;
  }

LABEL_3:

  v19 = *MEMORY[0x277D85DE8];
  return mem;
}

uint64_t smb2_smb_parse_file_stream_info(void *a1, void *a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = [v11 pd];
  v15 = [v14 getSessionPtr];

  if (v12)
  {
    v16 = [v12 cStringUsingEncoding:4];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 == 0;
  v18 = *(a3 + 1080);
  v19 = *(a3 + 1088);
  v20 = *(a3 + 1096);
  v21 = *(a3 + 1104);
  v22 = *(a3 + 1112);
  v23 = *(a3 + 1120);
  v71 = v13;
  v70 = v21;
  if (!a6)
  {
    v47 = 0;
    v48 = 0;
    v29 = 0;
    v40 = 32;
    v56 = 93;
    goto LABEL_89;
  }

  v67 = v16 == 0;
  v68 = 0;
  v64 = *(a3 + 1120);
  v65 = *(a3 + 1112);
  v62 = *(a3 + 1096);
  v63 = *(a3 + 1088);
  v66 = *(a3 + 1080);
  v69 = 0;
  v24 = 0;
  if (v13)
  {
    v25 = 0;
  }

  else
  {
    v25 = v12 != 0;
  }

  if (v16)
  {
    v26 = v13 == 0;
  }

  else
  {
    v26 = 0;
  }

  v60 = v26;
  v61 = v25;
  if ((v21 & 0x10) != 0)
  {
    v27 = 13;
  }

  else
  {
    v27 = 23;
  }

  v28 = "com.apple.ResourceFork";
  if ((v21 & 0x10) != 0)
  {
    v28 = "AFP_Resource";
  }

  v58 = v28;
  v59 = v27;
  while (1)
  {
    v29 = v24;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    alloc_size = 0;
    uint32le = md_get_uint32le(a2, &v75 + 1);
    if (uint32le || (uint32le = md_get_uint32le(a2, &v75)) != 0 || (uint32le = md_get_uint64le(a2, &v74)) != 0 || (uint32le = md_get_uint64le(a2, &alloc_size)) != 0)
    {
      v56 = uint32le;
LABEL_87:
      v40 = 0;
      goto LABEL_88;
    }

    if (*(v15 + 560) & 0x40) != 0 && (*(v15 + 584))
    {
      alloc_size = smb2_smb_get_alloc_size(v11, v74);
    }

    if (v75 > *(v15 + 80))
    {
      v40 = 0;
      v56 = 72;
      goto LABEL_88;
    }

    v31 = malloc_type_malloc(v75, 0xD696B08DuLL);
    if (!v31)
    {
      v40 = 0;
      v56 = 12;
      goto LABEL_88;
    }

    v32 = v31;
    bzero(v31, v75);
    mem = md_get_mem(a2, v32, v75, 0);
    if (mem)
    {
      v56 = mem;
      free(v32);
      goto LABEL_87;
    }

    v34 = v75;
    if (v75 < 2 || v32[(v75 - 1)])
    {
      v35 = v75;
    }

    else
    {
      v35 = v75;
      if (!v32[(v75 - 2)])
      {
        LODWORD(v75) = v75 - 2;
        v35 = v34 - 2;
      }
    }

    v72 = v35;
    v36 = smbfs_ntwrkname_tolocal(v32, &v72, 1);
    free(v32);
    if (v36)
    {
      if (v72 < 7 || *v36 != 58)
      {
        goto LABEL_43;
      }

      v37 = &v36[v72];
      if (*&v36[v72 - 6] != 1094984762 || *&v36[v72 - 2] != 16724)
      {
        goto LABEL_43;
      }

      if (v72 == 7)
      {
        v69 = 1;
LABEL_43:
        free(v36);
        goto LABEL_44;
      }

      if (v72 - 6 > 0x80)
      {
        goto LABEL_43;
      }

      v72 -= 6;
      *(v37 - 6) = 0;
      v42 = v36 + 1;
      v57 = v72;
      if (v72 < 0x11)
      {
        if (v72 < 0xD)
        {
          if (v72 != 12)
          {
            goto LABEL_71;
          }

          goto LABEL_57;
        }
      }

      else if (!strncmp(v36 + 1, "com.apple.system.", 0x11uLL))
      {
        goto LABEL_43;
      }

      if (!strncasecmp(v36 + 1, "AFP_Resource", 0xDuLL))
      {
        v68 |= 1u;
        v64 = alloc_size;
        if (v61)
        {
          v65 = v74;
          v72 = 13;
          v42 = "AFP_Resource";
          v43 = 13;
        }

        else
        {
          v72 = v59;
          if (v71 && !v74)
          {
            v65 = 0;
            goto LABEL_43;
          }

          v65 = v74;
          v42 = v58;
          v43 = v59;
        }

        v57 = v43;
        goto LABEL_69;
      }

LABEL_57:
      if (!strncasecmp(v36 + 1, "AFP_AfpInfo", 0xCuLL))
      {
        if (v60 || (v70 & 0x10) != 0)
        {
          v72 = 12;
          v57 = 12;
          v42 = "AFP_AfpInfo";
        }

        else
        {
          v72 = 21;
          v57 = 21;
          v42 = "com.apple.FinderInfo";
        }

        v68 |= 2u;
        if (!v74)
        {
          goto LABEL_43;
        }
      }

LABEL_69:
      if (!strncasecmp(v42, "AFP_DeskTop", 0xCuLL) || !strncasecmp(v42, "AFP_IdIndex", 0xCuLL))
      {
        if (v16)
        {
          v44 = strncasecmp("AFP_DeskTop", v16, 0xCuLL);
          v45 = v67;
          if (!v44)
          {
            v45 = 1;
          }

          v67 = v45;
        }

        goto LABEL_43;
      }

LABEL_71:
      if (v71)
      {
        [v71 appendBytes:v42 length:v57];
      }

      else if (!v67 && v16)
      {
        v46 = strnlen(v16, 0x100uLL);
        if (v57 >= v46 && !strncasecmp(v42, v16, v46))
        {
          v67 = 1;
          v62 = alloc_size;
          v63 = v74;
        }

        else
        {
          v67 = 0;
        }

        goto LABEL_43;
      }

      if (!v16)
      {
        v66 += v72;
      }

      goto LABEL_43;
    }

LABEL_44:
    v39 = v34 + 24;
    v24 = v29 + 1;
    v40 = HIDWORD(v75);
    v41 = HIDWORD(v75) - v39;
    if (HIDWORD(v75) > v39)
    {
      break;
    }

LABEL_47:
    if (!v40)
    {
      v56 = 0;
      ++v29;
      goto LABEL_88;
    }
  }

  HIDWORD(v75) -= v39;
  if (v41 <= *(v15 + 80))
  {
    md_get_mem(a2, 0, v41, 0);
    v40 = HIDWORD(v75);
    goto LABEL_47;
  }

  v40 = 0;
  v56 = 72;
  ++v29;
LABEL_88:
  v20 = v62;
  v19 = v63;
  v22 = v65;
  v18 = v66;
  v23 = v64;
  v17 = v67;
  v47 = v68;
  v48 = v69;
LABEL_89:
  if (v48 == 1 && v29 == 1)
  {
    v40 = 32;
  }

  v50 = (v47 & 3 | v40) ^ 3;
  *(a3 + 1080) = v18;
  if (v47)
  {
    v51 = v22;
  }

  else
  {
    v51 = 0;
  }

  if (v47)
  {
    v52 = v23;
  }

  else
  {
    v52 = 0;
  }

  *(a3 + 1088) = v19;
  *(a3 + 1096) = v20;
  *(a3 + 1104) = v70;
  *(a3 + 1108) = v50;
  *(a3 + 1112) = v51;
  *(a3 + 1120) = v52;
  if (v56 == 2 || !v17)
  {
    v54 = 93;
  }

  else
  {
    v54 = v56;
  }

  return v54;
}

uint64_t smb2_smb_parse_file_all_info(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  size = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  uint64le = md_get_uint64le(a2, &v25);
  if (uint64le)
  {
    goto LABEL_35;
  }

  if (v25)
  {
    smb_time_NT2local(v25, &v32);
  }

  uint64le = md_get_uint64le(a2, &v25);
  if (uint64le)
  {
    goto LABEL_35;
  }

  if (v25)
  {
    smb_time_NT2local(v25, &v29);
  }

  uint64le = md_get_uint64le(a2, &v25);
  if (uint64le)
  {
    goto LABEL_35;
  }

  if (v25)
  {
    smb_time_NT2local(v25, &v31);
  }

  uint64le = md_get_uint64le(a2, &v25);
  if (uint64le)
  {
    goto LABEL_35;
  }

  if (v25)
  {
    smb_time_NT2local(v25, &v30);
  }

  uint64le = md_get_uint32le(a2, &v27 + 2);
  if (uint64le)
  {
    goto LABEL_35;
  }

  if ((BYTE8(v27) & 0x10) != 0)
  {
    *&v27 = v27 | 1;
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  DWORD2(v34) = v7;
  uint64le = md_get_uint32le(a2, 0);
  if (uint64le)
  {
    goto LABEL_35;
  }

  uint64le = md_get_uint64le(a2, &v28 + 1);
  if (uint64le)
  {
    goto LABEL_35;
  }

  uint64le = md_get_uint64le(a2, &v28);
  if (uint64le)
  {
    goto LABEL_35;
  }

  uint64le = md_get_uint32le(a2, 0);
  if (uint64le)
  {
    goto LABEL_35;
  }

  uint64le = md_get_uint8(a2, 0);
  if (uint64le)
  {
    goto LABEL_35;
  }

  v21 = a2;
  uint64le = md_get_uint8(a2, 0);
  if (uint64le)
  {
    goto LABEL_35;
  }

  uint64le = md_get_uint16(a2, 0);
  if (uint64le)
  {
    goto LABEL_35;
  }

  uint64le = md_get_uint64le(a2, &v33);
  if (uint64le)
  {
    goto LABEL_35;
  }

  smb2fs_smb_file_id_check(a1, v33, 0, 0);
  uint64le = md_get_uint32le(a2, &size);
  if (uint64le)
  {
    goto LABEL_35;
  }

  if ((BYTE9(v27) & 4) != 0)
  {
    DWORD2(v37) = size;
    if (size == -1610612724)
    {
      *&v27 = v27 | 1;
      DWORD2(v34) = 5;
    }
  }

  else
  {
    DWORD2(v37) = 0;
  }

  uint64le = md_get_uint32le(a2, &v23);
  if (uint64le || (uint64le = md_get_uint64le(a2, 0), uint64le) || (uint64le = md_get_uint32le(a2, 0), uint64le) || (uint64le = md_get_uint32le(a2, 0), uint64le) || (uint64le = md_get_uint32le(a2, &size + 1), uint64le))
  {
LABEL_35:
    v8 = uint64le;
    v9 = 0;
    goto LABEL_36;
  }

  v12 = HIDWORD(size);
  if (HIDWORD(size))
  {
    if (HIDWORD(size) >> 4 >= 0xFFF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_file_all_info_cold_2(&size + 1);
      }

      v9 = 0;
      v8 = 22;
      goto LABEL_36;
    }

    v22 = HIDWORD(size);
    v17 = malloc_type_malloc(HIDWORD(size), 0x3CF68CBDuLL);
    if (!v17)
    {
      v9 = 0;
      v8 = 12;
      goto LABEL_36;
    }

    v14 = v17;
    bzero(v17, v12);
    mem = md_get_mem(v21, v14, v12, 0);
    if (mem)
    {
      v16 = mem;
      v9 = 0;
      v13 = 0;
LABEL_64:
      free(v14);
      goto LABEL_65;
    }

    if (v12 == 1)
    {
      v12 = v12;
    }

    else
    {
      if (v12 == 2 && *v14 == 92 && !v14[1])
      {
LABEL_89:
        v13 = 0;
        goto LABEL_46;
      }

      if (!v14[v12 - 1] && !v14[v12 - 2])
      {
        v22 = v12 - 2;
        v12 -= 2;
      }
    }

    if (v12 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = &v14[v12 - 2];
    }

    while (v19 > v14 && (*v19 != 92 || *(v19 + 1)))
    {
      v19 -= 2;
    }

    if (*v19 == 92)
    {
      v19 += 2 * (*(v19 + 1) == 0);
    }

    v22 = &v14[v12 - v19];
    v20 = smbfs_ntwrkname_tolocal(v19, &v22, 1);
    if (v20)
    {
      v13 = v20;
      goto LABEL_46;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_file_all_info_cold_1();
    }

    goto LABEL_89;
  }

  if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_parse_file_all_info_cold_3();
  }

  v13 = 0;
  v14 = 0;
LABEL_46:
  if (v5)
  {
    v26[12] = v39;
    v26[13] = v40;
    v26[14] = v41;
    v26[8] = v35;
    v26[9] = v36;
    v26[10] = v37;
    v26[11] = v38;
    v26[4] = v31;
    v26[5] = v32;
    v26[6] = v33;
    v26[7] = v34;
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v26[3] = v30;
    [v5 setAttributes:v26];
    if (v13)
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v13 encoding:4];
      v9 = v15;
      if (v15 && [v15 length] >= 0x100)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_file_all_info_cold_4();
        }

        v9 = 0;
        v16 = 22;
        goto LABEL_62;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = 0;
LABEL_62:
    [v5 setName:v9];
    goto LABEL_63;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_parse_file_all_info_cold_5();
  }

  v9 = 0;
  v16 = 12;
LABEL_63:
  if (v14)
  {
    goto LABEL_64;
  }

LABEL_65:
  if (v13)
  {
    free(v13);
  }

  v8 = v16;
LABEL_36:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t smb2_smb_parse_fs_attr(void *a1, void *a2, uint64_t a3)
{
  __src[130] = *MEMORY[0x277D85DE8];
  v5 = a1;
  bzero(__src, 0x410uLL);
  v6 = [v5 pd];
  v7 = [v6 getShare:{objc_msgSend(v5, "shareID")}];

  if (v7)
  {
    uint32le = md_get_uint32le(a2, __src);
    if (uint32le)
    {
      goto LABEL_9;
    }

    uint32le = md_get_uint32le(a2, __src + 1);
    if (uint32le)
    {
      goto LABEL_9;
    }

    if (HIDWORD(__src[0]) >= 0x1FF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_fs_attr_cold_1(__src + 1);
      }

      HIDWORD(__src[0]) = 510;
    }

    uint32le = md_get_uint32le(a2, &__src[1]);
    if (uint32le)
    {
LABEL_9:
      v9 = uint32le;
      goto LABEL_13;
    }

    [v7 setFstype:1];
    [v7 setFile_system_attrs:0];
    [v7 setMax_component_name_len:255];
    [v7 setFile_system_attrs:LODWORD(__src[0])];
    [v7 setMax_component_name_len:HIDWORD(__src[0])];
    if ((LODWORD(__src[1]) - 1) >= 0x3FF)
    {
      memcpy((a3 + 16), __src, 0x410uLL);
      v9 = 0;
      goto LABEL_13;
    }

    v12 = malloc_type_malloc(LODWORD(__src[1]), 0xD08BFBE3uLL);
    if (v12)
    {
      v13 = v12;
      bzero(v12, LODWORD(__src[1]));
      mem = md_get_mem(a2, v13, LODWORD(__src[1]), 0);
      if (mem)
      {
        v9 = mem;
        v15 = 0;
LABEL_50:
        free(v13);

        goto LABEL_13;
      }

      v22 = LODWORD(__src[1]);
      v16 = smbfs_ntwrkname_tolocal(v13, &v22, 1);
      if (v16)
      {
        strncpy(&__src[2], v16, 0x400uLL);
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v16 encoding:4];
        [v7 setFile_system_name:v15];
        v9 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_fs_attr_cold_2();
        }

        v15 = 0;
        v9 = 72;
      }

      v17 = [v5 pd];
      v18 = *([v17 getSessionPtr] + 560);

      if ((v18 & 0x40) != 0)
      {
        v21 = 7;
LABEL_40:
        [v7 setFstype:v21];
LABEL_45:
        if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_fs_attr_cold_3(v7);
        }

        memcpy((a3 + 16), __src, 0x410uLL);
        if (v16)
        {
          free(v16);
        }

        goto LABEL_50;
      }

      if (!v16)
      {
        goto LABEL_45;
      }

      v19 = v22 + 1;
      v22 = v19;
      if (!strncmp(v16, "FAT", v19) || !strncmp(v16, "FAT12", v19) || !strncmp(v16, "FAT16", v19) || !strncmp(v16, "FAT32", v19))
      {
        v20 = 1;
      }

      else if (!strncmp(v16, "CDFS", v19))
      {
        v20 = 2;
      }

      else if (!strncmp(v16, "UDF", v19))
      {
        v20 = 3;
      }

      else
      {
        if (strncmp(v16, "NTFS", v19) && strncmp(v16, "ReFS", v19) && strncmp(v16, "MAFS", v19))
        {
          goto LABEL_43;
        }

        v20 = 4;
      }

      [v7 setFstype:v20];
LABEL_43:
      if ([v7 fstype] != 4 || (objc_msgSend(v7, "file_system_attrs") & 0x40000) == 0)
      {
        goto LABEL_45;
      }

      v21 = 5;
      goto LABEL_40;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_fs_attr_cold_4();
    }

    v9 = 12;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_fs_attr_cold_5(v5);
    }

    v9 = 22;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t smb2_smb_parse_fs_size(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 pd];
  v18 = 0uLL;
  v19 = 0;
  v7 = [v6 getShare:{objc_msgSend(v5, "shareID")}];
  if (v7)
  {
    uint64le = md_get_uint64le(a2, &v18);
    if (uint64le || (uint64le = md_get_uint64le(a2, &v18 + 1), uint64le) || (uint64le = md_get_uint32le(a2, &v19), uint64le) || (uint64le = md_get_uint32le(a2, &v19 + 1), uint64le))
    {
      v9 = uint64le;
    }

    else
    {
      [v7 setTotal_alloc_units:v18];
      [v7 setAvail_alloc_units:*(&v18 + 1)];
      [v7 setSectors_per_alloc_unit:v19];
      [v7 setBytes_per_sector:HIDWORD(v19)];
      v11 = [v7 total_alloc_units];
      v12 = [v7 avail_alloc_units];
      v13 = [v7 bytes_per_sector];
      v14 = [v7 sectors_per_alloc_unit] * v13;
      [v7 statfs_lock];
      [v7 setFs_block_size:v14];
      [v7 setFs_blocks:v11];
      [v7 setFs_blocks_free:v12];
      [v7 setFs_blocks_avail:v12];
      [v7 setFs_files:v11 - 2];
      [v7 setFs_files_free:v12];
      v15 = *([v6 getSessionPtr] + 84);
      if (*([v6 getSessionPtr] + 88) > v15)
      {
        v15 = *([v6 getSessionPtr] + 88);
      }

      v16 = 0x1000 / (4096 - (v15 & 0xFFF)) * v15;
      if (v16 <= 0x100000)
      {
        v16 = 0x100000;
      }

      if (v16 >= 0x4000000)
      {
        v17 = 0x4000000;
      }

      else
      {
        v17 = v16;
      }

      [v7 setFs_iosize:v17];
      [v7 statfs_unlock];
      v9 = 0;
      *(a3 + 1056) = v18;
      *(a3 + 1072) = v19;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_fs_size_cold_1(v5);
    }

    v9 = 22;
  }

  return v9;
}

uint64_t smb2_smb_parse_security(void *a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (v5)
  {
    if (a3 < 0x14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_security_cold_1();
      }

      mem = 72;
    }

    else
    {
      v6 = a3;
      v7 = malloc_type_malloc(a3, 0xBC950B15uLL);
      if (v7)
      {
        v8 = v7;
        mem = md_get_mem(a1, v7, v6, 0);
        if (mem)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_security_cold_2();
          }
        }

        else
        {
          [v5 appendBytes:v8 length:v6];
        }

        free(v8);
      }

      else
      {
        mem = 12;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_security_cold_3();
    }

    mem = 22;
  }

  return mem;
}

void __smb2_smb_query_info_block_invoke(uint64_t a1, uint64_t info)
{
  v4 = MEMORY[0x266734A50](*(a1 + 72));
  v5 = (a1 + 32);
  *(*(a1 + 88) + 12) = [*(a1 + 32) sr_ntstatus];
  if (info)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_query_info_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    info = smb2_smb_parse_query_info(*(a1 + 40), *(*(*(a1 + 80) + 8) + 24), *(a1 + 88), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, info);
  }
}

uint64_t smb2fs_smb_listxattrs(void *a1, void *a2, size_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1;
  bzero(v15, 0x470uLL);
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_listxattrs_cold_4();
    }

    goto LABEL_17;
  }

  *v15 = 5633;
  v17 = 16;
  info = smb2_smb_query_info(v5, v15, 0, 0, 0, 0, 0, 0);
  if (info)
  {
    v8 = info;
    if (info != 93)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_listxattrs_cold_1();
      }

      goto LABEL_18;
    }
  }

  v9 = size;
  if (!size)
  {
    v8 = 0;
LABEL_18:
    *a2 = 0;
    *a3 = 0;
    goto LABEL_19;
  }

  v10 = malloc_type_malloc(size, 0x9B8398FBuLL);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_listxattrs_cold_2();
    }

LABEL_17:
    v8 = 12;
    goto LABEL_18;
  }

  v11 = v10;
  bzero(v15, 0x470uLL);
  *v15 = 5633;
  v17 = 16;
  v12 = smb2_smb_query_info(v5, v15, 0, 0, 0, v6, 0, 0);
  if (v12)
  {
    v8 = v12;
    if (v12 != 93)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2fs_smb_listxattrs_cold_1();
      }

      free(v11);
      goto LABEL_18;
    }
  }

  if ([v6 length] <= v9)
  {
    [v6 getBytes:v11 length:{objc_msgSend(v6, "length")}];
    v9 = [v6 length];
  }

  else
  {
    [v6 getBytes:v11 length:v9];
  }

  v8 = 0;
  *a3 = v9;
  *a2 = v11;
LABEL_19:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

unsigned __int8 *OUTLINED_FUNCTION_3_0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

unsigned int *OUTLINED_FUNCTION_4_0@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t mbuf_free(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[5];
  if (!*a1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    mbuf_free_cold_1();
  }

  if (*(a1 + 4))
  {
    v4 = a1[6];
    if (v4)
    {
      v4(a1[7], a1[1], a1[4]);
    }
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      free(v3);
    }
  }

  free(a1);
  return v2;
}

uint64_t smb_mbuf_get(int a1, int a2, void *a3, size_t a4)
{
  result = 22;
  if (!a1 && a2 == 1)
  {
    v8 = malloc_type_malloc(0x50uLL, 0x10B0040FDA39B43uLL);
    if (v8)
    {
      v9 = v8;
      *(v8 + 4) = 0u;
      *(v8 + 52) = 0u;
      *(v8 + 36) = 0u;
      *(v8 + 20) = 0u;
      *(v8 + 4) = 0u;
      *v8 = 1;
      if (!a4)
      {
LABEL_7:
        result = 0;
        *a3 = v9;
        return result;
      }

      v10 = malloc_type_malloc(a4, 0x228E7EC2uLL);
      v9[4] = v10;
      if (v10)
      {
        v9[1] = a4;
        goto LABEL_7;
      }

      mbuf_free(v9);
    }

    return 12;
  }

  return result;
}

void *mbuf_freem(void *result)
{
    ;
  }

  return result;
}

uint64_t mbuf_gethdr(int a1, int a2, void *a3)
{
  v6 = getpagesize();
  result = smb_mbuf_get(a1, a2, a3, v6);
  if (!result)
  {
    *(*a3 + 4) |= 6u;
  }

  return result;
}

uint64_t mbuf_get(int a1, int a2, void *a3)
{
  v6 = getpagesize();

  return smb_mbuf_get(a1, a2, a3, v6);
}

uint64_t mbuf_get_chain_len(uint64_t a1)
{
  for (i = 0; a1; a1 = *(a1 + 40))
  {
    i += *(a1 + 16);
  }

  return i;
}

uint64_t mbuf_len(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t mbuf_next(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t mbuf_getcluster(int a1, int a2, size_t a3, void *a4)
{
  v8 = *a4;
  if (*a4)
  {
    do
    {
      v8 = mbuf_free(v8);
    }

    while (v8);
    *a4 = 0;
  }

  result = smb_mbuf_get(a1, a2, a4, a3);
  if (!result)
  {
    if (*a4)
    {
      *(*a4 + 4) |= 6u;
    }
  }

  return result;
}

uint64_t mbuf_attachcluster(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 22;
  if (a4 && a6)
  {
    v14 = *a3;
    if (*a3)
    {
      v15 = *(v14 + 4);
      if (v15)
      {
        free(v15);
        *(*a3 + 32) = 0;
        v14 = *a3;
      }

LABEL_10:
      result = 0;
      *(v14 + 1) = 7;
      *(v14 + 1) = a6;
      *(v14 + 4) = a4;
      *(*a3 + 48) = a5;
      *(*a3 + 56) = a7;
      return result;
    }

    result = 22;
    if (!a1 && a2 == 1)
    {
      v16 = malloc_type_malloc(0x50uLL, 0x10B0040FDA39B43uLL);
      if (!v16)
      {
        return 12;
      }

      v14 = v16;
      v16[4] = 0u;
      *(v16 + 52) = 0u;
      *(v16 + 36) = 0u;
      *(v16 + 20) = 0u;
      *(v16 + 4) = 0u;
      *v16 = 1;
      *a3 = v16;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t mbuf_maxlen(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t mbuf_setlen(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t mbuf_setnext(uint64_t a1, _DWORD *a2)
{
  if (!a2 || !*a2)
  {
    return 22;
  }

  v2 = *(a1 + 4);
  if ((v2 & 4) != 0)
  {
    *(a1 + 4) = v2 & 0xFFFFFFFB;
    a2[1] |= 4u;
  }

  v3 = 0;
  *(a1 + 40) = a2;
  return v3;
}

uint64_t mbuf_is_write(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 4) & 8) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 72);
  *a2 = *(a1 + 64);
  *a3 = v4;
  return 1;
}

uint64_t mbuf_set_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 4) |= 8u;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  return 0;
}

uint64_t mbuf_data(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t mbuf_copydata(void *a1, unint64_t a2, size_t a3, char *__dst)
{
  v5 = a3;
  if (a2)
  {
    while (a1)
    {
      v7 = a1[2];
      v8 = a2 >= v7;
      v9 = a2 - v7;
      if (!v8)
      {
        goto LABEL_7;
      }

      a1 = a1[5];
      a2 = v9;
      if (!v9)
      {
        a2 = 0;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (!a3)
    {
      return 0;
    }

    while (a1)
    {
      if (a1[2] - a2 >= v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = a1[2] - a2;
      }

      memmove(__dst, (a1[4] + a2), v10);
      a2 = 0;
      __dst += v10;
      a1 = a1[5];
      v5 -= v10;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return 22;
}

uint64_t mbuf_split(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mbuf_split_cold_3();
    }

    return 22;
  }

  v7 = a1 + 1;
  v6 = a1[1];
  v8 = v6 - a2;
  if (v6 < a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mbuf_split_cold_2(v7);
    }

    return 22;
  }

  if (smb_mbuf_get(0, 1, a4, v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mbuf_split_cold_1();
    }

    return 12;
  }

  else
  {
    if (*a4)
    {
      v11 = *(*a4 + 32);
    }

    else
    {
      v11 = 0;
    }

    memmove(v11, (a1[4] + a2), v8);
    if (*a4)
    {
      result = 0;
      *(*a4 + 16) = v8;
    }

    else
    {
      result = 12;
    }

    a1[2] = a2;
  }

  return result;
}

uint64_t m_fixhdr(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = a1;
    do
    {
      v1 += *(v2 + 16);
      v2 = *(v2 + 40);
    }

    while (v2);
  }

  *(a1 + 24) = v1;
  return v1;
}

uint64_t mbuf_concatenate(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = result;
    do
    {
      v3 = v2;
      v2 = *(v2 + 40);
    }

    while (v2);
    if (a2 && *a2)
    {
      v4 = *(v3 + 4);
      if ((v4 & 4) != 0)
      {
        *(v3 + 4) = v4 & 0xFFFFFFFB;
        a2[1] |= 4u;
      }

      *(v3 + 40) = a2;
    }
  }

  return result;
}

uint64_t mb_pullup(void *a1)
{
  v12 = 0;
  v1 = *a1;
  if (!*a1 || !v1[5])
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  do
  {
    v3 += v4[2];
    v4 = v4[5];
  }

  while (v4);
  v1[3] = v3;
  v5 = mbuf_getcluster(0, 1, v3, &v12);
  if (v5)
  {
    return v5;
  }

  v8 = *a1;
  v9 = v12;
  if (v12)
  {
    v10 = mbuf_copydata(v8, 0, v3, *(v12 + 32));
    if (v10)
    {
      v6 = v10;
      do
      {
        v9 = mbuf_free(v9);
      }

      while (v9);
      return v6;
    }
  }

  else
  {
    v5 = mbuf_copydata(v8, 0, v3, 0);
    if (v5)
    {
      return v5;
    }
  }

  v9[2] = v3;
  v9[3] = v3;
  v11 = *a1;
  if (*a1)
  {
    do
    {
      v11 = mbuf_free(v11);
    }

    while (v11);
  }

  v6 = 0;
  *a1 = v9;
  a1[1] = v9;
  return v6;
}

uint64_t mb_fixhdr(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    result = 0;
    v3 = v1;
    do
    {
      result += *(v3 + 16);
      v3 = *(v3 + 40);
    }

    while (v3);
  }

  else
  {
    result = 0;
  }

  *(v1 + 24) = result;
  return result;
}

uint64_t mb_getbuffer(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
LABEL_13:
      v9 = *(v5 + 32);
      v5 = *(v5 + 16);
    }

    else
    {
      v9 = 0;
    }

    return v9 + v5;
  }

  else
  {
    while (1)
    {
      v11 = 0;
      if (mbuf_getcluster(0, 1, v3 + a2, &v11))
      {
        return 0;
      }

      v5 = v11;
      if (v11)
      {
        *(v11 + 16) = 0;
        if (*v5)
        {
          v6 = *(a1 + 8);
          v7 = *(v6 + 4);
          if ((v7 & 4) != 0)
          {
            *(v6 + 4) = v7 & 0xFFFFFFFB;
            *(v5 + 4) |= 4u;
          }

          v8 = 0;
          *(v6 + 40) = v5;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = MEMORY[0x10];
      }

      v3 = *(v5 + 8) - v8 + *(a1 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v3;
      if (v3 >= a2)
      {
        goto LABEL_13;
      }
    }
  }
}

uint64_t mb_consume(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  *(result + 16) -= a2;
  *(result + 24) = vaddq_s64(*(result + 24), vdupq_n_s64(a2));
  if (v2)
  {
    *(v2 + 16) += a2;
  }

  return result;
}

double mb_initm(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(a2 + 8) - *(a2 + 16);
  return result;
}

double mb_init(uint64_t a1)
{
  v4 = 0;
  if (!mbuf_gethdr(0, 1, &v4))
  {
    v3 = v4;
    result = 0.0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = v3;
    *(a1 + 8) = v3;
    *(a1 + 16) = *(v3 + 8) - *(v3 + 16);
  }

  return result;
}

void *mb_done(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      result = mbuf_free(result);
    }

    while (result);
    *a1 = 0;
  }

  return result;
}

uint64_t mb_detach(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return v1;
}

uint64_t mb_reserve(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    v7 = *(a1 + 8);
    goto LABEL_9;
  }

  v13 = 0;
  v6 = getpagesize();
  if (smb_mbuf_get(0, 1, &v13, v6))
  {
    goto LABEL_12;
  }

  v7 = v13;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      goto LABEL_21;
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v4 = *(v13 + 8);
  if (v4 >= a2)
  {
    if (*v13)
    {
      v11 = *(v5 + 4);
      if ((v11 & 4) != 0)
      {
        *(v5 + 4) = v11 & 0xFFFFFFFB;
        *(v7 + 4) |= 4u;
      }

      *(v5 + 40) = v7;
    }

    *(a1 + 8) = v7;
    *(v7 + 16) = 0;
LABEL_9:
    *(a1 + 16) = v4 - a2;
    *(a1 + 24) = vaddq_s64(*(a1 + 24), vdupq_n_s64(a2));
    if (v7)
    {
      v9 = *(v7 + 16);
      result = *(v7 + 32) + v9;
      *(v7 + 16) = v9 + a2;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v12 = *(v7 + 8);
LABEL_21:
  if (mb_reserve_cold_1(buf, a2, v12, v7 == 0))
  {
    goto LABEL_12;
  }

  do
  {
LABEL_6:
    result = mbuf_free(v7);
    v7 = result;
  }

  while (result);
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mb_put_padbyte(uint64_t a1)
{
  __src = 0;
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 32);
    v1 = *(v1 + 16);
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if ((v2 + v1))
  {
    return mb_put_mem(a1, &__src, 1uLL, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mb_put_mem(uint64_t a1, char *__src, size_t a3, int a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (!a3)
  {
    goto LABEL_33;
  }

  v8 = a3;
  while (2)
  {
    if (v6)
    {
      goto LABEL_19;
    }

    do
    {
      if (v5)
      {
        v10 = v5[5];
        if (v10)
        {
          goto LABEL_17;
        }

        v25 = 0;
        v11 = mbuf_getcluster(0, 1, v8, &v25);
        v12 = v5;
        if (v11)
        {
          return 55;
        }

        do
        {
          v13 = v12;
          v12 = v12[5];
        }

        while (v12);
        v14 = v25;
        if (v25 && *v25)
        {
          v15 = *(v13 + 1);
          if ((v15 & 4) != 0)
          {
            *(v13 + 1) = v15 & 0xFFFFFFFB;
            v14[1] |= 4u;
          }

          v13[5] = v14;
        }
      }

      else
      {
        v25 = 0;
        if (mbuf_getcluster(0, 1, v8, &v25))
        {
          return 55;
        }

        v5 = v25;
      }

      if (!v5)
      {
        return 55;
      }

      v10 = v5[5];
LABEL_17:
      v16 = v10[1];
      v17 = v10[2];
      v5 = v10;
      v6 = v16 - v17;
    }

    while (v16 == v17);
    v5 = v10;
LABEL_19:
    if (v6 >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = v6;
    }

    if (v5)
    {
      v19 = v5[4];
      if (v19)
      {
        v20 = (v19 + v5[2]);
        if (a4)
        {
          if (a4 == 3)
          {
            bzero(v20, v18);
          }

          else if (a4 == 2)
          {
            v21 = v18;
            v22 = __src;
            do
            {
              v23 = *v22++;
              *v20++ = v23;
              --v21;
            }

            while (v21);
          }
        }

        else
        {
          memmove(v20, __src, v18);
        }

        __src += v18;
        v5[2] += v18;
        v6 -= v18;
        *(a1 + 24) = vaddq_s64(*(a1 + 24), vdupq_n_s64(v18));
        v8 -= v18;
        if (!v8)
        {
LABEL_33:
          result = 0;
          *(a1 + 8) = v5;
          *(a1 + 16) = v6;
          return result;
        }

        continue;
      }
    }

    return 55;
  }
}

uint64_t mb_put_mbuf(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      v2 = *(a1 + 8);
      v3 = *(v2 + 4);
      if ((v3 & 4) != 0)
      {
        *(v2 + 4) = v3 & 0xFFFFFFFB;
        *(a2 + 4) |= 4u;
      }

      *(v2 + 40) = a2;
    }

    v4 = *(a1 + 24);
    do
    {
      v5 = a2;
      v6 = (a2 + 16);
      v7 = vld1q_dup_f64(v6);
      v4 = vaddq_s64(v4, v7);
      a2 = *(a2 + 40);
    }

    while (a2);
    *(a1 + 24) = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(v5 + 8) - *(v5 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  return 0;
}

uint64_t md_initm(uint64_t result, uint64_t a2)
{
  *result = 0u;
  *(result + 16) = 0u;
  *result = a2;
  *(result + 8) = a2;
  if (a2)
  {
    v2 = *(a2 + 32);
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  *(result + 24) = 0;
  return result;
}

uint64_t md_init(uint64_t a1)
{
  v4 = 0;
  if (mbuf_gethdr(0, 1, &v4))
  {
    return 55;
  }

  v3 = v4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 8) = v3;
  if (v3)
  {
    v3 = *(v3 + 32);
  }

  result = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  return result;
}

void *md_done(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      result = mbuf_free(result);
    }

    while (result);
    *a1 = 0;
  }

  return result;
}

uint64_t md_get_mem(void *a1, char *__dst, size_t a3, int a4)
{
  if (!a3)
  {
LABEL_20:
    result = 0;
    a1[3] += a3;
    return result;
  }

  v8 = a1[1];
  v9 = a3;
  while (v8)
  {
    for (i = a1[2]; ; a1[2] = i)
    {
      v11 = v8[2] + v8[4] - i;
      if (v11)
      {
        break;
      }

      v8 = v8[5];
      a1[1] = v8;
      if (!v8)
      {
        goto LABEL_21;
      }

      i = v8[4];
    }

    if (v11 >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8[2] + v8[4] - i;
    }

    a1[2] = &i[v12];
    if (!__dst)
    {
      goto LABEL_19;
    }

    if (a4)
    {
      if (a4 == 2)
      {
        v13 = v12;
        do
        {
          v14 = *i++;
          *__dst++ = v14;
          --v13;
        }

        while (v13);
        goto LABEL_19;
      }
    }

    else
    {
      memmove(__dst, i, v12);
    }

    __dst += v12;
LABEL_19:
    v9 -= v12;
    if (!v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (piston_log_level)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      md_get_mem_cold_1();
    }
  }

  return 72;
}

uint64_t md_get_uint16le(void *a1, _WORD *a2)
{
  __dst = 0;
  result = md_get_mem(a1, &__dst, 2uLL, 2);
  if (a2)
  {
    if (!result)
    {
      *a2 = __dst;
    }
  }

  return result;
}

uint64_t md_get_uint16be(void *a1, _WORD *a2)
{
  __dst = 0;
  result = md_get_mem(a1, &__dst, 2uLL, 2);
  if (a2)
  {
    if (!result)
    {
      *a2 = bswap32(__dst) >> 16;
    }
  }

  return result;
}

uint64_t md_get_uint32be(void *a1, _DWORD *a2)
{
  __dst = 0;
  result = md_get_mem(a1, &__dst, 4uLL, 2);
  if (a2)
  {
    if (!result)
    {
      *a2 = bswap32(__dst);
    }
  }

  return result;
}

uint64_t md_get_uint32le(void *a1, _DWORD *a2)
{
  __dst = 0;
  result = md_get_mem(a1, &__dst, 4uLL, 2);
  if (a2)
  {
    if (!result)
    {
      *a2 = __dst;
    }
  }

  return result;
}

uint64_t md_get_uint64be(void *a1, void *a2)
{
  __dst = 0;
  result = md_get_mem(a1, &__dst, 8uLL, 2);
  if (a2)
  {
    if (!result)
    {
      *a2 = bswap64(__dst);
    }
  }

  return result;
}

uint64_t md_get_uint64le(void *a1, void *a2)
{
  __dst = 0;
  result = md_get_mem(a1, &__dst, 8uLL, 2);
  if (a2)
  {
    if (!result)
    {
      *a2 = __dst;
    }
  }

  return result;
}

uint64_t md_get_size(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 16);
  do
  {
    if (v4)
    {
      v5 = v1[4] - v4 + v1[2];
    }

    else
    {
      v5 = v1[2];
    }

    v4 = 0;
    result += v5;
    v1 = v1[5];
  }

  while (v1);
  return result;
}

uint64_t md_get_utf16_strlen(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 16);
  while (1)
  {
    v5 = v1[4] - v4 + v1[2];
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      break;
    }

LABEL_8:
    v7 = v4;
    v1 = v1[5];
    if (!v1)
    {
      return result;
    }

    v4 = v1[4];
    if (v5)
    {
      if (!*v7 && !*v4)
      {
        return result;
      }

      ++v4;
    }
  }

  v6 = 0;
  while (*v4)
  {
    v4 += 2;
    v6 += 2;
    if (v6 >= (v5 & 0xFFFFFFFFFFFFFFFELL))
    {
      result += v6;
      goto LABEL_8;
    }
  }

  result += v6;
  return result;
}

__n128 md_shadow_copy(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

void piston_tree_connect(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x2020000000;
  v38 = 22;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v10 = [v7 sock];

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_tree_connect_cold_2();
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else if (!v9)
    {
      goto LABEL_11;
    }

    v9[2](v9, 57);
    goto LABEL_11;
  }

  v11 = [v7 sock];
  v12 = [v11 getIPv4IPv6DotName];

  if (*v12)
  {
    v29[3] = v12;
    v13 = strnlen(v12, 0x10uLL);
    v33[3] = v13;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __piston_tree_connect_block_invoke_3;
    v22[3] = &unk_279B4F740;
    v23[1] = v12;
    v23[0] = v9;
    v14 = smb2_smb_tree_connect(v7, v8, v12, v13, a3, v22);
    v15 = v23;
    *(v37[0] + 24) = v14;
  }

  else
  {
    v16 = [v7 sock];
    v17 = [v16 serverName];
    v18 = [v17 cStringUsingEncoding:4];
    v29[3] = v18;

    v19 = v29[3];
    v20 = strnlen(v19, 0x100uLL);
    v33[3] = v20;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __piston_tree_connect_block_invoke;
    v24[3] = &unk_279B4F768;
    v27[0] = v9;
    v27[1] = &v28;
    v25 = v7;
    v27[2] = &v32;
    v27[3] = &v36;
    v27[4] = v12;
    v26 = v8;
    v27[5] = a3;
    v21 = smb2_smb_tree_connect(v25, v26, v19, v20, a3, v24);
    v15 = v27;
    *(v37[0] + 24) = v21;
  }

  if (*(v37[0] + 24) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_tree_connect_cold_1(v37);
  }

LABEL_11:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_264290504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t smb2_smb_tree_connect(void *a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a6;
  v36 = 0;
  v14 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\\:"];
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_tree_connect_cold_8();
    }

    goto LABEL_11;
  }

  v15 = [MEMORY[0x277CCA900] controlCharacterSet];
  v16 = [v12 rangeOfCharacterFromSet:v15];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_tree_connect_cold_1();
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([v12 rangeOfCharacterFromSet:v14] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_tree_connect_cold_2();
      if (v13)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_18:
    if (v13)
    {
LABEL_19:
      v18 = 22;
      v13[2](v13, 22);
      goto LABEL_20;
    }

LABEL_29:
    v19 = 0;
    v18 = 22;
    goto LABEL_30;
  }

  cstring_len = smb_get_cstring_len(v12, &v36);
  if (!cstring_len)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_tree_connect_cold_7();
    }

LABEL_11:
    if (v13)
    {
      v18 = 12;
      v13[2](v13, 12);
LABEL_20:
      v19 = 0;
      goto LABEL_30;
    }

    v19 = 0;
    v18 = 12;
    goto LABEL_30;
  }

  if (v36 >= 0x51)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_tree_connect_cold_6();
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v20 = cstring_len;
  v35 = 0;
  v18 = smb2_rq_alloc(3, 0, 0, 0, v11, &v35);
  v21 = v35;
  v19 = v21;
  if (v18)
  {
    goto LABEL_37;
  }

  v22 = [(SMB_rq *)v21 smb_rq_getrequest];
  mb_put_uint16le(v22, 9);
  mb_put_uint16le(v22, 0);
  mb_put_uint16le(v22, 72);
  smb_rq_bstart(v19);
  smb_put_dmem(v22, "\\\", 2, 0, 1, 0);
  v28 = v22;
  v23 = smb_put_dmem(v22, a3, a4, 0, 1, 0);
  if (v23)
  {
    v18 = v23;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_tree_connect_cold_3();
      if (!v19)
      {
        goto LABEL_39;
      }

LABEL_38:
      [(SMB_rq *)v19 smb_rq_done];
      goto LABEL_39;
    }

LABEL_37:
    if (!v19)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v25 = smb_put_dmem(v22, "\", 1, 0, 1, 0);
  if (v25)
  {
    v18 = v25;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    smb2_smb_tree_connect_cold_4();
    if (v19)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v26 = smb_put_dmem(v22, v20, v36, 0, 1, 0);
  if (v26)
  {
    v18 = v26;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    smb2_smb_tree_connect_cold_5();
    if (v19)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (v13)
    {
      v13[2](v13, v18);
    }

    goto LABEL_30;
  }

  smb_rq_bend(v19);
  if ((*([v11 getSessionPtr] + 554) & 2) != 0)
  {
    [(SMB_rq *)v19 smb_rq_set_srflags:1024];
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __smb2_smb_tree_connect_block_invoke;
  v29[3] = &unk_279B4F790;
  v27 = v13;
  v33 = v27;
  v34 = a5;
  v19 = v19;
  v30 = v19;
  v31 = v12;
  v32 = v11;
  v18 = smb_rq_simple_block(v32, v19, v29);
  if (v18)
  {
    if (v19)
    {
      [(SMB_rq *)v19 smb_rq_done];
    }

    if (v27)
    {
      v27[2](v27, v18);
    }
  }

LABEL_30:
  return v18;
}

void __piston_tree_connect_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 57 || !a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }

    return;
  }

  if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __piston_tree_connect_block_invoke_cold_1(a1);
  }

  v6 = [*(a1 + 32) sock];
  v7 = [v6 getServerAddress];

  if (v7)
  {
    v8 = [*(a1 + 32) sock];
    v9 = *([v8 getServerAddress] + 1);

    v10 = [*(a1 + 32) sock];
    v11 = [v10 getServerAddress];
    v12 = v11;
    if (v9 != 2)
    {
      v13 = *(v11 + 1);

      if (v13 != 30)
      {
        goto LABEL_15;
      }

      v10 = [*(a1 + 32) sock];
      v12 = [v10 getServerAddress];
      v9 = 30;
    }

    v14 = *(a1 + 80);
    v15 = [*(a1 + 32) sock];
    inet_ntop(v9, (v12 + 4), v14, [v15 getIPv4IPv6DotNameMaxLength]);
  }

LABEL_15:
  v16 = *(a1 + 80);
  if (*v16)
  {
    *(*(*(a1 + 56) + 8) + 24) = v16;
    *(*(*(a1 + 64) + 8) + 24) = strnlen(*(*(*(a1 + 56) + 8) + 24), 0x10uLL);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(*(*(a1 + 56) + 8) + 24);
    v20 = *(*(*(a1 + 64) + 8) + 24);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __piston_tree_connect_block_invoke_1;
    v26[3] = &unk_279B4F740;
    v21 = *(a1 + 88);
    v28 = *(a1 + 80);
    v27 = *(a1 + 48);
    v22 = smb2_smb_tree_connect(v17, v18, v19, v20, v21, v26);
    v24 = *(a1 + 72);
    v23 = a1 + 72;
    *(*(v24 + 8) + 24) = v22;
    if (*(*(*v23 + 8) + 24) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_tree_connect_block_invoke_cold_2(v23);
    }
  }

  else
  {
    v25 = *(a1 + 48);
    if (v25)
    {
      (*(v25 + 16))(v25, a2);
    }
  }
}

uint64_t __piston_tree_connect_block_invoke_1(uint64_t a1, int a2)
{
  if (a2)
  {
    **(a1 + 40) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __piston_tree_connect_block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    **(a1 + 40) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void piston_tree_disconnect(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [v7 sock];

  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_tree_disconnect_cold_5();
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    else if (!v8)
    {
      goto LABEL_29;
    }

    v8[2](v8, 57);
    goto LABEL_29;
  }

  v10 = v7;
  v11 = v8;
  v12 = [v10 getShare:a2];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_tree_disconnect_cold_3();
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else if (v11)
    {
      goto LABEL_15;
    }

LABEL_18:
    v16 = 0;
    LODWORD(v14) = 22;
    goto LABEL_26;
  }

  if ([v12 tree_id] != -1 && objc_msgSend(v13, "tree_id"))
  {
    v28 = 0;
    v14 = smb2_rq_alloc(4, [v13 tree_id], objc_msgSend(v13, "isEncrypted"), 0, v10, &v28);
    v15 = v28;
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        [(SMB_rq *)v15 smb_rq_done];
      }

      if (v11)
      {
        v11[2](v11, v14);
      }

      goto LABEL_26;
    }

    v17 = [(SMB_rq *)v15 smb_rq_getrequest];
    mb_put_uint16le(v17, 4);
    mb_put_uint16le(v17, 0);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __smb2_smb_tree_disconnect_block_invoke;
    v22 = &unk_279B4F7B8;
    v18 = v11;
    v25 = v18;
    v27 = a2;
    v23 = v10;
    v26 = a3;
    v16 = v16;
    v24 = v16;
    v14 = smb_rq_simple_block(v23, v16, &v19);
    if (!v14)
    {
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_tree_disconnect_cold_1();
      if (!v16)
      {
LABEL_23:
        if (v18)
        {
          v18[2](v18, v14);
        }

LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!v16)
    {
      goto LABEL_23;
    }

    [(SMB_rq *)v16 smb_rq_done:v19];
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_tree_disconnect_cold_2(v13);
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_15:
  LODWORD(v14) = 22;
  v11[2](v11, 22);
  v16 = 0;
LABEL_26:

  if (v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_tree_disconnect_cold_4();
  }

LABEL_29:
}

void __smb2_smb_tree_connect_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v4 = MEMORY[0x266734A50](*(a1 + 56));
  v5 = (a1 + 32);
  **(a1 + 64) = [*(a1 + 32) sr_ntstatus];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_tree_connect_block_invoke_cold_1((a1 + 32));
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) smb_rq_getreply];
  v7 = objc_alloc_init(SMBShare);
  [(SMBShare *)v7 setSharename:*(a1 + 40)];
  v9 = [*(a1 + 32) sr_rsptreeid];
  [(SMBShare *)v7 setTree_id:v9];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  uint16le = md_get_uint16le(v8, &v14);
  if (uint16le)
  {
LABEL_6:
    a2 = uint16le;
    goto LABEL_7;
  }

  if (v14 == 16)
  {
    uint16le = md_get_uint8(v8, &v13);
    if (uint16le)
    {
      goto LABEL_6;
    }

    [(SMBShare *)v7 setShare_type:v13];
    uint16le = md_get_uint8(v8, &v13);
    if (uint16le)
    {
      goto LABEL_6;
    }

    uint16le = md_get_uint32le(v8, &v12);
    if (uint16le)
    {
      goto LABEL_6;
    }

    [(SMBShare *)v7 setShare_flags:v12];
    if ((-[SMBShare share_flags](v7, "share_flags") & 0x8000) != 0 || (*([*v5 sr_sessionp] + 553) & 0x288) != 0 && (*(objc_msgSend(*v5, "sr_sessionp") + 68) & 4) != 0)
    {
      [(SMBShare *)v7 setIsEncrypted:1];
    }

    uint16le = md_get_uint32le(v8, &v12);
    if (uint16le)
    {
      goto LABEL_6;
    }

    [(SMBShare *)v7 setShare_capabilities:v12];
    uint16le = md_get_uint32le(v8, &v12);
    if (uint16le)
    {
      goto LABEL_6;
    }

    [(SMBShare *)v7 setShare_max_access:v12];
    if (*(a1 + 64))
    {
      *(*(a1 + 64) + 4) = [(SMBShare *)v7 share_type];
      *(*(a1 + 64) + 8) = [(SMBShare *)v7 share_flags];
      *(*(a1 + 64) + 12) = [(SMBShare *)v7 share_capabilities];
      *(*(a1 + 64) + 16) = [(SMBShare *)v7 share_max_access];
      *(*(a1 + 64) + 20) = [(SMBShare *)v7 tree_id];
    }

    [*(a1 + 48) share_list_lock];
    v11 = [*(a1 + 48) shareList];
    [v11 setObject:v7 forKey:v6];

    [*(a1 + 48) share_list_unlock];
    a2 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_tree_connect_block_invoke_cold_2(&v14);
    }

    a2 = 72;
  }

LABEL_7:
  if (*v5)
  {
    [*v5 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, a2);
  }
}

void __smb2_smb_tree_disconnect_block_invoke(uint64_t a1, uint64_t uint16le)
{
  v9 = 0;
  v4 = MEMORY[0x266734A50](*(a1 + 48));
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)];
  [*(a1 + 32) share_list_lock];
  v6 = [*(a1 + 32) shareList];
  [v6 removeObjectForKey:v5];

  [*(a1 + 32) share_list_unlock];
  v8 = *(a1 + 40);
  v7 = a1 + 40;
  **(v7 + 16) = [v8 sr_ntstatus];
  if (uint16le)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_tree_disconnect_block_invoke_cold_1(v7);
    }
  }

  else
  {
    uint16le = md_get_uint16le([*v7 smb_rq_getreply], &v9);
    if (!uint16le && v9 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __smb2_smb_tree_disconnect_block_invoke_cold_2(&v9);
      }

      uint16le = 72;
    }
  }

  if (*v7)
  {
    [*v7 smb_rq_done];
  }

  if (v4)
  {
    v4[2](v4, uint16le);
  }
}

void piston_logoff(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 getSessionPtr];
  v14 = 0;
  v8 = [v5 sock];

  if (v8)
  {
    v13 = 0;
    uint16le = smb2_rq_alloc(2, 0, 0, 0, v5, &v13);
    v10 = v13;
    v11 = v10;
    if (!uint16le)
    {
      v12 = [(SMB_rq *)v10 smb_rq_getrequest];
      mb_put_uint16le(v12, 4);
      mb_put_uint16le(v12, 0);
      uint16le = smb_rq_simple(v5, v11);
      if (a2)
      {
        *(a2 + 16) = [(SMB_rq *)v11 sr_ntstatus];
      }

      if (uint16le)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          piston_logoff_cold_1(v11);
        }
      }

      else
      {
        *(v7 + 568) = 0;
        uint16le = md_get_uint16le([(SMB_rq *)v11 smb_rq_getreply], &v14);
        if (!uint16le && v14 != 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            piston_logoff_cold_2(&v14);
          }

          uint16le = 0;
        }
      }
    }

    if (v11)
    {
      [(SMB_rq *)v11 smb_rq_done];
    }

    if (v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_logoff_cold_3();
    }

    v11 = 0;
    if (v6)
    {
      uint16le = 57;
LABEL_20:
      v6[2](v6, uint16le);
    }
  }
}

void piston_session_setup(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [v11 sock];

  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_session_setup_cold_1();
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    else if (!v15)
    {
      goto LABEL_6;
    }

    v15[2](v15, 57);
    goto LABEL_6;
  }

  v17 = [v11 sock];
  v18 = [v17 signing_queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __piston_session_setup_block_invoke;
  v19[3] = &unk_279B4F808;
  v20 = v11;
  v25 = a5;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  dispatch_async(v18, v19);

LABEL_6:
}

uint64_t __piston_session_setup_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) getSessionPtr];
  v57 = (a1 + 72);
  v55 = a1;
  if (**(a1 + 72))
  {
    [*v2 setUserName:@"GUEST"];
    [*v2 setPassword:&stru_2875BD7D8];
    *(v3 + 552) |= 0x400000uLL;
    [*v2 setRealm:0];
    if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_session_setup_block_invoke_cold_1();
    }

LABEL_9:
    v7 = *(v3 + 560);
    if ((v7 & 0x100) != 0)
    {
      v8 = *(v3 + 552);
      if ((v8 & 0xC00000) != 0)
      {
        *(v3 + 552) = v8 & 0xFFFFFFFFFFFFFFF7;
        *(v3 + 560) = v7 & 0xFFFFFFFFFFFFFEFFLL;
      }
    }

    v9 = *(*v57 + 1);
    if (v9)
    {
      *(v3 + 576) = v9;
    }

    *(v3 + 568) = 0;
    *(v3 + 168) = -1073741802;
    *&v6 = 136315394;
    v54 = v6;
    v56 = v2;
    while (1)
    {
      v10 = piston_gss_transact(*v2);
      v11 = v10;
      if (v10 && v10 != 35)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_session_setup_block_invoke_cold_10();
        }

        if (*(v3 + 568))
        {
          [*v2 logoff];
        }

        goto LABEL_83;
      }

      if (*(v3 + 168) == -1073741802)
      {
        break;
      }

LABEL_63:
      if (v11 != 35)
      {
        v36 = *(v3 + 552);
        v37 = *(v3 + 68);
        if (v36 & 0x8C00000) == 0 && (v37)
        {
          if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __piston_session_setup_block_invoke_cold_8();
          }

          [*v2 logoff];
          v11 = 80;
          goto LABEL_86;
        }

        if (v37)
        {
          *(v3 + 552) = v36 & 0xFFFFFFFFFFFFFFF7;
          smb_reset_sig(v3);
          v44 = *(v3 + 272);
          if (!v44)
          {
            goto LABEL_100;
          }

          free(v44);
          v11 = 0;
          *(v3 + 272) = 0;
          *(v3 + 280) = 0;
        }

        else
        {
          if ((v36 & 0x28800) != 0)
          {
            piston_smb3_derive_keys(*v2);
          }

          v40 = *(v3 + 272);
          if (v40)
          {
            v41 = *(v3 + 288);
            v42 = smb3_verify_session_setup(v3, v40, *(v3 + 280));
            free(*(v3 + 272));
            *(v3 + 272) = 0;
            *(v3 + 280) = 0;
            if (v42)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                __piston_session_setup_block_invoke_cold_9();
              }

              [*v2 logoff];
              v43 = 0;
              v11 = 80;
              goto LABEL_102;
            }
          }

LABEL_100:
          v11 = 0;
        }

        v43 = 1;
LABEL_102:
        smb2_rq_credit_start(v3, 0);
        piston_gss_reset(v3);
        if (v43)
        {
          v45 = *v57;
          if (*v57 && (*(v45 + 10) = *(v3 + 68), *(v45 + 3) = *(v3 + 568), *(v45 + 4) = 0, [*v2 sock], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isPerAppVPN"), v46, v47 == 1))
          {
            v11 = 0;
            *(*v57 + 4) |= 1uLL;
          }

          else
          {
            v11 = 0;
          }
        }

        goto LABEL_87;
      }
    }

    v12 = v3;
    v13 = *v57;
    v14 = *v2;
    v15 = [v14 getSessionPtr];
    v16 = 0;
    *&size[1] = 0;
    size[0] = 0;
    v17 = (*(v15 + 80) - 64);
    v18 = *(v15 + 160);
    do
    {
      if (v16)
      {
        [(SMB_rq *)v16 smb_rq_done];
      }

      v58 = v16;
      mem = smb2_rq_alloc(1, 0, 0, 0, v14, &v58);
      v20 = v58;

      if (mem)
      {
        break;
      }

      v21 = [(SMB_rq *)v20 smb_rq_getrequest];
      mb_put_uint16le(v21, 25);
      mb_put_uint8(v21, 0);
      client_security_mode = smb2_smb_get_client_security_mode(v15);
      mb_put_uint8(v21, client_security_mode);
      mb_put_uint32le(v21, 1);
      mb_put_uint32le(v21, 0);
      mb_put_uint16le(v21, 88);
      v23 = *(v15 + 152);
      if (v23 <= v17)
      {
        v24 = v23;
      }

      else
      {
        v24 = v17;
      }

      mb_put_uint16le(v21, v24);
      mb_put_uint64le(v21, *(v15 + 576));
      mb_put_mem(v21, v18, v24, 0);
      mem = smb_rq_simple(v14, v20);
      v25 = [(SMB_rq *)v20 sr_ntstatus];
      *(v15 + 168) = v25;
      v13[4] = v25;
      if (mem && ([(SMB_rq *)v20 sr_flags]& 0x10) != 0)
      {
        if (!*(v15 + 152))
        {
          break;
        }
      }

      else
      {
        if (!*(v15 + 568))
        {
          *(v15 + 568) = [(SMB_rq *)v20 sr_rspsessionid];
        }

        v18 += v24;
        v26 = *(v15 + 152) - v24;
        *(v15 + 152) = v26;
        if (!v26)
        {
          break;
        }
      }

      v16 = v20;
    }

    while (mem == 35);
    v27 = *(v15 + 160);
    if (v27)
    {
      free(v27);
      *(v15 + 160) = 0;
    }

    *(v15 + 152) = 0;
    v3 = v12;
    if (mem && mem != 35)
    {
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *&size[3] = v54;
        v60 = "smb2_smb_gss_session_setup";
        v61 = 1024;
        v62 = mem;
        _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Extended security authorization failed! %d\n", &size[3], 0x12u);
      }

      goto LABEL_57;
    }

    v28 = [(SMB_rq *)v20 smb_rq_getreply];
    uint16le = md_get_uint16le(v28, &size[2]);
    if (uint16le)
    {
      goto LABEL_38;
    }

    v30 = size[2];
    if (size[2] != 9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *&size[3] = v54;
        v60 = "smb2_smb_gss_session_setup";
        v61 = 1024;
        v62 = v30;
        _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Bad struct size: %u\n", &size[3], 0x12u);
      }

      mem = 72;
      goto LABEL_57;
    }

    uint16le = md_get_uint16le(v28, (v15 + 68));
    if (uint16le || (uint16le = md_get_uint16le(v28, &size[1]), uint16le) || (uint16le = md_get_uint16le(v28, size), uint16le) || size[1] && (size[1] -= 72, uint16le = md_get_mem(v28, 0, size[1], 0), uint16le))
    {
LABEL_38:
      mem = uint16le;
    }

    else
    {
      v31 = *(v15 + 144);
      if (v31)
      {
        free(v31);
        *(v15 + 144) = 0;
      }

      v32 = size[0];
      *(v15 + 136) = size[0];
      if (!v32)
      {
        [(SMB_rq *)v20 smb_rq_done];
        mem = 0;
        goto LABEL_59;
      }

      v33 = malloc_type_malloc(v32, 0x7CFA3221uLL);
      *(v15 + 144) = v33;
      if (v33)
      {
        v34 = size[0];
        *(v15 + 136) = size[0];
        mem = md_get_mem(v28, v33, v34, 0);
        [(SMB_rq *)v20 smb_rq_done];
        if (!mem)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      mem = 12;
    }

LABEL_57:
    [(SMB_rq *)v20 smb_rq_done];
LABEL_58:
    *(v15 + 568) = 0;
LABEL_59:

    if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35 = (*v57)[4];
      *&size[3] = 136315650;
      v60 = "piston_session_setup_block_invoke";
      v61 = 1024;
      v62 = mem;
      v63 = 1024;
      v64 = v35;
      _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: smb2_smb_gss_session_setup <%d> NT Status<0x%x>\n", &size[3], 0x18u);
    }

    v2 = v56;
    if (mem)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_session_setup_block_invoke_cold_7(v57);
      }

      v11 = mem;
      goto LABEL_83;
    }

    goto LABEL_63;
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    [*(a1 + 32) setUserName:?];
    [*(a1 + 32) setPassword:*(a1 + 48)];
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *v2;
    }

    else
    {
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_session_setup_block_invoke_cold_2();
      }

      v5 = *v2;
      v4 = 0;
    }

    [v5 setRealm:v4];
    v48 = [*v2 realm];
    if (v48)
    {
      v49 = v48;
      v50 = [*v2 realm];
      v51 = [v50 length];

      if (v51)
      {
        if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_session_setup_block_invoke_cold_3(v2);
        }
      }
    }

    v52 = *(v3 + 560) & 0xFFFFFFFFFF8FFFFFLL;
    *(v3 + 560) = v52;
    v53 = **v57;
    if ((v53 & 8) != 0)
    {
      *(v3 + 560) = v52 | 0x200000;
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_session_setup_block_invoke_cold_4();
      }
    }

    else if ((v53 & 2) != 0)
    {
      *(v3 + 560) = v52 | 0x400000;
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_session_setup_block_invoke_cold_5();
      }
    }

    else if ((v53 & 4) != 0)
    {
      *(v3 + 560) = v52 | 0x100000;
      if ((piston_log_level & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_session_setup_block_invoke_cold_6();
      }
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __piston_session_setup_block_invoke_cold_11();
  }

  v11 = 22;
LABEL_83:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __piston_session_setup_block_invoke_cold_12();
  }

  smb_reset_sig(v3);
LABEL_86:
  piston_gss_reset(v3);
LABEL_87:
  result = *(v55 + 64);
  if (result)
  {
    result = (*(result + 16))(result, v11);
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t piston_ntstatus_to_errno(unsigned int a1)
{
  v1 = (a1 >> 30) ^ 2;
  if ((v1 - 2) < 2)
  {
    return 0;
  }

  if (v1)
  {
    if (a1 == -1073741477)
    {
      return 80;
    }

    for (i = &dword_2642C0514; ; i += 2)
    {
      result = *i;
      if (!result)
      {
        break;
      }

      v5 = *(i - 1);
      if (v5 == a1)
      {
        return result;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_ntstatus_to_errno_cold_1();
    }

    return 5;
  }

  if (a1 == -2147483643)
  {
    return 0;
  }

  if (a1 != -2147483642)
  {
    if (a1 != -2147483603)
    {
      printf("%s: Unable to map warning ntstatus to errno, ntstatus: 0x%x\n", "piston_ntstatus_warning_to_errno", a1);
    }

    return 5;
  }

  return 2;
}

void piston_set_session_key(void *a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = [a1 getSessionPtr];
  if (a2 && v3)
  {
    v6 = v5;
    smb_reset_sig(v5);
    *(v6 + 240) = v3;
    v7 = malloc_type_malloc(v3, 0x69D4182DuLL);
    *(v6 + 232) = v7;
    if (v7)
    {
      memcpy(v7, a2, *(v6 + 240));
      if (v3 >= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = v3;
      }

      if ((*(v6 + 552) & 0x1000) != 0)
      {
        v3 = v8;
      }

      else
      {
        v3 = v3;
      }

      v9 = malloc_type_malloc(v3, 0xA5E0BD30uLL);
      *(v6 + 216) = v9;
      if (v9)
      {
        memmove(v9, a2, v3);
        *(v6 + 224) = v3;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_set_session_key_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_set_session_key_cold_2();
    }
  }
}

uint64_t smb_convert_network_to_path(char *a1, size_t __n, UInt8 *a3, CFIndex *a4, int a5, char a6, int a7)
{
  v30 = a3;
  __s1 = a1;
  v8 = *a4;
  v29 = *a4;
  if (!a1)
  {
    v11 = v8;
LABEL_47:
    v26 = 0;
    *a4 = v8 - v11;
    return v26;
  }

  v9 = __n;
  if (v8)
  {
    v10 = __n == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v8;
  if (v10)
  {
    goto LABEL_47;
  }

  v28 = 0;
  while (1)
  {
    if (a7)
    {
      if (v9 >= 2)
      {
        v17 = v9 >> 1;
        v18 = 2 * (v9 >> 1);
        v15 = a1;
        while (1)
        {
          if (!*v15)
          {
LABEL_19:
            v15 = 0;
            goto LABEL_23;
          }

          if (*v15 == a5)
          {
            break;
          }

          v15 += 2;
          v18 -= 2;
          if (!v18)
          {
            goto LABEL_19;
          }
        }

        *v15 = 0;
        v17 = (v9 - 2) >> 1;
        v9 -= 2;
LABEL_23:
        if (v9 >= 2)
        {
          v24 = 2 * v17;
          v20 = a1;
          v25 = &a1[2 * v17];
          while (*v20)
          {
            v20 += 2;
            v24 -= 2;
            if (!v24)
            {
              v20 = v25;
              goto LABEL_25;
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        v15 = 0;
        v9 = 1;
      }

      v20 = a1;
LABEL_25:
      v19 = v20 - a1;
      goto LABEL_26;
    }

    v16 = 0;
    while (1)
    {
      if (!a1[v16])
      {
LABEL_14:
        v15 = 0;
        goto LABEL_21;
      }

      if (a1[v16] == a5)
      {
        break;
      }

      if (v9 == ++v16)
      {
        goto LABEL_14;
      }
    }

    --v9;
    v15 = &a1[v16];
    a1[v16] = 0;
    a1 = __s1;
LABEL_21:
    v19 = strnlen(a1, v9);
LABEL_26:
    v28 = v19;
    v21 = smb_convert_from_network(&__s1, &v28, &v30, &v29, a6, a7);
    if (v21)
    {
      break;
    }

    if (v15)
    {
      if (a7)
      {
        *v15++ = a5;
      }

      else
      {
        *v15 = a5;
      }

      __s1 = v15 + 1;
      if (!v29)
      {
        return 7;
      }

      v22 = v28;
      v11 = v29 - 1;
      v23 = v30;
      --v29;
      ++v30;
      *v23 = 47;
      a1 = __s1;
    }

    else
    {
      a1 = 0;
      __s1 = 0;
      v22 = v28;
      v11 = v29;
    }

    if (a1)
    {
      if (v11)
      {
        v9 = v9 - v19 + v22;
        if (v9)
        {
          continue;
        }
      }
    }

    v8 = *a4;
    goto LABEL_47;
  }

  v26 = v21;
  if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb_convert_network_to_path_cold_1();
  }

  return v26;
}

uint64_t smb_convert_from_network(const UInt8 **a1, unint64_t *a2, UInt8 **a3, CFIndex *a4, char a5, int a6)
{
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_10();
    }

    return 22;
  }

  v7 = *a1;
  if (!*a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_9();
    }

    return 22;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_8();
    }

    return 22;
  }

  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_7();
    }

    return 22;
  }

  v10 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((a5 & 0x20) != 0)
  {
    v12 = 0;
    do
    {
      v13 = *&v7[v12];
      if ((v13 & 0xFFC0) == 0xF000 && (v13 & 0x3Fu) <= 0x29)
      {
        v13 = sfm2mac[v13 & 0x3F];
      }

      *&v7[v12] = v13;
      v12 += 2;
    }

    while (v12 < v10);
  }

  v14 = *a4;
  maxBufLen = 0;
  v15 = *a3;
  v16 = *MEMORY[0x277CBECE8];
  v17 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v10, 0x14000100u, 0);
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_6();
    }

    return 22;
  }

  v18 = v17;
  MutableCopy = CFStringCreateMutableCopy(v16, 0, v17);
  if (!MutableCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_5();
    }

    CFRelease(v18);
    return 22;
  }

  v20 = MutableCopy;
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  Length = CFStringGetLength(v20);
  v30.location = 0;
  v30.length = Length;
  v28 = v14;
  if (!CFStringGetBytes(v20, v30, 0x8000100u, 0, 0, 0, 0, &maxBufLen))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_4();
    }

    goto LABEL_38;
  }

  v14 = maxBufLen;
  if (!v15)
  {
    v24 = malloc_type_calloc(maxBufLen, 1uLL, 0x81F6C2FDuLL);
    if (!v24)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb_convert_from_network_cold_3();
      }

      LODWORD(v15) = 0;
      v22 = 12;
      goto LABEL_52;
    }

    v31.location = 0;
    v31.length = Length;
    v25 = v24;
    if (CFStringGetBytes(v20, v31, 0x8000100u, 0, 0, v24, v14, &maxBufLen))
    {
      v26 = v25;
      v22 = 0;
      *a3 = v26;
LABEL_45:
      LODWORD(v15) = 1;
      goto LABEL_53;
    }

LABEL_46:
    LODWORD(v14) = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_from_network_cold_2();
      if (!v15)
      {
        goto LABEL_48;
      }
    }

    else if (!v15)
    {
LABEL_48:
      free(v25);
      goto LABEL_39;
    }

LABEL_38:
    LODWORD(v15) = 0;
LABEL_39:
    v22 = 22;
    goto LABEL_53;
  }

  if (maxBufLen <= v28)
  {
    v32.location = 0;
    v32.length = Length;
    v25 = *a3;
    if (CFStringGetBytes(v20, v32, 0x8000100u, 0, 0, *a3, maxBufLen, &maxBufLen))
    {
      v22 = 0;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb_convert_from_network_cold_1();
  }

  LODWORD(v15) = 0;
  v22 = 34;
LABEL_52:
  LODWORD(v14) = v28;
LABEL_53:
  CFRelease(v18);
  CFRelease(v20);
  if (v15)
  {
    v22 = 0;
    *a1 += v10;
    v27 = v14 | v28 & 0xFFFFFFFF00000000;
    *a3 += v27;
    *a2 -= v10;
    *a4 -= v27;
  }

  return v22;
}

uint64_t smb_convert_path_to_network(char *__s1, size_t __n, UInt8 *a3, unint64_t *a4, __int16 a5, char a6, int a7)
{
  v31 = a3;
  v32 = __s1;
  v8 = *a4;
  v29 = *a4;
  v30 = 0;
  if (a7)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (__s1)
  {
    v10 = __n;
    if (v8)
    {
      v11 = __n == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v8;
    if (!v11)
    {
      v16 = __s1;
      while (1)
      {
        v17 = 0;
        while (1)
        {
          if (!v16[v17])
          {
LABEL_14:
            v18 = 0;
            v19 = 1;
            goto LABEL_16;
          }

          if (v16[v17] == 47)
          {
            break;
          }

          if (v10 == ++v17)
          {
            goto LABEL_14;
          }
        }

        v19 = 0;
        --v10;
        v18 = &v16[v17];
        v16[v17] = 0;
        v16 = v32;
LABEL_16:
        v20 = strnlen(v16, v10);
        v21 = v20;
        v30 = v20;
        if (v20 == 2)
        {
          if (*v16 != 46)
          {
            goto LABEL_23;
          }

          v22 = v16[1];
        }

        else
        {
          if (v20 != 1)
          {
            goto LABEL_23;
          }

          v22 = *v16;
        }

        if (v22 == 46)
        {
          v23 = 0;
          goto LABEL_24;
        }

LABEL_23:
        v23 = a6;
LABEL_24:
        result = smb_convert_to_network(&v32, &v30, &v31, &v29, v23, a7);
        if (result)
        {
          return result;
        }

        if (v19)
        {
          v32 = 0;
          v12 = v29;
LABEL_34:
          v8 = *a4;
          break;
        }

        *v18 = 47;
        v25 = v18 + 1;
        v32 = v25;
        v12 = v29 - v9;
        if (v29 < v9)
        {
          return 7;
        }

        v26 = v30;
        v27 = v31;
        v29 -= v9;
        if (a7)
        {
          *v31 = a5;
          v28 = v27 + 2;
          v16 = v25;
        }

        else
        {
          *v31 = a5;
          v28 = v27 + 1;
          v16 = v32;
        }

        v31 = v28;
        if (v16)
        {
          if (v12)
          {
            v10 = v10 - v21 + v26;
            if (v10)
            {
              continue;
            }
          }
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = v8;
  }

  result = 0;
  *a4 = v8 - v12;
  return result;
}

uint64_t smb_convert_to_network(const char **a1, uint64_t *a2, UInt8 **a3, uint64_t *a4, char a5, int a6)
{
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_10();
    }

    return 22;
  }

  v7 = *a1;
  if (!*a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_9();
    }

    return 22;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_8();
    }

    return 22;
  }

  if (!*a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_7();
    }

    return 22;
  }

  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_6();
    }

    return 22;
  }

  v10 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v13 = *a4;
  usedBufLen = 0;
  v14 = *MEMORY[0x277CBECE8];
  v15 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v7, 0x8000100u);
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_5();
    }

    return 22;
  }

  v16 = v15;
  MutableCopy = CFStringCreateMutableCopy(v14, 0, v15);
  if (!MutableCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_4();
    }

    CFRelease(v16);
    return 22;
  }

  v18 = MutableCopy;
  v29 = v13;
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
  Length = CFStringGetLength(v18);
  v31.location = 0;
  v31.length = Length;
  if (CFStringGetBytes(v18, v31, 0x14000100u, 0, 0, 0, 0, &usedBufLen))
  {
    if (usedBufLen > v29)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb_convert_to_network_cold_2();
      }

      v20 = 0;
      v21 = 34;
      goto LABEL_39;
    }

    v32.location = 0;
    v32.length = Length;
    if (CFStringGetBytes(v18, v32, 0x14000100u, 0, 0, *a3, usedBufLen, 0))
    {
      v21 = 0;
      v28 = usedBufLen;
      v20 = 1;
      goto LABEL_40;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb_convert_to_network_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb_convert_to_network_cold_3();
  }

  v20 = 0;
  v21 = 22;
LABEL_39:
  v28 = v29;
LABEL_40:
  CFRelease(v16);
  CFRelease(v18);
  if (v20)
  {
    v23 = v28 | v29 & 0xFFFFFFFF00000000;
    if ((a5 & 0x20) != 0 && v23)
    {
      v24 = *a3;
      v25 = v28 | v29 & 0xFFFFFFFF00000000;
      while (1)
      {
        v26 = *v24;
        if (v26 <= 0x7F)
        {
          break;
        }

LABEL_55:
        v24 += 2;
        v25 -= 2;
        if (!v25)
        {
          goto LABEL_56;
        }
      }

      if (v25 == 2)
      {
        if (v26 == 32)
        {
          LOWORD(v26) = -4056;
          goto LABEL_54;
        }

        if (v26 == 46)
        {
          LOWORD(v26) = -4055;
LABEL_54:
          *v24 = v26;
          goto LABEL_55;
        }
      }

      if (v26 > 0x1F)
      {
        v27 = mac2sfm[v26 - 32];
        if (v26 != v27)
        {
          LOWORD(v26) = v27 | 0xF000;
        }
      }

      else
      {
        LOWORD(v26) = v26 | 0xF000;
      }

      goto LABEL_54;
    }

LABEL_56:
    v21 = 0;
    *a1 += v10;
    *a3 += v23;
    *a2 -= v10;
    *a4 -= v23;
  }

  return v21;
}

const char *smb_get_cstring_len(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = v3;
  *a2 = 0;
  if (v3)
  {
    v5 = [v3 cStringUsingEncoding:4];
    v6 = v5;
    if (v5)
    {
      *a2 = strlen(v5);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t smb_put_dmem(uint64_t a1, const char *a2, uint64_t a3, char a4, int a5, void *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a2;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v10 = 2 * a3 + 2;
  if (v10 < 0x201)
  {
    v11 = v21;
    v10 = 512;
  }

  else
  {
    v11 = malloc_type_malloc(2 * a3 + 2, 0xBA95848DuLL);
    if (!v11)
    {
      v12 = 12;
      goto LABEL_15;
    }
  }

  v17 = v10;
  v18 = v11;
  v12 = smb_convert_to_network(&v20, &v19, &v18, &v17, a4, a5);
  if (!v12)
  {
    v13 = v10 - v17;
    if (a5)
    {
      mb_put_padbyte(a1);
    }

    v14 = mb_put_mem(a1, v11, v13, 0);
    v12 = v14;
    if (a6 && !v14)
    {
      *a6 += v13;
    }
  }

  if (v11 != v21)
  {
    free(v11);
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

_BYTE *smb_strndup(const char *a1, size_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = strnlen(a1, a2);
  v4 = malloc_type_malloc(v3 + 1, 0xDB956598uLL);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, a1, v3);
    v5[v3] = 0;
  }

  return v5;
}

unint64_t smb_time_NT2local(unint64_t result, void *a2)
{
  v2 = 100 * (result % HUNDRED_NSEC_PER_SEC);
  *a2 = result / HUNDRED_NSEC_PER_SEC - DIFF1970TO1601;
  a2[1] = v2;
  return result;
}

uint64_t *smb_time_local2NT(uint64_t *result, uint64_t *a2, int a3)
{
  v3 = *result;
  if (a3)
  {
    v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + DIFF1970TO1601) * HUNDRED_NSEC_PER_SEC;
  }

  else
  {
    v4 = result[1] / 100 + (DIFF1970TO1601 + v3) * HUNDRED_NSEC_PER_SEC;
  }

  *a2 = v4;
  return result;
}

unint64_t smb2_smb_get_alloc_size(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 pd];
  v5 = [v4 getShare:{objc_msgSend(v3, "shareID")}];

  if (v5)
  {
    if (a2)
    {
      [v5 statfs_lock];
      if ([v5 fs_block_size])
      {
        v6 = a2 / [v5 fs_block_size];
        v7 = v6 * [v5 fs_block_size];
        a2 = v7 + [v5 fs_block_size];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_get_alloc_size_cold_1();
        }

        a2 = 0;
      }

      [v5 statfs_unlock];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_get_alloc_size_cold_2(v3);
    }

    a2 = 0;
  }

  return a2;
}

uint64_t smb2_smb_get_client_capabilities(uint64_t a1)
{
  if (a1)
  {
    return (*(a1 + 561) << 27 >> 31) & 0x77;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    smb2_smb_get_client_capabilities_cold_1();
    return 0;
  }

  return result;
}

uint64_t smb2_smb_get_client_dialects(uint64_t a1, int a2, __int16 *a3, __int16 *a4, unint64_t a5)
{
  if (a5 <= 9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_get_client_dialects_cold_3();
    }

    return 12;
  }

  if (a2)
  {
    *a3 = 1;
    v9 = *(a1 + 552);
    if ((v9 & 0x20000) != 0)
    {
      result = 0;
      v11 = 785;
    }

    else if ((v9 & 0x8000) != 0)
    {
      result = 0;
      v11 = 770;
    }

    else if ((v9 & 0x800) != 0)
    {
      result = 0;
      v11 = 768;
    }

    else if ((v9 & 0x4000) != 0)
    {
      result = 0;
      v11 = 528;
    }

    else
    {
      if ((v9 & 0x2000) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_get_client_dialects_cold_1((a1 + 552));
        }

        return 22;
      }

      result = 0;
      v11 = 514;
    }

    *a4 = v11;
    return result;
  }

  v10 = *(a1 + 560) & 0x1002;
  if (v10 > 0xFFF)
  {
    if (v10 == 4096)
    {
      result = 0;
      *a3 = 3;
      *a4 = 50463488;
      a4[2] = 785;
    }

    else
    {
      if ((*(a1 + 555) & 0x40) != 0)
      {
        if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_get_client_dialects_cold_2();
        }

        v12 = 4;
      }

      else
      {
        v12 = 5;
      }

      result = 0;
      *a3 = v12;
      *a4 = 0x302030002100202;
      a4[4] = 785;
    }
  }

  else
  {
    result = 0;
    if (v10)
    {
      *a3 = 2;
      *a4 = 34603522;
    }
  }

  return result;
}

uint64_t smb2_smb_get_client_security_mode(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 561))
    {
      return 2;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_get_client_security_mode_cold_1();
  }

  return 1;
}

void smb2fs_smb_file_id_check(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a2)
  {
    return;
  }

  v5 = *(a1 + 560);
  if ((v5 & 0x10) == 0)
  {
    return;
  }

  if (a3 && a4)
  {
    if (a4 == 4)
    {
      v6 = *a3 - 3014656;
LABEL_9:
      if (v6 == 46)
      {
        return;
      }

      goto LABEL_10;
    }

    if (a4 == 2)
    {
      v6 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (piston_log_level)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2fs_smb_file_id_check_cold_1();
    }

    v5 = *(a1 + 560);
  }

  *(a1 + 560) = v5 & 0xFFFFFFFFFFFFFFEFLL;
}

uint64_t piston_get_create_options(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, __int16 a7, int a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6 == 2;
  if (a8)
  {
    v20 = [v15 getShare:a2];
    v21 = v20;
    if (v20)
    {
      if ([v20 fstype])
      {
        if (([v21 file_system_attrs] & 0x80) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        piston_get_create_options_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_get_create_options_cold_2();
    }

    if (v16)
    {
      v22 = (a7 & 0x1400) == 1024;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 && (v17 | v18) == 0;
    v24 = v19 | 0x200000;
    if (!v23)
    {
      v24 = a6 == 2;
    }

    if (a6 == 5)
    {
      v19 = v24 | 0x200000;
    }

    else
    {
      v19 = v24;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_22:

  return v19;
}

uint64_t smb2fs_fullpath(uint64_t a1, char *a2, size_t a3, const char *a4, uint64_t a5, char a6)
{
  if (a2)
  {
    v12 = 2 * a3 + 2;
    v19 = v12;
    v13 = malloc_type_malloc(v12, 0xE3818D52uLL);
    if (!v13)
    {
      return 12;
    }

    v14 = v13;
    bzero(v13, v12);
    v15 = smb_convert_path_to_network(a2, a3, v14, &v19, 92, a6, 1);
    if (v15)
    {
      v16 = v15;
      free(v14);
      return v16;
    }

    v16 = mb_put_mem(a1, v14, v19, 0);
    free(v14);
    if (v16)
    {
      return v16;
    }
  }

  if (a4 && ((v17 = mb_put_uint16le(a1, 58), v17) || (v17 = smb_put_dmem(a1, a4, a5, a6, 1, 0), v17)))
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

UInt8 *smbfs_ntwrkname_tolocal(const UInt8 *a1, unint64_t *a2, int a3)
{
  v13 = a1;
  if (!a2 || !*a2)
  {
    return 0;
  }

  v5 = 9;
  if (!a3)
  {
    v5 = 3;
  }

  if (*a2 * v5 >= 0x1FFFF)
  {
    v6 = 0x1FFFFLL;
  }

  else
  {
    v6 = *a2 * v5;
  }

  v7 = malloc_type_malloc(v6 + 1, 0xDE379126uLL);
  v10 = v6;
  v11 = *a2;
  v12 = v7;
  smb_convert_from_network(&v13, &v11, &v12, &v10, 32, a3);
  v8 = v6 - v10;
  *a2 = v6 - v10;
  v7[v8] = 0;
  return v7;
}

uint64_t smbfs_ntwrkname_tolocal_buffer(const UInt8 *a1, unint64_t *a2, UInt8 *a3, unint64_t a4, int a5)
{
  v15 = a1;
  if (!a2)
  {
    return 22;
  }

  v6 = *a2;
  if (!*a2)
  {
    return 22;
  }

  if (a5)
  {
    v9 = 9 * v6;
  }

  else
  {
    v9 = 3 * v6;
  }

  if (v9 >= 0x1FFFF)
  {
    v9 = 0x1FFFFLL;
  }

  if (v9 > a4)
  {
    return 28;
  }

  v13 = *a2;
  v14 = a3;
  v12 = a4;
  smb_convert_from_network(&v15, &v13, &v14, &v12, 32, a5);
  result = 0;
  v11 = a4 - v12;
  *a2 = a4 - v12;
  a3[v11] = 0;
  return result;
}

void piston_close_file(void *a1, char a2, _DWORD *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [v7 pd];
  v10 = [v9 sock];

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_close_file_cold_2();
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

    v8[2](v8, 57);
    goto LABEL_8;
  }

  if (smb2_smb_close(v7, a2, a3, 0, v8) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_close_file_cold_1();
  }

LABEL_8:
}

uint64_t smb2_smb_close(void *a1, char a2, _DWORD *a3, SMB_rq **a4, void *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (!a4 && ![v9 fid])
  {
    [v9 fid];
    if (!v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_close_cold_1();
    }
  }

  v12 = [v9 treeID];
  v13 = [v9 onEncryptedShare];
  v14 = [v9 pd];
  v37 = 0;
  v15 = smb2_rq_alloc(6, v12, v13, 0, v14, &v37);
  v16 = v37;

  if (v15)
  {
    if (v16)
    {
      [(SMB_rq *)v16 smb_rq_done];
    }

    if (v10)
    {
      v10[2](v10, v15);
    }
  }

  else
  {
    [(SMB_rq *)v16 smb_rq_set_extflag:8];
    v17 = [(SMB_rq *)v16 smb_rq_getrequest];
    mb_put_uint16le(v17, 24);
    v18 = a2 & 1;
    mb_put_uint16le(v17, v18);
    mb_put_uint32le(v17, 0);
    if (a4)
    {
      mb_put_uint64le(v17, -1);
      mb_put_uint64le(v17, -1);
      smb2_rq_align8(v16);
      [(SMB_rq *)v16 smb_rq_set_srflags:256];
      v19 = v16;
      v15 = 0;
      *a4 = v16;
    }

    else
    {
      mb_put_uint64le(v17, [v9 fid]);
      [v9 fid];
      mb_put_uint64le(v17, v20);
      if (v10)
      {
        v21 = [v9 pd];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __smb2_smb_close_block_invoke;
        v30[3] = &unk_279B4F858;
        v22 = v10;
        v33 = v22;
        v35 = a3;
        v23 = v16;
        v31 = v23;
        v34 = &v38;
        v36 = v18;
        v32 = v9;
        v15 = smb_rq_simple_block(v21, v23, v30);

        if (v15)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_close_cold_2();
          }

          if (v23)
          {
            [(SMB_rq *)v23 smb_rq_done];
          }

          v22[2](v22, v15);
        }
      }

      else
      {
        v24 = [v9 pd];
        v15 = smb_rq_simple(v24, v16);

        *a3 = [(SMB_rq *)v16 sr_ntstatus];
        if (v15)
        {
          v25 = MEMORY[0x277D86220];
          v26 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            smb2_smb_close_cold_3(v42, v15, [(SMB_rq *)v16 sr_ntstatus]);
          }
        }

        else
        {
          v27 = [(SMB_rq *)v16 smb_rq_getreply];
          v39[3] = v27;
          v15 = smb2_smb_parse_close(v27, v18, a3);
          if (!v15)
          {
            [v9 setIsOpen:0];
          }
        }

        [(SMB_rq *)v16 smb_rq_done];
      }
    }
  }

  _Block_object_dispose(&v38, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_264296BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void piston_create_file(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 pd];
  v8 = [v7 sock];

  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_create_file_cold_2();
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

  if (smb2_smb_create(v5, a2, 0, 0, v6) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_create_file_cold_1();
  }

LABEL_8:
}

uint64_t smb2_smb_create(void *a1, uint64_t a2, void *a3, SMB_rq **a4, void *a5)
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v59 = a3;
  v9 = a5;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v68 = 0;
  v10 = [v8 name];
  cstring_len = smb_get_cstring_len(v10, &v68 + 1);

  v12 = [v8 streamName];
  v13 = smb_get_cstring_len(v12, &v68);

  v14 = [v8 treeID];
  v15 = [v8 onEncryptedShare];
  v16 = [v8 pd];
  v67 = 0;
  v17 = smb2_rq_alloc(5, v14, v15, 0, v16, &v67);
  v18 = v67;

  if (!v17)
  {
    [(SMB_rq *)v18 smb_rq_set_extflag:8];
    v19 = [(SMB_rq *)v18 smb_rq_getrequest];
    mb_put_uint16le(v19, 57);
    mb_put_uint8(v19, 0);
    mb_put_uint8(v19, *(a2 + 8));
    mb_put_uint32le(v19, *(a2 + 12));
    mb_put_uint64le(v19, 0);
    mb_put_uint64le(v19, 0);
    mb_put_uint32le(v19, *(a2 + 16));
    mb_put_uint32le(v19, *(a2 + 20));
    mb_put_uint32le(v19, *(a2 + 24));
    mb_put_uint32le(v19, *(a2 + 28));
    mb_put_uint32le(v19, *(a2 + 32));
    mb_put_uint16le(v19, 120);
    v20 = mb_reserve(v19, 2uLL);
    v21 = mb_reserve(v19, 4uLL);
    v57 = mb_reserve(v19, 4uLL);
    v22 = [v8 name];
    if (v22)
    {
    }

    else
    {
      v23 = [v8 streamName];
      v24 = v23 == 0;

      if (v24)
      {
        *v20 = 0;
LABEL_24:
        mb_put_uint16le(v19, 0);
        v25 = *v20;
LABEL_25:
        v27 = [v8 pd];
        v28 = [v27 getSessionPtr];

        v29 = *a2;
        if ((*a2 & 0x4F4) == 0)
        {
          *v57 = 0;
          *v21 = 0;
LABEL_85:
          if (a4)
          {
            smb2_rq_align8(v18);
            [(SMB_rq *)v18 smb_rq_set_srflags:256];
            v47 = v18;
            v17 = 0;
            *a4 = v18;
          }

          else if (v9)
          {
            v48 = [v8 pd];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __smb2_smb_create_block_invoke;
            v60[3] = &unk_279B4F880;
            v49 = v9;
            v64 = v49;
            v66 = a2;
            v50 = v18;
            v61 = v50;
            v65 = &v69;
            v62 = v8;
            v63 = v59;
            v17 = smb_rq_simple_block(v48, v50, v60);

            if (v17)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_smb_create_cold_5();
              }

              if (v50)
              {
                [(SMB_rq *)v50 smb_rq_done];
              }

              (*(v49 + 2))(v49, v17);
            }
          }

          else
          {
            v51 = [v8 pd];
            v17 = smb_rq_simple(v51, v18);

            *(a2 + 52) = [(SMB_rq *)v18 sr_ntstatus];
            if (v17)
            {
              v52 = MEMORY[0x277D86220];
              v53 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                smb2_smb_create_cold_6(v73, v17, [(SMB_rq *)v18 sr_ntstatus]);
              }
            }

            else
            {
              v54 = [(SMB_rq *)v18 smb_rq_getreply];
              v70[3] = v54;
              v17 = smb2_smb_parse_create(v8, v54, a2, v59);
              if (!v17)
              {
                [v8 setFid:{*(a2 + 120), *(a2 + 128)}];
                [v8 setIsOpen:1];
                v17 = 0;
              }
            }

            [(SMB_rq *)v18 smb_rq_done];
          }

          goto LABEL_102;
        }

        if (v25)
        {
          v30 = v25 + 120;
        }

        else
        {
          v30 = 122;
        }

        v31 = v30 & 7;
        if ((v30 & 7) != 0)
        {
          v32 = 8 - v31;
          mb_put_mem(v19, 0, (8 - v31), 3);
          v30 += v32;
          v29 = *a2;
        }

        *v21 = v30;
        if ((v29 & 0x10) != 0)
        {
          v35 = mb_reserve(v19, 4uLL);
          *v35 = 0;
          mb_put_uint16le(v19, 16);
          mb_put_uint16le(v19, 4);
          mb_put_uint16le(v19, 0);
          mb_put_uint16le(v19, 24);
          mb_put_uint32le(v19, 24);
          mb_put_uint32be(v19, 0x4141504Cu);
          mb_put_uint32le(v19, 0);
          mb_put_uint32le(v19, 1);
          mb_put_uint32le(v19, 0);
          mb_put_uint64le(v19, 7);
          mb_put_uint64le(v19, 31);
          v37 = *a2;
          v33 = 48;
          if ((*a2 & 0x20) == 0)
          {
            v36 = 48;
            if ((v37 & 4) != 0)
            {
LABEL_45:
              *v35 = v36;
              v33 += 24;
              goto LABEL_47;
            }

LABEL_40:
            if ((v37 & 0x40) != 0)
            {
LABEL_48:
              *v35 = v36;
LABEL_49:
              if (*(a2 + 233))
              {
                v38 = *(a2 + 244);
                v35 = mb_reserve(v19, 4uLL);
                *v35 = 0;
                mb_put_uint16le(v19, 16);
                mb_put_uint16le(v19, 4);
                mb_put_uint16le(v19, 0);
                mb_put_uint16le(v19, 24);
                mb_put_uint32le(v19, 32);
                mb_put_uint32be(v19, 0x44483251u);
                mb_put_uint32le(v19, 0);
                mb_put_uint32le(v19, v38);
                if ((*(a2 + 232) & 0x20) != 0)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    smb2_smb_create_cold_2();
                  }

                  v39 = 2;
                }

                else
                {
                  v39 = 0;
                }

                mb_put_uint32le(v19, v39);
                mb_put_uint64le(v19, 0);
                mb_put_mem(v19, (a2 + 200), 0x10uLL, 0);
                v33 += 56;
                *(a2 + 232) |= 0x100uLL;
                v36 = 56;
              }

              else
              {
                v35 = mb_reserve(v19, 4uLL);
                *v35 = 0;
                mb_put_uint16le(v19, 16);
                mb_put_uint16le(v19, 4);
                mb_put_uint16le(v19, 0);
                mb_put_uint16le(v19, 24);
                mb_put_uint32le(v19, 16);
                mb_put_uint32be(v19, 0x44486E51u);
                mb_put_uint32le(v19, 0);
                mb_put_uint64le(v19, 0);
                mb_put_uint64le(v19, 0);
                v33 += 40;
                v36 = 40;
              }
            }

LABEL_57:
            if ((*a2 & 0x80) == 0)
            {
              v34 = v28;
              goto LABEL_68;
            }

            *v35 = v36;
LABEL_60:
            v40 = *(a2 + 232);
            v35 = mb_reserve(v19, 4uLL);
            *v35 = 0;
            mb_put_uint16le(v19, 16);
            mb_put_uint16le(v19, 4);
            mb_put_uint16le(v19, 0);
            mb_put_uint16le(v19, 24);
            if ((v40 & 0x100) != 0)
            {
              mb_put_uint32le(v19, 36);
              mb_put_uint32be(v19, 0x44483243u);
              mb_put_uint32le(v19, 0);
              mb_put_uint64le(v19, *(a2 + 216));
              mb_put_uint64le(v19, *(a2 + 224));
              mb_put_mem(v19, (a2 + 200), 0x10uLL, 0);
              if ((*(a2 + 232) & 0x40) != 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2_smb_create_cold_3();
                }

                v41 = 2;
              }

              else
              {
                v41 = 0;
              }

              mb_put_uint32le(v19, v41);
              mb_put_uint32le(v19, 0);
              v34 = v28;
              v33 += 64;
              v36 = 64;
            }

            else
            {
              mb_put_uint32le(v19, 16);
              mb_put_uint32be(v19, 0x44486E43u);
              mb_put_uint32le(v19, 0);
              mb_put_uint64le(v19, *(a2 + 216));
              mb_put_uint64le(v19, *(a2 + 224));
              v34 = v28;
              v33 += 40;
              v36 = 40;
            }

            goto LABEL_68;
          }

          *(a2 + 144) = 2;
          *v35 = 48;
          v33 = 88;
        }

        else
        {
          if ((v29 & 0x20) == 0)
          {
            if ((v29 & 4) == 0)
            {
              v33 = 0;
              if ((v29 & 0x40) == 0)
              {
                if ((v29 & 0x80) == 0)
                {
                  v34 = v28;
                  v35 = 0;
                  v36 = 0;
LABEL_68:
                  v42 = *a2;
                  if ((*a2 & 0x4C0) != 0)
                  {
                    if ((*(v34 + 553) & 0x288) != 0 && (*(a2 + 232) & 0x60) != 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        smb2_smb_create_cold_4();
                      }
                    }

                    else
                    {
                      v43 = 240;
                      if ((v42 & 0x80) == 0)
                      {
                        v43 = 168;
                      }

                      v44 = *(a2 + v43);
                      if (v35)
                      {
                        *v35 = v36;
                      }

                      v45 = *(a2 + 232);
                      *mb_reserve(v19, 4uLL) = 0;
                      mb_put_uint16le(v19, 16);
                      mb_put_uint16le(v19, 4);
                      mb_put_uint16le(v19, 0);
                      mb_put_uint16le(v19, 24);
                      if (v45 & 0x100 | v42 & 0x400)
                      {
                        mb_put_uint32le(v19, 52);
                        mb_put_uint32be(v19, 0x52714C73u);
                        mb_put_uint32le(v19, 0);
                        mb_put_uint64le(v19, *(a2 + 152));
                        mb_put_uint64le(v19, *(a2 + 160));
                        mb_put_uint32le(v19, v44);
                        if (*(a2 + 176) && *(a2 + 184))
                        {
                          mb_put_uint32le(v19, 4);
                          mb_put_uint64le(v19, 0);
                          mb_put_uint64le(v19, *(a2 + 176));
                          v46 = *(a2 + 184);
                        }

                        else
                        {
                          mb_put_uint32le(v19, 0);
                          mb_put_uint64le(v19, 0);
                          mb_put_uint64le(v19, 0);
                          v46 = 0;
                        }

                        mb_put_uint64le(v19, v46);
                        *(a2 + 192) = 0;
                        mb_put_uint16le(v19, 0);
                        mb_put_uint16le(v19, 0);
                        mb_put_uint32le(v19, 0);
                        v33 += 80;
                        *(a2 + 232) |= 0x200uLL;
                      }

                      else
                      {
                        mb_put_uint32le(v19, 32);
                        mb_put_uint32be(v19, 0x52714C73u);
                        mb_put_uint32le(v19, 0);
                        mb_put_uint64le(v19, *(a2 + 152));
                        mb_put_uint64le(v19, *(a2 + 160));
                        mb_put_uint32le(v19, v44);
                        mb_put_uint32le(v19, 0);
                        mb_put_uint64le(v19, 0);
                        v33 += 56;
                      }
                    }
                  }

                  *v57 = v33;
                  goto LABEL_85;
                }

                goto LABEL_60;
              }

              goto LABEL_49;
            }

            v36 = 0;
            v33 = 24;
LABEL_47:
            v35 = mb_reserve(v19, 4uLL);
            *v35 = 0;
            mb_put_uint16le(v19, 16);
            mb_put_uint16le(v19, 4);
            mb_put_uint16le(v19, 0);
            mb_put_uint16le(v19, 0);
            mb_put_uint32le(v19, 0);
            mb_put_uint32be(v19, 0x4D784163u);
            mb_put_uint32le(v19, 0);
            if ((*a2 & 0x40) != 0)
            {
              goto LABEL_48;
            }

            goto LABEL_57;
          }

          *(a2 + 144) = 2;
          v33 = 40;
        }

        v35 = mb_reserve(v19, 4uLL);
        *v35 = 0;
        mb_put_uint16le(v19, 16);
        mb_put_uint16le(v19, 4);
        mb_put_uint16le(v19, 0);
        mb_put_uint16le(v19, 24);
        mb_put_uint32le(v19, 16);
        mb_put_uint32be(v19, 0x4141504Cu);
        mb_put_uint32le(v19, 0);
        mb_put_uint32le(v19, 2);
        mb_put_uint32le(v19, 0);
        mb_put_uint64le(v19, *(a2 + 136));
        v37 = *a2;
        v36 = 40;
        if ((*a2 & 4) != 0)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }
    }

    if ((*a2 & 8) != 0)
    {
      mb_put_mem(v19, cstring_len, HIDWORD(v68), 0);
      v25 = WORD2(v68);
      *v20 = WORD2(v68);
      if ((*(a2 + 1) & 8) == 0)
      {
        goto LABEL_21;
      }

      v26 = [(SMB_rq *)v18 sr_flagsp];
      *v26 |= 0x10000000u;
    }

    else
    {
      smb2_rq_bstart(v18, v20);
      v17 = smb2fs_fullpath(v19, cstring_len, HIDWORD(v68), v13, v68, 32);
      if (v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_create_cold_1();
        }

        if (v18)
        {
          [(SMB_rq *)v18 smb_rq_done];
        }

        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_102;
      }

      smb_rq_bend(v18);
    }

    v25 = *v20;
LABEL_21:
    if (v25)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v18)
  {
    [(SMB_rq *)v18 smb_rq_done];
  }

  if (v9)
  {
LABEL_5:
    (*(v9 + 2))(v9, v17);
  }

LABEL_102:
  _Block_object_dispose(&v69, 8);

  v55 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_2642979EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void piston_resolveID(void *a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = [v9 sock];

  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      piston_resolveID_cold_2();
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
      goto LABEL_10;
    }

    v11[2](v11, 57);
    goto LABEL_10;
  }

  if (*([v9 getSessionPtr] + 592))
  {
    v13 = [v9 sock];
    v14 = [v13 signing_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __piston_resolveID_block_invoke;
    block[3] = &unk_279B4F830;
    v20 = a2;
    v16 = v9;
    v19 = a3;
    v17 = v10;
    v18 = v11;
    dispatch_async(v14, block);

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    piston_resolveID_cold_1();
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (v11)
  {
LABEL_5:
    v11[2](v11, 45);
  }

LABEL_10:
}

void __piston_resolveID_block_invoke(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = [*(a1 + 32) getShare:*(a1 + 64)];
  if (v3)
  {
    v4 = [[SMBNode alloc] init:*(a1 + 32)];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 commonInit:*(a1 + 32) onShareID:*(a1 + 64)];
      if (v6)
      {
        fid = v6;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __piston_resolveID_block_invoke_cold_1();
        }
      }

      else
      {
        fid = smb2_smb_create_fid(v5, 0, 0, 1048705, 2, 7, 1, 33, *(a1 + 56), *(a1 + 40), 0);
        if (fid)
        {
          if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __piston_resolveID_block_invoke_cold_2();
          }
        }

        else if (smb2_smb_close_fid(v5, 0, 0) && piston_log_level)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __piston_resolveID_block_invoke_cold_3();
          }

          fid = 0;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __piston_resolveID_block_invoke_cold_4();
      }

      v5 = 0;
      fid = 12;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __piston_resolveID_block_invoke_cold_5(v2);
    }

    v5 = 0;
    fid = 22;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, fid);
  }
}

uint64_t smb2_smb_create_fid(void *a1, void *a2, void *a3, int a4, int a5, int a6, int a7, uint64_t a8, _OWORD *a9, void *a10, SMB_rq **a11)
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v18 = a3;
  v19 = a10;
  v29 = 0;
  memset(&v28[1], 0, 224);
  if (a9)
  {
    v20 = a9;
  }

  else
  {
    v20 = v28;
  }

  v28[0] = 0uLL;
  v21 = a2;
  v22 = [v17 pd];
  options = piston_get_create_options(v22, [v17 shareID], v21, 0, 0, a5, 0, 0);

  *v20 = a8;
  *(v20 + 8) = 0;
  *(v20 + 3) = 2;
  *(v20 + 4) = a4;
  *(v20 + 5) = 128;
  *(v20 + 6) = a6;
  *(v20 + 7) = a7;
  *(v20 + 8) = options;
  [v17 setName:v21];

  if (v18)
  {
    [v17 setStreamName:v18];
  }

  v24 = smb2_smb_create(v17, v20, v19, a11, 0);
  if (v24 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_create_fid_cold_1(v20 + 13);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t smb2_smb_close_fid(void *a1, unsigned int *a2, SMB_rq **a3)
{
  memset(v7, 0, sizeof(v7));
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v7;
  }

  v4 = smb2_smb_close(a1, 0, v3, a3, 0);
  if (v4)
  {
    v5 = piston_log_level == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    smb2_smb_close_fid_cold_1(v3);
  }

  return v4;
}

uint64_t smb2_smb_parse_close(void *a1, char a2, uint64_t a3)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  result = md_get_uint16le(a1, &v9);
  if (!result)
  {
    if (v9 == 60)
    {
      result = md_get_uint16le(a1, &v11);
      if (!result)
      {
        if (a2)
        {
          if ((v11 & 1) == 0)
          {
            result = 0;
            *(a3 + 56) = 0;
            *(a3 + 40) = 0u;
            *(a3 + 24) = 0u;
            *(a3 + 8) = 0u;
            return result;
          }
        }

        else if ((v11 & 1) == 0)
        {
          return 0;
        }

        result = md_get_uint32le(a1, &v10);
        if (!result)
        {
          result = md_get_uint64le(a1, &v7);
          if (!result)
          {
            *(a3 + 8) = v7;
            result = md_get_uint64le(a1, &v7);
            if (!result)
            {
              *(a3 + 16) = v7;
              result = md_get_uint64le(a1, &v7);
              if (!result)
              {
                *(a3 + 24) = v7;
                result = md_get_uint64le(a1, &v7);
                if (!result)
                {
                  *(a3 + 32) = v7;
                  result = md_get_uint64le(a1, &v7);
                  if (!result)
                  {
                    *(a3 + 40) = v7;
                    result = md_get_uint64le(a1, &v7);
                    if (!result)
                    {
                      *(a3 + 48) = v7;
                      result = md_get_uint32le(a1, &v8);
                      if (!result)
                      {
                        *(a3 + 56) = v8;
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

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        smb2_smb_parse_close_cold_1(&v9);
      }

      return 72;
    }
  }

  return result;
}

void __smb2_smb_close_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x266734A50](*(a1 + 48));
  v5 = (a1 + 32);
  **(a1 + 64) = [*(a1 + 32) sr_ntstatus];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_close_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    a2 = smb2_smb_parse_close(*(*(*(a1 + 56) + 8) + 24), *(a1 + 72), *(a1 + 64));
    if (!a2)
    {
      [*(a1 + 40) setIsOpen:0];
    }
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

uint64_t smb2_smb_parse_create(void *a1, __n128 *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0uLL;
  v9 = [v7 pd];
  v10 = [v9 getSessionPtr];

  uint16le = md_get_uint16le(a2, &v20);
  if (uint16le)
  {
LABEL_2:
    v12 = uint16le;
    goto LABEL_3;
  }

  if (v20 == 89)
  {
    uint16le = md_get_uint8(a2, &v19);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 56) = v19;
    uint16le = md_get_uint8(a2, &v19);
    if (uint16le)
    {
      goto LABEL_2;
    }

    if ((*(v10 + 553) & 0x288) != 0)
    {
      *(a3 + 57) = v19;
    }

    uint16le = md_get_uint32le(a2, &v18);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 60) = v18;
    uint16le = md_get_uint64le(a2, &v17);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 64) = v17;
    uint16le = md_get_uint64le(a2, &v17);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 72) = v17;
    uint16le = md_get_uint64le(a2, &v17);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 80) = v17;
    uint16le = md_get_uint64le(a2, &v17);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 88) = v17;
    uint16le = md_get_uint64le(a2, &v17);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 96) = v17;
    uint16le = md_get_uint64le(a2, &v17);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 104) = v17;
    uint16le = md_get_uint32le(a2, &v18);
    if (uint16le)
    {
      goto LABEL_2;
    }

    *(a3 + 112) = v18;
    uint16le = md_get_uint32le(a2, &v18);
    if (uint16le)
    {
      goto LABEL_2;
    }

    uint16le = md_get_uint64le(a2, &v15);
    if (uint16le)
    {
      goto LABEL_2;
    }

    uint16le = md_get_uint64le(a2, &v15 + 1);
    if (uint16le)
    {
      goto LABEL_2;
    }

    uint16le = md_get_uint32le(a2, &v16 + 1);
    if (uint16le)
    {
      goto LABEL_2;
    }

    uint16le = md_get_uint32le(a2, &v16);
    if (uint16le)
    {
      goto LABEL_2;
    }

    if (v16)
    {
      uint16le = smb2_smb_parse_create_contexts(v7, a2, &v16 + 1, a3, v8);
      if (uint16le)
      {
        goto LABEL_2;
      }
    }

    if ((*a3 & 0x10) != 0)
    {
      v14 = *(v10 + 560);
      if ((v14 & 0x40) == 0)
      {
        if (piston_log_level)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_create_cold_2();
          }

          v14 = *(v10 + 560);
        }

        *(v10 + 560) = v14 | 0x80;
      }
    }

    v12 = 0;
    *(a3 + 120) = v15;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      smb2_smb_parse_create_cold_1(&v20);
    }

    v12 = 72;
  }

LABEL_3:

  return v12;
}

void __smb2_smb_create_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x266734A50](*(a1 + 56));
  v5 = (a1 + 32);
  *(*(a1 + 72) + 52) = [*(a1 + 32) sr_ntstatus];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __smb2_smb_create_block_invoke_cold_1((a1 + 32));
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) smb_rq_getreply];
    a2 = smb2_smb_parse_create(*(a1 + 40), *(*(*(a1 + 64) + 8) + 24), *(a1 + 72), *(a1 + 48));
    if (!a2)
    {
      [*(a1 + 40) setFid:{*(*(a1 + 72) + 120), *(*(a1 + 72) + 128)}];
      [*(a1 + 40) setIsOpen:1];
    }
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

uint64_t smb2_smb_parse_create_contexts(void *a1, __n128 *a2, _DWORD *a3, uint64_t a4, void *a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a5;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  __s = 0;
  v58 = 0;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v11 = [v9 pd];
  v12 = [v11 getSessionPtr];

  if (!*a3 || (v13 = (*a3 - 152), *a3 = v13, v14 = md_get_mem(a2, 0, v13, 0), !v14))
  {
    v16 = 0;
    v17 = MEMORY[0x277D86220];
    while (1)
    {
      md_shadow_copy(a2, v55);
      uint32le = md_get_uint32le(v55, &v64);
      if (uint32le || (uint32le = md_get_uint16le(v55, &v63 + 1), uint32le) || (uint32le = md_get_uint16le(v55, &v63), uint32le))
      {
LABEL_142:
        mem = uint32le;
        goto LABEL_143;
      }

      if (v63 != 4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          smb2_smb_parse_create_contexts_cold_1(&v63);
        }

        goto LABEL_146;
      }

      uint32le = md_get_uint16le(v55, 0);
      if (uint32le)
      {
        goto LABEL_142;
      }

      uint32le = md_get_uint16le(v55, &v62);
      if (uint32le)
      {
        goto LABEL_142;
      }

      uint32le = md_get_uint32le(v55, &v61);
      if (uint32le)
      {
        goto LABEL_142;
      }

      uint32le = md_get_uint32be(v55, &v60 + 1);
      if (uint32le)
      {
        goto LABEL_142;
      }

      uint32le = md_get_uint32le(v55, 0);
      if (uint32le)
      {
        goto LABEL_142;
      }

      if (SHIDWORD(v60) <= 1145597506)
      {
        switch(HIDWORD(v60))
        {
          case 0x4141504C:
            if (v61 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_8(&v61);
              }

              goto LABEL_146;
            }

            uint32le = md_get_uint32le(v55, &v59);
            if (uint32le)
            {
              goto LABEL_142;
            }

            uint32le = md_get_uint32le(v55, 0);
            if (uint32le)
            {
              goto LABEL_142;
            }

            if (v59 == 2)
            {
              if (!v10)
              {
                if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2_smb_parse_create_contexts_cold_3();
                }

                goto LABEL_146;
              }

              if (v61 <= 0xF)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2_smb_parse_create_contexts_cold_2(&v61);
                }

                goto LABEL_146;
              }

              uint32le = md_get_uint32le(v55, &v56);
              if (uint32le)
              {
                goto LABEL_142;
              }

              *(a4 + 144) = piston_ntstatus_to_errno(v56);
              smb2_smb_parse_create_str(v55, 1, &__s);
              if (__s)
              {
                v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:__s encoding:4];

                [v10 setString:v39];
                free(__s);
                __s = 0;
                v16 = v39;
              }
            }

            else
            {
              if (v59 != 1)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2_smb_parse_create_contexts_cold_7(&v59);
                }

                goto LABEL_146;
              }

              if (v61 <= 0xF)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2_smb_parse_create_contexts_cold_6(&v61);
                }

                goto LABEL_146;
              }

              uint32le = md_get_uint64le(v55, &v58);
              if (uint32le)
              {
                goto LABEL_142;
              }

              if (v58)
              {
                v32 = 24;
              }

              else
              {
                v32 = 16;
              }

              if (v61 < v32 + ((4 * v58) & 8) + ((2 * v58) & 8u))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  smb2_smb_parse_create_contexts_cold_5(&v61);
                }

                goto LABEL_146;
              }

              if (v58)
              {
                uint32le = md_get_uint64le(v55, v12 + 73);
                if (uint32le)
                {
                  goto LABEL_142;
                }
              }

              if ((v12[73] & 2) != 0)
              {
                v12[70] |= 0x800uLL;
              }

              v33 = v58;
              if ((v58 & 2) != 0)
              {
                uint32le = md_get_uint64le(v55, v12 + 74);
                if (uint32le)
                {
                  goto LABEL_142;
                }

                v33 = v58;
              }

              if ((v33 & 4) != 0)
              {
                uint32le = md_get_uint32le(v55, 0);
                if (uint32le)
                {
                  goto LABEL_142;
                }

                smb2_smb_parse_create_str(v55, 0, &__s);
                v34 = v12[75];
                if (v34)
                {
                  free(v34);
                }

                v35 = __s;
                if (__s && strlen(__s) >= 0x1FE)
                {
                  __s[509] = 0;
                }

                v12[75] = v35;
              }

              if (piston_log_level && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_4(v65, &v66, v36);
              }

              v12[70] |= 0x40uLL;
            }

            break;
          case 0x44483243:
            break;
          case 0x44483251:
            if (v61 != 8)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_9(&v61);
              }

              goto LABEL_146;
            }

            uint32le = md_get_uint32le(v55, &v50 + 1);
            if (uint32le)
            {
              goto LABEL_142;
            }

            v23 = *(a4 + 244);
            v24 = HIDWORD(v50);
            if (v23 && v23 != HIDWORD(v50))
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v45 = *(a4 + 244);
                *buf = 136315650;
                v82 = "smb2_smb_parse_create_contexts";
                v83 = 1024;
                *v84 = HIDWORD(v50);
                *&v84[4] = 1024;
                *&v84[6] = v45;
                _os_log_error_impl(&dword_264287000, v17, OS_LOG_TYPE_ERROR, "%s: Granted Dur Handle V2 timeout %d does not match requested %d \n", buf, 0x18u);
              }

              v24 = HIDWORD(v50);
            }

            *(a4 + 244) = v24;
            uint32le = md_get_uint32le(v55, &v52);
            if (uint32le)
            {
              goto LABEL_142;
            }

            v25 = *(a4 + 232);
            if ((v25 & 0x100) == 0)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_10(v73, &v74, v26);
              }

              v25 = *(a4 + 232) | 0x800;
              *(a4 + 232) = v25;
            }

            v27 = v52;
            if ((v25 & 0x20) != 0)
            {
              v37 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
              if ((v27 & 2) != 0)
              {
                if (v37)
                {
                  smb2_smb_parse_create_contexts_cold_11(v71, &v72, v38);
                }

                v22 = *(a4 + 232) & 0xFFFFFFFFFFFFFF5FLL | 0x80;
                goto LABEL_137;
              }

              if (v37)
              {
                smb2_smb_parse_create_contexts_cold_12(v69, &v70, v38);
              }
            }

            else
            {
              if ((v52 & 2) == 0)
              {
                v21 = v25 & 0xFFFFFFFFFFFFFFDALL;
LABEL_25:
                v22 = v21 | 4;
LABEL_137:
                *(a4 + 232) = v22;
                break;
              }

              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_13(v67, &v68, v42);
              }
            }

            break;
          default:
            goto LABEL_148;
        }
      }

      else
      {
        if (SHIDWORD(v60) <= 1299726690)
        {
          if (HIDWORD(v60) == 1145597507)
          {
            goto LABEL_138;
          }

          if (HIDWORD(v60) != 1145597521)
          {
            goto LABEL_148;
          }

          if (v61 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_smb_parse_create_contexts_cold_14(&v61);
            }

LABEL_146:
            mem = 72;
            goto LABEL_143;
          }

          uint32le = md_get_uint64le(v55, 0);
          if (uint32le)
          {
            goto LABEL_142;
          }

          v19 = *(a4 + 232);
          if ((v19 & 0x100) != 0)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              smb2_smb_parse_create_contexts_cold_15(v75, &v76, v20);
            }

            v19 = *(a4 + 232) | 0x800;
          }

          v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_25;
        }

        if (HIDWORD(v60) == 1383156851)
        {
          if (v61 != 32 && v61 != 52)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              smb2_smb_parse_create_contexts_cold_18(&v61);
            }

            goto LABEL_146;
          }

          uint32le = md_get_uint64le(v55, &v54);
          if (uint32le)
          {
            goto LABEL_142;
          }

          uint32le = md_get_uint64le(v55, &v53);
          if (uint32le)
          {
            goto LABEL_142;
          }

          if (v54 != *(a4 + 152) || v53 != *(a4 + 160))
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v43 = *(a4 + 152);
              v44 = *(a4 + 160);
              *buf = 136316162;
              v82 = "smb2_smb_parse_create_contexts";
              v83 = 2048;
              *v84 = v43;
              *&v84[8] = 2048;
              v85 = v44;
              v86 = 2048;
              v87 = v54;
              v88 = 2048;
              v89 = v53;
              _os_log_error_impl(&dword_264287000, v17, OS_LOG_TYPE_ERROR, "%s: Lease key mismatch: 0x%llx:0x%llx != 0x%llx:0x%llx\n", buf, 0x34u);
            }

            v28 = v53;
            *(a4 + 152) = v54;
            *(a4 + 160) = v28;
          }

          uint32le = md_get_uint32le(v55, &v50);
          if (uint32le)
          {
            goto LABEL_142;
          }

          uint32le = md_get_uint32le(v55, &v52);
          if (uint32le)
          {
            goto LABEL_142;
          }

          if ((v52 & 4) != 0)
          {
            *(a4 + 232) |= 0x10uLL;
          }

          uint32le = md_get_uint64le(v55, 0);
          if (uint32le)
          {
            goto LABEL_142;
          }

          if (v61 == 52)
          {
            uint32le = md_get_uint64le(v55, &v54);
            if (uint32le)
            {
              goto LABEL_142;
            }

            uint32le = md_get_uint64le(v55, &v53);
            if (uint32le)
            {
              goto LABEL_142;
            }

            if ((*(a4 + 232) & 0x10) != 0 && (v54 != *(a4 + 176) || v53 != *(a4 + 184)))
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v46 = *(a4 + 176);
                v47 = *(a4 + 184);
                *buf = 136316162;
                v82 = "smb2_smb_parse_create_contexts";
                v83 = 2048;
                *v84 = v46;
                *&v84[8] = 2048;
                v85 = v47;
                v86 = 2048;
                v87 = v54;
                v88 = 2048;
                v89 = v53;
                _os_log_error_impl(&dword_264287000, v17, OS_LOG_TYPE_ERROR, "%s: Parent Lease key mismatch: 0x%llx:0x%llx != 0x%llx:0x%llx\n", buf, 0x34u);
              }

              v29 = v53;
              *(a4 + 176) = v54;
              *(a4 + 184) = v29;
            }

            uint32le = md_get_uint16le(v55, &v51);
            if (uint32le)
            {
              goto LABEL_142;
            }

            *(a4 + 192) = v51;
            *(a4 + 240) = v50;
            uint32le = md_get_uint16le(v55, 0);
            if (uint32le)
            {
              goto LABEL_142;
            }

            v30 = *(a4 + 232);
            if ((v30 & 0x200) == 0)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_17(v79, &v80, v31);
              }

              v30 = *(a4 + 232) | 0x800;
            }

            if ((v30 & 0x40) != 0)
            {
              v30 = v30 & 0xFFFFFFFFFFFFFF3FLL | 0x80;
            }

            else if ((v30 & 2) != 0)
            {
              v30 = v30 & 0xFFFFFFFFFFFFFFB9 | 4;
            }
          }

          else
          {
            *(a4 + 240) = v50;
            v30 = *(a4 + 232);
            if ((v30 & 0x200) != 0)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                smb2_smb_parse_create_contexts_cold_16(v77, &v78, v40);
              }

              v30 = *(a4 + 232) | 0x800;
            }
          }

          v22 = v30 | 8;
          goto LABEL_137;
        }

        if (HIDWORD(v60) != 1299726691)
        {
LABEL_148:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_create_contexts_cold_20(&v60 + 1);
          }

          goto LABEL_146;
        }

        if (v61 != 8)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            smb2_smb_parse_create_contexts_cold_19(&v61);
          }

          goto LABEL_146;
        }

        uint32le = md_get_uint32le(v55, &v60);
        if (uint32le)
        {
          goto LABEL_142;
        }

        if (v60)
        {
          if (piston_log_level && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v82 = "smb2_smb_parse_create_contexts";
            v83 = 1024;
            *v84 = v60;
            _os_log_error_impl(&dword_264287000, v17, OS_LOG_TYPE_ERROR, "%s: MxAc Query Status failed: 0x%x\n", buf, 0x12u);
          }
        }

        else
        {
          uint32le = md_get_uint32le(v55, &v59 + 1);
          if (uint32le)
          {
            goto LABEL_142;
          }

          v41 = HIDWORD(v59);
          if (*(a4 + 1))
          {
            v41 = HIDWORD(v59) | 0x10000;
            HIDWORD(v59) |= 0x10000u;
          }

          *(a4 + 116) = v41;
        }
      }

LABEL_138:
      if (!v64)
      {
        mem = 0;
        goto LABEL_143;
      }

      mem = md_get_mem(a2, 0, v64, 0);
      if (mem || !v64)
      {
        goto LABEL_143;
      }
    }
  }

  mem = v14;
  v16 = 0;
LABEL_143:

  v48 = *MEMORY[0x277D85DE8];
  return mem;
}
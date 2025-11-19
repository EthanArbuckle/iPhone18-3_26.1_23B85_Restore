@interface SMBDirEnumerator
- (id)init:(id)a3 onShareID:(unsigned int)a4 dirName:(id)a5 lookUpName:(id)a6 searchFlags:(unsigned int)a7 outParameters:(smb_dir_enum_out *)a8 callBack:(id)a9;
- (int)cleanup;
- (int)commonInit:(id)a3 onShareID:(unsigned int)a4 dirName:(id)a5 lookUpName:(id)a6 searchFlags:(unsigned int)a7 outParameters:(smb_dir_enum_out *)a8;
- (int)smb2_smb_parse_query_dir_both_dir_info:(mdchain *)a3;
- (int)smb2_smb_query_dir:(unsigned int *)a3;
- (int)smb2fs_smb_findnext:(unsigned int *)a3;
- (void)cleanup;
- (void)close:(smb_dir_enum_out *)a3 callBack:(id)a4;
- (void)dealloc;
- (void)nextEntry:(id)a3 outParameters:(smb_dir_enum_out *)a4 callBack:(id)a5;
@end

@implementation SMBDirEnumerator

- (int)cleanup
{
  f_state = self->f_state;
  if (f_state)
  {
    pthread_mutex_lock(&self->f_dir_lock);
    f_state = self->f_state;
  }

  self->f_state = f_state | 2;
  f_create_rqp = self->f_create_rqp;
  if (f_create_rqp)
  {
    [(SMB_rq *)f_create_rqp smb_rq_done];
    v5 = self->f_create_rqp;
    self->f_create_rqp = 0;
  }

  f_query_dir_rqp = self->f_query_dir_rqp;
  if (f_query_dir_rqp)
  {
    [(SMB_rq *)f_query_dir_rqp smb_rq_done];
    v7 = self->f_query_dir_rqp;
    self->f_query_dir_rqp = 0;
  }

  if (self->f_need_close != 1)
  {
    LODWORD(v9) = 0;
    goto LABEL_18;
  }

  pd = self->pd;
  if (!pd)
  {
LABEL_16:
    LODWORD(v9) = 0;
    goto LABEL_17;
  }

  v9 = [(SMBPiston *)pd sock];
  if (v9)
  {
    v10 = [(SMBPiston *)self->pd sock];
    v11 = [v10 writeEnabled];

    if (v11 == 1)
    {
      LODWORD(v9) = smb2_smb_close_fid(self->f_node, 0, 0);
      if (v9 && piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBDirEnumerator cleanup];
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  self->f_need_close = 0;
LABEL_18:
  self->f_flags = 0;
  if (self->f_state)
  {
    pthread_mutex_unlock(&self->f_dir_lock);
  }

  return v9;
}

- (void)close:(smb_dir_enum_out *)a3 callBack:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  v6 = [(SMBPiston *)self->pd sock];

  if (!v6)
  {
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      [(SMBDirEnumerator *)v9 close:v10 callBack:v11, v12, v13, v14, v15, v16];
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    else if (!v5)
    {
      goto LABEL_6;
    }

    v5[2](v5, 57);
    goto LABEL_6;
  }

  v7 = [(SMBPiston *)self->pd sock];
  v8 = [v7 signing_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SMBDirEnumerator_close_callBack___block_invoke;
  block[3] = &unk_279B4F678;
  v18 = v5;
  objc_copyWeak(&v19, &location);
  dispatch_async(v8, block);

  objc_destroyWeak(&v19);
LABEL_6:
  objc_destroyWeak(&location);
}

void __35__SMBDirEnumerator_close_callBack___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x266734A50](*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained cleanup];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v4 = v5;
  }
}

- (void)dealloc
{
  [(SMBDirEnumerator *)self cleanup];
  if (self->f_state)
  {
    pthread_mutex_destroy(&self->f_dir_lock);
    self->f_state &= ~1u;
  }

  v3.receiver = self;
  v3.super_class = SMBDirEnumerator;
  [(SMBDirEnumerator *)&v3 dealloc];
}

- (int)commonInit:(id)a3 onShareID:(unsigned int)a4 dirName:(id)a5 lookUpName:(id)a6 searchFlags:(unsigned int)a7 outParameters:(smb_dir_enum_out *)a8
{
  v9 = a7;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  objc_storeStrong(&self->pd, a3);
  self->f_shareID = a4;
  v18 = pthread_mutex_init(&self->f_dir_lock, 0);
  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBDirEnumerator commonInit:onShareID:dirName:lookUpName:searchFlags:outParameters:];
    }
  }

  else
  {
    v19 = self->f_flags | 1;
    self->f_state = 1;
    self->f_flags = v19;
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    f_createName = self->f_createName;
    self->f_createName = v20;

    if (v9)
    {
      v22 = [(SMBPiston *)self->pd getSessionPtr][80] / 0x60u;
    }

    else
    {
      self->f_flags |= 4u;
      self->f_sfm_conversion = 32;
      LOWORD(v22) = 1;
    }

    self->f_searchCount = v22;
    self->f_infolevel = 37;
    self->f_attrmask = 22;
    objc_storeStrong(&self->f_lookupName, a6);
    bzero(self->f_NetworkNameBuffer, 0x3FCuLL);
    a8->var0 = 0;
  }

  return v18;
}

- (id)init:(id)a3 onShareID:(unsigned int)a4 dirName:(id)a5 lookUpName:(id)a6 searchFlags:(unsigned int)a7 outParameters:(smb_dir_enum_out *)a8 callBack:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v44.receiver = self;
  v44.super_class = SMBDirEnumerator;
  v19 = [(SMBDirEnumerator *)&v44 init];
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = [v15 sock];

  if (!v20)
  {
    v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      [(SMBDirEnumerator *)v25 init:v26 onShareID:v27 dirName:v28 lookUpName:v29 searchFlags:v30 outParameters:v31 callBack:v32];
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    else if (!v18)
    {
LABEL_7:
      v24 = 0;
      goto LABEL_8;
    }

    v18[2](v18, 57);
    goto LABEL_7;
  }

  v34 = [v15 sock];
  v21 = [v34 signing_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SMBDirEnumerator_init_onShareID_dirName_lookUpName_searchFlags_outParameters_callBack___block_invoke;
  block[3] = &unk_279B4F6A0;
  v22 = a8;
  v23 = v19;
  v36 = v23;
  v37 = v15;
  v42 = a4;
  v38 = v16;
  v43 = a7;
  v39 = v17;
  v41 = v22;
  v40 = v18;
  dispatch_async(v21, block);

  v24 = v23;
LABEL_8:

  return v24;
}

uint64_t __89__SMBDirEnumerator_init_onShareID_dirName_lookUpName_searchFlags_outParameters_callBack___block_invoke(uint64_t a1)
{
  [*(a1 + 32) commonInit:*(a1 + 40) onShareID:*(a1 + 80) dirName:*(a1 + 48) lookUpName:*(a1 + 56) searchFlags:*(a1 + 84) outParameters:*(a1 + 72)];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)nextEntry:(id)a3 outParameters:(smb_dir_enum_out *)a4 callBack:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  if (!v8)
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(SMBDirEnumerator *)v14 nextEntry:v15 outParameters:v16 callBack:v17, v18, v19, v20, v21];
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else if (!v9)
    {
      goto LABEL_13;
    }

    v22 = 22;
LABEL_12:
    v9[2](v9, v22);
    goto LABEL_13;
  }

  v10 = [(SMBPiston *)self->pd sock];

  if (!v10)
  {
    v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v23)
    {
      [(SMBDirEnumerator *)v23 nextEntry:v24 outParameters:v25 callBack:v26, v27, v28, v29, v30];
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else if (!v9)
    {
      goto LABEL_13;
    }

    v22 = 57;
    goto LABEL_12;
  }

  pthread_mutex_lock(&self->f_dir_lock);
  f_state = self->f_state;
  if ((f_state & 2) != 0)
  {
    self->f_state = f_state & 0xFFFFFFFD;
  }

  v12 = [(SMBPiston *)self->pd sock];
  v13 = [v12 signing_queue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __53__SMBDirEnumerator_nextEntry_outParameters_callBack___block_invoke;
  v31[3] = &unk_279B4F6C8;
  v31[4] = self;
  objc_copyWeak(v34, &location);
  v32 = v8;
  v34[1] = a4;
  v33 = v9;
  dispatch_async(v13, v31);

  objc_destroyWeak(v34);
LABEL_13:
  objc_destroyWeak(&location);
}

uint64_t __53__SMBDirEnumerator_nextEntry_outParameters_callBack___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v32 = 0;
  v2 = *(a1 + 32);
  while (1)
  {
    v34 = *(v2 + 1288);
    *(v2 + 1184) = 0u;
    *(v2 + 1200) = 0u;
    *(v2 + 1216) = 0u;
    *(v2 + 1232) = 0u;
    *(v2 + 1248) = 0u;
    *(v2 + 1264) = 0u;
    *(v2 + 1312) = 0u;
    *(v2 + 1328) = 0u;
    *(v2 + 1344) = 0u;
    *(v2 + 1360) = 0u;
    *(v2 + 1376) = 0u;
    *(v2 + 1392) = 0u;
    *(v2 + 1408) = 0u;
    *(v2 + 1280) = 0u;
    *(v2 + 1296) = 0u;
    *(*(a1 + 32) + 1288) = v34;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = [WeakRetained smb2fs_smb_findnext:{&v33, v32}];

    if (v4 == 35)
    {
      v5 = *(a1 + 32);
      v34 = *(v5 + 1288);
      v5[74] = 0u;
      v5[75] = 0u;
      v5[76] = 0u;
      v5[77] = 0u;
      v5[78] = 0u;
      v5[79] = 0u;
      v5[82] = 0u;
      v5[83] = 0u;
      v5[84] = 0u;
      v5[85] = 0u;
      v5[86] = 0u;
      v5[87] = 0u;
      v5[88] = 0u;
      v5[80] = 0u;
      v5[81] = 0u;
      *(*(a1 + 32) + 1288) = v34;
      v6 = objc_loadWeakRetained((a1 + 56));
      v4 = [v6 smb2fs_smb_findnext:&v33];
    }

    if (v4)
    {
      break;
    }

    v2 = *(a1 + 32);
    v7 = *(v2 + 1176);
    if (v7 == 4)
    {
      if (*(v2 + 156) != 3014702)
      {
        goto LABEL_10;
      }
    }

    else if (v7 != 2 || *(v2 + 156) != 46)
    {
LABEL_10:
      v32 = *(v2 + 1176);
      if ((9 * v7) >= 0x1FFFF)
      {
        v8 = 0x1FFFFLL;
      }

      else
      {
        v8 = 9 * v7;
      }

      v9 = malloc_type_malloc(v8, 0xC75DAAC4uLL);
      if (v9)
      {
        v10 = v9;
        bzero(v9, v8);
        v4 = smbfs_ntwrkname_tolocal_buffer((*(a1 + 32) + 156), &v32, v10, v8, 1);
        if (!v4)
        {
          [*(a1 + 40) setNtstatus:{v33, v32}];
          if (strnlen(v10, v8))
          {
            v11 = *(a1 + 40);
            v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v10 encoding:4];
            [v11 setName:v12];
          }

          v14 = *(a1 + 32);
          v13 = *(a1 + 40);
          v15 = v14[85];
          v16 = v14[87];
          v35[12] = v14[86];
          v35[13] = v16;
          v35[14] = v14[88];
          v17 = v14[81];
          v18 = v14[83];
          v35[8] = v14[82];
          v35[9] = v18;
          v35[10] = v14[84];
          v35[11] = v15;
          v19 = v14[77];
          v20 = v14[79];
          v35[4] = v14[78];
          v35[5] = v20;
          v35[6] = v14[80];
          v35[7] = v17;
          v21 = v14[75];
          v35[0] = v14[74];
          v35[1] = v21;
          v35[2] = v14[76];
          v35[3] = v19;
          [v13 setAttributes:v35];
        }

        free(v10);
      }

      else
      {
        v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v22)
        {
          __53__SMBDirEnumerator_nextEntry_outParameters_callBack___block_invoke_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
        }

        v4 = 12;
      }

      break;
    }
  }

  **(a1 + 64) = v33;
  pthread_mutex_unlock((*(a1 + 32) + 24));
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, v4);
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)smb2fs_smb_findnext:(unsigned int *)a3
{
  *&v56[5] = *MEMORY[0x277D85DE8];
  v5 = [(SMBPiston *)self->pd getSessionPtr];
  objc_initWeak(&location, self);
  v52 = 0;
  *a3 = 0;
  if (!self->f_output_buf_len)
  {
    if ((self->f_flags & 2) != 0)
    {
      fid = 2;
      goto LABEL_42;
    }

    v54.tv_sec = 0;
    *&v54.tv_usec = 0;
    gettimeofday(&v54, 0);
    f_create_rqp = self->f_create_rqp;
    if (f_create_rqp)
    {
      [(SMB_rq *)f_create_rqp smb_rq_done];
      v15 = self->f_create_rqp;
      self->f_create_rqp = 0;
    }

    f_query_dir_rqp = self->f_query_dir_rqp;
    if (f_query_dir_rqp)
    {
      [(SMB_rq *)f_query_dir_rqp smb_rq_done];
      v17 = self->f_query_dir_rqp;
      self->f_query_dir_rqp = 0;
    }

    f_flags = self->f_flags;
    self->f_flags = f_flags & 0xFFFFEFFF;
    v19 = f_flags & 1 | (2 * ((f_flags >> 2) & 1));
    v20 = MEMORY[0x277D86220];
    v21 = 1;
    while (1)
    {
      self->f_query_inp.fileInfoClass = self->f_infolevel;
      self->f_query_inp.flags = v19;
      self->f_query_inp.fileIndex = 0;
      if ((v5->option_flags & 4) != 0)
      {
        sv_maxtransact = 0x10000;
      }

      else
      {
        sv_maxtransact = v5->sv_maxtransact;
        if (sv_maxtransact >= 0x100000)
        {
          sv_maxtransact = 0x100000;
        }
      }

      self->f_query_buffer_len = sv_maxtransact;
      self->f_query_inp.fileNameFlags = self->f_sfm_conversion;
      if (self->f_need_close)
      {
        self->f_output_buf_len = 0;
        v23 = objc_loadWeakRetained(&location);
        v24 = [v23 smb2_smb_query_dir:&v52];
      }

      else
      {
        v25 = [[SMBNode alloc] init:self->pd];
        f_node = self->f_node;
        self->f_node = v25;

        v27 = self->f_node;
        if (!v27)
        {
          v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v44)
          {
            [(SMBDirEnumerator *)v44 smb2fs_smb_findnext:v45, v46, v47, v48, v49, v50, v51];
          }

          fid = 12;
          goto LABEL_42;
        }

        fid = [(SMBNode *)v27 commonInit:self->pd onShareID:self->f_shareID];
        if (fid)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SMBDirEnumerator smb2fs_smb_findnext:];
          }

          goto LABEL_42;
        }

        fid = smb2_smb_create_fid(self->f_node, self->f_createName, 0, 1048705, 2, 7, 1, 0, 0, 0, 0);
        if (fid)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SMBDirEnumerator smb2fs_smb_findnext:];
          }

          goto LABEL_42;
        }

        self->f_need_close = 1;
        v23 = objc_loadWeakRetained(&location);
        v24 = [v23 smb2_smb_query_dir:&v52];
      }

      fid = v24;

      *a3 = v52;
      if (fid != 22)
      {
        break;
      }

      if (self->f_query_inp.ntStatus != -1073741811)
      {
        goto LABEL_40;
      }

      option_flags = v5->option_flags;
      if ((option_flags >> 2) & 1 | ((v21 & 1) == 0))
      {
        goto LABEL_40;
      }

      if (piston_log_level)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(SMBDirEnumerator *)buf smb2fs_smb_findnext:v56];
        }

        option_flags = v5->option_flags;
      }

      v5->option_flags = option_flags | 4;
      v29 = self->f_create_rqp;
      if (v29)
      {
        [(SMB_rq *)v29 smb_rq_done];
        v30 = self->f_create_rqp;
        self->f_create_rqp = 0;
      }

      v21 = 0;
      v31 = self->f_query_dir_rqp;
      if (v31)
      {
        [(SMB_rq *)v31 smb_rq_done];
        v32 = self->f_query_dir_rqp;
        self->f_query_dir_rqp = 0;

        v21 = 0;
      }
    }

    if (fid)
    {
      if (fid == 2)
      {
        self->f_flags |= 2u;
      }

      goto LABEL_42;
    }

    v43 = self->f_flags;
    if (v43)
    {
      self->f_flags = v43 & 0xFFFFFFFE;
    }

    self->f_eofs = 0;
    self->f_attr.fa_reqtime.tv_sec = v54.tv_sec;
    self->f_attr.fa_reqtime.tv_nsec = 1000 * v54.tv_usec;
  }

  self->f_NetworkNameLen = 0;
  v6 = self->f_query_dir_rqp;
  if (self->f_create_rqp)
  {
    v7 = [(SMB_rq *)v6 sr_extflags];
    p_f_create_rqp = &self->f_create_rqp;
    if ((v7 & 2) != 0)
    {
      p_f_create_rqp = &self->f_query_dir_rqp;
    }

    v6 = *p_f_create_rqp;
  }

  v9 = [(SMB_rq *)v6 smb_rq_getreply];
  if (!v9)
  {
    v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v33)
    {
      [(SMBDirEnumerator *)v33 smb2fs_smb_findnext:v34, v35, v36, v37, v38, v39, v40];
    }

    goto LABEL_40;
  }

  f_infolevel = self->f_infolevel;
  p_f_infolevel = &self->f_infolevel;
  if ((f_infolevel - 37) > 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBDirEnumerator smb2fs_smb_findnext:?];
    }

LABEL_40:
    fid = 22;
    goto LABEL_42;
  }

  v12 = objc_loadWeakRetained(&location);
  fid = [v12 smb2_smb_parse_query_dir_both_dir_info:v9];

LABEL_42:
  objc_destroyWeak(&location);
  v41 = *MEMORY[0x277D85DE8];
  return fid;
}

- (int)smb2_smb_parse_query_dir_both_dir_info:(mdchain *)a3
{
  v298 = 0;
  v297 = 0;
  v295 = 0;
  v296 = 0;
  v293 = 0u;
  v294 = 0u;
  v292 = 0;
  v290 = 0u;
  v291 = 0u;
  v289 = 0;
  v5 = [(SMBPiston *)self->pd getSessionPtr];
  v288 = 0;
  uint32le = md_get_uint32le(a3, &v298 + 1);
  if (uint32le)
  {
    v7 = uint32le;
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [(SMBDirEnumerator *)v8 smb2_smb_parse_query_dir_both_dir_info:v9, v10, v11, v12, v13, v14, v15];
    }

    return v7;
  }

  v16 = HIDWORD(v298);
  v17 = md_get_uint32le(a3, &v297);
  if (v17)
  {
    v7 = v17;
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(SMBDirEnumerator *)v18 smb2_smb_parse_query_dir_both_dir_info:v19, v20, v21, v22, v23, v24, v25];
    }

    return v7;
  }

  uint64le = md_get_uint64le(a3, &v296);
  if (uint64le)
  {
    v7 = uint64le;
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v27)
    {
      [(SMBDirEnumerator *)v27 smb2_smb_parse_query_dir_both_dir_info:v28, v29, v30, v31, v32, v33, v34];
    }

    return v7;
  }

  if (v296)
  {
    smb_time_NT2local(v296, &self->f_attr.fa_crtime.tv_sec);
  }

  v35 = md_get_uint64le(a3, &v296);
  if (v35)
  {
    v7 = v35;
    v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v36)
    {
      [(SMBDirEnumerator *)v36 smb2_smb_parse_query_dir_both_dir_info:v37, v38, v39, v40, v41, v42, v43];
    }

    return v7;
  }

  if (v296)
  {
    smb_time_NT2local(v296, &self->f_attr.fa_atime.tv_sec);
  }

  v44 = md_get_uint64le(a3, &v296);
  if (v44)
  {
    v7 = v44;
    v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v45)
    {
      [(SMBDirEnumerator *)v45 smb2_smb_parse_query_dir_both_dir_info:v46, v47, v48, v49, v50, v51, v52];
    }

    return v7;
  }

  if (v296)
  {
    smb_time_NT2local(v296, &self->f_attr.fa_mtime.tv_sec);
  }

  v53 = md_get_uint64le(a3, &v296);
  if (v53)
  {
    v7 = v53;
    v54 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v54)
    {
      [(SMBDirEnumerator *)v54 smb2_smb_parse_query_dir_both_dir_info:v55, v56, v57, v58, v59, v60, v61];
    }

    return v7;
  }

  if (v296)
  {
    smb_time_NT2local(v296, &self->f_attr.fa_chtime.tv_sec);
  }

  v62 = md_get_uint64le(a3, &v296);
  if (v62)
  {
    v7 = v62;
    v63 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v63)
    {
      [(SMBDirEnumerator *)v63 smb2_smb_parse_query_dir_both_dir_info:v64, v65, v66, v67, v68, v69, v70];
    }

    return v7;
  }

  self->f_attr.fa_size = v296;
  v71 = md_get_uint64le(a3, &v296);
  if (v71)
  {
    v7 = v71;
    v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v72)
    {
      [(SMBDirEnumerator *)v72 smb2_smb_parse_query_dir_both_dir_info:v73, v74, v75, v76, v77, v78, v79];
    }

    return v7;
  }

  self->f_attr.fa_data_alloc = v296;
  v80 = md_get_uint32le(a3, &v298);
  if (v80)
  {
    v7 = v80;
    v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v81)
    {
      [(SMBDirEnumerator *)v81 smb2_smb_parse_query_dir_both_dir_info:v82, v83, v84, v85, v86, v87, v88];
    }

    return v7;
  }

  v89 = v298;
  self->f_attr.fa_attr = v298;
  if ((v5->session_server_caps & 4) != 0 || (v89 & 0x10) != 0)
  {
    self->f_attr.fa_valid_mask |= 1uLL;
  }

  if ((v89 & 0x10) != 0)
  {
    v90 = 2;
  }

  else
  {
    v90 = 1;
  }

  self->f_attr.fa_vtype = v90;
  *&self->f_attr.fa_uid = vdupq_n_s64(0xFFFFFF9BuLL);
  p_f_NetworkNameLen = &self->f_NetworkNameLen;
  v92 = md_get_uint32le(a3, &self->f_NetworkNameLen);
  if (v92)
  {
    v7 = v92;
    v93 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v93)
    {
      [(SMBDirEnumerator *)v93 smb2_smb_parse_query_dir_both_dir_info:v94, v95, v96, v97, v98, v99, v100];
    }

    return v7;
  }

  self->f_attr.fa_valid_mask |= 2uLL;
  v101 = md_get_uint32le(a3, &v295 + 1);
  if (v101)
  {
    v7 = v101;
    v102 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v102)
    {
      [(SMBDirEnumerator *)v102 smb2_smb_parse_query_dir_both_dir_info:v103, v104, v105, v106, v107, v108, v109];
    }

    return v7;
  }

  if ((self->f_attr.fa_attr & 0x400) != 0)
  {
    v111 = HIDWORD(v295);
    self->f_attr.fa_reparse_tag = HIDWORD(v295);
    if (v111 == -1610612724)
    {
      self->f_attr.fa_valid_mask |= 1uLL;
      self->f_attr.fa_vtype = 5;
    }
  }

  else
  {
    self->f_attr.fa_reparse_tag = 0;
  }

  if (self->f_infolevel == 38)
  {
    v112 = md_get_uint32le(a3, 0);
    if (v112)
    {
      v7 = v112;
      v113 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v113)
      {
        [(SMBDirEnumerator *)v113 smb2_smb_parse_query_dir_both_dir_info:v114, v115, v116, v117, v118, v119, v120];
      }

      return v7;
    }

    v130 = 80;
LABEL_61:
    v7 = md_get_uint64le(a3, &self->f_attr.fa_ino);
    if (v7)
    {
      return v7;
    }

    v131 = *p_f_NetworkNameLen;
    if (HIDWORD(v298))
    {
      v132 = HIDWORD(v298);
    }

    else
    {
      v132 = *p_f_NetworkNameLen + v130;
    }

    if (v131 >= 0x3FD)
    {
      v131 = 1020;
      *p_f_NetworkNameLen = 1020;
    }

    f_NetworkNameBuffer = self->f_NetworkNameBuffer;
    mem = md_get_mem(a3, self->f_NetworkNameBuffer, v131, 0);
    if (mem)
    {
      v7 = mem;
      v135 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v135)
      {
        [(SMBDirEnumerator *)v135 smb2_smb_parse_query_dir_both_dir_info:v136, v137, v138, v139, v140, v141, v142];
      }

      return v7;
    }

    smb2fs_smb_file_id_check(v5, self->f_attr.fa_ino, self->f_NetworkNameBuffer, *p_f_NetworkNameLen);
    v175 = *p_f_NetworkNameLen;
    if (HIDWORD(v298))
    {
      v176 = HIDWORD(v298) - v130 - v175;
      if (v176 < 1)
      {
        if ((v176 & 0x80000000) != 0)
        {
          v204 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v204)
          {
            [(SMBDirEnumerator *)v204 smb2_smb_parse_query_dir_both_dir_info:v205, v206, v207, v208, v209, v210, v211];
          }

          return 72;
        }
      }

      else
      {
        v177 = md_get_mem(a3, 0, v176, 0);
        if (v177)
        {
          v7 = v177;
          v178 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v178)
          {
            [(SMBDirEnumerator *)v178 smb2_smb_parse_query_dir_both_dir_info:v179, v180, v181, v182, v183, v184, v185];
          }

          return v7;
        }

        v175 = *p_f_NetworkNameLen;
      }
    }

    v212 = v175 - 2;
    if (v175 >= 2)
    {
      if (f_NetworkNameBuffer[v175 - 1] || f_NetworkNameBuffer[v212])
      {
        goto LABEL_109;
      }

      *p_f_NetworkNameLen = v212;
      v175 -= 2;
    }

    if (v175)
    {
LABEL_109:
      v7 = 0;
      self->f_resume_file_index = v297;
      self->f_eofs += v132;
      v213 = self->f_output_buf_len - v132;
      if (!v16)
      {
        v213 = 0;
      }

      self->f_output_buf_len = v213;
      return v7;
    }

    return 72;
  }

  uint16 = md_get_uint16(a3, &v288);
  if (uint16)
  {
    v7 = uint16;
    v122 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v122)
    {
      [(SMBDirEnumerator *)v122 smb2_smb_parse_query_dir_both_dir_info:v123, v124, v125, v126, v127, v128, v129];
    }

    return v7;
  }

  if ((v5->option_flags & 0x40) != 0 && (session_server_caps = v5->session_server_caps, (session_server_caps & 0x11) != 0))
  {
    fa_fstatus = self->f_attr.fa_fstatus;
    self->f_attr.fa_fstatus = fa_fstatus & 0xFFFD;
    fa_valid_mask = self->f_attr.fa_valid_mask;
    v146 = fa_valid_mask & 0xFFFFFFFFFFFFFFFBLL;
    if (session_server_caps & 0x10) != 0 && (v288)
    {
      self->f_attr.fa_fstatus = fa_fstatus | 2;
      v146 = fa_valid_mask | 4;
    }

    if ((self->f_attr.fa_attr & 0x400) != 0)
    {
      v147 = 2032127;
    }

    else
    {
      v147 = HIDWORD(v295);
    }

    self->f_attr.fa_max_access = v147;
    self->f_attr.fa_valid_mask = v146 | 0x40;
    v148 = md_get_uint64le(a3, &self->f_attr.fa_rsrc_size);
    if (v148)
    {
      v7 = v148;
      v149 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v149)
      {
        [(SMBDirEnumerator *)v149 smb2_smb_parse_query_dir_both_dir_info:v150, v151, v152, v153, v154, v155, v156];
      }

      return v7;
    }

    self->f_attr.fa_rsrc_alloc = smb2_smb_get_alloc_size(self->f_node, self->f_attr.fa_rsrc_size);
    self->f_attr.fa_valid_mask |= 0x10uLL;
    if (self->f_attr.fa_vtype == 2)
    {
      v292 = 0;
      v290 = 0u;
      v291 = 0u;
      v186 = md_get_uint64le(a3, &v290);
      if (v186)
      {
        v7 = v186;
        v187 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v187)
        {
          [(SMBDirEnumerator *)v187 smb2_smb_parse_query_dir_both_dir_info:v188, v189, v190, v191, v192, v193, v194];
        }

        return v7;
      }

      uint16le = md_get_uint16le(a3, &v290 + 4);
      if (uint16le)
      {
        v7 = uint16le;
        v215 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v215)
        {
          [(SMBDirEnumerator *)v215 smb2_smb_parse_query_dir_both_dir_info:v216, v217, v218, v219, v220, v221, v222];
        }

        return v7;
      }

      v232 = &v290;
      v233 = md_get_uint16le(a3, &v291 + 6);
      if (v233)
      {
        v7 = v233;
        v234 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v234)
        {
          [(SMBDirEnumerator *)v234 smb2_smb_parse_query_dir_both_dir_info:v235, v236, v237, v238, v239, v240, v241];
        }

        return v7;
      }

      v251 = md_get_uint32le(a3, &v291 + 2);
      if (v251)
      {
        v7 = v251;
        v252 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v252)
        {
          [(SMBDirEnumerator *)v252 smb2_smb_parse_query_dir_both_dir_info:v253, v254, v255, v256, v257, v258, v259];
        }

        return v7;
      }
    }

    else
    {
      LODWORD(v295) = 0;
      v293 = 0u;
      v294 = 0u;
      v195 = md_get_uint32le(a3, &v293);
      if (v195)
      {
        v7 = v195;
        v196 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v196)
        {
          [(SMBDirEnumerator *)v196 smb2_smb_parse_query_dir_both_dir_info:v197, v198, v199, v200, v201, v202, v203];
        }

        return v7;
      }

      v223 = md_get_uint32le(a3, &v293 + 1);
      if (v223)
      {
        v7 = v223;
        v224 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v224)
        {
          [(SMBDirEnumerator *)v224 smb2_smb_parse_query_dir_both_dir_info:v225, v226, v227, v228, v229, v230, v231];
        }

        return v7;
      }

      v242 = md_get_uint16le(a3, &v293 + 4);
      if (v242)
      {
        v7 = v242;
        v243 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v243)
        {
          [(SMBDirEnumerator *)v243 smb2_smb_parse_query_dir_both_dir_info:v244, v245, v246, v247, v248, v249, v250];
        }

        return v7;
      }

      v260 = md_get_uint16le(a3, &v294 + 6);
      if (v260)
      {
        v7 = v260;
        v261 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v261)
        {
          [(SMBDirEnumerator *)v261 smb2_smb_parse_query_dir_both_dir_info:v262, v263, v264, v265, v266, v267, v268];
        }

        return v7;
      }

      v232 = &v293;
      v269 = md_get_uint32le(a3, &v294 + 2);
      if (v269)
      {
        v7 = v269;
        v270 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v270)
        {
          [(SMBDirEnumerator *)v270 smb2_smb_parse_query_dir_both_dir_info:v271, v272, v273, v274, v275, v276, v277];
        }

        return v7;
      }
    }

    v278 = v232[1];
    *self->f_attr.fa_finder_info = *v232;
    *&self->f_attr.fa_finder_info[16] = v278;
    self->f_attr.fa_valid_mask |= 0x20uLL;
    v279 = md_get_uint16le(a3, &v289);
    if (!v279)
    {
      v130 = 104;
      if ((v5->session_server_caps & 4) != 0 && v289)
      {
        self->f_attr.fa_permissions = v289;
        self->f_attr.fa_valid_mask |= 8uLL;
      }

      goto LABEL_61;
    }

    v7 = v279;
    v280 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v280)
    {
      [(SMBDirEnumerator *)v280 smb2_smb_parse_query_dir_both_dir_info:v281, v282, v283, v284, v285, v286, v287];
    }
  }

  else
  {
    v157 = md_get_mem(a3, 0, 0x18uLL, 0);
    if (v157)
    {
      v7 = v157;
      v158 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v158)
      {
        [(SMBDirEnumerator *)v158 smb2_smb_parse_query_dir_both_dir_info:v159, v160, v161, v162, v163, v164, v165];
      }
    }

    else
    {
      v166 = md_get_uint16le(a3, 0);
      if (!v166)
      {
        v130 = 104;
        goto LABEL_61;
      }

      v7 = v166;
      v167 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v167)
      {
        [(SMBDirEnumerator *)v167 smb2_smb_parse_query_dir_both_dir_info:v168, v169, v170, v171, v172, v173, v174];
      }
    }
  }

  return v7;
}

- (int)smb2_smb_query_dir:(unsigned int *)a3
{
  f_query_buffer_len = self->f_query_buffer_len;
  v29 = 0;
  *a3 = 0;
  v5 = [(SMBNode *)self->f_node treeID];
  v6 = [(SMBNode *)self->f_node onEncryptedShare];
  pd = self->pd;
  v27 = 0;
  dir = smb2_rq_alloc(14, v5, v6, &f_query_buffer_len, pd, &v27);
  v9 = v27;
  v10 = v27;
  if (dir)
  {
    goto LABEL_2;
  }

  objc_storeStrong(&self->f_query_dir_rqp, v9);
  v12 = [(SMB_rq *)self->f_query_dir_rqp smb_rq_getrequest];
  mb_put_uint16le(v12, 33);
  mb_put_uint8(v12, self->f_query_inp.fileInfoClass);
  mb_put_uint8(v12, self->f_query_inp.flags);
  mb_put_uint32le(v12, self->f_query_inp.fileIndex);
  mb_put_uint64le(v12, [(SMBNode *)self->f_node fid]);
  [(SMBNode *)self->f_node fid];
  mb_put_uint64le(v12, v13);
  mb_put_uint16le(v12, 96);
  v14 = mb_reserve(v12, 2uLL);
  mb_put_uint32le(v12, f_query_buffer_len);
  if (!self->f_lookupName)
  {
    *v14 = 0;
    mb_put_uint16le(v12, 0);
LABEL_13:
    dir = smb_rq_simple(self->pd, self->f_query_dir_rqp);
    *a3 = [(SMB_rq *)self->f_query_dir_rqp sr_ntstatus];
    if (dir)
    {
      if (dir != 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBDirEnumerator smb2_smb_query_dir:?];
      }
    }

    else
    {
      v25 = [(SMB_rq *)self->f_query_dir_rqp smb_rq_getreply];
      dir = smb2_smb_parse_query_dir(v25, v26, 0, &self->f_output_buf_len);
    }

    goto LABEL_2;
  }

  smb2_rq_bstart(self->f_query_dir_rqp, v14);
  cstring_len = smb_get_cstring_len(self->f_lookupName, &v29);
  if (cstring_len)
  {
    v16 = smb2fs_fullpath(v12, cstring_len, v29, 0, 0, self->f_query_inp.fileNameFlags);
    if (v16)
    {
      dir = v16;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBDirEnumerator smb2_smb_query_dir:];
      }

      goto LABEL_2;
    }

    smb_rq_bend(self->f_query_dir_rqp);
    goto LABEL_13;
  }

  v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v17)
  {
    [(SMBDirEnumerator *)v17 smb2_smb_query_dir:v18, v19, v20, v21, v22, v23, v24];
  }

  dir = 22;
LABEL_2:

  return dir;
}

- (void)cleanup
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)close:(uint64_t)a3 callBack:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: sock is NULL. \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)commonInit:onShareID:dirName:lookUpName:searchFlags:outParameters:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)init:(uint64_t)a3 onShareID:(uint64_t)a4 dirName:(uint64_t)a5 lookUpName:(uint64_t)a6 searchFlags:(uint64_t)a7 outParameters:(uint64_t)a8 callBack:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: sock is NULL. \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)enumeratorWithParameters:(uint64_t)a3 onShareID:(uint64_t)a4 dirName:(uint64_t)a5 lookUpName:(uint64_t)a6 searchFlags:(uint64_t)a7 outParameters:(uint64_t)a8 callBack:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: sock is NULL. \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)nextEntry:(uint64_t)a3 outParameters:(uint64_t)a4 callBack:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: sock is NULL. \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)nextEntry:(uint64_t)a3 outParameters:(uint64_t)a4 callBack:(uint64_t)a5 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: entry is NULL. \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__SMBDirEnumerator_nextEntry_outParameters_callBack___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: malloc failed \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2fs_smb_findnext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)smb2fs_smb_findnext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)smb2fs_smb_findnext:(uint8_t *)buf .cold.3(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "[SMBDirEnumerator smb2fs_smb_findnext:]";
  _os_log_error_impl(&dword_264287000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: SMB 2/3 server cant handle large OutputBufferLength in Query_Dir. Reducing to 64Kb.\n", buf, 0xCu);
}

- (void)smb2fs_smb_findnext:(unsigned __int8 *)a1 .cold.4(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)smb2fs_smb_findnext:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: mdp is null? \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2fs_smb_findnext:(uint64_t)a3 .cold.6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: SMBNode failed\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting next\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting index\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting crtime\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting atime\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting wrtime\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting ctime\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting eof\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting alloc size\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file attr\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file name len\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting ea_size\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting flags \n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting rsrc fork len\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file finfo type\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file finfo creator\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file finfo flags\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file finfo ext flags\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file finfo date added\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting folder finfo reserved1\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting folder finfo flags\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting folder finfo ext flags\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting folder finfo date added\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting unix_mode\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting short name\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting resv\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting file name\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: out of sync\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_parse_query_dir_both_dir_info:(uint64_t)a3 .cold.29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: failed getting add pad\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_query_dir:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_query_dir:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264287000, MEMORY[0x277D86220], a3, "%s: c_lookup_namep is NULL\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)smb2_smb_query_dir:(id *)a1 .cold.3(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_ntstatus];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

@end
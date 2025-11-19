@interface UMFilesystemProvider
- (BOOL)atomicallyWriteData:(id)a3 toPath:(id)a4 error:(id *)a5;
- (BOOL)chmodPath:(id)a3 withMode:(unsigned __int16)a4 error:(id *)a5;
- (BOOL)chownPath:(id)a3 toUser:(unsigned int)a4 group:(unsigned int)a5 error:(id *)a6;
- (BOOL)clonePath:(id)a3 toPath:(id)a4 error:(id *)a5 handler:(id)a6;
- (BOOL)fileExistsAtPath:(id)a3 isDirectory:(BOOL *)a4;
- (BOOL)makePath:(id)a3 mode:(unsigned __int16)a4 error:(id *)a5;
- (BOOL)removeFileAtPath:(id)a3 error:(id *)a4;
- (BOOL)removePath:(id)a3 error:(id *)a4;
- (BOOL)renameFileFromPath:(id)a3 toPath:(id)a4 error:(id *)a5;
- (BOOL)writeToFileWithDescriptor:(int)a3 string:(id)a4 error:(id *)a5;
- (id)dataWithContentsOfFile:(id)a3 error:(id *)a4;
- (int)openFileForAppendingAtPath:(id)a3 error:(id *)a4;
- (int64_t)sizeOfFileWithDescriptor:(int)a3 error:(id *)a4;
@end

@implementation UMFilesystemProvider

- (BOOL)fileExistsAtPath:(id)a3 isDirectory:(BOOL *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  LOBYTE(a4) = [v7 fileExistsAtPath:v6 isDirectory:a4];

  return a4;
}

- (id)dataWithContentsOfFile:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v37 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v37];
  v7 = v37;
  v8 = v7;
  if (v6)
  {
    if (qword_2810B88A8 != -1)
    {
      sub_22EE775F0();
    }

    v9 = qword_2810B88A0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_22EE69AE8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v38 = 138412290;
        v39 = v5;
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_22EE69B10(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    goto LABEL_28;
  }

  if (!a4 || !v7)
  {
    goto LABEL_28;
  }

  v14 = [v7 userInfo];
  v15 = *MEMORY[0x277CCA7E8];
  v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v16)
  {
    v17 = [v8 userInfo];
    v18 = [v17 objectForKeyedSubscript:v15];

    v19 = [v18 domain];
    v20 = [v19 isEqualToString:*MEMORY[0x277CCA5B8]];

    if (v20)
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v21 = qword_2810B88A0;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v22 = sub_22EE69AE8();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 &= ~1u;
      }

      if (v22)
      {
        v23 = v21;
        v24 = [v18 code];
        v38 = 138543618;
        v39 = v5;
        v40 = 1024;
        LODWORD(v41) = v24;
        v25 = _os_log_send_and_compose_impl();

        if (!v25)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v21 = qword_2810B88A0;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v33 = sub_22EE69AE8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v38 = 138543618;
        v39 = v5;
        v40 = 2114;
        v41 = v18;
        v25 = _os_log_send_and_compose_impl();
        if (!v25)
        {
LABEL_50:
          free(v25);
LABEL_51:

          v35 = v18;
          *a4 = v18;

          goto LABEL_28;
        }

LABEL_48:
        sub_22EE69B10(v25);
        goto LABEL_50;
      }
    }

    v25 = 0;
    goto LABEL_50;
  }

  if (qword_2810B88A8 != -1)
  {
    sub_22EE775F0();
  }

  v28 = qword_2810B88A0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = sub_22EE69AE8();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      v38 = 138543618;
      v39 = v5;
      v40 = 2114;
      v41 = v8;
      v31 = _os_log_send_and_compose_impl();
      v32 = v31;
      if (v31)
      {
        sub_22EE69B10(v31);
      }
    }

    else
    {
      v32 = 0;
    }

    free(v32);
  }

  v36 = v8;
  *a4 = v8;
LABEL_28:

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)atomicallyWriteData:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.writing", v8];
  if (unlink([v9 UTF8String]))
  {
    v10 = *__error();
    if (v10 != 2)
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE77618();
      }

      v19 = qword_2810B88A0;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      v20 = sub_22EE69AE8();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
LABEL_31:
        v80 = 138543874;
        v81 = v8;
        v82 = 2114;
        *v83 = v9;
        *&v83[8] = 1024;
        *&v83[10] = v10;
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_22EE69B10(v24);
        }

        goto LABEL_42;
      }

LABEL_41:
      v25 = 0;
LABEL_42:
      free(v25);
LABEL_43:

      if (a5)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v10 userInfo:0];
        *a5 = v31 = 0;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_133;
    }
  }

  v11 = open_dprotected_np([v9 UTF8String], 3585, 4, 0, 420);
  if (v11 == -1)
  {
    v10 = *__error();
    if (qword_2810B88A8 != -1)
    {
      sub_22EE77618();
    }

    v19 = qword_2810B88A0;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v22 = sub_22EE69AE8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v12 = v11;
  v13 = write(v11, [v7 bytes], objc_msgSend(v7, "length"));
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v13;
    if (v13 != [v7 length])
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE77618();
      }

      v15 = qword_2810B88A0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_22EE69AE8();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 &= ~1u;
        }

        if (v16)
        {
          v17 = v15;
          v80 = 138544130;
          v81 = v8;
          v82 = 1024;
          *v83 = v12;
          *&v83[4] = 2048;
          *&v83[6] = [v7 length];
          v84 = 2048;
          v85 = v14;
          LODWORD(v79) = 38;
          v78 = &v80;
          v18 = _os_log_send_and_compose_impl();

          if (v18)
          {
            sub_22EE69B10(v18);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }
    }

    if (fsync(v12))
    {
      v33 = *__error();
      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v34 = qword_2810B88A0;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = sub_22EE69AE8();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = v35;
        }

        else
        {
          v36 = v35 & 0xFFFFFFFE;
        }

        if (v36)
        {
          v80 = 138543874;
          v81 = v8;
          v82 = 1024;
          *v83 = v12;
          *&v83[4] = 1024;
          *&v83[6] = v33;
          LODWORD(v79) = 24;
          v78 = &v80;
          goto LABEL_62;
        }

        goto LABEL_94;
      }

      goto LABEL_96;
    }

    if (renamex_np([v9 UTF8String], objc_msgSend(v8, "UTF8String"), 2u))
    {
      v33 = *__error();
      if (v33 != 2)
      {
        if (qword_2810B88A8 != -1)
        {
          sub_22EE775F0();
        }

        v34 = qword_2810B88A0;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v55 = sub_22EE69AE8();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v56 = v55;
          }

          else
          {
            v56 = v55 & 0xFFFFFFFE;
          }

          if (v56)
          {
            v80 = 138543618;
            v81 = v8;
            v82 = 1024;
            *v83 = v33;
            LODWORD(v79) = 18;
            v78 = &v80;
LABEL_62:
            v37 = _os_log_send_and_compose_impl();
            v38 = v37;
            if (v37)
            {
              sub_22EE69B10(v37);
            }

            goto LABEL_95;
          }

LABEL_94:
          v38 = 0;
LABEL_95:
          free(v38);
        }

LABEL_96:

        if (a5)
        {
          v32 = v33;
          goto LABEL_98;
        }

        goto LABEL_119;
      }

      v39 = [v9 UTF8String];
      v40 = [v8 UTF8String];
      rename(v39, v40, v41);
      if (v42)
      {
        v43 = *__error();
        if (qword_2810B88A8 != -1)
        {
          sub_22EE775F0();
        }

        v44 = qword_2810B88A0;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = sub_22EE69AE8();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v46 = v45;
          }

          else
          {
            v46 = v45 & 0xFFFFFFFE;
          }

          if (v46)
          {
            v80 = 138543874;
            v81 = v8;
            v82 = 1024;
            *v83 = 2;
            *&v83[4] = 1024;
            *&v83[6] = v43;
            LODWORD(v79) = 24;
            v78 = &v80;
            v47 = _os_log_send_and_compose_impl();
            v48 = v47;
            if (v47)
            {
              sub_22EE69B10(v47);
            }
          }

          else
          {
            v48 = 0;
          }

          free(v48);
        }

        if (a5)
        {
          v57 = MEMORY[0x277CCA9B8];
          v58 = *MEMORY[0x277CCA5B8];
          v32 = 2;
          goto LABEL_99;
        }

        goto LABEL_119;
      }
    }

    if (fcntl(v12, 85, v78, v79))
    {
      v49 = *__error();
      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v50 = qword_2810B88A0;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = sub_22EE69AE8();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          v80 = 138543874;
          v81 = v8;
          v82 = 1024;
          *v83 = v12;
          *&v83[4] = 1024;
          *&v83[6] = v49;
          v53 = _os_log_send_and_compose_impl();
          v54 = v53;
          if (v53)
          {
            sub_22EE69B10(v53);
          }
        }

        else
        {
          v54 = 0;
        }

        free(v54);
      }
    }

    if (qword_2810B88A8 != -1)
    {
      sub_22EE775F0();
    }

    v59 = qword_2810B88A0;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = sub_22EE69AE8();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (v61)
      {
        v80 = 138543362;
        v81 = v8;
        v62 = _os_log_send_and_compose_impl();
        v63 = v62;
        if (v62)
        {
          sub_22EE69B10(v62);
        }
      }

      else
      {
        v63 = 0;
      }

      free(v63);
    }

    v31 = 1;
    goto LABEL_120;
  }

  v26 = *__error();
  if (qword_2810B88A8 != -1)
  {
    sub_22EE77618();
  }

  v27 = qword_2810B88A0;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = sub_22EE69AE8();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 &= ~1u;
    }

    if (v28)
    {
      v29 = v27;
      v80 = 138544130;
      v81 = v8;
      v82 = 1024;
      *v83 = v12;
      *&v83[4] = 2048;
      *&v83[6] = [v7 length];
      v84 = 1024;
      LODWORD(v85) = v26;
      LODWORD(v79) = 34;
      v78 = &v80;
      v30 = _os_log_send_and_compose_impl();

      if (v30)
      {
        sub_22EE69B10(v30);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (a5)
  {
    v32 = v26;
LABEL_98:
    v57 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA5B8];
LABEL_99:
    [v57 errorWithDomain:v58 code:v32 userInfo:{0, v78, v79}];
    *a5 = v31 = 0;
    goto LABEL_120;
  }

LABEL_119:
  v31 = 0;
LABEL_120:
  if (close(v12))
  {
    v64 = *__error();
    if (qword_2810B88A8 != -1)
    {
      sub_22EE775F0();
    }

    v65 = qword_2810B88A0;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = sub_22EE69AE8();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v67 = v66;
      }

      else
      {
        v67 = v66 & 0xFFFFFFFE;
      }

      if (v67)
      {
        v80 = 138543874;
        v81 = v8;
        v82 = 1024;
        *v83 = v12;
        *&v83[4] = 1024;
        *&v83[6] = v64;
        v68 = _os_log_send_and_compose_impl();
        v69 = v68;
        if (v68)
        {
          sub_22EE69B10(v68);
        }
      }

      else
      {
        v69 = 0;
      }

      free(v69);
    }
  }

LABEL_133:
  if (unlink([v9 UTF8String]))
  {
    v70 = *__error();
    if (v70 != 2)
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v71 = qword_2810B88A0;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = sub_22EE69AE8();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v73 = v72;
        }

        else
        {
          v73 = v72 & 0xFFFFFFFE;
        }

        if (v73)
        {
          v80 = 138543874;
          v81 = v8;
          v82 = 2114;
          *v83 = v9;
          *&v83[8] = 1024;
          *&v83[10] = v70;
          v74 = _os_log_send_and_compose_impl();
          v75 = v74;
          if (v74)
          {
            sub_22EE69B10(v74);
          }
        }

        else
        {
          v75 = 0;
        }

        free(v75);
      }
    }
  }

  v76 = *MEMORY[0x277D85DE8];
  return v31;
}

- (int)openFileForAppendingAtPath:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v5 = open_dprotected_np([a3 UTF8String], 777, 4, 0, 420);
  if (v5 == -1)
  {
    v6 = __error();
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*v6 userInfo:0];
    }
  }

  return v5;
}

- (BOOL)writeToFileWithDescriptor:(int)a3 string:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  v7 = a4;
  v8 = [v7 UTF8String];
  v9 = [v7 length];

  v10 = write(a3, v8, v9);
  if (v10 == -1)
  {
    v11 = __error();
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*v11 userInfo:0];
    }
  }

  return v10 != -1;
}

- (int64_t)sizeOfFileWithDescriptor:(int)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  memset(&v7, 0, sizeof(v7));
  if (!fstat(a3, &v7))
  {
    return v7.st_size;
  }

  v5 = __error();
  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*v5 userInfo:0];
  }

  return -1;
}

- (BOOL)renameFileFromPath:(id)a3 toPath:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = a3;
  v9 = a4;
  v10 = [a3 UTF8String];
  v11 = [v9 UTF8String];

  rename(v10, v11, v12);
  v14 = v13;
  if (v13)
  {
    v15 = __error();
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*v15 userInfo:0];
    }
  }

  return v14 == 0;
}

- (BOOL)removeFileAtPath:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  if (!unlink([v5 UTF8String]))
  {
    if (qword_2810B88A8 != -1)
    {
      sub_22EE77618();
    }

    v7 = qword_2810B88A0;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    v10 = sub_22EE69AE8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
LABEL_20:
      v12 = _os_log_send_and_compose_impl();
      v13 = v12;
      if (v12)
      {
        sub_22EE69B10(v12);
      }

      goto LABEL_32;
    }

LABEL_31:
    v13 = 0;
LABEL_32:
    free(v13);
LABEL_33:

    v20 = 1;
    goto LABEL_39;
  }

  if (*__error() == 2)
  {
    if (qword_2810B88A8 != -1)
    {
      sub_22EE77618();
    }

    v7 = qword_2810B88A0;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    v8 = sub_22EE69AE8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  v14 = *__error();
  if (qword_2810B88A8 != -1)
  {
    sub_22EE77618();
  }

  v15 = qword_2810B88A0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_22EE69AE8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = _os_log_send_and_compose_impl();
      v19 = v18;
      if (v18)
      {
        sub_22EE69B10(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v14 userInfo:0];
    *a4 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_39:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)removePath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = removefile_state_alloc();
  LOBYTE(a4) = sub_22EE77128(self, v6, v7, a4);

  removefile_state_free(v7);
  return a4;
}

- (BOOL)chownPath:(id)a3 toUser:(unsigned int)a4 group:(unsigned int)a5 error:(id *)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if (a6)
  {
    *a6 = 0;
  }

  v11 = lchown([v9 UTF8String], a4, a5);
  if (v11)
  {
    v12 = *__error();
    if (qword_2810B88A8 != -1)
    {
      sub_22EE77618();
    }

    v13 = qword_2810B88A0;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_22EE69AE8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_22EE69B10(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v12 userInfo:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (BOOL)chmodPath:(id)a3 withMode:(unsigned __int16)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a5)
  {
    *a5 = 0;
  }

  v9 = chmod([v7 UTF8String], a4);
  if (v9)
  {
    v10 = *__error();
    if (qword_2810B88A8 != -1)
    {
      sub_22EE77618();
    }

    v11 = qword_2810B88A0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_22EE69AE8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_22EE69B10(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v10 userInfo:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

- (BOOL)makePath:(id)a3 mode:(unsigned __int16)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a5)
  {
    *a5 = 0;
  }

  v9 = mkpath_np([v7 UTF8String], a4);
  if (v9)
  {
    if (qword_2810B88A8 != -1)
    {
      sub_22EE77618();
    }

    v10 = qword_2810B88A0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_22EE69AE8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_22EE69B10(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v9 userInfo:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

- (BOOL)clonePath:(id)a3 toPath:(id)a4 error:(id *)a5 handler:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v11 = a6;
  v12 = copyfile_state_alloc();
  copyfile_state_set(v12, 7u, v11);

  copyfile_state_set(v12, 6u, sub_22EE68C68);
  v13 = copyfile([v9 UTF8String], objc_msgSend(v10, "UTF8String"), v12, 0xC800Fu);
  copyfile_state_free(v12);
  if (v13)
  {
    v14 = *__error();
    if (v14)
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE77618();
      }

      v15 = qword_2810B88A0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_22EE69AE8();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v32 = 138543874;
          v33 = v9;
          v34 = 2114;
          v35 = v10;
          v36 = 1024;
          v37 = v14;
          LODWORD(v31) = 28;
          v30 = &v32;
          v18 = _os_log_send_and_compose_impl();
          v19 = v18;
          if (v18)
          {
            sub_22EE69B10(v18);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }

      if (a5)
      {
        v25 = v14;
        v26 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA5B8];
LABEL_31:
        *a5 = [v26 errorWithDomain:v27 code:v25 userInfo:{0, v30, v31}];
      }
    }

    else
    {
      if (qword_2810B88A8 != -1)
      {
        sub_22EE77618();
      }

      v20 = qword_2810B88A0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_22EE69AE8();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v32 = 138543618;
          v33 = v9;
          v34 = 2114;
          v35 = v10;
          LODWORD(v31) = 22;
          v30 = &v32;
          v23 = _os_log_send_and_compose_impl();
          v24 = v23;
          if (v23)
          {
            sub_22EE69B10(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      if (a5)
      {
        v26 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA5B8];
        v25 = 89;
        goto LABEL_31;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

@end
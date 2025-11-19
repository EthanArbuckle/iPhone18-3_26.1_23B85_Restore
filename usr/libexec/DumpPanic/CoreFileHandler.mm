@interface CoreFileHandler
- (BOOL)getCorefileLogInfo:(unint64_t *)a3 :(unint64_t *)a4 :(unsigned int *)a5;
- (BOOL)privateKeyChecking;
- (BOOL)saveCoreDumpAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 named:(id)a5 encryptedWithPublicKey:(id)a6 toFileName:(id)a7 flags:(unsigned int)a8;
- (BOOL)saveCoreDumpWithIndex:(unint64_t)a3 named:(id)a4 toFileName:(id *)a5;
- (CoreFileHandler)initWithCoreFilePath:(char *)a3 :(BOOL)a4 :(id)a5 :(unint64_t)a6 :(void *)a7 :(unint64_t)a8;
- (const)getCoreDumpNameWithIndex:(unint64_t)a3;
- (id)getCoreDumpContentsWithOffset:(unint64_t)a3 AndLength:(unint64_t)a4;
- (id)getCoreDumpEncryptionKey:(unint64_t)a3;
- (id)getCorefileLogEncryptionKey;
- (id)getCorefileZeroRanges;
- (id)getPanicRegion;
- (unint64_t)getNumCoreDumps;
- (void)dealloc;
- (void)getCoreDumpInfoWithIndex:(unint64_t)a3 :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6;
@end

@implementation CoreFileHandler

- (id)getCorefileLogEncryptionKey
{
  v2 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[CoreFileHandler getCorefileLogEncryptionKey]"];
  v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (id)getCoreDumpEncryptionKey:(unint64_t)a3
{
  v3 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[CoreFileHandler getCoreDumpEncryptionKey:]"];
  v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (BOOL)getCorefileLogInfo:(unint64_t *)a3 :(unint64_t *)a4 :(unsigned int *)a5
{
  v5 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", a4, a5, "[CoreFileHandler getCorefileLogInfo:::]"];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)getCoreDumpInfoWithIndex:(unint64_t)a3 :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6
{
  v6 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", a4, a5, a6, "[CoreFileHandler getCoreDumpInfoWithIndex::::]"];
  v7 = [NSException exceptionWithName:NSInvalidArgumentException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (const)getCoreDumpNameWithIndex:(unint64_t)a3
{
  v3 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[CoreFileHandler getCoreDumpNameWithIndex:]"];
  v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (unint64_t)getNumCoreDumps
{
  v2 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[CoreFileHandler getNumCoreDumps]"];
  v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (id)getCorefileZeroRanges
{
  v2 = [NSString stringWithFormat:@"%s must be overridden in a subclass/category", "[CoreFileHandler getCorefileZeroRanges]"];
  v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (BOOL)privateKeyChecking
{
  if (![(CoreFileHandler *)self getNumCoreDumps])
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  [(CoreFileHandler *)self getCoreDumpInfoWithIndex:0];
  if ((v9 & 4) == 0)
  {
    v3 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The kernel core is not encrypted", v8, 2u);
    }

    return 1;
  }

  if ([(ReadOnlyKeyStore *)self->_keystore unlock])
  {
    v4 = [(CoreFileHandler *)self getCoreDumpEncryptionKey:0];
    if ([(ReadOnlyKeyStore *)self->_keystore hasMatchingPrivateKey:1])
    {

      return 1;
    }

    v7 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find matching private encryption key for encrypted core", v8, 2u);
    }

    self->_zero_on_close = 0;

    return 0;
  }

  else
  {
    v6 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Keystore unlock has failed", v8, 2u);
    }

    result = 0;
    self->_zero_on_close = 0;
  }

  return result;
}

- (id)getPanicRegion
{
  v3 = [(CoreFileHandler *)self getNumCoreDumps];
  if (v3)
  {
    v4 = 0;
    while (strncmp([(CoreFileHandler *)self getCoreDumpNameWithIndex:v4], "panic_region", 0xCuLL))
    {
      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }

    v19 = 0;
    v20 = 0;
    v18 = 0;
    [(CoreFileHandler *)self getCoreDumpInfoWithIndex:v4];
    strcpy(buf, "/private/var/tmp/panicregion.XXX");
    v7 = [NSString stringWithUTF8String:mktemp(buf)];
    v17 = v7;
    v8 = [(CoreFileHandler *)self saveCoreDumpWithIndex:v4 named:@"panic region" toFileName:&v17];
    v9 = v17;

    v6 = 0;
    if (v8)
    {
      v16 = 0;
      v10 = [NSData dataWithContentsOfFile:v9 options:0 error:&v16];
      v11 = v16;
      if (!v10)
      {
        v12 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          v14 = v12;
          v15 = [v11 localizedDescription];
          *v21 = 138412290;
          v22 = v15;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to read the file contents for panic region file. Error: %@", v21, 0xCu);
        }
      }

      unlink([v9 UTF8String]);
      v6 = v10;
    }
  }

  else
  {
LABEL_5:
    v5 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to find panic region in corefile with %llu files", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)saveCoreDumpWithIndex:(unint64_t)a3 named:(id)a4 toFileName:(id *)a5
{
  v20 = a4;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  [(CoreFileHandler *)self getCoreDumpInfoWithIndex:a3];
  v8 = 0;
  if ((v21 & 4) != 0)
  {
    v8 = [(CoreFileHandler *)self getCoreDumpEncryptionKey:a3];
  }

  v18 = v8;
  v19 = self;
  if (![*a5 hasSuffix:@".gz"])
  {
    goto LABEL_11;
  }

  if ([*a5 containsString:@"cp.core.gz"])
  {
    *a5 = [*a5 stringByReplacingOccurrencesOfString:@"cp.core.gz" withString:@"coproc.core.gz"];
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:*a5];

  if (v10)
  {
    v11 = 1;
    while (1)
    {
      v12 = [NSString stringWithFormat:@"core.%llu.gz", v11];
      v13 = [*a5 rangeOfString:@"core"];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_13;
      }

      *a5 = [*a5 stringByReplacingCharactersInRange:v13 withString:{objc_msgSend(*a5, "length") - v13, v12}];
      ++v11;

      v14 = +[NSFileManager defaultManager];
      v15 = [v14 fileExistsAtPath:*a5];

      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_13:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = [(CoreFileHandler *)v19 saveCoreDumpAtOffset:v23 withLength:v22 named:v20 encryptedWithPublicKey:v18 toFileName:*a5 flags:v21];

    return v16;
  }

  return result;
}

- (BOOL)saveCoreDumpAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 named:(id)a5 encryptedWithPublicKey:(id)a6 toFileName:(id)a7 flags:(unsigned int)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v112 = v14;
    v113 = 2048;
    v114 = a3;
    v115 = 2048;
    v116 = a4;
    v117 = 1024;
    v118 = a8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found %@: offset: 0x%llx, length: 0x%llx, flags: 0x%x. Writing to disk", buf, 0x26u);
  }

  v18 = a8;
  if (a8)
  {
    v42 = qword_100042AF8;
    if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v43 = "On-disk zlib-compressed cores are not supported.";
LABEL_47:
    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_31;
  }

  v107 = 0;
  v108 = 0;
  if (!&_AACustomByteStreamOpen)
  {
    v44 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v45 = "AppleArchive is not supported.";
LABEL_22:
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v45, buf, 2u);
    }

LABEL_30:
    v42 = qword_100042AF8;
    if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v43 = "Failed to open section input stream.";
    goto LABEL_47;
  }

  s = v14;
  v19 = v16;
  v20 = v15;
  corefile_fd = self->_corefile_fd;
  scratchBuf = self->_scratchBuf;
  scratchBufSize = self->_scratchBufSize;
  v24 = malloc_type_calloc(1uLL, 0x30uLL, 0x101004041698121uLL);
  if (!v24)
  {
    v44 = qword_100042AF8;
    v15 = v20;
    v16 = v19;
    v14 = s;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v45 = "Failed to allocate section input stream data.";
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v25 = v24;
  if (lseek(corefile_fd, a3, 0) == -1)
  {
    v46 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v112 = a3;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to seek to offset %lld in kernelcore.", buf, 0xCu);
    }

    free(v25);
    v15 = v20;
    goto LABEL_29;
  }

  *v25 = corefile_fd;
  v25[1] = a4;
  v25[2] = scratchBuf;
  v25[4] = 0;
  v25[5] = 0;
  v25[3] = scratchBufSize;
  v26 = AACustomByteStreamOpen();
  if (!v26)
  {
    v47 = qword_100042AF8;
    v15 = v20;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to allocate section input stream.", buf, 2u);
    }

    free(v25);
LABEL_29:
    v16 = v19;
    v14 = s;
    goto LABEL_30;
  }

  v27 = v26;
  AACustomByteStreamSetData(v26, v25);
  AACustomByteStreamSetReadProc(v27, sub_100012638);
  AACustomByteStreamSetCloseProc(v27, sub_10001261C);
  v109 = v27;
  v15 = v20;
  if ((v18 & 4) != 0)
  {
    v50 = [(ReadOnlyKeyStore *)self->_keystore getMatchingPrivateKey:1];
    v51 = v50;
    v16 = v19;
    v52 = &unk_100042000;
    if (!v50)
    {
      v65 = qword_100042AF8;
      v14 = s;
      if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
LABEL_117:

        AAByteStreamClose(v27);
        goto LABEL_31;
      }

      *buf = 0;
      v66 = "Failed to find a matching private key for the public key.";
LABEL_119:
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, v66, buf, 2u);
      goto LABEL_117;
    }

    v53 = v50;
    v54 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (!v54)
    {
      v72 = qword_100042AF8;
      v14 = s;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Failed to allocate AEA decryption stream data.", buf, 2u);
      }

      goto LABEL_116;
    }

    v55 = v54;
    v56 = AEAContextCreateWithEncryptedStream(v27);
    *v55 = v56;
    if (v56)
    {
      v57 = AEAContextSetFieldBlob(v56, 0xBu, 1u, [v53 bytes], objc_msgSend(v53, "length"));
      v14 = s;
      if (v57 < 0)
      {
        v79 = v57;
        v80 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v112) = v79;
          _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Failed to set the private key. Error %d", buf, 8u);
        }
      }

      else
      {
        v58 = AEADecryptionInputStreamOpen(v27, *v55, 0, 1);
        v55[1] = v58;
        if (v58)
        {
          v59 = AACustomByteStreamOpen();
          if (v59)
          {
            v28 = v59;
            AACustomByteStreamSetData(v59, v55);
            AACustomByteStreamSetReadProc(v28, sub_1000127F4);
            AACustomByteStreamSetCloseProc(v28, sub_100012758);

            v108 = v28;
            v29 = &v108;
            v30 = v28;
            if ((v18 & 2) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_40;
          }

          v52 = &unk_100042000;
          v93 = qword_100042AF8;
          if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Failed to allocate AEA decryption stream.", buf, 2u);
          }

          if (AAByteStreamClose(v55[1]) == -1)
          {
            v94 = qword_100042AF8;
            if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "Failed to close AEA decrypt stream source.", buf, 2u);
            }
          }

          AEAContextDestroy(*v55);
          goto LABEL_115;
        }

        v84 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Failed to open AEA decryption stream.", buf, 2u);
        }
      }

      AEAContextDestroy(*v55);
      free(v55);
      v52 = &unk_100042000;
LABEL_116:

      v65 = *(v52 + 351);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buf = 0;
      v66 = "Failed to open AEA decryption stream.";
      goto LABEL_119;
    }

    v75 = qword_100042AF8;
    v14 = s;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Failed to create an AEA context.", buf, 2u);
    }

LABEL_115:
    free(v55);
    goto LABEL_116;
  }

  v28 = 0;
  v29 = &v109;
  v30 = v27;
  v16 = v19;
  v14 = s;
  if ((v18 & 2) == 0)
  {
LABEL_10:
    v31 = 0;
    goto LABEL_11;
  }

LABEL_40:
  if (&_compression_stream_init)
  {
    v60 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040D5368861uLL);
    if (v60)
    {
      v61 = v60;
      *v60 = v30;
      v62 = malloc_type_calloc(1uLL, 0x8000uLL, 0xE7CF3C3CuLL);
      v61[7] = v62;
      if (v62)
      {
        if (compression_stream_init((v61 + 1), COMPRESSION_STREAM_DECODE, COMPRESSION_LZ4) == COMPRESSION_STATUS_OK)
        {
          v85 = AACustomByteStreamOpen();
          if (v85)
          {
            v31 = v85;
            AACustomByteStreamSetData(v85, v61);
            AACustomByteStreamSetReadProc(v31, sub_1000128B0);
            AACustomByteStreamSetCloseProc(v31, sub_100012874);
            v107 = v31;
            v29 = &v107;
LABEL_11:
            v32 = [v16 hasSuffix:@".gz"];
            v33 = [v16 UTF8String];
            v34 = v33;
            if (v32)
            {
              v35 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
              if (v35)
              {
                v36 = v35;
                v37 = gzopen(v34, "wb");
                *v36 = v37;
                if (v37)
                {
                  v38 = AACustomByteStreamOpen();
                  if (v38)
                  {
                    v39 = v38;
                    sa = v31;
                    AACustomByteStreamSetData(v38, v36);
                    AACustomByteStreamSetWriteProc(v39, sub_100012A24);
                    AACustomByteStreamSetCloseProc(v39, sub_1000129F0);
                    v40 = 0;
                    v41 = v39;
                    goto LABEL_52;
                  }

                  v86 = qword_100042AF8;
                  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Failed to allocate gzip output stream.", buf, 2u);
                  }

                  free(v36);
                  gzclose(*v36);
                }

                else
                {
                  v82 = v31;
                  v83 = qword_100042AF8;
                  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
                  {
                    v101 = v83;
                    v102 = __error();
                    v103 = strerror(*v102);
                    *buf = 136315394;
                    v112 = v34;
                    v113 = 2080;
                    v114 = v103;
                    _os_log_error_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "gzopen(%s, wb) error: %s", buf, 0x16u);
                  }

                  free(v36);
                  v31 = v82;
                }
              }

              else
              {
                v76 = qword_100042AF8;
                if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to allocate gzip output stream data.", buf, 2u);
                }
              }

              v77 = qword_100042AF8;
              if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_92;
              }

              *buf = 0;
              v78 = "Failed to open gzip output stream.";
            }

            else
            {
              v67 = AAFileStreamOpenWithPath(v33, 1537, 0x1B6u);
              if (v67)
              {
                v40 = v67;
                sa = v31;
                v39 = 0;
                v41 = v67;
LABEL_52:
                v68 = AAByteStreamProcess(*v29, v41);
                v69 = v68 >> 63;
                if ((v68 & 0x8000000000000000) != 0)
                {
                  v70 = v68;
                  log = qword_100042AF8;
                  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v112 = v70;
                    _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to process the coredump through the byte streams. Error %lld", buf, 0xCu);
                  }
                }

                v71 = v69 ^ 1;
                if (v40)
                {
                  AAByteStreamClose(v40);
                }

                v31 = sa;
                if (v39)
                {
                  AAByteStreamClose(v39);
                }

                goto LABEL_93;
              }

              v77 = qword_100042AF8;
              if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
              {
LABEL_92:
                v71 = 0;
LABEL_93:
                if (v31)
                {
                  AAByteStreamClose(v31);
                }

                goto LABEL_95;
              }

              *buf = 0;
              v78 = "Failed to open file output stream.";
            }

            _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, v78, buf, 2u);
            goto LABEL_92;
          }

          v63 = qword_100042AF8;
          if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_76;
          }

          *buf = 0;
          v64 = "Failed to allocate lz4 decode stream.";
          goto LABEL_125;
        }

        v63 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v64 = "Failed to initialize lz4 decode stream data.";
LABEL_125:
          _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, v64, buf, 2u);
        }
      }

      else
      {
        v63 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v64 = "Failed to allocate lz4 decode stream data buffer.";
          goto LABEL_125;
        }
      }

LABEL_76:
      free(v61);
      goto LABEL_77;
    }

    v73 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v74 = "Failed to allocate lz4 decode stream data.";
      goto LABEL_67;
    }
  }

  else
  {
    v73 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v74 = "LZ4 decode stream is not supported.";
LABEL_67:
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, v74, buf, 2u);
    }
  }

LABEL_77:
  v81 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to open lz4 decode stream.", buf, 2u);
  }

  v71 = 0;
LABEL_95:
  if (v28)
  {
    AAByteStreamClose(v28);
  }

  AAByteStreamClose(v27);
  if (v71)
  {
    v87 = [v16 UTF8String];
    v88 = open(v87, 0);
    if (v88 < 0)
    {
      v91 = qword_100042AF8;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        v98 = v91;
        v99 = __error();
        v100 = strerror(*v99);
        *buf = 136315394;
        v112 = v87;
        v113 = 2080;
        v114 = v100;
        _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "Failed to open %s to mark as purgeable. Error: %s", buf, 0x16u);
      }
    }

    else
    {
      v89 = v88;
      v110 = 67589;
      if (!ffsctl(v88, 0xC0084A44uLL, &v110, 0))
      {
        close(v89);
LABEL_108:
        v48 = 1;
        goto LABEL_32;
      }

      v90 = qword_100042AF8;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        v95 = v90;
        v96 = __error();
        v97 = strerror(*v96);
        *buf = 136315394;
        v112 = v87;
        v113 = 2080;
        v114 = v97;
        _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Failed to mark %s as purgeable. Error: %s", buf, 0x16u);
      }

      close(v89);
    }

    v92 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Failed to mark the coredump output file as purgeable.", buf, 2u);
    }

    goto LABEL_108;
  }

LABEL_31:
  v48 = 0;
LABEL_32:

  return v48;
}

- (id)getCoreDumpContentsWithOffset:(unint64_t)a3 AndLength:(unint64_t)a4
{
  v4 = qword_100042AF8;
  if (!a4)
  {
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "getCoreDumpContentsWithOffset called with zero length", buf, 2u);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "copying %llu bytes", buf, 0xCu);
  }

  if (lseek(self->_corefile_fd, a3, 0) != -1)
  {
    v8 = [[NSMutableData alloc] initWithLength:a4];
    v9 = [v8 mutableBytes];
    v10 = 0;
    while (1)
    {
      v11 = self->_scratchBufSize >= ((a4 - v10 + vm_page_size - 1) & -vm_page_size) ? (a4 - v10 + vm_page_size - 1) & -vm_page_size : self->_scratchBufSize;
      v12 = read(self->_corefile_fd, self->_scratchBuf, v11);
      if (v12 != v11)
      {
        break;
      }

      if (v11 >= a4 - v10)
      {
        v11 = a4 - v10;
      }

      memmove(v9, self->_scratchBuf, v11);
      v10 += v11;
      v9 += v11;
      if (v10 >= a4)
      {
        v13 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v26 = a3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Finished extracting core file data from file offset %llu\n", buf, 0xCu);
        }

        goto LABEL_27;
      }
    }

    v19 = v12;
    v20 = qword_100042AF8;
    v21 = os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR);
    if (v19 == -1)
    {
      if (v21)
      {
        v23 = v20;
        v24 = *__error();
        *buf = 134219008;
        v26 = v11;
        v27 = 2048;
        v28 = v10;
        v29 = 2048;
        v30 = a3;
        v31 = 2048;
        v32 = a4;
        v33 = 1024;
        LODWORD(v34) = v24;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Read of %lu bytes from dataOffset %llu (file offset from %llu)(total length %llu) failed with error %{errno}d", buf, 0x30u);
      }

      goto LABEL_25;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    *buf = 134219008;
    v26 = v11;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = a3;
    v31 = 2048;
    v32 = a4;
    v33 = 2048;
    v34 = v19;
    v16 = "Read of %lu bytes from dataOffset %llu (file offset from %llu)(total length %llu) only read %lu bytes";
    v17 = v20;
    v18 = 52;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
LABEL_25:

    goto LABEL_26;
  }

  v14 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
  {
    v8 = v14;
    v15 = *__error();
    *buf = 134218240;
    v26 = a3;
    v27 = 1024;
    LODWORD(v28) = v15;
    v16 = "lseek() to file offset 0x%llx returned -1 (%{errno}d)";
    v17 = v8;
    v18 = 18;
    goto LABEL_22;
  }

LABEL_26:
  v8 = 0;
LABEL_27:

  return v8;
}

- (void)dealloc
{
  v2 = self;
  close(self->_corefile_fd);
  free(v2->_scratchBuf);
  if (v2->_zero_on_close)
  {
    v3 = [(CoreFileHandler *)v2 getCorefileZeroRanges];
    v4 = malloc_type_calloc(1uLL, 0x100000uLL, 0x538426AuLL);
    if (!v4)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v5 = v4;
    v6 = open_dprotected_np([(NSString *)v2->_corefilePath UTF8String], 2, 0, 0);
    if (v6 == -1)
    {
      v27 = qword_100042AF8;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        corefilePath = v2->_corefilePath;
        v31 = v27;
        v32 = *__error();
        *buf = 138412546;
        v41 = corefilePath;
        v42 = 1024;
        LODWORD(v43) = v32;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "open_dprotected_np(%@, O_RDWR): -1 (%{errno}d)", buf, 0x12u);
      }

      free(v5);
    }

    else
    {
      v7 = v6;
      v34 = v2;
      fcntl(v6, 48, 1);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v33 = v3;
      v8 = v3;
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            v14 = [v13 objectAtIndexedSubscript:0];
            v15 = [v14 unsignedLongLongValue];

            v16 = [v13 objectAtIndexedSubscript:1];
            v17 = [v16 unsignedLongLongValue];

            if (lseek(v7, v15, 0) == -1)
            {
              v25 = qword_100042AF8;
              if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
              {
                v28 = v25;
                v29 = *__error();
                *buf = 134218240;
                v41 = v15;
                v42 = 1024;
                LODWORD(v43) = v29;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "lseek() to file offset 0x%llx returned -1 (%{errno}d)", buf, 0x12u);
              }

              goto LABEL_27;
            }

            if (v17)
            {
              while (1)
              {
                v18 = v17 >= 0x100000 ? 0x100000 : v17;
                v19 = write(v7, v5, v18);
                if (v19 != v18)
                {
                  break;
                }

                v17 -= v18;
                if (!v17)
                {
                  goto LABEL_22;
                }
              }

              v20 = v19;
              v21 = qword_100042AF8;
              v22 = os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR);
              if (v20 == -1)
              {
                if (v22)
                {
                  v23 = v21;
                  v24 = *__error();
                  *buf = 134218240;
                  v41 = v18;
                  v42 = 1024;
                  LODWORD(v43) = v24;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "error zeroing corefile: write(%zu): (%{errno}d)", buf, 0x12u);
                }
              }

              else if (v22)
              {
                *buf = 134218240;
                v41 = v18;
                v42 = 2048;
                v43 = v20;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "error zeroing corefile, attempted to write %zu bytes, wrote %zu bytes", buf, 0x16u);
              }
            }

LABEL_22:
            ;
          }

          v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      fsync(v7);
      close(v7);
      free(v5);
      v26 = qword_100042AF8;
      v3 = v33;
      v2 = v34;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "erased corefile contents", buf, 2u);
      }
    }
  }

  v35.receiver = v2;
  v35.super_class = CoreFileHandler;
  [(CoreFileHandler *)&v35 dealloc];
}

- (CoreFileHandler)initWithCoreFilePath:(char *)a3 :(BOOL)a4 :(id)a5 :(unint64_t)a6 :(void *)a7 :(unint64_t)a8
{
  v14 = a5;
  v47.receiver = self;
  v47.super_class = CoreFileHandler;
  v15 = [(CoreFileHandler *)&v47 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

  v15->_scratchBufSize = 0x100000;
  v17 = malloc_type_aligned_alloc(vm_page_size, 0x100000uLL, 0xE65516E5uLL);
  v16->_scratchBuf = v17;
  if (!v17)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_34:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (v14)
  {
    v18 = v14;
  }

  else
  {
    v19 = [LockedReadOnlyKeyStore alloc];
    v18 = [(ReadOnlyKeyStore *)v19 init:qword_100042AF8];
  }

  keystore = v16->_keystore;
  v16->_keystore = v18;

  v16->_zero_on_close = a4;
  v21 = [NSString stringWithUTF8String:a3];
  corefilePath = v16->_corefilePath;
  v16->_corefilePath = v21;

  v23 = open_dprotected_np([(NSString *)v16->_corefilePath UTF8String], 0, 0, 2);
  v16->_corefile_fd = v23;
  if (v23 == -1)
  {
    v31 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      v32 = v16->_corefilePath;
      v33 = v31;
      v34 = *__error();
      v52.st_dev = 138412546;
      *&v52.st_mode = v32;
      WORD2(v52.st_ino) = 1024;
      *(&v52.st_ino + 6) = v34;
      v35 = "open_dprotected_np(%@, O_RDONLY): -1 (%{errno}d)";
      v36 = &v52;
LABEL_18:
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v35, v36, 0x12u);
    }

LABEL_29:
    v30 = 0;
    goto LABEL_30;
  }

  memset(&v52, 0, sizeof(v52));
  if (fstat(v23, &v52) == -1)
  {
    v37 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      v38 = v16->_corefilePath;
      v33 = v37;
      v39 = *__error();
      *buf = 138412546;
      v49 = v38;
      v50 = 1024;
      LODWORD(v51) = v39;
      v35 = "stat(%@): -1 (%{errno}d)";
      v36 = buf;
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v16->_corefileSize = v52.st_size;
  v24 = (a8 + vm_page_size - 1) & -vm_page_size;
  v25 = malloc_type_aligned_alloc(vm_page_size, v24, 0x971D178FuLL);
  if (!v25)
  {
    goto LABEL_34;
  }

  v26 = v25;
  v27 = read(v16->_corefile_fd, v25, v24);
  if (v27 != v24)
  {
    v40 = v27;
    v41 = qword_100042AF8;
    v42 = os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR);
    if (v40 == -1)
    {
      if (v42)
      {
        v45 = v41;
        v46 = *__error();
        *buf = 134218240;
        v49 = v24;
        v50 = 1024;
        LODWORD(v51) = v46;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "failed to read header from corefile (%zd bytes) with error: %{errno}d", buf, 0x12u);
      }
    }

    else if (v42)
    {
      *buf = 134218240;
      v49 = v24;
      v50 = 2048;
      v51 = v40;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Read of %lu bytes from fileoffset 0 only read %lu bytes", buf, 0x16u);
    }

    free(v26);
    goto LABEL_28;
  }

  memmove(a7, v26, a8);
  free(v26);
  v28 = *a7;
  if (*a7 != a6)
  {
    v43 = qword_100042AF8;
    if (v28)
    {
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v49 = v28;
        v50 = 2048;
        v51 = a6;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "invalid core file signature: %#llx (expected :%#llx)", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "no core file data found", buf, 2u);
    }

LABEL_28:
    close(v16->_corefile_fd);
    goto LABEL_29;
  }

  v29 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v49 = a6;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Found corefile with signature %#llx", buf, 0xCu);
  }

  v30 = v16;
LABEL_30:

  return v30;
}

@end
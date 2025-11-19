void sub_100012258(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, double a7)
{
  v13 = a1;
  v14 = a4;
  v15 = a2;
  v16 = [[PanicReport alloc] initWithPanicString:v13 otherString:0 buildVersion:0 panicFlags:0 panicType:@"corrupt data" incidentID:0 rootsInstalled:0];
  [(PanicReport *)v16 useStackshotBuffer:0 size:0 frontmostPids:0 atTime:a3 machTime:0xFFFFFFFFLL sequence:a7];
  [(PanicReport *)v16 addNotes:v15];

  [(PanicReport *)v16 setAppleCareDetails:&__NSArray0__struct];
  v17 = [NSURL fileURLWithPath:v14];

  v18 = sub_10000C138(v17, 0, a7);
  LOBYTE(v15) = [(PanicReport *)v16 saveWithOptions:v18];

  if ((v15 & 1) == 0)
  {
    v19 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to write out error panic log", buf, 2u);
    }
  }

  *a5 = [v13 copy];
  v20 = [(PanicReport *)v16 logfile];
  *a6 = [v20 copy];
}

uint64_t sub_10001240C(unsigned int *a1, unint64_t a2, void *a3)
{
  *a3 = 0;
  v4 = *a1;
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = 8;
    }

    else
    {
      if (v4 != 4)
      {
        result = _os_crash();
        __break(1u);
        return result;
      }

      v5 = 5;
    }
  }

  else
  {
    v5 = 44;
  }

  v6 = *(a1 + 2);
  if (v6 < v5)
  {
    v7 = [NSString stringWithFormat:@"invalid iBoot log metadata: (type %d) size invalid, found %llu, expected at least %lu", v4, v6, v5];
    *a3 = v7;
    v8 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 1);
  if (v9 + v6 > a2)
  {
    v10 = [NSString stringWithFormat:@"invalid iBoot log metadata: (type %d) points outside of panic buffer : offset: %llu, size: %llu, bytes_read: %llu", v4, v9, v6, a2];
    *a3 = v10;
    v8 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v10;
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_1000125A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    [v5 setPatternType:a3];
    [*(a1 + 32) setPatternUUID:v6];
  }
}

size_t sub_100012638(uint64_t a1, void *__dst, size_t a3)
{
  v3 = 0;
  if (!a3)
  {
    return v3;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return v3;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 32);
LABEL_12:
    if (v8 >= a3)
    {
      v3 = a3;
    }

    else
    {
      v3 = v8;
    }

    memcpy(__dst, v9, v3);
    v14 = *(a1 + 40) - v3;
    *(a1 + 32) += v3;
    *(a1 + 40) = v14;
    *(a1 + 8) -= v3;
    return v3;
  }

  v10 = *a1;
  v11 = (vm_page_size + v5 - 1) / vm_page_size * vm_page_size;
  if (*(a1 + 24) >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v13 = read(v10, *(a1 + 16), v12);
  if (v13 != -1)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v13 < v8)
    {
      v8 = v13;
    }

    *(a1 + 32) = v9;
    *(a1 + 40) = v8;
    goto LABEL_12;
  }

  v16 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to read from kernelcore file.", v17, 2u);
  }

  return -1;
}

uint64_t sub_100012758(AEAContext *a1)
{
  v2 = AAByteStreamClose(a1[1]);
  if (v2 == -1)
  {
    v3 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to close AEA decrypt stream source.", v5, 2u);
    }
  }

  AEAContextDestroy(*a1);
  free(a1);
  return v2;
}

ssize_t sub_1000127F4(uint64_t a1, void *a2, size_t a3)
{
  v3 = AAByteStreamRead(*(a1 + 8), a2, a3);
  if (v3 == -1)
  {
    v4 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to read from AEA decrypt stream source.", v6, 2u);
    }
  }

  return v3;
}

uint64_t sub_100012874(uint64_t a1)
{
  compression_stream_destroy((a1 + 8));
  free(*(a1 + 56));
  free(a1);
  return 0;
}

uint64_t sub_1000128B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (!a3 || (*(a1 + 48) & 1) != 0)
  {
    return result;
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  while (1)
  {
    if (*(a1 + 32))
    {
      v6 = 0;
      goto LABEL_8;
    }

    v7 = AAByteStreamRead(*a1, *(a1 + 56), 8uLL);
    if (v7 == -1)
    {
      break;
    }

    *(a1 + 24) = *(a1 + 56);
    *(a1 + 32) = v7;
    v6 = v7 == 0;
LABEL_8:
    v8 = compression_stream_process((a1 + 8), v6);
    if (v8)
    {
      if (v8 == COMPRESSION_STATUS_END)
      {
        *(a1 + 48) = 1;
      }

      else if (v8 == COMPRESSION_STATUS_ERROR)
      {
        v9 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          v12 = 0;
          v10 = "Failed to decode from lz4 stream source.";
          v11 = &v12;
          goto LABEL_21;
        }

        return -1;
      }

      return a3 - *(a1 + 16);
    }

    if (*(a1 + 16) != a3)
    {
      return a3 - *(a1 + 16);
    }
  }

  v9 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v10 = "Failed to read from lz4 decode stream source.";
    v11 = buf;
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
  }

  return -1;
}

uint64_t sub_1000129F0(gzFile *a1)
{
  gzclose(*a1);
  free(a1);
  return 0;
}

z_size_t sub_100012A24(gzFile *a1, voidpc buf, z_size_t nitems)
{
  v3 = nitems;
  if (nitems && gzfwrite(buf, 1uLL, nitems, *a1) != nitems)
  {
    errnum = 0;
    v5 = gzerror(*a1, &errnum);
    if (errnum == -1)
    {
      v6 = __error();
      v5 = strerror(*v6);
    }

    v7 = v5;
    v8 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *bufa = 136315138;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to write to gzip output file with error: %s.", bufa, 0xCu);
    }

    return -1;
  }

  return v3;
}

uint64_t sub_100012B20(void *a1, void *a2, int a3)
{
  v5 = a1;
  if (a2)
  {
    v6 = v5;
    if ([v5 length])
    {
      *a2 = 0;
      v7 = open([v6 UTF8String], 0x20000000);
      if (v7 < 0)
      {
        if (*__error() == 2)
        {
          if (mkdir([v6 UTF8String], a3) != -1)
          {
            v11 = 1;
LABEL_18:

            return v11;
          }

          v13 = __error();
          [NSString stringWithFormat:@"Error creating directory at : %@ : %s", v6, strerror(*v13)];
        }

        else
        {
          v12 = __error();
          [NSString stringWithFormat:@"failed to open directory at path : %@ with error : %s", v6, strerror(*v12)];
        }

        *a2 = v11 = 0;
        goto LABEL_18;
      }

      v8 = v7;
      memset(&v19, 0, sizeof(v19));
      if (fstat(v7, &v19))
      {
        v9 = __error();
        v17 = v6;
        v18 = strerror(*v9);
        v10 = @"fstat of %@ failed with error: %s";
      }

      else
      {
        if ((v19.st_mode & 0xF000) == 0x4000)
        {
          if (v19.st_mode != a3)
          {
            if (fchmod(v8, a3))
            {
              v15 = __error();
              v17 = v6;
              v18 = strerror(*v15);
              v10 = @"fchmod of path : %@ failed with error : %s";
              goto LABEL_14;
            }

            if (fchown(v8, 0, 0) == -1)
            {
              v16 = __error();
              v17 = v6;
              v18 = strerror(*v16);
              v10 = @"fchown of path : %@ failed with error : %s";
              goto LABEL_14;
            }
          }

          v11 = 1;
LABEL_15:
          close(v8);
          goto LABEL_18;
        }

        v17 = v6;
        v10 = @"path exists but is not directory : %@";
      }

LABEL_14:
      [NSString stringWithFormat:v10, v17, v18];
      *a2 = v11 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_100012D4C(id a1)
{
  size = 0;
  v1 = sysctlbyname("kern.kdp_corefile", 0, &size, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    v14 = v2;
    v8 = "Failed to query the size of kdp_corefile. Error: %d";
    goto LABEL_13;
  }

  if (size)
  {
    v4 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      v6 = sysctlbyname("kern.kdp_corefile", v4, &size, 0, 0);
      if (!v6)
      {
        off_100042068 = v5;
        return;
      }

      v7 = v6;
      free(v5);
      v3 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v14 = v7;
        v8 = "Failed to query kdp_corefile. Error: %d";
LABEL_13:
        v10 = v3;
        v11 = 8;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = "Failed to allocate memory for kdp_corefile buffer";
        v10 = v9;
        v11 = 2;
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, buf, v11);
      }
    }
  }
}

id sub_100014238(const char *a1, const char *a2, char *a3, const char *a4, unsigned int a5)
{
  if (!a1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_67;
  }

  if (!a2)
  {
LABEL_67:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_68:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_68;
  }

  v10 = IOServiceMatching(a1);
  if (!v10)
  {
    v19 = qword_100042B10;
    if (!os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Failed to create matching dict";
LABEL_64:
    v17 = v19;
    v18 = 2;
    goto LABEL_65;
  }

  v11 = v10;
  v12 = [NSString stringWithUTF8String:a3];
  v56 = v12;
  CFDictionarySetValue(v11, @"IOPropertyExistsMatch", [NSArray arrayWithObjects:&v56 count:1]);

  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v11, &existing);
  if (MatchingServices)
  {
    v14 = MatchingServices;
    v15 = qword_100042B10;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v58) = v14;
      v16 = "Failed to get matching socd ioservices: 0x%x";
      v17 = v15;
      v18 = 8;
LABEL_65:
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    }

LABEL_9:
    v52 = 0;
    goto LABEL_10;
  }

  if (!existing)
  {
    v19 = qword_100042B10;
    if (!os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "IOService match returned an empty iterator";
    goto LABEL_64;
  }

  cStr = a3;
  v52 = objc_alloc_init(NSMutableArray);
  if (a5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = a5;
  }

  v54 = v21;
LABEL_18:
  if (IOIteratorIsValid(existing))
  {
    while (1)
    {
      v22 = IOIteratorNext(existing);
      if (!v22)
      {
        if (!IOIteratorIsValid(existing))
        {
          IOIteratorReset(existing);
          [v52 removeAllObjects];
          goto LABEL_18;
        }

        goto LABEL_58;
      }

      v23 = v22;
      if (a4)
      {
        v24 = qword_100042B10;
        if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Waiting for SOCD data collection to complete", buf, 2u);
        }

        v25 = CFStringCreateWithCString(kCFAllocatorDefault, a4, 0x8000100u);
        v26 = v54;
        if (v25)
        {
          while (1)
          {
            CFProperty = IORegistryEntryCreateCFProperty(v23, v25, kCFAllocatorDefault, 0);
            if (!CFProperty)
            {
              goto LABEL_38;
            }

            v28 = CFProperty;
            v29 = CFGetTypeID(CFProperty);
            if (v29 != CFBooleanGetTypeID())
            {
              break;
            }

            Value = CFBooleanGetValue(v28);
            CFRelease(v28);
            v31 = qword_100042B10;
            v32 = os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_DEFAULT);
            if (!Value)
            {
              if (v32)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SOCD data collection is complete. Checking for data", buf, 2u);
              }

LABEL_38:
              CFRelease(v25);
              goto LABEL_39;
            }

            if (v32)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SOCD data collection still in progress", buf, 2u);
            }

            usleep(0x186A0u);
            if (!--v26)
            {
              goto LABEL_38;
            }
          }

          v36 = qword_100042B10;
          if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
          {
            v47 = v36;
            v48 = CFGetTypeID(v28);
            *buf = 136315394;
            v58 = a4;
            v59 = 2048;
            v60 = v48;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s of unexpected type %lu", buf, 0x16u);
          }

          CFRelease(v28);
          CFRelease(v25);
        }

        else
        {
          v33 = qword_100042B10;
          if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v58 = a4;
            v34 = v33;
            v35 = "Error creating CFString for key %s";
            goto LABEL_51;
          }
        }

        goto LABEL_53;
      }

LABEL_39:
      v37 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
      if (!v37)
      {
        break;
      }

      v38 = v37;
      v39 = IORegistryEntryCreateCFProperty(v23, v37, kCFAllocatorDefault, 0);
      CFRelease(v38);
      if (!v39)
      {
        v44 = qword_100042B10;
        if (!os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *buf = 136315394;
        v58 = a2;
        v59 = 2080;
        v60 = a1;
        v34 = v44;
        v35 = "Failed to read %s in %s. This most probably means there's just no SOCD data";
        v45 = 22;
        goto LABEL_52;
      }

      v40 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      if (!v40)
      {
        v46 = qword_100042B10;
        if (!os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *buf = 136315138;
        v58 = cStr;
        v34 = v46;
        v35 = "Error creating CFString for key %s";
        goto LABEL_51;
      }

      v41 = v40;
      if (IORegistryEntrySetCFProperty(v23, v40, &off_10003C448))
      {
        v42 = qword_100042B10;
        if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v58 = cStr;
          v34 = v42;
          v35 = "Failed to write %s";
          goto LABEL_51;
        }

LABEL_53:
        v39 = 0;
        goto LABEL_54;
      }

      CFRelease(v41);
      [v52 addObject:v39];
LABEL_54:
      IOObjectRelease(v23);
    }

    v43 = qword_100042B10;
    if (!os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *buf = 136315138;
    v58 = a2;
    v34 = v43;
    v35 = "Error creating CFString for key %s";
LABEL_51:
    v45 = 12;
LABEL_52:
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, v45);
    goto LABEL_53;
  }

LABEL_58:
  v49 = IOObjectRelease(existing);
  if (v49)
  {
    v50 = v49;
    v51 = qword_100042B10;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v58 = a1;
      v59 = 1024;
      LODWORD(v60) = v50;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to release socd ioservice (%s) iterator: 0x%x", buf, 0x12u);
    }
  }

LABEL_10:

  return v52;
}

uint64_t sub_1000148D0(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;

    v3 = sub_10001498C(v2);
    if (v3)
    {
      v4 = [NSNumber numberWithUnsignedInt:1];
      v5 = [v3 objectForKey:v4];

      if (v5)
      {
        v6 = ([v5 unsignedCharValue] & 0x18) != 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

id sub_10001498C(void *a1)
{
  v1 = a1;

  v27[0] = xmmword_100039118;
  v27[1] = *&off_100039128;
  v27[2] = xmmword_100039138;
  v28 = 0;
  v26[0] = v27;
  v26[1] = v1;
  v25 = 0;
  v2 = sub_100025F24(&v25, v26);
  if (v2)
  {
    v3 = v2;
    v4 = qword_100042B10;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = v3;
      v5 = "Failed to create a SOCD handle: %d";
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, buf, 8u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v6 = sub_100025DC8(v25);
  if (v6)
  {
    v7 = v6;
    v4 = qword_100042B10;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = v7;
      v5 = "Failed to load the SOCD container: %d";
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    v11 = 0;
LABEL_12:
    free(v11);
    sub_100025FB8(v25);

    v10 = 0;
    goto LABEL_13;
  }

  count = 0;
  v8 = sub_100025CCC(v25, 0, 0, &count);
  if (v8)
  {
    v9 = v8;
    v4 = qword_100042B10;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = v9;
      v5 = "Failed to get the number of agents: %d";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (count)
  {
    v11 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
    v13 = sub_100025CCC(v25, v11, count, &count);
    if (v13)
    {
      v14 = v13;
      v15 = qword_100042B10;
      if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v30 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get the agent IDs: %d", buf, 8u);
      }

      v10 = 0;
      goto LABEL_12;
    }

    v10 = [NSMutableDictionary dictionaryWithCapacity:count];
    if (count)
    {
      v16 = 0;
      while (1)
      {
        v17 = v11[v16];
        v23 = 0;
        v18 = sub_100025D38(v25, v17, &v23);
        if (v18)
        {
          break;
        }

        v19 = [NSNumber numberWithUnsignedChar:v23];
        v20 = [NSNumber numberWithUnsignedInt:v17];
        [v10 setObject:v19 forKey:v20];

        if (++v16 >= count)
        {
          goto LABEL_26;
        }
      }

      v21 = v18;
      v22 = qword_100042B10;
      if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v30 = v17;
        v31 = 1024;
        v32 = v21;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to get the exclusive section for agent %d: %d", buf, 0xEu);
      }

      goto LABEL_12;
    }

LABEL_26:
    free(v11);
    sub_100025FB8(v25);
  }

  else
  {
    v10 = +[NSDictionary dictionary];
  }

LABEL_13:

  return v10;
}

uint64_t sub_100014D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 47;
  if (a1 && a3)
  {
    v8 = a1;
    v9 = v8;
    if (__CFADD__(a2, a4) || a2 + a4 > [v8 length])
    {
      v4 = 48;
    }

    else
    {
      [v9 getBytes:a3 range:{a2, a4}];
      v4 = 0;
    }
  }

  return v4;
}

__CFString *sub_100014DB0(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  v2 = v1;

  v3 = sub_10001498C(v2);
  if (v3)
  {
    v4 = 1;
    v5 = [NSNumber numberWithUnsignedInt:1];
    v6 = [v3 objectForKey:v5];

    v7 = [NSNumber numberWithUnsignedInt:0];
    v8 = [v3 objectForKey:v7];

    if (v6)
    {
      v4 = ([v6 unsignedCharValue] & 6) == 0;
    }

    if (v8)
    {
      v9 = [v8 unsignedCharValue];
    }

    else
    {
      v9 = 0;
    }

    v10 = [NSMutableString stringWithString:@"SOCD report detected:"];
    if (sub_1000148D0(v2))
    {
      [(__CFString *)v10 appendString:@" (AP watchdog expired)"];
      v11 = 1;
      if (v4)
      {
LABEL_14:
        if ((v9 & 0x18) != 0)
        {
          [(__CFString *)v10 appendString:@" (iBoot async abort)"];
          v11 = 1;
        }

        if ((v9 & 6) != 0)
        {
          [(__CFString *)v10 appendString:@" (iBoot sync abort)"];
          if ((v9 & 0x60) == 0)
          {
            goto LABEL_22;
          }
        }

        else if ((v9 & 0x60) == 0)
        {
          if (v11)
          {
            goto LABEL_22;
          }

          v12 = @" (Unknown)";
LABEL_21:
          [(__CFString *)v10 appendString:v12];
LABEL_22:

          goto LABEL_23;
        }

        v12 = @" (iBoot panic)";
        goto LABEL_21;
      }
    }

    else
    {
      v11 = 0;
      if (v4)
      {
        goto LABEL_14;
      }
    }

    [(__CFString *)v10 appendString:@" (SMC panic)"];
    v11 = 1;
    goto LABEL_14;
  }

  v10 = @"SOCD report detected: failed to read socd header";
LABEL_23:

  return v10;
}

uint64_t sub_100014F9C(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a4;
  if (!a2)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_47;
  }

  if (!a3)
  {
LABEL_47:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_48;
  }

  v11 = v10;
  if (!v11)
  {
LABEL_48:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_49;
  }

  v12 = v11;

  *a2 = 0;
  *a3 = 0;
  if (![v12 count])
  {
    v25 = 1;
    goto LABEL_45;
  }

  v48 = a2;
  v49 = a3;
  v51 = v9;
  v54 = objc_alloc_init(NSMutableArray);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v50 = v12;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *v57;
    do
    {
      v19 = 0;
      v20 = v15;
      v21 = v16;
      v22 = v17;
      do
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v56 + 1) + 8 * v19);

        v23 = objc_alloc_init(NSMutableArray);
        v17 = sub_100014DB0(v15);

        v24 = sub_1000148D0(v15);
        v16 = [v15 base64EncodedStringWithOptions:0];

        [v23 addObject:v16];
        [v23 addObject:v17];
        [v54 addObject:v23];

        v19 = v19 + 1;
        v20 = v15;
        v21 = v16;
        v22 = v17;
      }

      while (v14 != v19);
      v14 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v24 = 0;
  }

  v26 = [PanicReport alloc];
  v27 = [obj lastObject];
  if (!v27)
  {
LABEL_49:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v28 = v27;

  v29 = sub_10001498C(v28);
  v30 = @"socd";
  if (v29)
  {
    obja = v26;
    v31 = 1;
    v32 = [NSNumber numberWithUnsignedInt:1];
    v33 = [v29 objectForKey:v32];

    v34 = [NSNumber numberWithUnsignedInt:0];
    v35 = [v29 objectForKey:v34];

    if (v33)
    {
      v31 = ([v33 unsignedCharValue] & 6) == 0;
    }

    if (v35)
    {
      v36 = [v35 unsignedCharValue];
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_1000148D0(v28);
    v38 = @"socd-ap watchdog";
    if (v37)
    {
      v39 = 2;
    }

    else
    {
      v38 = @"socd";
      v39 = 1;
    }

    if (v31)
    {
      v39 = v37;
    }

    else
    {
      v38 = @"socd-smc panic";
    }

    if ((v36 & 0x18) != 0)
    {
      ++v39;
      v38 = @"socd-iboot async abort";
    }

    if ((v36 & 6) != 0)
    {
      ++v39;
      v38 = @"socd-iboot sync abort";
    }

    if ((v36 & 0x60) != 0)
    {
      ++v39;
      v38 = @"socd-iboot panic";
    }

    if (v39 <= 1)
    {
      v30 = v38;
    }

    else
    {
      v30 = @"socd-multi";
    }

    v26 = obja;
  }

  v40 = v30;
  v41 = [(PanicReport *)v26 initWithPanicString:v17 otherString:&stru_100039908 buildVersion:&stru_100039908 panicFlags:0 panicType:v40 incidentID:0 rootsInstalled:0];

  [(PanicReport *)v41 useSocdContainer:v54];
  [(PanicReport *)v41 setSOCIdAndRev];
  if (v24)
  {
    v42 = off_100042010;
    [(PanicReport *)v41 setForegroundAppHash:v42];
  }

  [(PanicReport *)v41 setAppleCareDetails:&__NSArray0__struct];
  v9 = v51;
  v43 = sub_10000C138(v51, 0, a5);
  v25 = [(PanicReport *)v41 saveWithOptions:v43];
  if (v25)
  {
    v44 = v17;
    *v48 = v17;
    v45 = [(PanicReport *)v41 logfile];
    *v49 = [v45 copy];

    v12 = v50;
  }

  else
  {
    v46 = qword_100042B10;
    v12 = v50;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to write panic file", buf, 2u);
    }
  }

LABEL_45:
  return v25;
}

id sub_10001906C(double a1)
{
  v2 = objc_opt_new();
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  if (qword_100042AC0 != -1)
  {
    dispatch_once(&qword_100042AC0, &stru_100038F78);
  }

  if (byte_100042AB9 == 1)
  {
    v4 = [NSTimeZone timeZoneWithName:@"UTC"];
    [v2 setTimeZone:v4];
  }

  [v2 setLocale:v3];
  [v2 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1];
  v6 = [v2 stringFromDate:v5];

  return v6;
}

id sub_100019194(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  [*(a1 + 32) getCoreDumpInfoWithIndex:*(a1 + 40) - 1 :&v9 :&v8 :&v7];
  v10[0] = @"CorefileDataSize";
  v2 = [NSNumber numberWithUnsignedLongLong:(v8 + v9) >> 20];
  v11[0] = v2;
  v10[1] = @"NumCores";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v11[1] = v3;
  v10[2] = @"DRAMSizeMB";
  if (qword_100042B08 != -1)
  {
    dispatch_once(&qword_100042B08, &stru_100039198);
  }

  v4 = [NSNumber numberWithInt:dword_100042B00];
  v11[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v5;
}

id sub_1000192FC(uint64_t a1)
{
  v10[0] = @"coreName";
  v2 = [NSString stringWithUTF8String:*(a1 + 32)];
  v11[0] = v2;
  v10[1] = @"coreSize";
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [NSNumber numberWithInt:v4];
  v11[1] = v5;
  v10[2] = @"DRAMSizeMB";
  if (qword_100042B08 != -1)
  {
    dispatch_once(&qword_100042B08, &stru_100039198);
  }

  v6 = [NSNumber numberWithInt:dword_100042B00];
  v11[2] = v6;
  v10[3] = @"coreDumpDuration";
  v7 = [NSNumber numberWithInt:*(a1 + 44)];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

void sub_100019474(id a1)
{
  v5 = 8;
  v6 = 0;
  if (sysctlbyname("hw.memsize", &v6, &v5, 0, 0))
  {
    v1 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      v2 = v1;
      v3 = __error();
      v4 = strerror(*v3);
      *buf = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to query sysct hw.memsize: %s", buf, 0xCu);
    }
  }

  else
  {
    dword_100042B00 = v6 >> 20;
  }
}

uint64_t start_0(uint64_t a1, uint64_t a2)
{
  v396 = [DumpPanicArgParser withArgs:a2 count:a1];
  v7 = v396;
  if ([v396 help])
  {
    [v396 usage];
LABEL_3:
    v8 = 0;
    goto LABEL_592;
  }

  if (pthread_set_qos_class_self_np(QOS_CLASS_UTILITY, 0))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_702;
  }

  v9 = os_log_create("com.apple.DumpPanic", "panicprocessing");
  v10 = qword_100042B28;
  qword_100042B28 = v9;

  if (!qword_100042B28)
  {
LABEL_702:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_703;
  }

  v11 = dispatch_semaphore_create(0);
  v12 = qword_100042A18;
  qword_100042A18 = v11;

  if (&_MKBGetDeviceLockState)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v14 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &unk_100041F88, v13, &stru_100038E18);

    if (v14)
    {
      v15 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v448.st_dev) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to register for device lock state notification.", &v448, 2u);
      }
    }
  }

  if (([v396 force_run] & 1) == 0)
  {
    memset(&v448, 0, sizeof(v448));
    if (!lstat("/var/run/com.apple.DumpPanic.finishedThisBoot", &v448))
    {
      v18 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DumpPanic has already finished running for current boot", buf, 2u);
        v18 = qword_100042B28;
      }

      v7 = v396;
      v8 = 0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v448.st_dev) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Use '-f/--force' to run DumpPanic manually", &v448, 2u);
        goto LABEL_3;
      }

LABEL_592:

      return v8;
    }

    v16 = *__error();
    v17 = qword_100042B28;
    if (v16 == 2)
    {
      v7 = v396;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No previous DumpPanic finish cookie", buf, 2u);
      }
    }

    else
    {
      v7 = v396;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v272 = v17;
        v273 = __error();
        v274 = strerror(*v273);
        *buf = 136315394;
        *&buf[4] = "/var/run/com.apple.DumpPanic.finishedThisBoot";
        *&buf[12] = 2080;
        *&buf[14] = v274;
        _os_log_error_impl(&_mh_execute_header, v272, OS_LOG_TYPE_ERROR, "Failed to stat %s with error %s", buf, 0x16u);

        v7 = v396;
      }
    }
  }

  if (![v7 restoreos])
  {
LABEL_26:
    v384 = 0;
    goto LABEL_32;
  }

  v19 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v19)
  {
    v24 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v448.st_dev) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error getting a reference to IODeviceTree:/options", &v448, 2u);
    }

    v8 = 1;
    goto LABEL_592;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v19, @"ota-uuid", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    goto LABEL_26;
  }

  v21 = CFProperty;
  v22 = CFGetTypeID(CFProperty);
  if (v22 == CFDataGetTypeID())
  {
    v23 = [v21 mutableCopy];
    [v23 appendBytes:&unk_10002B7D0 length:1];
    v384 = v23;
  }

  else
  {
    v384 = 0;
  }

  CFRelease(v21);
LABEL_32:
  v25 = qword_100042B28;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v448.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "DumpPanic launched after boot to check for device panic data", &v448, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v381 = mach_absolute_time();
  v439 = 0;
  v440 = &v439;
  v5 = 0x3032000000;
  v441 = 0x3032000000;
  v442 = sub_100021C68;
  v443 = sub_100021C78;
  v444 = +[NSMutableArray array];
  v26 = @"/private/var/db/DumpPanic";
  v27 = +[NSFileManager defaultManager];
  properties[0] = 0;
  v28 = [v27 contentsOfDirectoryAtPath:@"/private/var/db/DumpPanic" error:properties];
  v29 = properties[0];
  v388 = v28;
  if (v28)
  {
    v457 = 0u;
    v458 = 0u;
    memset(buf, 0, sizeof(buf));
    obj = v28;
    v30 = [obj countByEnumeratingWithState:buf objects:&v448 count:16];
    if (!v30)
    {
      goto LABEL_56;
    }

    v31 = **&buf[16];
    v397 = 138412546;
    v398 = 138412290;
    while (1)
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (**&buf[16] != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = [NSString stringWithFormat:@"%@/%@", @"/private/var/db/DumpPanic", *(*&buf[8] + 8 * i)];
        v445[0] = v29;
        v34 = [v27 attributesOfItemAtPath:v33 error:v445];
        v3 = v445[0];

        if (v34)
        {
          v35 = [v34 fileType];
          v36 = v35 == NSFileTypeDirectory;

          if (v36)
          {
            v29 = v3;
          }

          else
          {
            v37 = qword_100042B28;
            if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
            {
              *v451 = 138412290;
              *&v451[4] = v33;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Removing non-directory entry '%@'", v451, 0xCu);
            }

            v427 = v3;
            v38 = [v27 removeItemAtPath:v33 error:&v427];
            v29 = v427;

            if ((v38 & 1) == 0)
            {
              v3 = qword_100042B28;
              if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
              {
                *v451 = 138412546;
                *&v451[4] = v33;
                *&v451[12] = 2112;
                *&v451[14] = v29;
                v39 = v3;
                v40 = "Failed to remove non-directory entry '%@'. Error: %@";
LABEL_52:
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v40, v451, 0x16u);
              }
            }
          }
        }

        else
        {
          v41 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            *v451 = 138412546;
            *&v451[4] = v33;
            *&v451[12] = 2112;
            *&v451[14] = v3;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to gather the file attributes for '%@'. Error: %@", v451, 0x16u);
          }

          v433 = v3;
          v42 = [v27 removeItemAtPath:v33 error:&v433];
          v29 = v433;

          if ((v42 & 1) == 0)
          {
            v3 = qword_100042B28;
            if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
            {
              *v451 = 138412546;
              *&v451[4] = v33;
              *&v451[12] = 2112;
              *&v451[14] = v29;
              v39 = v3;
              v40 = "Failed to remove inaccessible entry '%@'. Error: %@";
              goto LABEL_52;
            }
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:buf objects:&v448 count:16];
      if (!v30)
      {
LABEL_56:

        goto LABEL_59;
      }
    }
  }

  v43 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    v448.st_dev = 138412290;
    *&v448.st_mode = v29;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to enumerate the contents of the sandbox directory: %@", &v448, 0xCu);
  }

LABEL_59:

  v433 = 0;
  v434 = &v433;
  v435 = 0x3032000000;
  v436 = sub_100021C68;
  v437 = sub_100021C78;
  v438 = 0;
  v2 = &v427;
  v427 = 0;
  v428 = &v427;
  v429 = 0x3032000000;
  v430 = sub_100021C68;
  v431 = sub_100021C78;
  v432 = dispatch_semaphore_create(0);
  v44 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v44, QOS_CLASS_UTILITY, 0);

  v45 = dispatch_queue_create("com.apple.DumpPanic.KernelCoreDump", attr);
  block[0] = _NSConcreteStackBlock;
  v6 = 3221225472;
  block[1] = 3221225472;
  block[2] = sub_100021C80;
  block[3] = &unk_1000391C0;
  v426 = v388 != 0;
  v425 = Current;
  v422 = &v439;
  v423 = &v433;
  v394 = v396;
  v421 = v394;
  v424 = &v427;
  v378 = v45;
  dispatch_async(v45, block);
  v46 = os_log_create("com.apple.DumpPanic", "socd");
  v47 = qword_100042B10;
  qword_100042B10 = v46;

  if (qword_100042B10)
  {
    *buf = 0;
    v48 = os_log_create("com.apple.osanalytics.preoslog", "default");
    v49 = os_log_create("com.apple.osanalytics.preoslog", "buffer");
    v451[0] = 1;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v448.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Flush preoslog", &v448, 2u);
    }

    if (sysctlbyname("kern.preoslog", 0, buf, v451, 1uLL))
    {
      if (*__error() == 2)
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v448.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "kern.preoslog is not supported by this kernel", &v448, 2u);
        }
      }

      else
      {
        v51 = v48;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v256 = __error();
          v257 = strerror(*v256);
          v448.st_dev = 136315138;
          *&v448.st_mode = v257;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Couldn't obtain preoslog buffer size, result %s", &v448, 0xCu);
        }
      }

      __error();
LABEL_76:

      rollAppleCareLogs();
      v395 = sub_10000EEA8();
      v52 = [v394 restoreos];
      *&v448.st_dev = _NSConcreteStackBlock;
      v448.st_ino = 3221225472;
      *&v448.st_uid = sub_10000DC98;
      *&v448.st_rdev = &unk_100038F58;
      LOBYTE(v448.st_atimespec.tv_sec) = v52;
      if (qword_100042AB0 == -1)
      {
        goto LABEL_77;
      }

      goto LABEL_704;
    }

    if (*buf)
    {
      v50 = malloc_type_malloc(*buf, 0x896EB240uLL);
      if (v50)
      {
        if (sysctlbyname("kern.preoslog", v50, buf, 0, 0))
        {
          v2 = v48;
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            v346 = __error();
            v347 = strerror(*v346);
            v448.st_dev = 136315138;
            *&v448.st_mode = v347;
            _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Couldn't obtain preoslog buffer, sysctl failed with result %s", &v448, 0xCu);
          }

          goto LABEL_503;
        }

        v2 = *v50;
        if (v2 == 1280528208)
        {
          v2 = *buf;
          if (*buf == v50[1])
          {
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v96 = *(v50 + 12);
              v97 = "UNKNOWN";
              v98 = v50[2];
              if (v96 == 1)
              {
                v97 = "macefi";
              }

              v99 = *(v50 + 13);
              v287 = v96 == 0;
              v448.st_dev = 134284547;
              v100 = "iboot";
              if (!v287)
              {
                v100 = v97;
              }

              *&v448.st_mode = v50;
              WORD2(v448.st_ino) = 2048;
              *(&v448.st_ino + 6) = v2;
              HIWORD(v448.st_gid) = 1024;
              v448.st_rdev = v98;
              *(&v448.st_rdev + 2) = 2080;
              *(&v448.st_rdev + 6) = v100;
              HIWORD(v448.st_atimespec.tv_sec) = 1024;
              LODWORD(v448.st_atimespec.tv_nsec) = v99;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Found a valid preoslog buffer at va %{private}p, size %zu bytes, write offset %d, source %s, wrapped %d", &v448, 0x2Cu);
            }

            v2 = (v50 + 14);
            v101 = v50[2] + 1;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v448.st_dev = 134218240;
              *&v448.st_mode = v50 + 14;
              WORD2(v448.st_ino) = 2048;
              *(&v448.st_ino + 6) = v101;
              _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Lower buffer is at va %p, size %zu bytes", &v448, 0x16u);
            }

            v102 = v50[1] - v101 - 14;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v448.st_dev = 134218240;
              *&v448.st_mode = v2 + v101;
              WORD2(v448.st_ino) = 2048;
              *(&v448.st_ino + 6) = v102;
              _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Upper buffer is at va %p, size %zu bytes", &v448, 0x16u);
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v448.st_dev) = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Warning: preoslog log timestamps are not original, they are assigned later when the buffer is being flushed", &v448, 2u);
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v448.st_dev) = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "preoslog dump begin", &v448, 2u);
            }

            if (*(v50 + 13))
            {
              sub_10000DD18(v49, v2 + v101, v102);
            }

            sub_10000DD18(v49, v50 + 14, v101);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v448.st_dev) = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "preoslog dump end", &v448, 2u);
            }

            goto LABEL_503;
          }

          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
LABEL_503:
            free(v50);
            goto LABEL_76;
          }

          LOWORD(v448.st_dev) = 0;
          v252 = "Buffer size returned by sysctl doesn't match buffer size recorded in the header, preoslog buffer is corrupted";
          v253 = v48;
          v254 = 2;
        }

        else
        {
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_503;
          }

          v448.st_dev = 67109376;
          *&v448.st_mode = 1280528208;
          LOWORD(v448.st_ino) = 1024;
          *(&v448.st_ino + 2) = v2;
          v252 = "Magic for preoslog buffer doesn't match, expected %08X, given %08X";
          v253 = v48;
          v254 = 14;
        }

        _os_log_error_impl(&_mh_execute_header, v253, OS_LOG_TYPE_ERROR, v252, &v448, v254);
        goto LABEL_503;
      }

      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      LOWORD(v448.st_dev) = 0;
      v93 = "Failed to allocate memory for preoslog buffer";
    }

    else
    {
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      LOWORD(v448.st_dev) = 0;
      v93 = "preoslog buffer size is 0";
    }

    _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v93, &v448, 2u);
    goto LABEL_76;
  }

LABEL_703:
  _os_assert_log();
  _os_crash();
  __break(1u);
LABEL_704:
  dispatch_once(&qword_100042AB0, &v448);
LABEL_77:
  v53 = [NSMutableArray arrayWithCapacity:0];
  if (!v53)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_706;
  }

  v397 = v53;

  v54 = sub_100014238("AppleDialogSPMIPMU", "IOPMUBootSOCD", "IOPMUBootSOCDClear", 0, 0);
  v55 = v54;
  if (v54)
  {
    if ([v54 count])
    {
      [v397 addObjectsFromArray:v55];
      v56 = qword_100042B10;
      if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_DEFAULT))
      {
        v448.st_dev = 138412290;
        *&v448.st_mode = @"AppleDialogSPMIPMU";
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "loaded socd data from: %@", &v448, 0xCu);
      }
    }
  }

  v57 = sub_100014238("AppleSMC", "socd-data", "remove-socd-data", "socd-data-in-progress", 0x32u);

  if (v57)
  {
    if ([v57 count])
    {
      [v397 addObjectsFromArray:v57];
      v58 = qword_100042B10;
      if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_DEFAULT))
      {
        v448.st_dev = 138412290;
        *&v448.st_mode = @"AppleSMC";
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "loaded socd data from: %@", &v448, 0xCu);
      }
    }
  }

  v59 = [v397 count];

  v60 = qword_100042B28;
  v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
  if (!v59)
  {
    if (v61)
    {
      LOWORD(v448.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "No socd data found in local device", &v448, 2u);
    }

LABEL_107:

    goto LABEL_108;
  }

  if (v61)
  {
    LOWORD(v448.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "socd data found in local device", &v448, 2u);
  }

  if (v395)
  {
    v62 = [NSURL fileURLWithPathComponents:&off_10003C388];
    v63 = v397;
    v64 = v62;
    if (!v64)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_712;
    }

    v60 = v64;

    v65 = v63;
    v457 = 0u;
    v458 = 0u;
    memset(buf, 0, sizeof(buf));
    obj = v65;
    v66 = [obj countByEnumeratingWithState:buf objects:&v448 count:16];
    if (v66)
    {
      v67 = **&buf[16];
      while (2)
      {
        for (j = 0; j != v66; j = j + 1)
        {
          if (**&buf[16] != v67)
          {
            objc_enumerationMutation(obj);
          }

          v69 = *(*&buf[8] + 8 * j);
          v70 = [v60 path];
          v71 = [NSNumber numberWithInt:0];
          v72 = [v71 stringValue];
          v3 = [v70 stringByAppendingString:v72];
          LOBYTE(v69) = [v69 writeToFile:v3 atomically:1];

          if ((v69 & 1) == 0)
          {
            v73 = qword_100042B10;
            if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
            {
              *v451 = 138412290;
              *&v451[4] = v60;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "unable to write socd data to file: %@", v451, 0xCu);
            }

            v74 = qword_100042B28;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v448.st_dev = 138412290;
              *&v448.st_mode = v60;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "failed to write socd data to file: %@", &v448, 0xCu);
            }

            goto LABEL_107;
          }
        }

        v66 = [obj countByEnumeratingWithState:buf objects:&v448 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_107;
  }

LABEL_108:
  v414 = &off_10003C418;
  v415 = &off_10003C418;
  v416 = &off_10003C418;
  v75 = [NSMutableArray arrayWithCapacity:0];
  v417 = v75;
  v76 = [NSMutableArray arrayWithCapacity:0];
  v418 = v76;
  v77 = [NSMutableArray arrayWithCapacity:0];
  v419 = v77;
  if (!access("/var/run/com.apple.DumpPanic.finishedPMUFaultHandling", 0))
  {
    v87 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v448.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "PMU fault data already processed this boot", &v448, 2u);
    }

    goto LABEL_118;
  }

  if (*__error() != 2)
  {
    v89 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v90 = v89;
      v91 = __error();
      v92 = strerror(*v91);
      v448.st_dev = 136315394;
      *&v448.st_mode = "/var/run/com.apple.DumpPanic.finishedPMUFaultHandling";
      WORD2(v448.st_ino) = 2080;
      *(&v448.st_ino + 6) = v92;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "failed to check whether PMU fault data has been processed using access(%s, O_RDONLY) returned: %s", &v448, 0x16u);
    }

    goto LABEL_163;
  }

  v78 = IOServiceMatching("IOService");
  v79 = v78;
  if (!v78)
  {
    v94 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v448.st_dev) = 0;
      v95 = "Failed to allocate matching dictionary to match against PMU";
LABEL_130:
      _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, v95, &v448, 2u);
    }

LABEL_163:
    LODWORD(v88) = 0;
    goto LABEL_164;
  }

  CFDictionarySetValue(v78, @"IOPropertyMatch", &off_10003C4F0);
  LODWORD(obj) = IOServiceGetMatchingService(kIOMainPortDefault, v79);
  if (!obj)
  {
    v94 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v448.st_dev) = 0;
      v95 = "Failed to locate primary PMU service";
      goto LABEL_130;
    }

    goto LABEL_163;
  }

  v80 = IOServiceMatching("IOService");
  v81 = v80;
  if (!v80)
  {
    v103 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    LOWORD(v448.st_dev) = 0;
    v84 = "Failed to allocate matching dictionary to match against PMU";
LABEL_679:
    v85 = v103;
    v86 = 2;
    goto LABEL_680;
  }

  CFDictionarySetValue(v80, @"IOPropertyMatch", &off_10003C518);
  *buf = 0;
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v81, buf);
  if (MatchingServices)
  {
    v83 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v448.st_dev = 67109120;
      *&v448.st_mode = MatchingServices;
      v84 = "Failed to get matching PMU ioservices: 0x%x";
      v85 = v83;
      v86 = 8;
LABEL_680:
      _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, v84, &v448, v86);
    }

LABEL_152:
    v88 = 0;
    v104 = obj;
    goto LABEL_153;
  }

  v250 = *buf;
  if (!*buf)
  {
    v103 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    LOWORD(v448.st_dev) = 0;
    v84 = "IOService match returned an empty iterator for PMU services";
    goto LABEL_679;
  }

  v104 = obj;
  while (IOIteratorIsValid(v250))
  {
    while (1)
    {
      v251 = IOIteratorNext(*buf);
      v88 = v251;
      if (!v251)
      {
        break;
      }

      if (v251 != obj)
      {
        goto LABEL_153;
      }
    }

    if (IOIteratorIsValid(*buf))
    {
      break;
    }

    IOIteratorReset(*buf);
    v250 = *buf;
  }

  v88 = 0;
LABEL_153:
  properties[0] = 0;
  if (!IORegistryEntryCreateCFProperties(v104, properties, kCFAllocatorDefault, 0))
  {
    v414 = CFDictionaryGetValue(properties[0], @"IOPMUBootErrorPanicCount");

    v415 = CFDictionaryGetValue(properties[0], @"IOPMUBootErrorFailCount");

    v416 = CFDictionaryGetValue(properties[0], @"IOPMUBootErrorStage");

    v105 = CFDictionaryGetValue(properties[0], @"IOPMUBootErrorAppName");
    v106 = off_100042010;
    off_100042010 = v105;

    v107 = CFDictionaryGetValue(properties[0], @"IOPMUBootFaultInfo");
    v417 = v107;

    if (v88)
    {
      *buf = 0;
      if (IORegistryEntryCreateCFProperties(v88, buf, kCFAllocatorDefault, 0))
      {
        v77 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v448.st_dev) = 0;
          _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "unable to read out auxiliary PMU properties", &v448, 2u);
        }

        IOObjectRelease(obj);
        IOObjectRelease(v88);
        goto LABEL_163;
      }

      v328 = CFDictionaryGetValue(*buf, @"IOPMUBootFaultInfo");
      v418 = v328;

      v329 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        v448.st_dev = 138412290;
        *&v448.st_mode = v328;
        _os_log_impl(&_mh_execute_header, v329, OS_LOG_TYPE_DEFAULT, "read out auxiliary PMU fault data: boot fault info: %@", &v448, 0xCu);
      }
    }

    v76 = objc_alloc_init(NSMutableArray);
    v419 = v76;

    v457 = 0u;
    v458 = 0u;
    memset(buf, 0, sizeof(buf));
    v77 = v107;
    v330 = [v77 countByEnumeratingWithState:buf objects:&v448 count:16];
    if (v330)
    {
      v129 = 0;
      v331 = **&buf[16];
      v288 = @",";
      do
      {
        for (k = 0; k != v330; k = k + 1)
        {
          if (**&buf[16] != v331)
          {
            objc_enumerationMutation(v77);
          }

          v76 = *(*&buf[8] + 8 * k);

          v129 = v76;
          if ([v76 containsString:{@", "}])
          {
            v333 = [v76 rangeOfString:{@", "}];
            if (v333 == 0x7FFFFFFFFFFFFFFFLL)
            {
              _os_assert_log();
              _os_crash();
              __break(1u);
              goto LABEL_650;
            }

            v76 = v419;
            v3 = [v129 substringToIndex:v333];
            [v419 addObject:v3];
          }

          else
          {
            v76 = v419;
            [v419 addObject:v129];
          }
        }

        v330 = [v77 countByEnumeratingWithState:buf objects:&v448 count:16];
      }

      while (v330);
    }

    sub_10000E614(obj);
    sub_10000E614(v88);
    IOObjectRelease(obj);
    if (v88)
    {
      IOObjectRelease(v88);
    }

    v334 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v335 = v334;
      v336 = [v414 intValue];
      LODWORD(v77) = [v415 intValue];
      v337 = [v416 intValue];
      v338 = [off_100042010 intValue];
      *v451 = 67110402;
      *&v451[4] = v336;
      *&v451[8] = 1024;
      *&v451[10] = v77;
      *&v451[14] = 1024;
      *&v451[16] = v337;
      *&v451[20] = 1024;
      *&v451[22] = v338;
      v452 = 2112;
      v453 = v417;
      v454 = 2112;
      *v455 = v76;
      _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_DEFAULT, "read out PMU fault data: resetCount: %d, bootFailCount: %d, boot stage: 0x%x, boot app hash: %d, boot faults: %@, universal boot faults: %@:", v451, 0x2Eu);
    }

    if (creat("/var/run/com.apple.DumpPanic.finishedPMUFaultHandling", 0x100u) < 0)
    {
      v339 = __error();
      v77 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v76 = *v339;
        v340 = v77;
        v341 = strerror(v76);
        *v451 = 136315394;
        *&v451[4] = "/var/run/com.apple.DumpPanic.finishedPMUFaultHandling";
        *&v451[12] = 2080;
        *&v451[14] = v341;
        _os_log_error_impl(&_mh_execute_header, v340, OS_LOG_TYPE_ERROR, "failed to creat() PMU fault data processed cookie at path %s with error %s", v451, 0x16u);
      }
    }

LABEL_118:
    LODWORD(v88) = 1;
    goto LABEL_164;
  }

  v77 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v448.st_dev) = 0;
    _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "unable to read out primary PMU properties", &v448, 2u);
  }

  IOObjectRelease(obj);
  if (v88)
  {
    IOObjectRelease(v88);
    goto LABEL_163;
  }

LABEL_164:
  v108 = qword_100042B28;
  v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT);
  if (!v88)
  {
    if (v109)
    {
      LOWORD(v448.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "No boot fault data found in local device", &v448, 2u);
    }

    goto LABEL_187;
  }

  if (v109)
  {
    LOWORD(v448.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "boot fault data found in local device", &v448, 2u);
  }

  if (v395)
  {
    v110 = [NSURL fileURLWithPathComponents:&off_10003C3A0];
    sub_10000E728(v413, &v414);
    v108 = v110;
    v111 = v413[0];
    if (v111)
    {
      v112 = v111;

      v113 = v413[1];
      if (v113)
      {
        v114 = v113;

        v115 = v413[2];
        if (v115)
        {
          v116 = v115;

          v117 = v413[3];
          if (v117)
          {
            v118 = v117;

            v119 = v413[5];
            if (v119)
            {
              v120 = v119;

              *buf = @"resetCount";
              *&buf[8] = @"bootFailCount";
              *&v448.st_dev = v112;
              v448.st_ino = v114;
              *&buf[16] = @"bootStage";
              *&buf[24] = @"rawBootFaults";
              *&v448.st_uid = v116;
              *&v448.st_rdev = v118;
              *&v457 = @"universalBootFaults";
              v448.st_atimespec.tv_sec = v120;
              v121 = [NSDictionary dictionaryWithObjects:&v448 forKeys:buf count:5];
              properties[0] = 0;
              v76 = [NSJSONSerialization dataWithJSONObject:v121 options:0 error:properties];
              v77 = properties[0];
              if (v77 || !v76)
              {
                v124 = qword_100042B28;
                if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *v451 = 138412290;
                *&v451[4] = v77;
                v125 = "unable to serialize json: %@";
              }

              else
              {
                v122 = [v108 path];
                v123 = [v76 writeToFile:v122 atomically:1];

                v124 = qword_100042B28;
                if (v123)
                {
                  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
                  {
                    *v451 = 138412290;
                    *&v451[4] = v108;
                    _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "wrote boot fault data to: %@", v451, 0xCu);
                  }

                  sub_10000E5B8(v413);
LABEL_187:

                  goto LABEL_188;
                }

                if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
                {
LABEL_184:

                  sub_10000E5B8(v413);
                  v126 = qword_100042B28;
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                  {
                    v448.st_dev = 138412290;
                    *&v448.st_mode = v108;
                    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "failed to write boot fault data to file: %@", &v448, 0xCu);
                  }

                  goto LABEL_187;
                }

                *v451 = 138412290;
                *&v451[4] = v108;
                v125 = "unable to write json to file: %@";
              }

              _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, v125, v451, 0xCu);
              goto LABEL_184;
            }

LABEL_716:
            _os_assert_log();
            _os_crash();
            __break(1u);
            goto LABEL_717;
          }

LABEL_715:
          _os_assert_log();
          _os_crash();
          __break(1u);
          goto LABEL_716;
        }

LABEL_714:
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_715;
      }

LABEL_713:
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_714;
    }

LABEL_712:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_713;
  }

LABEL_188:
  memset(&v448, 0, sizeof(v448));
  v127 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/defaults");
  v128 = v127;
  v129 = &unk_100042000;
  if (!v127)
  {
    v135 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "Error getting a reference to IODeviceTree:/defaults", buf, 2u);
    }

    goto LABEL_204;
  }

  v130 = IORegistryEntryCreateCFProperty(v127, @"supported-legacy-panic-flow", kCFAllocatorDefault, 0);
  if (v130)
  {
    byte_100042AE8 = 1;
    CFRelease(v130);
  }

  IOObjectRelease(v128);
  if ((byte_100042AE8 & 1) == 0)
  {
    v136 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_204;
    }

    *buf = 0;
    v133 = "Device tree indicates that device never supported legacy panic path";
LABEL_202:
    v134 = v136;
    goto LABEL_203;
  }

  if (!lstat("/var/root/Library/Application Support/DumpPanic/LegacyDataProcessed", &v448))
  {
    v136 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_204;
    }

    *buf = 0;
    v133 = "Device supported legacy panic path, file marker found";
    goto LABEL_202;
  }

  v131 = *__error();
  v77 = qword_100042B28;
  v132 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
  if (v131 != 2)
  {
    if (v132)
    {
      v77 = v77;
      v231 = __error();
      v232 = strerror(*v231);
      *buf = 136315394;
      *&buf[4] = "/var/root/Library/Application Support/DumpPanic/LegacyDataProcessed";
      *&buf[12] = 2080;
      *&buf[14] = v232;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Failed to stat %s with error %s", buf, 0x16u);
    }

    goto LABEL_204;
  }

  if (v132)
  {
    *buf = 0;
    v133 = "Device supported legacy panic path, no existing marker file found";
    v134 = v77;
LABEL_203:
    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, v133, buf, 2u);
  }

LABEL_204:
  if (AppleNVMeDeviceSupportsPanicLogAccess())
  {
    *&v448.st_dev = 0;
    Size = AppleNVMePanicLogGetSize();
    if (!Size)
    {
      if (*&v448.st_dev <= 0x240000uLL)
      {
        v88 = 2359296;
      }

      else
      {
        v88 = *&v448.st_dev;
      }

      v445[0] = 0;
      v138 = malloc_type_valloc(v88, 0xB035F5C8uLL);
      v139 = v138;
      if (!v138)
      {
        goto LABEL_709;
      }

      bzero(v138, v88);
      PanicLogData = AppleNVMeReadPanicLogData();
      if (!PanicLogData)
      {
        v141 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
        {
          v448.st_dev = 134217984;
          *&v448.st_mode = v445[0];
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "AppleNVMeReadPanicLogData successfully extracted %llu bytes of data.", &v448, 0xCu);
        }

        goto LABEL_230;
      }

      goto LABEL_718;
    }

    if (Size <= 2)
    {
      goto LABEL_731;
    }

    if (Size == 3)
    {
LABEL_737:
      _os_crash();
      __break(1u);
      goto LABEL_738;
    }

    if (Size == 6)
    {
LABEL_738:
      _os_crash();
      __break(1u);
      goto LABEL_739;
    }

    if (Size != 7)
    {
      goto LABEL_740;
    }

    PanicLogData = _os_crash();
    __break(1u);
LABEL_727:
    if (PanicLogData == 1)
    {
      goto LABEL_742;
    }

    if (PanicLogData == 2)
    {
      goto LABEL_743;
    }

    if (PanicLogData != 3)
    {
      goto LABEL_745;
    }

    Size = _os_crash();
    __break(1u);
LABEL_731:
    if (Size == 1)
    {
LABEL_739:
      _os_crash();
      __break(1u);
      goto LABEL_740;
    }

    if (Size == 2)
    {
      PanicLogData = _os_crash();
      __break(1u);
      goto LABEL_734;
    }

LABEL_740:
    _os_crash();
    __break(1u);
    goto LABEL_741;
  }

  v445[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PanicDev", @"com.apple.DumpPanic", 0);
  if (AppIntegerValue >= 1)
  {
    v143 = AppIntegerValue;
  }

  else
  {
    v143 = 15;
  }

  v144 = 1;
  while (1)
  {
    v145 = IOServiceMatching("IOMedia");
    *v451 = @"IOPropertyMatch";
    *buf = &off_10003C540;
    CFDictionarySetValue(v145, @"IOParentMatch", [NSDictionary dictionaryWithObjects:buf forKeys:v451 count:1]);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v145);
    v147 = MatchingService;
    if (MatchingService)
    {
      break;
    }

LABEL_223:
    v150 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v448.st_dev = 134217984;
      *&v448.st_mode = v144;
      _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "searching IORegistry again after %lds sleep", &v448, 0xCu);
    }

    sleep(v144);
    v144 *= 2;
    if (v144 > v143)
    {
      v129 = &unk_100042000;
      goto LABEL_227;
    }
  }

  properties[0] = 0;
  if (IORegistryEntryCreateCFProperties(MatchingService, properties, kCFAllocatorDefault, 0))
  {
    IOObjectRelease(v147);
    goto LABEL_223;
  }

  Value = CFDictionaryGetValue(properties[0], @"BSD Name");
  v149 = CFDictionaryGetValue(properties[0], @"Whole");
  if (!Value || v149 != kCFBooleanTrue)
  {
    CFRelease(properties[0]);
    IOObjectRelease(v147);
    goto LABEL_223;
  }

  CFStringGetCString(Value, &aDevRdiskx[6], 74, 0x8000100u);
  v129 = &unk_100042000;
  v233 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    v448.st_dev = 136315138;
    *&v448.st_mode = aDevRdiskx;
    _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "Matched registered panic device: %s", &v448, 0xCu);
  }

  CFRelease(properties[0]);
  IOObjectRelease(v147);
  v234 = [NSString stringWithUTF8String:aDevRdiskx];
  v235 = [NSURL fileURLWithPath:v234];

  if (!v235)
  {
LABEL_227:
    v151 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v448.st_dev) = 0;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "This device does not support the AppleNVMeDevice API and no paniclog block device was found.", &v448, 2u);
    }

    v139 = 0;
LABEL_230:
    while (1)
    {
      v152 = v445[0];
      if (!v445[0])
      {
        break;
      }

      v153 = 0;
      v154 = 0;
      do
      {
        v153 |= (v154++)[v139];
      }

      while (v445[0] != v154);
      if (v445[0] < 8 || !v153)
      {
        break;
      }

LABEL_245:
      if (v129[2792] == 1)
      {
        if (mkdir("/var/root/Library/Application Support/DumpPanic/", 0x1A4u) && *__error() != 17)
        {
          v164 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            v165 = v164;
            v166 = __error();
            v167 = strerror(*v166);
            v448.st_dev = 136315394;
            *&v448.st_mode = "/var/root/Library/Application Support/DumpPanic/";
            WORD2(v448.st_ino) = 2080;
            *(&v448.st_ino + 6) = v167;
            _os_log_error_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "Failed to create directory: %s with error: %s", &v448, 0x16u);
          }
        }

        else
        {
          v162 = open_dprotected_np("/var/root/Library/Application Support/DumpPanic/LegacyDataProcessed", 520, 4, 0, 420);
          v163 = qword_100042B28;
          if (v162 == -1)
          {
            if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
            {
              v342 = v163;
              v343 = __error();
              v344 = strerror(*v343);
              v448.st_dev = 136315394;
              *&v448.st_mode = "/var/root/Library/Application Support/DumpPanic/LegacyDataProcessed";
              WORD2(v448.st_ino) = 2080;
              *(&v448.st_ino + 6) = v344;
              _os_log_error_impl(&_mh_execute_header, v342, OS_LOG_TYPE_ERROR, "Failed to create file: %s with error: %s", &v448, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
            {
              v448.st_dev = 136315138;
              *&v448.st_mode = "/var/root/Library/Application Support/DumpPanic/LegacyDataProcessed";
              _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "Created legacy panic data marker file: %s", &v448, 0xCu);
            }

            close(v162);
          }
        }
      }

      v168 = qword_100042B28;
      v169 = os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT);
      if (!v139)
      {
        if (v169)
        {
          LOWORD(v448.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "No paniclog data found in local device", &v448, 2u);
        }

        goto LABEL_267;
      }

      if (v169)
      {
        v448.st_dev = 134217984;
        *&v448.st_mode = v152;
        _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "0x%llx bytes of paniclog data found in local device", &v448, 0xCu);
      }

      if (v152 && (v395 & 1) != 0)
      {
        v168 = [NSURL fileURLWithPathComponents:&off_10003C3B8];
        if (!sub_10000F190(v168, v139, v152))
        {
          v170 = qword_100042B28;
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
          {
            v448.st_dev = 138412290;
            *&v448.st_mode = v168;
            _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "failed to write paniclog data to file: %@", &v448, 0xCu);
          }
        }

LABEL_267:
      }

      if (v152)
      {
        v171 = [v394 output_dir];
        v411 = 0;
        v412 = 0;
        sub_10000F9AC(v139, v152, v171, v381, v384, &v412, &v411, v397, Current, 0);
        v395 = v412;
        v2 = v411;

        sub_100021E3C(v2, v440[5], 0);
        dispatch_semaphore_wait(v428[5], 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        free(v139);
        dispatch_semaphore_wait(v428[5], 0xFFFFFFFFFFFFFFFFLL);
        if (v434[5])
        {
          v172 = [v394 output_dir];
          v409 = 0;
          v410 = 0;
          sub_10000F9AC(0, 0, v172, v381, v384, &v410, &v409, v397, Current, v434[5]);
          v395 = v410;
          v2 = v409;

          v173 = v434[5];
          v434[5] = 0;
        }

        else
        {
          v395 = 0;
          v2 = 0;
        }
      }

      sub_10000E728(&v404, &v414);
      v393 = [v394 output_dir];
      if (qword_100042A68 != -1)
      {
LABEL_706:
        dispatch_once(&qword_100042A68, &stru_100038EB8);
      }

      v392 = byte_100042A60;
      sub_10000E728(v451, &v404);
      v174 = *v451;
      v175 = [*v451 intValue];
      v176 = [*&v451[8] intValue] + v175;
      obja = v2;
      if (v176 > 1)
      {
        v177 = 8;
        goto LABEL_286;
      }

      v178 = *&v455[2];
      if ([*&v455[2] count])
      {
        v179 = [[NSMutableArray alloc] initWithArray:v178];
        if ([v179 containsObject:@"rst"])
        {
          [v179 removeObject:@"rst"];
        }

        if ([v179 count] && objc_msgSend(v179, "count") <= 1)
        {
          if ([v179 containsObject:@"wdog"])
          {
            v177 = [*&v451[16] intValue] == 227;
          }

          else if ([v179 containsObject:@"uv"])
          {
            v177 = 2;
          }

          else if ([v179 containsObject:@"ov"])
          {
            v177 = 3;
          }

          else if ([v179 containsObject:@"ot"])
          {
            v177 = 5;
          }

          else if ([v179 containsObject:@"crash"])
          {
            v177 = 4;
          }

          else
          {
            if (v176)
            {
              v361 = qword_100042B28;
              if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
              {
                v448.st_dev = 138412290;
                *&v448.st_mode = v178;
                _os_log_error_impl(&_mh_execute_header, v361, OS_LOG_TYPE_ERROR, "bootFaults contained uncategorized PMU fault(s) : %@", &v448, 0xCu);
              }

              goto LABEL_281;
            }

            v177 = 7;
          }
        }

        else
        {
LABEL_281:
          v177 = 8;
        }

        goto LABEL_286;
      }

      if ([v174 intValue] == 1)
      {
        v177 = 6;
      }

      else
      {
        v177 = 8;
      }

LABEL_286:
      sub_10000E5B8(v451);
      if ((v392 & 1) == 0)
      {
        sub_10000E728(properties, &v404);
        if (&_AnalyticsSendEventLazy)
        {
          if (v177 > 7)
          {
            v180 = @"unknown";
          }

          else
          {
            v180 = *(&off_100039030 + v177);
          }

          *&v448.st_dev = _NSConcreteStackBlock;
          v448.st_ino = 3254779904;
          *&v448.st_uid = sub_10000E794;
          *&v448.st_rdev = &unk_100039000;
          sub_10000E728(&v448.st_atimespec.tv_nsec, properties);
          v448.st_atimespec.tv_sec = v180;
          AnalyticsSendEventLazy();
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3254779904;
          *&buf[16] = sub_10000E828;
          *&buf[24] = &unk_100039000;
          *&v457 = v180;
          sub_10000E728(&v457 + 1, properties);
          AnalyticsSendEventLazy();
          sub_10000E5B8(&v457 + 8);

          sub_10000E5B8(&v448.st_atimespec.tv_nsec);
        }

        sub_10000E5B8(properties);
      }

      v181 = v404;
      if ([v404 intValue] || objc_msgSend(v405, "intValue"))
      {
        v182 = CFAbsoluteTimeGetCurrent();
        v183 = CFUUIDCreate(kCFAllocatorDefault);
        v386 = CFUUIDCreateString(kCFAllocatorDefault, v183);
        CFRelease(v183);
        v446 = 0;
        sub_10000C250("chosen", "chip-id", &v446 + 1);
        sub_10000C250("arm-io", "chip-revision", &v446);
        if (v392)
        {
          v184 = qword_100042B28;
          if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
          {
            LOWORD(v448.st_dev) = 0;
            _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_INFO, "Skip writing ResetCounter log to disk for intentional panic", &v448, 2u);
          }

          goto LABEL_304;
        }

        v449[0] = kOSALogMetadataAppName;
        v449[1] = kOSALogMetadataIncidentID;
        v450[0] = @"Reset count";
        v450[1] = v386;
        v185 = [NSDictionary dictionaryWithObjects:v450 forKeys:v449 count:2];
        v186 = sub_10000C138(v393, @"ResetCounter", 0.0);
        *&v448.st_dev = _NSConcreteStackBlock;
        v448.st_ino = 3254779904;
        *&v448.st_uid = sub_10000ED40;
        *&v448.st_rdev = &unk_100038FC8;
        v448.st_atimespec.tv_sec = v386;
        v448.st_atimespec.tv_nsec = v182;
        sub_10000E728(&v448.st_mtimespec.tv_sec, &v404);
        v448.st_size = __PAIR64__(v446, HIDWORD(v446));
        v383 = [OSALog createForSubmission:@"115" metadata:v185 options:v186 error:0 writing:&v448];

        sub_10000E5B8(&v448.st_mtimespec);
        v187 = qword_100042B28;
        v184 = v187;
        if (v383)
        {
          if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
          {
            v188 = [v383 filepath];
            *buf = 138412290;
            *&buf[4] = v188;
            _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_INFO, "wrote ResetCounter log to disk: %@", buf, 0xCu);
          }

          v184 = [v383 filepath];
          v390 = [v184 copy];
          v189 = v390;
        }

        else
        {
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v184, OS_LOG_TYPE_ERROR, "failed to write ResetCounter log to disk", buf, 2u);
          }

LABEL_304:
          v390 = 0;
          v383 = 0;
        }

        if ((MGGetBoolAnswer() & 1) == 0)
        {
          *buf = @"115";
          *&buf[8] = v386;
          v190 = [v181 stringValue];
          *&buf[16] = v190;
          v191 = [v405 stringValue];
          *&buf[24] = v191;
          v192 = [v406 stringValue];
          *&v457 = v192;
          v193 = [off_100042010 stringValue];
          *(&v457 + 1) = v193;
          v194 = [v407 componentsJoinedByString:@""];;
          *&v458 = v194;
          v195 = [NSArray arrayWithObjects:buf count:7];
          logForAppleCare();
        }

        v196 = objc_opt_new();
        sub_10000E728(v445, &v404);
        v399 = v196;
        v197 = v445[0];
        v198 = v445[1];
        v199 = v445[2];
        v200 = v445[5];
        v201 = [v198 intValue] == 1 && objc_msgSend(v197, "intValue") == 0;
        v202 = [v200 containsObject:@"wdog"];
        v377 = [v200 containsObject:@"spmi"];
        v203 = [v200 containsObject:@"btn_rst"];
        v380 = v200;
        v204 = [v200 count];
        v205 = [v199 intValue] == 224 || objc_msgSend(v199, "intValue") == 225 || objc_msgSend(v199, "intValue") == 229 || objc_msgSend(v199, "intValue") == 230 || objc_msgSend(v199, "intValue") == 231;
        if ([v199 intValue] == 16 || objc_msgSend(v199, "intValue") == 31 || objc_msgSend(v199, "intValue") == 32 || objc_msgSend(v199, "intValue") == 47 || objc_msgSend(v199, "intValue") == 18 || objc_msgSend(v199, "intValue") == 34)
        {
          v206 = v197;
          v207 = 0;
        }

        else
        {
          v206 = v197;
          v207 = [v199 intValue] != 48;
        }

        v208 = [v199 intValue];
        if (v204 == 1)
        {
          v209 = v202;
        }

        else
        {
          v209 = 0;
        }

        if (v209 & 1) != 0 || v202 && ([v380 count] == 2 && (objc_msgSend(v380, "containsObject:", @"rst") & 1) != 0 || objc_msgSend(v380, "count") == 2 && (objc_msgSend(v380, "containsObject:", @"btn_shdn")))
        {
          v210 = 1;
        }

        else
        {
          v210 = v377 & (v202 ^ 1);
        }

        v211 = v208 == 48;
        v212 = v201 && (v207 || v211);
        v213 = v211 & (v203 ^ 1);
        if (((v212 | v213) & v210 | v205))
        {
          v214 = !v205;
          if (!v399)
          {
            v214 = 1;
          }

          v215 = v377;
          if ((v214 & 1) == 0)
          {
            v216 = [v445[3] componentsJoinedByString:@" "];
            v217 = [NSString stringWithFormat:@"iBoot panic-save unexpected reset, boot faults: %@", v216];

            [v399 addObject:v217];
          }

          v218 = [v199 intValue];
          v219 = 0;
          if (v218 > 68)
          {
            if (v218 > 226)
            {
              if (v218 > 229)
              {
                if (v218 == 230)
                {
                  v215 = 1;
                  v219 = 13;
                }

                else if (v218 == 231)
                {
                  v215 = 1;
                  v219 = 14;
                }

                else
                {
                  v215 = 0;
                  if (v218 == 254)
                  {
                    v219 = 1;
                    v215 = 1;
                  }
                }
              }

              else if (v218 == 227)
              {
                if (v377)
                {
                  v219 = 23;
                }

                else
                {
                  v219 = 0;
                }
              }

              else
              {
                v215 = 1;
                if (v218 == 228)
                {
                  v219 = 24;
                }

                else
                {
                  v219 = 12;
                }
              }
            }

            else if (v218 > 79)
            {
              if (v218 == 80)
              {
                v215 = 1;
                v219 = 22;
              }

              else if (v218 == 224)
              {
                v215 = 1;
                v219 = 10;
              }

              else
              {
                v215 = 0;
                if (v218 == 225)
                {
                  v215 = 1;
                  v219 = 11;
                }
              }
            }

            else if (v218 == 69)
            {
              v215 = 1;
              v219 = 9;
            }

            else if (v218 == 70)
            {
              v215 = 1;
              v219 = 4;
            }

            else
            {
              v215 = 0;
              if (v218 == 71)
              {
                v215 = 1;
                v219 = 7;
              }
            }
          }

          else if (v218 > 47)
          {
            if (v218 > 65)
            {
              if (v218 == 66)
              {
                v215 = 1;
                v219 = 3;
              }

              else
              {
                v215 = 1;
                if (v218 == 67)
                {
                  v219 = 5;
                }

                else
                {
                  v219 = 6;
                }
              }
            }

            else if (v218 == 48)
            {
              v215 = 1;
              v219 = 21;
            }

            else if (v218 == 64)
            {
              v215 = 1;
              v219 = 2;
            }

            else
            {
              v215 = 0;
              if (v218 == 65)
              {
                v215 = 1;
                v219 = 8;
              }
            }
          }

          else if (v218 > 31)
          {
            if (v218 == 32)
            {
              v215 = 1;
              v219 = 17;
            }

            else if (v218 == 34)
            {
              v215 = 1;
              v219 = 20;
            }

            else
            {
              v215 = 0;
              if (v218 == 47)
              {
                v215 = 1;
                v219 = 18;
              }
            }
          }

          else if (v218 == 16)
          {
            v215 = 1;
            v219 = 15;
          }

          else if (v218 == 18)
          {
            v215 = 1;
            v219 = 19;
          }

          else
          {
            v215 = 0;
            if (v218 == 31)
            {
              v215 = 1;
              v219 = 16;
            }
          }
        }

        else
        {
          v220 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_INFO))
          {
            *v459 = 67109888;
            v460 = v212;
            v461 = 1024;
            v462 = v213;
            v463 = 1024;
            v464 = v210;
            v465 = 1024;
            v466 = 0;
            _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_INFO, "The boot fault doesn't meet the promotion criterias, reportSingleUnexpectedReset: %d, reportiBootHang : %d, bootFaultsMatchCriteria: %d, ibootPanicSavePanic: %d, bailing out panic promotion", v459, 0x1Au);
          }

          v219 = 0;
          v215 = 0;
        }

        sub_10000E5B8(v445);
        if (v215)
        {
          v221 = qword_100042B28;
          if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
          {
            *v459 = 0;
            _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_INFO, "detected interesting reset, promoting to panic", v459, 2u);
          }

          v222 = [NSMutableString stringWithString:@"sys watchdog"];
          v223 = [NSMutableString stringWithString:@"Unexpected uncategorized reset occurred"];
          v224 = v408;
          if ([v408 containsObject:@"wdog"])
          {
            v225 = @"Unexpected SoC (system) watchdog reset occurred";
            goto LABEL_376;
          }

          if ([v224 containsObject:@"spmi"])
          {
            v225 = @"Unexpected SPMI fault reset occurred";
            goto LABEL_376;
          }

          if ([v224 containsObject:@"btn_rst"])
          {
            v225 = @"Unexpected force reset occurred";
LABEL_376:
            v229 = [NSMutableString stringWithString:v225];

            v223 = v229;
          }

          switch(v219)
          {
            case 0:
              goto LABEL_746;
            case 2:
              [v222 appendString:@" panic start"];
              v230 = @" after panic called";
              goto LABEL_452;
            case 3:
              [v222 appendString:@" panic diags"];
              v230 = @" while panic diagnostics being saved";
              goto LABEL_452;
            case 4:
              [v222 appendString:@" panic diags complete"];
              v230 = @" after panic diagnostics were completed";
              goto LABEL_452;
            case 5:
              [v222 appendString:@" x86 panic diags"];
              v230 = @" while x86 panic diagnostics being saved";
              goto LABEL_452;
            case 6:
              [v222 appendString:@" panic DRAM flush"];
              v230 = @" while panic DRAM flush in progress";
              goto LABEL_452;
            case 7:
              [v222 appendString:@" panic save CE trigger"];
              v230 = @" after panic save CE trigger";
              goto LABEL_452;
            case 8:
              [v222 appendString:@" panic save chip reset"];
              v230 = @" after panic save chip reset initiated";
              goto LABEL_452;
            case 9:
              [v222 appendString:@" panic save x86 panic diags interrupted"];
              v230 = @" after panic save chip reset initiated and x86 panic diagnostics were interrupted";
              goto LABEL_452;
            case 10:
              [v222 appendString:@" iBoot panic save entry"];
              v230 = @" after iBoot panic save entry";
              goto LABEL_452;
            case 11:
              [v222 appendString:@" iBoot panic save reboot"];
              v230 = @" during iBoot panic save reboot";
              goto LABEL_452;
            case 12:
              [v222 appendString:@" iBoot panic save power init"];
              v230 = @" after iBoot panic save power init";
              goto LABEL_452;
            case 13:
              [v222 appendString:@" iBoot panic save memory init"];
              v230 = @" after iBoot panic save memory init";
              goto LABEL_452;
            case 14:
              [v222 appendString:@" iBoot panic save storage init"];
              v230 = @" after iBoot panic save storage init";
              goto LABEL_452;
            case 15:
              [v222 appendString:@" iBoot Stage LLB start"];
              v230 = @" after iBoot LLB start";
              goto LABEL_452;
            case 16:
              [v222 appendString:@" iBoot Stage LLB end"];
              v230 = @" after iBoot LLB end";
              goto LABEL_452;
            case 17:
              [v222 appendString:@" iBoot start"];
              v230 = @" after iBoot start";
              goto LABEL_452;
            case 18:
              [v222 appendString:@" iBoot end"];
              v230 = @" after iBoot end";
              goto LABEL_452;
            case 19:
              [v222 appendString:@" iBoot end"];
              v230 = @" after iBoot LLB Autoboot";
              goto LABEL_452;
            case 20:
              [v222 appendString:@" iBoot end"];
              v230 = @" after iBoot Autoboot";
              goto LABEL_452;
            case 21:
              [v222 appendString:@" iBoot end"];
              v230 = @" after iBoot kernel handoff";
              goto LABEL_452;
            case 22:
              [v222 appendString:@" sleep/wake transition"];
              v230 = @" during sleep/wake transition";
              goto LABEL_452;
            case 23:
              [v222 appendString:@" AP Watchdog reboot"];
              v230 = @" after AP Watchdog reboot";
              goto LABEL_452;
            case 24:
              [v222 appendString:@" AP Watchdog expired"];
              v230 = @" after AP Watchdog expired";
LABEL_452:
              [v223 appendString:v230];
              break;
            default:
              break;
          }

          v258 = v223;
          v259 = [[PanicReport alloc] initWithPanicString:v223 otherString:0 buildVersion:0 panicFlags:0 panicType:v222 incidentID:0 rootsInstalled:0];
          [(PanicReport *)v259 useStackshotBuffer:0 size:0 frontmostPids:0 atTime:v381 machTime:0xFFFFFFFFLL sequence:Current];
          [(PanicReport *)v259 setForegroundAppHash:off_100042010];
          [(PanicReport *)v259 setSOCIdAndRev];
          if (v399 && [v399 count])
          {
            [(PanicReport *)v259 addNotes:v399];
            [v399 removeAllObjects];
          }

          [(PanicReport *)v259 setAppleCareDetails:&__NSArray0__struct];
          v260 = sub_10000C138(v393, 0, Current);
          v261 = [(PanicReport *)v259 saveWithOptions:v260];

          if (v261)
          {
            v262 = [(PanicReport *)v259 logfile];
            v226 = [v262 copy];
            v263 = v226;
          }

          else
          {
            v262 = qword_100042B28;
            if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
            {
              *v459 = 0;
              _os_log_error_impl(&_mh_execute_header, v262, OS_LOG_TYPE_ERROR, "failed to write system watchdog reset panic log", v459, 2u);
            }

            v226 = 0;
          }
        }

        else
        {
          v223 = 0;
          v226 = 0;
        }

        v228 = (v390 != 0 || v226 != 0) | v392;
        goto LABEL_463;
      }

      v227 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v448.st_dev) = 0;
        _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "Skipping writing ResetCounter log as no unexpected resets detected", &v448, 2u);
      }

      v223 = 0;
      v390 = 0;
      v226 = 0;
      v228 = 1;
LABEL_463:

      sub_10000E5B8(&v404);
      v385 = v223;
      v379 = v390;
      v391 = v226;

      if ((v228 & 1) == 0)
      {
        v264 = qword_100042B28;
        if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v448.st_dev) = 0;
          _os_log_error_impl(&_mh_execute_header, v264, OS_LOG_TYPE_ERROR, "Failed to write boot fault report", &v448, 2u);
        }
      }

      v265 = obja;
      v266 = v391;
      if (obja)
      {
        LODWORD(v381) = [obja containsString:@"forceReset"];
      }

      else
      {
        LODWORD(v381) = 0;
      }

      if (![v395 length] && !objc_msgSend(obja, "length") && objc_msgSend(v397, "count"))
      {
        if (os_variant_has_internal_diagnostics())
        {
          *&v448.st_dev = 0;
          v267 = sub_10000D4EC();
          v268 = sub_10000D704(v267, @"debug", &v448);

          v265 = obja;
          v266 = v391;
          if (v268)
          {
            st_dev = v448.st_dev;
            v270 = qword_100042B28;
            v271 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
            if ((st_dev & 0x100000) == 0)
            {
              if (v271)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEFAULT, "Machine configured to NOT reboot on a panic", buf, 2u);
              }

              goto LABEL_513;
            }

            if (v271)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEFAULT, "Machine configured to reboot on a panic", buf, 2u);
            }
          }
        }

        v281 = qword_100042B10;
        if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v448.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEFAULT, "Write a standalone socd panic report", &v448, 2u);
        }

        v282 = [v394 output_dir];
        v402 = obja;
        v403 = v395;
        v283 = sub_100014F9C(v282, &v403, &v402, v397, Current);
        v284 = v403;

        v285 = v402;
        if ((v283 & 1) == 0)
        {
          v286 = qword_100042B10;
          if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v448.st_dev) = 0;
            _os_log_error_impl(&_mh_execute_header, v286, OS_LOG_TYPE_ERROR, "Failed to write standalone socd panic report", &v448, 2u);
          }
        }

        v395 = v284;
        v265 = v285;
        v266 = v391;
      }

LABEL_513:
      obj = v265;
      if (v265)
      {
        v287 = 1;
      }

      else
      {
        v287 = v266 == 0;
      }

      LODWORD(v288) = !v287;
      if (!v287)
      {
        obj = v266;
        v289 = v385;

        v395 = v289;
      }

      if (qword_100042A28 != -1)
      {
        dispatch_once(&qword_100042A28, &stru_100038E38);
      }

      if (byte_100042A20 == 1)
      {
        v290 = v395;
        v291 = v385;
        v394 = objc_alloc_init(NSMutableDictionary);
        if ([v290 length])
        {
          v292 = [v290 componentsSeparatedByString:@"\n"];
          v293 = [v292 objectAtIndex:0];

          [v394 setObject:v293 forKey:@"PanicReason"];
        }

        if ([v291 length])
        {
          v294 = [v291 componentsSeparatedByString:@"\n"];
          v295 = [v294 objectAtIndex:0];

          [v394 setObject:v295 forKey:@"UnexpecteResetReason"];
        }
      }

      else
      {
        v394 = 0;
      }

      v76 = 0;
      v3 = 0;
      v296 = 1;
      v129 = &unk_1000391E0;
      v88 = &_mh_execute_header;
      v77 = "ready to submit %s";
      do
      {
        v297 = v296;

        v298 = [[UserCoreFileHandler alloc] initWithCoreFilePath:"launchd"];
        v299 = v298;
        if (v298)
        {
          v3 = [(UserCoreFileHandler *)v298 saveUserSpaceCoreToDisk:Current];
          if (v3)
          {
            [v440[5] addObject:v3];
            v300 = qword_100042B28;
            if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
            {
              v301 = v3;
              v302 = [(__CFDictionary *)v3 UTF8String];
              v448.st_dev = 136315138;
              *&v448.st_mode = v302;
              _os_log_impl(&_mh_execute_header, v300, OS_LOG_TYPE_DEFAULT, "ready to submit %s", &v448, 0xCu);
            }
          }
        }

        else
        {
          v3 = 0;
        }

        v296 = 0;
        v76 = 1;
      }

      while ((v297 & 1) != 0);
      sub_100021E3C(obj, v440[5], v394);
      v139 = "/var/run/com.apple.DumpPanic.finishedThisBoot";
      if (creat("/var/run/com.apple.DumpPanic.finishedThisBoot", 0x100u) < 0)
      {
        v88 = __error();
        v77 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          v76 = *v88;
          v88 = v77;
          v327 = strerror(v76);
          v448.st_dev = 136315394;
          *&v448.st_mode = "/var/run/com.apple.DumpPanic.finishedThisBoot";
          WORD2(v448.st_ino) = 2080;
          *(&v448.st_ino + 6) = v327;
          _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "failed to creat() DumpPanicDone cookie at path %s with error %s", &v448, 0x16u);
        }
      }

      v398 = +[NSMutableArray array];
      v303 = @"864503";
      if (v288)
      {
        v303 = @"1111324";
      }

      if (v381)
      {
        v304 = @"864502";
      }

      else
      {
        v304 = v303;
      }

      [v398 addObject:v304];
      if (!obj && ![v440[5] count])
      {
LABEL_583:
        if (v388)
        {
          v317 = objc_autoreleasePoolPush();
          v318 = [KeyStore alloc];
          v319 = [(ReadOnlyKeyStore *)v318 init:qword_100042B28];
          v320 = v319;
          if (v319 && [v319 unlock])
          {
            [v320 RotateKeys:sub_10000DE34];
          }

          else
          {
            v321 = qword_100042B28;
            if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v448.st_dev) = 0;
              _os_log_error_impl(&_mh_execute_header, v321, OS_LOG_TYPE_ERROR, "Failed to unlock a keystore. Encryption not vailable.", &v448, 2u);
            }
          }

          objc_autoreleasePoolPop(v317);
        }

        sub_10000E5B8(&v414);
        _Block_object_dispose(&v427, 8);

        _Block_object_dispose(&v433, 8);
        _Block_object_dispose(&v439, 8);

        v8 = 0;
        v7 = v396;
        goto LABEL_592;
      }

      if (pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_708;
      }

      v305 = v440[5];
      v389 = obj;
      v382 = v395;
      v139 = v305;
      v376 = v398;
      v306 = +[NSMutableArray array];
      v76 = v306;
      if (obj)
      {
        [v306 addObject:v389];
      }

      if (v139)
      {
        [v76 addObjectsFromArray:v139];
      }

      v393 = v139;
      if (MGGetBoolAnswer())
      {
        v457 = 0u;
        v458 = 0u;
        memset(buf, 0, sizeof(buf));
        v88 = v393;
        v129 = [v88 countByEnumeratingWithState:buf objects:&v448 count:16];
        if (v129)
        {
          v139 = **&buf[16];
          LODWORD(v77) = -1;
          while (2)
          {
            for (m = 0; m != v129; ++m)
            {
              if (**&buf[16] != v139)
              {
                objc_enumerationMutation(v88);
              }

              if ([*(*&buf[8] + 8 * m) rangeOfString:@"secure" options:1] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v308 = 1;
                goto LABEL_565;
              }
            }

            v129 = [v88 countByEnumeratingWithState:buf objects:&v448 count:16];
            if (v129)
            {
              continue;
            }

            break;
          }
        }

        v308 = 0;
LABEL_565:
      }

      else
      {
        v308 = 0;
      }

      if (_os_feature_enabled_impl())
      {
        v309 = v382;
        v310 = v309;
        if (v308)
        {
          v88 = [v309 stringByAppendingFormat:@"\n\n%@", @"[Warning: The attachments may contain privacy-sensitive sensor data.]"];

          v310 = v88;
        }

        v311 = v76;
        v129 = v389;
        v312 = v310;
        if (objc_opt_class())
        {
          v88 = objc_alloc_init(DiagnosticsReporterLaunchOptions);
          [v88 setFiles_to_attach:v311];
          [v88 setLog_path:v129];
          [v88 setPanic_string:v312];
          v313 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
          {
            v314 = v313;
            v315 = [v88 files_to_attach];
            v316 = [v88 log_path];
            v77 = [v88 panic_string];
            v448.st_dev = 138412802;
            *&v448.st_mode = v315;
            WORD2(v448.st_ino) = 2112;
            *(&v448.st_ino + 6) = v316;
            HIWORD(v448.st_gid) = 2112;
            *&v448.st_rdev = v77;
            _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_DEFAULT, "Launching DiagnosticsReporter with files to attach: %@, log_path: %@, and panic string: %@", &v448, 0x20u);
          }

          *&v448.st_dev = 0;
          v448.st_ino = &v448;
          *&v448.st_uid = v5;
          *&v448.st_rdev = sub_10000CB64;
          v448.st_atimespec.tv_sec = sub_10000CB74;
          v448.st_atimespec.tv_nsec = dispatch_group_create();
          dispatch_group_enter(*(v448.st_ino + 40));
          *buf = _NSConcreteStackBlock;
          *&buf[8] = v6;
          *&buf[16] = sub_10000CB7C;
          *&buf[24] = &unk_100038FA0;
          *&v457 = &v448;
          [OSADiagnosticsReporter launchAppWith:0 options:v88 completion:buf];
          v139 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
          {
            *v451 = 0;
            _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Waiting for DR to launch.", v451, 2u);
          }

          dispatch_group_wait(*(v448.st_ino + 40), 0xFFFFFFFFFFFFFFFFLL);
          _Block_object_dispose(&v448, 8);
        }

        else
        {
          v139 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v448.st_dev) = 0;
            _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "OSADiagnosticsReporter does not exist and thus we cannot launch DR", &v448, 2u);
          }
        }
      }

      else
      {
        if (!os_variant_has_internal_diagnostics())
        {
          goto LABEL_582;
        }

        if (sub_10000CC80())
        {
          v139 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v448.st_dev) = 0;
            _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Detected stress rack device, skipping prompting user for panic", &v448, 2u);
          }
        }

        else
        {
          if (objc_opt_class())
          {
            v323 = +[TapToRadarService shared];
            v375 = [v323 serviceSettings];

            if ([v375 authorizationStatus] == 1)
            {
              v139 = qword_100042B28;
              if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v448.st_dev) = 0;
                v324 = "TapToRadarService reports the user has turned off DumpPanic prompts, skipping prompting user for panic";
                goto LABEL_607;
              }

              goto LABEL_697;
            }

            v325 = @"Your device has recovered from a panic";
            if (v288)
            {
              v325 = @"Your device has rebooted after an unexpected reset";
            }

            if (v381)
            {
              v88 = @"Your device has rebooted after a force reset";
            }

            else
            {
              v88 = v325;
            }

            v326 = +[NSUserDefaults standardUserDefaults];
            LODWORD(v77) = [v326 BOOLForKey:@"skipTTR"];

            if (v77)
            {
              v139 = qword_100042B28;
              if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v448.st_dev) = 0;
                v324 = "skipping launching TTR because of user defaults...";
LABEL_607:
                _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, v324, &v448, 2u);
              }

LABEL_697:

              goto LABEL_582;
            }

            v374 = [v375 authorizationStatus];
            if (v308)
            {
              v373 = [@"File a radar now?" stringByAppendingFormat:@"\n%@", @"[Warning: The attachments may contain privacy-sensitive sensor data.]"];
            }

            else
            {
              v373 = @"File a radar now?";
            }

            if (v374 == 2)
            {
              if (MGGetSInt32Answer() == 7)
              {
                v139 = qword_100042B28;
                if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v448.st_dev) = 0;
                  v345 = "skipping launching TTR because DumpPanic is currently rate limited...";
                  goto LABEL_684;
                }

                goto LABEL_696;
              }

LABEL_650:
              if (!sub_10000C428(v88, v373))
              {
                v139 = qword_100042B28;
                if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v448.st_dev) = 0;
                  v345 = "skipping launching TTR...";
LABEL_684:
                  _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, v345, &v448, 2u);
                }

LABEL_696:

                goto LABEL_697;
              }
            }

            v348 = @"it recovered from a panic";
            if (v288)
            {
              v348 = @"it rebooted after an unexpected reset";
            }

            v349 = @"device panic";
            if (v288)
            {
              v349 = @"device unexpected reset";
            }

            if (v381)
            {
              v350 = @"it rebooted after a force reset";
            }

            else
            {
              v350 = v348;
            }

            v351 = @"device force reset";
            if (!v381)
            {
              v351 = v349;
            }

            v370 = v351;
            v371 = v350;
            v372 = [v76 componentsJoinedByString:@"\n"];
            [v76 removeAllObjects];
            if (v381)
            {
              v88 = +[NSFileManager defaultManager];
              *v451 = 0;
              v139 = [v88 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" error:v451];
              v129 = *v451;
              if (!v129)
              {
                v457 = 0u;
                v458 = 0u;
                memset(buf, 0, sizeof(buf));
                v352 = v139;
                v353 = [v352 countByEnumeratingWithState:buf objects:&v448 count:16];
                v381 = v139;
                if (v353)
                {
                  v77 = **&buf[16];
                  do
                  {
                    for (n = 0; n != v353; n = n + 1)
                    {
                      if (**&buf[16] != v77)
                      {
                        objc_enumerationMutation(v352);
                      }

                      v355 = [@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" stringByAppendingPathComponent:*(*&buf[8] + 8 * n)];
                      [v76 addObject:v355];
                    }

                    v353 = [v352 countByEnumeratingWithState:buf objects:&v448 count:16];
                  }

                  while (v353);
                }

                v139 = v381;
              }

              v356 = [NSString stringWithFormat:@"I force reset my device while …\n\nExpected attachments:\n (sysdiagnose)\n%@", v372];

              v357 = @"1028387";
              v358 = @"Triage";
              v359 = @"Force Resets";
            }

            else
            {
              v360 = @"My device panicked while …\n\n%@\n\nExpected attachments:\n (sysdiagnose)\n%@";
              if (v288)
              {
                v360 = @"My device unexpectedly reset while …\n\n%@\n\nExpected attachments:\n (sysdiagnose)\n%@";
              }

              v88 = v360;
              if (v382)
              {
                v77 = [v382 componentsSeparatedByString:@"\n"];
                v139 = [v77 objectAtIndex:0];
              }

              else
              {
                v139 = @"No panic log found";
              }

              v356 = [NSString stringWithFormat:v88, v139, v372];

              if (v288)
              {
                v359 = @"Unexpected Resets";
              }

              else
              {
                v359 = @"Panic Triage";
              }

              if (v288)
              {
                v358 = @"Triage";
              }

              else
              {
                v358 = @"iOS";
              }

              if (v288)
              {
                v357 = @"1176064";
              }

              else
              {
                v357 = @"609970";
              }
            }

            sub_10000C6B0(v371, v370, v356, v359, v358, v357, v76, v376, v374 == 2);

            goto LABEL_696;
          }

          v139 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v448.st_dev) = 0;
            _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "TapToRadarServiceSettings does not exist and thus we cannot start a radar", &v448, 2u);
          }
        }
      }

LABEL_582:

      if (!pthread_set_qos_class_self_np(QOS_CLASS_UTILITY, 0))
      {
        goto LABEL_583;
      }

LABEL_708:
      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_709:
      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_710:
      v366 = v76;
      v367 = *__error();
      v368 = __error();
      v369 = strerror(*v368);
      v448.st_dev = 67109378;
      *&v448.st_mode = v367;
      LOWORD(v448.st_ino) = 2080;
      *(&v448.st_ino + 2) = v369;
      _os_log_error_impl(&_mh_execute_header, v366, OS_LOG_TYPE_ERROR, "Failed to unlink panic data -- DKIOCUNMAP failed with %d : %s", &v448, 0x12u);

LABEL_645:
      close(v77);
LABEL_646:
    }

    free(v139);
    v155 = v445[0];
    if (v445[0])
    {
      v156 = qword_100042B28;
      v157 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
      if (v155 > 7)
      {
        if (v157)
        {
          v448.st_dev = 134217984;
          *&v448.st_mode = v155;
          v158 = "%llu bytes were read from the file or device, but it did not contain any paniclog data (buffer was all zeros).";
          v159 = v156;
          v160 = 12;
          goto LABEL_243;
        }
      }

      else if (v157)
      {
        v448.st_dev = 134218240;
        *&v448.st_mode = v155;
        WORD2(v448.st_ino) = 2048;
        *(&v448.st_ino + 6) = 8;
        v158 = "%llu bytes were read from the file or device, but at least %lu are required to fit the iBoot panic header.";
        v159 = v156;
        v160 = 22;
LABEL_243:
        _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, v158, &v448, v160);
      }
    }

    else
    {
      v161 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v448.st_dev) = 0;
        v158 = "No data was read from the file or device (buffer length was zero).";
        v159 = v161;
        v160 = 2;
        goto LABEL_243;
      }
    }

    v139 = 0;
    v152 = 0;
    goto LABEL_245;
  }

  v88 = v235;

  v445[0] = 0;
  v236 = malloc_type_valloc(0x240000uLL, 0xD88185F5uLL);
  v139 = v236;
  if (v236)
  {
    bzero(v236, 0x240000uLL);
    v445[0] = 0;
    v237 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v238 = v237;
      v239 = [v88 path];
      v448.st_dev = 138412290;
      *&v448.st_mode = v239;
      _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "Opening paniclog path '%@'\n", &v448, 0xCu);
    }

    v240 = [v88 path];
    v241 = v240;
    LODWORD(v77) = open([v240 UTF8String], 0);

    if ((v77 & 0x80000000) != 0)
    {
      v255 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v362 = v255;
        v363 = __error();
        v364 = strerror(*v363);
        v365 = [v88 path];
        v448.st_dev = 136315394;
        *&v448.st_mode = v364;
        WORD2(v448.st_ino) = 2112;
        *(&v448.st_ino + 6) = v365;
        _os_log_error_impl(&_mh_execute_header, v362, OS_LOG_TYPE_ERROR, "ERROR: '%s' when opening '%@'", &v448, 0x16u);
      }

      free(v139);
      v139 = 0;
      goto LABEL_646;
    }

    v242 = pread(v77, v139, 0x240000uLL, 0);
    v243 = v242;
    if (v242 == -1)
    {
      if (*__error() == 22)
      {
        v275 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
        {
          v276 = v275;
          v277 = [v88 path];
          v448.st_dev = 138412290;
          *&v448.st_mode = v277;
          _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_DEFAULT, "No panic data detected from '%@'", &v448, 0xCu);
        }

        free(v139);
        v139 = 0;
        goto LABEL_645;
      }
    }

    else if ((v242 & 0x8000000000000000) == 0)
    {
      v244 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        v448.st_dev = 134217984;
        *&v448.st_mode = v243;
        _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_DEFAULT, "Read %ld bytes from panic device", &v448, 0xCu);
      }

      v445[0] = v243;
      LODWORD(properties[0]) = 0;
      if (ioctl(v77, 0x40046418uLL, properties))
      {
        v245 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          v246 = v245;
          v247 = *__error();
          v248 = __error();
          v249 = strerror(*v248);
          v448.st_dev = 67109378;
          *&v448.st_mode = v247;
          LOWORD(v448.st_ino) = 2080;
          *(&v448.st_ino + 2) = v249;
          _os_log_error_impl(&_mh_execute_header, v246, OS_LOG_TYPE_ERROR, "Failed to query disk block size -- DKIOCGETBLOCKSIZE failed with %d : %s", &v448, 0x12u);
        }
      }

      else
      {
        *buf = 0;
        *&buf[8] = LODWORD(properties[0]);
        *v451 = buf;
        *&v451[8] = 1;
        if (ioctl(v77, 0x8010641FuLL, v451))
        {
          v76 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_710;
          }
        }
      }

      goto LABEL_645;
    }

    v278 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v279 = v278;
      v280 = *__error();
      v448.st_dev = 134218754;
      *&v448.st_mode = v243;
      WORD2(v448.st_ino) = 2048;
      *(&v448.st_ino + 6) = 2359296;
      HIWORD(v448.st_gid) = 2112;
      *&v448.st_rdev = v88;
      LOWORD(v448.st_atimespec.tv_sec) = 1024;
      *(&v448.st_atimespec.tv_sec + 2) = v280;
      _os_log_impl(&_mh_execute_header, v279, OS_LOG_TYPE_DEFAULT, "Unexpected pread result (%zd of %zu bytes) of panic data (%@): errno %d", &v448, 0x26u);
    }

    goto LABEL_645;
  }

LABEL_717:
  _os_assert_log();
  PanicLogData = _os_crash();
  __break(1u);
LABEL_718:
  if (PanicLogData <= 3)
  {
    goto LABEL_727;
  }

  if (PanicLogData > 5)
  {
LABEL_734:
    if (PanicLogData == 6)
    {
      goto LABEL_744;
    }

    if (PanicLogData != 7)
    {
      goto LABEL_745;
    }

    _os_crash();
    __break(1u);
    goto LABEL_737;
  }

  if (PanicLogData != 4)
  {
    _os_crash();
    __break(1u);
  }

LABEL_741:
  _os_crash();
  __break(1u);
LABEL_742:
  _os_crash();
  __break(1u);
LABEL_743:
  _os_crash();
  __break(1u);
LABEL_744:
  _os_crash();
  __break(1u);
LABEL_745:
  _os_crash();
  __break(1u);
LABEL_746:
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_100021A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000E5B8(&a56);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021C68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100021C80(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = v3;
  if (v2 == 1)
  {
    v11 = objc_autoreleasePoolPush();
    if (qword_100042AF0 != -1)
    {
      dispatch_once(&qword_100042AF0, &stru_1000390B8);
    }

    v12 = [CoreFileHandler coreFileWithCoreFilePath:off_100042068];
    if (v12)
    {
      v13 = _os_feature_enabled_impl();
      if (v13)
      {
        v14 = "/private/var/db/DumpPanic/Coredumps";
      }

      else
      {
        v14 = "/private/var/mobile/Library/Logs/CrashReporter/Panics";
      }

      if (v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = 3;
      }

      v16 = [v12 saveKernelCoreToDisk:v14 :v15 :0 :0 :v4];
      if (v16)
      {
        [v9 addObjectsFromArray:v16];
      }

      if (!sub_10000CC80() || (v7 = 0, os_parse_boot_arg_int()))
      {
        v7 = [v12 getPanicRegion];
      }
    }

    else
    {
      v7 = 0;
    }

    objc_autoreleasePoolPop(v11);
    v17 = v7;
  }

  objc_storeStrong(v6, v7);
  v18 = *(*(*(a1 + 56) + 8) + 40);

  return dispatch_semaphore_signal(v18);
}

void sub_100021E3C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (qword_100042B20 != -1)
  {
    dispatch_once(&qword_100042B20, &stru_100039240);
  }

  v8 = qword_100042B18;
  v9 = +[NSFileManager defaultManager];
  v10 = [NSString stringWithFormat:@"%s", "/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = v8;
    v13 = [NSURL fileURLWithPath:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
    v60 = 0;
    v14 = [NSData dataWithContentsOfURL:v13 options:0 error:&v60];
    v15 = v60;

    if (!v14)
    {
      v20 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v49 = v20;
        v50 = [v15 description];
        v51 = [v50 UTF8String];
        *buf = 136315138;
        v62 = v51;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Read from panic log breadcrumb failed due to %s", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v59 = 0;
    v16 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v59];
    v17 = v59;

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v16 objectForKey:v12];

        if (v18)
        {

          v19 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Found panic log breadcrumb with duplicated boot session uuid", buf, 2u);
          }

          goto LABEL_18;
        }
      }

      else
      {
        v23 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Breadcrumb file contains invalid data", buf, 2u);
        }
      }
    }

    else
    {
      v21 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        log = v21;
        v55 = [v17 description];
        v22 = [v55 UTF8String];
        *buf = 136315138;
        v62 = v22;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to parse breadcrumb with error : %s", buf, 0xCu);
      }
    }

LABEL_18:
    if (unlink("/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"))
    {
      v24 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v46 = v24;
        v47 = __error();
        v48 = strerror(*v47);
        *buf = 136315138;
        v62 = v48;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to unlink prior stashed panic log breadcrumb %s", buf, 0xCu);
      }
    }
  }

  v25 = [NSMutableDictionary alloc];
  if (v5)
  {
    v26 = v5;
  }

  else
  {
    v26 = &stru_100039908;
  }

  v27 = [v25 initWithObjectsAndKeys:{v26, v8, 0}];
  if (v6 && [v6 count])
  {
    v28 = [v8 stringByAppendingString:@"-corefile_paths"];
    [v27 setObject:v6 forKey:v28];
  }

  if (qword_100042A28 == -1)
  {
    if (!v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&qword_100042A28, &stru_100038E38);
    if (!v7)
    {
      goto LABEL_32;
    }
  }

  if (byte_100042A20 && [v7 count])
  {
    v29 = [v8 stringByAppendingString:@"-PanicMedic_info"];
    [v27 setObject:v7 forKey:v29];
  }

LABEL_32:
  v30 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v62 = v27;
    v63 = 2080;
    v64 = "/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb";
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "write %@ to %s", buf, 0x16u);
  }

  v31 = open("/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb", 2561, 420);
  if ((v31 & 0x80000000) != 0)
  {
    v37 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v43 = v37;
      v44 = __error();
      v45 = strerror(*v44);
      *buf = 136315138;
      v62 = v45;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to safely open file : %s", buf, 0xCu);
    }

    v35 = 0;
  }

  else
  {
    v32 = v31;
    v58 = 0;
    v33 = [NSPropertyListSerialization dataWithPropertyList:v27 format:100 options:0 error:&v58];
    v34 = v58;
    if (v34)
    {
      v35 = v34;
      v36 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v40 = v36;
        v41 = [v35 description];
        v42 = [v41 UTF8String];
        *buf = 136315138;
        v62 = v42;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to construct panic log breadcrumb: %s", buf, 0xCu);
      }

      close(v32);
    }

    else
    {
      v38 = [[NSFileHandle alloc] initWithFileDescriptor:v32 closeOnDealloc:0];
      v57 = 0;
      [v38 writeData:v33 error:&v57];
      v35 = v57;
      if (v35)
      {
        v39 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          loga = v39;
          v56 = [v35 description];
          v52 = [v56 UTF8String];
          *buf = 136315138;
          v62 = v52;
          _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "Faled to write panic log breadcrumb: %s", buf, 0xCu);
        }
      }

      close(v32);
    }
  }
}

void sub_1000225A4(id a1)
{
  memset(v6, 0, sizeof(v6));
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    v1 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Failed to get kern.bootsessionuuid", v4, 2u);
    }
  }

  else
  {
    v2 = [NSString stringWithCString:v6 encoding:4];
    v3 = qword_100042B18;
    qword_100042B18 = v2;
  }
}

void sub_100024FF4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = qword_100042B28;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = [v19 name];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    v21 = qword_100042B28;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = [v19 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Reason: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100024EDCLL);
  }

  _Unwind_Resume(a1);
}

id sub_100025BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"type";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100025C84(uint64_t result, unsigned __int8 a2)
{
  *result = a2 | (*result << 8);
  if ((*(result + 26) & 1) == 0)
  {
    v2 = *(result + 32);
    if (v2)
    {
      if (!*v2)
      {
        return (*(*(result + 8) + 24))(*(result + 16), 4 * *(result + 24) + 12);
      }
    }
  }

  return result;
}

uint64_t sub_100025CCC(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  result = 47;
  if (a1 && a4 && (a2 || !a3))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if (*v6)
      {
        return 20;
      }

      else
      {
        *a4 = 2;
        if (a3 && (*a2 = 0, a3 != 1))
        {
          result = 0;
          a2[1] = 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 72;
    }
  }

  return result;
}

uint64_t sub_100025D38(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 47;
  if (a1 && a3)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      if (*v5)
      {
        return 20;
      }

      else
      {
        v6 = (*(*(a1 + 8) + 16))(*(a1 + 16), a2 + 5);
        if (v6)
        {
          *a1 = v6 | (*a1 << 8);
          v3 = 13;
          sub_100025C84(a1, 0xDu);
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 72;
    }
  }

  return v3;
}

uint64_t sub_100025DC8(uint64_t a1)
{
  if (!a1)
  {
    return 47;
  }

  if (*(a1 + 32))
  {
    sub_100025EF8(a1);
    *(a1 + 32) = 0;
  }

  *a1 = 0;
  v11 = 0;
  v10 = 0;
  v2 = (*(*(a1 + 8) + 16))(*(a1 + 16), 0, &v10, 5);
  if (v2)
  {
    *a1 = v2 | (*a1 << 8);
    v3 = 39;
    v4 = a1;
    v5 = 39;
  }

  else if (v10 == 1145261907 || v10 == 1414090313)
  {
    if (v11)
    {
      return 20;
    }

    v7 = *(*(a1 + 8) + 40);
    if (v7)
    {
      v8 = v7(*(a1 + 16), 2);
    }

    else
    {
      v8 = malloc(2uLL);
    }

    *(a1 + 32) = v8;
    if (v8)
    {
      v3 = 0;
      *v8 = 0;
      v8[1] = v10 == 1145261907;
      return v3;
    }

    v3 = 73;
    v4 = a1;
    v5 = 73;
  }

  else
  {
    v3 = 49;
    v4 = a1;
    v5 = 49;
  }

  sub_100025C84(v4, v5);
  return v3;
}

void sub_100025EF8(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v1 = *(*(a1 + 8) + 48);
    if (v1)
    {
      v1(*(a1 + 16));
    }

    else
    {
      free(*(a1 + 32));
    }
  }
}

uint64_t sub_100025F24(uint64_t *a1, void *a2)
{
  result = 47;
  if (a1 && a2)
  {
    v5 = *(*a2 + 40);
    if (v5)
    {
      v6 = v5(a2[1], 40);
    }

    else
    {
      v6 = malloc(0x28uLL);
    }

    v7 = v6;
    *a1 = v6;
    if (v6)
    {
      result = 0;
      *v7 = 0;
      v8 = a2[1];
      v7[1] = *a2;
      *(*a1 + 16) = v8;
      v9 = *a1;
      *(v9 + 24) = 0;
      *(v9 + 26) = 1;
      *(v9 + 32) = 0;
    }

    else
    {
      return 73;
    }
  }

  return result;
}

void sub_100025FB8(void *a1)
{
  if (a1)
  {
    if (a1[4])
    {
      sub_100025EF8(a1);
      a1[4] = 0;
    }

    v2 = *(a1[1] + 48);
    if (v2)
    {
      v3 = a1[2];

      v2(v3, a1);
    }

    else
    {

      free(a1);
    }
  }
}

uint64_t ccecdh_compute_shared_secret_ws(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t *a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v11 = *a2;
  v32 = *(a1 + 16);
  v12 = 3 * **a2;
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = *a4;
  *a4 = 0;
  v16 = ccn_write_uint_size_internal(*v11, v11 + 3);
  if (v15 < v16 || *a2 != *a3 || (v17 = v16, ccec_validate_point_and_projectify_ws(a1, v11, v14, (a3 + 2))) || ccec_validate_scalar(v11, &a2[3 * **a2 + 2]) || (v18 = **a2, v19 = sub_100003860(), ccec_mult_blinded_ws(v19, v20, v21, v22, v14, a6)))
  {
    v29 = 0xFFFFFFFFLL;
    v25 = v32;
  }

  else
  {
    v23 = sub_100003860();
    v25 = v32;
    if (!ccec_is_point_projective_ws(v23, v24) || (v26 = sub_100003860(), ccec_affinify_x_only_ws(v26, v27, v28, v13)))
    {
      v29 = 0xFFFFFFFFLL;
    }

    else
    {
      ccn_write_uint_padded_ct_internal(*v11, v13, v17, a5);
      v29 = 0;
      *a4 = v17;
    }
  }

  cc_clear(24 * *v11, v13);
  cc_clear(24 * *v11, v14);
  *(a1 + 16) = v25;
  return v29;
}

uint64_t ccec_generate_scalar_fips_retry_ws(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *), void *a4)
{
  v8 = a2 + 4;
  v9 = &a2[5 * *a2 + 4];
  v10 = cczp_n(v9);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = cczp_prime(v9);
  ccn_set(v10, v12, v13);
  *v12 &= ~1uLL;
  v14 = 100;
  while (1)
  {
    v15 = cczp_bitlen(&v8[5 * *a2]);
    result = ccn_random_bits_fips(v15, a4, a3);
    if (result)
    {
      break;
    }

    if ((ccn_cmp_internal(v10, a4, v12) & 0x80000000) != 0)
    {
      ccn_add1_ws(a1, v10, a4, a4, 1);
      result = 0;
      break;
    }

    if (!--v14)
    {
      result = 4294967281;
      break;
    }
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t sub_100026388(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  memset(__s, 0, sizeof(__s));
  v24[0] = 0;
  v24[1] = 0;
  v8 = (ccctr_context_size(*(a1 + 56)) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v23 - v8;
  bzero(v23 - v8, v8);
  if (a2 > 0x10000)
  {
    goto LABEL_22;
  }

  if (*(a1 + 72) && *(a1 + 48) > 0x1000000000000uLL)
  {
    v16 = 4294967234;
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  if (*(a1 + 80))
  {
    if (a4 <= 0x10000)
    {
      v15 = sub_100004740(a1, __s, 1u, v10, v11, v12, v13, v14, a4);
      if (v15)
      {
        v16 = v15;
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_22:
    v16 = 4294967233;
    goto LABEL_21;
  }

  if (*(a1 + 64) + 16 < a4)
  {
    goto LABEL_22;
  }

  cc_clear(0x30uLL, __s);
  __memcpy_chk();
LABEL_11:
  sub_100004804(a1, __s);
LABEL_12:
  v23[1] = v23;
  inc_uint(a1 + 40, 8uLL);
  v17 = *(a1 + 64);
  ccctr_init_internal(*(a1 + 56));
  for (i = -a2; a2; a2 -= v19)
  {
    if (a2 >= 0x80)
    {
      v19 = 128;
    }

    else
    {
      v19 = a2;
    }

    ccctr_update_internal(*(a1 + 56), v9, v19, &unk_10002B570, a3);
    a3 += v19;
  }

  ccctr_update_internal(*(a1 + 56), v9, i & 0xF, &unk_10002B570, v24);
  cc_clear(i & 0xF, v24);
  if (a4)
  {
    v20 = __s;
  }

  else
  {
    v20 = &unk_10002B570;
  }

  sub_1000048C8(a1, v9, v20);
  v21 = ccctr_context_size(*(a1 + 56));
  cc_clear(v21, v9);
  v16 = 0;
  ++*(a1 + 48);
LABEL_21:
  cc_clear(0x30uLL, __s);
  return v16;
}

uint64_t sub_1000265C8(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  memset(__s, 0, sizeof(__s));
  if (!a1[10])
  {
    v14 = a1[8] + 16;
    if (v14 < a4 || v14 != a2)
    {
      return 4294967233;
    }

    __memcpy_chk();
    for (; v9; --v9)
    {
      *(&v16 + v9 + 7) ^= *(a5 - 1 + v9);
    }

    goto LABEL_6;
  }

  v11 = 4294967233;
  if (a2 <= 0x10000 && a4 <= 0x10000 && *(a1[7] + 16) <= a2)
  {
    HIBYTE(v16) = HIBYTE(a5);
    v12 = sub_100004740(a1, __s, 2u, a4, a5, a6, a7, a8, a2);
    if (v12)
    {
      v11 = v12;
      goto LABEL_7;
    }

LABEL_6:
    sub_100004804(a1, __s);
    v11 = 0;
    a1[6] = 1;
LABEL_7:
    cc_clear(a1[8] + 16, __s);
  }

  return v11;
}

uint64_t ccec_x963_import_priv_ws(uint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  v5 = *a4;
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xD0;
  if (v6 || v7 == 0)
  {
    return 4294967289;
  }

  v14 = a2 + 4;
  if (a3 < (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = cczp_bitlen(&v14[5 * *a2]);
  result = ccec_x963_import_pub_ws(a1, a2, a3 - ((v16 + 7) >> 3), a4, a5);
  if (!result)
  {
    v18 = *a2;
    v19 = &a5[3 * **a5];
    v20 = (cczp_bitlen(&v14[5 * *a2]) + 7) >> 3;
    v21 = cczp_bitlen(a2);
    result = ccn_read_uint_internal(v18, v19 + 2, v20, &a4[((v21 + 7) >> 2) | 1]);
  }

  *(a1 + 16) = v15;
  return result;
}

uint64_t sub_100026838(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  if (v10)
  {
    os_unfair_lock_assert_owner(v10);
  }

  result = ccdrbg_reseed(a1[4], a1[5], a2, a3, a4, a5);
  if (!result)
  {
    a1[10] = a1[8];
  }

  return result;
}

uint64_t ccec_make_pub_from_priv_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t **a6)
{
  *a6 = a2;
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *a2);
  if (ccec_validate_scalar(a2, a4))
  {
    result = 4294967274;
    goto LABEL_10;
  }

  if (a5)
  {
    result = ccec_validate_point_and_projectify_ws(a1, a2, v14, a5);
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = &a2[2 * *a2];
    result = ccec_projectify_ws(a1, a2);
    if (result)
    {
      goto LABEL_10;
    }
  }

  v17 = sub_100008950();
  if (ccec_mult_blinded_ws(v17, v18, v19, a4, v14, a3))
  {
    result = 4294967280;
  }

  else
  {
    v20 = sub_100008950();
    if (ccec_is_point_projective_ws(v20, v21))
    {
      v22 = sub_100008950();
      if (ccec_affinify_ws(v22, v23))
      {
        result = 4294967279;
      }

      else
      {
        ccn_seti(v12, &a6[2 * **a6 + 2], 1);
        result = 0;
      }
    }

    else
    {
      result = 4294967277;
    }
  }

LABEL_10:
  *(a1 + 16) = v13;
  return result;
}

uint64_t ccecdh_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
{
  v7 = *a2;
  v8 = **a2;
  v31 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, (4 * (v8 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  *v9 = v7;
  v10 = *v7;
  v11 = v9 + 2;
  v12 = &v9[3 * *v7 + 2];
  ccn_set(1, v12, &unk_10002B608);
  ccn_zero(v10 - 1, (v12 + 8));
  if (!a3)
  {
    v13 = &v7[2 * *v7 + 4 + *v7];
  }

  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, 3 * *v7);
  result = sub_100026C64(a1, v7, v15, &v11[3 * **v9]);
  if (!result)
  {
    result = ccec_affinify_ws(a1, v7);
    *(a1 + 16) = v14;
    if (!result)
    {
      v17 = (cczp_bitlen(v7) + 7) >> 3;
      v32 = v17;
      v18 = (*(a1 + 24))(a1, v8);
      v19 = (*(a1 + 24))(a1, v8);
      cc_clear(v17, v18);
      cc_clear(v17, v19);
      result = ccecdh_compute_shared_secret_ws(a1, a2, v9, &v32, v18, a4);
      if (!result)
      {
        if (!v32)
        {
          goto LABEL_15;
        }

        v20 = 0;
        v21 = 0;
        do
        {
          v21 |= v18[v20++];
        }

        while (v32 != v20);
        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = *v9;
        v23 = **v9;
        v24 = &v11[3 * v23];
        v25 = *(a1 + 16);
        v26 = (*(a1 + 24))(a1, 3 * v23);
        result = sub_100026C64(a1, v22, v26, v24);
        if (!result)
        {
          v27 = v25;
          v28 = (*(a1 + 24))(a1, v23);
          result = ccec_affinify_x_only_ws(a1, v22, v28, v26);
          if (!result)
          {
            v29 = cczp_bitlen(v22);
            ccn_write_uint_padded_internal(v23, v28, (v29 + 7) >> 3, v19);
            *(a1 + 16) = v27;
            if (v32 != v17 || (result = cc_cmp_safe_internal(v17, v18, v19), result))
            {
LABEL_15:
              result = 4294967278;
            }
          }
        }
      }
    }
  }

  *(a1 + 16) = v31;
  return result;
}

uint64_t sub_100026C64(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = 3 * *a2;
  v11 = (*(a1 + 24))(a1, v10);
  v12 = ccec_projectify_ws(a1, a2);
  if (!v12)
  {
    ccn_set(v10, a3, v11);
    v13 = ccn_bitlen_internal(v8, a4);
    if (v13 != 1)
    {
      v14 = v13 - 2;
      do
      {
        v15 = sub_100008A4C();
        ccec_double_ws(v15, v16);
        if ((*(a4 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14))
        {
          v17 = sub_100008A4C();
          ccec_full_add_normalized_ws(v17, v18, v19, v20, v11);
        }

        --v14;
      }

      while (v14 != -1);
    }
  }

  *(a1 + 16) = v9;
  return v12;
}

void ccn_random_bits(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v4 = (a1 + 63) >> 6;
  if (!(*a3)(a3, 8 * v4, a2))
  {
    sub_10000942C();
    *(a2 + 8 * v4 - 8) &= v5;
  }
}

uint64_t ccn_random_bits_fips(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v4 = (a1 + 63) >> 6;
  if ((a1 + 63) > 0x7F)
  {
    v5 = (*a3)(a3, 8 * v4, a2);
  }

  else
  {
    v9 = 0;
    __src = 0;
    v5 = (*a3)(a3, 12uLL, &__src);
    memcpy(a2, &__src, 8 * v4);
    cc_clear(8 * v4, &__src);
  }

  if (!v5)
  {
    sub_10000942C();
    *(a2 + v4 - 1) &= v6;
  }

  return v5;
}

uint64_t ccrng_process_init(uint64_t a1, uint64_t (*a2)(void), uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  ccrng_schedule_timer_init(a1 + 128, a2, 5000000000);
  ccrng_schedule_atomic_flag_init(a1 + 168);
  ccrng_schedule_tree_init(a1 + 96, a1 + 128, a1 + 168);
  result = cc_lock_init((a1 + 208));
  if (!result)
  {
    result = ccentropy_rng_init((a1 + 192), a3);
    if (!result)
    {
      v7 = ccaes_cbc_encrypt_mode();
      result = ccdrbg_df_bc_init_internal((a1 + 224), v7, 0x20uLL);
      if (!result)
      {
        v8 = ccaes_ctr_crypt_mode();
        v9 = xmmword_10002B610;
        DWORD2(v9) = 1;
        v10 = a1 + 224;
        ccdrbg_factory_nistctr((a1 + 768), &v8);
        memset(v12, 0, sizeof(v12));
        result = (*a3)(a3, 32, v12);
        if (!result)
        {
          a2();
          strcpy(v11, "corecrypto process rng");
          result = ccdrbg_init_internal(a1 + 768);
          if (!result)
          {
            result = ccrng_crypto_init((a1 + 8), a1 + 192, a1 + 96, a1 + 208, a1 + 768, a1 + 824, 4096, 0x20uLL, 256, a1 + 2104);
            if (!result)
            {
              *a1 = sub_100009534;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccec_validate_scalar(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = cczp_prime(&a1[5 * *a1 + 4]);
  if ((ccn_cmp_internal(v4, a2, v5) & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (ccn_n(*a1, a2))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ccec_import_affine_point_ws(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  if (!a4)
  {
    return 4294967289;
  }

  v11 = *a2;
  if (a4 == 1 && !*a5)
  {
    return 4294967136;
  }

  switch(a3)
  {
    case 4:
      v12 = 4294967124;
      if (a4 != (cczp_bitlen(a2) + 7) >> 3)
      {
        return v12;
      }

LABEL_22:
      v15 = *(a1 + 16);
      v16 = (*(a1 + 24))(a1, v11);
      if (a3 == 4)
      {
        v17 = a5;
      }

      else
      {
        v17 = a5 + 1;
      }

      v18 = cczp_bitlen(a2);
      uint_public_value = ccn_read_uint_public_value(v11, a6, (v18 + 7) >> 3, v17);
      if (!uint_public_value)
      {
        if (ccn_cmp_public_value(v11, a6, a2 + 3) != -1)
        {
LABEL_38:
          *(a1 + 16) = v15;
          return v12;
        }

        if ((a3 - 3) > 1)
        {
          v22 = &a5[(cczp_bitlen(a2) + 7) >> 3];
          v23 = &a6[*a2];
          v24 = cczp_bitlen(a2);
          uint_public_value = ccn_read_uint_public_value(v11, v23, (v24 + 7) >> 3, v22 + 1);
          if (!uint_public_value)
          {
            if (a3 == 2)
            {
              v27 = a6[*a2];
              sub_100009FD4();
              if (!v14)
              {
                v12 = 4294967125;
                goto LABEL_38;
              }
            }

            goto LABEL_37;
          }
        }

        else
        {
          uint_public_value = ccec_affine_point_from_x_ws(a1, a2, a6, a6);
          if (!uint_public_value)
          {
            cczp_negate(a2, v16, &a6[*a2]);
            v20 = &a6[*a2];
            if (a3 == 4)
            {
              v21 = ccn_cmp_public_value(v11, v16, v20) >> 31;
            }

            else
            {
              v25 = *v20;
              sub_100009FD4();
              if (v14)
              {
                LOBYTE(v21) = 0;
              }

              else
              {
                LOBYTE(v21) = 1;
              }
            }

            ccn_mux(v11, v21, v20, v16, v20);
LABEL_37:
            v12 = 0;
            goto LABEL_38;
          }
        }
      }

      v12 = uint_public_value;
      goto LABEL_38;
    case 1:
      cczp_bitlen(a2);
      sub_100009FE8();
      if (v14)
      {
        v12 = 4294967126;
        if (*a5 == 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        return 4294967126;
      }

      break;
    case 2:
      cczp_bitlen(a2);
      sub_100009FE8();
      if (v14)
      {
        v13 = *a5 - 8;
        v12 = 4294967125;
LABEL_17:
        if (v13 < 0xFFFFFFFE)
        {
          return v12;
        }

        goto LABEL_22;
      }

      return 4294967125;
    case 3:
      if (ccec_compressed_x962_export_pub_size(a2) != a4)
      {
        return 4294967135;
      }

      v13 = *a5 - 4;
      v12 = 4294967135;
      goto LABEL_17;
    default:
      return 4294967289;
  }

  return v12;
}

uint64_t ccec_export_affine_point_public_value(uint64_t *a1, int a2, uint64_t *a3, unint64_t *a4, char *a5)
{
  v10 = ccec_export_affine_point_size(a1, a2);
  if (!v10)
  {
    return 4294967289;
  }

  if (*a4 < v10)
  {
    return 4294967133;
  }

  *a4 = v10;
  v11 = a2 - 1;
  if ((a2 - 1) <= 2)
  {
    *a5 = 0x20604u >> (8 * v11);
  }

  v12 = *a1;
  if (a2 == 4)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 + 1;
  }

  v14 = cczp_bitlen(a1);
  if ((ccn_write_uint_padded_ct_internal(v12, a3, (v14 + 7) >> 3, v13) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 <= 1)
  {
    v15 = &v13[(cczp_bitlen(a1) + 7) >> 3];
    v16 = &a3[*a1];
    v17 = cczp_bitlen(a1);
    if ((ccn_write_uint_padded_ct_internal(v12, v16, (v17 + 7) >> 3, v15) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    *a5 |= a3[*a1] & 1;
  }

  return result;
}

uint64_t ccdrbg_df_bc_derive_keys(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = (*v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v51 - v11;
  bzero(&v51 - v11, v11);
  v13 = (v10[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v51 - v13;
  v15 = 0;
  if (a2)
  {
    v16 = (a3 + 8);
    v17 = a2;
    do
    {
      v18 = *v16;
      v16 += 2;
      v15 += v18;
      --v17;
    }

    while (v17);
  }

  bzero(v14, v13);
  v60[0] = 0;
  v60[1] = 0;
  v61 = bswap32(v15);
  v62 = bswap32(a4);
  v59 = xmmword_10002B660;
  memset(v58, 0, sizeof(v58));
  v19 = *(a1 + 16);
  __src[0] = 0;
  __src[1] = 0;
  v55 = v19 + 16;
  if (v19 != -16)
  {
    v20 = 0;
    v21 = 0;
    v51 = 16 - (v15 & 0xF ^ 8);
    v52 = (a3 + 8);
    v53 = a2;
    v54 = v12;
    while (1)
    {
      sub_10000BD74();
      LODWORD(v60[0]) = bswap32(v21);
      v56 = 0;
      v22 = *(a1 + 8);
      sub_10000BD64();
      inited = sub_100027748(v23, v24, v14, v25, v26, 0x18uLL, v60);
      if (inited)
      {
        goto LABEL_29;
      }

      v28 = v52;
      v29 = v53;
      if (v53)
      {
        while (1)
        {
          v30 = *(a1 + 8);
          v32 = *(v28 - 1);
          v31 = *v28;
          sub_10000BD64();
          v39 = sub_100027748(v33, v34, v14, v35, v36, v37, v38);
          if (v39)
          {
            break;
          }

          v28 += 2;
          if (!--v29)
          {
            goto LABEL_10;
          }
        }

        v49 = v39;
        v12 = v54;
        goto LABEL_27;
      }

LABEL_10:
      v40 = *(a1 + 8);
      sub_10000BD64();
      inited = sub_100027748(v41, v42, v14, v43, v44, v51, &v59);
      v12 = v54;
      if (inited)
      {
        goto LABEL_29;
      }

      ++v21;
      v20 += 16;
      if (v20 >= v55)
      {
        v10 = *(a1 + 8);
        v45 = *(a1 + 16);
        break;
      }
    }
  }

  inited = cccbc_init_internal(v10);
  if (inited)
  {
LABEL_29:
    v49 = inited;
    goto LABEL_27;
  }

  if (a4)
  {
    v46 = v58 + *(a1 + 16);
    do
    {
      sub_10000BD74();
      v47 = (a4 <= 0xF ? __src : a5);
      inited = cccbc_update_internal(*(a1 + 8), v12, v14, 1, v46, v47);
      if (inited)
      {
        goto LABEL_29;
      }

      if (a4 <= 0xF)
      {
        memcpy(a5, __src, a4);
      }

      if (a4 >= 0x10)
      {
        v48 = 16;
      }

      else
      {
        v48 = a4;
      }

      a5 = (a5 + v48);
      v46 = v47;
      a4 -= v48;
    }

    while (a4);
  }

  v49 = 0;
LABEL_27:
  cc_clear(**(a1 + 8), v12);
  sub_10000BD74();
  return v49;
}

uint64_t sub_100027748(int a1, int a2, int a3, uint64_t a4, void *a5, size_t __n, char *__src)
{
  v7 = __src;
  v8 = __n;
  v11 = 16 - *a5;
  if (*a5)
  {
    v12 = __n >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    memcpy((a4 + *a5), __src, 16 - *a5);
    v13 = sub_10000BD90();
    result = cccbc_update_internal(v13, v14, v15, v16, a4, a4);
    if (result)
    {
      return result;
    }

    v8 -= v11;
    v7 += v11;
    *a5 = 0;
  }

  if (v8 < 0x10)
  {
LABEL_11:
    if (v8)
    {
      memcpy((a4 + *a5), v7, v8);
      result = 0;
      *a5 += v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v18 = sub_10000BD90();
      result = cccbc_update_internal(v18, v19, v20, v21, v7, a4);
      if (result)
      {
        break;
      }

      v8 -= 16;
      v7 += 16;
      if (v8 <= 0xF)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t ccdrbg_df_bc_init_internal(void *a1, void *a2, unint64_t a3)
{
  v3 = 4294967291;
  if (a3 <= 0x20 && *a2 <= 0x200uLL)
  {
    if (a2[1] == 16)
    {
      *a1 = ccdrbg_df_bc_derive_keys;
      a1[1] = a2;
      a1[2] = a3;
      return cccbc_init_internal(a2);
    }

    else
    {
      return 4294967291;
    }
  }

  return v3;
}

uint64_t ccec_generate_key_internal_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, uint64_t), uint64_t **a4)
{
  v8 = *a2;
  *a4 = a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_bitlen(a2);
  result = (*a3)(a3, ((v11 + 62) >> 3) & 0x1FFFFFFFFFFFFFF8, v10);
  if (!result)
  {
    v13 = sub_10000BEA4(*a4);
    result = ccec_generate_scalar_fips_retry_ws(v13, v14, v15, v16);
    if (!result)
    {
      v17 = sub_10000BEA4(*a4);
      result = ccec_make_pub_from_priv_ws(v17, v18, v19, v20, 0, a4);
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_validate_point_and_projectify_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = cczp_prime(a2);
  if (ccn_cmp_internal(v8, v9, a4) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a2;
  v11 = a4 + 8 * *a2;
  v12 = cczp_prime(a2);
  if (ccn_cmp_internal(v10, v12, v11) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = ccec_projectify_ws(a1, a2);
  if (!result)
  {
    if (ccec_is_point_ws(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 4294967289;
    }
  }

  return result;
}
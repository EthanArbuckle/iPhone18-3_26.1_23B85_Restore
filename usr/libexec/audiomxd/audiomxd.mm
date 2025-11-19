void start()
{
  [NSError _setFileNameLocalizationEnabled:0];
  _set_user_dir_suffix();
  v0 = [+[NSString stringWithFormat:](NSString UTF8String:@"%@AudioCapture"];
  memset(&__to, 0, sizeof(__to));
  v1 = (v0 - 1);
  do
  {
    v2 = v1->__r_.__value_.__s.__data_[1];
    v1 = (v1 + 1);
  }

  while (v2);
  sub_100002F10(&__to.__pn_, v0, v1);
  memset(&__new_symlink, 0, sizeof(__new_symlink));
  sub_100002F10(&__new_symlink.__pn_, "/var/tmp/AudioCapture", "");
  __ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  std::__fs::filesystem::__create_directory_symlink(&__to, &__new_symlink, &__ec);
  if (__ec.__val_)
  {
    if (__ec.__val_ != 17)
    {
      v3 = CADefaultLog();
      v4 = v3;
      if (v3)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          p_to = &__to;
          if ((__to.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_to = __to.__pn_.__r_.__value_.__r.__words[0];
          }

          buf = 136315906;
          buf_4 = "audiomxd_iOS.mm";
          v27 = 1024;
          v28 = 211;
          v29 = 2080;
          v30 = p_to;
          v31 = 1024;
          val = __ec.__val_;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error creating symlink to %s. Code:%d", &buf, 0x22u);
        }
      }
    }
  }

  std::__fs::filesystem::__create_directory(&__to, &__ec);
  if (__ec.__val_)
  {
    if (__ec.__val_ != 17)
    {
      v6 = CADefaultLog();
      v7 = v6;
      if (v6)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = &__to;
          if ((__to.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v8 = __to.__pn_.__r_.__value_.__r.__words[0];
          }

          buf = 136315906;
          buf_4 = "audiomxd_iOS.mm";
          v27 = 1024;
          v28 = 215;
          v29 = 2080;
          v30 = v8;
          v31 = 1024;
          val = __ec.__val_;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error creating %s path. Code:%d", &buf, 0x22u);
        }
      }
    }
  }

  setiopolicy_np(9, 0, 1);
  if (qword_10000C040 != -1)
  {
    dispatch_once(&qword_10000C040, &stru_1000085D8);
  }

  v9 = os_signpost_id_generate(qword_10000C038);
  if (qword_10000C040 != -1)
  {
    dispatch_once(&qword_10000C040, &stru_1000085D8);
  }

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = qword_10000C038;
    if (os_signpost_enabled(qword_10000C038))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "audiomxdSubServerCreationTime", " enableTelemetry=YES ", &buf, 2u);
      if (qword_10000C040 != -1)
      {
        dispatch_once(&qword_10000C040, &stru_1000085D8);
      }
    }

    v11 = qword_10000C038;
    if (os_signpost_enabled(qword_10000C038))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "audiomxdStartTime", " enableTelemetry=YES ", &buf, 2u);
    }
  }

  pthread_set_fixedpriority_self();
  *__relative_priority = 0;
  v12 = pthread_self();
  if (!pthread_get_qos_class_np(v12, &__relative_priority[1], __relative_priority))
  {
    pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0);
  }

  v13 = getprogname();
  openlog(v13, 40, 24);
  getpid();
  proc_disable_wakemon();
  wd_endpoint_register();
  out_token[0] = 0;
  v14 = notify_register_dispatch("com.apple.language.changed", out_token, &_dispatch_main_q, &stru_100008638);
  if (v14)
  {
    v15 = CADefaultLog();
    v16 = v15;
    if (v15)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        buf = 136315650;
        buf_4 = "audiomxd_iOS.mm";
        v27 = 1024;
        v28 = 157;
        v29 = 1024;
        LODWORD(v30) = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not register for language change notification, err = %u", &buf, 0x18u);
      }
    }
  }

  qword_10000C030 = CFRunLoopGetCurrent();
  v17 = dispatch_queue_create("com.apple.coreaudio.audiomxd.cleanup", 0);
  objc_autoreleasePoolPush();
  signal(15, 1);
  signal(1, 1);
  signal(13, 1);
  v18 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v17);
  if (v18)
  {
    v19 = v18;
    dispatch_source_set_event_handler(v18, &stru_1000085F8);
    dispatch_resume(v19);
    operator new();
  }

  __assert_rtn("main", "audiomxd_iOS.mm", 262, "gSTS_TERM != NULL");
}

void sub_1000024DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100002694(uint64_t a1)
{
  *a1 = &off_100008588;
  if (*(a1 + 8) != 1)
  {

    operator delete();
  }

  v2 = CAVerboseAbort();
  return sub_1000026F4(v2);
}

uint64_t sub_1000026F4(uint64_t result)
{
  *result = &off_100008588;
  if (*(result + 8) == 1)
  {
    CAVerboseAbort();
    return sub_100002738();
  }

  return result;
}

uint64_t sub_10000275C(uint64_t a1)
{
  *a1 = &off_100008588;
  if (*(a1 + 8) != 1)
  {

    operator delete();
  }

  v2 = CAVerboseAbort();
  return sub_1000027BC(v2);
}

void sub_1000027BC(uint64_t a1)
{
  *a1 = &off_100008588;
  if (*(a1 + 8) == 1)
  {
    v1 = CAVerboseAbort();
    sub_100002800(v1);
  }
}

void sub_100002844(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_100002C80();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_100002B48();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_100002944(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_100002984()
{
  if (!qword_10000C050)
  {
    qword_10000C050 = _sl_dlopen();
  }

  return qword_10000C050;
}

uint64_t sub_100002A54()
{
  v0 = sub_100002984();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *sub_100002AB0(uint64_t a1)
{
  v2 = sub_100002A54();
  result = dlsym(v2, "MSNMonitorStartMic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000C058 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100002B00(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_100002B48();
}

void sub_100002B48()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100002B7C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100002BD8(exception, a1);
}

std::logic_error *sub_100002BD8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100002C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C050 = result;
  return result;
}

uint64_t sub_100002CA8(uint64_t a1)
{
  *a1 = &off_100008588;
  if (*(a1 + 8) != 1)
  {

    operator delete();
  }

  v2 = CAVerboseAbort();
  return sub_100002D08(v2);
}

void sub_100002D08(uint64_t a1)
{
  *a1 = &off_100008588;
  if (*(a1 + 8) == 1)
  {
    v1 = CAVerboseAbort();
    sub_100002D4C(v1);
  }
}

void sub_100002D4C(id a1)
{
  v1 = CADefaultLog();
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "audiomxd_iOS.mm";
      v5 = 1024;
      v6 = 264;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d SIGTERM received, process about to terminate.", &v3, 0x12u);
    }
  }

  if (qword_10000C030)
  {
    byte_10000C048 = 1;
    CFRunLoopStop(qword_10000C030);
  }
}

void sub_100002E1C(id a1, int a2)
{
  v2 = CADefaultLog();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "audiomxd_iOS.mm";
      v8 = 1024;
      v9 = 153;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d com.apple.language.changed notification received", &v6, 0x12u);
    }
  }

  v4 = CADefaultLog();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "audiomxd_iOS.mm";
      v8 = 1024;
      v9 = 140;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audiomxd exiting", &v6, 0x12u);
    }
  }

  exit(0);
}

std::string *sub_100002F10(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000030D8();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_1000030BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000033BC()
{
  sub_100004594(v1);
  XPC_Connection::~XPC_Connection(v0);
  operator delete();
}

void sub_100003428(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 40);
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return;
  }

  v43 = 0;
  v42 = object;
  if (object)
  {
    reply = xpc_dictionary_create_reply(object);
    v5 = v42;
  }

  else
  {
    v5 = 0;
    reply = 0;
  }

  Property = 560821095;
  xdict = reply;
  v40 = 1;
  v8 = (v3 + 48);
  v7 = *(v3 + 48);
  v37 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  v9 = xpc_dictionary_get_value(v5, "type");
  v10 = v9;
  if (!v9 || xpc_get_type(v9) != &_xpc_type_uint64)
  {
    goto LABEL_8;
  }

  v12 = xpc_uint64_get_value(v10);
  if (v12 > 1869636973)
  {
    switch(v12)
    {
      case 1869636974:
        if (!v42)
        {
          goto LABEL_61;
        }

        v19 = xpc_dictionary_get_value(v42, "data");
        v20 = v19;
        if (!v19 || xpc_get_type(v19) != &_xpc_type_data)
        {
          goto LABEL_61;
        }

        xpc_data_get_length(v20);
        bytes_ptr = xpc_data_get_bytes_ptr(v20);
        v29 = 0;
        Property = sub_100003B4C(bytes_ptr, &v29);
        if (Property)
        {
          goto LABEL_8;
        }

        LODWORD(inStartingPacket) = 0;
        sub_100003C48(v42, "hint", &inStartingPacket);
        if (!v7)
        {
          Property = AudioFileOpenURL(v29, kAudioFileReadPermission, inStartingPacket, (v3 + 48));
          if (!Property)
          {
            v22 = *(v3 + 48);
            ioDataSize[0] = 40;
            Property = AudioFileGetProperty(v22, 0x64666D74u, ioDataSize, (v3 + 128));
            if (Property)
            {
              AudioFileClose(v22);
            }
          }

          goto LABEL_8;
        }

        break;
      case 1886547824:
        if (v7)
        {
          if (!sub_100003C48(v42, "selector", &v37))
          {
            goto LABEL_61;
          }

          v23 = v37;
          v24 = sub_100003CA8(v37);
          if ((v24 & 1) != 0 || v23 == 1633776244 || v23 == 1819243876 || v23 == 1768842863)
          {
            ioDataSize[0] = 0;
            isWritable[0] = 0;
            Property = AudioFileGetPropertyInfo(v7, v23, ioDataSize, isWritable);
            if (Property)
            {
              goto LABEL_8;
            }

            if (v23 == 1633776244 || v23 == 1819243876 || v23 == 1768842863)
            {
              inStartingPacket = 0;
              Property = AudioFileGetProperty(v7, v23, ioDataSize, &inStartingPacket);
              if (!Property)
              {
                Data = CFPropertyListCreateData(kCFAllocatorDefault, inStartingPacket, kCFPropertyListBinaryFormat_v1_0, 0, 0);
                v29 = Data;
                LOBYTE(value) = 1;
                if (Data)
                {
                  Length = CFDataGetLength(Data);
                  BytePtr = CFDataGetBytePtr(v29);
                  if (xdict)
                  {
                    xpc_dictionary_set_data(xdict, "data", BytePtr, Length);
                  }

                  Property = 0;
                }

                else
                {
                  Property = 2003334207;
                }

                sub_100003E80(&v29);
              }

              goto LABEL_8;
            }

            if (v24)
            {
              sub_100003EC0(&v29, ioDataSize[0]);
              Property = AudioFileGetProperty(v7, v23, ioDataSize, v29);
              v28 = v29;
              if (Property)
              {
                if (v29)
                {
                  free(v29);
                }

                goto LABEL_8;
              }

              if (xdict)
              {
                xpc_dictionary_set_data(xdict, "data", v29, ioDataSize[0]);
                v28 = v29;
              }

              if (v28)
              {
                free(v28);
              }

LABEL_83:
              Property = 0;
              goto LABEL_8;
            }
          }

          goto LABEL_76;
        }

        break;
      case 1919246692:
        ioNumPackets = 0;
        inStartingPacket = 0;
        if (v42)
        {
          v13 = xpc_dictionary_get_value(v42, "numbytes");
          v14 = v13;
          if (v13)
          {
            if (xpc_get_type(v13) == &_xpc_type_uint64)
            {
              v15 = xpc_uint64_get_value(v14);
              ioNumBytes = v15;
              if (sub_100003C48(v42, "numpackets", &ioNumPackets))
              {
                if (sub_100003F38(v42, &inStartingPacket))
                {
                  *isWritable = 0;
                  *ioDataSize = 0;
                  value = 2;
                  v29 = off_100008818;
                  fd = -1;
                  Property = sub_100003FA0(v3 + 56, *(v3 + 140), *(v3 + 156), v15, ioNumPackets, ioDataSize, isWritable, &v29);
                  if (Property)
                  {
                    goto LABEL_8;
                  }

                  Property = AudioFileReadPacketData(v7, 0, &ioNumBytes, *isWritable, inStartingPacket, &ioNumPackets, *(*ioDataSize + 16));
                  if (Property)
                  {
                    goto LABEL_8;
                  }

                  if (xdict)
                  {
                    xpc_dictionary_set_uint64(xdict, "numbytes", ioNumBytes);
                    if (xdict)
                    {
                      xpc_dictionary_set_uint64(xdict, "numpackets", ioNumPackets);
                    }
                  }

                  v16 = fd;
                  if (fd)
                  {
                    v17 = xdict;
                    if (xdict)
                    {
                      xpc_dictionary_set_uint64(xdict, "bufsize", HIDWORD(value));
                      v17 = xdict;
                      v16 = fd;
                    }

                    xpc_dictionary_set_fd(v17, "bufFD", v16);
                  }

                  goto LABEL_83;
                }
              }
            }
          }
        }

LABEL_61:
        Property = -50;
        goto LABEL_8;
      default:
        goto LABEL_8;
    }

    goto LABEL_63;
  }

  if (v12 == 1668050803)
  {
    AudioFileClose(*v8);
    Property = 0;
    *v8 = 0;
    goto LABEL_8;
  }

  if (v12 == 1768842863)
  {
    if (v7)
    {
      if (!sub_100003C48(v42, "selector", &v37))
      {
        goto LABEL_61;
      }

      v18 = v37;
      if ((sub_100003CA8(v37) & 1) != 0 || v18 == 1633776244 || v18 == 1819243876 || v18 == 1768842863)
      {
        LODWORD(v29) = 0;
        LODWORD(inStartingPacket) = 0;
        Property = AudioFileGetPropertyInfo(v7, v18, &v29, &inStartingPacket);
        if (!Property)
        {
          if (xdict)
          {
            xpc_dictionary_set_uint64(xdict, "size", v29);
            if (xdict)
            {
              xpc_dictionary_set_uint64(xdict, "writable", inStartingPacket);
            }
          }
        }

        goto LABEL_8;
      }

LABEL_76:
      Property = 1886681407;
      goto LABEL_8;
    }

LABEL_63:
    Property = 560951410;
  }

LABEL_8:
  if (xdict)
  {
    xpc_dictionary_set_int64(xdict, "status", Property);
  }

  v11 = *(v3 + 8);
  if (v11)
  {
    xpc_connection_send_message(v11, xdict);
  }

  XPC_Dictionary::~XPC_Dictionary(&v38);
  XPC_Dictionary::~XPC_Dictionary(&v41);
}

void sub_100003AA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  XPC_Dictionary::~XPC_Dictionary(&v32);
  XPC_Dictionary::~XPC_Dictionary((v30 - 72));
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_100003B4C(const char *a1, CFURLRef *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (strncmp(a1, "ipod-library", 0xCuLL))
  {
    return 4294967253;
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x201u);
  if (!v5)
  {
    return 4294967246;
  }

  v6 = v5;
  v7 = CFURLCreateWithString(kCFAllocatorDefault, v5, 0);
  CFRelease(v6);
  if (!v7)
  {
    return 4294967246;
  }

  if (!PUTIsPersistentURL())
  {
    CFRelease(v7);
    return 4294967253;
  }

  v8 = PUTCreatePathForPersistentURL();
  CFRelease(v7);
  v4 = 4294967253;
  if (v8)
  {
    *a2 = CFURLCreateWithString(kCFAllocatorDefault, v8, 0);
    CFRelease(v8);
    if (*a2)
    {
      return 0;
    }

    else
    {
      return 4294967253;
    }
  }

  return v4;
}

uint64_t sub_100003C48(uint64_t result, const char *a2, _DWORD *a3)
{
  if (result)
  {
    result = xpc_dictionary_get_value(result, a2);
    if (result)
    {
      v4 = result;
      if (xpc_get_type(result) == &_xpc_type_uint64)
      {
        *a3 = xpc_uint64_get_value(v4);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100003CA8(int a1)
{
  result = 1;
  if (a1 <= 1718775914)
  {
    if (a1 <= 1684434291)
    {
      if (a1 <= 1652125802)
      {
        if (a1 == 1650683508)
        {
          return result;
        }

        v3 = 1651663220;
        goto LABEL_31;
      }

      if (a1 == 1652125803 || a1 == 1667787108)
      {
        return result;
      }

      v3 = 1668112752;
    }

    else if (a1 > 1701082481)
    {
      if (a1 == 1701082482 || a1 == 1717988724)
      {
        return result;
      }

      v3 = 1718383476;
    }

    else
    {
      if (a1 == 1684434292 || a1 == 1685022310)
      {
        return result;
      }

      v3 = 1685289589;
    }

LABEL_31:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 1886086769)
  {
    if (a1 > 1886616164)
    {
      if (a1 == 1886616165 || a1 == 1920168566)
      {
        return result;
      }

      v3 = 1935832164;
    }

    else
    {
      if (a1 == 1886086770 || a1 == 1886090594)
      {
        return result;
      }

      v3 = 1886283375;
    }

    goto LABEL_31;
  }

  if (a1 > 1869640812)
  {
    if (a1 == 1869640813 || a1 == 1885564532)
    {
      return result;
    }

    v3 = 1886085753;
    goto LABEL_31;
  }

  if (a1 != 1718775915 && a1 != 1768174452)
  {
    v3 = 1835493731;
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_100003E80(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *sub_100003EC0(void *a1, size_t size)
{
  *a1 = 0;
  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (size && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = v4;
  return a1;
}

uint64_t sub_100003F38(uint64_t result, int64_t *a2)
{
  if (result)
  {
    result = xpc_dictionary_get_value(result, "startingPacket");
    if (result)
    {
      v3 = result;
      if (xpc_get_type(result) == &_xpc_type_int64)
      {
        *a2 = xpc_int64_get_value(v3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100003FA0(uint64_t a1, char a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int **a6, unsigned int **a7, _DWORD *a8)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    CAAssertRtn();
    goto LABEL_65;
  }

  v13 = a3;
  if ((a2 & 0x20) != 0)
  {
    if (a3 - 65 > 0xFFFFFFBF)
    {
      v15 = 1;
      goto LABEL_6;
    }

LABEL_65:
    CAAssertRtn();
  }

  v15 = a3;
  v13 = 1;
LABEL_6:
  __chkstk_darwin();
  v17 = (&address[-1] - v16);
  bzero(&address[-1] - v16, v18 + 24);
  *v17 = v13;
  v19 = v17 + 4;
  v20 = v13;
  v21 = v13;
  do
  {
    *v19 = 0;
    *(v19 - 2) = v15;
    *(v19 - 1) = a4;
    v19 += 2;
    --v21;
  }

  while (v21);
  LODWORD(v22) = 16 - (a4 & 0xF);
  if ((a4 & 0xF) != 0)
  {
    v22 = v22;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 + a4) * v13 + 16 * a5 + 32;
  if (HIDWORD(v23))
  {
    return 4294967188;
  }

  if (*(a1 + 16) >= v23)
  {
    goto LABEL_40;
  }

  v24 = -vm_page_size & (v23 + vm_page_size - 1);
  (*(*a1 + 16))(a1);
  v25 = a8[2];
  switch(v25)
  {
    case 2:
      v29 = atomic_fetch_add_explicit(&dword_10000C064, 1u, memory_order_relaxed) + 1;
      *(a1 + 40) = v29;
      v30 = getpid();
      snprintf(address, 0x40uLL, "AppleABL.%x.%x", v30, v29);
      v31 = shm_open(address, 514, 511);
      *(a1 + 36) = v31;
      if (v31 == -1)
      {
        sub_100004BA0("shm_open");
        memory_entry_64 = *__error();
      }

      else
      {
        ftruncate(v31, v24);
        *(a1 + 16) = v24;
        v32 = mmap(0, v24, 3, 1, *(a1 + 36), 0);
        *(a1 + 24) = v32;
        if (v32 + 1 > 1)
        {
          *(a1 + 8) = 257;
          a8[3] = *(a1 + 16);
          v33 = *(a1 + 36);
LABEL_37:
          a8[4] = v33;
          break;
        }

        memory_entry_64 = *__error();
        sub_100004BA0("mmap");
        close(*(a1 + 36));
        *(a1 + 36) = -1;
        shm_unlink(address);
      }

LABEL_28:
      if (memory_entry_64)
      {
        return memory_entry_64;
      }

      break;
    case 1:
      *(a1 + 16) = v24;
      v28 = mmap(0, v24, 3, 4097, -1, 0);
      *(a1 + 24) = v28;
      if (v28 + 1 > 1)
      {
        *(a1 + 8) = 257;
        v35 = xpc_shmem_create(v28, *(a1 + 16));
        if (!v35)
        {
          v35 = xpc_null_create();
        }

        v36 = *(a1 + 48);
        *(a1 + 48) = v35;
        xpc_release(v36);
        a8[3] = *(a1 + 16);
        v37 = *(a1 + 48);
        if (v37)
        {
          xpc_retain(*(a1 + 48));
        }

        else
        {
          v37 = xpc_null_create();
        }

        v38 = *(a8 + 2);
        *(a8 + 2) = v37;
        xpc_release(v38);
        break;
      }

      memory_entry_64 = *__error();
      sub_100004BA0("mmap");
      goto LABEL_28;
    case 0:
      address[0] = 0;
      v26 = (v24 + vm_page_size - 1) & -vm_page_size;
      if (v26)
      {
        memory_entry_64 = vm_allocate(mach_task_self_, address, (v24 + vm_page_size - 1) & -vm_page_size, 1);
        if (memory_entry_64)
        {
          sub_100004ABC("vm_allocate", memory_entry_64);
          return memory_entry_64;
        }

        size = v26;
        memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, address[0], 3, (a1 + 32), 0);
        if (memory_entry_64)
        {
          vm_deallocate(mach_task_self_, address[0], v26);
          sub_100004ABC("mach_make_memory_entry_64", memory_entry_64);
          return memory_entry_64;
        }

        ++dword_10000C060;
        v34 = address[0];
        *address[0] = dword_10000C060;
        v33 = *(a1 + 32);
      }

      else
      {
        v33 = 0;
        v34 = 0;
        *(a1 + 32) = 0;
      }

      *(a1 + 8) = 257;
      *(a1 + 16) = v26;
      *(a1 + 24) = v34;
      a8[3] = v26;
      goto LABEL_37;
  }

LABEL_40:
  v39 = v17[2];
  v40 = v17[3];
  v41 = *(a1 + 24);
  *v41 = v13;
  v41[1] = v39;
  if ((v40 & 0xF) != 0)
  {
    v42 = 16 - (v40 & 0xF);
  }

  else
  {
    v42 = 0;
  }

  v43 = v42 + v40;
  v41[2] = v43;
  v41[3] = v40;
  v41[4] = a5;
  if (v13)
  {
    v44 = 0;
    v45 = (v41 + 8);
    v46 = (v17 + 4);
    do
    {
      if (*v46)
      {
        memcpy(v45, *v46, v41[3]);
        v43 = v41[2];
      }

      v45 += v43;
      ++v44;
      v46 += 2;
    }

    while (v44 < v20);
    v41 = *(a1 + 24);
    if (!v41)
    {
      return 4294967246;
    }
  }

  v47 = *v41;
  v48 = *(a1 + 64);
  if (v48)
  {
    if (*v48 >= v47)
    {
      goto LABEL_54;
    }

    free(v48);
    *(a1 + 64) = 0;
  }

  v48 = malloc_type_malloc(16 * (v47 - 1) + 24, 0xBAAF0B94uLL);
  if (!v48)
  {
    exception = __cxa_allocate_exception(8uLL);
    v60 = std::bad_alloc::bad_alloc(exception);
  }

  *(a1 + 64) = v48;
  *v48 = v47;
LABEL_54:
  *a6 = v48;
  v49 = *(a1 + 24);
  v50 = *(a1 + 64);
  v51 = *v49;
  if ((v51 - 1) >= *v50)
  {
    return 4294967246;
  }

  v52 = v49 + 8;
  *v50 = v51;
  v53 = (v50 + 4);
  v55 = v49[2];
  v54 = v49[3];
  v56 = v49[1];
  do
  {
    *v53 = v52;
    v52 = (v52 + v55);
    *(v53 - 2) = v56;
    *(v53 - 1) = v54;
    v53 += 2;
    --v51;
  }

  while (v51);
  memory_entry_64 = 0;
  if (v49[4])
  {
    v57 = v52;
  }

  else
  {
    v57 = 0;
  }

  *a7 = v57;
  return memory_entry_64;
}

void sub_100004558(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100002830(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100004594(void *a1)
{
  *a1 = off_1000087F0;
  v2 = a1[8];
  if (v2)
  {
    free(v2);
    a1[8] = 0;
  }

  return sub_1000045F4(a1);
}

uint64_t sub_1000045F4(uint64_t a1)
{
  *a1 = &off_100008880;
  sub_1000048F4(a1);
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  return a1;
}

void sub_10000464C(void *a1)
{
  sub_100004594(a1);

  operator delete();
}

void sub_100004688(XPC_Connection *a1)
{
  *a1 = off_1000087C8;
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 6);
  if (v3)
  {
    AudioFileClose(v3);
    v4 = *(a1 + 24);
    if (v4)
    {
      os_release(v4);
      *(a1 + 24) = 0;
    }
  }

  sub_100004594(a1 + 7);
  XPC_Connection::~XPC_Connection(a1);

  operator delete();
}

void sub_100004728(XPC_Connection *a1)
{
  *a1 = off_1000087C8;
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 6);
  if (v3)
  {
    AudioFileClose(v3);
    v4 = *(a1 + 24);
    if (v4)
    {
      os_release(v4);
      *(a1 + 24) = 0;
    }
  }

  sub_100004594(a1 + 7);

  XPC_Connection::~XPC_Connection(a1);
}

uint64_t sub_1000047CC(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

xpc_type_t sub_100004874(uint64_t a1, xpc_object_t object)
{
  v2 = *(a1 + 32);
  result = xpc_get_type(object);
  if (result == &_xpc_type_connection)
  {
    v4 = *(**v2 + 16);

    return v4();
  }

  return result;
}

void sub_1000048F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 9) == 1)
    {
      if (*(a1 + 32))
      {
        v3 = vm_deallocate(mach_task_self_, v2, *(a1 + 16));
        if (v3)
        {
          sub_100004ABC("vm_deallocate", v3);
        }

        v4 = *(a1 + 32);
        if (v4)
        {
          v5 = mach_port_deallocate(mach_task_self_, v4);
          if (v5)
          {
            sub_100004ABC("mach_port_deallocate", v5);
          }
        }

        *(a1 + 9) = 0;
        *(a1 + 32) = 0;
      }

      else if (xpc_get_type(*(a1 + 48)) == &_xpc_type_null)
      {
        if (*(a1 + 36) != -1)
        {
          if (munmap(*(a1 + 24), *(a1 + 16)))
          {
            sub_100004BA0("munmap");
          }

          if (close(*(a1 + 36)))
          {
            sub_100004BA0("close");
          }

          if (*(a1 + 8) == 1)
          {
            v8 = *(a1 + 40);
            v9 = getpid();
            snprintf(__str, 0x40uLL, "AppleABL.%x.%x", v9, v8);
            if (shm_unlink(__str))
            {
              sub_100004BA0("shm_unlink");
            }
          }

          *(a1 + 36) = -1;
        }
      }

      else
      {
        v6 = xpc_null_create();
        v7 = *(a1 + 48);
        *(a1 + 48) = v6;
        xpc_release(v7);
        if (munmap(*(a1 + 24), *(a1 + 16)))
        {
          sub_100004BA0("munmap");
        }
      }
    }

    else if (*(a1 + 8) == 1)
    {
      free(*(a1 + 24));
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void sub_100004AAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100002830(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100004ABC(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 136316162;
    v6 = "SharableMemory.cpp";
    v7 = 1024;
    v8 = 52;
    v9 = 2080;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 2080;
    v14 = mach_error_string(a2);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed: 0x%x (%s)", &v5, 0x2Cu);
  }

  return a2;
}

void sub_100004BA0(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    v3 = 136315906;
    v4 = "SharableMemory.cpp";
    v5 = 1024;
    v6 = 58;
    v7 = 2080;
    v8 = a1;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed: errno %d", &v3, 0x22u);
  }
}

void sub_100004C74(uint64_t a1)
{
  sub_1000045F4(a1);

  operator delete();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
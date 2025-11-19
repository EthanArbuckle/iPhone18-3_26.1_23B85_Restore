_DWORD *ConnectToServer(uint64_t *a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = *MEMORY[0x29EDCA608];
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (!a1)
  {
    v19 = 4294901756;
    syslog(4, "dnssd_clientstub DNSService operation with NULL DNSServiceRef");
LABEL_32:
    v28 = *MEMORY[0x29EDCA608];
    return v19;
  }

  if ((a2 & 0x4000) != 0)
  {
    v20 = *a1;
    if (!*a1)
    {
      v19 = 4294901756;
      syslog(4, "dnssd_clientstub kDNSServiceFlagsShareConnection used with NULL DNSServiceRef");
      goto LABEL_32;
    }

    if ((v21 = *(v20 + 4), v22 = *(v20 + 8), v21 < 0) || (*(v20 + 5) ^ v21) != 0x12345678 || (v22 != 19 ? (v23 = v22 == 1) : (v23 = 1), !v23 || v20[1]))
    {
      syslog(4, "dnssd_clientstub kDNSServiceFlagsShareConnection used with invalid DNSServiceRef %p %08X %08X op %u", v20, v21, *(v20 + 5), v22);
      *a1 = 0;
      v19 = 4294901755;
      goto LABEL_32;
    }
  }

  result = malloc_type_malloc(0x90uLL, 0xA57F437uLL);
  if (result)
  {
    v13 = result;
    *result = 0;
    *(result + 1) = 0;
    result[9] = 0;
    result[10] = 0;
    result[8] = a3;
    *(result + 1) = xmmword_299DED200;
    *(result + 6) = 0;
    *(result + 7) = a4;
    *(result + 8) = a5;
    *(result + 9) = a6;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    if ((a2 & 0x4000) != 0)
    {
      v24 = *a1;
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
      *v25 = result;
      v26 = *(*a1 + 24);
      *(*a1 + 24) = v26 + 1;
      if (v26 == -1)
      {
        ++*(*a1 + 28);
      }

      v27 = *a1;
      *(result + 1) = *a1;
      *(result + 2) = *(v27 + 16);
      *(result + 3) = *(v27 + 24);
LABEL_30:
      v19 = 0;
      *a1 = v13;
      goto LABEL_32;
    }

    v50 = 1;
    if (issetugid())
    {
      v14 = getenv("DNSSD_UDS_PATH");
      if (v14)
      {
        v15 = v14;
        if (strlen(v14) < 0x68)
        {
          goto LABEL_10;
        }

        syslog(4, "dnssd_clientstub ConnectToServer: using default path since env len is invalid");
      }
    }

    v15 = "/var/run/mDNSResponder";
LABEL_10:
    *a1 = 0;
    v16 = socket(1, 1, 0);
    v13[4] = v16;
    v13[5] = v16 ^ 0x12345678;
    if (v16 < 0)
    {
      v29 = *__error();
      v30 = __error();
      v31 = strerror(*v30);
      syslog(4, "dnssd_clientstub ConnectToServer: socket failed %d %s", v29, v31);
      FreeDNSServiceOp(v13);
      v19 = 4294901757;
      goto LABEL_32;
    }

    if (fcntl_NOCANCEL() == -1)
    {
      v18 = "dnssd_clientstub ConnectToServer: Failed to get the file descriptor flags of socket %d %s";
    }

    else
    {
      v17 = v13[4];
      if (fcntl_NOCANCEL() != -1)
      {
        goto LABEL_36;
      }

      v18 = "dnssd_clientstub ConnectToServer: Failed to set FD_CLOEXEC on socket %d %s";
    }

    v32 = *__error();
    v33 = __error();
    v34 = strerror(*v33);
    syslog(4, v18, v32, v34);
LABEL_36:
    if (setsockopt(v13[4], 0xFFFF, 4130, &v50, 8u) < 0)
    {
      v35 = *__error();
      v36 = __error();
      v37 = strerror(*v36);
      syslog(4, "dnssd_clientstub ConnectToServer: SO_NOSIGPIPE failed %d %s", v35, v37);
    }

    BYTE1(v51) = 1;
    if (strlen(v15) > 0x67)
    {
      BYTE2(v51) = 0;
    }

    else
    {
      __memcpy_chk();
    }

    v49 = 1;
    if (setsockopt(v13[4], 0xFFFF, 4352, &v49, 4u) < 0)
    {
      v38 = *__error();
      v39 = __error();
      v40 = strerror(*v39);
      syslog(4, "dnssd_clientstub ConnectToServer: SO_DEFUNCTOK failed %d %s", v38, v40);
    }

    v41 = v13[4];
    v42 = connect_NOCANCEL();
    if (v42)
    {
      v43 = v42;
      v44 = v13[4];
      v45 = *__error();
      v46 = __error();
      v47 = strerror(*v46);
      syslog(4, "dnssd_clientstub ConnectToServer: connect() failed path:%s Socket:%d Err:%d Errno:%d %s", v15, v44, v43, v45, v47);
      v48 = v13[4];
      close_NOCANCEL();
      FreeDNSServiceOp(v13);
      v19 = 4294901733;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

DNSServiceErrorType DNSServiceCreateConnection(DNSServiceRef *sdRef)
{
  v5 = 0;
  if (!sdRef)
  {
    return -65540;
  }

  v2 = ConnectToServer(sdRef, 0, 1, ConnectionResponse, 0, 0);
  if (!v2)
  {
    v6 = 0;
    v3 = create_hdr(1, &v5, &v6, 0, *sdRef);
    v2 = deliver_request(v3, *sdRef);
    if (v2)
    {
      DNSServiceRefDeallocate(*sdRef);
      *sdRef = 0;
    }
  }

  return v2;
}

_DWORD *create_hdr(int a1, size_t *a2, void *a3, int a4, uint64_t a5)
{
  v17 = *MEMORY[0x29EDCA608];
  memset(v16, 0, sizeof(v16));
  if (a4)
  {
    v6 = *a2 + 1;
  }

  else
  {
    v6 = *a2;
  }

  *a2 = v6 + 28;
  if (v6 == -28 || (v11 = malloc_type_malloc(v6 + 28, 0x55F974DFuLL)) == 0)
  {
    __break(1u);
  }

  v12 = v11;
  bzero(v11, *a2);
  *v12 = 1;
  v12[1] = v6;
  v12[2] = 0;
  v12[3] = a1;
  *(v12 + 2) = *(a5 + 24);
  v12[6] = 0;
  *a3 = v12 + 7;
  if (a4)
  {
    v13 = strlen(v16) + 1;
    memcpy(v12 + 7, v16, v13);
    *a3 += v13;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t deliver_request(int8x16_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = ((a1->i32[3] - 2) & 0xFFFFFFF6) == 0;
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x80000000) == 0 && (*(a2 + 20) ^ v5) == 0x12345678)
  {
    v6 = a1->i32[1];
    if (v4)
    {
      if (socketpair(1, 1, 0, v33) < 0)
      {
        v20 = *__error();
        if (-v20 > 0xFFFEFFFF)
        {
          v21 = -v20;
        }

        else
        {
          v21 = -65537;
        }

        v30 = v21;
        v22 = *__error();
        v23 = __error();
        v24 = strerror(*v23);
        syslog(3, "dnssd_clientstub deliver_request: %s failed %d (%s)", "socketpair", v22, v24);
        goto LABEL_37;
      }

      v7 = v33[0];
      v8 = v33[1];
      LODWORD(v31) = 1;
      if (setsockopt(v33[0], 0xFFFF, 4352, &v31, 4u) < 0)
      {
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        syslog(4, "dnssd_clientstub deliver_request: SO_DEFUNCTOK failed %d %s", v9, v11);
      }
    }

    else
    {
      v8 = -1;
      v7 = -1;
    }

    v13 = (v6 - v4);
    *a1 = vrev32q_s8(*a1);
    a1[1].i32[2] = bswap32(a1[1].u32[2]);
    v14 = write_all(*(a2 + 16), a1, v13 + 28);
    if (v14 < 0)
    {
      v16 = v14;
      syslog(6, "dnssd_clientstub deliver_request ERROR: write_all(%d, %lu bytes) failed", *(a2 + 16), v13 + 28);
      v17 = v16 == -2;
    }

    else
    {
      if (v4)
      {
        v29[0] = a1 + v13 + 28;
        v29[1] = 1;
        *v33 = 0u;
        v33[2] = 0;
        *&v34 = v29;
        *(&v34 + 1) = 1;
        *&v35 = &v31;
        *(&v35 + 1) = 16;
        v31 = 0xFFFF00000010;
        LODWORD(v32) = 1;
        HIDWORD(v32) = v8;
        v15 = *(a2 + 16);
        if (sendmsg_NOCANCEL() < 0)
        {
          v26 = *__error();
          v27 = __error();
          v28 = strerror(*v27);
          syslog(4, "dnssd_clientstub deliver_request ERROR: sendmsg failed read sd=%d write sd=%d errno %d (%s)", v7, v8, v26, v28);
          v30 = -65551;
          if ((v8 & 0x80000000) == 0)
          {
LABEL_34:
            close_NOCANCEL();
          }

LABEL_35:
          if ((v7 & 0x80000000) == 0)
          {
            close_NOCANCEL();
          }

          goto LABEL_37;
        }

        close_NOCANCEL();
        v8 = -1;
      }

      else
      {
        v7 = *(a2 + 16);
      }

      if (v7 <= 1023)
      {
        v32 = 0;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *v33 = 0u;
        if (__darwin_check_fd_set_overflow(v7, v33, 0))
        {
          *(v33 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
        }

        v31 = 60;
        if (!select_NOCANCEL())
        {
          syslog(4, "dnssd_clientstub set_waitlimit:_daemon timed out (%d secs) without any response: Socket %d", 60, v7);
          v19 = -65568;
          goto LABEL_32;
        }
      }

      v30 = 0;
      all = read_all(v7, &v30, 4uLL);
      if ((all & 0x80000000) == 0)
      {
        v19 = bswap32(v30);
        goto LABEL_32;
      }

      v17 = all == -3;
    }

    if (v17)
    {
      v19 = -65569;
    }

    else
    {
      v19 = -65563;
    }

LABEL_32:
    v30 = v19;
    if (!v4)
    {
LABEL_37:
      free(a1);
      result = v30;
      goto LABEL_38;
    }

    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  free(a1);
  syslog(4, "dnssd_clientstub deliver_request: invalid DNSServiceRef %p %08X %08X", a2, *(a2 + 16), *(a2 + 20));
  result = 4294901755;
LABEL_38:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t write_all(int a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = send_NOCANCEL();
    v7 = v6;
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = v3 == v6;
    if (v3 < v6)
    {
      break;
    }

    a2 += v6;
    v3 -= v6;
    if (v8)
    {
      return 0;
    }
  }

  v16 = 0;
  v15 = 4;
  if (getsockopt(a1, 0xFFFF, 4353, &v16, &v15) < 0)
  {
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    syslog(4, "dnssd_clientstub write_all: SO_ISDEFUNCT failed %d %s", v10, v12);
  }

  if (v16)
  {
    syslog(6, "dnssd_clientstub write_all(%d) DEFUNCT");
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      v13 = *__error();
      v14 = __error();
      strerror(*v14);
    }

    syslog(4, "dnssd_clientstub write_all(%d) failed %ld/%ld %d %s");
  }

  if (v16)
  {
    return 4294967294;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t read_all(int a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    while (1)
    {
      v6 = recv_NOCANCEL();
      v7 = v6;
      if (v6 < 0)
      {
        break;
      }

      if (v6 - 1 >= v3)
      {
        goto LABEL_10;
      }

      a2 += v6;
      v3 -= v6;
      if (!v3)
      {
        return 0;
      }
    }

    if (*__error() != 4)
    {
      break;
    }

    syslog(6, "dnssd_clientstub read_all: EINTR continue");
  }

LABEL_10:
  v14 = 4;
  v15 = 0;
  if (getsockopt(a1, 0xFFFF, 4353, &v15, &v14) < 0)
  {
    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    syslog(4, "dnssd_clientstub read_all: SO_ISDEFUNCT failed %d %s", v9, v11);
  }

  if (v15)
  {
    syslog(6, "dnssd_clientstub read_all(%d) DEFUNCT");
  }

  else
  {
    if (v7 < 0)
    {
      v12 = *__error();
      v13 = __error();
      strerror(*v13);
    }

    syslog(4, "dnssd_clientstub read_all(%d) failed %ld/%ld %d %s");
  }

  if (v7 < 0 && *__error() == 35)
  {
    return 4294967294;
  }

  if (v15)
  {
    return 4294967293;
  }

  return 0xFFFFFFFFLL;
}

DNSServiceErrorType DNSServiceSetDispatchQueue(DNSServiceRef service, dispatch_queue_t queue)
{
  v4 = -65540;
  v5 = DNSServiceRefSockFD(service);
  if (v5 != -1)
  {
    if (queue)
    {
      if (*(service + 12))
      {
        syslog(4, "dnssd_clientstub DNSServiceSetDispatchQueue dispatch queue set already");
      }

      else if (*(service + 11))
      {
        syslog(4, "dnssd_clientstub DNSServiceSetDispatchQueue dispatch source set already");
      }

      else
      {
        v7 = v5;
        v8 = dispatch_source_create(MEMORY[0x29EDCA5B8], v5, 0, queue);
        *(service + 11) = v8;
        if (v8)
        {
          *(service + 12) = queue;
          handler[0] = MEMORY[0x29EDCA5F8];
          handler[1] = 0x40000000;
          handler[2] = __DNSServiceSetDispatchQueue_block_invoke;
          handler[3] = &__block_descriptor_tmp;
          handler[4] = service;
          dispatch_source_set_event_handler(v8, handler);
          v9 = *(service + 11);
          v10[0] = MEMORY[0x29EDCA5F8];
          v10[1] = 0x40000000;
          v10[2] = __DNSServiceSetDispatchQueue_block_invoke_2;
          v10[3] = &__block_descriptor_tmp_36;
          v11 = v7;
          dispatch_source_set_cancel_handler(v9, v10);
          dispatch_resume(*(service + 11));
          return 0;
        }

        else
        {
          syslog(4, "dnssd_clientstub DNSServiceSetDispatchQueue dispatch_source_create failed");
          return -65539;
        }
      }
    }

    else
    {
      syslog(4, "dnssd_clientstub: DNSServiceSetDispatchQueue dispatch queue NULL");
    }
  }

  return v4;
}

dnssd_sock_t DNSServiceRefSockFD(DNSServiceRef sdRef)
{
  if (sdRef)
  {
    result = *(sdRef + 4);
    if (result < 0 || (*(sdRef + 5) ^ result) != 0x12345678)
    {
      syslog(4, "dnssd_clientstub DNSServiceRefSockFD called with invalid DNSServiceRef %p %08X %08X");
    }

    else
    {
      if (!*(sdRef + 1))
      {
        return result;
      }

      syslog(4, "dnssd_clientstub DNSServiceRefSockFD undefined for kDNSServiceFlagsShareConnection subordinate DNSServiceRef %p");
    }
  }

  else
  {
    syslog(4, "dnssd_clientstub DNSServiceRefSockFD called with NULL DNSServiceRef");
  }

  return -1;
}

uint64_t DNSServiceBrowseInternal(uint64_t *a1, int a2, int a3, const char *a4, const char *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = 4294901756;
  if (a1)
  {
    if (a4)
    {
      if (a7)
      {
        v8 = ConnectToServer(a1, a2, 6, handle_browse_response, a7, a8);
        if (!v8)
        {
          if (a5)
          {
            v15 = a5;
          }

          else
          {
            v15 = &unk_299DED8C6;
          }

          v16 = strlen(a4);
          v17 = strlen(v15);
          v27 = v16 + v17 + 10;
          if (a6)
          {
            v18 = 8;
            if (a6[3])
            {
              v18 = a6[3] + 12;
            }

            v27 = v18 + v16 + v17 + 10;
          }

          v28 = 0;
          v19 = create_hdr(6, &v27, &v28, *(*a1 + 8) != 0, *a1);
          v21 = v27;
          v20 = v28;
          *v28 = HIBYTE(a2);
          v20[1] = BYTE2(a2);
          v20[2] = BYTE1(a2);
          v20[3] = a2;
          v20[4] = HIBYTE(a3);
          v20[5] = BYTE2(a3);
          v20[6] = BYTE1(a3);
          v20[7] = a3;
          v22 = strlen(a4) + 1;
          memcpy(v20 + 8, a4, v22);
          v23 = &v20[v22 + 8];
          v24 = strlen(v15) + 1;
          memcpy(v23, v15, v24);
          v28 = &v23[v24];
          if (a6)
          {
            put_tlvs_for_validation_attr(a6, v19, &v28, &v20[v21]);
          }

          v25 = deliver_request(v19, *a1);
          v8 = v25;
          if (v25)
          {
            if (v25 != -65555)
            {
              goto LABEL_19;
            }

            if (_should_return_noauth_error_s_once != -1)
            {
              dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
            }

            if (_should_return_noauth_error_s_should != 1)
            {
              return 0;
            }

            else
            {
LABEL_19:
              DNSServiceRefDeallocate(*a1);
              *a1 = 0;
            }
          }
        }
      }
    }
  }

  return v8;
}

void DNSServiceRefDeallocate(DNSServiceRef sdRef)
{
  if (sdRef)
  {
    v1 = sdRef;
    v2 = *(sdRef + 4);
    if (v2 < 0 || (*(sdRef + 5) ^ v2) != 0x12345678)
    {
      v12 = *(sdRef + 4);
      syslog(4, "dnssd_clientstub DNSServiceRefDeallocate called with invalid DNSServiceRef %p %08X %08X");
    }

    else
    {
      v3 = *(sdRef + 6);
      if (v3)
      {
        *v3 = 0;
      }

      v4 = *(sdRef + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
          if (v4)
          {
            v6 = v4 == sdRef;
          }

          else
          {
            v6 = 1;
          }
        }

        while (!v6);
        if (v4)
        {
          v13 = 0;
          v14 = 0;
          v7 = create_hdr(63, &v13, &v14, 0, sdRef);
          *v7 = vrev32q_s8(*v7);
          v7[1].i32[2] = bswap32(v7[1].u32[2]);
          write_all(*(v1 + 4), v7, v13);
          free(v7);
          *v5 = *v1;
          FreeDNSServiceOp(v1);
        }
      }

      else
      {
        if (*(sdRef + 11))
        {
          *(sdRef + 7) = 0;
          shutdown(*(sdRef + 4), 1);
          dispatch_source_cancel(*(v1 + 11));
          v8 = *(v1 + 11);
          if (v8)
          {
            dispatch_release(v8);
            *(v1 + 11) = 0;
          }
        }

        else if (!*(sdRef + 12))
        {
          v9 = *(sdRef + 4);
          close_NOCANCEL();
        }

        do
        {
          v10 = *v1;
          v11 = *(v1 + 6);
          if (v11)
          {
            *v11 = 0;
          }

          FreeDNSServiceOp(v1);
          v1 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    syslog(4, "dnssd_clientstub DNSServiceRefDeallocate called with NULL DNSServiceRef");
  }
}

void FreeDNSServiceOp(_DWORD *a1)
{
  v2 = a1[5];
  if ((v2 ^ a1[4]) == 0x12345678)
  {
    *a1 = 0u;
    *(a1 + 2) = 0xDDDDDDDDFFFFFFFFLL;
    *(a1 + 4) = 0;
    a1[10] = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    v3 = *(a1 + 11);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 11) = 0;
    }

    *(a1 + 12) = 0;
    v4 = *(a1 + 15);
    if (v4)
    {
      free(v4);
      *(a1 + 15) = 0;
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 10);
    if (v5)
    {
      do
      {
        v6 = *v5;
        v7 = v5[7];
        if (v7)
        {
          free(v7);
        }

        free(v5);
        v5 = v6;
      }

      while (v6);
    }

    v8 = *(a1 + 17);
    if (v8)
    {
      free(v8);
    }

    free(a1);
  }

  else
  {
    syslog(4, "dnssd_clientstub attempt to dispose invalid DNSServiceRef %p %08X %08X", a1, a1[4], v2);
    FreeDNSServiceOp_op_were_not_going_to_free_but_we_need_to_fool_the_analyzer = a1;
  }
}

const char *InternalTXTRecordSearch(int a1, const char *a2, char *__s, size_t *a4)
{
  v6 = a2;
  v7 = &a2[a1];
  v8 = strlen(__s);
  *a4 = v8;
  if (v7 <= v6)
  {
    return 0;
  }

  v9 = v8;
  v10 = v8 + 1;
  while (1)
  {
    v11 = *v6;
    v12 = &v6[v11 + 1];
    v13 = v12 > v7 || v9 > v11;
    if (!v13 && !strncasecmp(__s, v6 + 1, v9) && (v9 == v11 || v6[v10] == 61))
    {
      break;
    }

    v6 += v11 + 1;
    if (v12 >= v7)
    {
      return 0;
    }
  }

  return v6;
}

const void *__cdecl TXTRecordGetValuePtr(uint16_t txtLen, const void *txtRecord, const char *key, uint8_t *valueLen)
{
  v8 = 0;
  result = InternalTXTRecordSearch(txtLen, txtRecord, key, &v8);
  if (result)
  {
    v6 = *result;
    v7 = v8;
    if (v8 >= v6)
    {
      return 0;
    }

    else
    {
      *valueLen = v6 + ~v8;
      return result + v7 + 2;
    }
  }

  return result;
}

DNSServiceErrorType TXTRecordSetValue(TXTRecordRef *txtRecord, const char *key, uint8_t valueSize, const void *value)
{
  v7 = -65549;
  v8 = *key;
  v9 = key;
  if (*key)
  {
    v9 = key;
    while (v8 >= 32 && v8 != 61 && v8 != 127)
    {
      v10 = *++v9;
      v8 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_22;
  }

LABEL_7:
  v11 = valueSize;
  v12 = valueSize + 2;
  if (!value)
  {
    v12 = 1;
  }

  v13 = v9 - key;
  if (v9 != key)
  {
    v14 = v12 + v13;
    if (v12 + v13 <= 0xFF)
    {
      TXTRecordRemoveValue(txtRecord, key);
      v15 = *(&txtRecord->ForceNaturalAlignment + 5);
      v16 = v14 + v15;
      if (v16 <= *(&txtRecord->ForceNaturalAlignment + 4))
      {
        ForceNaturalAlignment = txtRecord->ForceNaturalAlignment;
LABEL_19:
        v19 = &ForceNaturalAlignment[v15];
        v20 = &ForceNaturalAlignment[v15 + 1];
        memcpy(v20, key, v13);
        v21 = &v20[v13];
        if (value)
        {
          *v21++ = 61;
          memcpy(v21, value, v11);
          LOWORD(v21) = v21 + v11;
        }

        v7 = 0;
        *v19 = v21 - v19 - 1;
        *(&txtRecord->ForceNaturalAlignment + 5) += v21 - v19;
        goto LABEL_22;
      }

      if (!(v16 >> 16))
      {
        v17 = malloc_type_malloc(v16, 0x3EA3FBABuLL);
        if (!v17)
        {
          __break(1u);
          return v17;
        }

        ForceNaturalAlignment = v17;
        memcpy(v17, txtRecord->ForceNaturalAlignment, *(&txtRecord->ForceNaturalAlignment + 5));
        if (*(&txtRecord->ForceNaturalAlignment + 6) && txtRecord->ForceNaturalAlignment)
        {
          free(txtRecord->ForceNaturalAlignment);
        }

        txtRecord->ForceNaturalAlignment = ForceNaturalAlignment;
        *(&txtRecord->ForceNaturalAlignment + 4) = v16;
        *(&txtRecord->ForceNaturalAlignment + 6) = 1;
        v15 = *(&txtRecord->ForceNaturalAlignment + 5);
        goto LABEL_19;
      }
    }
  }

LABEL_22:
  LODWORD(v17) = v7;
  return v17;
}

DNSServiceErrorType TXTRecordRemoveValue(TXTRecordRef *txtRecord, const char *key)
{
  v3 = *(&txtRecord->ForceNaturalAlignment + 5);
  ForceNaturalAlignment = txtRecord->ForceNaturalAlignment;
  v5 = InternalTXTRecordSearch(*(&txtRecord->ForceNaturalAlignment + 5), txtRecord->ForceNaturalAlignment, key, &v8);
  if (!v5)
  {
    return -65556;
  }

  v6 = *v5 + 1;
  memmove(v5, &v5[v6], &ForceNaturalAlignment[v3] - &v5[v6]);
  result = 0;
  *(&txtRecord->ForceNaturalAlignment + 5) -= v6;
  return result;
}

void TXTRecordDeallocate(TXTRecordRef *txtRecord)
{
  if (*(&txtRecord->ForceNaturalAlignment + 6))
  {
    ForceNaturalAlignment = txtRecord->ForceNaturalAlignment;
    if (ForceNaturalAlignment)
    {
      free(ForceNaturalAlignment);
      txtRecord->ForceNaturalAlignment = 0;
    }
  }
}

void ConnectionResponse(uint64_t **a1, _DWORD *a2)
{
  v4 = a2[3];
  if (v4 == 69 || v4 == 73)
  {
    if (a2[9] != -65570)
    {
      goto LABEL_7;
    }

    if (_should_return_noauth_error_s_once != -1)
    {
      dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
    }

    if (_should_return_noauth_error_s_should == 1)
    {
LABEL_7:
      v5 = a1[10];
      if (v5)
      {
        while (*(v5 + 9) != a2[4] || *(v5 + 10) != a2[5])
        {
          v5 = *v5;
          if (!v5)
          {
            goto LABEL_11;
          }
        }

        v7 = v5[6];
        if (v7 == a1)
        {
          v9 = *(a1 + 8);
          if (v9 == 19 || v9 == 1)
          {
            v14 = a2[7];
            v15 = a2[9];
            v11 = v5[1];
            v12 = v5[2];
            v13 = v5;
          }

          else
          {
            syslog(4, "dnssd_clientstub ConnectionResponse: sdr->op != connection_request");
            v7 = v5[6];
            v11 = v5[1];
            v12 = v5[2];
            v13 = v5;
            v14 = 0;
            v15 = 4294901759;
          }

          v12(v7, v13, v14, v15, v11);
        }

        else
        {
          v16 = v5[6];
          syslog(4, "dnssd_clientstub ConnectionResponse: Record sdr mismatch: rec %p sdr %p");
        }
      }

      else
      {
LABEL_11:
        syslog(6, "dnssd_clientstub ConnectionResponse: Record not found");
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      while (*(v6 + 6) != a2[4] || *(v6 + 7) != a2[5])
      {
        v6 = *v6;
        if (!v6)
        {
          return;
        }
      }

      v8 = v6[7];
      if (v8)
      {

        v8();
      }
    }
  }
}

void handle_browse_response(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a2 + 36) != -65570)
  {
    goto LABEL_5;
  }

  if (_should_return_noauth_error_s_once != -1)
  {
    dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
  }

  if (_should_return_noauth_error_s_should == 1)
  {
LABEL_5:
    if (a3)
    {
      v8 = v17;
      do
      {
        if (a3 >= a4 || v8 >= &v18)
        {
          *(v8 - (v8 == &v18)) = 0;
          goto LABEL_23;
        }

        v9 = *a3;
        a3 = (a3 + 1);
        *v8 = v9;
        v8 = (v8 + 1);
      }

      while (v9);
      if (!a3)
      {
        goto LABEL_23;
      }

      v10 = v16;
      do
      {
        if (a3 >= a4 || v10 >= v17)
        {
          v10[-(v10 == v17)] = 0;
          goto LABEL_24;
        }

        v11 = *a3;
        a3 = (a3 + 1);
        *v10++ = v11;
      }

      while (v11);
      if (!a3)
      {
        goto LABEL_24;
      }

      v12 = v15;
      while (a3 < a4 && v12 < v16)
      {
        v13 = *a3;
        a3 = (a3 + 1);
        *v12++ = v13;
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      a3 = 0;
      v12[-(v12 == v16)] = 0;
    }

    else
    {
      v17[0] = 0;
LABEL_23:
      v16[0] = 0;
LABEL_24:
      a3 = 0;
      v15[0] = 0;
    }

LABEL_25:
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    if ((*(a2 + 8) & 2) != 0)
    {
      *(a1 + 104) = get_validation_data_from_tlvs(a3, a4, (a1 + 112));
    }

    if (a3)
    {
      (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 32), *(a2 + 36), v17, v16, v15, *(a1 + 72));
    }

    else
    {
      syslog(4, "dnssd_clientstub handle_browse_response: error reading result from daemon");
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

DNSServiceErrorType DNSServiceConstructFullName(char *const fullName, const char *const service, const char *const regtype, const char *const domain)
{
  v4 = -65540;
  if (regtype)
  {
    v9 = strlen(regtype);
    v10 = DomainEndsInDot(regtype);
    if (domain)
    {
      v11 = v9 - v10;
      if (v11 >= 6)
      {
        if (*domain)
        {
          v12 = &regtype[v11 - 4];
          if (!strncasecmp(v12, "_tcp", 4uLL) || !strncasecmp(v12, "_udp", 4uLL))
          {
            v13 = fullName + 1005;
            if (service)
            {
              v14 = *service;
              if (*service)
              {
                v15 = service + 1;
                do
                {
                  if (v14 > 0x20u)
                  {
                    if (v14 == 92 || v14 == 46)
                    {
                      if (fullName + 2 >= v13)
                      {
                        goto LABEL_40;
                      }

                      *fullName = 92;
                      v16 = fullName + 1;
                    }

                    else
                    {
                      v16 = fullName;
                      if (fullName + 1 >= v13)
                      {
                        goto LABEL_40;
                      }
                    }
                  }

                  else
                  {
                    if (fullName + 4 >= v13)
                    {
                      goto LABEL_40;
                    }

                    *fullName = 12380;
                    v16 = fullName + 3;
                    fullName[2] = (v14 / 0xAu) | 0x30;
                    v14 = (v14 % 0xAu) | 0x30;
                  }

                  *v16 = v14;
                  fullName = v16 + 1;
                  v17 = *v15++;
                  v14 = v17;
                }

                while (v17);
                fullName = v16 + 2;
                v16[1] = 46;
              }
            }

            v18 = *regtype;
            if (*regtype)
            {
              v19 = regtype + 1;
              while (1)
              {
                v20 = fullName + 1;
                if (fullName + 1 >= v13)
                {
                  goto LABEL_40;
                }

                *fullName = v18;
                v21 = *v19++;
                v18 = v21;
                ++fullName;
                if (!v21)
                {
                  goto LABEL_26;
                }
              }
            }

            v20 = fullName;
LABEL_26:
            if (!DomainEndsInDot(regtype))
            {
              if (v20 + 1 >= v13)
              {
                goto LABEL_34;
              }

              *v20++ = 46;
            }

            v22 = *domain;
            if (!*domain)
            {
              fullName = v20;
LABEL_36:
              if (DomainEndsInDot(domain))
              {
                v4 = 0;
              }

              else if (fullName + 1 < v13)
              {
                v4 = 0;
                *fullName++ = 46;
              }

              goto LABEL_40;
            }

            v23 = domain + 1;
            while (1)
            {
              fullName = v20 + 1;
              if (v20 + 1 >= v13)
              {
                break;
              }

              *v20 = v22;
              v24 = *v23++;
              v22 = v24;
              ++v20;
              if (!v24)
              {
                goto LABEL_36;
              }
            }

LABEL_34:
            fullName = v20;
LABEL_40:
            *fullName = 0;
          }
        }
      }
    }
  }

  return v4;
}

BOOL DomainEndsInDot(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v2 = a1[1];
    if (!a1[1])
    {
      break;
    }

    if (v1 == 92)
    {
      if ((v2 - 48) > 9 || a1[2] - 48 > 9 || a1[3] - 48 >= 0xA)
      {
        v3 = 2;
      }

      else
      {
        v3 = 4;
      }

      a1 += v3;
      v1 = *a1;
      if (!*a1)
      {
        return v1 == 46;
      }
    }

    else
    {
      v1 = *++a1;
      if (!v2)
      {
        return v1 == 46;
      }
    }
  }

  return v1 == 46;
}

uint64_t DNSServiceQueryRecordInternal(uint64_t *a1, int a2, int a3, const char *a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 4294901756;
  if (a1 && a8)
  {
    v12 = a6;
    v13 = a5;
    if (MEMORY[0x2A1C7C4E0])
    {
      should_save_stacktrace = 0;
      v21 = a5 == 1 || a5 == 28 || a5 == 255;
      if (a6 == 1 && v21)
      {
        v9 = 4294901726;
        if (ne_tracker_check_is_hostname_blocked() == 1)
        {
          return v9;
        }

        should_save_stacktrace = ne_tracker_should_save_stacktrace();
      }
    }

    else
    {
      should_save_stacktrace = 0;
    }

    v9 = ConnectToServer(a1, a2, 8, handle_query_response, a8, a9);
    if (!v9)
    {
      if (a4)
      {
        v22 = a4;
      }

      else
      {
        v22 = &unk_299DED2E0;
      }

      v23 = strlen(v22) + 13;
      v43 = v23;
      if (a7)
      {
        v24 = 36;
        if (!*(a7 + 40))
        {
          v24 = 16;
        }

        if (*(a7 + 13))
        {
          v24 |= 8uLL;
        }

        if (*(a7 + 12))
        {
          v24 += 8;
        }

        v25 = 8;
        if (*(a7 + 24))
        {
          v25 = *(a7 + 24) + 12;
        }

        v23 += v25 + v24;
        v43 = v23;
      }

      RetainedResolverDefaults = DNSServiceGetRetainedResolverDefaults();
      v27 = RetainedResolverDefaults;
      if (RetainedResolverDefaults)
      {
        length = 0;
        data = xpc_dictionary_get_data(RetainedResolverDefaults, "resolver_config_plist_data", &length);
        v29 = length + 9;
        if (!data)
        {
          v29 = 5;
        }

        v23 += v29;
        v43 = v23;
      }

      v42 = should_save_stacktrace;
      if (should_save_stacktrace)
      {
        v43 = v23 + 5;
      }

      length = 0;
      v30 = create_hdr(8, &v43, &length, *(*a1 + 8) != 0, *a1);
      v31 = length;
      v32 = length + v43;
      *length = HIBYTE(a2);
      v31[1] = BYTE2(a2);
      v31[2] = BYTE1(a2);
      v31[3] = a2;
      v31[4] = HIBYTE(a3);
      v31[5] = BYTE2(a3);
      v31[6] = BYTE1(a3);
      v33 = v31 + 8;
      v31[7] = a3;
      v34 = strlen(v22) + 1;
      memcpy(v33, v22, v34);
      v35 = &v33[v34];
      *v35 = HIBYTE(v13);
      v35[1] = v13;
      v35[2] = HIBYTE(v12);
      v35[3] = v12;
      length = &v33[v34 + 4];
      if (a7)
      {
        put_attribute_tlvs(a7, v30, &length, v32);
        put_tlvs_for_validation_attr(a7, v30, &length, v32);
      }

      if (v27)
      {
        put_tlvs_for_defaults(v27, v30, &length, v32);
        xpc_release(v27);
      }

      if (v42)
      {
        v36 = length;
        if (length && v32 >= length && v32 - length >= 5)
        {
          *length = 16779264;
          *(v36 + 4) = 1;
          v36 += 5;
        }

        length = v36;
        v30->i32[2] |= 2u;
      }

      v37 = MEMORY[0x2A1C7C4E0];
      v38 = deliver_request(v30, *a1);
      v9 = v38;
      if (!v37 || v38 || ((v42 ^ 1) & 1) != 0)
      {
        if (v38)
        {
          if (v38 != -65555)
          {
            goto LABEL_59;
          }

          if (_should_return_noauth_error_s_once != -1)
          {
            dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
          }

          if (_should_return_noauth_error_s_should != 1)
          {
            return 0;
          }

          else
          {
LABEL_59:
            DNSServiceRefDeallocate(*a1);
            *a1 = 0;
          }
        }
      }

      else
      {
        v39 = *(*a1 + 120);
        if (v39)
        {
          free(v39);
          *(*a1 + 120) = 0;
          v40 = *a1;
        }

        v9 = 0;
        *(*a1 + 120) = ne_tracker_copy_current_stacktrace();
      }
    }
  }

  return v9;
}

xpc_object_t DNSServiceGetRetainedResolverDefaults()
{
  os_unfair_lock_lock(&g_defaults_lock);
  if (g_defaults_dict)
  {
    v0 = xpc_retain(g_defaults_dict);
  }

  else
  {
    v0 = 0;
  }

  os_unfair_lock_unlock(&g_defaults_lock);
  return v0;
}

DNSServiceErrorType DNSServiceProcessResult(DNSServiceRef sdRef)
{
  v29 = 0;
  if (!sdRef)
  {
    syslog(4, "dnssd_clientstub DNSServiceProcessResult called with NULL DNSServiceRef");
    LODWORD(v3) = -65540;
    goto LABEL_8;
  }

  v2 = *(sdRef + 4);
  if (v2 < 0 || (*(sdRef + 5) ^ v2) != 0x12345678)
  {
    LODWORD(v3) = -65541;
    v25 = *(sdRef + 4);
    syslog(4, "dnssd_clientstub DNSServiceProcessResult called with invalid DNSServiceRef %p %08X %08X");
    goto LABEL_8;
  }

  if (!*(sdRef + 1))
  {
    if (!*(sdRef + 7))
    {
      v18 = DNSServiceProcessResult_num_logs;
      if (DNSServiceProcessResult_num_logs <= 9)
      {
        syslog(4, "dnssd_clientstub DNSServiceProcessResult called with DNSServiceRef with no ProcessReply function");
        v18 = DNSServiceProcessResult_num_logs;
      }

      LODWORD(v3) = -65541;
      if (v18 > 999)
      {
        sleep_NOCANCEL();
      }

      else
      {
        DNSServiceProcessResult_num_logs = v18 + 1;
      }

      goto LABEL_8;
    }

    while (1)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      all = read_all(*(sdRef + 4), &v26, 0x1CuLL);
      switch(all)
      {
        case -1:
LABEL_50:
          if (all == -3)
          {
            v3 = 4294901727;
          }

          else
          {
            v3 = 4294901733;
          }

          *(sdRef + 7) = 0;
          v19 = *(sdRef + 11);
          if (v19)
          {
            dispatch_source_cancel(v19);
            v20 = *(sdRef + 11);
            if (v20)
            {
              dispatch_release(v20);
              *(sdRef + 11) = 0;
            }

            CallbackWithError(sdRef, v3);
          }

          goto LABEL_8;
        case -2:
          if (v29)
          {
            v21 = *(sdRef + 10);
            if (v21 <= 0x63)
            {
              *(sdRef + 10) = v21 + 1;
              syslog(4, "dnssd_clientstub DNSServiceProcessResult error: select indicated data was waiting but read_all returned EWOULDBLOCK");
            }
          }

          LODWORD(v3) = 0;
          goto LABEL_8;
        case -3:
          goto LABEL_50;
      }

      v6 = vrev32q_s8(v26);
      v26 = v6;
      DWORD2(v27) = bswap32(DWORD2(v27));
      if (v6.i32[0] != 1)
      {
        syslog(4, "dnssd_clientstub DNSServiceProcessResult daemon version %u does not match client version %d", v6.i32[0], 1);
        *(sdRef + 7) = 0;
        LODWORD(v3) = -65551;
        goto LABEL_8;
      }

      LODWORD(v4) = v6.i32[1];
      if (!v6.i32[1] || (v4 = malloc_type_malloc(v6.u32[1], 0x35E4DB18uLL)) == 0)
      {
LABEL_71:
        __break(1u);
        return v4;
      }

      v7 = v4;
      v8 = read_all(*(sdRef + 4), v4, v26.u32[1]);
      if (v8 < 0)
      {
        if (v8 == -3)
        {
          v3 = 4294901727;
        }

        else
        {
          v3 = 4294901733;
        }

        *(sdRef + 7) = 0;
        v22 = *(sdRef + 11);
        if (v22)
        {
          dispatch_source_cancel(v22);
          v23 = *(sdRef + 11);
          if (v23)
          {
            dispatch_release(v23);
            *(sdRef + 11) = 0;
          }

          CallbackWithError(sdRef, v3);
        }

        free(v7);
        goto LABEL_8;
      }

      v9 = v7 + v26.u32[1];
      if ((v7 + 1) > v9)
      {
        break;
      }

      HIDWORD(v27) = bswap32(*v7);
      if (v7 == -4 || (v7 + 2) > v9)
      {
        goto LABEL_24;
      }

      LODWORD(v28) = bswap32(v7[1]);
      v11 = v7 + 3;
      if (v7 == -8 || v11 > v9)
      {
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v12 = bswap32(v7[2]);
      }

LABEL_25:
      HIDWORD(v28) = v12;
      v13 = *(sdRef + 4);
      v31 = 0;
      v32 = 0;
      if (v13 >= 1024)
      {
        v4 = malloc_type_calloc((v13 >> 5) + 1, 4uLL, 0xA570E751uLL);
        v14 = v4;
        if (!v4)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v14 = v30;
      }

      memset(v30, 0, sizeof(v30));
      if (__darwin_check_fd_set_overflow(v13, v14, 0))
      {
        *(v14 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v13;
      }

      v15 = select_NOCANCEL();
      if (v14 != v30)
      {
        free(v14);
      }

      v16 = v15 > 0;
      v29 = v16;
      if (v15 >= 1)
      {
        HIDWORD(v27) |= 1u;
        *(sdRef + 6) = &v29;
      }

      if (v11)
      {
        (*(sdRef + 7))(sdRef, &v26, v11, v7 + v26.u32[1]);
        v16 = v29;
      }

      if (v16)
      {
        *(sdRef + 6) = 0;
      }

      free(v7);
      LODWORD(v3) = 0;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

    HIDWORD(v27) = 0;
LABEL_24:
    v11 = 0;
    v12 = 0;
    LODWORD(v28) = 0;
    goto LABEL_25;
  }

  LODWORD(v3) = -65541;
  syslog(4, "dnssd_clientstub DNSServiceProcessResult undefined for kDNSServiceFlagsShareConnection subordinate DNSServiceRef %p");
LABEL_8:
  LODWORD(v4) = v3;
  return v4;
}

void handle_query_response(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v25[0] = *MEMORY[0x29EDCA608];
  if (*(a2 + 36) != -65570)
  {
    goto LABEL_5;
  }

  if (_should_return_noauth_error_s_once != -1)
  {
    dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
  }

  if (_should_return_noauth_error_s_should == 1)
  {
LABEL_5:
    if (a3)
    {
      v8 = v24;
      do
      {
        if (a3 >= a4 || v8 >= v25)
        {
          v11 = 0;
          v12 = 0;
          v10 = 0;
          v13 = 0;
          v8[-(v8 == v25)] = 0;
          goto LABEL_21;
        }

        v9 = *a3;
        a3 = (a3 + 1);
        *v8++ = v9;
      }

      while (v9);
      v10 = 0;
      v11 = 0;
      if (a3)
      {
        v12 = 0;
        v13 = 0;
        if ((a3 + 1) > a4)
        {
          goto LABEL_21;
        }

        v10 = 0;
        v11 = 0;
        v12 = bswap32(*a3) >> 16;
        if (a3 != -2 && (a3 + 2) <= a4)
        {
          v13 = 0;
          v10 = 0;
          v11 = bswap32(a3[1]) >> 16;
          if (a3 != -4 && (a3 + 3) <= a4)
          {
            v13 = bswap32(a3[2]) >> 16;
            v10 = a3 + 3;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v10 = 0;
      v13 = 0;
      v24[0] = 0;
    }

LABEL_21:
    v14 = 0;
    v15 = 0;
    v16 = v10 + v13;
    if (v16 <= a4)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    if (v16 > a4 || v10 == 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = (v10 + v13);
    }

    if (v19 && (v19 + 1) <= a4)
    {
      v14 = bswap32(*v19);
      v15 = (v19 + 1);
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    if ((*(a2 + 8) & 2) != 0)
    {
      *(a1 + 104) = get_validation_data_from_tlvs(v15, a4, (a1 + 112));
    }

    if (MEMORY[0x2A1C7C4E0])
    {
      if ((v12 == 28 || v12 == 1) && v11 == 1)
      {
        v21 = *(a1 + 120);
        if (v21)
        {
          if ((*(a2 + 8) & 2) == 0 || !get_tracker_hostname_from_tlvs(v15, a4) || (v22 = *(a1 + 128), ne_tracker_create_xcode_issue(), (v21 = *(a1 + 120)) != 0))
          {
            free(v21);
            *(a1 + 120) = 0;
          }

          *(a1 + 128) = 0;
        }
      }
    }

    if (v15)
    {
      (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 32), *(a2 + 36), v24, v12, v11, v13, v17, v14, *(a1 + 72));
    }

    else
    {
      syslog(4, "dnssd_clientstub handle_query_response: error reading result from daemon");
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

const char *DNSServiceErrorCodeToString(int a1)
{
  switch(a1)
  {
    case -65571:
      result = "NotPermitted";
      break;
    case -65570:
      result = "PolicyDenied";
      break;
    case -65569:
      result = "DefunctConnection";
      break;
    case -65568:
      result = "Timeout";
      break;
    case -65567:
      result = "PollingMode";
      break;
    case -65566:
      result = "NoRouter";
      break;
    case -65565:
      result = "NATPortMappingDisabled";
      break;
    case -65564:
      result = "NATPortMappingUnsupported";
      break;
    case -65563:
      result = "ServiceNotRunning";
      break;
    case -65562:
      result = "Transient";
      break;
    case -65561:
      result = "BadKey";
      break;
    case -65560:
      result = "BadSig";
      break;
    case -65559:
      result = "BadTime";
      break;
    case -65558:
      result = "DoubleNAT";
      break;
    case -65557:
      result = "NATTraversal";
      break;
    case -65556:
      result = "NoSuchKey";
      break;
    case -65555:
      result = "NoAuth";
      break;
    case -65554:
      result = "NoSuchRecord";
      break;
    case -65553:
      result = "Refused";
      break;
    case -65552:
      result = "BadInterfaceIndex";
      break;
    case -65551:
      result = "Incompatible";
      break;
    case -65550:
      result = "Firewall";
      break;
    case -65549:
      result = "Invalid";
      break;
    case -65548:
      result = "NameConflict";
      break;
    case -65547:
      result = "AlreadyRegistered";
      break;
    case -65546:
      goto LABEL_5;
    case -65545:
      result = "NotInitialized";
      break;
    case -65544:
      result = "Unsupported";
      break;
    case -65543:
      result = "BadFlags";
      break;
    case -65542:
      result = "BadState";
      break;
    case -65541:
      result = "BadReference";
      break;
    case -65540:
      result = "BadParam";
      break;
    case -65539:
      result = "NoMemory";
      break;
    case -65538:
      result = "NoSuchName";
      break;
    case -65537:
      result = "Unknown";
      break;
    default:
      if (a1)
      {
LABEL_5:
        result = "<INVALID ERROR CODE>";
      }

      else
      {
        result = "NoError";
      }

      break;
  }

  return result;
}

uint64_t DNSServiceSetResolverDefaults(const void *a1, size_t a2, BOOL a3)
{
  v3 = 4294901747;
  if (a2 <= 0x8000)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = v7;
      xpc_dictionary_set_BOOL(v7, "require_privacy", a3);
      if (a1 && a2)
      {
        xpc_dictionary_set_data(v8, "resolver_config_plist_data", a1, a2);
      }

      os_unfair_lock_lock(&g_defaults_lock);
      v9 = g_defaults_dict;
      g_defaults_dict = v8;
      os_unfair_lock_unlock(&g_defaults_lock);
      if (v9)
      {
        xpc_release(v9);
      }

      return 0;
    }

    else
    {
      return 4294901757;
    }
  }

  return v3;
}

void *DNSServiceAttrCreate()
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0xE8C1C0ABuLL);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unsigned __int16 *get_validation_data_from_tlvs(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  while (1)
  {
    if (a2 - a1 < 4)
    {
      v3 = 0;
      v6 = 0;
LABEL_8:
      if (!a3)
      {
        return v6;
      }

LABEL_9:
      *a3 = v3;
      return v6;
    }

    v3 = 0;
    v4 = a1 + 2;
    if (a1 == -4)
    {
      break;
    }

    v5 = __rev16(a1[1]);
    v6 = 0;
    if (a2 - v4 < v5)
    {
      goto LABEL_8;
    }

    v7 = __rev16(*a1);
    a1 = (v4 + v5);
    if (v7 == 7)
    {
      v3 = v5;
      v6 = v4;
      if (!a3)
      {
        return v6;
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
  if (a3)
  {
    goto LABEL_9;
  }

  return v6;
}

const char *get_tracker_hostname_from_tlvs(unsigned __int16 *a1, uint64_t a2)
{
  while (1)
  {
    if (a2 - a1 < 4)
    {
      v2 = 0;
      v5 = 0;
      goto LABEL_8;
    }

    v2 = 0;
    v3 = (a1 + 2);
    if (a1 == -4)
    {
      break;
    }

    v4 = __rev16(a1[1]);
    v5 = 0;
    if (a2 - v3 < v4)
    {
      goto LABEL_8;
    }

    v6 = __rev16(*a1);
    a1 = &v3[v4];
    if (v6 == 9)
    {
      v2 = v4;
      v5 = v3;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  if (strnlen(v5, v2) == v2 - 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

BOOL put_tlvs_for_defaults(void *a1, uint64_t a2, size_t *a3, unint64_t a4)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "resolver_config_plist_data", &length);
  if (data)
  {
    if (!a3)
    {
      result = xpc_dictionary_get_BOOL(a1, "require_privacy");
      goto LABEL_18;
    }

    v9 = *a3;
    if (*a3)
    {
      if (a4 >= v9)
      {
        v10 = length;
        v11 = length;
        if (a4 - v9 >= length + 4)
        {
          *v9 = 256;
          *(v9 + 2) = HIBYTE(v10);
          v12 = v9 + 4;
          *(v9 + 3) = v10;
          if (v11)
          {
            memcpy((v9 + 4), data, v11);
            v9 = v12 + v11;
          }

          else
          {
            v9 += 4;
          }
        }
      }
    }

    *a3 = v9;
    result = xpc_dictionary_get_BOOL(a1, "require_privacy");
  }

  else
  {
    result = xpc_dictionary_get_BOOL(a1, "require_privacy");
    if (!a3)
    {
      goto LABEL_18;
    }
  }

  v14 = *a3;
  if (*a3 && a4 >= v14 && a4 - v14 >= 5)
  {
    *v14 = 16777728;
    *(v14 + 4) = result;
    v14 += 5;
  }

  *a3 = v14;
LABEL_18:
  *(a2 + 8) |= 2u;
  return result;
}

void TXTRecordCreate(TXTRecordRef *txtRecord, uint16_t bufferLen, void *buffer)
{
  txtRecord->ForceNaturalAlignment = buffer;
  if (buffer)
  {
    v3 = bufferLen;
  }

  else
  {
    v3 = 0;
  }

  *(&txtRecord->ForceNaturalAlignment + 4) = v3;
  *(&txtRecord->ForceNaturalAlignment + 10) = 0;
}

uint16_t TXTRecordGetCount(uint16_t txtLen, const void *txtRecord)
{
  v2 = txtRecord + txtLen;
  if (v2 <= txtRecord)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      txtRecord = txtRecord + *txtRecord + 1;
      ++v3;
    }

    while (txtRecord < v2);
  }

  if (txtRecord <= v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

DNSServiceErrorType TXTRecordGetItemAtIndex(uint16_t txtLen, const void *txtRecord, uint16_t itemIndex, uint16_t keyBufLen, char *key, uint8_t *valueLen, const void **value)
{
  v10 = txtRecord;
  v11 = txtRecord + txtLen;
  v12 = v11 > txtRecord;
  if (v11 > txtRecord && itemIndex != 0)
  {
    v14 = 0;
    do
    {
      v10 += *v10 + 1;
      ++v14;
      v12 = v10 < v11;
    }

    while (v10 < v11 && v14 < itemIndex);
  }

  result = -65549;
  if (v12)
  {
    v17 = v10 + 1;
    v18 = *v10;
    v19 = &v10[v18 + 1];
    if (v19 <= v11)
    {
      if (v17 >= v19)
      {
        v18 = 0;
LABEL_19:
        if (v18 < keyBufLen)
        {
          memcpy(key, v17, v18);
          v21 = 0;
          key[v18] = 0;
          *value = 0;
LABEL_23:
          result = 0;
          *valueLen = v21;
          return result;
        }
      }

      else
      {
        v20 = 0;
        while (v10[v20 + 1] != 61)
        {
          if (v18 == ++v20)
          {
            goto LABEL_19;
          }
        }

        if (v20 < keyBufLen)
        {
          v22 = &v17[v20];
          memcpy(key, v17, v20);
          key[v20] = 0;
          *value = v22 + 1;
          v21 = *v10 + ~v20;
          goto LABEL_23;
        }
      }

      return -65539;
    }
  }

  return result;
}

uint64_t put_attribute_tlvs(uint64_t a1, uint64_t a2, _DWORD **a3, unint64_t a4)
{
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = a4 - v4;
      if (a4 < v4 || v5 < 8)
      {
LABEL_10:
        if (v4 <= a4 && v5 >= 8)
        {
          v9 = *(a1 + 16);
          *v4 = 67109888;
          v4[1] = bswap32(v9);
          v4 += 2;
        }

        goto LABEL_16;
      }

      v7 = *a1;
      *v4 = 67109632;
      v4[1] = bswap32(v7);
      v4 += 2;
      if (v4)
      {
        v5 = a4 - v4;
        goto LABEL_10;
      }
    }

LABEL_16:
    *a3 = v4;
    v10 = *(a1 + 40);
    if (v10)
    {
      if (v4 && a4 >= v4 && a4 - v4 >= 0x14)
      {
        *v4 = 268438016;
        *(v4 + 1) = *v10;
        v4 += 5;
      }

      *a3 = v4;
      v11 = 36;
    }

    else
    {
      v11 = 16;
    }

    if ((*(a1 + 13) & 1) == 0)
    {
      goto LABEL_35;
    }

    v12 = *a3;
    if (*a3 && a4 >= v12 && a4 - v12 >= 8)
    {
      v13 = *(a1 + 8);
      *v12 = 67110144;
      v12[1] = bswap32(v13);
      v12 += 2;
    }

    *a3 = v12;
LABEL_34:
    v11 |= 8uLL;
LABEL_35:
    if ((*(a1 + 12) & 1) == 0)
    {
      goto LABEL_43;
    }

    if (a3)
    {
      v14 = *a3;
      if (*a3 && a4 >= v14 && a4 - v14 >= 8)
      {
        v15 = *(a1 + 4);
        *v14 = 67111680;
        v14[1] = bswap32(v15);
        v14 += 2;
      }

      *a3 = v14;
    }

    goto LABEL_42;
  }

  v11 = 36;
  if (!*(a1 + 40))
  {
    v11 = 16;
  }

  if (*(a1 + 13))
  {
    goto LABEL_34;
  }

  if (*(a1 + 12))
  {
LABEL_42:
    v11 += 8;
  }

LABEL_43:
  if (a2)
  {
    *(a2 + 8) |= 2u;
  }

  return v11;
}

void *put_tlvs_for_validation_attr(void *result, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[4];
  if (v8)
  {
    if (a3)
    {
      v9 = *a3;
      if (*a3)
      {
        v10 = result[3];
        v11 = v10;
        if (a4 < v9 || a4 - v9 < v10 + 4)
        {
          goto LABEL_14;
        }

        *v9 = 1792;
        *(v9 + 2) = BYTE1(v10);
        v13 = v9 + 4;
        *(v9 + 3) = v10;
        if (v10)
        {
          result = memcpy((v9 + 4), v8, v10);
          v9 = v13 + v11;
          if (!(v13 + v11))
          {
            goto LABEL_20;
          }
        }

        else
        {
          v9 += 4;
          if (!v13)
          {
            goto LABEL_20;
          }
        }

LABEL_14:
        v14 = *(v7 + 5);
        if (a4 >= v9 && a4 - v9 >= 8)
        {
          *v9 = 67110400;
          *(v9 + 4) = bswap32(v14);
          v9 += 8;
        }
      }

LABEL_20:
      *a3 = v9;
    }
  }

  else if (a3)
  {
    v9 = *a3;
    if (*a3)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  *(a2 + 8) |= 2u;
  return result;
}

uint64_t ___should_return_noauth_error_block_invoke()
{
  result = dyld_program_sdk_at_least();
  _should_return_noauth_error_s_should = result;
  return result;
}

DNSServiceErrorType DNSServiceSendQueuedRequests(DNSServiceRef sdRef)
{
  if (sdRef)
  {
    v2 = *(sdRef + 10);
    if (!v2)
    {
      goto LABEL_16;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2[7];
      if (v5)
      {
        ++v4;
        v3 += *(v5 + 4) + 28;
      }

      v2 = *v2;
    }

    while (v2);
    if (v4)
    {
      v6 = malloc_type_malloc(16 * v4, 0x1A064296uLL);
      if (!v6)
      {
        __break(1u);
        return v6;
      }

      v7 = v6;
      v8 = *(sdRef + 10);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = v8[7];
          if (v10)
          {
            v11 = v10->u32[1];
            *v10 = vrev32q_s8(*v10);
            v10[1].i32[2] = bswap32(v10[1].u32[2]);
            v12 = &v6[16 * v9];
            *v12 = v10;
            v12[1] = (v11 + 28);
            ++v9;
          }

          v8 = *v8;
        }

        while (v8);
      }

      v13 = *(sdRef + 4);
      v14 = writev_NOCANCEL();
      v15 = *(sdRef + 4);
      if (v14 == v3)
      {
        syslog(6, "DNSServiceSendQueuedRequestsInternal: writev(fd:%d, numMsg:%u, %zd bytes) succeed", v15, v4, v3);
        v16 = 0;
      }

      else
      {
        v17 = v14;
        v18 = *__error();
        v19 = __error();
        v20 = strerror(*v19);
        syslog(4, "DNSServiceSendQueuedRequestsInternal ERROR: writev(fd:%d, written:%zd, total:%zd bytes) failed, errno[%d]:%s", v15, v17, v3, v18, v20);
        v16 = -65537;
      }

      for (i = *(sdRef + 10); i; i = *i)
      {
        v22 = i[7];
        if (v22)
        {
          free(v22);
          i[7] = 0;
        }
      }

      free(v7);
    }

    else
    {
LABEL_16:
      v16 = -65549;
      syslog(6, "DNSServiceSendQueuedRequestsInternal: numMsg is 0");
    }
  }

  else
  {
    syslog(4, "DNSServiceSendQueuedRequestsInternal: !sdr");
    v16 = -65540;
  }

  LODWORD(v6) = v16;
  return v6;
}

DNSServiceAttributeRef DNSServiceAttributeCreate(void)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0xE8C1C0ABuLL);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t DNSServiceGetValidationData(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a1 + 104;
    result = *(a1 + 104);
    *a2 = *(v3 + 8);
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t DNSServiceAttrSetValidationData(uint64_t a1, const void *a2, size_t size)
{
  if (size >> 16)
  {
    return 4294901747;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    free(v7);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  if (!a2 || !size)
  {
    goto LABEL_9;
  }

  result = malloc_type_malloc(size, 0x5924CAF5uLL);
  if (result)
  {
    *(a1 + 32) = result;
    memcpy(result, a2, size);
    *(a1 + 24) = size;
LABEL_9:
    result = 0;
    *(a1 + 20) = 1;
    return result;
  }

  __break(1u);
  return result;
}

unsigned __int8 *DNSServiceAttributeSetResolverOverride(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  if (!a2)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0xFF8585E7uLL);
  if (result)
  {
    *(a1 + 40) = result;
    uuid_copy(result, a2);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t DNSServiceAttributeSetHostKeyHash(uint64_t a1, int a2)
{
  *(a1 + 12) = 1;
  *(a1 + 4) = a2;
  return 0;
}

DNSServiceErrorType DNSServiceAttributeSetTimestamp(DNSServiceAttributeRef attr, uint32_t timestamp)
{
  *(attr + 13) = 1;
  *(attr + 2) = timestamp;
  return 0;
}

void DNSServiceAttributeDeallocate(DNSServiceAttributeRef attr)
{
  v2 = *(attr + 4);
  if (v2)
  {
    free(v2);
    *(attr + 4) = 0;
  }

  v3 = *(attr + 5);
  if (v3)
  {
    free(v3);
  }

  free(attr);
}

void CallbackWithError(uint64_t *a1, uint64_t a2)
{
  while (1)
  {
    v4 = *a1;
    v18 = 1;
    a1[6] = &v18;
    v5 = *(a1 + 8);
    if (v5 <= 6)
    {
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          v7 = a1[8];
          if (!v7)
          {
            goto LABEL_34;
          }

LABEL_14:
          v7(a1, 0, 0, a2, 0, 0, 0, a1[9]);
          goto LABEL_34;
        }

        v13 = a1[8];
        if (v13)
        {
          v13(a1, 0, a2, 0, 0, 0, a1[9]);
        }
      }

      else
      {
        if (v5 == 1)
        {
          goto LABEL_19;
        }

        if (v5 != 4)
        {
          goto LABEL_33;
        }

        v6 = a1[8];
        if (v6)
        {
          v6(a1, 0, 0, a2, 0, a1[9]);
        }
      }
    }

    else if (v5 <= 13)
    {
      if (v5 == 7)
      {
        v15 = a1[8];
        if (v15)
        {
          v15(a1, 0, 0, a2, 0, 0, 0, 0, 0, a1[9]);
        }
      }

      else
      {
        if (v5 != 8)
        {
LABEL_33:
          syslog(4, "dnssd_clientstub CallbackWithError called with bad op %u", *(a1 + 8));
          goto LABEL_34;
        }

        v8 = a1[8];
        if (v8)
        {
          LODWORD(v17) = 0;
          v8(a1, 0, 0, a2, 0, 0, 0, 0, 0, v17, a1[9]);
        }
      }
    }

    else
    {
      if (v5 == 14)
      {
        v14 = a1[8];
        if (v14)
        {
          LODWORD(v16) = 0;
          v14(a1, 0, 0, a2, 0, 0, 0, 0, v16, a1[9]);
        }

        goto LABEL_34;
      }

      if (v5 != 15)
      {
        if (v5 != 19)
        {
          goto LABEL_33;
        }

LABEL_19:
        v9 = a1[10];
        v10 = 1;
        while (v9)
        {
          v11 = *v9;
          v12 = v9[2];
          if (v12)
          {
            v12(a1, 0, 0, a2, v9[1]);
            v10 = v18;
          }

          v9 = v11;
          if (!v10)
          {
            syslog(4, "dnssd_clientstub:Record: CallbackwithError morebytes zero");
            return;
          }
        }

        goto LABEL_34;
      }

      v7 = a1[8];
      if (v7)
      {
        goto LABEL_14;
      }
    }

LABEL_34:
    if (!v18)
    {
      break;
    }

    a1[6] = 0;
    a1 = v4;
    if (!v4)
    {
      return;
    }
  }

  syslog(4, "dnssd_clientstub:sdRef: CallbackwithError morebytes zero sdr %p");
}

DNSServiceErrorType DNSServiceGetProperty(const char *property, void *result, uint32_t *size)
{
  v3 = -65540;
  if (!property)
  {
    return v3;
  }

  if (!result)
  {
    return v3;
  }

  if (!size)
  {
    return v3;
  }

  __dst = 0;
  sdRef = 0;
  v14 = 0;
  v16 = strlen(property) + 1;
  v3 = ConnectToServer(&sdRef, 0, 13, 0, 0, 0);
  if (v3)
  {
    return v3;
  }

  v7 = create_hdr(13, &v16, &__dst, 0, sdRef);
  v8 = strlen(property);
  memcpy(__dst, property, v8 + 1);
  v3 = deliver_request(v7, sdRef);
  if (v3)
  {
    DNSServiceRefDeallocate(sdRef);
    return v3;
  }

  all = read_all(*(sdRef + 4), &v14, 4uLL);
  if (all < 0)
  {
    v12 = all;
    DNSServiceRefDeallocate(sdRef);
LABEL_17:
    if (v12 == -3)
    {
      return -65569;
    }

    else
    {
      return -65563;
    }
  }

  v10 = bswap32(v14);
  v14 = v10;
  if (v10 >= *size)
  {
    v11 = *size;
  }

  else
  {
    v11 = v10;
  }

  v12 = read_all(*(sdRef + 4), result, v11);
  DNSServiceRefDeallocate(sdRef);
  if (v12 < 0)
  {
    goto LABEL_17;
  }

  if (!strcmp(property, "DaemonVersion") && *size >= 4)
  {
    *result = bswap32(*result);
  }

  v3 = 0;
  *size = v14;
  return v3;
}

uint64_t DNSServiceGetPID(unsigned int a1, uint64_t a2)
{
  v8 = 4;
  sdRef = 0;
  v4 = ConnectToServer(&sdRef, 0, 17, 0, 0, 0);
  if (!v4)
  {
    v10 = 0;
    v5 = create_hdr(17, &v8, &v10, 0, sdRef);
    *v10 = __rev16(a1);
    v4 = deliver_request(v5, sdRef);
    if (v4)
    {
      DNSServiceRefDeallocate(sdRef);
    }

    else
    {
      all = read_all(*(sdRef + 4), a2, 4uLL);
      DNSServiceRefDeallocate(sdRef);
      if (all < 0)
      {
        if (all == -3)
        {
          return 4294901727;
        }

        else
        {
          return 4294901733;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t DNSServiceResolveInternal(uint64_t *a1, int a2, int a3, const char *a4, const char *a5, const char *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = 4294901756;
  if (a1 && a4 && a5 && a6 && a8 && ((a2 & 0x40000) == 0 || (a3 + 4) >= 5))
  {
    v9 = ConnectToServer(a1, a2, 7, handle_resolve_response, a8, a9);
    if (!v9)
    {
      v17 = strlen(a4);
      v18 = v17 + strlen(a5);
      v19 = strlen(a6);
      v31 = v18 + v19 + 11;
      if (a7)
      {
        v20 = 8;
        if (a7[3])
        {
          v20 = a7[3] + 12;
        }

        v31 = v20 + v18 + v19 + 11;
      }

      v32 = 0;
      v21 = create_hdr(7, &v31, &v32, *(*a1 + 8) != 0, *a1);
      v23 = v31;
      v22 = v32;
      *v32 = HIBYTE(a2);
      v22[1] = BYTE2(a2);
      v22[2] = BYTE1(a2);
      v22[3] = a2;
      v22[4] = HIBYTE(a3);
      v22[5] = BYTE2(a3);
      v22[6] = BYTE1(a3);
      v22[7] = a3;
      v24 = strlen(a4) + 1;
      memcpy(v22 + 8, a4, v24);
      v25 = &v22[v24 + 8];
      v26 = strlen(a5) + 1;
      memcpy(v25, a5, v26);
      v27 = &v25[v26];
      v28 = strlen(a6) + 1;
      memcpy(v27, a6, v28);
      v32 = &v27[v28];
      if (a7)
      {
        put_tlvs_for_validation_attr(a7, v21, &v32, &v22[v23]);
      }

      v29 = deliver_request(v21, *a1);
      v9 = v29;
      if (v29)
      {
        if (v29 != -65555)
        {
          goto LABEL_20;
        }

        if (_should_return_noauth_error_s_once != -1)
        {
          dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
        }

        if (_should_return_noauth_error_s_should != 1)
        {
          return 0;
        }

        else
        {
LABEL_20:
          DNSServiceRefDeallocate(*a1);
          *a1 = 0;
        }
      }
    }
  }

  return v9;
}

void handle_resolve_response(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = v22;
    do
    {
      if (a3 >= a4 || v6 >= &v23)
      {
        *(v6 - (v6 == &v23)) = 0;
        goto LABEL_31;
      }

      v7 = *a3++;
      *v6 = v7;
      v6 = (v6 + 1);
    }

    while (v7);
    if (!a3)
    {
      goto LABEL_31;
    }

    v8 = 0;
    do
    {
      v9 = &v21[v8];
      if (&a3[v8] >= a4 || v9 >= v22)
      {
        v9[-(v9 == v22)] = 0;
        goto LABEL_32;
      }

      v10 = a3[v8];
      v21[v8++] = v10;
    }

    while (v10);
    v11 = &a3[v8];
    if (v11 && (v11 + 2) <= a4)
    {
      v12 = 0;
      v13 = 0;
      if (v11 != -2 && (v11 + 4) <= a4)
      {
        v12 = bswap32(*(v11 + 1)) >> 16;
        v13 = v11 + 4;
      }

      v14 = *v11;
      v15 = v11[1];
      v16 = &v13[v12];
      v17 = v16 <= a4 ? v13 : 0;
      v18 = v16 > a4 || v13 == 0;
      v19 = v18 ? 0 : &v13[v12];
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if ((*(a2 + 8) & 2) != 0)
      {
        *(a1 + 104) = get_validation_data_from_tlvs(v19, a4, (a1 + 112));
      }

      if (v19)
      {
        (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 32), *(a2 + 36), v22, v21, v14 | (v15 << 8), v12, v17, *(a1 + 72));
        goto LABEL_33;
      }
    }
  }

  else
  {
    v22[0] = 0;
LABEL_31:
    v21[0] = 0;
  }

LABEL_32:
  syslog(4, "dnssd_clientstub handle_resolve_response: error reading result from daemon");
LABEL_33:
  v20 = *MEMORY[0x29EDCA608];
}

uint64_t DNSServiceGetAddrInfoInternal(uint64_t *a1, int a2, int a3, int a4, const char *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = 4294901756;
  if (a1 && a5 && a7)
  {
    if (MEMORY[0x2A1C7C4E0])
    {
      v8 = 4294901726;
      if (ne_tracker_check_is_hostname_blocked() == 1)
      {
        return v8;
      }

      should_save_stacktrace = ne_tracker_should_save_stacktrace();
    }

    else
    {
      should_save_stacktrace = 0;
    }

    v8 = ConnectToServer(a1, a2, 15, handle_addrinfo_response, a7, a8);
    if (!v8)
    {
      v18 = strlen(a5) + 13;
      v35 = v18;
      if (a6)
      {
        v19 = 8;
        if (a6[3])
        {
          v19 = a6[3] + 12;
        }

        v18 += v19;
        v35 = v18;
      }

      RetainedResolverDefaults = DNSServiceGetRetainedResolverDefaults();
      v21 = RetainedResolverDefaults;
      if (RetainedResolverDefaults)
      {
        length = 0;
        data = xpc_dictionary_get_data(RetainedResolverDefaults, "resolver_config_plist_data", &length);
        v23 = length + 9;
        if (!data)
        {
          v23 = 5;
        }

        v18 += v23;
        v35 = v18;
      }

      if (should_save_stacktrace)
      {
        v35 = v18 + 5;
      }

      length = 0;
      v24 = create_hdr(15, &v35, &length, *(*a1 + 8) != 0, *a1);
      v25 = length;
      v26 = length + v35;
      *length = HIBYTE(a2);
      v25[1] = BYTE2(a2);
      v25[2] = BYTE1(a2);
      v25[3] = a2;
      v25[4] = HIBYTE(a3);
      v25[5] = BYTE2(a3);
      v25[6] = BYTE1(a3);
      v25[7] = a3;
      v25[8] = HIBYTE(a4);
      v25[9] = BYTE2(a4);
      v25[10] = BYTE1(a4);
      v27 = v25 + 12;
      v25[11] = a4;
      v28 = strlen(a5) + 1;
      memcpy(v27, a5, v28);
      length = v27 + v28;
      if (a6)
      {
        put_tlvs_for_validation_attr(a6, v24, &length, v26);
      }

      if (v21)
      {
        put_tlvs_for_defaults(v21, v24, &length, v26);
        xpc_release(v21);
      }

      if (should_save_stacktrace)
      {
        v29 = length;
        if (length && v26 >= length && v26 - length >= 5)
        {
          *length = 16779264;
          *(v29 + 4) = 1;
          v29 += 5;
        }

        length = v29;
        v24->i32[2] |= 2u;
      }

      v30 = MEMORY[0x2A1C7C4E0];
      v31 = deliver_request(v24, *a1);
      v8 = v31;
      if (!v30 || v31 || ((should_save_stacktrace ^ 1) & 1) != 0)
      {
        if (v31)
        {
          if (v31 != -65555)
          {
            goto LABEL_40;
          }

          if (_should_return_noauth_error_s_once != -1)
          {
            dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
          }

          if (_should_return_noauth_error_s_should != 1)
          {
            return 0;
          }

          else
          {
LABEL_40:
            DNSServiceRefDeallocate(*a1);
            *a1 = 0;
          }
        }
      }

      else
      {
        v32 = *(*a1 + 120);
        if (v32)
        {
          free(v32);
          *(*a1 + 120) = 0;
          v33 = *a1;
        }

        v8 = 0;
        *(*a1 + 120) = ne_tracker_copy_current_stacktrace();
      }
    }
  }

  return v8;
}

void handle_addrinfo_response(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(a2 + 36) != -65570)
  {
    goto LABEL_5;
  }

  if (_should_return_noauth_error_s_once != -1)
  {
    dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
  }

  if (_should_return_noauth_error_s_should == 1)
  {
LABEL_5:
    if (a3)
    {
      v8 = v29;
      do
      {
        if (a3 >= a4 || v8 >= &v30)
        {
          v11 = 0;
          v10 = 0;
          v12 = 0;
          *(v8 - (v8 == &v30)) = 0;
          goto LABEL_19;
        }

        v9 = *a3;
        a3 = (a3 + 1);
        *v8 = v9;
        v8 = (v8 + 1);
      }

      while (v9);
      v10 = 0;
      v11 = 0;
      if (a3)
      {
        v12 = 0;
        if ((a3 + 1) <= a4)
        {
          v12 = 0;
          v10 = 0;
          v11 = __rev16(*a3);
          if (a3 != -2 && (a3 + 2) <= a4)
          {
            v12 = 0;
            v10 = 0;
            if (a3 != -4 && (a3 + 3) <= a4)
            {
              v12 = __rev16(a3[2]);
              v10 = a3 + 3;
            }
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 0;
      v29[0] = 0;
    }

LABEL_19:
    v13 = 0;
    v14 = 0;
    v15 = v10 + v12;
    if (v15 <= a4)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (v15 > a4 || v10 == 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = (v10 + v12);
    }

    if (v18 && (v18 + 1) <= a4)
    {
      v13 = bswap32(*v18);
      v14 = (v18 + 1);
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    if ((*(a2 + 8) & 2) != 0)
    {
      *(a1 + 104) = get_validation_data_from_tlvs(v14, a4, (a1 + 112));
    }

    if (v14)
    {
      if (v11 == 28 || v11 == 1)
      {
        if (MEMORY[0x2A1C7C4E0])
        {
          v19 = *(a1 + 120);
          if (v19)
          {
            if ((*(a2 + 8) & 2) == 0 || !get_tracker_hostname_from_tlvs(v14, a4) || (v20 = *(a1 + 128), ne_tracker_create_xcode_issue(), (v19 = *(a1 + 120)) != 0))
            {
              free(v19);
              *(a1 + 120) = 0;
            }

            *(a1 + 128) = 0;
          }
        }

        v27 = 0;
        v28 = 0;
        v24 = 0;
        v25 = 0uLL;
        v26 = 0;
        if (v11 == 1)
        {
          v21 = &v27;
        }

        else
        {
          v21 = &v24;
        }

        if (v11 == 1)
        {
          v28 = 0;
          v27 = 528;
          v22 = *(a2 + 36);
          if (v12 == 4 && !v22)
          {
            HIDWORD(v27) = *v16;
          }
        }

        else
        {
          LOWORD(v24) = 7708;
          v22 = *(a2 + 36);
          if (v12 == 16 && !v22)
          {
            v25 = *v16;
            if (v25 == 254 && (BYTE1(v25) & 0xC0) == 0x80)
            {
              v22 = 0;
              v26 = *(a2 + 32);
            }

            else
            {
              v22 = 0;
            }
          }
        }

        (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 32), v22, v29, v21, v13, *(a1 + 72), v24);
      }

      else if (*(a2 + 36) == -65570)
      {
        (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 32), 4294901726, v29, 0, v13, *(a1 + 72), v24);
      }
    }

    else
    {
      syslog(4, "dnssd_clientstub handle_addrinfo_response: error reading result from daemon");
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

uint64_t DNSServiceSetDefaultDomainForUser(unsigned int a1, char *__s)
{
  if (!__s)
  {
    return 4294901756;
  }

  v10 = 0;
  sdRef = 0;
  v9 = strlen(__s) + 5;
  v4 = ConnectToServer(&sdRef, 0, 12, 0, 0, 0);
  if (!v4)
  {
    v5 = create_hdr(12, &v9, &v10, 0, sdRef);
    v6 = v10;
    *v10 = bswap32(a1);
    v7 = strlen(__s);
    memcpy(v6 + 1, __s, v7 + 1);
    v4 = deliver_request(v5, sdRef);
    DNSServiceRefDeallocate(sdRef);
  }

  return v4;
}

uint64_t DNSServiceRegisterInternal(uint64_t *a1, int a2, int a3, const char *a4, const char *a5, char *a6, const char *a7, __int16 a8, unsigned __int16 a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = 4294901756;
  if (a1 && a5)
  {
    v16 = a6;
    if (a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = &unk_299DED8C6;
    }

    if (!a6)
    {
      v16 = &unk_299DED8C6;
    }

    __s = v16;
    if (a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = &unk_299DED8C6;
    }

    if (a10)
    {
      v22 = a10;
    }

    else
    {
      v22 = &unk_299DED8C6;
    }

    if (a12)
    {
      v23 = handle_regservice_response;
      v24 = a12;
    }

    else
    {
      if ((a2 & 8) != 0)
      {
        return v13;
      }

      v23 = 0;
      v24 = 0;
    }

    v13 = ConnectToServer(a1, a2, 5, v23, v24, a13);
    if (!v13)
    {
      __src = v22;
      v46 = v20;
      v26 = strlen(v20);
      v27 = strlen(a5);
      v28 = strlen(__s);
      v47 = v21;
      v29 = v26 + a9 + v27 + v28 + strlen(v21) + 16;
      v50 = v29;
      if (a11)
      {
        v13 = 4294901756;
        if (*(a11 + 13))
        {
          if (!*(a11 + 12))
          {
            return v13;
          }
        }

        else if (*(a11 + 12))
        {
          return v13;
        }

        v30 = 36;
        if (!*(a11 + 40))
        {
          v30 = 16;
        }

        if (*(a11 + 13))
        {
          v31 = v30 | 8;
        }

        else
        {
          v31 = v30;
        }

        if (*(a11 + 12))
        {
          v32 = v31 + 8;
        }

        else
        {
          v32 = v31;
        }

        v50 = v32 + v29;
      }

      v51 = 0;
      v33 = create_hdr(5, &v50, &v51, *(*a1 + 8) != 0, *a1);
      v34 = v33;
      if (!a12)
      {
        v33->i32[2] |= 1u;
      }

      v36 = v50;
      v35 = v51;
      *v51 = HIBYTE(a2);
      v35[1] = BYTE2(a2);
      v35[2] = BYTE1(a2);
      v35[3] = a2;
      v35[4] = HIBYTE(a3);
      v35[5] = BYTE2(a3);
      v35[6] = BYTE1(a3);
      v35[7] = a3;
      v37 = strlen(v46) + 1;
      memcpy(v35 + 8, v46, v37);
      v38 = &v35[v37 + 8];
      v39 = strlen(a5) + 1;
      memcpy(v38, a5, v39);
      v40 = &v38[v39];
      v41 = strlen(__s) + 1;
      memcpy(v40, __s, v41);
      v42 = &v40[v41];
      v43 = strlen(v47) + 1;
      memcpy(v42, v47, v43);
      v44 = &v42[v43];
      *v44 = a8;
      v44[2] = HIBYTE(a9);
      v44[3] = a9;
      memcpy(&v42[v43 + 4], __src, a9);
      v51 = &v42[v43 + 4 + a9];
      if (a11)
      {
        put_attribute_tlvs(a11, v34, &v51, &v35[v36]);
      }

      v45 = deliver_request(v34, *a1);
      v13 = v45;
      if (v45)
      {
        if (v45 != -65555)
        {
          goto LABEL_43;
        }

        if (_should_return_noauth_error_s_once != -1)
        {
          dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
        }

        if (_should_return_noauth_error_s_should != 1)
        {
          return 0;
        }

        else
        {
LABEL_43:
          DNSServiceRefDeallocate(*a1);
          *a1 = 0;
        }
      }
    }
  }

  return v13;
}

void handle_regservice_response(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a2 + 36) != -65570)
  {
    goto LABEL_5;
  }

  if (_should_return_noauth_error_s_once != -1)
  {
    dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
  }

  if (_should_return_noauth_error_s_should == 1)
  {
LABEL_5:
    if (a3)
    {
      v8 = v19;
      do
      {
        if (a3 >= a4 || v8 >= &v20)
        {
          *(v8 - (v8 == &v20)) = 0;
          goto LABEL_24;
        }

        v9 = *a3++;
        *v8 = v9;
        v8 = (v8 + 1);
      }

      while (v9);
      if (!a3)
      {
        goto LABEL_24;
      }

      v10 = 0;
      do
      {
        v11 = &v18[v10];
        if (&a3[v10] >= a4 || v11 >= v19)
        {
          v11[-(v11 == v19)] = 0;
          goto LABEL_25;
        }

        v12 = a3[v10];
        v18[v10++] = v12;
      }

      while (v12);
      v13 = &a3[v10];
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v17;
      do
      {
        if (v13 >= a4 || v14 >= v18)
        {
          v14[-(v14 == v18)] = 0;
          goto LABEL_26;
        }

        v15 = *v13++;
        *v14++ = v15;
      }

      while (v15);
      if (!v13)
      {
        goto LABEL_26;
      }

      (*(a1 + 64))(a1, *(a2 + 28), *(a2 + 36), v19, v18, v17, *(a1 + 72));
    }

    else
    {
      v19[0] = 0;
LABEL_24:
      v18[0] = 0;
LABEL_25:
      v17[0] = 0;
LABEL_26:
      syslog(4, "dnssd_clientstub handle_regservice_response: error reading result from daemon");
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

DNSServiceErrorType DNSServiceEnumerateDomains(DNSServiceRef *sdRef, DNSServiceFlags flags, uint32_t interfaceIndex, DNSServiceDomainEnumReply callBack, void *context)
{
  v5 = -65540;
  if (sdRef)
  {
    if (callBack)
    {
      if (((flags >> 6) & 1) + ((flags >> 7) & 1) == 1)
      {
        v5 = ConnectToServer(sdRef, flags, 4, handle_enumeration_response, callBack, context);
        if (!v5)
        {
          v12 = 8;
          v13 = 0;
          v9 = create_hdr(4, &v12, &v13, *(*sdRef + 1) != 0, *sdRef);
          v10 = v13;
          *v13 = HIBYTE(flags);
          v10[1] = BYTE2(flags);
          v10[2] = BYTE1(flags);
          v10[3] = flags;
          v10[4] = HIBYTE(interfaceIndex);
          v10[5] = BYTE2(interfaceIndex);
          v10[6] = BYTE1(interfaceIndex);
          v10[7] = interfaceIndex;
          v5 = deliver_request(v9, *sdRef);
          if (v5)
          {
            DNSServiceRefDeallocate(*sdRef);
            *sdRef = 0;
          }
        }
      }
    }
  }

  return v5;
}

void handle_enumeration_response(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, unint64_t a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = v7;
    do
    {
      if (a3 >= a4 || v4 >= &v8)
      {
        *(v4 - (v4 == &v8)) = 0;
        goto LABEL_10;
      }

      v5 = *a3++;
      *v4 = v5;
      v4 = (v4 + 1);
    }

    while (v5);
    if (!a3)
    {
      goto LABEL_10;
    }

    (*(a1 + 64))(a1, a2[7], a2[8], a2[9], v7, *(a1 + 72));
  }

  else
  {
    v7[0] = 0;
LABEL_10:
    syslog(4, "dnssd_clientstub handle_enumeration_response: error reading result from daemon");
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t DNSServiceCreateDelegateConnection(uint64_t *a1, unsigned int a2, const void *a3)
{
  v3 = 4294901741;
  v17 = a2;
  if (!a1)
  {
    return 4294901756;
  }

  result = ConnectToServer(a1, 0, 19, ConnectionResponse, 0, 0);
  if (result)
  {
    return result;
  }

  v15 = 4;
  v16 = 0;
  v8 = create_hdr(19, &v15, &v16, 0, *a1);
  if (a2)
  {
    v9 = setsockopt(*(*a1 + 16), 0xFFFF, 4359, &v17, 4u);
    v10 = v17;
    if (v9 == -1)
    {
      v11 = *__error();
      v12 = __error();
      strerror(*v12);
      syslog(4, "dnssd_clientstub DNSServiceCreateDelegateConnection: Could not setsockopt() for PID[%d], no entitlements or process(pid) invalid errno:%d (%s)");
LABEL_13:
      free(v8);
      goto LABEL_14;
    }

    if (v17)
    {
      goto LABEL_8;
    }
  }

  if (setsockopt(*(*a1 + 16), 0xFFFF, 4360, a3, 0x10u) == -1)
  {
    v13 = *__error();
    v14 = __error();
    strerror(*v14);
    syslog(4, "dnssd_clientstub DNSServiceCreateDelegateConnection: Could not setsockopt() for UUID, no entitlements or process(uuid) invalid errno:%d (%s) ");
    goto LABEL_13;
  }

  v10 = v17;
LABEL_8:
  *v16 = bswap32(v10);
  result = deliver_request(v8, *a1);
  v3 = result;
  if (result)
  {
LABEL_14:
    DNSServiceRefDeallocate(*a1);
    *a1 = 0;
    return v3;
  }

  return result;
}

uint64_t DNSServiceRegisterRecordInternal(_DWORD *a1, void *a2, unsigned int a3, int a4, char *__s, __int16 a6, __int16 a7, unsigned int a8, const void *a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = 4294901756;
  if (((a3 >> 4) & 1) + ((a3 >> 5) & 1) + ((a3 >> 11) & 1) != 1)
  {
    return v13;
  }

  v44 = 0;
  if (!a1 || !a2 || !__s || (!a9 ? (v18 = a8 == 0) : (v18 = 1), v18 ? (v19 = a12 == 0) : (v19 = 1), v19))
  {
    syslog(4, "dnssd_clientstub DNSServiceRegisterRecord called with NULL parameter");
    return v13;
  }

  v21 = a1[4];
  if (v21 < 0 || (a1[5] ^ v21) != 0x12345678)
  {
    v40 = a1[4];
    syslog(4, "dnssd_clientstub DNSServiceRegisterRecord called with invalid DNSServiceRef %p %08X %08X");
    return 4294901755;
  }

  v26 = a1[8];
  if (v26 != 1 && v26 != 19)
  {
    syslog(4, "dnssd_clientstub DNSServiceRegisterRecord called with non-DNSServiceCreateConnection DNSServiceRef %p %u");
    return 4294901755;
  }

  *a2 = 0;
  v27 = strlen(__s);
  v43 = v27 + a8 + 19;
  if (!a11)
  {
    goto LABEL_36;
  }

  if (*(a11 + 13))
  {
    if (*(a11 + 12))
    {
      goto LABEL_27;
    }

    return v13;
  }

  if (*(a11 + 12))
  {
    return v13;
  }

LABEL_27:
  v28 = 36;
  if (!*(a11 + 40))
  {
    v28 = 16;
  }

  if (*(a11 + 13))
  {
    v29 = v28 | 8;
  }

  else
  {
    v29 = v28;
  }

  if (*(a11 + 12))
  {
    v30 = v29 + 8;
  }

  else
  {
    v30 = v29;
  }

  v43 = v30 + v27 + a8 + 19;
LABEL_36:
  v31 = a1[6];
  a1[6] = v31 + 1;
  if (v31 == -1)
  {
    ++a1[7];
  }

  v32 = create_hdr(2, &v43, &v44, !(a3 & 1), a1);
  v33 = v44;
  v41 = v43;
  v42 = v32;
  *v44 = HIBYTE(a3);
  v33[1] = BYTE2(a3);
  v33[2] = BYTE1(a3);
  v33[3] = a3;
  v33[4] = HIBYTE(a4);
  v33[5] = BYTE2(a4);
  v33[6] = BYTE1(a4);
  v33[7] = a4;
  v34 = strlen(__s) + 1;
  memcpy(v33 + 8, __s, v34);
  v35 = &v33[v34 + 8];
  *v35 = HIBYTE(a6);
  v35[1] = a6;
  v35[2] = HIBYTE(a7);
  v35[3] = a7;
  v35[4] = BYTE1(a8);
  v35[5] = a8;
  memcpy(v35 + 6, a9, a8);
  v36 = &v33[v34 + 14 + a8];
  *v36 = bswap32(a10);
  v44 = v36 + 1;
  if (a11)
  {
    put_attribute_tlvs(a11, v42, &v44, &v33[v41]);
  }

  if (a3)
  {
    v42->i32[2] |= 4u;
  }

  result = malloc_type_calloc(1uLL, 0x40uLL, 0x4012CDBDuLL);
  if (result)
  {
    *(result + 8) = a13;
    *(result + 16) = a12;
    v37 = a1[9];
    a1[9] = v37 + 1;
    *(result + 32) = v37;
    *(result + 48) = a1;
    *a2 = result;
    *(result + 36) = *(a1 + 3);
    v42[1].i32[2] = v37;
    v38 = a1 + 20;
    do
    {
      v39 = v38;
      v38 = *v38;
    }

    while (v38);
    *v39 = result;
    if (a3)
    {
      v13 = 0;
      *(result + 56) = v42;
    }

    else
    {
      v13 = deliver_request(v42, a1);
      if (v13 == -65555)
      {
        if (_should_return_noauth_error_s_once != -1)
        {
          dispatch_once(&_should_return_noauth_error_s_once, &__block_literal_global);
        }

        if (_should_return_noauth_error_s_should)
        {
          return 4294901741;
        }

        else
        {
          return 0;
        }
      }
    }

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t DNSServiceUpdateRecordInternal(uint64_t a1, uint64_t a2, int a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v26 = 0;
  if (a1 && (!a4 || a5))
  {
    v16 = *(a1 + 16);
    v17 = *(a1 + 20);
    if (v16 < 0 || (v17 ^ v16) != 0x12345678)
    {
      syslog(4, "dnssd_clientstub DNSServiceUpdateRecord called with invalid DNSServiceRef %p %08X %08X", a1, *(a1 + 16), v17);
      return 4294901755;
    }

    v27 = a4 + 10;
    if (a7)
    {
      v14 = 4294901756;
      if (*(a7 + 13))
      {
        if (!*(a7 + 12))
        {
          return v14;
        }
      }

      else if (*(a7 + 12))
      {
        return v14;
      }

      v18 = 36;
      if (!*(a7 + 40))
      {
        v18 = 16;
      }

      if (*(a7 + 13))
      {
        v19 = v18 | 8;
      }

      else
      {
        v19 = v18;
      }

      if (*(a7 + 12))
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = v19;
      }

      v27 = v20 + a4 + 10;
    }

    v21 = create_hdr(11, &v27, &v26, 1, a1);
    v22 = v21;
    if (!*(a1 + 8))
    {
      v21[1].i64[0] = 0;
    }

    if (a2)
    {
      v23 = *(a2 + 32);
    }

    else
    {
      v23 = -1;
    }

    v21[1].i32[2] = v23;
    v24 = v26;
    v25 = v27;
    *v26 = HIBYTE(a3);
    v24[1] = BYTE2(a3);
    v24[2] = BYTE1(a3);
    v24[3] = a3;
    v24[4] = BYTE1(a4);
    v24[5] = a4;
    memcpy(v24 + 6, a5, a4);
    *&v24[a4 + 6] = bswap32(a6);
    v26 = &v24[a4 + 10];
    if (a7)
    {
      put_attribute_tlvs(a7, v22, &v26, &v24[v25]);
    }

    return deliver_request(v22, a1);
  }

  else
  {
    v14 = 4294901756;
    syslog(4, "dnssd_clientstub DNSServiceUpdateRecord called with NULL parameter");
  }

  return v14;
}

DNSServiceErrorType DNSServiceReconfirmRecord(DNSServiceFlags flags, uint32_t interfaceIndex, const char *fullname, uint16_t rrtype, uint16_t rrclass, uint16_t rdlen, const void *rdata)
{
  sdRef = 0;
  v7 = -65540;
  if (fullname)
  {
    v9 = rdlen;
    if (!rdlen || rdata)
    {
      v23 = 0;
      v7 = ConnectToServer(&sdRef, flags, 9, 0, 0, 0);
      if (!v7)
      {
        v22 = strlen(fullname) + v9 + 15;
        v15 = create_hdr(9, &v22, &v23, 0, sdRef);
        v16 = v23;
        *v23 = HIBYTE(flags);
        v16[1] = BYTE2(flags);
        v16[2] = BYTE1(flags);
        v16[3] = flags;
        v16[4] = HIBYTE(interfaceIndex);
        v16[5] = BYTE2(interfaceIndex);
        v16[6] = BYTE1(interfaceIndex);
        v17 = v16 + 8;
        v16[7] = interfaceIndex;
        v18 = strlen(fullname) + 1;
        memcpy(v17, fullname, v18);
        v19 = &v17[v18];
        *v19 = HIBYTE(rrtype);
        v19[1] = rrtype;
        v19[2] = HIBYTE(rrclass);
        v19[3] = rrclass;
        v19[4] = BYTE1(v9);
        v19[5] = v9;
        memcpy(&v17[v18 + 6], rdata, v9);
        v7 = deliver_request(v15, sdRef);
        DNSServiceRefDeallocate(sdRef);
      }
    }
  }

  return v7;
}

DNSServiceErrorType PeerConnectionRelease(DNSServiceFlags flags, const char *name, const char *regtype, const char *domain)
{
  v4 = -65540;
  if (name)
  {
    if (regtype)
    {
      if (domain)
      {
        v20 = 0;
        sdRef = 0;
        v4 = ConnectToServer(&sdRef, flags, 18, 0, 0, 0);
        if (!v4)
        {
          v9 = strlen(name);
          v10 = strlen(regtype);
          v19 = v10 + v9 + strlen(domain) + 7;
          v11 = create_hdr(18, &v19, &v20, 0, sdRef);
          v12 = v20;
          *v20 = bswap32(flags);
          v12 += 4;
          v13 = strlen(name) + 1;
          memcpy(v12, name, v13);
          v14 = &v12[v13];
          v15 = strlen(regtype) + 1;
          memcpy(v14, regtype, v15);
          v16 = strlen(domain);
          memcpy(&v14[v15], domain, v16 + 1);
          v4 = deliver_request(v11, sdRef);
          DNSServiceRefDeallocate(sdRef);
        }
      }
    }
  }

  return v4;
}

DNSServiceErrorType DNSServiceNATPortMappingCreate(DNSServiceRef *sdRef, DNSServiceFlags flags, uint32_t interfaceIndex, DNSServiceProtocol protocol, uint16_t internalPort, uint16_t externalPort, uint32_t ttl, DNSServiceNATPortMappingReply callBack, void *context)
{
  v16 = ConnectToServer(sdRef, flags, 14, handle_port_mapping_response, callBack, context);
  if (!v16)
  {
    v20 = 20;
    v21 = 0;
    v17 = create_hdr(14, &v20, &v21, *(*sdRef + 1) != 0, *sdRef);
    v18 = v21;
    *v21 = HIBYTE(flags);
    v18[1] = BYTE2(flags);
    v18[2] = BYTE1(flags);
    v18[3] = flags;
    v18[4] = HIBYTE(interfaceIndex);
    v18[5] = BYTE2(interfaceIndex);
    v18[6] = BYTE1(interfaceIndex);
    v18[7] = interfaceIndex;
    v18[8] = HIBYTE(protocol);
    v18[9] = BYTE2(protocol);
    v18[10] = BYTE1(protocol);
    v18[11] = protocol;
    *(v18 + 6) = internalPort;
    *(v18 + 7) = externalPort;
    v18[16] = HIBYTE(ttl);
    v18[17] = BYTE2(ttl);
    v18[18] = BYTE1(ttl);
    v18[19] = ttl;
    v16 = deliver_request(v17, *sdRef);
    if (v16)
    {
      DNSServiceRefDeallocate(*sdRef);
      *sdRef = 0;
    }
  }

  return v16;
}

void handle_port_mapping_response(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t a4)
{
  if (!a3 || a3 + 13 > a4 || a3 == -9 || a3 == -13)
  {
    syslog(4, "dnssd_clientstub handle_port_mapping_response: error reading result from daemon");
  }

  else
  {
    (*(a1 + 64))(a1, a2[7], a2[8], a2[9], *a3, *(a3 + 4), *(a3 + 5), *(a3 + 7), bswap32(*(a3 + 9)), *(a1 + 72));
  }
}

void *_DNSServiceSleepKeepalive_sockaddr(DNSServiceRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x29EDCA608];
  v6 = 4294901756;
  v33 = 0;
  if (!a4)
  {
    goto LABEL_23;
  }

  v13 = *(a2 + 1);
  if (v13 == 30)
  {
    if (*(a3 + 1) != 30)
    {
      goto LABEL_23;
    }

    if (!inet_ntop(30, (a3 + 8), v38, 0x2Eu))
    {
      v24 = *__error();
      syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive remote6 info failed %d");
      goto LABEL_22;
    }

    if (!inet_ntop(30, (a2 + 8), v39, 0x2Eu))
    {
      v26 = *__error();
      syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive local6 info failed %d");
      goto LABEL_22;
    }

    v17 = *(a2 + 8);
    v18 = vmovl_high_u8(v17);
    v19 = vmovl_u8(*v17.i8);
    v15 = vaddvq_s32(vaddq_s32(vaddl_u16(*v19.i8, *v18.i8), vaddl_high_u16(v19, v18)));
    v16 = "t=%u H=%s D=%s l=%u r=%u";
  }

  else
  {
    if (v13 != 2 || *(a3 + 1) != 2)
    {
      goto LABEL_23;
    }

    if (!inet_ntop(2, (a3 + 4), v38, 0x2Eu))
    {
      v23 = *__error();
      syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive remote info failed %d");
      goto LABEL_22;
    }

    if (!inet_ntop(2, (a2 + 4), v39, 0x2Eu))
    {
      v25 = *__error();
      syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive local info failed %d");
      goto LABEL_22;
    }

    v14.i32[0] = *(a2 + 4);
    v15 = vaddvq_s32(vmovl_u16(*&vmovl_u8(v14)));
    v16 = "t=%u h=%s d=%s l=%u r=%u";
  }

  v20 = *(a2 + 2);
  v21 = snprintf(v37, 0xFFuLL, v16, a4, v39, v38, __rev16(v20), bswap32(*(a3 + 2)) >> 16, v33);
  if (v21 >= 0xFF)
  {
    syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive could not fit local/remote info", v31);
LABEL_22:
    v6 = 4294901759;
    goto LABEL_23;
  }

  v22 = v21;
  v36 = v21 + 1;
  if (snprintf(__str, 0xAuLL, "%u", v15 + v20) >= 0xA)
  {
    syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive could not fit unique", v32);
    goto LABEL_22;
  }

  if (snprintf(__s, 0x80uLL, "%s.%s", __str, "_keepalive._dns-sd._udp.local") >= 0x80)
  {
    syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive could not fit name");
    goto LABEL_22;
  }

  result = malloc_type_malloc(0x10uLL, 0xFEF413CAuLL);
  if (result)
  {
    v29 = result;
    *result = a5;
    result[1] = a6;
    Connection = DNSServiceCreateConnection(a1);
    if (Connection)
    {
      v6 = Connection;
    }

    else
    {
      v6 = DNSServiceRegisterRecordInternal(*a1, &v33, 0x20u, 0, __s, 10, 1, (v22 + 2), &v36, 0, 0, SleepKeepaliveCallback, v29);
      if (!v6)
      {
        *(*a1 + 17) = v29;
        goto LABEL_23;
      }
    }

    syslog(4, "dnssd_clientstub DNSServiceSleepKeepalive cannot create connection");
    free(v29);
LABEL_23:
    v27 = *MEMORY[0x29EDCA608];
    return v6;
  }

  __break(1u);
  return result;
}

void SleepKeepaliveCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 136) != a5)
  {
    syslog(4, "dnssd_clientstub SleepKeepaliveCallback context mismatch");
  }

  v8 = *a5;
  if (*a5)
  {
    v9 = *(a5 + 8);

    v8(a1, a4, v9);
  }
}
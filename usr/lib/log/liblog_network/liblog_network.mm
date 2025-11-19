uint64_t OSLogCopyFormattedString(const char *a1, void *a2)
{
  v3 = a2;
  if (!strcmp(a1, "in_addr"))
  {
    v5 = &OSLogCopyFormattedString_formatters;
LABEL_18:
    v4 = (v5[1])(v3);
    goto LABEL_19;
  }

  if (!strcmp(a1, "in6_addr"))
  {
    v5 = &off_2A2002708;
    goto LABEL_18;
  }

  if (!strcmp(a1, "sockaddr"))
  {
    v5 = &off_2A2002718;
    goto LABEL_18;
  }

  if (!strcmp(a1, "tcp_flags"))
  {
    v5 = &off_2A2002728;
    goto LABEL_18;
  }

  if (!strcmp(a1, "tcp_state"))
  {
    v5 = &off_2A2002738;
    goto LABEL_18;
  }

  if (!strcmp(a1, "tcp_packets"))
  {
    v5 = &off_2A2002748;
    goto LABEL_18;
  }

  if (!strcmp(a1, "quic_packets"))
  {
    v5 = &off_2A2002758;
    goto LABEL_18;
  }

  if (!strcmp(a1, "data"))
  {
    v5 = &off_2A2002768;
    goto LABEL_18;
  }

  v4 = 0;
LABEL_19:

  return v4;
}

uint64_t NWOLCopyFormattedStringData(void *a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 bytes] && objc_msgSend(v2, "length"))
    {
      v26 = [v2 bytes];
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      v3 = [v2 length];
      *&v4 = 0x2020202020202020;
      *(&v4 + 1) = 0x2020202020202020;
      v29 = v4;
      *v30 = v4;
      *&v30[15] = v4;
      v31 = 0;
      if (v3)
      {
        v5 = v3;
        v6 = 0;
        v7 = &stru_2A2002A98;
        do
        {
          if (v5 - v6 >= 0x10)
          {
            v9 = 16;
          }

          else
          {
            v9 = v5 - v6;
          }

          if (v5 != v6)
          {
            v10 = &v29 + 1;
            v11 = (v26 + v6);
            if (v9 <= 1)
            {
              v12 = 1;
            }

            else
            {
              v12 = v9;
            }

            v13 = 3 * (v9 - 1);
            v14 = v27;
            do
            {
              v16 = *v11++;
              v15 = v16;
              if (v16 - 32 >= 0x5F)
              {
                v17 = 46;
              }

              else
              {
                v17 = v15;
              }

              v18 = NWOLCopyFormattedStringData_hexChars[v15 >> 4];
              *v14 = v17;
              *(v10 - 1) = v18;
              *v10 = NWOLCopyFormattedStringData_hexChars[v15 & 0xF];
              if (!v13)
              {
                *(v27 + (v9 - 1) + 1) = 0;
              }

              v13 -= 3;
              v10 += 3;
              ++v14;
              --v12;
            }

            while (v12);
          }

          if (v5 - v6 <= 0xF)
          {
            memset(&v30[3 * v9 - 16], 32, (3 * (16 - v9) - 1));
          }

          v8 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@%4zu   %s   %s\n", v7, v6, &v29, v27];

          v6 += v9;
          v7 = v8;
        }

        while (v6 < v5);
      }

      else
      {
        v8 = &stru_2A2002A98;
      }

      v23 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:v8];
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<NULL>"];
    }
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x29EDBA038]);
    v20 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v21 = [v1 description];
    v22 = [v20 initWithFormat:@"<fail decode - data type> %@", v21];
    v23 = [v19 initWithString:v22];
  }

  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t NWOLCopyFormattedStringQUICPackets(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v3 = [v2 bytes];
    if ([v2 length])
    {
      v9 = MEMORY[0x29EDCA5F8];
      LOBYTE(v10) = *v3;
      nw_log_ring_parse();
      v4 = objc_alloc(MEMORY[0x29EDBA038]);
      if (v12[5])
      {
        v5 = v12[5];
      }

      else
      {
        v5 = &stru_2A2002A98;
      }

      v6 = [v4 initWithString:{v5, v9, 3221225472, __NWOLCopyFormattedStringQUICPackets_block_invoke, &unk_29F2810B8, &v11, v10}];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<failed conversion>"];
    }

    v7 = v6;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<failed conversion>"];
  }

  return v7;
}

void sub_299A0BE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __NWOLCopyFormattedStringQUICPackets_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v12, 0, sizeof(v12));
  v2 = *(a1 + 40);
  quic_shorthand_describe_entry();
  v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"\t%s", v12];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 40))
  {
    v6 = [v3 stringByAppendingFormat:@"\n%@", *(v5 + 40)];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = v3;
    v8 = *(v5 + 40);
    *(v5 + 40) = v9;
  }

  v10 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t NWOLCopyFormattedStringTCPPackets(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v3 = [v2 bytes];
    if ([v2 length])
    {
      if (*v3 != 1)
      {
        v7 = objc_alloc(MEMORY[0x29EDBA038]);
        v8 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Unsupported verison: %u", *v3];
        v6 = [v7 initWithString:v8];

        goto LABEL_11;
      }

      nw_log_ring_parse();
      v4 = objc_alloc(MEMORY[0x29EDBA038]);
      if (v11[5])
      {
        v5 = v11[5];
      }

      else
      {
        v5 = &stru_2A2002A98;
      }
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x29EDBA038]);
      v5 = @"<failed conversion>";
    }

    v6 = [v4 initWithString:v5];
LABEL_11:
    _Block_object_dispose(&v10, 8);

    goto LABEL_12;
  }

  v6 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<failed conversion>"];
LABEL_12:

  return v6;
}

void sub_299A0C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __NWOLCopyFormattedStringTCPPackets_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x29EDCA608];
  if (a2 == 16)
  {
    v5 = *a3;
    v4 = *(a3 + 4);
    v6 = *(a3 + 8);
    v7 = *(a3 + 10);
    v8 = *(a3 + 12);
    v9 = *(a3 + 14);
    v10 = *(a3 + 15);
    v11 = nw_log_delta_to_ms();
    v12 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v13 = "rcv";
    if ((v10 & 1) == 0)
    {
      v13 = "snd";
    }

    v34 = v13;
    v35 = v12;
    v14 = bswap32(v5);
    v15 = bswap32(v4);
    v16 = "";
    v17 = bswap32(v6) >> 16;
    if (v9)
    {
      v18 = "F";
    }

    else
    {
      v18 = "";
    }

    v19 = "S";
    if ((v9 & 2) == 0)
    {
      v19 = "";
    }

    v20 = "R";
    if ((v9 & 4) == 0)
    {
      v20 = "";
    }

    v21 = "P";
    if ((v9 & 8) == 0)
    {
      v21 = "";
    }

    v22 = ".";
    if ((v9 & 0x10) == 0)
    {
      v22 = "";
    }

    v23 = "U";
    if ((v9 & 0x20) == 0)
    {
      v23 = "";
    }

    v24 = "E";
    if ((v9 & 0x40) == 0)
    {
      v24 = "";
    }

    if ((v9 & 0x80u) != 0)
    {
      v16 = "C";
    }

    snprintf(__str, 9uLL, "%s%s%s%s%s%s%s%s", v18, v19, v20, v21, v22, v23, v24, v16);
    v25 = [v35 initWithFormat:@"\t %s %4u.%.03us seq %10u:%-10u ack %-10u win %-5u len %-4u [%s]%s", v34, v11 / 0x3E8uLL, v11 % 0x3E8, v14, (v9 & 1) + v7 + ((v9 >> 1) & 1) + v14, v15, v17, v7, __str, *(&off_29F2810D8 + (v10 & 6))];
    v26 = v25;
    v27 = *(*(a1 + 32) + 8);
    if (*(v27 + 40))
    {
      v28 = [v25 stringByAppendingFormat:@"\n%@", *(v27 + 40)];
      v29 = *(*(a1 + 32) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    else
    {
      v31 = v25;
      v30 = *(v27 + 40);
      *(v27 + 40) = v31;
    }
  }

  result = a2 == 16;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NWOLCopyFormattedStringTCPState(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 intValue];
    v3 = objc_alloc(MEMORY[0x29EDBA038]);
    if (v2 < 0xB)
    {
      v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:tcpstates[v2]];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%d", v2];
    }

    v6 = v4;
    v5 = [v3 initWithString:v4];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<failed conversion>"];
  }

  return v5;
}

uint64_t NWOLCopyFormattedStringTCPFlags(void *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 unsignedCharValue];
    v3 = objc_alloc(MEMORY[0x29EDBA038]);
    v4 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v5 = "F";
    v6 = "";
    if ((v2 & 1) == 0)
    {
      v5 = "";
    }

    v7 = "S";
    if ((v2 & 2) == 0)
    {
      v7 = "";
    }

    v8 = "R";
    if ((v2 & 4) == 0)
    {
      v8 = "";
    }

    v9 = "P";
    if ((v2 & 8) == 0)
    {
      v9 = "";
    }

    v10 = ".";
    if ((v2 & 0x10) == 0)
    {
      v10 = "";
    }

    v11 = "U";
    if ((v2 & 0x20) == 0)
    {
      v11 = "";
    }

    v12 = "E";
    if ((v2 & 0x40) == 0)
    {
      v12 = "";
    }

    if (v2 < 0)
    {
      v6 = "C";
    }

    snprintf(__str, 9uLL, "%s%s%s%s%s%s%s%s", v5, v7, v8, v9, v10, v11, v12, v6);
    v13 = [v4 initWithFormat:@"[%s]", __str];
    v14 = [v3 initWithString:v13];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<failed conversion>"];
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t NWOLCopyFormattedStringSockaddr(void *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 bytes];
    v4 = [v2 length];
    if (v3 && v4)
    {
      if (v4 <= 1)
      {
        v5 = objc_alloc(MEMORY[0x29EDBA038]);
        v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - size> %zu < %lu", 1, 2];
LABEL_6:
        v7 = v6;
        v8 = v5;
LABEL_7:
        v9 = [v8 initWithString:v7];

LABEL_14:
        goto LABEL_15;
      }

      v16 = *v3;
      if (v4 < v16)
      {
        v17 = v4;
        v18 = objc_alloc(MEMORY[0x29EDBA038]);
        v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - size> %d > %zu", *v3, v17, v42, v43, v44];
LABEL_13:
        v20 = v19;
        v9 = [v18 initWithString:v19];

        goto LABEL_14;
      }

      v23 = v3[1];
      if (v23 <= 0x11)
      {
        if (v23 == 1)
        {
          v18 = objc_alloc(MEMORY[0x29EDBA038]);
          v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"AF_UNIX:%.*s", *v3 - 2, v3 + 2, v42, v43, v44];
          goto LABEL_13;
        }

        if (v23 == 2)
        {
          if (v16 <= 0xF)
          {
            v18 = objc_alloc(MEMORY[0x29EDBA038]);
            v24 = objc_alloc(MEMORY[0x29EDBA0F8]);
            v25 = *v3;
            v26 = 16;
LABEL_25:
            v19 = [v24 initWithFormat:@"<fail decode - size> %d < %lu", v25, v26, v42, v43, v44];
            goto LABEL_13;
          }

          v29 = getnameinfo(v3, v16, v46, 0x10u, v45, 6u, 10);
          if (!v29)
          {
            v30 = *(v3 + 1);
            v5 = objc_alloc(MEMORY[0x29EDBA038]);
            v31 = objc_alloc(MEMORY[0x29EDBA0F8]);
            if (v30)
            {
              v6 = [v31 initWithFormat:@"%s:%s", v46, v45];
              goto LABEL_6;
            }

LABEL_55:
            v6 = [v31 initWithFormat:@"%s", v46, v41];
            goto LABEL_6;
          }

          goto LABEL_34;
        }

        goto LABEL_26;
      }

      if (v23 != 18)
      {
        if (v23 == 30)
        {
          if (v16 <= 0x1B)
          {
            v18 = objc_alloc(MEMORY[0x29EDBA038]);
            v24 = objc_alloc(MEMORY[0x29EDBA0F8]);
            v25 = *v3;
            v26 = 28;
            goto LABEL_25;
          }

          v29 = getnameinfo(v3, v16, v46, 0x46u, v45, 6u, 10);
          if (!v29)
          {
            v39 = *(v3 + 1);
            v5 = objc_alloc(MEMORY[0x29EDBA038]);
            v31 = objc_alloc(MEMORY[0x29EDBA0F8]);
            if (v39)
            {
              v6 = [v31 initWithFormat:@"%s.%s", v46, v45];
              goto LABEL_6;
            }

            goto LABEL_55;
          }

LABEL_34:
          v32 = v29;
          v5 = objc_alloc(MEMORY[0x29EDBA038]);
          v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<failed conversion> %s", gai_strerror(v32), v41];
          goto LABEL_6;
        }

LABEL_26:
        v18 = objc_alloc(MEMORY[0x29EDBA038]);
        v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - address family> %d", v3[1], v41, v42, v43, v44];
        goto LABEL_13;
      }

      v27 = v3[5];
      v28 = v3[6];
      if (v27 + v28 + v3[7] + 8 > v16)
      {
        v18 = objc_alloc(MEMORY[0x29EDBA038]);
        v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - size> %d < %zu + %d + %d + %d", *v3, 8, v3[5], v3[6], v3[7]];
        goto LABEL_13;
      }

      if (v28 | v27 || *(v3 + 1))
      {
        v33 = [MEMORY[0x29EDBA050] string];
        v7 = v33;
        v34 = v3[5];
        if (v3[6])
        {
          [v33 appendFormat:@"%x", v3[v34 + 8]];
          if (v3[6] >= 2u)
          {
            v35 = &v3[v34 + 9];
            v36 = 1;
            do
            {
              v37 = *v35++;
              [v7 appendFormat:@":%x", v37];
              ++v36;
            }

            while (v36 < v3[6]);
          }

          LODWORD(v34) = v3[5];
        }

        if (v34)
        {
          if ([v7 length])
          {
            v38 = @"%%%.*s";
          }

          else
          {
            v38 = @"%.*s";
          }

          [v7 appendFormat:v38, v3[5], v3 + 8];
        }

        else if (*(v3 + 1))
        {
          if ([v7 length])
          {
            v40 = @"%%%d";
          }

          else
          {
            v40 = @"%d";
          }

          [v7 appendFormat:v40, *(v3 + 1), v41];
        }

        v8 = objc_alloc(MEMORY[0x29EDBA038]);
        goto LABEL_7;
      }

      v14 = objc_alloc(MEMORY[0x29EDBA038]);
      v15 = @"<fail decode - no information>";
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x29EDBA038]);
      v15 = @"<NULL>";
    }

    v9 = [v14 initWithString:v15];
    goto LABEL_14;
  }

  v10 = objc_alloc(MEMORY[0x29EDBA038]);
  v11 = objc_alloc(MEMORY[0x29EDBA0F8]);
  v12 = [v1 description];
  v13 = [v11 initWithFormat:@"<fail decode - data type> %@", v12];
  v9 = [v10 initWithString:v13];

LABEL_15:
  v21 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t NWOLCopyFormattedStringIPv6Address(void *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 bytes] && objc_msgSend(v2, "length"))
    {
      if ([v2 length] != 16)
      {
        v5 = objc_alloc(MEMORY[0x29EDBA038]);
        v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - size> %zu != %lu", objc_msgSend(v2, "length"), 16];
        goto LABEL_11;
      }

      *v16 = 0u;
      memset(v17, 0, sizeof(v17));
      v3 = inet_ntop(30, [v2 bytes], v16, 0x2Eu);
      v4 = objc_alloc(MEMORY[0x29EDBA038]);
      if (v3)
      {
        v5 = v4;
        v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v16];
LABEL_11:
        v13 = v6;
        v11 = [v5 initWithString:v6];

        goto LABEL_12;
      }

      v12 = @"<failed conversion>";
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x29EDBA038]);
      v12 = @"<NULL>";
    }

    v11 = [v4 initWithString:v12];
LABEL_12:

    goto LABEL_13;
  }

  v7 = objc_alloc(MEMORY[0x29EDBA038]);
  v8 = objc_alloc(MEMORY[0x29EDBA0F8]);
  v9 = [v1 description];
  v10 = [v8 initWithFormat:@"<fail decode - data type> %@", v9];
  v11 = [v7 initWithString:v10];

LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t NWOLCopyFormattedStringIPv4Address(void *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v17 = 0;
  *v18 = 0;
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 bytes] && objc_msgSend(v2, "length"))
    {
      if ([v2 length] == 4)
      {
        v3 = [v2 bytes];

        v4 = v3;
        goto LABEL_8;
      }

      v13 = objc_alloc(MEMORY[0x29EDBA038]);
      v14 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"<fail decode - size> %zu != %lu", objc_msgSend(v2, "length"), 4];
      v9 = [v13 initWithString:v14];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:@"<NULL>"];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x29EDBA038]);
    v11 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v8 = [v1 description];
    v12 = [v11 initWithFormat:@"<fail decode - data type> %@", v8];
    v9 = [v10 initWithString:v12];

    goto LABEL_12;
  }

  v17 = [v1 unsignedIntValue];
  v4 = &v17;
LABEL_8:
  v5 = inet_ntop(2, v4, v18, 0x10u);
  v6 = objc_alloc(MEMORY[0x29EDBA038]);
  if (!v5)
  {
    v9 = [v6 initWithString:@"<failed conversion>"];
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v18];
  v9 = [v7 initWithString:v8];
LABEL_12:

LABEL_16:
  v15 = *MEMORY[0x29EDCA608];
  return v9;
}
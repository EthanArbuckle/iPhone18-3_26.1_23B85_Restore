void sub_297FC83EC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a2)
  {
    if (a4 && !a5)
    {
      v7 = a2[2];
      if ((*(a4 + 4) & 0xFFFFFFFE) == 0xA && v7 != 0)
      {
        sub_297FBE6DC(v7, a3, a4);
      }
    }

    sub_297F9FB20(a2, a5);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevDisconnect(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (a3)
    {
      v3 = *(a1 + 40);
      v4 = v3 - 1;
      if (v3 == 3)
      {
        v5 = 7;
      }

      else
      {
        v5 = 6;
      }

      if (v4 < 2)
      {
        v5 = 7;
      }
    }

    else
    {
      v5 = 5;
    }

    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 0x40000000;
    v18[2] = sub_297FC8710;
    v18[3] = &unk_29EE886F8;
    v18[4] = a1;
    v18[5] = a2;
    v19 = v5;
    v10 = sub_297FA1B10(a1, v18);
    if (!sub_297F9F694(v10))
    {
      v9 = 0;
      goto LABEL_31;
    }

    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phLibNfc_RemoteDev_Disconnect failed: 0x%04llx", "NFDriverRemoteDevDisconnect", 6584, *v10);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *v10;
      *buf = 136446722;
      v21 = "NFDriverRemoteDevDisconnect";
      v22 = 1024;
      v23 = 6584;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Disconnect failed: 0x%04llx", buf, 0x1Cu);
    }

    v15 = *v10;
    if (*v10 <= 120)
    {
      if (v15 == 51)
      {
        v9 = 19;
        goto LABEL_31;
      }

      if (v15 == 58)
      {
LABEL_24:
        v9 = 6;
LABEL_31:
        sub_297F9FBDC(v10);
        goto LABEL_32;
      }
    }

    else
    {
      if (v15 == 121)
      {
        v9 = 18;
        goto LABEL_31;
      }

      if (v15 == 146 || v15 == 148)
      {
        goto LABEL_24;
      }
    }

    v9 = 1;
    goto LABEL_31;
  }

  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevDisconnect", 6567);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v21 = "NFDriverRemoteDevDisconnect";
    v22 = 1024;
    v23 = 6567;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
  }

  v9 = 5;
LABEL_32:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_297FC873C(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    sub_297F9FB20(a2, a4);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevCheckNdef(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevCheckNdef", &unk_297FE9C47, buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2800000000;
  v31 = 0;
  v32 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2)
  {
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 0x40000000;
    v27[2] = sub_297FC8B8C;
    v27[3] = &unk_29EE88720;
    v27[4] = buf;
    v27[5] = a1;
    v27[6] = a2;
    v7 = sub_297FA1B10(a1, v27);
    if (!sub_297F9F694(v7))
    {
      v18 = v29;
      v19 = *(v29 + 28);
      *&v20 = v19;
      *(&v20 + 1) = HIDWORD(v19);
      *a3 = v20;
      v21 = v18[24];
      if ((v21 - 1) >= 2)
      {
        if (v21 != 3)
        {
          v13 = 0;
          goto LABEL_34;
        }

        v13 = 0;
        v22 = 1;
      }

      else
      {
        v13 = 0;
        v22 = 257;
      }

      *(a3 + 8) = v22;
LABEL_34:
      v23 = NFSharedSignpostLog();
      if (os_signpost_enabled(v23))
      {
        v24 = *v7;
        *v33 = 134349056;
        v34 = v24;
        _os_signpost_emit_with_name_impl(&dword_297F97000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevCheckNdef", " mutexStatus=%{public, signpost.description:attribute}llu ", v33, 0xCu);
      }

      v7[2] = 0;
      sub_297F9FBDC(v7);
      goto LABEL_37;
    }

    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phLibNfc_RemoteDev_CheckNdef failed: 0x%04llx", "NFDriverRemoteDevCheckNdef", 6654, *v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *v7;
      *v33 = 136446722;
      v34 = "NFDriverRemoteDevCheckNdef";
      v35 = 1024;
      v36 = 6654;
      v37 = 2048;
      v38 = v11;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_CheckNdef failed: 0x%04llx", v33, 0x1Cu);
    }

    v12 = *v7;
    if (*v7 > 148)
    {
      if (v12 == 149)
      {
        v13 = 5;
        goto LABEL_34;
      }

      if (v12 == 152)
      {
        v13 = 12;
        goto LABEL_34;
      }

      if (v12 != 150)
      {
LABEL_13:
        v13 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      if (v12 == 121)
      {
        v13 = 18;
        goto LABEL_34;
      }

      if (v12 != 146 && v12 != 148)
      {
        goto LABEL_13;
      }
    }

    v13 = 6;
    goto LABEL_34;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevCheckNdef", 6626);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v33 = 136446466;
    v34 = "NFDriverRemoteDevCheckNdef";
    v35 = 1024;
    v36 = 6626;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", v33, 0x12u);
  }

  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *v33 = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevCheckNdef", &unk_297FE9C47, v33, 2u);
  }

  v13 = 5;
LABEL_37:
  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_297FC8BC4(uint64_t a1, void **a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a2)
  {
    if (!a5)
    {
      v6 = a2[2];
      if (v6)
      {
        *v6 = a3;
        v6[2] = a4;
      }
    }

    sub_297F9FB20(a2, a5);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevWriteNdef(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", &unk_297FE9C47, buf, 2u);
  }

  if (!a2)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevWriteNdef", 6695);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "NFDriverRemoteDevWriteNdef";
      v37 = 1024;
      v38 = 6695;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v20 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_29;
    }

    *buf = 0;
    goto LABEL_28;
  }

  if (!a3)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i No NDEF write data provided", "NFDriverRemoteDevWriteNdef", 6702);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "NFDriverRemoteDevWriteNdef";
      v37 = 1024;
      v38 = 6702;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i No NDEF write data provided", buf, 0x12u);
    }

    v20 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_29;
    }

    *buf = 0;
LABEL_28:
    _os_signpost_emit_with_name_impl(&dword_297F97000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", &unk_297FE9C47, buf, 2u);
LABEL_29:
    v16 = 5;
    goto LABEL_41;
  }

  v9 = sub_297FA02E4(*(a3 + 8), *a3);
  v34 = v9;
  if (v9)
  {
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 0x40000000;
    v32[2] = sub_297FC91A4;
    v32[3] = &unk_29EE88740;
    v32[4] = a1;
    v32[5] = a2;
    v32[6] = v9;
    v33 = a4;
    v10 = sub_297FA1B10(a1, v32);
    if (sub_297F9F694(v10))
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v12(3, "%s:%i phLibNfc_Ndef_Write failed: 0x%04llx", "NFDriverRemoteDevWriteNdef", 6721, *v10);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *v10;
        *buf = 136446722;
        v36 = "NFDriverRemoteDevWriteNdef";
        v37 = 1024;
        v38 = 6721;
        v39 = 2048;
        v40 = v14;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Ndef_Write failed: 0x%04llx", buf, 0x1Cu);
      }

      v15 = *v10;
      v16 = 6;
      if (*v10 > 148)
      {
        if (v15 == 149)
        {
          v16 = 5;
        }

        else if (v15 != 255)
        {
          if (v15 != 152)
          {
LABEL_48:
            v16 = 1;
            goto LABEL_38;
          }

          v16 = 12;
        }
      }

      else
      {
        switch(v15)
        {
          case 31:
            v16 = 15;
            break;
          case 121:
            v16 = 18;
            break;
          case 148:
            break;
          default:
            goto LABEL_48;
        }
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_38:
    v28 = NFSharedSignpostLog();
    if (os_signpost_enabled(v28))
    {
      v29 = *v10;
      *buf = 134349056;
      v36 = v29;
      _os_signpost_emit_with_name_impl(&dword_297F97000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", " mutexStatus=%{public, signpost.description:attribute}llu ", buf, 0xCu);
    }

    sub_297F9FBDC(v10);
    sub_297FA0714(&v34);
    goto LABEL_41;
  }

  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDevWriteNdef", 6710);
  }

  dispatch_get_specific(*v24);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v36 = "NFDriverRemoteDevWriteNdef";
    v37 = 1024;
    v38 = 6710;
    _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
  }

  v27 = NFSharedSignpostLog();
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", &unk_297FE9C47, buf, 2u);
  }

  v16 = 3;
LABEL_41:
  v30 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_297FC91D8(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevFormatNdef(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2800000000;
  v18 = 0;
  v19 = 0;
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v18 = v3;
    LODWORD(v19) = v4;
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 0x40000000;
    v16[2] = sub_297FC94A8;
    v16[3] = &unk_29EE88768;
    v16[4] = v17;
    v16[5] = a1;
    v16[6] = a2;
    v9 = sub_297FA1B10(a1, v16);
    if (sub_297F9F694(v9))
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_FormatNdef failed: 0x%04llx", "NFDriverRemoteDevFormatNdef", 6777, *v9);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *v9;
        *buf = 136446722;
        v21 = "NFDriverRemoteDevFormatNdef";
        v22 = 1024;
        v23 = 6777;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_FormatNdef failed: 0x%04llx", buf, 0x1Cu);
      }

      if (*v9 == 121)
      {
        v8 = 18;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_297F9FBDC(v9);
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v6(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevFormatNdef", 6765);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "NFDriverRemoteDevFormatNdef";
      v22 = 1024;
      v23 = 6765;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v8 = 5;
  }

  _Block_object_dispose(v17, 8);
  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_297FC94EC(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevWriteLockNdef(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = sub_297FC9798;
    v14[3] = &unk_29EE88788;
    v14[4] = a1;
    v14[5] = a2;
    v2 = sub_297FA1B10(a1, v14);
    if (sub_297F9F694(v2))
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", "NFDriverRemoteDevWriteLockNdef", 6812, *v2);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *v2;
        *buf = 136446722;
        v16 = "NFDriverRemoteDevWriteLockNdef";
        v17 = 1024;
        v18 = 6812;
        v19 = 2048;
        v20 = v6;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", buf, 0x1Cu);
      }

      v7 = *v2;
      if (*v2 == 121)
      {
        v8 = 18;
      }

      else if (v7 == 150)
      {
        v8 = 6;
      }

      else if (v7 == 152)
      {
        v8 = 12;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_297F9FBDC(v2);
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevWriteLockNdef", 6804);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = "NFDriverRemoteDevWriteLockNdef";
      v17 = 1024;
      v18 = 6804;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v8 = 5;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_297FC97C0(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevCheckPresence(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = sub_297FC9A48;
    v13[3] = &unk_29EE887A8;
    v13[4] = a1;
    v13[5] = a2;
    v2 = sub_297FA1B10(a1, v13);
    if (sub_297F9F694(v2))
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", "NFDriverRemoteDevCheckPresence", 6853, *v2);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *v2;
        *buf = 136446722;
        v15 = "NFDriverRemoteDevCheckPresence";
        v16 = 1024;
        v17 = 6853;
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", buf, 0x1Cu);
      }

      if (*v2 == 121)
      {
        v7 = 18;
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = 0;
    }

    sub_297F9FBDC(v2);
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevCheckPresence", 6845);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "NFDriverRemoteDevCheckPresence";
      v16 = 1024;
      v17 = 6845;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v7 = 5;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_297FC9A6C(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevReadNdef(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
  }

  if (!a2)
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevReadNdef", 6884);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v40 = "NFDriverRemoteDevReadNdef";
      v41 = 1024;
      v42 = 6884;
      _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v18 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_27;
    }

    *buf = 0;
    goto LABEL_26;
  }

  if (!a3 || (v9 = a3[1]) == 0)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Invalid buffer", "NFDriverRemoteDevReadNdef", 6890);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v40 = "NFDriverRemoteDevReadNdef";
      v41 = 1024;
      v42 = 6890;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid buffer", buf, 0x12u);
    }

    v18 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_27;
    }

    *buf = 0;
LABEL_26:
    _os_signpost_emit_with_name_impl(&dword_297F97000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
LABEL_27:
    v14 = 5;
    goto LABEL_28;
  }

  if (v9 > 0x8000)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i Requested read size is over the limit", "NFDriverRemoteDevReadNdef", 6894);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v40 = "NFDriverRemoteDevReadNdef";
      v41 = 1024;
      v42 = 6894;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Requested read size is over the limit", buf, 0x12u);
    }

    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_297F97000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
    }

    v14 = 15;
    goto LABEL_28;
  }

  v24 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (v24)
  {
    v25 = v24;
    *v24 = *a3;
    v24[2] = a3[1];
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 0x40000000;
    v38[2] = sub_297FCA15C;
    v38[3] = &unk_29EE887C8;
    v38[4] = a1;
    v38[5] = a2;
    v38[6] = v24;
    v26 = sub_297FA1B10(a1, v38);
    if (sub_297F9F694(v26))
    {
      v27 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v28(3, "%s:%i phLibNfc_Ndef_Read failed: 0x%04llx", "NFDriverRemoteDevReadNdef", 6916, *v26);
      }

      dispatch_get_specific(*v27);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *v26;
        *buf = 136446722;
        v40 = "NFDriverRemoteDevReadNdef";
        v41 = 1024;
        v42 = 6916;
        v43 = 2048;
        v44 = v30;
        _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Ndef_Read failed: 0x%04llx", buf, 0x1Cu);
      }

      v31 = *v26;
      if (*v26 > 151)
      {
        v14 = 12;
        if (v31 == 152 || v31 == 255)
        {
          goto LABEL_48;
        }

        if (v31 == 157)
        {
          v14 = 0;
          *a4 = 0;
          goto LABEL_48;
        }
      }

      else
      {
        if (v31 == 121)
        {
          v14 = 18;
          goto LABEL_48;
        }

        if (v31 == 148)
        {
          v14 = 6;
          goto LABEL_48;
        }

        if (v31 == 149)
        {
          v14 = 5;
LABEL_48:
          v36 = NFSharedSignpostLog();
          if (os_signpost_enabled(v36))
          {
            v37 = *v26;
            *buf = 134349056;
            v40 = v37;
            _os_signpost_emit_with_name_impl(&dword_297F97000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", " mutexStatus=%{public, signpost.description:attribute}llu ", buf, 0xCu);
          }

          sub_297F9FBDC(v26);
          free(v25);
          goto LABEL_28;
        }
      }

      v14 = 1;
      goto LABEL_48;
    }

    v14 = 0;
    *a4 = v25[2];
    goto LABEL_48;
  }

  v32 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v33 = NFLogGetLogger();
  if (v33)
  {
    v33(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDevReadNdef", 6901);
  }

  dispatch_get_specific(*v32);
  v34 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v40 = "NFDriverRemoteDevReadNdef";
    v41 = 1024;
    v42 = 6901;
    _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
  }

  v35 = NFSharedSignpostLog();
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
  }

  v14 = 3;
LABEL_28:
  v22 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_297FCA15C(void *a1, uint64_t a2)
{
  sub_297F9F5F4(a2, 5.0);
  v4 = a1[5];
  v5 = *(*(a1[4] + 24) + 576);
  v6 = a1[6];

  return MEMORY[0x2A1C6E4F8](v5, v4, v6, 1, sub_297FCA1C4, a2);
}

void sub_297FCA1C4(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

BOOL NFDriverRemoteDevSend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (!v8)
  {
LABEL_30:
    v21 = 0;
    goto LABEL_31;
  }

  v9 = v8;
  *v8 = a3;
  *(v8 + 2) = a4;
  if (!a2)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevSend", 6969);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136446466;
      *&v41[4] = "NFDriverRemoteDevSend";
      *&v41[12] = 1024;
      *&v41[14] = 6969;
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", v41, 0x12u);
    }

    free(v9);
    goto LABEL_30;
  }

  if ((*(*(a1 + 24) + 584) & 0x10) != 0)
  {
    v30 = a1;
    v31 = v8;
    v42 = 0u;
    memset(v41, 0, sizeof(v41));
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v34 = "NFDriverRemoteDevSend";
      v35 = 1024;
      v36 = 6976;
      v37 = 2082;
      v38 = "[HCE C-APDU>]";
      v39 = 2048;
      v40 = a4;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (v11)
    {
      v11(6, "%s:%i %s %lu bytes :", "NFDriverRemoteDevSend", 6976, "[HCE C-APDU>]", a4);
    }

    if (a4)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v15 = &v41[__sprintf_chk(v41, 0, 0x30uLL, "%04lX: ", v13)];
        do
        {
          v16 = *(a3 + v13++);
          v17 = sprintf(v15, "0x%02X ", v16);
          if (v14 > 6)
          {
            break;
          }

          v15 += v17;
          ++v14;
        }

        while (v13 < a4);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v34 = v41;
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if (v11)
        {
          v11(6, "%s", v41);
        }
      }

      while (v13 < a4);
    }

    a1 = v30;
    v9 = v31;
  }

  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 0x40000000;
  v32[2] = sub_297FCA690;
  v32[3] = &unk_29EE887E8;
  v32[4] = a1;
  v32[5] = a2;
  v32[6] = v9;
  v19 = sub_297FA1B10(a1, v32);
  v20 = sub_297F9F694(v19);
  v21 = v20 == 0;
  if (v20)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i phLibNfc_RemoteDev_Send failed 0x%04llx", "NFDriverRemoteDevSend", 6984, *v19);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *v19;
      *v41 = 136446722;
      *&v41[4] = "NFDriverRemoteDevSend";
      *&v41[12] = 1024;
      *&v41[14] = 6984;
      *&v41[18] = 2048;
      *&v41[20] = v24;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Send failed 0x%04llx", v41, 0x1Cu);
    }
  }

  sub_297F9FBDC(v19);
  free(v9);
LABEL_31:
  v28 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_297FCA6BC(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevReceive(uint64_t a1, uint64_t a2, int *a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_calloc(0x10000uLL, 1uLL, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2800000000;
    v43 = v6;
    v44 = 0x10000;
    if (!a2)
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevReceive", 7037);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverRemoteDevReceive";
        *&buf[12] = 1024;
        *&buf[14] = 7037;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
      }

      free(v7);
      if (a3)
      {
        v14 = 0;
        *a3 = 5;
LABEL_52:
        _Block_object_dispose(&v40, 8);
        goto LABEL_53;
      }

LABEL_51:
      v14 = 0;
      goto LABEL_52;
    }

    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 0x40000000;
    v39[2] = sub_297FCACD4;
    v39[3] = &unk_29EE88810;
    v39[4] = &v40;
    v39[5] = a1;
    v39[6] = a2;
    v8 = sub_297FA1B10(a1, v39);
    v9 = sub_297F9F694(v8);
    if (!v9)
    {
      v18 = v41[3];
      v19 = *(v41 + 8);
      v14 = NFDataCreateWithBytesNoCopy();
      if ((*(*(a1 + 24) + 584) & 0x10) != 0)
      {
        v54 = 0u;
        memset(buf, 0, sizeof(buf));
        v20 = *(v41 + 8);
        v21 = v41[3];
        v22 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v23 = NFLogGetLogger();
        dispatch_get_specific(*v22);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(v41 + 8);
          *v45 = 136315906;
          v46 = "NFDriverRemoteDevReceive";
          v47 = 1024;
          v48 = 7066;
          v49 = 2082;
          v50 = "[HCE R-APDU<]";
          v51 = 2048;
          v52 = v25;
          _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v45, 0x26u);
        }

        v38 = v8;
        if (v23)
        {
          v23(6, "%s:%i %s %lu bytes :", "NFDriverRemoteDevReceive", 7066, "[HCE R-APDU<]", *(v41 + 8));
        }

        if (v20)
        {
          v26 = 0;
          do
          {
            v27 = 0;
            v28 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v26)];
            do
            {
              v29 = *(v21 + v26++);
              v30 = sprintf(v28, "0x%02X ", v29);
              if (v27 > 6)
              {
                break;
              }

              v28 += v30;
              ++v27;
            }

            while (v26 < v20);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v31 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 136446210;
              v46 = buf;
              _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s", v45, 0xCu);
            }

            if (v23)
            {
              v23(6, "%s", buf);
            }
          }

          while (v26 < v20);
        }

        v8 = v38;
      }

      if (a3)
      {
        *a3 = 0;
      }

      v8[2] = 0;
      sub_297F9FBDC(v8);
      if (v14)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (v9 == 146 || v9 == 56)
    {
      if (!a3)
      {
LABEL_49:
        v8[2] = 0;
        sub_297F9FBDC(v8);
LABEL_50:
        free(v7);
        goto LABEL_51;
      }

      v10 = 6;
    }

    else
    {
      v32 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v33(3, "%s:%i phLibNfc_RemoteDev_Receive failed 0x%04llx", "NFDriverRemoteDevReceive", 7055, *v8);
      }

      dispatch_get_specific(*v32);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *v8;
        *buf = 136446722;
        *&buf[4] = "NFDriverRemoteDevReceive";
        *&buf[12] = 1024;
        *&buf[14] = 7055;
        *&buf[18] = 2048;
        *&buf[20] = v35;
        _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Receive failed 0x%04llx", buf, 0x1Cu);
      }

      if (!a3)
      {
        goto LABEL_49;
      }

      if (*v8 == 7)
      {
        v10 = 21;
      }

      else
      {
        v10 = 1;
      }
    }

    *a3 = v10;
    goto LABEL_49;
  }

  v11 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v12 = NFLogGetLogger();
  if (v12)
  {
    v12(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDevReceive", 7027);
  }

  dispatch_get_specific(*v11);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverRemoteDevReceive";
    *&buf[12] = 1024;
    *&buf[14] = 7027;
    _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
  }

  v14 = 0;
  if (a3)
  {
    *a3 = 3;
  }

LABEL_53:
  v36 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_297FCACD4(void *a1, uint64_t a2)
{
  *(a2 + 16) = *(a1[4] + 8) + 24;
  sub_297F9F5F4(a2, 80.0);
  v3 = a1[6];
  v4 = *(*(a1[5] + 24) + 576);

  return phLibNfc_RemoteDev_Receive();
}

void sub_297FCAD48(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  if (a3 && !a4)
  {
    v6 = a2[2];
    v7 = *(a3 + 8);
    v8 = !v7 || v6 == 0;
    if (!v8 && *v6)
    {
      v9 = *(v6 + 2);
      if (v9 >= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = v9;
      }

      memcpy(*v6, *a3, v10);
      *(v6 + 2) = v10;
    }
  }

  sub_297F9FB20(a2, a4);

  sub_297F9FBDC(a2);
}

void NFDriverRemoteDevReceiveAsync(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevReceiveAsync", 7143);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverRemoteDevReceiveAsync";
      *&buf[12] = 1024;
      *&buf[14] = 7143;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    a3[2](a3, 5, 0);
    goto LABEL_11;
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800403DA8C3A5uLL);
  if (v6)
  {
    v7 = v6;
    v6[1] = _Block_copy(a3);
    v8 = *(a1 + 24);
    *v7 = (*(v8 + 584) & 0x10) != 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v18 = 0;
    v9 = *(v8 + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FCB038;
    block[3] = &unk_29EE88838;
    block[4] = buf;
    block[5] = a1;
    block[6] = a2;
    block[7] = v7;
    dispatch_async_and_wait(v9, block);
    if (*(*&buf[8] + 24) != 13)
    {
      a3[2](a3, 1, 0);
      _Block_release(v7[1]);
      free(v7);
    }

    _Block_object_dispose(buf, 8);
LABEL_11:
    v13 = *MEMORY[0x29EDCA608];
    return;
  }

  v14 = a3[2];
  v15 = *MEMORY[0x29EDCA608];

  v14(a3, 3, 0);
}

uint64_t sub_297FCB038(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[5] + 24) + 576);
  v4 = a1[7];
  result = phLibNfc_RemoteDev_Receive();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_297FCB088(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v43 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_Callback_NFDriverRemoteDevReceiveAsync", 7088, "ctx");
    }

    dispatch_get_specific(*v30);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136446722;
      *&v41[4] = "_Callback_NFDriverRemoteDevReceiveAsync";
      *&v41[12] = 1024;
      *&v41[14] = 7088;
      *&v41[18] = 2080;
      *&v41[20] = "ctx";
      _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", v41, 0x1Cu);
    }

    abort();
  }

  v6 = 0;
  v7 = 6;
  if (a4 != 146 && a4 != 56)
  {
    if (a4)
    {
      v22 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(3, "%s:%i phLibNfc_RemoteDev_Receive failed 0x%04hx", "_Callback_NFDriverRemoteDevReceiveAsync", 7122, a4);
      }

      dispatch_get_specific(*v22);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v41 = 136446722;
        *&v41[4] = "_Callback_NFDriverRemoteDevReceiveAsync";
        *&v41[12] = 1024;
        *&v41[14] = 7122;
        *&v41[18] = 1024;
        *&v41[20] = a4;
        _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Receive failed 0x%04hx", v41, 0x18u);
      }

      v6 = 0;
      if (a4 == 7)
      {
        v7 = 21;
      }

      else
      {
        v7 = 1;
      }
    }

    else if (a3 && *(a3 + 2))
    {
      v8 = *a3;
      v9 = NFDataCreateWithBytes();
      v6 = v9;
      if (*a2 == 1)
      {
        v42 = 0u;
        memset(v41, 0, sizeof(v41));
        v10 = *v9;
        v11 = v9[1];
        v12 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v13 = NFLogGetLogger();
        dispatch_get_specific(*v12);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v6[1];
          *buf = 136315906;
          v34 = "_Callback_NFDriverRemoteDevReceiveAsync";
          v35 = 1024;
          v36 = 7109;
          v37 = 2082;
          v38 = "[HCE R-APDU<]";
          v39 = 2048;
          v40 = v15;
          _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
        }

        if (v13)
        {
          v13(6, "%s:%i %s %lu bytes :", "_Callback_NFDriverRemoteDevReceiveAsync", 7109, "[HCE R-APDU<]", v6[1]);
        }

        if (v11)
        {
          v16 = 0;
          do
          {
            v17 = 0;
            v18 = &v41[__sprintf_chk(v41, 0, 0x30uLL, "%04lX: ", v16)];
            do
            {
              v19 = *(v10 + v16++);
              v20 = sprintf(v18, "0x%02X ", v19);
              if (v17 > 6)
              {
                break;
              }

              v18 += v20;
              ++v17;
            }

            while (v16 < v11);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v21 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v34 = v41;
              _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }

            if (v13)
            {
              v13(6, "%s", v41);
            }
          }

          while (v16 < v11);
        }
      }

      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }
  }

  v25 = *(a2 + 1);
  if (v25)
  {
    (*(v25 + 16))(v25, v7, v6);
    _Block_release(*(a2 + 1));
  }

  else
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(4, "%s:%i Completion pointer was null", "_Callback_NFDriverRemoteDevReceiveAsync", 7132);
    }

    dispatch_get_specific(*v26);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136446466;
      *&v41[4] = "_Callback_NFDriverRemoteDevReceiveAsync";
      *&v41[12] = 1024;
      *&v41[14] = 7132;
      _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Completion pointer was null", v41, 0x12u);
    }

    if (v6)
    {
      NFDataRelease();
    }
  }

  free(a2);
  v29 = *MEMORY[0x29EDCA608];
}

uint64_t NFDriverRemoteDevGetMiFareInfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevGetMiFareInfo", 7448);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v32 = "NFDriverRemoteDevGetMiFareInfo";
    v33 = 1024;
    v34 = 7448;
    v18 = "%{public}s:%i No remote tag handle provided";
    goto LABEL_21;
  }

  if (!a3)
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Missing input tagInfo", "NFDriverRemoteDevGetMiFareInfo", 7451);
    }

    dispatch_get_specific(*v19);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v32 = "NFDriverRemoteDevGetMiFareInfo";
    v33 = 1024;
    v34 = 7451;
    v18 = "%{public}s:%i Missing input tagInfo";
LABEL_21:
    _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
LABEL_22:
    v14 = 5;
    goto LABEL_37;
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
  if (!v6)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Allocation failure", "NFDriverRemoteDevGetMiFareInfo", 7457);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v32 = "NFDriverRemoteDevGetMiFareInfo";
      v33 = 1024;
      v34 = 7457;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    goto LABEL_32;
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
  v7[1] = v8;
  if (!v8)
  {
    v24 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v25(3, "%s:%i Allocation failure", "NFDriverRemoteDevGetMiFareInfo", 7463);
    }

    dispatch_get_specific(*v24);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v32 = "NFDriverRemoteDevGetMiFareInfo";
      v33 = 1024;
      v34 = 7463;
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    free(v7);
LABEL_32:
    v14 = 3;
    goto LABEL_37;
  }

  *a3 = 0;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 0x40000000;
  v30[2] = sub_297FCBA28;
  v30[3] = &unk_29EE88858;
  v30[4] = a3;
  v30[5] = a1;
  v30[6] = a2;
  v30[7] = v7;
  v9 = sub_297FA1B10(a1, v30);
  if (sub_297F9F694(v9))
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i phLibNfc_RemoteDev_Receive failed 0x%04llx", "NFDriverRemoteDevGetMiFareInfo", 7477, *v9);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *v9;
      *buf = 136446722;
      v32 = "NFDriverRemoteDevGetMiFareInfo";
      v33 = 1024;
      v34 = 7477;
      v35 = 2048;
      v36 = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Receive failed 0x%04llx", buf, 0x1Cu);
    }

    if (*v9 == 121)
    {
      v14 = 18;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v9[2] = 0;
  sub_297F9FBDC(v9);
  v27 = v7[1];
  if (v27)
  {
    free(v27);
  }

  free(v7);
LABEL_37:
  v28 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_297FCBA28(void *a1, uint64_t a2)
{
  *(a2 + 16) = a1[4];
  sub_297F9F5F4(a2, 80.0);
  v4 = a1[6];
  v5 = *(*(a1[5] + 24) + 576);
  v6 = a1[7];

  return MEMORY[0x2A1C6E3F8](v5, v4, v6, sub_297FCBA98, a2);
}

void sub_297FCBA98(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    if (!a5)
    {
      v7 = a2[2];
      if (v7)
      {
        if (*a4 == 16 || *a4 == 11)
        {
          v9 = *(a4 + 8);
          if (v9)
          {
            v10 = *v9;
            if (*v9 > 39)
            {
              if ((v10 - 40) < 0xF)
              {
                v11 = 4;
                goto LABEL_19;
              }

              if (v10 == 55)
              {
                v11 = 5;
                goto LABEL_19;
              }

              if (v10 == 56)
              {
                *v7 = 0;
                v13 = MEMORY[0x29EDC9730];
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  Logger(6, "%s:%i Unclassified MIFARE (%d) found", "_Callback_NFDriverRemoteDevGetMiFareInfo", 7431, *v9);
                }

                dispatch_get_specific(*v13);
                v15 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = *v9;
                  *buf = 136446722;
                  v18 = "_Callback_NFDriverRemoteDevGetMiFareInfo";
                  v19 = 1024;
                  v20 = 7431;
                  v21 = 1024;
                  v22 = v16;
                  _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Unclassified MIFARE (%d) found", buf, 0x18u);
                }
              }
            }

            else
            {
              if ((v10 - 11) < 0x1D)
              {
                v11 = 3;
LABEL_19:
                *v7 = v11;
                goto LABEL_20;
              }

              if ((v10 - 5) < 6)
              {
                v11 = 2;
                goto LABEL_19;
              }

              if ((v10 - 1) < 4)
              {
                v11 = 1;
                goto LABEL_19;
              }
            }
          }
        }
      }
    }
  }

LABEL_20:
  sub_297F9FB20(a2, a5);
  sub_297F9FBDC(a2);
  v12 = *MEMORY[0x29EDCA608];
}

BOOL NFDriverGPIOSetPMUStandbyPowerEnabled(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 24) + 576);
  v2 = phTmlNfc_IoCtl();
  if (v2)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to set GPIO : %u", "NFDriverGPIOSetPMUStandbyPowerEnabled", 7505, v2);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverGPIOSetPMUStandbyPowerEnabled";
      v10 = 1024;
      v11 = 7505;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set GPIO : %u", buf, 0x18u);
    }
  }

  result = v2 == 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverSetSecureElementPower(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSetSecureElementPower", 7519, "driver");
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "NFDriverSetSecureElementPower";
      v14 = 1024;
      v15 = 7519;
      v16 = 2080;
      v17 = "driver";
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  if (*(*(a1 + 24) + 768) == 1)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v3 = NFLogGetLogger();
    if (v3)
    {
      v3(3, "%s:%i Cannot power cycle, request denied", "NFDriverSetSecureElementPower", 7522);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "NFDriverSetSecureElementPower";
      v14 = 1024;
      v15 = 7522;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Cannot power cycle, request denied", buf, 0x12u);
    }

    v5 = *MEMORY[0x29EDCA608];
    return 0;
  }

  else
  {
    v7 = sub_297FCBF9C(a1, a2);
    v8 = *MEMORY[0x29EDCA608];

    return sub_297FABE14(v7);
  }
}

uint64_t sub_297FCBF9C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = *(*(a1 + 24) + 536);
      goto LABEL_14;
    }

    if (a2 == 4)
    {
      result = *(*(a1 + 24) + 544);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_12:
    result = 0;
    goto LABEL_14;
  }

  if (a2 != 1)
  {
LABEL_8:
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unknown se ID: %d", "_NFDriverGetSecureElement", 3378, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_NFDriverGetSecureElement";
      v10 = 1024;
      v11 = 3378;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown se ID: %d", buf, 0x18u);
    }

    goto LABEL_12;
  }

  result = *(*(a1 + 24) + 528);
LABEL_14:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverSecureElementGetOSInfo(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1 || !a3)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementGetOSInfo", 7531, "driver && info");
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "NFDriverSecureElementGetOSInfo";
      v12 = 1024;
      v13 = 7531;
      v14 = 2080;
      v15 = "driver && info";
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v3 = sub_297FCBF9C(a1, a2);
  if (v3)
  {
    v4 = *MEMORY[0x29EDCA608];

    return sub_297FABF70(v3);
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t NFDriverSecureElementGetOSMode(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1 || !a3)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementGetOSMode", 7541, "driver && info");
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "NFDriverSecureElementGetOSMode";
      v12 = 1024;
      v13 = 7541;
      v14 = 2080;
      v15 = "driver && info";
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v3 = sub_297FCBF9C(a1, a2);
  if (v3)
  {
    v4 = *MEMORY[0x29EDCA608];

    return sub_297FAC0CC(v3);
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t NFDriverGetOSUpdateLog(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverGetOSUpdateLog", 7552, "driver");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverGetOSUpdateLog";
      v10 = 1024;
      v11 = 7552;
      v12 = 2080;
      v13 = "driver";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v2 = sub_297FCBF9C(a1, a2);
  v3 = *MEMORY[0x29EDCA608];

  return sub_297FAC228(v2);
}

uint64_t NFDriverSecureElementGetAttackCounterLog(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementGetAttackCounterLog", 7559, "driver");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElementGetAttackCounterLog";
      v10 = 1024;
      v11 = 7559;
      v12 = 2080;
      v13 = "driver";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v2 = sub_297FCBF9C(a1, a2);
  v3 = *MEMORY[0x29EDCA608];

  return sub_297FAC384(v2);
}

uint64_t NFDriverSecureElementGetPresenceOfAttackLog(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementGetPresenceOfAttackLog", 7566, "driver");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElementGetPresenceOfAttackLog";
      v10 = 1024;
      v11 = 7566;
      v12 = 2080;
      v13 = "driver";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v2 = sub_297FCBF9C(a1, a2);
  v3 = *MEMORY[0x29EDCA608];

  return sub_297FAC4E0(v2);
}

uint64_t NFDriverGetUnlockRequestInfo(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverGetUnlockRequestInfo", 7573, "driver");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverGetUnlockRequestInfo";
      v10 = 1024;
      v11 = 7573;
      v12 = 2080;
      v13 = "driver";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v2 = sub_297FCBF9C(a1, a2);
  v3 = *MEMORY[0x29EDCA608];

  return sub_297FAC63C(v2);
}

BOOL NFDriverGetSecureElementInfo(uint64_t a1, int a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a1 || !a3)
  {
    v24 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverGetSecureElementInfo", 7580, "driver && info");
    }

    dispatch_get_specific(*v24);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "NFDriverGetSecureElementInfo";
      v29 = 1024;
      v30 = 7580;
      v31 = 2080;
      v32 = "driver && info";
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  if (a2 != 1)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(3, "%s:%i SE %d does not support wired mode", "NFDriverGetSecureElementInfo", 7592, a2);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v28 = "NFDriverGetSecureElementInfo";
    v29 = 1024;
    v30 = 7592;
    v31 = 1024;
    LODWORD(v32) = a2;
    v11 = "%{public}s:%i SE %d does not support wired mode";
LABEL_13:
    v12 = v9;
LABEL_14:
    v13 = 24;
LABEL_19:
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    result = 0;
    goto LABEL_27;
  }

  if (*(a1 + 44) != 1)
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i eSE not in wired mode", "NFDriverGetSecureElementInfo", 7586);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v28 = "NFDriverGetSecureElementInfo";
      v29 = 1024;
      v30 = 7586;
      v11 = "%{public}s:%i eSE not in wired mode";
      v12 = v16;
      v13 = 18;
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  v5 = *(*(a1 + 24) + 528);
  if (!v5)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i No SE of type %d.", "NFDriverGetSecureElementInfo", 7598, 1);
    }

    dispatch_get_specific(*v17);
    v9 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_27;
    }

    *buf = 136446722;
    v28 = "NFDriverGetSecureElementInfo";
    v29 = 1024;
    v30 = 7598;
    v31 = 1024;
    LODWORD(v32) = 1;
    v11 = "%{public}s:%i No SE of type %d.";
    goto LABEL_13;
  }

  bzero(a3, 0x4F0uLL);
  if (!sub_297FAC0CC(v5))
  {
LABEL_26:
    result = 1;
    goto LABEL_27;
  }

  v6 = *(a3 + 301);
  if ((v6 - 2) < 2)
  {
    sub_297FABF70(v5);
    goto LABEL_26;
  }

  if (v6 == 1)
  {
    sub_297FAC798(v5);
    sub_297FA25B8(v5, a3);
    goto LABEL_26;
  }

  v20 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(3, "%s:%i Unknown OS mode %d", "NFDriverGetSecureElementInfo", 7625, *(a3 + 301));
  }

  dispatch_get_specific(*v20);
  v22 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v23 = *(a3 + 301);
    *buf = 136446722;
    v28 = "NFDriverGetSecureElementInfo";
    v29 = 1024;
    v30 = 7625;
    v31 = 1024;
    LODWORD(v32) = v23;
    v11 = "%{public}s:%i Unknown OS mode %d";
    v12 = v22;
    goto LABEL_14;
  }

LABEL_27:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverCopySMBLog(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Getting SMB log..", "NFDriverCopySMBLog", 10120);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverCopySMBLog";
    *&buf[12] = 1024;
    *&buf[14] = 10120;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Getting SMB log..", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = sub_297FD4040;
  v12[3] = &unk_29EE889A8;
  v12[4] = buf;
  v12[5] = a1;
  v5 = sub_297FA1B10(a1, v12);
  v6 = sub_297F9F694(v5);
  sub_297F9FBDC(v5);
  if (v6)
  {
    if (v6 != 51)
    {
      dispatch_get_specific(*v2);
      v7 = NFLogGetLogger();
      if (v7)
      {
        v7(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverCopySMBLog", 10138, v6);
      }

      dispatch_get_specific(*v2);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 136446722;
        v14 = "NFDriverCopySMBLog";
        v15 = 1024;
        v16 = 10138;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", v13, 0x1Cu);
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t NFDriverSetReaderModeRFGain(uint64_t a1, const void *a2, unsigned int a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (a3 - 0xFFFF >= 0xFFFF0002)
    {
      v6 = a3 + 5;
      v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
      if (v7)
      {
        v8 = v7;
        v24 = a1;
        *v7 = 3488;
        v7[2] = a3 + 2;
        *(v7 + 3) = 17460;
        memcpy(v7 + 5, a2, a3);
        v33 = 0u;
        memset(v32, 0, sizeof(v32));
        v9 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        dispatch_get_specific(*v9);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "NFDriverSetReaderModeRFGain";
          v26 = 1024;
          v27 = 7875;
          v28 = 2082;
          v29 = "REGISTER UPDATE";
          v30 = 2048;
          v31 = v6;
          _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
        }

        if (Logger)
        {
          Logger(5, "%s:%i %s %lu bytes :", "NFDriverSetReaderModeRFGain", 7875, "REGISTER UPDATE", v6);
        }

        v12 = 0;
        do
        {
          v13 = 0;
          v14 = &v32[__sprintf_chk(v32, 0, 0x30uLL, "%04lX: ", v12)];
          do
          {
            v15 = v8[v12++];
            v16 = sprintf(v14, "0x%02X ", v15);
            if (v13 > 6)
            {
              break;
            }

            v14 += v16;
            ++v13;
          }

          while (v12 < v6);
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = v32;
            _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }

          if (Logger)
          {
            Logger(5, "%s", v32);
          }
        }

        while (v12 < v6);
        v18 = sub_297FA02E4(v6, v8);
        *buf = v18;
        if (v18)
        {
          v19 = sub_297FA0380(v24, 37025, v18, 0);
          if (sub_297F9F694(v19))
          {
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v20 = NFLogGetLogger();
            if (v20)
            {
              v20(3, "%s:%i Failed to get RF settings.", "NFDriverSetReaderModeRFGain", 7884);
            }

            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v21 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *v32 = 136446466;
              *&v32[4] = "NFDriverSetReaderModeRFGain";
              *&v32[12] = 1024;
              *&v32[14] = 7884;
              _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings.", v32, 0x12u);
            }
          }

          sub_297F9FBDC(v19);
          sub_297FA0714(buf);
          free(v8);
        }
      }
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL NFDriverConfigureReaderModeRFForTransitPartner(uint64_t a1, char a2, int a3)
{
  if (a3 == 1)
  {

    return sub_297FCD2EC(a1, a2);
  }

  else
  {
    v5 = 0;
    if (a3 == 3 && (a2 & 1) == 0)
    {
      sub_297FCD2EC(a1, 0);
      return 1;
    }

    return v5;
  }
}

BOOL sub_297FCD2EC(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = NFGetProductType();
  if (v4 > 9 || ((1 << v4) & 0x206) == 0)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Device does not require RF settings changes", "_NFDriverConfigureReaderModeRFForMercurySigned", 8080);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136446466;
      *&v21[4] = "_NFDriverConfigureReaderModeRFForMercurySigned";
      *&v21[12] = 1024;
      *&v21[14] = 8080;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not require RF settings changes", v21, 0x12u);
    }

    goto LABEL_20;
  }

  v16 = 16450;
  if (a2)
  {
    *&v21[15] = -2026166031;
    *v21 = xmmword_297FDB683;
    if ((sub_297FD8F44(a1, &v16, v21) & 1) == 0)
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v6 = NFLogGetLogger();
      if (v6)
      {
        v6(4, "%s:%i NFDriverConfigureReaderModeRFForMercurySigned: Unable to apply Dynamic RF settings. Trying to reset back to defaults", "_NFDriverConfigureReaderModeRFForMercurySigned", 8096);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v18 = "_NFDriverConfigureReaderModeRFForMercurySigned";
        v19 = 1024;
        v20 = 8096;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i NFDriverConfigureReaderModeRFForMercurySigned: Unable to apply Dynamic RF settings. Trying to reset back to defaults", buf, 0x12u);
      }

      sub_297FCD2EC(a1, 0);
      goto LABEL_15;
    }

LABEL_20:
    result = 1;
    goto LABEL_21;
  }

  *&v21[15] = 2041531977;
  *v21 = xmmword_297FDB696;
  if (sub_297FD8F44(a1, &v16, v21))
  {
    goto LABEL_20;
  }

  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(4, "%s:%i NFDriverConfigureReaderModeRFForMercurySigned: Unable to apply Default RF settings", "_NFDriverConfigureReaderModeRFForMercurySigned", 8111);
  }

  dispatch_get_specific(*v8);
  v10 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v18 = "_NFDriverConfigureReaderModeRFForMercurySigned";
    v19 = 1024;
    v20 = 8111;
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i NFDriverConfigureReaderModeRFForMercurySigned: Unable to apply Default RF settings", buf, 0x12u);
LABEL_15:
    result = 0;
  }

LABEL_21:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverEnableAutomaticRFOverride(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0);
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (!v4)
  {
    if (Logger)
    {
      Logger(4, "%s:%i Failed to stop discovery", "NFDriverEnableAutomaticRFOverride", 8139);
    }

    dispatch_get_specific(*v5);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v17 = "NFDriverEnableAutomaticRFOverride";
    v18 = 1024;
    v19 = 8139;
    v12 = "%{public}s:%i Failed to stop discovery";
    goto LABEL_18;
  }

  if (Logger)
  {
    Logger(6, "%s:%i enable: %d", "NFDriverEnableAutomaticRFOverride", 8146, a2);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "NFDriverEnableAutomaticRFOverride";
    v18 = 1024;
    v19 = 8146;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable: %d", buf, 0x18u);
  }

  v15 = a2;
  v8 = sub_297FCD864(a1, 41241, &v15, 1u);
  if (*(a1 + 62))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!sub_297F9D8BC(a1, *(a1 + 32), *(a1 + 36), *(a1 + 60), 0, *(a1 + 61), v9))
  {
    dispatch_get_specific(*v5);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i Failed to update discovery", "NFDriverEnableAutomaticRFOverride", 8152);
    }

    dispatch_get_specific(*v5);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v17 = "NFDriverEnableAutomaticRFOverride";
    v18 = 1024;
    v19 = 8152;
    v12 = "%{public}s:%i Failed to update discovery";
LABEL_18:
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
LABEL_19:
    v8 = 1;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297FCD864(uint64_t a1, int a2, const void *a3, unsigned int a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = sub_297FA02E4(a4 + 3, 0);
  v21 = v8;
  if (v8 && (v9 = v8, *v8))
  {
    **v8 = BYTE1(a2);
    *(*v8 + 1) = a2;
    *(*v8 + 2) = a4;
    memcpy((*v8 + 3), a3, a4);
    v10 = sub_297FA0380(a1, 37025, v9, 0);
    if (sub_297F9F694(v10))
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to set rf property:0x%02x status:0x%08llx", "_NFDriverSetRFProperty", 8299, a2, *v10);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *v10;
        *buf = 136446978;
        v23 = "_NFDriverSetRFProperty";
        v24 = 1024;
        v25 = 8299;
        v26 = 1024;
        v27 = a2;
        v28 = 2048;
        v29 = v14;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set rf property:0x%02x status:0x%08llx", buf, 0x22u);
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    sub_297F9FBDC(v10);
  }

  else
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Memory error trying to update property: 0x%02x", "_NFDriverSetRFProperty", 8282, a2);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "_NFDriverSetRFProperty";
      v24 = 1024;
      v25 = 8282;
      v26 = 1024;
      v27 = a2;
      _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Memory error trying to update property: 0x%02x", buf, 0x18u);
    }

    v15 = 3;
  }

  sub_297FA0714(&v21);
  v19 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t NFDriverISO15693SetDataRate(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v35 = 0;
  v34 = 315650;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v10 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(4, "%s:%i 212kbps not supported?", "NFDriverISO15693SetDataRate", 8195);
        }

        dispatch_get_specific(*v10);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverISO15693SetDataRate";
          *&buf[12] = 1024;
          *&buf[14] = 8195;
          _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i 212kbps not supported?", buf, 0x12u);
        }

        v8 = 3;
        v9 = 68;
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    v8 = 2;
    v9 = 34;
LABEL_19:
    v17 = 0;
    HIBYTE(v34) = v9;
    if (a4 && a4 != 320)
    {
      if (a4 == 160)
      {
        v17 = 1;
      }

      else
      {
        v18 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v19(4, "%s:%i Incorrect T1 %ud, using 320usec!", "NFDriverISO15693SetDataRate", 8208, a4);
        }

        dispatch_get_specific(*v18);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "NFDriverISO15693SetDataRate";
          *&buf[12] = 1024;
          *&buf[14] = 8208;
          *&buf[18] = 1024;
          *&buf[20] = a4;
          _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect T1 %ud, using 320usec!", buf, 0x18u);
        }

        v17 = 0;
      }
    }

    v35 = v17;
    v21 = NFDataCreateWithBytesNoCopy();
    v33 = 0;
    v22 = NFDriverRemoteDeviceIso15693Transceive(a1, a2, v21, &v33, 5.0);
    if (v22)
    {
      v16 = v22;
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Failed to set data rate for NTAG5 %d", "NFDriverISO15693SetDataRate", 8216, v16);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "NFDriverISO15693SetDataRate";
        *&buf[12] = 1024;
        *&buf[14] = 8216;
        *&buf[18] = 1024;
        *&buf[20] = v16;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set data rate for NTAG5 %d", buf, 0x18u);
      }
    }

    else
    {
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FD958C;
      v43 = &unk_29EE88C68;
      v45 = v8;
      v44 = a1;
      v26 = sub_297FA1B10(a1, buf);
      if (sub_297F9F694(v26))
      {
        v27 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v28(4, "%s:%i failed to set NTAG5 local rate: 0x%04llX", "_NFDriverSetISO15693LocalDataRate", 4557, *v26);
        }

        dispatch_get_specific(*v27);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = *v26;
          *v36 = 136446722;
          v37 = "_NFDriverSetISO15693LocalDataRate";
          v38 = 1024;
          v39 = 4557;
          v40 = 2048;
          v41 = v30;
          _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to set NTAG5 local rate: 0x%04llX", v36, 0x1Cu);
        }

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      sub_297F9FBDC(v26);
    }

    goto LABEL_41;
  }

  if (a3 == 1)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    v8 = 1;
    v9 = 17;
    goto LABEL_19;
  }

LABEL_12:
  v13 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Unknown rate %d", "NFDriverISO15693SetDataRate", 8199, a3);
  }

  dispatch_get_specific(*v13);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "NFDriverISO15693SetDataRate";
    *&buf[12] = 1024;
    *&buf[14] = 8199;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown rate %d", buf, 0x18u);
  }

  v16 = 5;
LABEL_41:
  v31 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t NFDriverSetTypeATagDataRate(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v23 = 289;
  v4 = sub_297FA02E4(3u, &v23);
  v22 = v4;
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (Logger)
      {
        Logger(6, "%s:%i setting 424", "NFDriverSetTypeATagDataRate", 8248);
      }

      dispatch_get_specific(*v5);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v26 = "NFDriverSetTypeATagDataRate";
        v27 = 1024;
        v28 = 8248;
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i setting 424", buf, 0x12u);
      }

      v8 = 2;
      goto LABEL_30;
    }

    if (a2 == 4)
    {
      if (Logger)
      {
        Logger(6, "%s:%i setting 848", "NFDriverSetTypeATagDataRate", 8252);
      }

      dispatch_get_specific(*v5);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v26 = "NFDriverSetTypeATagDataRate";
        v27 = 1024;
        v28 = 8252;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i setting 848", buf, 0x12u);
      }

      v8 = 3;
      goto LABEL_30;
    }
  }

  else
  {
    if (a2 == 1)
    {
      if (Logger)
      {
        Logger(6, "%s:%i setting 106", "NFDriverSetTypeATagDataRate", 8240);
      }

      dispatch_get_specific(*v5);
      v12 = NFSharedLogGetLogger();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      v8 = 0;
      if (v13)
      {
        *buf = 136446466;
        v26 = "NFDriverSetTypeATagDataRate";
        v27 = 1024;
        v28 = 8240;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i setting 106", buf, 0x12u);
        v8 = 0;
      }

      goto LABEL_30;
    }

    if (a2 == 2)
    {
      if (Logger)
      {
        Logger(6, "%s:%i setting 212", "NFDriverSetTypeATagDataRate", 8244);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v26 = "NFDriverSetTypeATagDataRate";
        v27 = 1024;
        v28 = 8244;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i setting 212", buf, 0x12u);
      }

      v8 = 1;
LABEL_30:
      *(*v4 + 2) = v8;
      v15 = sub_297FA0380(a1, 36902, v4, 0);
      if (sub_297F9F694(v15))
      {
        dispatch_get_specific(*v5);
        v16 = NFLogGetLogger();
        if (v16)
        {
          v16(3, "%s:%i Failed to set rf property:0x%02x status:0x%08llx", "NFDriverSetTypeATagDataRate", 8263, **v4, *v15);
        }

        dispatch_get_specific(*v5);
        v17 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = **v4;
          v19 = *v15;
          *buf = 136446978;
          v26 = "NFDriverSetTypeATagDataRate";
          v27 = 1024;
          v28 = 8263;
          v29 = 1024;
          v30 = v18;
          v31 = 2048;
          v32 = v19;
          _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set rf property:0x%02x status:0x%08llx", buf, 0x22u);
        }

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      sub_297F9FBDC(v15);
      goto LABEL_38;
    }
  }

  if (Logger)
  {
    Logger(3, "%s:%i Unknown rate %d", "NFDriverSetTypeATagDataRate", 8256, a2);
  }

  dispatch_get_specific(*v5);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v26 = "NFDriverSetTypeATagDataRate";
    v27 = 1024;
    v28 = 8256;
    v29 = 1024;
    v30 = a2;
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown rate %d", buf, 0x18u);
  }

  v11 = 5;
LABEL_38:
  sub_297FA0714(&v22);
  v20 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t NFDriverReadDieID(uint64_t a1, void *a2, _DWORD *a3)
{
  v79 = *MEMORY[0x29EDCA608];
  v6 = sub_297FBA6E8(a1, 0);
  v68[0] = 1;
  v68[1] = HIBYTE(v6);
  v68[2] = v6;
  v67 = 0;
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Reading Die ID ...", "NFDriverReadDieID", 8334);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverReadDieID";
    *&buf[12] = 1024;
    *&buf[14] = 8334;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Reading Die ID ...", buf, 0x12u);
  }

  v9 = sub_297FA02E4(3u, v68);
  v67 = v9;
  v10 = sub_297FA02E4(0x100u, 0);
  v66 = v10;
  if ((*(a1 + 57) & 1) == 0)
  {
    v11 = sub_297FA0380(a1, 2558, 0, v10);
    if (!sub_297F9F694(v11))
    {
      v63 = v11;
      v65 = a2;
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v44 = v10[2];
      v45 = *v10;
      v46 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v47 = NFLogGetLogger();
      dispatch_get_specific(*v46);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v10[2];
        *v69 = 136315906;
        v70 = "NFDriverReadDieID";
        v71 = 1024;
        v72 = 8342;
        v73 = 2082;
        v74 = "Die ID :";
        v75 = 2048;
        v76 = v49;
        _os_log_impl(&dword_297F97000, v48, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v69, 0x26u);
      }

      v62 = a3;
      if (v47)
      {
        v47(6, "%s:%i %s %lu bytes :", "NFDriverReadDieID", 8342, "Die ID :", v10[2]);
      }

      if (v44)
      {
        v50 = 0;
        do
        {
          v51 = 0;
          v52 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v50)];
          do
          {
            v53 = v45[v50++];
            v54 = sprintf(v52, "0x%02X ", v53);
            if (v51 > 6)
            {
              break;
            }

            v52 += v54;
            ++v51;
          }

          while (v50 < v44);
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v55 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 136446210;
            v70 = buf;
            _os_log_impl(&dword_297F97000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s", v69, 0xCu);
          }

          if (v47)
          {
            v47(6, "%s", buf);
          }
        }

        while (v50 < v44);
      }

      v26 = 0;
      if (!v65)
      {
        goto LABEL_71;
      }

      v11 = v63;
      if (v62)
      {
        v56 = v10[2];
        if (v56)
        {
          *v62 = v56;
          v57 = malloc_type_calloc(1uLL, v56, 0x100004077774924uLL);
          *v65 = v57;
          if (v57)
          {
            memcpy(v57, *v10, *v62);
            v26 = 1;
          }

          else
          {
            v26 = 0;
            *v62 = 0;
          }
        }

        else
        {
          v26 = 0;
          *v62 = 0;
          *v65 = 0;
        }
      }

      goto LABEL_41;
    }

LABEL_40:
    v26 = 0;
    goto LABEL_41;
  }

  v11 = sub_297FA0380(a1, 37026, v9, v10);
  if (sub_297F9F694(v11))
  {
    goto LABEL_40;
  }

  v12 = v10[2];
  if (v12 >= 5)
  {
    v63 = v11;
    v78 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = v12 - 4;
    v14 = *v10;
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v10[2] - 4;
      *v69 = 136315906;
      v70 = "NFDriverReadDieID";
      v71 = 1024;
      v72 = 8366;
      v73 = 2082;
      v74 = "Die ID :";
      v75 = 2048;
      v76 = v18;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v69, 0x26u);
    }

    v64 = a2;
    v61 = a3;
    if (v16)
    {
      v16(6, "%s:%i %s %lu bytes :", "NFDriverReadDieID", 8366, "Die ID :", v10[2] - 4);
    }

    v19 = 0;
    v20 = v14 + 4;
    do
    {
      v21 = 0;
      v22 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v19)];
      do
      {
        v23 = v20[v19++];
        v24 = sprintf(v22, "0x%02X ", v23);
        if (v21 > 6)
        {
          break;
        }

        v22 += v24;
        ++v21;
      }

      while (v19 < v13);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 136446210;
        v70 = buf;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", v69, 0xCu);
      }

      if (v16)
      {
        v16(6, "%s", buf);
      }
    }

    while (v19 < v13);
    v26 = 0;
    if (v64 && a3)
    {
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v27 = v10[2] - 4;
      v28 = *v10;
      v29 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v30 = NFLogGetLogger();
      dispatch_get_specific(*v29);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v10[2] - 4;
        *v69 = 136315906;
        v70 = "NFDriverReadDieID";
        v71 = 1024;
        v72 = 8368;
        v73 = 2082;
        v74 = "Die ID :";
        v75 = 2048;
        v76 = v32;
        _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v69, 0x26u);
      }

      if (v30)
      {
        v30(6, "%s:%i %s %lu bytes :", "NFDriverReadDieID", 8368, "Die ID :", v10[2] - 4);
      }

      if (v27)
      {
        v33 = 0;
        v34 = v28 + 4;
        do
        {
          v35 = 0;
          v36 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v33)];
          do
          {
            v37 = v34[v33++];
            v38 = sprintf(v36, "0x%02X ", v37);
            if (v35 > 6)
            {
              break;
            }

            v36 += v38;
            ++v35;
          }

          while (v33 < v27);
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v39 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 136446210;
            v70 = buf;
            _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s", v69, 0xCu);
          }

          if (v30)
          {
            v30(6, "%s", buf);
          }
        }

        while (v33 < v27);
      }

      v40 = v10[2] - 4;
      *v61 = v40;
      v41 = malloc_type_calloc(1uLL, v40, 0x100004077774924uLL);
      *v64 = v41;
      if (v41)
      {
        memcpy(v41, (*v10 + 4), *v61);
        v26 = 1;
      }

      else
      {
        v26 = 0;
        *v61 = 0;
      }
    }

LABEL_71:
    v11 = v63;
    goto LABEL_41;
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v58 = NFLogGetLogger();
  if (v58)
  {
    v58(3, "%s:%i Unexpected length : %d", "NFDriverReadDieID", 8380, v10[2]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v59 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v60 = v10[2];
    *buf = 136446722;
    *&buf[4] = "NFDriverReadDieID";
    *&buf[12] = 1024;
    *&buf[14] = 8380;
    *&buf[18] = 1024;
    *&buf[20] = v60;
    _os_log_impl(&dword_297F97000, v59, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length : %d", buf, 0x18u);
  }

  v26 = 0;
  if (a2 && a3)
  {
    v26 = 0;
    *a3 = 0;
    *a2 = 0;
  }

LABEL_41:
  sub_297F9FBDC(v11);
  sub_297FA0714(&v66);
  sub_297FA0714(&v67);
  v42 = *MEMORY[0x29EDCA608];
  return v26;
}

void NFDriverRedactLogging(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x29EDCA608];
  byte_2A18BD36C = a2;
  v2 = *(*(a1 + 24) + 576);
  v3 = phTmlNfc_IoCtl();
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to set serial log state : %u", "NFDriverRedactLogging", 8405, v4);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "NFDriverRedactLogging";
      v11 = 1024;
      v12 = 8405;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set serial log state : %u", buf, 0x18u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

CFErrorRef NFDriverCreateErrorCode(CFIndex code)
{
  userInfoKeys[1] = *MEMORY[0x29EDCA608];
  v1 = code;
  switch(code)
  {
    case 0:
      v2 = @"Success";
      break;
    case 1:
      v2 = @"Stack error";
      break;
    case 2:
      v2 = @"Firmware error";
      break;
    case 3:
      v2 = @"Insufficient resource";
      break;
    case 4:
      v2 = @"SE communication error";
      break;
    case 5:
      v2 = @"Invalid parameter";
      break;
    case 6:
      v2 = @"Target connection lost";
      break;
    case 7:
      v2 = @"Aborted";
      break;
    case 8:
      v2 = @"Unexpected result";
      break;
    case 9:
      v2 = @"No syscfg cal";
      break;
    case 10:
      v2 = @"No module cal";
      break;
    case 11:
      v2 = @"No system cal";
      break;
    case 12:
      v2 = @"Tag is non NDEF compliant";
      break;
    case 13:
      v2 = @"Reboot required";
      break;
    case 14:
      v2 = @"FW DL pending";
      break;
    case 15:
      v2 = @"NDEF message size is over the limit";
      break;
    case 16:
      v2 = @"Hardware is unresponsive";
      break;
    case 17:
      v2 = @"FollowerID is unresponsive";
      break;
    case 18:
      v2 = @"RF deactivated";
      break;
    case 19:
      v2 = @"Feature not supported";
      break;
    case 20:
      v2 = @"No response from tag";
      break;
    case 21:
      v2 = @"Tag is halted";
      break;
    case 22:
      v2 = @"SE OS reset";
      break;
    case 23:
      v2 = @"Reader mode prohibit timer";
      break;
    case 24:
      v2 = CFStringCreateWithCString(0, "NFCC is in DL mode", 0x8000100u);
      break;
    case 25:
      v2 = @"Measurement Error";
      break;
    default:
      v2 = 0;
      break;
  }

  v3 = *MEMORY[0x29EDB8F58];
  userInfoValues = v2;
  userInfoKeys[0] = v3;
  v4 = CFErrorCreateWithUserInfoKeysAndValues(0, @"com.apple.nfstack", v1, userInfoKeys, &userInfoValues, 1);
  CFRelease(v2);
  CFRelease(@"com.apple.nfstack");
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

char *NFDriverGetUniqueFDRKey(uint64_t a1, _DWORD *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(v22, 0, 44);
  if (NFDriverGetControllerInfo(a1, v22))
  {
    v17 = 0;
    v16 = 0;
    if (!NFDriverReadDieID(a1, &v16, &v17) || (v17 == 16 ? (v4 = v16 == 0) : (v4 = 1), v4))
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to get DieID", "NFDriverGetUniqueFDRKey", 8524);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v19 = "NFDriverGetUniqueFDRKey";
        v20 = 1024;
        v21 = 8524;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get DieID", buf, 0x12u);
      }

      if (a2)
      {
        *a2 = 1;
      }

      if (v16)
      {
        free(v16);
      }

      v5 = 0;
    }

    else
    {
      v5 = malloc_type_calloc(1uLL, 0x80uLL, 0x100004077774924uLL);
      if (v5)
      {
        v6 = "%04X.%04X-%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X";
        v7 = "%02X.%04X-%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X";
        if (DWORD2(v22[0]) < 0x100)
        {
          v6 = "%04X.%02X-%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X";
          v7 = "%02X.%02X-%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X";
        }

        if (LODWORD(v22[0]) < 0x100)
        {
          v6 = v7;
        }

        snprintf(v5, 0x80uLL, v6, LODWORD(v22[0]), DWORD2(v22[0]), *v16, *(v16 + 1), *(v16 + 2), *(v16 + 3), *(v16 + 4), *(v16 + 5), *(v16 + 6), *(v16 + 7), *(v16 + 8), *(v16 + 9), *(v16 + 10), *(v16 + 11), *(v16 + 12), *(v16 + 13), *(v16 + 14), *(v16 + 15));
      }

      free(v16);
    }
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Failed to get driver info", "NFDriverGetUniqueFDRKey", 8516);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "NFDriverGetUniqueFDRKey";
      v20 = 1024;
      v21 = 8516;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", buf, 0x12u);
    }

    v5 = 0;
    if (a2)
    {
      *a2 = 1;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t NFDriverResetFWFlags(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(v11, 0, 44);
  if (NFDriverGetControllerInfo(a1, v11))
  {
    result = DWORD1(v11[0]) >= 7 && !NFDriverSetHeadlessMode(a1, 0);
  }

  else
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Fail to get controller info", "NFDriverResetFWFlags", 8685);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "NFDriverResetFWFlags";
      v9 = 1024;
      v10 = 8685;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to get controller info", buf, 0x12u);
    }

    result = 8;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverGetMultiTagState(uint64_t a1, _BYTE *a2, BOOL *a3, _DWORD *a4)
{
  v72 = *MEMORY[0x29EDCA608];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3800000000;
  v56 = 0u;
  v57 = 0u;
  v8 = *(a1 + 58);
  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (v8 == 1)
  {
    if (Logger)
    {
      Logger(6, "%s:%i Not supported on MWF", "NFDriverGetMultiTagState", 8703);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v59 = "NFDriverGetMultiTagState";
      v60 = 1024;
      v61 = 8703;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not supported on MWF", buf, 0x12u);
    }

    v12 = 19;
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i Multitag state query", "NFDriverGetMultiTagState", 8707);
    }

    dispatch_get_specific(*v9);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v59 = "NFDriverGetMultiTagState";
      v60 = 1024;
      v61 = 8707;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Multitag state query", buf, 0x12u);
    }

    v52[0] = MEMORY[0x29EDCA5F8];
    v52[1] = 0x40000000;
    v52[2] = sub_297FCFCE8;
    v52[3] = &unk_29EE88880;
    v52[4] = &v53;
    v52[5] = a1;
    v14 = sub_297FA1B10(a1, v52);
    v15 = sub_297F9F694(v14);
    if (v15)
    {
      v16 = v15;
      if (v15 != 51)
      {
        dispatch_get_specific(*v9);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverGetMultiTagState", 8722, v16);
        }

        dispatch_get_specific(*v9);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v59 = "NFDriverGetMultiTagState";
          v60 = 1024;
          v61 = 8722;
          v62 = 2048;
          *v63 = v16;
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", buf, 0x1Cu);
        }
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    sub_297F9FBDC(v14);
    dispatch_get_specific(*v9);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(6, "%s:%i MultiTag Enabled: %d, Running: %d", "NFDriverGetMultiTagState", 8732, v54[3] & 1, (*(v54 + 24) >> 1) & 1);
    }

    dispatch_get_specific(*v9);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v54 + 24);
      *buf = 136446978;
      v59 = "NFDriverGetMultiTagState";
      v60 = 1024;
      v61 = 8732;
      v62 = 1024;
      *v63 = v21 & 1;
      *&v63[4] = 1024;
      *&v63[6] = (v21 >> 1) & 1;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i MultiTag Enabled: %d, Running: %d", buf, 0x1Eu);
    }

    if (a2)
    {
      *a2 = v54[3] & 1;
    }

    if (a3)
    {
      *a3 = (v54[3] & 2) != 0;
    }

    if (a4)
    {
      bzero(a4, 0x300uLL);
      dispatch_get_specific(*v9);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(6, "%s:%i Num Tags Detected=%d, Num Tags Not Interested=%d", "NFDriverGetMultiTagState", 8745, *(v54 + 25), *(v54 + 40));
      }

      dispatch_get_specific(*v9);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v54 + 25);
        v25 = *(v54 + 40);
        *buf = 136446978;
        v59 = "NFDriverGetMultiTagState";
        v60 = 1024;
        v61 = 8745;
        v62 = 1024;
        *v63 = v24;
        *&v63[4] = 1024;
        *&v63[6] = v25;
        _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Num Tags Detected=%d, Num Tags Not Interested=%d", buf, 0x1Eu);
      }

      v26 = v54;
      v51 = v12;
      if (*(v54 + 25))
      {
        v27 = a4;
        v28 = 0;
        v29 = 0;
        v50 = v27;
        v30 = v27 + 70;
        do
        {
          dispatch_get_specific(*v9);
          v31 = NFLogGetLogger();
          if (v31)
          {
            v32 = (v54[4] + v28);
            v31(6, "%s:%i Detected Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "NFDriverGetMultiTagState", 8754, v29, *v32, v32[1], v32[2], v32[3], v32[4]);
          }

          dispatch_get_specific(*v9);
          v33 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = (v54[4] + v28);
            v35 = *v34;
            v36 = v34[1];
            v37 = v34[2];
            v38 = v34[3];
            LODWORD(v34) = v34[4];
            *buf = 136448002;
            v59 = "NFDriverGetMultiTagState";
            v60 = 1024;
            v61 = 8754;
            v62 = 1024;
            *v63 = v29;
            *&v63[4] = 1024;
            *&v63[6] = v35;
            v64 = 1024;
            v65 = v36;
            v66 = 1024;
            v67 = v37;
            v68 = 1024;
            v69 = v38;
            v70 = 1024;
            v71 = v34;
            _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Detected Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
          }

          if (v29 <= 1)
          {
            v39 = (v54[4] + v28);
            *(v30 - 20) = sub_297FBD8FC(*v39);
            *v30 = 4;
            *(v30 - 4) = *(v39 + 1);
          }

          ++v29;
          v26 = v54;
          v28 += 5;
          v30 += 96;
        }

        while (v29 < *(v54 + 25));
        a4 = v50;
        v12 = v51;
      }

      if (*(v26 + 40))
      {
        v40 = 0;
        v41 = 0;
        v42 = a4 + 146;
        do
        {
          dispatch_get_specific(*v9);
          v43 = NFLogGetLogger();
          if (v43)
          {
            v43(6, "%s:%i Not interested Tag (%d) rfTech = %d", "NFDriverGetMultiTagState", 8763, v41, *(v54[6] + v40));
          }

          dispatch_get_specific(*v9);
          v44 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(v54[6] + v40);
            *buf = 136446978;
            v59 = "NFDriverGetMultiTagState";
            v60 = 1024;
            v61 = 8763;
            v62 = 1024;
            *v63 = v41;
            *&v63[4] = 1024;
            *&v63[6] = v45;
            _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not interested Tag (%d) rfTech = %d", buf, 0x1Eu);
          }

          if (v41 <= 1)
          {
            *v42 = sub_297FBD8FC(*(v54[6] + v40));
          }

          ++v41;
          v26 = v54;
          v40 += 3;
          v42 += 24;
        }

        while (v41 < *(v54 + 40));
        v12 = v51;
      }
    }

    else
    {
      v26 = v54;
    }

    v46 = v26[4];
    if (v46)
    {
      free(v46);
      v26 = v54;
      v54[4] = 0;
    }

    v47 = v26[6];
    if (v47)
    {
      free(v47);
      v54[6] = 0;
    }
  }

  _Block_object_dispose(&v53, 8);
  v48 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_297FCFCE8(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

void sub_297FCFD20(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v62 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = 0;
    if (a3 && !a4)
    {
      v10 = *a3;
    }

    Logger(6, "%s:%i Status = 0x%x, param=%d", "_Callback_phLibNfc_Mgt_GetNfccParams", 8565, a4, v10);
  }

  dispatch_get_specific(*v8);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    if (a3 && !a4)
    {
      v12 = *a3;
    }

    *buf = 136446978;
    *&buf[4] = "_Callback_phLibNfc_Mgt_GetNfccParams";
    *&buf[12] = 1024;
    *&buf[14] = 8565;
    *&buf[18] = 1024;
    *&buf[20] = a4;
    *&buf[24] = 1024;
    *&buf[26] = v12;
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Status = 0x%x, param=%d", buf, 0x1Eu);
  }

  if (a2)
  {
    if (a4)
    {
      sub_297FBE498(a1, 0, (a2 + 12), (a2 + 8));
      goto LABEL_14;
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    v14 = *a3;
    if (*a3 <= 6)
    {
      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1 && *(a2 + 16))
          {
            v51 = *(a2 + 16);
            v61 = 0u;
            memset(buf, 0, sizeof(buf));
            v15 = *(a3 + 16);
            v16 = *(a3 + 8);
            dispatch_get_specific(*v8);
            v17 = NFLogGetLogger();
            dispatch_get_specific(*v8);
            v18 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a3 + 16);
              *v52 = 136315906;
              v53 = "_Callback_phLibNfc_Mgt_GetNfccParams";
              v54 = 1024;
              v55 = 8655;
              v56 = 2082;
              v57 = "SMB log: ";
              v58 = 2048;
              v59 = v19;
              _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v52, 0x26u);
            }

            if (v17)
            {
              v17(6, "%s:%i %s %lu bytes :", "_Callback_phLibNfc_Mgt_GetNfccParams", 8655, "SMB log: ", *(a3 + 16));
            }

            if (v15)
            {
              v20 = 0;
              do
              {
                v21 = v17;
                v22 = 0;
                v23 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v20)];
                do
                {
                  v24 = *(v16 + v20++);
                  v25 = sprintf(v23, "0x%02X ", v24);
                  if (v22 > 6)
                  {
                    break;
                  }

                  v23 += v25;
                  ++v22;
                }

                while (v20 < v15);
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v26 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *v52 = 136446210;
                  v53 = buf;
                  _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", v52, 0xCu);
                }

                v17 = v21;
                if (v21)
                {
                  v21(6, "%s", buf);
                }
              }

              while (v20 < v15);
            }

            v27 = *(a3 + 8);
            v28 = *(a3 + 16);
            *v51 = NFDataCreateWithBytes();
          }
        }

        else
        {
          v32 = *(a2 + 16);
          if (v32)
          {
            v33 = *(a3 + 8);
            v34 = *(a3 + 24);
            *(v32 + 32) = *(a3 + 40);
            *v32 = v33;
            *(v32 + 16) = v34;
          }
        }

        goto LABEL_14;
      }

      if (v14 == 3)
      {
        goto LABEL_51;
      }

      if (v14 != 6)
      {
        goto LABEL_14;
      }

      v29 = *(a2 + 16);
      if (!v29)
      {
        goto LABEL_14;
      }

      v30 = *(a3 + 8);
      *(v29 + 4) = *(a3 + 12);
    }

    else
    {
      if (v14 > 8)
      {
        if (v14 == 9)
        {
          v35 = *(a2 + 16);
          if (v35)
          {
            *v35 = *(a3 + 8);
          }

          goto LABEL_14;
        }

        if (v14 != 10)
        {
          if (v14 != 11)
          {
            goto LABEL_14;
          }

LABEL_51:
          v31 = *(a2 + 16);
          if (v31)
          {
            *v31 = *(a3 + 8);
          }

          goto LABEL_14;
        }

        v39 = *(a2 + 16);
        if (v39)
        {
          LODWORD(v40) = *(a3 + 8);
          *v39 = v40;
          if (v40 < 0x41)
          {
            if (!v40)
            {
              goto LABEL_14;
            }
          }

          else
          {
            dispatch_get_specific(*v8);
            v41 = NFLogGetLogger();
            if (v41)
            {
              v41(3, "%s:%i Not enough space allocated to store all page counters", "_Callback_phLibNfc_Mgt_GetNfccParams", 8642);
            }

            dispatch_get_specific(*v8);
            v42 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_Callback_phLibNfc_Mgt_GetNfccParams";
              *&buf[12] = 1024;
              *&buf[14] = 8642;
              _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i Not enough space allocated to store all page counters", buf, 0x12u);
            }

            LODWORD(v40) = 64;
            *v39 = 64;
          }

          v43 = (a3 + 12);
          v44 = v39 + 2;
          v40 = v40;
          do
          {
            v45 = *v43++;
            *v44++ = v45;
            --v40;
          }

          while (v40);
        }

LABEL_14:
        sub_297F9FB20(a2, a4);
        sub_297F9FBDC(a2);
        goto LABEL_15;
      }

      if (v14 == 7)
      {
        v36 = *(a2 + 16);
        if (v36)
        {
          v37 = *(a3 + 24);
          *v36 = *(a3 + 8);
          *(v36 + 16) = v37;
          if (*(a3 + 9) && *(a3 + 16))
          {
            v38 = malloc_type_calloc(*(a3 + 9), 5uLL, 0x1000040957D8CC4uLL);
            *(v36 + 8) = v38;
            if (v38)
            {
              memcpy(v38, *(a3 + 16), 5 * *(a3 + 9));
            }

            else
            {
              dispatch_get_specific(*v8);
              v46 = NFLogGetLogger();
              if (v46)
              {
                v46(3, "%s:%i Resource error", "_Callback_phLibNfc_Mgt_GetNfccParams", 8605);
              }

              dispatch_get_specific(*v8);
              v47 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "_Callback_phLibNfc_Mgt_GetNfccParams";
                *&buf[12] = 1024;
                *&buf[14] = 8605;
                _os_log_impl(&dword_297F97000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i Resource error", buf, 0x12u);
              }
            }
          }

          if (*(a3 + 24) && *(a3 + 32))
          {
            v48 = malloc_type_calloc(*(a3 + 24), 3uLL, 0x100004033FC2DF1uLL);
            *(v36 + 24) = v48;
            if (v48)
            {
              memcpy(v48, *(a3 + 32), 3 * *(a3 + 24));
            }

            else
            {
              dispatch_get_specific(*v8);
              v49 = NFLogGetLogger();
              if (v49)
              {
                v49(3, "%s:%i Resource error", "_Callback_phLibNfc_Mgt_GetNfccParams", 8615);
              }

              dispatch_get_specific(*v8);
              v50 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "_Callback_phLibNfc_Mgt_GetNfccParams";
                *&buf[12] = 1024;
                *&buf[14] = 8615;
                _os_log_impl(&dword_297F97000, v50, OS_LOG_TYPE_ERROR, "%{public}s:%i Resource error", buf, 0x12u);
              }
            }
          }
        }

        goto LABEL_14;
      }

      if (v14 != 8)
      {
        goto LABEL_14;
      }

      v29 = *(a2 + 16);
      if (!v29)
      {
        goto LABEL_14;
      }

      v30 = *(a3 + 8);
    }

    *v29 = v30;
    goto LABEL_14;
  }

LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t NFDriverGetFlashWriteCounter(uint64_t a1, int *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v35 = 24;
  v34 = -24319;
  v4 = 3;
  v5 = sub_297FA02E4(3u, &v34);
  v33 = v5;
  v6 = sub_297FA02E4(0x10u, 0);
  v32 = v6;
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i NFCC flash write query", "NFDriverGetFlashWriteCounter", 8956);
      }

      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverGetFlashWriteCounter";
        *&buf[12] = 1024;
        *&buf[14] = 8956;
        _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i NFCC flash write query", buf, 0x12u);
      }

      v11 = sub_297FA0380(a1, 37026, v5, v7);
      if (sub_297F9F694(v11))
      {
        dispatch_get_specific(*v8);
        v12 = NFLogGetLogger();
        if (v12)
        {
          v12(3, "%s:%i Failed to read write counter", "NFDriverGetFlashWriteCounter", 8960);
        }

        dispatch_get_specific(*v8);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverGetFlashWriteCounter";
          *&buf[12] = 1024;
          *&buf[14] = 8960;
          _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read write counter", buf, 0x12u);
        }

        v4 = 1;
      }

      else
      {
        v14 = *(v7 + 8);
        v15 = *v7;
        if (v14 >= 8 && v15)
        {
          v16 = *(v15 + 4);
          dispatch_get_specific(*v8);
          v17 = NFLogGetLogger();
          if (v17)
          {
            v17(6, "%s:%i Write counter is 0x%x (length = %d)", "NFDriverGetFlashWriteCounter", 8969, v16, *(v7 + 8));
          }

          dispatch_get_specific(*v8);
          v18 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(v7 + 8);
            *buf = 136446978;
            *&buf[4] = "NFDriverGetFlashWriteCounter";
            *&buf[12] = 1024;
            *&buf[14] = 8969;
            *&buf[18] = 1024;
            *&buf[20] = v16;
            *&buf[24] = 1024;
            *&buf[26] = v19;
            _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Write counter is 0x%x (length = %d)", buf, 0x1Eu);
          }

          v4 = 0;
          if (a2)
          {
            *a2 = v16;
          }
        }

        else
        {
          v45 = 0u;
          memset(buf, 0, sizeof(buf));
          dispatch_get_specific(*v8);
          v20 = NFLogGetLogger();
          dispatch_get_specific(*v8);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = *(v7 + 8);
            *v36 = 136315906;
            v37 = "NFDriverGetFlashWriteCounter";
            v38 = 1024;
            v39 = 8974;
            v40 = 2082;
            v41 = "Unexpected write counter reply";
            v42 = 2048;
            v43 = v22;
            _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v36, 0x26u);
          }

          v31 = v11;
          if (v20)
          {
            v20(3, "%s:%i %s %lu bytes :", "NFDriverGetFlashWriteCounter", 8974, "Unexpected write counter reply", *(v7 + 8));
          }

          if (v14)
          {
            v23 = 0;
            do
            {
              v24 = 0;
              v25 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v23)];
              do
              {
                v26 = *(v15 + v23++);
                v27 = sprintf(v25, "0x%02X ", v26);
                if (v24 > 6)
                {
                  break;
                }

                v25 += v27;
                ++v24;
              }

              while (v23 < v14);
              dispatch_get_specific(*v8);
              v28 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *v36 = 136446210;
                v37 = buf;
                _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s", v36, 0xCu);
              }

              if (v20)
              {
                v20(3, "%s", buf);
              }
            }

            while (v23 < v14);
          }

          v4 = 8;
          v11 = v31;
        }
      }

      sub_297F9FBDC(v11);
    }
  }

  sub_297FA0714(&v33);
  sub_297FA0714(&v32);
  v29 = *MEMORY[0x29EDCA608];
  return v4;
}

void NFDriverDumpLPMDebugLog(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = sub_297F9DC04();
  pthread_mutex_lock((v2[3] + 8));
  v3 = v2[3];
  ++*v3;
  pthread_mutex_unlock((v3 + 8));
  v4 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FD0A28;
  block[3] = &unk_29EE888C8;
  block[4] = a1;
  block[5] = v2;
  dispatch_async_and_wait(v4, block);
  if (sub_297F9F694(v2))
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i > phLibNfc_Mgt_GetNfccParams FAILED", "NFDriverDumpLPMDebugLog", 9435);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "NFDriverDumpLPMDebugLog";
      v12 = 1024;
      v13 = 9435;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i > phLibNfc_Mgt_GetNfccParams FAILED", buf, 0x12u);
    }
  }

  sub_297F9FBDC(v2);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_297FD0A28(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i > phLibNfc_Mgt_GetNfccParams", "NFDriverDumpLPMDebugLog_block_invoke", 9423);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "NFDriverDumpLPMDebugLog_block_invoke";
    v14 = 1024;
    v15 = 9423;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i > phLibNfc_Mgt_GetNfccParams", buf, 0x12u);
  }

  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 32) + 24) + 576);
  NfccParams = phLibNfc_Mgt_GetNfccParams();
  if (NfccParams != 13)
  {
    v8 = NfccParams;
    dispatch_get_specific(*v2);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Failed : 0x%x", "NFDriverDumpLPMDebugLog_block_invoke", 9427, v8);
    }

    dispatch_get_specific(*v2);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "NFDriverDumpLPMDebugLog_block_invoke";
      v14 = 1024;
      v15 = 9427;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed : 0x%x", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v8);
    sub_297F9FBDC(*(a1 + 40));
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297FD0BFC(uint64_t a1, void **a2, int *a3, unsigned int a4)
{
  v55 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i **** getNfccParamsCb: STATUS = 0x%02X ****", "_Callback_GetNfccParamsCb", 9348, a4);
  }

  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v50 = "_Callback_GetNfccParamsCb";
    v51 = 1024;
    v52 = 9348;
    v53 = 1024;
    v54 = a4;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i **** getNfccParamsCb: STATUS = 0x%02X ****", buf, 0x18u);
  }

  if (!a3 || a4)
  {
    if (a3 && a4 == 63)
    {
      v25 = *a3;
      dispatch_get_specific(*v7);
      v26 = NFLogGetLogger();
      if (v25 == 5)
      {
        if (v26)
        {
          v26(6, "%s:%i \t ### HLM debug Log ###", "_Callback_GetNfccParamsCb", 9371);
        }

        dispatch_get_specific(*v7);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v50 = "_Callback_GetNfccParamsCb";
          v51 = 1024;
          v52 = 9371;
          _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t ### HLM debug Log ###", buf, 0x12u);
        }

        dispatch_get_specific(*v7);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v28(6, "%s:%i \t RAM buffer overflow status  : %d", "_Callback_GetNfccParamsCb", 9372, *(a3 + 9));
        }

        dispatch_get_specific(*v7);
        v29 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a3 + 9);
          *buf = 136446722;
          v50 = "_Callback_GetNfccParamsCb";
          v51 = 1024;
          v52 = 9372;
          v53 = 1024;
          v54 = v30;
          _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t RAM buffer overflow status  : %d", buf, 0x18u);
        }

        dispatch_get_specific(*v7);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v31(6, "%s:%i \t FLASH buffer overflow status: %d", "_Callback_GetNfccParamsCb", 9373, *(a3 + 8));
        }

        dispatch_get_specific(*v7);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a3 + 8);
          *buf = 136446722;
          v50 = "_Callback_GetNfccParamsCb";
          v51 = 1024;
          v52 = 9373;
          v53 = 1024;
          v54 = v33;
          _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t FLASH buffer overflow status: %d", buf, 0x18u);
        }

        v34 = *(a3 + 2);
        if (v34)
        {
          v35 = *(v34 + 8);
          dispatch_get_specific(*v7);
          v36 = NFLogGetLogger();
          if (v36)
          {
            v36(6, "%s:%i \t Number of HLM debug msgs: %d", "_Callback_GetNfccParamsCb", 9379, v35[5]);
          }

          dispatch_get_specific(*v7);
          v37 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v35[5];
            *buf = 136446722;
            v50 = "_Callback_GetNfccParamsCb";
            v51 = 1024;
            v52 = 9379;
            v53 = 1024;
            v54 = v38;
            _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t Number of HLM debug msgs: %d", buf, 0x18u);
          }

          dispatch_get_specific(*v7);
          v39 = NFLogGetLogger();
          if (v39)
          {
            v39(6, "%s:%i \t Number of L2 debug msgs: %d", "_Callback_GetNfccParamsCb", 9388, *v35);
          }

          dispatch_get_specific(*v7);
          v40 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v41 = *v35;
          *buf = 136446722;
          v50 = "_Callback_GetNfccParamsCb";
          v51 = 1024;
          v52 = 9388;
          v53 = 1024;
          v54 = v41;
          v24 = "%{public}s:%i \t Number of L2 debug msgs: %d";
          v42 = v40;
          v43 = 24;
          goto LABEL_72;
        }

        dispatch_get_specific(*v7);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v47(6, "%s:%i \t pInfo (pointer to L2Debug Info) is NULL!", "_Callback_GetNfccParamsCb", 9398);
        }

        dispatch_get_specific(*v7);
        v23 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        *buf = 136446466;
        v50 = "_Callback_GetNfccParamsCb";
        v51 = 1024;
        v52 = 9398;
        v24 = "%{public}s:%i \t pInfo (pointer to L2Debug Info) is NULL!";
      }

      else
      {
        if (v26)
        {
          v26(6, "%s:%i \t Invalid 'eNfccParam' returned", "_Callback_GetNfccParamsCb", 9403);
        }

        dispatch_get_specific(*v7);
        v23 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        *buf = 136446466;
        v50 = "_Callback_GetNfccParamsCb";
        v51 = 1024;
        v52 = 9403;
        v24 = "%{public}s:%i \t Invalid 'eNfccParam' returned";
      }

LABEL_71:
      v42 = v23;
      v43 = 18;
LABEL_72:
      _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_DEFAULT, v24, buf, v43);
LABEL_73:
      a4 = 0;
      goto LABEL_74;
    }

    if (!a4)
    {
      goto LABEL_74;
    }
  }

  else
  {
    dispatch_get_specific(*v7);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(6, "%s:%i > eNfccParam: %d", "_Callback_GetNfccParamsCb", 9351, *a3);
    }

    dispatch_get_specific(*v7);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a3;
      *buf = 136446722;
      v50 = "_Callback_GetNfccParamsCb";
      v51 = 1024;
      v52 = 9351;
      v53 = 1024;
      v54 = v12;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i > eNfccParam: %d", buf, 0x18u);
    }

    v13 = *a3;
    dispatch_get_specific(*v7);
    v14 = NFLogGetLogger();
    if (v13 == 5)
    {
      if (v14)
      {
        v14(6, "%s:%i \t ### HLM debug Log ###", "_Callback_GetNfccParamsCb", 9354);
      }

      dispatch_get_specific(*v7);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v50 = "_Callback_GetNfccParamsCb";
        v51 = 1024;
        v52 = 9354;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t ### HLM debug Log ###", buf, 0x12u);
      }

      dispatch_get_specific(*v7);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(6, "%s:%i \t RAM buffer overflow status  : %d", "_Callback_GetNfccParamsCb", 9355, *(a3 + 9));
      }

      dispatch_get_specific(*v7);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a3 + 9);
        *buf = 136446722;
        v50 = "_Callback_GetNfccParamsCb";
        v51 = 1024;
        v52 = 9355;
        v53 = 1024;
        v54 = v18;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t RAM buffer overflow status  : %d", buf, 0x18u);
      }

      dispatch_get_specific(*v7);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(6, "%s:%i \t FLASH buffer overflow status: %d", "_Callback_GetNfccParamsCb", 9356, *(a3 + 8));
      }

      dispatch_get_specific(*v7);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a3 + 8);
        *buf = 136446722;
        v50 = "_Callback_GetNfccParamsCb";
        v51 = 1024;
        v52 = 9356;
        v53 = 1024;
        v54 = v21;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i \t FLASH buffer overflow status: %d", buf, 0x18u);
      }

      dispatch_get_specific(*v7);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(6, "%s:%i \t Log is empty!", "_Callback_GetNfccParamsCb", 9357);
      }

      dispatch_get_specific(*v7);
      v23 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 136446466;
      v50 = "_Callback_GetNfccParamsCb";
      v51 = 1024;
      v52 = 9357;
      v24 = "%{public}s:%i \t Log is empty!";
      goto LABEL_71;
    }

    if (v14)
    {
      v14(6, "%s:%i Wrong 'eNfccParam' received!", "_Callback_GetNfccParamsCb", 9361);
    }

    dispatch_get_specific(*v7);
    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v50 = "_Callback_GetNfccParamsCb";
      v51 = 1024;
      v52 = 9361;
      _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Wrong 'eNfccParam' received!", buf, 0x12u);
    }

    a4 = 255;
  }

  dispatch_get_specific(*v7);
  v45 = NFLogGetLogger();
  if (v45)
  {
    v45(3, "%s:%i Failed : 0x%x", "_Callback_GetNfccParamsCb", 9408, a4);
  }

  dispatch_get_specific(*v7);
  v46 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v50 = "_Callback_GetNfccParamsCb";
    v51 = 1024;
    v52 = 9408;
    v53 = 1024;
    v54 = a4;
    _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed : 0x%x", buf, 0x18u);
  }

LABEL_74:
  sub_297F9FB20(a2, a4);
  sub_297F9FBDC(a2);
  v48 = *MEMORY[0x29EDCA608];
}

BOOL NFDriverEnableFelicaTxEndPatternV2(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v2 = sub_297FBA6E8(a1, 41);
  v15[0] = HIBYTE(v2);
  v15[1] = v2;
  v16 = 118554628;
  v17 = 1;
  v3 = sub_297FBA6E8(a1, 40);
  v13[0] = HIBYTE(v3);
  v13[1] = v3;
  v14 = -1040129789;
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i configuring Felica transaction end pattern for applet ver 2.0", "NFDriverEnableFelicaTxEndPatternV2", 9472);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "NFDriverEnableFelicaTxEndPatternV2";
    v21 = 1024;
    v22 = 9472;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i configuring Felica transaction end pattern for applet ver 2.0", buf, 0x12u);
  }

  v18 = sub_297FA02E4(7u, v15);
  v7 = sub_297FA0380(a1, 37025, v18, 0);
  v8 = sub_297F9F694(v7);
  sub_297FA0714(&v18);
  sub_297F9FBDC(v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v18 = sub_297FA02E4(6u, v13);
    v10 = sub_297FA0380(a1, 37025, v18, 0);
    v9 = sub_297F9F694(v10) == 0;
    sub_297FA0714(&v18);
    sub_297F9FBDC(v10);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t NFDriverConfigureExpressFelicaEntry(uint64_t a1, int a2)
{
  v60 = *MEMORY[0x29EDCA608];
  memset(v59, 0, 44);
  if (NFDriverGetControllerInfo(a1, v59))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i enable %02X", "NFDriverConfigureExpressFelicaEntry", 9508, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverConfigureExpressFelicaEntry";
      *&buf[12] = 1024;
      *&buf[14] = 9508;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable %02X", buf, 0x18u);
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    v38 = 0;
    v33[0] = MEMORY[0x29EDCA5F8];
    v33[1] = 0x40000000;
    v33[2] = sub_297FD1C94;
    v33[3] = &unk_29EE888F0;
    v33[4] = &v34;
    v33[5] = a1;
    v7 = sub_297FA1B10(a1, v33);
    v8 = sub_297F9F694(v7);
    sub_297F9FBDC(v7);
    if (v8)
    {
      if (v8 != 51)
      {
        dispatch_get_specific(*v4);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v9(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverConfigureExpressFelicaEntry", 9527, v8);
        }

        dispatch_get_specific(*v4);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "NFDriverConfigureExpressFelicaEntry";
          *&buf[12] = 1024;
          *&buf[14] = 9527;
          *&buf[18] = 2048;
          *&buf[20] = v8;
          _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", buf, 0x1Cu);
        }
      }

      goto LABEL_28;
    }

    v12 = v35;
    dispatch_get_specific(*v4);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(6, "%s:%i old SuicaSystemCode: code 1 enabled: %d, code 1: %04X; code 2 enabled: %d, code 2: %04X", "NFDriverConfigureExpressFelicaEntry", 9534, *(v12 + 24), *(v12 + 13), *(v12 + 25), *(v12 + 14));
    }

    dispatch_get_specific(*v4);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v12 + 24);
      v16 = *(v12 + 13);
      v17 = *(v12 + 25);
      v18 = *(v12 + 14);
      *buf = 136447490;
      *&buf[4] = "NFDriverConfigureExpressFelicaEntry";
      *&buf[12] = 1024;
      *&buf[14] = 9534;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      buf[24] = 0;
      buf[25] = 4;
      *&buf[26] = v16;
      *&buf[30] = 1024;
      LODWORD(v52) = v17;
      WORD2(v52) = 1024;
      *(&v52 + 6) = v18;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i old SuicaSystemCode: code 1 enabled: %d, code 1: %04X; code 2 enabled: %d, code 2: %04X", buf, 0x2Au);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    memset(buf, 0, sizeof(buf));
    *buf = 4;
    *&buf[10] = 3;
    buf[8] = a2 & 1;
    if ((a2 & 2) != 0)
    {
      v19 = -32760;
    }

    else
    {
      v19 = 3;
    }

    buf[9] = (a2 & 2) >> 1;
    *&buf[12] = v19;
    if ((a2 & 2) != 0)
    {
      v20 = 32776;
    }

    else
    {
      v20 = 3;
    }

    if (*(v12 + 6) == *&buf[8] && *(v12 + 14) == v20)
    {
      dispatch_get_specific(*v4);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(6, "%s:%i configs are identical - skipping.", "NFDriverConfigureExpressFelicaEntry", 9563);
      }

      dispatch_get_specific(*v4);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *v39 = 136446466;
      v40 = "NFDriverConfigureExpressFelicaEntry";
      v41 = 1024;
      v42 = 9563;
      v26 = "%{public}s:%i configs are identical - skipping.";
      v27 = v25;
      v28 = 18;
    }

    else
    {
      v22 = sub_297FD1CCC(a1, buf);
      v23 = sub_297F9F694(v22);
      sub_297F9FBDC(v22);
      if (v23)
      {
LABEL_28:
        v11 = 0;
LABEL_39:
        _Block_object_dispose(&v34, 8);
        goto LABEL_40;
      }

      dispatch_get_specific(*v4);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v29(6, "%s:%i new SuicaEntrySysCode: code 1 enabled: %d, code 1: %04X; code 2 enabled: %d, code 2: %04X", "NFDriverConfigureExpressFelicaEntry", 9577, buf[8], *&buf[10], buf[9], *&buf[12]);
      }

      dispatch_get_specific(*v4);
      v30 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
LABEL_38:
        v11 = 1;
        goto LABEL_39;
      }

      *v39 = 136447490;
      v40 = "NFDriverConfigureExpressFelicaEntry";
      v41 = 1024;
      v42 = 9577;
      v43 = 1024;
      v44 = buf[8];
      v45 = 1024;
      v46 = *&buf[10];
      v47 = 1024;
      v48 = buf[9];
      v49 = 1024;
      v50 = *&buf[12];
      v26 = "%{public}s:%i new SuicaEntrySysCode: code 1 enabled: %d, code 1: %04X; code 2 enabled: %d, code 2: %04X";
      v27 = v30;
      v28 = 42;
    }

    _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_DEFAULT, v26, v39, v28);
    goto LABEL_38;
  }

  v11 = 0;
LABEL_40:
  v31 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297FD1C94(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

void *sub_297FD1CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_297F9DC04();
  pthread_mutex_lock((v4[3] + 8));
  v5 = v4[3];
  ++*v5;
  pthread_mutex_unlock((v5 + 8));
  v6 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FD96EC;
  block[3] = &unk_29EE88C88;
  block[4] = a1;
  block[5] = a2;
  block[6] = v4;
  dispatch_async_and_wait(v6, block);
  return v4;
}

BOOL NFDriverSetChipscope(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v22 = 0;
  v23 = 0;
  if (*(a1 + 58) == 1 && (*(*(a1 + 24) + 586) & 2) != 0)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (a2)
    {
      if (Logger)
      {
        Logger(6, "%s:%i Disabling standby for debugging", "NFDriverSetChipscope", 9592);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v25 = "NFDriverSetChipscope";
        v26 = 1024;
        v27 = 9592;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Disabling standby for debugging", buf, 0x12u);
      }

      sub_297FC05A4(a1, 0);
      LODWORD(v23) = a4;
      v22 = a3;
      LODWORD(v28) = 5;
      DWORD2(v28) = 2;
      *&v29 = &v22;
      dispatch_get_specific(*v11);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(6, "%s:%i Configuring chipscope", "NFDriverSetChipscope", 9603);
      }

      dispatch_get_specific(*v11);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v25 = "NFDriverSetChipscope";
        v26 = 1024;
        v27 = 9603;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring chipscope", buf, 0x12u);
      }

      v16 = sub_297FD1CCC(a1, &v28);
      v17 = sub_297F9F694(v16);
      sub_297F9FBDC(v16);
      if (v17)
      {
        v5 = 1;
        goto LABEL_4;
      }

      dispatch_get_specific(*v11);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(6, "%s:%i Enabling chipscope", "NFDriverSetChipscope", 9613);
      }

      dispatch_get_specific(*v11);
      v18 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        LODWORD(v28) = 5;
        DWORD2(v28) = a2;
        *&v29 = 0;
        v21 = sub_297FD1CCC(a1, &v28);
        v5 = sub_297F9F694(v21) != 0;
        sub_297F9FBDC(v21);
        goto LABEL_4;
      }

      *buf = 136446466;
      v25 = "NFDriverSetChipscope";
      v26 = 1024;
      v27 = 9613;
      v19 = "%{public}s:%i Enabling chipscope";
    }

    else
    {
      if (Logger)
      {
        Logger(6, "%s:%i Disabling chipscope", "NFDriverSetChipscope", 9615);
      }

      dispatch_get_specific(*v11);
      v18 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v25 = "NFDriverSetChipscope";
      v26 = 1024;
      v27 = 9615;
      v19 = "%{public}s:%i Disabling chipscope";
    }

    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x12u);
    goto LABEL_25;
  }

  v5 = 0;
LABEL_4:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t NFDriverContinuousWave(uint64_t a1, int a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a2)
    {
      v8 = "Enabling";
    }

    else
    {
      v8 = "Disabling";
    }

    Logger(6, "%s:%i %s Continuous Wave", "NFDriverContinuousWave", 9642, v8);
  }

  dispatch_get_specific(*v6);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v10 = "Enabling";
    }

    else
    {
      v10 = "Disabling";
    }

    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "NFDriverContinuousWave";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 9642;
    WORD1(buf[1]) = 2080;
    *(&buf[1] + 4) = v10;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s Continuous Wave", buf, 0x1Cu);
  }

  memset(v32, 0, 44);
  if (NFDriverGetControllerInfo(a1, v32))
  {
    if (DWORD1(v32[0]) > 6)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(buf[0]) = 9;
      DWORD2(buf[0]) = a2;
      if (a3)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      BYTE12(buf[0]) = v16;
      v17 = sub_297FD1CCC(a1, buf);
      if (sub_297F9F694(v17))
      {
        dispatch_get_specific(*v6);
        v18 = NFLogGetLogger();
        if (v18)
        {
          if (a2)
          {
            v19 = "enable";
          }

          else
          {
            v19 = "disable";
          }

          v18(3, "%s:%i Failed to %s continuous wave", "NFDriverContinuousWave", 9660, v19);
        }

        dispatch_get_specific(*v6);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v21 = "enable";
          }

          else
          {
            v21 = "disable";
          }

          *v25 = 136446722;
          v26 = "NFDriverContinuousWave";
          v27 = 1024;
          v28 = 9660;
          v29 = 2080;
          v30 = v21;
          _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to %s continuous wave", v25, 0x1Cu);
        }

        sub_297F9FBDC(v17);
        result = 1;
      }

      else
      {
        sub_297F9FBDC(v17);
        if (a2)
        {
          usleep(0x3A98u);
          v22 = a1;
          v23 = 0;
        }

        else
        {
          v22 = a1;
          v23 = 1;
        }

        sub_297FC05A4(v22, v23);
        result = 0;
      }
    }

    else
    {
      dispatch_get_specific(*v6);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(6, "%s:%i NFCC does not support Continuous Wave", "NFDriverContinuousWave", 9649);
      }

      dispatch_get_specific(*v6);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "NFDriverContinuousWave";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 9649;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i NFCC does not support Continuous Wave", buf, 0x12u);
      }

      result = 19;
    }
  }

  else
  {
    dispatch_get_specific(*v6);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(6, "%s:%i Failed to get driver info", "NFDriverContinuousWave", 9646);
    }

    dispatch_get_specific(*v6);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "NFDriverContinuousWave";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 9646;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Failed to get driver info", buf, 0x12u);
    }

    result = 8;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFDriverConfigureAutomaticMultiTagPolling(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  memset(v48, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v48))
  {
LABEL_7:
    v5 = 0;
    goto LABEL_13;
  }

  if (DWORD1(v48[0]) <= 0xB)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Hardware not supported", "NFDriverConfigureAutomaticMultiTagPolling", 9688);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverConfigureAutomaticMultiTagPolling";
      *&buf[12] = 1024;
      *&buf[14] = 9688;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hardware not supported", buf, 0x12u);
    }

    goto LABEL_7;
  }

  memset(buf, 0, sizeof(buf));
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  *buf = 6;
  buf[8] = -105;
  *&buf[12] = 3843;
  v6 = *(a1 + 24);
  v7 = v6[186];
  *&buf[22] = v6[186];
  v8 = v6[187];
  buf[20] = v6[187];
  LODWORD(v6) = v6[146];
  v9 = (v6 >> 23) & 1;
  buf[19] = (v6 & 0x800000) != 0;
  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(6, "%s:%i Setting MultiTag Config. A=%d S=%d S2=%d S3=%d V=%d Retries=%d TlvId=%d, debugMode=%d pollDuration=%d pollRetries=%d", "NFDriverConfigureAutomaticMultiTagPolling", 9720, 1, 1, 1, 1, 1, 3, 15, v9, v7, v8);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 136449026;
    v17 = "NFDriverConfigureAutomaticMultiTagPolling";
    v18 = 1024;
    v19 = 9720;
    v20 = 1024;
    v21 = 1;
    v22 = 1024;
    v23 = 1;
    v24 = 1024;
    v25 = 1;
    v26 = 1024;
    v27 = 1;
    v28 = 1024;
    v29 = 1;
    v30 = 1024;
    v31 = 3;
    v32 = 1024;
    v33 = 15;
    v34 = 1024;
    v35 = v9;
    v36 = 1024;
    v37 = v7;
    v38 = 1024;
    v39 = v8;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting MultiTag Config. A=%d S=%d S2=%d S3=%d V=%d Retries=%d TlvId=%d, debugMode=%d pollDuration=%d pollRetries=%d", v16, 0x4Eu);
  }

  v13 = sub_297FD1CCC(a1, buf);
  v5 = sub_297F9F694(v13) == 0;
  sub_297F9FBDC(v13);
LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

BOOL NFDriverClearAutomaticMultiTagPollingState(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(v17, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v17))
  {
LABEL_7:
    v5 = 0;
    goto LABEL_13;
  }

  if (DWORD1(v17[0]) <= 0xB)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Hardware not supported", "NFDriverClearAutomaticMultiTagPollingState", 9742);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "NFDriverClearAutomaticMultiTagPollingState";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 9742;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hardware not supported", buf, 0x12u);
    }

    goto LABEL_7;
  }

  memset(buf, 0, sizeof(buf));
  LODWORD(buf[0]) = 7;
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(6, "%s:%i Clearing Multitag info state", "NFDriverClearAutomaticMultiTagPollingState", 9751);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136446466;
    v13 = "NFDriverClearAutomaticMultiTagPollingState";
    v14 = 1024;
    v15 = 9751;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Clearing Multitag info state", v12, 0x12u);
  }

  v9 = sub_297FD1CCC(a1, buf);
  v5 = sub_297F9F694(v9) == 0;
  sub_297F9FBDC(v9);
LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t NFDriverGetSWIOTemperature(uint64_t a1, double *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  memset(v37, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v37))
  {
    goto LABEL_25;
  }

  if (DWORD1(v37[0]) <= 0xB)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Hardware not supported", "NFDriverGetSWIOTemperature", 9775);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136446466;
    v30 = "NFDriverGetSWIOTemperature";
    v31 = 1024;
    v32 = 9775;
    v7 = "%{public}s:%i Hardware not supported";
LABEL_13:
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x12u);
LABEL_14:
    v12 = 19;
    goto LABEL_26;
  }

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 0x40000000;
  v24[2] = sub_297FD2E64;
  v24[3] = &unk_29EE88918;
  v24[4] = &v25;
  v24[5] = a1;
  v8 = sub_297FA1B10(a1, v24);
  v9 = sub_297F9F694(v8);
  sub_297F9FBDC(v8);
  if (v9)
  {
    v10 = MEMORY[0x29EDC9730];
    if (v9 == 51)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(6, "%s:%i Not supported", "NFDriverGetSWIOTemperature", 9791);
      }

      dispatch_get_specific(*v10);
      v6 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136446466;
      v30 = "NFDriverGetSWIOTemperature";
      v31 = 1024;
      v32 = 9791;
      v7 = "%{public}s:%i Not supported";
      goto LABEL_13;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverGetSWIOTemperature", 9794, v9);
    }

    dispatch_get_specific(*v10);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "NFDriverGetSWIOTemperature";
      v31 = 1024;
      v32 = 9794;
      v33 = 2048;
      *v34 = v9;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", buf, 0x1Cu);
    }

LABEL_25:
    v12 = 1;
    goto LABEL_26;
  }

  if (DWORD1(v37[0]) == 16)
  {
    v13 = 24;
  }

  else
  {
    v13 = 26;
  }

  v14 = *(v26 + v13);
  v15 = v14 / 1000.0;
  if (DWORD1(v37[0]) == 16)
  {
    v20 = 4250.0 / (log(v15 * 2838800000.0 / (v15 * -107400.0 + 108720.0)) + 2.7416) + -273.15;
  }

  else
  {
    v20 = v15 * -69.25 + 150.2;
  }

  v21 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(6, "%s:%i Got %x (%d), returning %lf", "NFDriverGetSWIOTemperature", 9803, v14, v14, *&v20);
  }

  dispatch_get_specific(*v21);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v30 = "NFDriverGetSWIOTemperature";
    v31 = 1024;
    v32 = 9803;
    v33 = 1024;
    *v34 = v14;
    *&v34[4] = 1024;
    *&v34[6] = v14;
    v35 = 2048;
    v36 = v20;
    _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Got %x (%d), returning %lf", buf, 0x28u);
  }

  v12 = 0;
  if (a2)
  {
    *a2 = v20;
  }

LABEL_26:
  _Block_object_dispose(&v25, 8);
  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_297FD2E64(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

uint64_t NFDriverHCISoftReset(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    v6 = sub_297F9DC04();
    pthread_mutex_lock((v6[3] + 8));
    v7 = v6[3];
    ++*v7;
    pthread_mutex_unlock((v7 + 8));
    v8 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FD9874;
    v19 = &unk_29EE88CA8;
    v20 = v6;
    v21 = v5;
    v22 = a1;
    v23 = 256;
    v24 = a2;
    dispatch_async_and_wait(v8, block);
    if (sub_297F9F694(v6))
    {
      v9 = 1;
    }

    else
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i [R-RAW<] Soft Reset", "NFDriverHCISoftReset", 9917);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      v9 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *block = 136446466;
        *&block[4] = "NFDriverHCISoftReset";
        *&block[12] = 1024;
        *&block[14] = 9917;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [R-RAW<] Soft Reset", block, 0x12u);
        v9 = 0;
      }
    }

    sub_297F9FBDC(v6);
    free(v5);
  }

  else
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i failed to allocate buffer", "NFDriverHCISoftReset", 9909);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *block = 136446466;
      *&block[4] = "NFDriverHCISoftReset";
      *&block[12] = 1024;
      *&block[14] = 9909;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to allocate buffer", block, 0x12u);
    }

    v9 = 3;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t NFDriverAntennaSelfTest(uint64_t a1, _DWORD *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, 44);
  if (NFDriverGetControllerInfo(a1, v24))
  {
    if (DWORD1(v24[0]) > 6)
    {
      v8 = sub_297F9DC04();
      pthread_mutex_lock((v8[3] + 8));
      v9 = v8[3];
      ++*v9;
      pthread_mutex_unlock((v9 + 8));
      v8[2] = 0;
      v10 = *(*(a1 + 24) + 560);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = sub_297FD33D4;
      block[3] = &unk_29EE88938;
      block[5] = v8;
      block[6] = 1;
      block[4] = a1;
      dispatch_async(v10, block);
      if (sub_297F9F694(v8))
      {
        v11 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i phLibNfc_AntennaSelfTest FAILED : 0x%llx", "NFDriverAntennaSelfTest", 9981, *v8);
        }

        dispatch_get_specific(*v11);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *v8;
          *buf = 136446722;
          v19 = "NFDriverAntennaSelfTest";
          v20 = 1024;
          v21 = 9981;
          v22 = 2048;
          v23 = v14;
          _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phLibNfc_AntennaSelfTest FAILED : 0x%llx", buf, 0x1Cu);
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
        if (a2)
        {
          *a2 = v8[2];
        }
      }

      sub_297F9FBDC(v8);
    }

    else
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v5 = NFLogGetLogger();
      if (v5)
      {
        v5(6, "%s:%i Hardware not supported", "NFDriverAntennaSelfTest", 9958);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v19 = "NFDriverAntennaSelfTest";
        v20 = 1024;
        v21 = 9958;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hardware not supported", buf, 0x12u);
      }

      v7 = 19;
    }
  }

  else
  {
    v7 = 1;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_297FD33D4(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_AntennaSelfTest();
  if (v5 != 13)
  {
    v6 = v5;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed : 0x%x", "NFDriverAntennaSelfTest_block_invoke", 9974, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "NFDriverAntennaSelfTest_block_invoke";
      v13 = 1024;
      v14 = 9974;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed : 0x%x", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v6);
    sub_297F9FBDC(*(a1 + 40));
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_297FD351C(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (a3 && (*a3 & 1) != 0)
    {
      a2[2] = *(a3 + 4);
      v8 = a4;
    }

    else
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Missing TX LDO data", "_Callback_NFDriverAntennaSelfTest", 9936);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v11 = "_Callback_NFDriverAntennaSelfTest";
        v12 = 1024;
        v13 = 9936;
        v8 = 18;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Missing TX LDO data", buf, 0x12u);
      }

      else
      {
        v8 = 18;
      }
    }

    sub_297F9FB20(a2, v8);
    sub_297F9FBDC(a2);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t NFDriverReadATETrimVersion(uint64_t a1, _WORD *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  memset(v30, 0, 44);
  NFDriverGetControllerInfo(a1, v30);
  if (DWORD1(v30[0]) < 0xE || DWORD1(v30[0]) == 20)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Hardware not supported", "NFDriverReadATETrimVersion", 10002);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136446466;
    v25 = "NFDriverReadATETrimVersion";
    v26 = 1024;
    v27 = 10002;
    v8 = "%{public}s:%i Hardware not supported";
    goto LABEL_16;
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 0x40000000;
  v19[2] = sub_297FD397C;
  v19[3] = &unk_29EE88960;
  v19[4] = &v20;
  v19[5] = a1;
  v9 = sub_297FA1B10(a1, v19);
  v10 = sub_297F9F694(v9);
  sub_297F9FBDC(v9);
  if (v10)
  {
    if (v10 == 51)
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v12(6, "%s:%i Not supported", "NFDriverReadATETrimVersion", 10018);
      }

      dispatch_get_specific(*v11);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136446466;
      v25 = "NFDriverReadATETrimVersion";
      v26 = 1024;
      v27 = 10018;
      v8 = "%{public}s:%i Not supported";
LABEL_16:
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
LABEL_17:
      v13 = 19;
      goto LABEL_18;
    }

    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverReadATETrimVersion", 10021, v10);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "NFDriverReadATETrimVersion";
      v26 = 1024;
      v27 = 10021;
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", buf, 0x1Cu);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (a2)
    {
      *a2 = *(v21 + 12);
    }
  }

LABEL_18:
  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_297FD397C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

uint64_t NFDriverReadPageEraseCounter(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, 44);
  NFDriverGetControllerInfo(a1, v24);
  if (DWORD1(v24[0]) <= 0xD)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Hardware not supported", "NFDriverReadPageEraseCounter", 10038);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 136446466;
    v19 = "NFDriverReadPageEraseCounter";
    v20 = 1024;
    v21 = 10038;
    v7 = "%{public}s:%i Hardware not supported";
LABEL_12:
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x12u);
LABEL_13:
    result = 19;
    goto LABEL_14;
  }

  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = sub_297FD3CA0;
  v17[3] = &unk_29EE88980;
  v17[4] = a2;
  v17[5] = a1;
  v8 = sub_297FA1B10(a1, v17);
  v9 = sub_297F9F694(v8);
  sub_297F9FBDC(v8);
  if (!v9)
  {
    result = 0;
    goto LABEL_14;
  }

  if (v9 == 51)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(6, "%s:%i Not supported", "NFDriverReadPageEraseCounter", 10054);
    }

    dispatch_get_specific(*v10);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 136446466;
    v19 = "NFDriverReadPageEraseCounter";
    v20 = 1024;
    v21 = 10054;
    v7 = "%{public}s:%i Not supported";
    goto LABEL_12;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverReadPageEraseCounter", 10057, v9);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v19 = "NFDriverReadPageEraseCounter";
    v20 = 1024;
    v21 = 10057;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", buf, 0x1Cu);
  }

  result = 1;
LABEL_14:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FD3CA0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

uint64_t NFDriverPrintPageEraseCounter(uint64_t a1, unsigned __int16 *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (*a2 >= 8u)
    {
      v3 = 0;
      v4 = a2 + 8;
      v5 = MEMORY[0x29EDC9730];
      do
      {
        dispatch_get_specific(*v5);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i %02d: %04d %04d %04d %04d %04d %04d %04d %04d", "NFDriverPrintPageEraseCounter", 10076, v3, *(v4 - 3), *(v4 - 2), *(v4 - 1), *v4, v4[1], v4[2], v4[3], v4[4]);
        }

        dispatch_get_specific(*v5);
        v7 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v4 - 3);
          v9 = *(v4 - 2);
          v10 = *(v4 - 1);
          v11 = *v4;
          v12 = v4[1];
          v13 = v4[2];
          v14 = v4[3];
          v15 = v4[4];
          *buf = 136448770;
          v20 = "NFDriverPrintPageEraseCounter";
          v21 = 1024;
          v22 = 10076;
          v23 = 1024;
          v24 = v3;
          v25 = 1024;
          v26 = v8;
          v27 = 1024;
          v28 = v9;
          v29 = 1024;
          v30 = v10;
          v31 = 1024;
          v32 = v11;
          v33 = 1024;
          v34 = v12;
          v35 = 1024;
          v36 = v13;
          v37 = 1024;
          v38 = v14;
          v39 = 1024;
          v40 = v15;
          _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %02d: %04d %04d %04d %04d %04d %04d %04d %04d", buf, 0x48u);
        }

        v16 = v3 + 15;
        v3 += 8;
        v4 += 8;
      }

      while (v16 < *a2);
    }

    result = 0;
  }

  else
  {
    result = 5;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverGetTemporaryPollingPeriod(uint64_t result)
{
  if (result)
  {
    return *(*(result + 24) + 736);
  }

  return result;
}

BOOL NFDriverEnableSMBLogging(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(v20, 0, sizeof(v20));
  DWORD2(v20[0]) = a2;
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a2)
    {
      v6 = "Enabling";
    }

    else
    {
      v6 = "Disabling";
    }

    Logger(6, "%s:%i %s SMB log", "NFDriverEnableSMBLogging", 10106, v6);
  }

  dispatch_get_specific(*v4);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v8 = "Enabling";
    }

    else
    {
      v8 = "Disabling";
    }

    *buf = 136446722;
    v15 = "NFDriverEnableSMBLogging";
    v16 = 1024;
    v17 = 10106;
    v18 = 2080;
    v19 = v8;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s SMB log", buf, 0x1Cu);
  }

  v9 = sub_297FD1CCC(a1, v20);
  v10 = sub_297F9F694(v9);
  if (!v10)
  {
    *(*(a1 + 24) + 769) = a2;
  }

  v11 = v10 == 0;
  sub_297F9FBDC(v9);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297FD4040(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

uint64_t NFDriverGetReaderProhibitTimer(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 0x40000000;
  v24[2] = sub_297FD440C;
  v24[3] = &unk_29EE889D0;
  v24[4] = &v25;
  v24[5] = a1;
  v3 = sub_297FA1B10(a1, v24);
  v4 = sub_297F9F694(v3);
  sub_297F9FBDC(v3);
  if (v4)
  {
    if (v4 == 51)
    {
      goto LABEL_8;
    }

    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverGetReaderProhibitTimer", 10164, v4);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446722;
    v30 = "NFDriverGetReaderProhibitTimer";
    v31 = 1024;
    v32 = 10164;
    v33 = 2048;
    v34 = v4;
    v8 = "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx";
    v9 = v7;
    v10 = 28;
LABEL_7:
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v14 = 0;
  v15 = *(v26 + 6);
  if (v15 > 10)
  {
    if (v15 == 11)
    {
      v14 = "HRMST";
    }

    else if (v15 == 255)
    {
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(3, "%s:%i Invalid prohibit timer ID - command not supported", "NFDriverGetReaderProhibitTimer", 10181);
      }

      dispatch_get_specific(*v16);
      v18 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136446466;
      v30 = "NFDriverGetReaderProhibitTimer";
      v31 = 1024;
      v32 = 10181;
      v8 = "%{public}s:%i Invalid prohibit timer ID - command not supported";
      v9 = v18;
      v10 = 18;
      goto LABEL_7;
    }
  }

  else if (v15)
  {
    if (v15 == 10)
    {
      v14 = "SERMST";
    }
  }

  else
  {
    v14 = "None";
  }

  v19 = *(v26 + 15) + 1000 * *(v26 + 14);
  v20 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i timerID=%s, remaining=%dms", "NFDriverGetReaderProhibitTimer", 10185, v14, v19);
  }

  dispatch_get_specific(*v20);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v30 = "NFDriverGetReaderProhibitTimer";
    v31 = 1024;
    v32 = 10185;
    v33 = 2080;
    v34 = v14;
    v35 = 1024;
    v36 = v19;
    _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i timerID=%s, remaining=%dms", buf, 0x22u);
  }

  v11 = 0;
  if (a2)
  {
    v23 = *(v26 + 6);
    *(a2 + 1) = v23 == 11;
    *a2 = v23 == 10;
    *(a2 + 4) = v19;
  }

LABEL_9:
  _Block_object_dispose(&v25, 8);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_297FD440C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v2 = *(*(*(a1 + 40) + 24) + 576);
  return phLibNfc_Mgt_GetNfccParams();
}

uint64_t sub_297FD4444(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 0x4CuLL, 0x1000040E9AD63BBuLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 0x100000000;
    v4[8] = 1;
    v4[68] = *(a2 + 16);
    if ((*(a2 + 16) - 1) <= 0x2F)
    {
      __memcpy_chk();
    }

    *(v5 + 19) = *(a2 + 8);
    if ((*(a2 + 8) - 1) <= 9)
    {
      __memcpy_chk();
    }

    *(v5 + 69) = *a2;
    *(v5 + 72) = 0;
    *(v5 + 70) = *(a2 + 82);
    *(v5 + 73) = *(a2 + 1);
    v6 = sub_297FD46E0(a1, v5);
    if (sub_297F9F694(v6))
    {
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to configure Type A emulation : 0x%04llx", "NFDriverSetHCETypeAConfig", 10250, *v6);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *v6;
        *buf = 136446722;
        v18 = "NFDriverSetHCETypeAConfig";
        v19 = 1024;
        v20 = 10250;
        v21 = 2048;
        v22 = v10;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure Type A emulation : 0x%04llx", buf, 0x1Cu);
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    sub_297F9FBDC(v6);
    free(v5);
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Allocation failure", "NFDriverSetHCETypeAConfig", 10224);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "NFDriverSetHCETypeAConfig";
      v19 = 1024;
      v20 = 10224;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    v11 = 3;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

void *sub_297FD46E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_297F9DC04();
  pthread_mutex_lock((v4[3] + 8));
  v5 = v4[3];
  ++*v5;
  pthread_mutex_unlock((v5 + 8));
  v6 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FD9E24;
  block[3] = &unk_29EE88CC8;
  block[4] = a1;
  block[5] = a2;
  block[6] = v4;
  dispatch_async_and_wait(v6, block);
  return v4;
}

uint64_t sub_297FD479C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 0x4CuLL, 0x1000040E9AD63BBuLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 0x200000000;
    v4[8] = 1;
    v4[22] = 0;
    v4[17] = 1;
    *(v4 + 9) = *(a2 + 3);
    *(v4 + 13) = *(a2 + 7);
    v4[18] = *a2;
    v4[19] = *(a2 + 2);
    v4[20] = 0;
    v4[21] = *(a2 + 1);
    v6 = sub_297FD46E0(a1, v4);
    if (sub_297F9F694(v6))
    {
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Faled to configure Type B emulation : 0x%04llx", "NFDriverSetHCETypeBConfig", 10292, *v6);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *v6;
        *buf = 136446722;
        v18 = "NFDriverSetHCETypeBConfig";
        v19 = 1024;
        v20 = 10292;
        v21 = 2048;
        v22 = v10;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Faled to configure Type B emulation : 0x%04llx", buf, 0x1Cu);
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    sub_297F9FBDC(v6);
    free(v5);
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Allocation failure", "NFDriverSetHCETypeBConfig", 10268);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "NFDriverSetHCETypeBConfig";
      v19 = 1024;
      v20 = 10268;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    v11 = 3;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t NFDriverInvalidateProhibitTimer(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = sub_297FD4C4C;
  v11[3] = &unk_29EE889F8;
  v11[4] = v12;
  v11[5] = a1;
  v1 = sub_297FA1B10(a1, v11);
  v2 = sub_297F9F694(v1);
  sub_297F9FBDC(v1);
  if (v2)
  {
    if (v2 == 51)
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Not supported", "NFDriverInvalidateProhibitTimer", 10331);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v15 = "NFDriverInvalidateProhibitTimer";
        v16 = 1024;
        v17 = 10331;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not supported", buf, 0x12u);
      }

      v2 = 19;
    }

    else
    {
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v7 = NFLogGetLogger();
      if (v7)
      {
        v7(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverInvalidateProhibitTimer", 10334, v2);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v15 = "NFDriverInvalidateProhibitTimer";
        v16 = 1024;
        v17 = 10334;
        v18 = 2048;
        v19 = v2;
        _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", buf, 0x1Cu);
      }

      v2 = 1;
    }
  }

  _Block_object_dispose(v12, 8);
  v9 = *MEMORY[0x29EDCA608];
  return v2;
}

void sub_297FD4C80(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverSendMFGCommand(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a2 - 40) >= 0x18 || ((0xC89F21u >> (a2 - 40)) & 1) == 0)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid opcode 0x%x", "NFDriverSendMFGCommand", 10386, a2);
    }

    dispatch_get_specific(*v12);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446722;
    v35 = "NFDriverSendMFGCommand";
    v36 = 1024;
    v37 = 10386;
    v38 = 1024;
    LODWORD(v39) = a2;
    goto LABEL_13;
  }

  v7 = dword_297FDB704[(a2 - 40)];
  if (a3)
  {
    v8 = sub_297FA02E4(*(a3 + 8), *a3);
    v33 = v8;
    if (!v8)
    {
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v10(3, "%s:%i Invalid opcode 0x%x", "NFDriverSendMFGCommand", 10393, a2);
      }

      dispatch_get_specific(*v9);
      v11 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136446722;
      v35 = "NFDriverSendMFGCommand";
      v36 = 1024;
      v37 = 10393;
      v38 = 1024;
      LODWORD(v39) = a2;
LABEL_13:
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid opcode 0x%x", buf, 0x18u);
LABEL_14:
      v14 = 5;
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 0x40000000;
  v26[2] = sub_297FD510C;
  v26[3] = &unk_29EE88A20;
  v28 = a2;
  v26[4] = &v29;
  v26[5] = a1;
  v27 = v7;
  v26[6] = v8;
  v17 = sub_297FA1B10(a1, v26);
  v18 = sub_297F9F694(v17);
  sub_297F9FBDC(v17);
  sub_297FA0714(&v33);
  if (v18)
  {
    if (v18 == 51)
    {
      v19 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(6, "%s:%i Not supported", "NFDriverSendMFGCommand", 10414);
      }

      dispatch_get_specific(*v19);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "NFDriverSendMFGCommand";
        v36 = 1024;
        v37 = 10414;
        _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not supported", buf, 0x12u);
      }

      v14 = 19;
    }

    else
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i phLibNfc_Mgt_RawCtrlMsgTransceive failed 0x%04llx", "NFDriverSendMFGCommand", 10417, v18);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v35 = "NFDriverSendMFGCommand";
        v36 = 1024;
        v37 = 10417;
        v38 = 2048;
        v39 = v18;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_RawCtrlMsgTransceive failed 0x%04llx", buf, 0x1Cu);
      }

      v14 = 1;
    }
  }

  else
  {
    if (a4)
    {
      v22 = v30[3];
      *a4 = NFDataRetain();
    }

    if (v30[3])
    {
      NFDataRelease();
    }

    v14 = 0;
  }

LABEL_15:
  _Block_object_dispose(&v29, 8);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_297FD510C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Sending 2F 0x%x to FW", "NFDriverSendMFGCommand_block_invoke", 10399, *(a1 + 60));
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 60);
    *buf = 136446722;
    v14 = "NFDriverSendMFGCommand_block_invoke";
    v15 = 1024;
    v16 = 10399;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Sending 2F 0x%x to FW", buf, 0x18u);
  }

  *(a2 + 16) = *(*(a1 + 32) + 8) + 24;
  v8 = *(a1 + 48);
  v9 = *(*(*(a1 + 40) + 24) + 576);
  v10 = *(a1 + 56);
  result = phLibNfc_Mgt_RawCtrlMsgTransceive();
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297FD5254(uint64_t a1, void **a2, uint64_t *a3, unsigned int a4)
{
  v36 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    if (a3 && a2[2])
    {
      v21 = a2[2];
      v23 = a4;
      v34 = 0u;
      v35 = 0u;
      *v33 = 0u;
      v6 = *(a3 + 2);
      v7 = *a3;
      v8 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a3 + 2);
        *buf = 136315906;
        v26 = "_Callback_NFDriverSendMFGCommand";
        v27 = 1024;
        v28 = 10354;
        v29 = 2082;
        v30 = "MFG command reply: ";
        v31 = 2048;
        v32 = v11;
        _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
      }

      if (Logger)
      {
        Logger(6, "%s:%i %s %lu bytes :", "_Callback_NFDriverSendMFGCommand", 10354, "MFG command reply: ", *(a3 + 2));
      }

      v22 = a3;
      if (v6)
      {
        v12 = 0;
        do
        {
          v13 = 0;
          v14 = &v33[__sprintf_chk(v33, 0, 0x30uLL, "%04lX: ", v12)];
          do
          {
            v15 = *(v7 + v12++);
            v16 = sprintf(v14, "0x%02X ", v15);
            if (v13 > 6)
            {
              break;
            }

            v14 += v16;
            ++v13;
          }

          while (v12 < v6);
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v26 = v33;
            _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }

          if (Logger)
          {
            Logger(6, "%s", v33);
          }
        }

        while (v12 < v6);
      }

      v18 = *v22;
      v19 = *(v22 + 2);
      *v21 = NFDataCreateWithBytes();
      v5 = a2;
      a4 = v23;
    }

    sub_297F9FB20(v5, a4);
    sub_297F9FBDC(v5);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_297FD54EC(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  ClrAssertRegs = phLibNfc_Mgt_GetClrAssertRegs();
  if (ClrAssertRegs != 13)
  {
    v7 = ClrAssertRegs;
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverGetClrAssertRegs_block_invoke", 1439, v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "_Async_NFDriverGetClrAssertRegs_block_invoke";
      v14 = 1024;
      v15 = 1439;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v7);
    sub_297F9FBDC(*(a1 + 48));
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297FD5638(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  sub_297F9FB20(a2, a4);

  sub_297F9FBDC(a2);
}

void sub_297FD5678(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v2 = *(*(a1 + 32) + 24);
  LODWORD(v32) = 1;
  v3 = MEMORY[0x29EDC9730];
  if (*(a1 + 48))
  {
    v4 = *(v2 + 692);
    if ((v4 & 8) != 0)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Enabling single poll headless mode", "_Async_NFDriverSetHeadlessMode_block_invoke", 1573);
      }

      dispatch_get_specific(*v3);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
        v28 = 1024;
        v29 = 1573;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling single poll headless mode", buf, 0x12u);
      }

      v8 = 16;
      goto LABEL_37;
    }

    if (*(v2 + 692))
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(6, "%s:%i Enabling TypeF headless mode", "_Async_NFDriverSetHeadlessMode_block_invoke", 1578);
      }

      dispatch_get_specific(*v3);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
        v28 = 1024;
        v29 = 1578;
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling TypeF headless mode", buf, 0x12u);
      }

      v5 = 2;
      DWORD2(v32) = 2;
      v4 = *(v2 + 692);
      if ((v4 & 2) == 0)
      {
LABEL_5:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          if (v5)
          {
            goto LABEL_38;
          }

          dispatch_get_specific(*v3);
          v6 = NFLogGetLogger();
          if (v6)
          {
            v6(6, "%s:%i Enabling ECP mode since no other is selected.", "_Async_NFDriverSetHeadlessMode_block_invoke", 1592);
          }

          dispatch_get_specific(*v3);
          v7 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
            v28 = 1024;
            v29 = 1592;
            _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling ECP mode since no other is selected.", buf, 0x12u);
          }

          v8 = 4;
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v5 = 0;
      if ((*(v2 + 692) & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    dispatch_get_specific(*v3);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(6, "%s:%i Enabling ECP headless mode", "_Async_NFDriverSetHeadlessMode_block_invoke", 1582);
    }

    dispatch_get_specific(*v3);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
      v28 = 1024;
      v29 = 1582;
      _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling ECP headless mode", buf, 0x12u);
    }

    v5 |= 4u;
    DWORD2(v32) = v5;
    if ((*(v2 + 692) & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_32:
    dispatch_get_specific(*v3);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(6, "%s:%i Enabling Generic-A headless mode", "_Async_NFDriverSetHeadlessMode_block_invoke", 1586);
    }

    dispatch_get_specific(*v3);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
      v28 = 1024;
      v29 = 1586;
      _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling Generic-A headless mode", buf, 0x12u);
    }

    v8 = v5 | 8;
LABEL_37:
    DWORD2(v32) = v8;
    goto LABEL_38;
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(6, "%s:%i Disabling headless mode", "_Async_NFDriverSetHeadlessMode_block_invoke", 1569);
  }

  dispatch_get_specific(*v3);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
    v28 = 1024;
    v29 = 1569;
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Disabling headless mode", buf, 0x12u);
  }

  DWORD2(v32) = 0;
LABEL_38:
  v19 = *(a1 + 40);
  v20 = *(*(*(a1 + 32) + 24) + 576);
  v21 = phLibNfc_Mgt_SetNfccParams();
  if (v21 != 13)
  {
    v22 = v21;
    dispatch_get_specific(*v3);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i status=0x%04X", "_Async_NFDriverSetHeadlessMode_block_invoke", 1603, v22);
    }

    dispatch_get_specific(*v3);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "_Async_NFDriverSetHeadlessMode_block_invoke";
      v28 = 1024;
      v29 = 1603;
      v30 = 1024;
      v31 = v22;
      _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v22);
    sub_297F9FBDC(*(a1 + 40));
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_297FD5BFC(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FD5C3C(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  memset(v40, 0, sizeof(v40));
  v2 = *(*(a1 + 48) + 24);
  *(v2 + 763) = 0;
  v3 = *(v2 + 576);
  SecureElementList = phLibNfc_SE_GetSecureElementList();
  if (!SecureElementList)
  {
    v11 = 3;
    v12 = (v40 | 0xC);
    while (*(v12 - 1) != 1)
    {
      v12 += 4;
      if (!--v11)
      {
        v13 = *(*(a1 + 48) + 24);
        v14 = *(v13 + 528);
        if (v14)
        {
          free(v14);
          v13 = *(*(a1 + 48) + 24);
        }

        *(v13 + 528) = 0;
LABEL_13:
        v15 = *(a1 + 56);
        v16 = 0;
LABEL_14:
        sub_297F9FB20(v15, v16);
        sub_297F9FBDC(*(a1 + 56));
        goto LABEL_15;
      }
    }

    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Found eSE state=%d", "_NFDriverRecoverESE_block_invoke", 3857, *v12);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *v12;
      *buf = 136446722;
      *&buf[4] = "_NFDriverRecoverESE_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 3857;
      *&buf[18] = 1024;
      *&buf[20] = v21;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found eSE state=%d", buf, 0x18u);
    }

    v22 = *v12;
    v23 = *v12 == 4;
    v24 = *(a1 + 48);
    v25 = *(v24 + 24);
    v26 = *(v25 + 528);
    if (v26)
    {
      *(v26 + 8) = *(v12 - 3);
      v27 = *(*(a1 + 48) + 24);
      v28 = *(v27 + 528);
      *(v28 + 24) = v23;
      if (v22 != 4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v29 = sub_297FA01E8(*(v25 + 620), *(v25 + 624)) - 5;
      if (v29 >= 8)
      {
        v30 = 6;
      }

      else
      {
        v30 = dword_297FDB764[v29];
      }

      *(*(*(a1 + 48) + 24) + 528) = sub_297FAB620(v24, v30, v23, *(v12 - 3));
      v27 = *(*(a1 + 48) + 24);
      v28 = *(v27 + 528);
      if (!v28 || *(v28 + 24) != 1)
      {
        goto LABEL_13;
      }
    }

    *(*(*(*(a1 + 40) + 8) + 24) + 8) = 1;
    v31 = *(v27 + 576);
    v32 = *(v28 + 8);
    v33 = *(*(*(a1 + 40) + 8) + 24);
    if ((*(v27 + 756) - 14) > 4)
    {
      v38 = phLibNfc_SE_SetMode();
      if (v38 == 13)
      {
        goto LABEL_15;
      }

      v35 = v38;
      dispatch_get_specific(*v18);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v39(3, "%s:%i status=0x%04X", "_NFDriverRecoverESE_block_invoke", 3905, v35);
      }

      dispatch_get_specific(*v18);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverRecoverESE_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 3905;
        *&buf[18] = 1024;
        *&buf[20] = v35;
        goto LABEL_39;
      }
    }

    else
    {
      v34 = phLibNfc_SE_SetMode();
      if (v34 == 13)
      {
        goto LABEL_15;
      }

      v35 = v34;
      dispatch_get_specific(*v18);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v36(3, "%s:%i status=0x%04X", "_NFDriverRecoverESE_block_invoke", 3890, v35);
      }

      dispatch_get_specific(*v18);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverRecoverESE_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 3890;
        *&buf[18] = 1024;
        *&buf[20] = v35;
LABEL_39:
        _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }
    }

    v15 = *(a1 + 56);
    v16 = v35;
    goto LABEL_14;
  }

  v5 = SecureElementList;
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(3, "%s:%i status=0x%04X", "_NFDriverRecoverESE_block_invoke", 3849, v5);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "_NFDriverRecoverESE_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 3849;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
  }

  v9 = *(a1 + 48);
  v10 = *(*(v9 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FB7B1C;
  v42 = &unk_29EE880F8;
  v43 = v9;
  dispatch_async(v10, buf);
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_15:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_297FD6174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a2 || (v6 = *a2) == 0)
  {
    __assert_rtn("_Callback_NFDriverESERecovery_SetSEModePowerWired", "NFDriver.c", 3748, "mutex != NULL");
  }

  v7 = a5;
  if (a5 != 67)
  {
    if (a5)
    {
      goto LABEL_39;
    }

    v8 = a2 + 16;
    v9 = *(*(a2 + 16) + 44);
    if (v9)
    {
      if (v9 == 2)
      {
        v21 = 0;
      }

      else
      {
        if (v9 == 1)
        {
          v10 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(6, "%s:%i SE recovery complete. Leaving SE in wired", "_Callback_NFDriverESERecovery_SetSEModePowerWired", 3754);
          }

          dispatch_get_specific(*v10);
          v12 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v31 = "_Callback_NFDriverESERecovery_SetSEModePowerWired";
            v32 = 1024;
            v33 = 3754;
            _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE recovery complete. Leaving SE in wired", buf, 0x12u);
          }

          v13 = 0;
          goto LABEL_41;
        }

        v21 = 3;
      }
    }

    else
    {
      v21 = 1;
    }

    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(6, "%s:%i Resuming SE mode to 0x%x (stored routing mode is %d)", "_resumeSEMode", 3703, v21, *(*v8 + 44));
    }

    dispatch_get_specific(*v22);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*v8 + 44);
      *buf = 136446978;
      v31 = "_resumeSEMode";
      v32 = 1024;
      v33 = 3703;
      v34 = 1024;
      v35 = v21;
      v36 = 1024;
      v37 = v25;
      _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Resuming SE mode to 0x%x (stored routing mode is %d)", buf, 0x1Eu);
    }

    v26 = phLibNfc_SE_SetMode();
    if (v26 == 13)
    {
      goto LABEL_42;
    }

    v7 = v26;
    dispatch_get_specific(*v22);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i Failed to restore SE mode : 0x%x", "_Callback_NFDriverESERecovery_SetSEModePowerWired", 3766, v7);
    }

    dispatch_get_specific(*v22);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "_Callback_NFDriverESERecovery_SetSEModePowerWired";
      v32 = 1024;
      v33 = 3766;
      v34 = 1024;
      v35 = v7;
      _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to restore SE mode : 0x%x", buf, 0x18u);
    }

    v20 = 1;
LABEL_38:
    *(*v8 + 44) = v20;
LABEL_39:
    if (v7)
    {
LABEL_40:
      v13 = v7;
LABEL_41:
      sub_297F9FB20(v6, v13);
      sub_297F9FBDC(v6);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v14 = *(a2 + 8);
  v15 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v16 = NFLogGetLogger();
  if (v14 >= 3)
  {
    if (v16)
    {
      v16(3, "%s:%i Failed to power cycle SE... it's not coming back folks", "_Callback_NFDriverESERecovery_SetSEModePowerWired", 3772);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v31 = "_Callback_NFDriverESERecovery_SetSEModePowerWired";
      v32 = 1024;
      v33 = 3772;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to power cycle SE... it's not coming back folks", buf, 0x12u);
    }

    v7 = 67;
    goto LABEL_40;
  }

  if (v16)
  {
    v16(6, "%s:%i SE power up failed. Trying to power off", "_Callback_NFDriverESERecovery_SetSEModePowerWired", 3775);
  }

  dispatch_get_specific(*v15);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "_Callback_NFDriverESERecovery_SetSEModePowerWired";
    v32 = 1024;
    v33 = 3775;
    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE power up failed. Trying to power off", buf, 0x12u);
  }

  ++*(a2 + 8);
  v19 = phLibNfc_SE_SetMode();
  if (v19 != 13)
  {
    v7 = v19;
    v8 = a2 + 16;
    v20 = 6;
    goto LABEL_38;
  }

LABEL_42:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_297FD664C(uint64_t a1, void ***a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a2 || (v5 = *a2) == 0)
  {
    __assert_rtn("_Callback_NFDriverESERecovery_SetSEModePowerOff", "NFDriver.c", 3720, "mutex != NULL");
  }

  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (a5)
  {
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Callback_NFDriverESERecovery_SetSEModePowerOff", 3736, a5);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446722;
    v15 = "_Callback_NFDriverESERecovery_SetSEModePowerOff";
    v16 = 1024;
    v17 = 3736;
    v18 = 1024;
    v19 = a5;
LABEL_17:
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
LABEL_18:
    sub_297F9FB20(v5, a5);
    sub_297F9FBDC(v5);
    goto LABEL_19;
  }

  if (Logger)
  {
    Logger(6, "%s:%i Powering SE back ON", "_Callback_NFDriverESERecovery_SetSEModePowerOff", 3724);
  }

  dispatch_get_specific(*v7);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "_Callback_NFDriverESERecovery_SetSEModePowerOff";
    v16 = 1024;
    v17 = 3724;
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Powering SE back ON", buf, 0x12u);
  }

  v11 = phLibNfc_SE_SetMode();
  if (v11 != 13)
  {
    a5 = v11;
    dispatch_get_specific(*v7);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i status=0x%04X", "_Callback_NFDriverESERecovery_SetSEModePowerOff", 3731, a5);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446722;
    v15 = "_Callback_NFDriverESERecovery_SetSEModePowerOff";
    v16 = 1024;
    v17 = 3731;
    v18 = 1024;
    v19 = a5;
    goto LABEL_17;
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_297FD68FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a2 || (v6 = *a2) == 0)
  {
    __assert_rtn("_Callback_NFDriverESERecovery_SetSEModeResume", "NFDriver.c", 3676, "mutex != NULL");
  }

  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (a5)
  {
    if (Logger)
    {
      Logger(3, "%s:%i Failed to resume SE mode", "_Callback_NFDriverESERecovery_SetSEModeResume", 3680);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "_Callback_NFDriverESERecovery_SetSEModeResume";
      v15 = 1024;
      v16 = 3680;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to resume SE mode", buf, 0x12u);
    }

    *(*(a2 + 16) + 44) = 1;
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i SE is now recovered and set to prior mode", "_Callback_NFDriverESERecovery_SetSEModeResume", 3684);
    }

    dispatch_get_specific(*v8);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "_Callback_NFDriverESERecovery_SetSEModeResume";
      v15 = 1024;
      v16 = 3684;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE is now recovered and set to prior mode", buf, 0x12u);
    }
  }

  sub_297F9FB20(v6, a5);
  sub_297F9FBDC(v6);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_297FD6AE0(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_Mgt_ConfigurePowerMode();
  if (v5 != 13)
  {
    v6 = v5;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverSetStandbyMode_block_invoke", 1049, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_Async_NFDriverSetStandbyMode_block_invoke";
      v13 = 1024;
      v14 = 1049;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(*(a1 + 32) + 24) + 576), 0, (*(a1 + 40) + 12), (*(a1 + 40) + 8));
    sub_297F9FB20(*(a1 + 40), v6);
    sub_297F9FBDC(*(a1 + 40));
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_297FD6C44(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    sub_297FBE498(a1, 0, (a2 + 12), (a2 + 8));
  }

  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FD6C9C(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = phLibNfc_Mgt_ConfigRoutingTable();
  if (v6 != 13)
  {
    v7 = v6;
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverConfigRoutingTable_block_invoke", 3619, v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "_Async_NFDriverConfigRoutingTable_block_invoke";
      v14 = 1024;
      v15 = 3619;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v7);
    sub_297F9FBDC(*(a1 + 48));
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297FD6DE8(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FD6E28(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 32) + 24);
  v3 = *(v2 + 584) << 61;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30[0] = *(v2 + 560);
  v30[1] = sub_297FD7254 & (v3 >> 63);
  v31 = 0;
  v4 = NFIsRestoreOS();
  v5 = *(*(a1 + 32) + 24);
  if (v4)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (*(v5 + 586) >> 5) & 1;
  }

  LOBYTE(v31) = v6;
  BYTE1(v31) = *(v5 + 764);
  v7 = NFIsInternalBuild();
  v8 = *(a1 + 32);
  if (v7 && (*(*(v8 + 24) + 587) & 4) != 0 || (*(v8 + 56), !NFHardwareHasFollowerReset()))
  {
    HIDWORD(v36) = 0;
    BYTE2(v31) = 0;
  }

  else
  {
    HIDWORD(v36) = 1;
    BYTE2(v31) = 1;
  }

  *&v35 = v30;
  *(&v35 + 1) = v30;
  DWORD2(v33) = 0;
  v9 = *(a1 + 32);
  v10 = *v9;
  v11 = *(v9 + 1);
  if (*v9 == 3)
  {
    v34 = *(v9 + 2);
    v12 = 6;
  }

  else
  {
    *&v33 = *(v9 + 1);
    if (v10 == 2)
    {
      v12 = 7;
    }

    else
    {
      v12 = 1;
    }
  }

  DWORD2(v32) = v12;
  if (*(v9 + 56) == 1)
  {
    DWORD2(v33) = 1;
  }

  MwVersionStr = phLibNfc_Mgt_GetMwVersionStr();
  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (MwVersionStr)
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s", "_Async_NFDriverOpen_block_invoke", 375, MwVersionStr);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v38 = "_Async_NFDriverOpen_block_invoke";
      v39 = 1024;
      v40 = 375;
      v41 = 2080;
      v42 = MwVersionStr;
      v17 = "%{public}s:%i %s";
      v18 = v16;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 28;
LABEL_25:
      _os_log_impl(&dword_297F97000, v18, v19, v17, buf, v20);
    }
  }

  else
  {
    if (Logger)
    {
      Logger(3, "%s:%i MW Version is NULL?", "_Async_NFDriverOpen_block_invoke", 377);
    }

    dispatch_get_specific(*v14);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v38 = "_Async_NFDriverOpen_block_invoke";
      v39 = 1024;
      v40 = 377;
      v17 = "%{public}s:%i MW Version is NULL?";
      v18 = v21;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 18;
      goto LABEL_25;
    }
  }

  v22 = *(*(a1 + 32) + 24);
  v23 = phLibNfc_Mgt_ConfigureDriver();
  if (v23)
  {
    v24 = v23;
    dispatch_get_specific(*v14);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v25(3, "%s:%i status=0x%04X", "_Async_NFDriverOpen_block_invoke", 384, v24);
    }

    dispatch_get_specific(*v14);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v38 = "_Async_NFDriverOpen_block_invoke";
      v39 = 1024;
      v40 = 384;
      v41 = 1024;
      LODWORD(v42) = v24;
LABEL_36:
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  else
  {
    v27 = *(*(*(a1 + 32) + 24) + 576);
    v24 = phTmlNfc_RegisterSpmiErrorCallback();
    if (v24)
    {
      dispatch_get_specific(*v14);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v28(3, "%s:%i status=0x%04X", "_Async_NFDriverOpen_block_invoke", 390, v24);
      }

      dispatch_get_specific(*v14);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v38 = "_Async_NFDriverOpen_block_invoke";
        v39 = 1024;
        v40 = 390;
        v41 = 1024;
        LODWORD(v42) = v24;
        goto LABEL_36;
      }
    }
  }

  sub_297F9FB20(*(a1 + 40), v24);
  sub_297F9FBDC(*(a1 + 40));
  v29 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297FD7254(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (byte_2A18BD36C)
  {
    v6 = "REDACTED";
    v7 = 8;
  }

  else
  {
    v6 = a4;
    v7 = a5;
  }

  return MEMORY[0x2A1C70E20](a1, a3, v6, v7);
}

void sub_297FD7280(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = NFDataCreateWithBytes();
    v3 = *(*(a1 + 24) + 568);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FD73E0;
    block[3] = &unk_29EE88B28;
    block[4] = a1;
    block[5] = v2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Got null callback context", "_NFSpmiErrorCallback", 240);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_NFSpmiErrorCallback";
      v11 = 1024;
      v12 = 240;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Got null callback context", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297FD73E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = *(v3 + 248);
  v5 = *(v3 + 512);
  if ((*(v3 + 588) & 0x40) != 0)
  {
    NFDriverTriggerCoreDump(v2);
  }

  if (v4)
  {
    v13 = 0;
    v12 = 0;
    v6 = *(a1 + 40);
    v7 = *v6;
    v8 = v6[1];
    phTmlNfc_ParseSpmiDrvErrorStatus();
    v11 = 0;
    v4(v5, &v11);
  }

  v9 = *(a1 + 40);
  return NFDataRelease();
}

void sub_297FD7478(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 32) + 24) + 576);
  v3 = phLibNfc_Mgt_UnConfigureDriver();
  if (v3)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverClose_block_invoke", 413, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_Async_NFDriverClose_block_invoke";
      v10 = 1024;
      v11 = 413;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  sub_297F9FB20(*(a1 + 40), v3);
  sub_297F9FBDC(*(a1 + 40));
  v7 = *MEMORY[0x29EDCA608];
}

void sub_297FD75A8(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  FwVersion = phLibNfc_Mgt_GetFwVersion();
  if (FwVersion != 13)
  {
    v6 = FwVersion;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverGetFirmwareVersion_block_invoke", 453, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_Async_NFDriverGetFirmwareVersion_block_invoke";
      v13 = 1024;
      v14 = 453;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v6);
    sub_297F9FBDC(*(a1 + 48));
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_297FD76F0(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  sub_297F9FB20(a2, a4);

  sub_297F9FBDC(a2);
}

BOOL sub_297FD7730(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v38 = *MEMORY[0x29EDCA608];
  v6 = a2 - 1;
  if (a2 != 1 && a3 == 3)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phLibNfc_SE_ActModePwrOff is only available on ese - switching to ActModeOff", "_NFDriverSetSEMode", 4066);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverSetSEMode";
      *&buf[12] = 1024;
      *&buf[14] = 4066;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_SE_ActModePwrOff is only available on ese - switching to ActModeOff", buf, 0x12u);
    }

    v3 = 1;
  }

  v9 = sub_297FCBF9C(a1, a2);
  if (v9)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (a2 == 4 || v10)
  {
    if (v6 > 7)
    {
      v14 = "UNKNOWN";
    }

    else
    {
      v14 = (&off_29EE88CE8)[v6];
    }

    v15 = (&off_29EE88D28)[v3];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(6, "%s:%i (%s) mode=%s", "_NFDriverSetSEMode", 4101, v14, v15);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      *&buf[4] = "_NFDriverSetSEMode";
      *&buf[12] = 1024;
      *&buf[14] = 4101;
      *&buf[18] = 2080;
      *&buf[20] = v14;
      *&buf[28] = 2080;
      *&buf[30] = v15;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i (%s) mode=%s", buf, 0x26u);
    }

    v18 = 1;
    while (1)
    {
      sub_297FB8080(a1);
      v19 = sub_297F9DC04();
      pthread_mutex_lock((v19[3] + 8));
      v20 = v19[3];
      ++*v20;
      pthread_mutex_unlock((v20 + 8));
      v21 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FD7E34;
      *&buf[24] = &unk_29EE88B88;
      *&buf[32] = a1;
      v35 = v10;
      v37 = v3;
      v36 = v19;
      dispatch_async_and_wait(v21, buf);
      v22 = sub_297F9F694(v19);
      dispatch_semaphore_signal(*(*(a1 + 24) + 552));
      if (!v22)
      {
        sub_297F9FBDC(v19);
        goto LABEL_41;
      }

      v23 = *v19;
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v23 != 67)
      {
        break;
      }

      if (v24)
      {
        v24(3, "%s:%i eSE power-on failed! (%d/%d)", "_NFDriverSetSEMode", 4112, v18, 3);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "_NFDriverSetSEMode";
        *&buf[12] = 1024;
        *&buf[14] = 4112;
        *&buf[18] = 1024;
        *&buf[20] = v18;
        *&buf[24] = 1024;
        *&buf[26] = 3;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i eSE power-on failed! (%d/%d)", buf, 0x1Eu);
      }

      sub_297F9FBDC(v19);
      if (++v18 == 4)
      {
        goto LABEL_50;
      }
    }

    if (v23 == 147)
    {
      if (v24)
      {
        v24(3, "%s:%i status=0x%04llX", "_NFDriverSetSEMode", 4120, *v19);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *v19;
        *buf = 136446722;
        *&buf[4] = "_NFDriverSetSEMode";
        *&buf[12] = 1024;
        *&buf[14] = 4120;
        *&buf[18] = 2048;
        *&buf[20] = v27;
        _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }

      sub_297F9FBDC(v19);
      v28 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      *&buf[32] = a1;
      dispatch_async(v28, buf);
      usleep(0x7A120u);
      NFDriverSimulateCrash(a1, 57007, "Command rejected");
    }

    else
    {
      if (v24)
      {
        v24(3, "%s:%i status=0x%04llX", "_NFDriverSetSEMode", 4128, *v19);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *v19;
        *buf = 136446722;
        *&buf[4] = "_NFDriverSetSEMode";
        *&buf[12] = 1024;
        *&buf[14] = 4128;
        *&buf[18] = 2048;
        *&buf[20] = v30;
        _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }

      v31 = *(v19 + 6);
      v32 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      *&buf[32] = a1;
      dispatch_async(v32, buf);
      if (v31 == 44 || v31 == 34)
      {
        NFDriverSimulateCrash(a1, 57005, "_NFDriverSetSEMode: CRC error or response timeout");
      }

      sub_297F9FBDC(v19);
    }

    goto LABEL_50;
  }

  if (v3 == 1)
  {
LABEL_41:
    result = 1;
  }

  else
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i No SE handle", "_NFDriverSetSEMode", 4073);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverSetSEMode";
      *&buf[12] = 1024;
      *&buf[14] = 4073;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i No SE handle", buf, 0x12u);
LABEL_50:
      result = 0;
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297FD7E34(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = phLibNfc_SE_SetMode();
  v7 = v6;
  if (!v6)
  {
LABEL_8:
    sub_297F9FB20(*(a1 + 48), v7);
    sub_297F9FBDC(*(a1 + 48));
    goto LABEL_9;
  }

  if (v6 != 13)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverSetSEMode_block_invoke", 3424, v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "_Async_NFDriverSetSEMode_block_invoke";
      v14 = 1024;
      v15 = 3424;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(*(a1 + 32) + 24) + 576), 0, (*(a1 + 48) + 12), (*(a1 + 48) + 8));
    goto LABEL_8;
  }

LABEL_9:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_297FD7FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    sub_297FBE498(a1, 0, (a2 + 12), (a2 + 8));
  }

  sub_297F9FB20(a2, a5);

  sub_297F9FBDC(a2);
}

void sub_297FD7FFC(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_Mgt_eSeSvddControl();
  if (v5 != 13)
  {
    v6 = v5;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverSetSEAlwaysOn_block_invoke", 3463, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_Async_NFDriverSetSEAlwaysOn_block_invoke";
      v13 = 1024;
      v14 = 3463;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(*(a1 + 32) + 24) + 576), 0, (*(a1 + 40) + 12), (*(a1 + 40) + 8));
    sub_297F9FB20(*(a1 + 40), v6);
    sub_297F9FBDC(*(a1 + 40));
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_297FD8160(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    sub_297FBE498(a1, 0, (a2 + 12), (a2 + 8));
  }

  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FD81B8(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_TriggerRfFieldOnNtf();
  if (v5)
  {
    v6 = v5 == 13;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to setup delayed wake, status = 0x%04X", "_Async_NFDriverTriggerDelayedWake_block_invoke", 1081, v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "_Async_NFDriverTriggerDelayedWake_block_invoke";
      v14 = 1024;
      v15 = 1081;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup delayed wake, status = 0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v7);
    sub_297F9FBDC(*(a1 + 40));
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297FD8304(uint64_t a1, void **a2, unsigned int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to setup delayed wake, status = 0x%04X", "_Callback_NFDriverDelayedWake", 1062, a3);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "_Callback_NFDriverDelayedWake";
      v11 = 1024;
      v12 = 1062;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup delayed wake, status = 0x%04X", buf, 0x18u);
    }
  }

  sub_297F9FB20(a2, a3);
  sub_297F9FBDC(a2);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_297FD8424(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (NFIsInternalBuild())
  {
    v2 = *(a1 + 32);
    v3 = *(*(*(a1 + 40) + 24) + 576);
    v4 = *(a1 + 48);
    MemoryDump = phLibNfc_GetMemoryDump();
    v6 = MemoryDump;
    if (MemoryDump)
    {
      if (MemoryDump == 13)
      {
LABEL_9:
        v10 = *MEMORY[0x29EDCA608];
        return;
      }

      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverDumpMemory_block_invoke", 1405, v6);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "_Async_NFDriverDumpMemory_block_invoke";
        v15 = 1024;
        v16 = 1405;
        v17 = 1024;
        v18 = v6;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }
    }

    sub_297F9FB20(*(a1 + 32), v6);
    sub_297F9FBDC(*(a1 + 32));
    goto LABEL_9;
  }

  sub_297F9FB20(*(a1 + 32), 30);
  v11 = *(a1 + 32);
  v12 = *MEMORY[0x29EDCA608];

  sub_297F9FBDC(v11);
}

void sub_297FD85C4(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int a4)
{
  if (!a4)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
    v8 = v7;
    if (v7)
    {
      *v7 = a3[1];
      v9 = **a3;
      v10 = *(*a3 + 2);
      v8[1] = NFDataCreateWithBytes();
    }

    **(a2 + 16) = v8;
  }

  sub_297F9FB20(a2, a4);

  sub_297F9FBDC(a2);
}

uint64_t sub_297FD8660(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 32);
  sub_297F9F5F4(a2, *(a1 + 40));
  v4 = *(a1 + 56);
  v5 = *(*(*(a1 + 48) + 24) + 576);
  v6 = *(a1 + 32);

  return MEMORY[0x2A1C6E548](v5, v4, v6, sub_297FD86CC, a2);
}

void sub_297FD86CC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a2)
  {
    if (a4)
    {
      if (!a5)
      {
        v7 = a2[2];
        v8 = v7[6];
        if (v8)
        {
          v9 = *(a4 + 8);
          v10 = *(v7 + 14);
          if (v9 >= v10)
          {
            v11 = v10;
          }

          else
          {
            v11 = v9;
          }

          memcpy(v8, *a4, v11);
          *(v7 + 14) = v11;
        }
      }
    }

    sub_297F9FB20(a2, a5);

    sub_297F9FBDC(a2);
  }
}

void sub_297FD8754(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v3 + 767) = 1;
  v4 = *(v3 + 576);
  v5 = sub_297FCBF9C(v2, *(a1 + 56));
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = phLibNfc_eSE_Transceive();
  if (v9 != 13)
  {
    v10 = v9;
    *(*(*(a1 + 32) + 24) + 767) = 0;
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverSETransceive_block_invoke", 3589, v10);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "_Async_NFDriverSETransceive_block_invoke";
      v17 = 1024;
      v18 = 3589;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v10);
    sub_297F9FBDC(*(a1 + 48));
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_297FD88DC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a2 || (v7 = a2[2]) == 0)
  {
    __assert_rtn("_Callback_NFDriverSETransceive", "NFDriver.c", 3488, "txContext != NULL");
  }

  if (a6 == 217)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Reset notification. Len = %d", "_Callback_NFDriverSETransceive", 3500, *(a4 + 8));
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a4 + 8);
      *buf = 136446722;
      v22 = "_Callback_NFDriverSETransceive";
      v23 = 1024;
      v24 = 3500;
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Reset notification. Len = %d", buf, 0x18u);
    }

    a6 = 217;
  }

  else if (!a6)
  {
    if (a4 && (v9 = *(a4 + 8), v9 > 1))
    {
      a6 = 0;
      *v7 = v9;
    }

    else
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        if (a4)
        {
          v12 = *(a4 + 8);
        }

        else
        {
          v12 = 0;
        }

        v11(3, "%s:%i Invalid data returned: %d", "_Callback_NFDriverSETransceive", 3492, v12);
      }

      dispatch_get_specific(*v10);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if (a4)
        {
          v18 = *(a4 + 8);
        }

        else
        {
          v18 = 0;
        }

        *buf = 136446722;
        v22 = "_Callback_NFDriverSETransceive";
        v23 = 1024;
        v24 = 3492;
        v25 = 1024;
        v26 = v18;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid data returned: %d", buf, 0x18u);
      }

      a6 = 53261;
    }
  }

  v19 = v7[2];
  if (v19)
  {
    *(*(v19 + 24) + 767) = 0;
  }

  sub_297F9FB20(a2, a6);
  sub_297F9FBDC(a2);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_297FD8B48(double a1, uint64_t a2, void *a3, uint64_t a4, _DWORD *a5, int a6)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!a3 || (v7 = a3[2]) == 0)
  {
    __assert_rtn("_Callback_NFDriverSETransceiveWTX", "NFDriver.c", 3516, "txContext != NULL");
  }

  if (a6 == 74)
  {
    if (a5)
    {
      if (*(v7 + 8))
      {
        LODWORD(a1) = *a5;
        sub_297F9F5F4(a3, *&a1 / 1000.0);
        --*(v7 + 8);
      }

      else
      {
        v19 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i WTX: error, too many WTX", "_Callback_NFDriverSETransceiveWTX", 3527);
        }

        dispatch_get_specific(*v19);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v24 = "_Callback_NFDriverSETransceiveWTX";
          v25 = 1024;
          v26 = 3527;
          _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i WTX: error, too many WTX", buf, 0x12u);
        }

        sub_297F9FB20(a3, 44);
        v22 = *(v7 + 16);
        if (v22)
        {
          *(*(v22 + 24) + 767) = 0;
        }
      }

      goto LABEL_16;
    }

    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(4, "%s:%i WTX: no info", "_Callback_NFDriverSETransceiveWTX", 3535);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "_Callback_NFDriverSETransceiveWTX";
      v25 = 1024;
      v26 = 3535;
      v12 = "%{public}s:%i WTX: no info";
      v13 = v17;
      v14 = 18;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i WTX: error %d", "_Callback_NFDriverSETransceiveWTX", 3539, a6);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "_Callback_NFDriverSETransceiveWTX";
      v25 = 1024;
      v26 = 3539;
      v27 = 1024;
      v28 = a6;
      v12 = "%{public}s:%i WTX: error %d";
      v13 = v11;
      v14 = 24;
LABEL_15:
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_297FD8E24(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(*(*(a1 + 32) + 24) + 576);
  v2 = phTmlNfc_IoCtl();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverQuerySPMIErrors_block_invoke", 139, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "_NFDriverQuerySPMIErrors_block_invoke";
      v10 = 1024;
      v11 = 139;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297FD8F44(uint64_t a1, const void *a2, __int128 *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  v35 = sub_297FA02E4(2u, a2);
  v5 = sub_297FA02E4(0x100u, 0);
  v34 = v5;
  v6 = sub_297FA0380(a1, 37027, v35, v5);
  v7 = sub_297F9F694(v6);
  v8 = MEMORY[0x29EDC9730];
  if (v7)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get RF conf settings.", "_NFDriverGetReaderModeRFConfigRegs", 7988);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v37 = "_NFDriverGetReaderModeRFConfigRegs";
      v38 = 1024;
      v39 = 7988;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF conf settings.", buf, 0x12u);
    }

    sub_297F9FBDC(v6);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    sub_297F9FBDC(v6);
    v11 = malloc_type_calloc(1uLL, v5[2] - 1, 0x100004077774924uLL);
    memcpy(v11, (*v5 + 1), v5[2] - 1);
    v12 = v5[2] != 1;
  }

  sub_297FA0714(&v35);
  sub_297FA0714(&v34);
  if (v7)
  {
    dispatch_get_specific(*v8);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Unable to get RF Conf register values", "_NFDriverApplyRFConfig", 8052);
    }

    dispatch_get_specific(*v8);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v37 = "_NFDriverApplyRFConfig";
      v38 = 1024;
      v39 = 8052;
      v15 = "%{public}s:%i Unable to get RF Conf register values";
LABEL_30:
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (v11 != 0 && v12)
  {
    if (*v11 != *(a3 + 3))
    {
      dispatch_get_specific(*v8);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(6, "%s:%i Values different. Will apply new values", "_NFDriverApplyRFConfig", 8030);
      }

      dispatch_get_specific(*v8);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v37 = "_NFDriverApplyRFConfig";
        v38 = 1024;
        v39 = 8030;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Values different. Will apply new values", buf, 0x12u);
      }

      v18 = sub_297FBA6E8(a1, 6);
      v19 = malloc_type_calloc(1uLL, 0x15uLL, 0x100004077774924uLL);
      if (!v19)
      {
        dispatch_get_specific(*v8);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v30(3, "%s:%i Unable to alloc memory ", "_NFDriverSetReaderModeRFConfigRegsSigned", 7906);
        }

        dispatch_get_specific(*v8);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v37 = "_NFDriverSetReaderModeRFConfigRegsSigned";
          v38 = 1024;
          v39 = 7906;
          _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Unable to alloc memory ", buf, 0x12u);
        }

        goto LABEL_38;
      }

      v20 = v19;
      *v19 = __rev16(v18);
      v21 = *a3;
      *(v19 + 17) = *(a3 + 15);
      *(v19 + 2) = v21;
      v22 = sub_297FA02E4(0x15u, v19);
      v35 = v22;
      free(v20);
      v23 = sub_297FA0380(a1, 224, v22, 0);
      if (sub_297F9F694(v23))
      {
        dispatch_get_specific(*v8);
        v24 = NFLogGetLogger();
        if (v24)
        {
          v24(3, "%s:%i Failed to set RF conf settings.", "_NFDriverSetReaderModeRFConfigRegsSigned", 7920);
        }

        dispatch_get_specific(*v8);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v37 = "_NFDriverSetReaderModeRFConfigRegsSigned";
          v38 = 1024;
          v39 = 7920;
          _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set RF conf settings.", buf, 0x12u);
        }

        sub_297F9FBDC(v23);
        sub_297FA0714(&v35);
LABEL_38:
        dispatch_get_specific(*v8);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v32(3, "%s:%i Failed to set RF config set1.", "_NFDriverApplyRFConfig", 8042);
        }

        dispatch_get_specific(*v8);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v37 = "_NFDriverApplyRFConfig";
          v38 = 1024;
          v39 = 8042;
          _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set RF config set1.", buf, 0x12u);
        }

        v27 = 0;
        goto LABEL_32;
      }

      sub_297F9FBDC(v23);
      sub_297FA0714(&v35);
    }

    v27 = 1;
    goto LABEL_32;
  }

  dispatch_get_specific(*v8);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v26(3, "%s:%i Set output read buffer empty. Not applying new values", "_NFDriverApplyRFConfig", 8047);
  }

  dispatch_get_specific(*v8);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v37 = "_NFDriverApplyRFConfig";
    v38 = 1024;
    v39 = 8047;
    v15 = "%{public}s:%i Set output read buffer empty. Not applying new values";
    goto LABEL_30;
  }

LABEL_31:
  v27 = 0;
  result = 0;
  if (v11)
  {
LABEL_32:
    free(v11);
    result = v27;
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FD958C(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i setting rate: %d", "_NFDriverSetISO15693LocalDataRate_block_invoke", 4544, *(a1 + 40));
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "_NFDriverSetISO15693LocalDataRate_block_invoke";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 4544;
    WORD1(buf[1]) = 1024;
    DWORD1(buf[1]) = v5;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i setting rate: %d", buf, 0x18u);
  }

  memset(buf, 0, sizeof(buf));
  v6 = *(a1 + 40);
  LODWORD(buf[0]) = 8;
  DWORD2(buf[0]) = v6;
  HIDWORD(buf[0]) = v6;
  v7 = *(*(*(a1 + 32) + 24) + 576);
  result = phLibNfc_Mgt_SetNfccParams();
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297FD96EC(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_Mgt_SetNfccParams();
  if (v5 != 13)
  {
    v6 = v5;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverSetNfccParams_block_invoke", 596, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_Async_NFDriverSetNfccParams_block_invoke";
      v13 = 1024;
      v14 = 596;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v6);
    sub_297F9FBDC(*(a1 + 48));
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_297FD9834(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FD9874(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v19 = 3;
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1010040016340ADuLL);
  if (v2)
  {
    v3 = v2;
    *v2 = 20761;
    *(v2 + 2) = 1;
    *(v2 + 1) = 1;
    *(v2 + 1) = &v19;
    *(v2 + 4) = 2000;
    *(v2 + 4) = *(a1 + 40);
    v2[14] = *(a1 + 56);
    dword_2A18BD368 = 666;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i [C-RAW>] Soft Reset", "_Async_NFDriverHCISoftReset_block_invoke", 9881);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "_Async_NFDriverHCISoftReset_block_invoke";
      v22 = 1024;
      v23 = 9881;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [C-RAW>] Soft Reset", buf, 0x12u);
    }

    v7 = *(a1 + 48);
    v8 = *(*(v7 + 24) + 576);
    v9 = sub_297FCBF9C(v7, *(a1 + 60));
    if (v9)
    {
      v10 = *(v9 + 8);
    }

    v13 = *(a1 + 32);
    v14 = phLibNfc_SE_RawTranseive();
    if (v14 != 13)
    {
      v15 = v14;
      dispatch_get_specific(*v4);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i status=0x%04X", "_Async_NFDriverHCISoftReset_block_invoke", 9890, v15);
      }

      dispatch_get_specific(*v4);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "_Async_NFDriverHCISoftReset_block_invoke";
        v22 = 1024;
        v23 = 9890;
        v24 = 1024;
        v25 = v15;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }

      sub_297F9FB20(*(a1 + 32), v15);
      sub_297F9FBDC(*(a1 + 32));
    }

    free(v3);
    v18 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *MEMORY[0x29EDCA608];

    sub_297F9FBDC(v11);
  }
}

void sub_297FD9B38(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a2)
  {
    sub_297F9FB20(a2, a5);

    sub_297F9FBDC(a2);
  }
}

void sub_297FD9B80(double a1, uint64_t a2, void *a3, uint64_t a4, _DWORD *a5, int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a6 == 74)
  {
    if (a5)
    {
      if (dword_2A18BD368)
      {
        LODWORD(a1) = *a5;
        sub_297F9F5F4(a3, *&a1 / 1000.0);
        --dword_2A18BD368;
      }

      else
      {
        v17 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i WTX: error, too many WTX", "_Callback_NFDriverSERawTransceiveWTX", 9840);
        }

        dispatch_get_specific(*v17);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v22 = "_Callback_NFDriverSERawTransceiveWTX";
          v23 = 1024;
          v24 = 9840;
          _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i WTX: error, too many WTX", buf, 0x12u);
        }

        sub_297F9FB20(a3, 44);
      }

      goto LABEL_19;
    }

    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(4, "%s:%i WTX: no info", "_Callback_NFDriverSERawTransceiveWTX", 9845);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "_Callback_NFDriverSERawTransceiveWTX";
      v23 = 1024;
      v24 = 9845;
      v11 = "%{public}s:%i WTX: no info";
      v12 = v16;
      v13 = 18;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i WTX: error %d", "_Callback_NFDriverSERawTransceiveWTX", 9849, a6);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "_Callback_NFDriverSERawTransceiveWTX";
      v23 = 1024;
      v24 = 9849;
      v25 = 1024;
      v26 = a6;
      v11 = "%{public}s:%i WTX: error %d";
      v12 = v10;
      v13 = 24;
LABEL_13:
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }
  }

LABEL_19:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_297FD9E24(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_Mgt_SetCE_ConfigParams();
  if (v5 != 13)
  {
    v6 = v5;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverSetCEConfigParams_block_invoke", 10209, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_Async_NFDriverSetCEConfigParams_block_invoke";
      v13 = 1024;
      v14 = 10209;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 48), v6);
    sub_297F9FBDC(*(a1 + 48));
  }

  v10 = *MEMORY[0x29EDCA608];
}

BOOL sub_297FD9F6C(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = sub_297FD9FE4;
    *(a1 + 40) = sub_297FDA0D4;
    *(a1 + 48) = sub_297FDA1C4;
    *(a1 + 56) = sub_297FDA2CC;
    *(a1 + 64) = sub_297FDA3BC;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 20) = 5;
  }

  return a1 != 0;
}

uint64_t sub_297FD9FE4()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for Host SE!", "SetPower_Host", 23);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "SetPower_Host";
    v7 = 1024;
    v8 = 23;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for Host SE!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FDA0D4()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for Host SE!", "GetOSInfo_Host", 29);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "GetOSInfo_Host";
    v7 = 1024;
    v8 = 29;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for Host SE!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FDA1C4(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for Host SE!", "GetOSMode_Host", 35);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v10 = "GetOSMode_Host";
    v11 = 1024;
    v12 = 35;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for Host SE!", buf, 0x12u);
  }

  *(a2 + 1224) = *(a1 + 20);
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FDA2CC()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for Host SE!", "GetOSUpdateLog_Host", 42);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v6 = "GetOSUpdateLog_Host";
    v7 = 1024;
    v8 = 42;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for Host SE!", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FDA3BC(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for Host SE!", "GetAttackCounterLog_Host", 48);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v11 = "GetAttackCounterLog_Host";
    v12 = 1024;
    v13 = 48;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for Host SE!", buf, 0x12u);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}